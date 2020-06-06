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
	<24.165211, 35.477329, 35.182362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.356476, 35.129971, 35.129826>,  <24.471235, 34.921555, 35.098305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.356476, 35.129971, 35.129826>,  <24.165211, 35.477329, 35.182362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.356476, 35.129971, 35.129826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121963, 0.082445, -0.989105,
		0.869761, 0.488973, -0.066490,
		0.478164, -0.868394, -0.131344,
		24.499926, 34.869453, 35.090424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.835602, 35.536652, 34.792213>,  <24.165211, 35.477329, 35.182362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.835602, 35.536652, 34.792213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.716097, 35.160240, 34.728706>,  <24.644394, 34.934395, 34.690601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.716097, 35.160240, 34.728706>,  <24.835602, 35.536652, 34.792213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.716097, 35.160240, 34.728706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022088, 0.159498, -0.986951,
		0.954071, -0.298372, -0.026867,
		-0.298764, -0.941028, -0.158763,
		24.626469, 34.877934, 34.681076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.337795, 35.142128, 34.288406>,  <24.835602, 35.536652, 34.792213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.337795, 35.142128, 34.288406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.963440, 35.001225, 34.286304>,  <24.738827, 34.916683, 34.285042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.963440, 35.001225, 34.286304>,  <25.337795, 35.142128, 34.288406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.963440, 35.001225, 34.286304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019527, 0.066774, -0.997577,
		0.351756, -0.933518, -0.069371,
		-0.935888, -0.352258, -0.005259,
		24.682673, 34.895546, 34.284725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.514814, 35.685001, 33.739395>,  <25.337795, 35.142128, 34.288406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.514814, 35.685001, 33.739395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.145924, 35.674850, 33.585068>,  <24.924589, 35.668758, 33.492470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.145924, 35.674850, 33.585068>,  <25.514814, 35.685001, 33.739395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.145924, 35.674850, 33.585068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380369, -0.238712, -0.893497,
		-0.069426, -0.970759, 0.229799,
		-0.922225, -0.025377, -0.385819,
		24.869255, 35.667236, 33.469322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.500889, 35.002369, 33.513405>,  <25.514814, 35.685001, 33.739395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.500889, 35.002369, 33.513405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.264437, 35.253864, 33.311317>,  <25.122564, 35.404762, 33.190063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.264437, 35.253864, 33.311317>,  <25.500889, 35.002369, 33.513405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.264437, 35.253864, 33.311317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405063, -0.310244, -0.860042,
		-0.697486, -0.713044, -0.071286,
		-0.591132, 0.628743, -0.505219,
		25.087097, 35.442486, 33.159752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.877708, 35.076618, 32.925949>,  <25.500889, 35.002369, 33.513405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.877708, 35.076618, 32.925949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.180683, 34.837948, 33.031979>,  <26.362469, 34.694744, 33.095596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.180683, 34.837948, 33.031979>,  <25.877708, 35.076618, 32.925949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.180683, 34.837948, 33.031979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191074, -0.590793, -0.783872,
		0.624324, 0.543084, -0.561498,
		0.757437, -0.596677, 0.265077,
		26.407915, 34.658943, 33.111500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.144949, 34.817856, 32.305275>,  <25.877708, 35.076618, 32.925949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.144949, 34.817856, 32.305275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.320101, 34.559460, 32.555382>,  <26.425192, 34.404423, 32.705444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.320101, 34.559460, 32.555382>,  <26.144949, 34.817856, 32.305275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.320101, 34.559460, 32.555382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014102, -0.690466, -0.723227,
		0.898924, 0.325503, -0.293230,
		0.437878, -0.645991, 0.625267,
		26.451464, 34.365662, 32.742962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.815683, 34.552227, 31.918531>,  <26.144949, 34.817856, 32.305275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.815683, 34.552227, 31.918531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.696535, 34.295647, 32.201321>,  <26.625046, 34.141697, 32.370995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.696535, 34.295647, 32.201321>,  <26.815683, 34.552227, 31.918531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.696535, 34.295647, 32.201321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011551, -0.742958, -0.669238,
		0.954536, -0.191181, 0.228717,
		-0.297873, -0.641454, 0.706972,
		26.607174, 34.103210, 32.413414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.374695, 34.079403, 31.933834>,  <26.815683, 34.552227, 31.918531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.374695, 34.079403, 31.933834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.065023, 33.889713, 32.101528>,  <26.879221, 33.775898, 32.202145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.065023, 33.889713, 32.101528>,  <27.374695, 34.079403, 31.933834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.065023, 33.889713, 32.101528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161678, -0.788515, -0.593384,
		0.611970, -0.391605, 0.687123,
		-0.774179, -0.474226, 0.419234,
		26.832769, 33.747444, 32.227299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.566429, 33.397709, 32.194889>,  <27.374695, 34.079403, 31.933834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.566429, 33.397709, 32.194889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.180387, 33.387726, 32.090618>,  <26.948763, 33.381737, 32.028057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.180387, 33.387726, 32.090618>,  <27.566429, 33.397709, 32.194889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.180387, 33.387726, 32.090618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197906, -0.721388, -0.663651,
		-0.171487, -0.692082, 0.701153,
		-0.965104, -0.024955, -0.260675,
		26.890856, 33.380238, 32.012417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.297085, 32.694038, 32.171444>,  <27.566429, 33.397709, 32.194889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.297085, 32.694038, 32.171444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.001574, 32.882057, 31.978254>,  <26.824266, 32.994869, 31.862339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.001574, 32.882057, 31.978254>,  <27.297085, 32.694038, 32.171444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.001574, 32.882057, 31.978254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055643, -0.671649, -0.738777,
		-0.671649, -0.572666, 0.470044,
		0.738777, -0.470044, 0.482978,
		26.779940, 33.023071, 31.833361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.057198, 32.191154, 31.823803>,  <27.297085, 32.694038, 32.171444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.057198, 32.191154, 31.823803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.899939, 32.511166, 31.642525>,  <26.805584, 32.703175, 31.533758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.899939, 32.511166, 31.642525>,  <27.057198, 32.191154, 31.823803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.899939, 32.511166, 31.642525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033643, -0.505070, -0.862422,
		-0.918860, -0.323811, 0.225482,
		-0.393146, 0.800032, -0.453195,
		26.781994, 32.751175, 31.506567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.627922, 31.903784, 31.339893>,  <27.057198, 32.191154, 31.823803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.627922, 31.903784, 31.339893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.700840, 32.273365, 31.205385>,  <26.744591, 32.495113, 31.124681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.700840, 32.273365, 31.205385>,  <26.627922, 31.903784, 31.339893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.700840, 32.273365, 31.205385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036511, -0.348125, -0.936737,
		-0.982566, 0.158485, -0.097196,
		0.182295, 0.923954, -0.336269,
		26.755527, 32.550552, 31.104504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.123926, 32.125134, 30.946939>,  <26.627922, 31.903784, 31.339893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.123926, 32.125134, 30.946939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.451483, 32.319225, 30.824324>,  <26.648018, 32.435680, 30.750755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.451483, 32.319225, 30.824324>,  <26.123926, 32.125134, 30.946939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.451483, 32.319225, 30.824324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013142, -0.518095, -0.855222,
		-0.573795, 0.704364, -0.417888,
		0.818893, 0.485231, -0.306537,
		26.697151, 32.464794, 30.732363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.000294, 32.186199, 30.216278>,  <26.123926, 32.125134, 30.946939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.000294, 32.186199, 30.216278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.391415, 32.241974, 30.278843>,  <26.626087, 32.275440, 30.316381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.391415, 32.241974, 30.278843>,  <26.000294, 32.186199, 30.216278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.391415, 32.241974, 30.278843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202723, -0.440659, -0.874485,
		-0.053010, 0.886779, -0.459143,
		0.977800, 0.139435, 0.156411,
		26.684755, 32.283806, 30.325766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.293808, 32.669739, 29.645647>,  <26.000294, 32.186199, 30.216278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.293808, 32.669739, 29.645647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.603518, 32.464272, 29.793512>,  <26.789343, 32.340992, 29.882231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.603518, 32.464272, 29.793512>,  <26.293808, 32.669739, 29.645647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.603518, 32.464272, 29.793512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279746, -0.246156, -0.927981,
		0.567666, 0.821922, -0.046896,
		0.774272, -0.513665, 0.369663,
		26.835798, 32.310173, 29.904411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.809870, 32.743183, 29.123476>,  <26.293808, 32.669739, 29.645647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.809870, 32.743183, 29.123476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.962704, 32.457157, 29.357637>,  <27.054403, 32.285542, 29.498135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.962704, 32.457157, 29.357637>,  <26.809870, 32.743183, 29.123476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.962704, 32.457157, 29.357637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187552, -0.560282, -0.806789,
		0.904895, 0.418055, -0.079963,
		0.382084, -0.715062, 0.585403,
		27.077330, 32.242638, 29.533258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.448647, 32.581146, 28.796728>,  <26.809870, 32.743183, 29.123476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.448647, 32.581146, 28.796728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.335344, 32.261898, 29.009432>,  <27.267363, 32.070351, 29.137054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.335344, 32.261898, 29.009432>,  <27.448647, 32.581146, 28.796728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.335344, 32.261898, 29.009432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293999, -0.600035, -0.743991,
		0.912870, -0.054401, 0.404609,
		-0.283254, -0.798122, 0.531761,
		27.250368, 32.022461, 29.168961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.986567, 32.129784, 28.911917>,  <27.448647, 32.581146, 28.796728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.986567, 32.129784, 28.911917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.672806, 31.883322, 28.940374>,  <27.484549, 31.735443, 28.957449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.672806, 31.883322, 28.940374>,  <27.986567, 32.129784, 28.911917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.672806, 31.883322, 28.940374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384239, -0.572762, -0.724088,
		0.486900, -0.540642, 0.686028,
		-0.784404, -0.616157, 0.071143,
		27.437485, 31.698475, 28.961718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.256458, 31.398447, 28.805426>,  <27.986567, 32.129784, 28.911917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.256458, 31.398447, 28.805426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.860529, 31.366184, 28.758535>,  <27.622971, 31.346827, 28.730402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.860529, 31.366184, 28.758535>,  <28.256458, 31.398447, 28.805426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.860529, 31.366184, 28.758535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135534, -0.785297, -0.604102,
		-0.043330, -0.613843, 0.788238,
		-0.989825, -0.080658, -0.117223,
		27.563581, 31.341988, 28.723368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.180948, 30.570070, 28.881485>,  <28.256458, 31.398447, 28.805426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.180948, 30.570070, 28.881485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.850296, 30.723110, 28.716417>,  <27.651905, 30.814934, 28.617376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.850296, 30.723110, 28.716417>,  <28.180948, 30.570070, 28.881485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.850296, 30.723110, 28.716417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033031, -0.765043, -0.643132,
		-0.561771, -0.518003, 0.645048,
		-0.826633, 0.382599, -0.412668,
		27.602306, 30.837891, 28.592617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.724014, 30.007566, 28.833832>,  <28.180948, 30.570070, 28.881485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.724014, 30.007566, 28.833832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.604460, 30.282145, 28.568665>,  <27.532728, 30.446892, 28.409563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.604460, 30.282145, 28.568665>,  <27.724014, 30.007566, 28.833832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.604460, 30.282145, 28.568665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001403, -0.694356, -0.719630,
		-0.954288, -0.216016, 0.206569,
		-0.298884, 0.686445, -0.662919,
		27.514795, 30.488077, 28.369789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.452076, 29.575493, 28.307516>,  <27.724014, 30.007566, 28.833832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.452076, 29.575493, 28.307516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.501657, 29.932852, 28.134785>,  <27.531406, 30.147266, 28.031145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.501657, 29.932852, 28.134785>,  <27.452076, 29.575493, 28.307516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.501657, 29.932852, 28.134785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366301, -0.445645, -0.816838,
		-0.922204, -0.056929, -0.382491,
		0.123953, 0.893398, -0.431828,
		27.538843, 30.200871, 28.005236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.092964, 29.462072, 27.729090>,  <27.452076, 29.575493, 28.307516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.092964, 29.462072, 27.729090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.313122, 29.784769, 27.643084>,  <27.445217, 29.978388, 27.591480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.313122, 29.784769, 27.643084>,  <27.092964, 29.462072, 27.729090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.313122, 29.784769, 27.643084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240109, -0.399604, -0.884683,
		-0.799632, 0.435299, -0.413646,
		0.550396, 0.806741, -0.215017,
		27.478241, 30.026791, 27.578579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.930996, 29.708588, 26.945284>,  <27.092964, 29.462072, 27.729090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.930996, 29.708588, 26.945284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.299873, 29.828550, 27.042950>,  <27.521200, 29.900528, 27.101549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.299873, 29.828550, 27.042950>,  <26.930996, 29.708588, 26.945284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.299873, 29.828550, 27.042950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360558, -0.438429, -0.823273,
		-0.139857, 0.847252, -0.512450,
		0.922192, 0.299908, 0.244166,
		27.576530, 29.918522, 27.116199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.276691, 29.872669, 26.286480>,  <26.930996, 29.708588, 26.945284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.276691, 29.872669, 26.286480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.518105, 29.767363, 26.587528>,  <27.662952, 29.704180, 26.768158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.518105, 29.767363, 26.587528>,  <27.276691, 29.872669, 26.286480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.518105, 29.767363, 26.587528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545394, -0.552248, -0.630530,
		0.581630, 0.791021, -0.189717,
		0.603533, -0.263265, 0.752622,
		27.699165, 29.688383, 26.813314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.945513, 30.130339, 26.095514>,  <27.276691, 29.872669, 26.286480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.945513, 30.130339, 26.095514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.940479, 29.791740, 26.308413>,  <27.937460, 29.588581, 26.436152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.940479, 29.791740, 26.308413>,  <27.945513, 30.130339, 26.095514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.940479, 29.791740, 26.308413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625322, -0.422021, -0.656407,
		0.780265, 0.324566, 0.534643,
		-0.012583, -0.846496, 0.532247,
		27.936705, 29.537792, 26.468086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.607058, 29.886419, 26.466137>,  <27.945513, 30.130339, 26.095514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.607058, 29.886419, 26.466137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.386911, 29.563007, 26.382826>,  <28.254824, 29.368959, 26.332838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.386911, 29.563007, 26.382826>,  <28.607058, 29.886419, 26.466137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.386911, 29.563007, 26.382826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740272, -0.357175, -0.569582,
		0.386132, -0.467660, 0.795108,
		-0.550363, -0.808530, -0.208278,
		28.221802, 29.320448, 26.320343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.945065, 29.298906, 26.641464>,  <28.607058, 29.886419, 26.466137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.945065, 29.298906, 26.641464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.687391, 29.165049, 26.366352>,  <28.532787, 29.084734, 26.201284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.687391, 29.165049, 26.366352>,  <28.945065, 29.298906, 26.641464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.687391, 29.165049, 26.366352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736432, -0.514285, -0.439521,
		-0.206634, -0.789636, 0.577735,
		-0.644182, -0.334643, -0.687782,
		28.494137, 29.064655, 26.160017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.692984, 28.608381, 26.549065>,  <28.945065, 29.298906, 26.641464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.692984, 28.608381, 26.549065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.776140, 28.770947, 26.193176>,  <28.826035, 28.868486, 25.979643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.776140, 28.770947, 26.193176>,  <28.692984, 28.608381, 26.549065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.776140, 28.770947, 26.193176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747561, -0.652623, -0.123436,
		-0.630820, -0.639460, -0.439496,
		0.207893, 0.406415, -0.889723,
		28.838509, 28.892872, 25.926260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.947041, 27.961267, 26.830147>,  <28.692984, 28.608381, 26.549065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.947041, 27.961267, 26.830147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.244219, 27.771669, 27.019190>,  <29.422525, 27.657911, 27.132616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.244219, 27.771669, 27.019190>,  <28.947041, 27.961267, 26.830147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.244219, 27.771669, 27.019190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239101, 0.847421, 0.474034,
		-0.625188, -0.239181, 0.742921,
		0.742947, -0.473993, 0.472609,
		29.467104, 27.629471, 27.160973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.956095, 28.211611, 27.491606>,  <28.947041, 27.961267, 26.830147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.956095, 28.211611, 27.491606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.320885, 28.090481, 27.380898>,  <29.539759, 28.017803, 27.314472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.320885, 28.090481, 27.380898>,  <28.956095, 28.211611, 27.491606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.320885, 28.090481, 27.380898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404014, 0.780108, 0.477708,
		0.071249, -0.547476, 0.833783,
		0.911974, -0.302823, -0.276770,
		29.594477, 27.999634, 27.297867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.389303, 28.248100, 28.054499>,  <28.956095, 28.211611, 27.491606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.389303, 28.248100, 28.054499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.638445, 28.300591, 27.745996>,  <29.787930, 28.332085, 27.560896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.638445, 28.300591, 27.745996>,  <29.389303, 28.248100, 28.054499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.638445, 28.300591, 27.745996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280558, 0.882793, 0.376781,
		0.730301, -0.451061, 0.513035,
		0.622854, 0.131228, -0.771253,
		29.825302, 28.339958, 27.514620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.154764, 28.457689, 28.217922>,  <29.389303, 28.248100, 28.054499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.154764, 28.457689, 28.217922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.063042, 28.601286, 27.856028>,  <30.008009, 28.687445, 27.638891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.063042, 28.601286, 27.856028>,  <30.154764, 28.457689, 28.217922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.063042, 28.601286, 27.856028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091400, 0.933336, 0.347174,
		0.969053, -0.003084, -0.246832,
		-0.229306, 0.358991, -0.904734,
		29.994249, 28.708982, 27.584608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.669924, 28.955153, 28.092093>,  <30.154764, 28.457689, 28.217922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.669924, 28.955153, 28.092093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.323860, 29.069668, 27.927391>,  <30.116222, 29.138376, 27.828569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.323860, 29.069668, 27.927391>,  <30.669924, 28.955153, 28.092093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.323860, 29.069668, 27.927391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086292, 0.893782, 0.440122,
		0.494020, 0.345244, -0.797967,
		-0.865157, 0.286288, -0.411754,
		30.064312, 29.155554, 27.803865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.726538, 29.536955, 27.725336>,  <30.669924, 28.955153, 28.092093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.726538, 29.536955, 27.725336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.355658, 29.535927, 27.875160>,  <30.133129, 29.535311, 27.965054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.355658, 29.535927, 27.875160>,  <30.726538, 29.536955, 27.725336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.355658, 29.535927, 27.875160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186649, 0.863809, 0.467969,
		-0.324750, 0.503812, -0.800444,
		-0.927200, -0.002571, 0.374559,
		30.077497, 29.535156, 27.987528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.753094, 30.144505, 28.069098>,  <30.726538, 29.536955, 27.725336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.753094, 30.144505, 28.069098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.409262, 30.014103, 28.226498>,  <30.202963, 29.935862, 28.320938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.409262, 30.014103, 28.226498>,  <30.753094, 30.144505, 28.069098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.409262, 30.014103, 28.226498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015981, 0.786832, 0.616960,
		-0.510748, 0.524039, -0.681557,
		-0.859582, -0.326003, 0.393498,
		30.151386, 29.916302, 28.344547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.320450, 30.740438, 28.143341>,  <30.753094, 30.144505, 28.069098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.320450, 30.740438, 28.143341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.174055, 30.471491, 28.400703>,  <30.086218, 30.310122, 28.555120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.174055, 30.471491, 28.400703>,  <30.320450, 30.740438, 28.143341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.174055, 30.471491, 28.400703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008843, 0.688829, 0.724870,
		-0.930577, 0.270983, -0.246158,
		-0.365988, -0.672371, 0.643405,
		30.064259, 30.269779, 28.593725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.806082, 31.122231, 28.564199>,  <30.320450, 30.740438, 28.143341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.806082, 31.122231, 28.564199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.883961, 30.805195, 28.795334>,  <29.930687, 30.614973, 28.934015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.883961, 30.805195, 28.795334>,  <29.806082, 31.122231, 28.564199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.883961, 30.805195, 28.795334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137587, 0.561217, 0.816153,
		-0.971166, -0.238404, 0.000216,
		0.194696, -0.792590, 0.577836,
		29.942369, 30.567417, 28.968685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.278755, 31.099066, 29.077894>,  <29.806082, 31.122231, 28.564199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.278755, 31.099066, 29.077894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.583023, 30.901669, 29.246582>,  <29.765583, 30.783230, 29.347794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.583023, 30.901669, 29.246582>,  <29.278755, 31.099066, 29.077894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.583023, 30.901669, 29.246582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261338, 0.361873, 0.894847,
		-0.594209, -0.790894, 0.146298,
		0.760670, -0.493493, 0.421719,
		29.811224, 30.753620, 29.373098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.034416, 30.807674, 29.573360>,  <29.278755, 31.099066, 29.077894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.034416, 30.807674, 29.573360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.403395, 30.745916, 29.714926>,  <29.624783, 30.708862, 29.799866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.403395, 30.745916, 29.714926>,  <29.034416, 30.807674, 29.573360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.403395, 30.745916, 29.714926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315731, 0.226041, 0.921531,
		-0.222280, -0.961804, 0.159762,
		0.922446, -0.154396, 0.353915,
		29.680128, 30.699598, 29.821100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.058754, 30.338041, 30.116329>,  <29.034416, 30.807674, 29.573360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.058754, 30.338041, 30.116329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.399113, 30.539808, 30.175034>,  <29.603329, 30.660868, 30.210257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.399113, 30.539808, 30.175034>,  <29.058754, 30.338041, 30.116329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.399113, 30.539808, 30.175034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259311, 0.160332, 0.952392,
		0.456874, -0.848443, 0.267227,
		0.850896, 0.504418, 0.146759,
		29.654381, 30.691133, 30.219061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.288799, 30.080275, 30.739506>,  <29.058754, 30.338041, 30.116329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.288799, 30.080275, 30.739506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.466949, 30.434130, 30.684286>,  <29.573839, 30.646442, 30.651154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.466949, 30.434130, 30.684286>,  <29.288799, 30.080275, 30.739506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.466949, 30.434130, 30.684286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101830, 0.203235, 0.973821,
		0.889534, -0.419659, 0.180598,
		0.445377, 0.884637, -0.138051,
		29.600563, 30.699520, 30.642872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.691057, 30.159674, 31.339865>,  <29.288799, 30.080275, 30.739506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.691057, 30.159674, 31.339865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.640249, 30.521965, 31.178112>,  <29.609764, 30.739340, 31.081060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.640249, 30.521965, 31.178112>,  <29.691057, 30.159674, 31.339865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.640249, 30.521965, 31.178112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117886, 0.391008, 0.912807,
		0.984870, 0.163617, 0.057106,
		-0.127022, 0.905728, -0.404380,
		29.602142, 30.793684, 31.056799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.957520, 30.454195, 31.932835>,  <29.691057, 30.159674, 31.339865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.957520, 30.454195, 31.932835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.813215, 30.744347, 31.698339>,  <29.726633, 30.918438, 31.557642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.813215, 30.744347, 31.698339>,  <29.957520, 30.454195, 31.932835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.813215, 30.744347, 31.698339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021380, 0.634836, 0.772351,
		0.932413, 0.266101, -0.244532,
		-0.360761, 0.725378, -0.586240,
		29.704987, 30.961960, 31.522467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.374477, 31.033274, 32.048183>,  <29.957520, 30.454195, 31.932835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.374477, 31.033274, 32.048183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.014687, 31.132507, 31.904297>,  <29.798813, 31.192047, 31.817965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.014687, 31.132507, 31.904297>,  <30.374477, 31.033274, 32.048183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.014687, 31.132507, 31.904297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121689, 0.648435, 0.751481,
		0.419686, 0.719712, -0.553062,
		-0.899475, 0.248085, -0.359721,
		29.744844, 31.206932, 31.796381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.343723, 31.758307, 32.020237>,  <30.374477, 31.033274, 32.048183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.343723, 31.758307, 32.020237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.953823, 31.669832, 32.007957>,  <29.719883, 31.616747, 32.000591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.953823, 31.669832, 32.007957>,  <30.343723, 31.758307, 32.020237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.953823, 31.669832, 32.007957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187198, 0.734429, 0.652358,
		-0.121749, 0.641631, -0.757289,
		-0.974748, -0.221187, -0.030696,
		29.661398, 31.603476, 31.998749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.041216, 32.425446, 31.945045>,  <30.343723, 31.758307, 32.020237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.041216, 32.425446, 31.945045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.771004, 32.168171, 32.089249>,  <29.608875, 32.013805, 32.175770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.771004, 32.168171, 32.089249>,  <30.041216, 32.425446, 31.945045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.771004, 32.168171, 32.089249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198699, 0.629653, 0.751037,
		-0.710053, 0.435716, -0.553151,
		-0.675532, -0.643187, 0.360510,
		29.568344, 31.975216, 32.197403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.413166, 32.773293, 32.105865>,  <30.041216, 32.425446, 31.945045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.413166, 32.773293, 32.105865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.374702, 32.447968, 32.335396>,  <29.351624, 32.252773, 32.473114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.374702, 32.447968, 32.335396>,  <29.413166, 32.773293, 32.105865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.374702, 32.447968, 32.335396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199872, 0.580536, 0.789322,
		-0.975092, -0.038790, -0.218383,
		-0.096161, -0.813310, 0.573829,
		29.345854, 32.203976, 32.507545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.803204, 32.914272, 32.460827>,  <29.413166, 32.773293, 32.105865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.803204, 32.914272, 32.460827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.014616, 32.650635, 32.674835>,  <29.141464, 32.492451, 32.803242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.014616, 32.650635, 32.674835>,  <28.803204, 32.914272, 32.460827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.014616, 32.650635, 32.674835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293053, 0.449840, 0.843661,
		-0.796728, -0.602690, 0.044604,
		0.528531, -0.659097, 0.535020,
		29.173176, 32.452908, 32.835342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.320137, 32.629147, 32.985039>,  <28.803204, 32.914272, 32.460827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.320137, 32.629147, 32.985039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.705534, 32.595749, 33.086792>,  <28.936771, 32.575710, 33.147846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.705534, 32.595749, 33.086792>,  <28.320137, 32.629147, 32.985039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.705534, 32.595749, 33.086792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165742, 0.560187, 0.811616,
		-0.210268, -0.824148, 0.525897,
		0.963492, -0.083494, 0.254385,
		28.994581, 32.570702, 33.163109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.319910, 32.582706, 33.715076>,  <28.320137, 32.629147, 32.985039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.319910, 32.582706, 33.715076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.706181, 32.657452, 33.642914>,  <28.937943, 32.702301, 33.599617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.706181, 32.657452, 33.642914>,  <28.319910, 32.582706, 33.715076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.706181, 32.657452, 33.642914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049855, 0.548312, 0.834787,
		0.254913, -0.815130, 0.520176,
		0.965678, 0.186865, -0.180410,
		28.995884, 32.713512, 33.588791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.589323, 32.785988, 34.404896>,  <28.319910, 32.582706, 33.715076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.589323, 32.785988, 34.404896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.867533, 32.913364, 34.147263>,  <29.034458, 32.989788, 33.992683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.867533, 32.913364, 34.147263>,  <28.589323, 32.785988, 34.404896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.867533, 32.913364, 34.147263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099408, 0.845154, 0.525198,
		0.711592, -0.429315, 0.556170,
		0.695525, 0.318439, -0.644082,
		29.076191, 33.008896, 33.954037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.033489, 33.059429, 34.837513>,  <28.589323, 32.785988, 34.404896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.033489, 33.059429, 34.837513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.120346, 33.217743, 34.480591>,  <29.172461, 33.312729, 34.266438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.120346, 33.217743, 34.480591>,  <29.033489, 33.059429, 34.837513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.120346, 33.217743, 34.480591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064904, 0.906238, 0.417755,
		0.973980, -0.148626, 0.171095,
		0.217142, 0.395781, -0.892305,
		29.185490, 33.336475, 34.212898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.529755, 33.587612, 34.948505>,  <29.033489, 33.059429, 34.837513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.529755, 33.587612, 34.948505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.391436, 33.704018, 34.591690>,  <29.308445, 33.773861, 34.377602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.391436, 33.704018, 34.591690>,  <29.529755, 33.587612, 34.948505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.391436, 33.704018, 34.591690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079053, 0.956346, 0.281343,
		0.934973, 0.026769, -0.353707,
		-0.345797, 0.291010, -0.892041,
		29.287697, 33.791321, 34.324078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.942505, 34.112762, 34.732677>,  <29.529755, 33.587612, 34.948505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.942505, 34.112762, 34.732677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.568666, 34.208889, 34.627773>,  <29.344364, 34.266563, 34.564831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.568666, 34.208889, 34.627773>,  <29.942505, 34.112762, 34.732677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.568666, 34.208889, 34.627773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085995, 0.868057, 0.488960,
		0.345165, 0.434426, -0.831947,
		-0.934594, 0.240315, -0.262265,
		29.288288, 34.280983, 34.549095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.616558, 34.781719, 34.771282>,  <29.942505, 34.112762, 34.732677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.616558, 34.781719, 34.771282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.493122, 34.693756, 34.401112>,  <29.419060, 34.640980, 34.179008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.493122, 34.693756, 34.401112>,  <29.616558, 34.781719, 34.771282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.493122, 34.693756, 34.401112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125422, 0.973821, -0.189584,
		0.942890, 0.057565, -0.328092,
		-0.308590, -0.219907, -0.925426,
		29.400545, 34.627785, 34.123486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.036264, 35.237968, 34.248695>,  <29.616558, 34.781719, 34.771282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.036264, 35.237968, 34.248695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.670792, 35.118702, 34.138218>,  <29.451508, 35.047142, 34.071930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.670792, 35.118702, 34.138218>,  <30.036264, 35.237968, 34.248695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.670792, 35.118702, 34.138218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307045, 0.951624, -0.011576,
		0.266283, 0.074226, -0.961033,
		-0.913683, -0.298163, -0.276192,
		29.396687, 35.029251, 34.055359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.052149, 35.594799, 33.680645>,  <30.036264, 35.237968, 34.248695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.052149, 35.594799, 33.680645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.294243, 35.494385, 33.378475>,  <30.439499, 35.434135, 33.197174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.294243, 35.494385, 33.378475>,  <30.052149, 35.594799, 33.680645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.294243, 35.494385, 33.378475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239428, 0.847625, -0.473503,
		0.759188, 0.467451, 0.452906,
		0.605234, -0.251039, -0.755428,
		30.475813, 35.419071, 33.151848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.365597, 36.043102, 34.290356>,  <30.052149, 35.594799, 33.680645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.365597, 36.043102, 34.290356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.488934, 36.402088, 34.416515>,  <30.562937, 36.617481, 34.492210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.488934, 36.402088, 34.416515>,  <30.365597, 36.043102, 34.290356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.488934, 36.402088, 34.416515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854365, -0.407064, 0.323048,
		0.418313, 0.169856, -0.892280,
		0.308343, 0.897467, 0.315399,
		30.581436, 36.671329, 34.511135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.992188, 36.245701, 33.941784>,  <30.365597, 36.043102, 34.290356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.992188, 36.245701, 33.941784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.950094, 36.378410, 34.316772>,  <30.924839, 36.458038, 34.541763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.950094, 36.378410, 34.316772>,  <30.992188, 36.245701, 33.941784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.950094, 36.378410, 34.316772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870152, -0.425646, 0.248316,
		0.481416, 0.841872, -0.243905,
		-0.105233, 0.331778, 0.937470,
		30.918524, 36.477943, 34.598015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.551189, 36.717785, 34.140011>,  <30.992188, 36.245701, 33.941784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.551189, 36.717785, 34.140011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.435637, 36.567245, 34.492126>,  <31.366304, 36.476921, 34.703396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.435637, 36.567245, 34.492126>,  <31.551189, 36.717785, 34.140011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.435637, 36.567245, 34.492126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956541, -0.075314, 0.281704,
		-0.039722, 0.923411, 0.381751,
		-0.288880, -0.376350, 0.880289,
		31.348972, 36.454342, 34.756214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.918623, 37.122990, 34.623924>,  <31.551189, 36.717785, 34.140011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.918623, 37.122990, 34.623924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.818193, 36.785454, 34.813618>,  <31.757936, 36.582932, 34.927433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.818193, 36.785454, 34.813618>,  <31.918623, 37.122990, 34.623924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.818193, 36.785454, 34.813618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936495, -0.087845, 0.339501,
		-0.244826, 0.529357, 0.812307,
		-0.251074, -0.843839, 0.474233,
		31.742870, 36.532303, 34.955887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.396500, 37.207813, 35.107304>,  <31.918623, 37.122990, 34.623924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.396500, 37.207813, 35.107304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.264671, 36.835407, 35.044567>,  <32.185574, 36.611965, 35.006927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.264671, 36.835407, 35.044567>,  <32.396500, 37.207813, 35.107304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.264671, 36.835407, 35.044567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944065, -0.326930, -0.043099,
		-0.011149, -0.162268, 0.986684,
		-0.329570, -0.931013, -0.156837,
		32.165802, 36.556103, 34.997517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.067688, 37.514015, 35.086273>,  <32.396500, 37.207813, 35.107304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.067688, 37.514015, 35.086273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.340870, 37.237301, 35.180084>,  <33.504780, 37.071274, 35.236370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.340870, 37.237301, 35.180084>,  <33.067688, 37.514015, 35.086273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.340870, 37.237301, 35.180084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123170, 0.207415, 0.970468,
		-0.720001, -0.691674, 0.056448,
		0.682955, -0.691785, 0.234532,
		33.545757, 37.029766, 35.250443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.814404, 37.176857, 35.705418>,  <33.067688, 37.514015, 35.086273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.814404, 37.176857, 35.705418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.199192, 37.067677, 35.701447>,  <33.430065, 37.002167, 35.699066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.199192, 37.067677, 35.701447>,  <32.814404, 37.176857, 35.705418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.199192, 37.067677, 35.701447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006334, -0.014034, 0.999882,
		-0.273063, -0.961924, -0.011771,
		0.961976, -0.272956, -0.009925,
		33.487785, 36.985790, 35.698467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.870911, 36.710365, 36.212276>,  <32.814404, 37.176857, 35.705418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.870911, 36.710365, 36.212276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.259808, 36.789246, 36.161911>,  <33.493145, 36.836575, 36.131691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.259808, 36.789246, 36.161911>,  <32.870911, 36.710365, 36.212276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.259808, 36.789246, 36.161911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173934, -0.249212, 0.952702,
		0.156489, -0.948160, -0.276594,
		0.972244, 0.197197, -0.125918,
		33.551479, 36.848404, 36.124134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.319027, 36.174271, 36.431488>,  <32.870911, 36.710365, 36.212276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.319027, 36.174271, 36.431488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.543823, 36.501167, 36.482529>,  <33.678699, 36.697304, 36.513153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.543823, 36.501167, 36.482529>,  <33.319027, 36.174271, 36.431488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.543823, 36.501167, 36.482529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167465, -0.263496, 0.950013,
		0.810013, -0.512529, -0.284942,
		0.561991, 0.817241, 0.127605,
		33.712421, 36.746338, 36.520809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.722546, 36.002705, 37.010975>,  <33.319027, 36.174271, 36.431488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.722546, 36.002705, 37.010975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.805988, 36.393204, 36.987556>,  <33.856052, 36.627502, 36.973507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.805988, 36.393204, 36.987556>,  <33.722546, 36.002705, 37.010975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.805988, 36.393204, 36.987556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245635, 0.005643, 0.969346,
		0.946650, -0.216594, -0.238623,
		0.208608, 0.976245, -0.058545,
		33.868572, 36.686077, 36.969994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.470451, 36.085083, 37.179794>,  <33.722546, 36.002705, 37.010975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.470451, 36.085083, 37.179794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.256794, 36.416298, 37.247967>,  <34.128601, 36.615028, 37.288872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.256794, 36.416298, 37.247967>,  <34.470451, 36.085083, 37.179794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.256794, 36.416298, 37.247967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236677, -0.047070, 0.970448,
		0.811588, 0.558695, -0.170835,
		-0.534143, 0.828036, 0.170431,
		34.096550, 36.664707, 37.299095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.828285, 36.439175, 37.718414>,  <34.470451, 36.085083, 37.179794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.828285, 36.439175, 37.718414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.472382, 36.619545, 37.746700>,  <34.258839, 36.727768, 37.763672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.472382, 36.619545, 37.746700>,  <34.828285, 36.439175, 37.718414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.472382, 36.619545, 37.746700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192649, 0.230559, 0.953797,
		0.413789, 0.862269, -0.292012,
		-0.889756, 0.450926, 0.070712,
		34.205456, 36.754822, 37.767914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.967045, 37.031868, 38.161812>,  <34.828285, 36.439175, 37.718414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.967045, 37.031868, 38.161812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.572971, 36.967758, 38.186222>,  <34.336529, 36.929291, 38.200867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.572971, 36.967758, 38.186222>,  <34.967045, 37.031868, 38.161812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.572971, 36.967758, 38.186222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045050, 0.101476, 0.993817,
		-0.165475, 0.981843, -0.092752,
		-0.985184, -0.160274, 0.061024,
		34.277416, 36.919678, 38.204529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.870712, 37.357475, 38.729084>,  <34.967045, 37.031868, 38.161812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.870712, 37.357475, 38.729084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.512066, 37.183250, 38.697186>,  <34.296879, 37.078716, 38.678047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.512066, 37.183250, 38.697186>,  <34.870712, 37.357475, 38.729084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.512066, 37.183250, 38.697186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062998, -0.052794, 0.996616,
		-0.438298, 0.898609, 0.019897,
		-0.896619, -0.435562, -0.079750,
		34.243080, 37.052582, 38.673260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.404060, 37.781635, 39.177547>,  <34.870712, 37.357475, 38.729084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.404060, 37.781635, 39.177547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.272594, 37.410213, 39.108528>,  <34.193714, 37.187363, 39.067116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.272594, 37.410213, 39.108528>,  <34.404060, 37.781635, 39.177547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.272594, 37.410213, 39.108528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040117, -0.196254, 0.979732,
		-0.943595, 0.315079, 0.101752,
		-0.328662, -0.928552, -0.172545,
		34.173996, 37.131649, 39.056767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.918350, 37.708153, 39.583961>,  <34.404060, 37.781635, 39.177547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.918350, 37.708153, 39.583961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.049316, 37.338638, 39.504543>,  <34.127895, 37.116928, 39.456894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.049316, 37.338638, 39.504543>,  <33.918350, 37.708153, 39.583961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.049316, 37.338638, 39.504543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234968, -0.123926, 0.964071,
		-0.915200, -0.362303, 0.176484,
		0.327414, -0.923785, -0.198546,
		34.147541, 37.061504, 39.444981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.492928, 37.244160, 40.011742>,  <33.918350, 37.708153, 39.583961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.492928, 37.244160, 40.011742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.808937, 37.025452, 39.900822>,  <33.998543, 36.894226, 39.834270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.808937, 37.025452, 39.900822>,  <33.492928, 37.244160, 40.011742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.808937, 37.025452, 39.900822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096541, -0.335710, 0.937005,
		-0.605422, -0.767031, -0.212434,
		0.790028, -0.546775, -0.277296,
		34.045944, 36.861420, 39.817635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.306339, 36.535763, 40.190323>,  <33.492928, 37.244160, 40.011742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.306339, 36.535763, 40.190323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.703365, 36.578777, 40.167500>,  <33.941582, 36.604588, 40.153805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.703365, 36.578777, 40.167500>,  <33.306339, 36.535763, 40.190323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.703365, 36.578777, 40.167500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085423, -0.281271, 0.955819,
		0.086738, -0.953584, -0.288365,
		0.992562, 0.107539, -0.057061,
		34.001133, 36.611038, 40.150383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.721897, 35.885338, 40.278648>,  <33.306339, 36.535763, 40.190323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.721897, 35.885338, 40.278648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.986858, 36.166397, 40.382572>,  <34.145836, 36.335033, 40.444927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.986858, 36.166397, 40.382572>,  <33.721897, 35.885338, 40.278648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.986858, 36.166397, 40.382572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042808, -0.381742, 0.923277,
		0.747922, -0.600461, -0.282947,
		0.662404, 0.702652, 0.259809,
		34.185581, 36.377193, 40.460514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.364166, 35.509495, 40.567783>,  <33.721897, 35.885338, 40.278648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.364166, 35.509495, 40.567783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.395912, 35.881557, 40.711174>,  <34.414959, 36.104797, 40.797207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.395912, 35.881557, 40.711174>,  <34.364166, 35.509495, 40.567783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.395912, 35.881557, 40.711174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014927, -0.358458, 0.933427,
		0.996734, -0.079432, -0.014564,
		0.079365, 0.930161, 0.358473,
		34.419724, 36.160606, 40.818714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.806335, 35.472054, 41.137493>,  <34.364166, 35.509495, 40.567783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.806335, 35.472054, 41.137493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.623726, 35.822758, 41.197983>,  <34.514160, 36.033180, 41.234276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.623726, 35.822758, 41.197983>,  <34.806335, 35.472054, 41.137493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.623726, 35.822758, 41.197983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026158, -0.156674, 0.987304,
		0.889327, 0.454682, 0.048591,
		-0.456523, 0.876765, 0.151228,
		34.486771, 36.085789, 41.243351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.063992, 35.681931, 41.787575>,  <34.806335, 35.472054, 41.137493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.063992, 35.681931, 41.787575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.731632, 35.892380, 41.715134>,  <34.532215, 36.018650, 41.671669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.731632, 35.892380, 41.715134>,  <35.063992, 35.681931, 41.787575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.731632, 35.892380, 41.715134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230749, -0.029635, 0.972562,
		0.506323, 0.849890, 0.146027,
		-0.830898, 0.526126, -0.181107,
		34.482365, 36.050217, 41.660801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.004261, 36.228279, 42.366283>,  <35.063992, 35.681931, 41.787575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.004261, 36.228279, 42.366283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.630112, 36.178997, 42.233681>,  <34.405621, 36.149426, 42.154118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.630112, 36.178997, 42.233681>,  <35.004261, 36.228279, 42.366283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.630112, 36.178997, 42.233681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317093, -0.122945, 0.940392,
		-0.156620, 0.984736, 0.075931,
		-0.935373, -0.123207, -0.331508,
		34.349499, 36.142036, 42.134228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.549744, 36.612919, 42.762222>,  <35.004261, 36.228279, 42.366283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.549744, 36.612919, 42.762222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.328320, 36.311203, 42.621021>,  <34.195465, 36.130173, 42.536301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.328320, 36.311203, 42.621021>,  <34.549744, 36.612919, 42.762222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.328320, 36.311203, 42.621021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209293, -0.284272, 0.935620,
		-0.806082, 0.591803, -0.000507,
		-0.553559, -0.754293, -0.353007,
		34.162251, 36.084915, 42.515118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.093109, 36.512875, 43.317062>,  <34.549744, 36.612919, 42.762222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.093109, 36.512875, 43.317062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.975094, 36.203785, 43.092258>,  <33.904285, 36.018330, 42.957378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.975094, 36.203785, 43.092258>,  <34.093109, 36.512875, 43.317062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.975094, 36.203785, 43.092258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358255, -0.455814, 0.814792,
		-0.885779, 0.441737, -0.142349,
		-0.295039, -0.772723, -0.562006,
		33.886581, 35.971970, 42.923656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.474049, 36.523930, 43.369961>,  <34.093109, 36.512875, 43.317062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.474049, 36.523930, 43.369961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.605804, 36.154041, 43.293648>,  <33.684856, 35.932110, 43.247860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.605804, 36.154041, 43.293648>,  <33.474049, 36.523930, 43.369961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.605804, 36.154041, 43.293648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478810, -0.337737, 0.810354,
		-0.813784, -0.175573, -0.554012,
		0.329387, -0.924720, -0.190779,
		33.704620, 35.876625, 43.236416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.916782, 36.060745, 43.544830>,  <33.474049, 36.523930, 43.369961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.916782, 36.060745, 43.544830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.207172, 35.785904, 43.533131>,  <33.381405, 35.620998, 43.526112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.207172, 35.785904, 43.533131>,  <32.916782, 36.060745, 43.544830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.207172, 35.785904, 43.533131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429159, -0.485846, 0.761430,
		-0.537392, -0.540223, -0.647587,
		0.725970, -0.687104, -0.029249,
		33.424965, 35.579773, 43.524357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.636169, 35.307076, 43.602375>,  <32.916782, 36.060745, 43.544830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.636169, 35.307076, 43.602375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.014076, 35.304802, 43.733456>,  <33.240822, 35.303440, 43.812103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.014076, 35.304802, 43.733456>,  <32.636169, 35.307076, 43.602375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.014076, 35.304802, 43.733456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298968, -0.424641, 0.854575,
		0.134300, -0.905344, -0.402884,
		0.944766, -0.005680, 0.327698,
		33.297504, 35.303097, 43.831764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.692348, 34.698608, 43.925247>,  <32.636169, 35.307076, 43.602375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.692348, 34.698608, 43.925247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.022285, 34.883701, 44.055183>,  <33.220245, 34.994755, 44.133144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.022285, 34.883701, 44.055183>,  <32.692348, 34.698608, 43.925247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.022285, 34.883701, 44.055183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129178, -0.405118, 0.905092,
		0.550411, -0.788518, -0.274383,
		0.824840, 0.462729, 0.324841,
		33.269737, 35.022518, 44.152637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.071156, 34.148155, 44.302944>,  <32.692348, 34.698608, 43.925247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.071156, 34.148155, 44.302944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.228958, 34.490360, 44.437084>,  <33.323639, 34.695683, 44.517570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.228958, 34.490360, 44.437084>,  <33.071156, 34.148155, 44.302944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.228958, 34.490360, 44.437084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132826, -0.308027, 0.942060,
		0.909243, -0.416191, -0.007883,
		0.394505, 0.855514, 0.335352,
		33.347309, 34.747013, 44.537689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.621117, 34.005260, 44.748272>,  <33.071156, 34.148155, 44.302944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.621117, 34.005260, 44.748272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.497765, 34.373264, 44.845005>,  <33.423752, 34.594067, 44.903046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.497765, 34.373264, 44.845005>,  <33.621117, 34.005260, 44.748272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.497765, 34.373264, 44.845005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031074, -0.263826, 0.964070,
		0.950755, 0.289786, 0.109947,
		-0.308380, 0.920011, 0.241829,
		33.405251, 34.649269, 44.917553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.187408, 34.335674, 45.129349>,  <33.621117, 34.005260, 44.748272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.187408, 34.335674, 45.129349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.847057, 34.519840, 45.230564>,  <33.642845, 34.630341, 45.291294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.847057, 34.519840, 45.230564>,  <34.187408, 34.335674, 45.129349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.847057, 34.519840, 45.230564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245039, -0.078243, 0.966351,
		0.464719, 0.884250, -0.046244,
		-0.850878, 0.460413, 0.253036,
		33.591793, 34.657963, 45.306477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.468327, 34.641758, 45.689999>,  <34.187408, 34.335674, 45.129349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.468327, 34.641758, 45.689999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.068901, 34.627506, 45.705982>,  <33.829247, 34.618954, 45.715572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.068901, 34.627506, 45.705982>,  <34.468327, 34.641758, 45.689999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.068901, 34.627506, 45.705982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040940, -0.027314, 0.998788,
		-0.034495, 0.998992, 0.028734,
		-0.998566, -0.035630, 0.039957,
		33.769333, 34.616817, 45.717968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.356140, 34.716366, 46.346718>,  <34.468327, 34.641758, 45.689999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.356140, 34.716366, 46.346718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.970867, 34.676701, 46.246765>,  <33.739704, 34.652901, 46.186794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.970867, 34.676701, 46.246765>,  <34.356140, 34.716366, 46.346718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.970867, 34.676701, 46.246765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258771, 0.090016, 0.961735,
		-0.072874, 0.990992, -0.112362,
		-0.963186, -0.099162, -0.249880,
		33.681911, 34.646954, 46.171803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.894806, 35.360096, 46.399727>,  <34.356140, 34.716366, 46.346718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.894806, 35.360096, 46.399727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.665710, 35.034351, 46.437229>,  <33.528255, 34.838905, 46.459732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.665710, 35.034351, 46.437229>,  <33.894806, 35.360096, 46.399727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.665710, 35.034351, 46.437229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021561, 0.129303, 0.991371,
		-0.819457, 0.565770, -0.091614,
		-0.572734, -0.814361, 0.093760,
		33.493889, 34.790043, 46.465359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.308922, 35.515499, 46.938065>,  <33.894806, 35.360096, 46.399727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.308922, 35.515499, 46.938065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.320641, 35.115715, 46.932209>,  <33.327671, 34.875843, 46.928696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.320641, 35.115715, 46.932209>,  <33.308922, 35.515499, 46.938065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.320641, 35.115715, 46.932209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178041, -0.009191, 0.983980,
		-0.983587, -0.031434, 0.177677,
		0.029297, -0.999463, -0.014637,
		33.329430, 34.815876, 46.927818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.804882, 35.358692, 47.406921>,  <33.308922, 35.515499, 46.938065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.804882, 35.358692, 47.406921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.049751, 35.047295, 47.351524>,  <33.196674, 34.860455, 47.318287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.049751, 35.047295, 47.351524>,  <32.804882, 35.358692, 47.406921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.049751, 35.047295, 47.351524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107648, -0.091469, 0.989972,
		-0.783359, -0.620947, 0.027809,
		0.612177, -0.778497, -0.138496,
		33.233406, 34.813744, 47.309975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.624016, 34.908882, 47.916782>,  <32.804882, 35.358692, 47.406921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.624016, 34.908882, 47.916782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.978714, 34.748856, 47.824150>,  <33.191532, 34.652840, 47.768570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.978714, 34.748856, 47.824150>,  <32.624016, 34.908882, 47.916782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.978714, 34.748856, 47.824150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090943, -0.340194, 0.935947,
		-0.453222, -0.851008, -0.265282,
		0.886746, -0.400067, -0.231577,
		33.244740, 34.628838, 47.754677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.565166, 34.270229, 48.294842>,  <32.624016, 34.908882, 47.916782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.565166, 34.270229, 48.294842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.955650, 34.337093, 48.239597>,  <33.189941, 34.377213, 48.206451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.955650, 34.337093, 48.239597>,  <32.565166, 34.270229, 48.294842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.955650, 34.337093, 48.239597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181906, -0.284702, 0.941199,
		0.118015, -0.943928, -0.308337,
		0.976208, 0.167164, -0.138107,
		33.248512, 34.387241, 48.198166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.871536, 33.657505, 48.427162>,  <32.565166, 34.270229, 48.294842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.871536, 33.657505, 48.427162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.136452, 33.952629, 48.479328>,  <33.295399, 34.129704, 48.510628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.136452, 33.952629, 48.479328>,  <32.871536, 33.657505, 48.427162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.136452, 33.952629, 48.479328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332719, -0.445573, 0.831122,
		0.671323, -0.507048, -0.540581,
		0.662287, 0.737813, 0.130419,
		33.335136, 34.173973, 48.518456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.485729, 33.363026, 48.560471>,  <32.871536, 33.657505, 48.427162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.485729, 33.363026, 48.560471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.490440, 33.727592, 48.724998>,  <33.493267, 33.946331, 48.823715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.490440, 33.727592, 48.724998>,  <33.485729, 33.363026, 48.560471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.490440, 33.727592, 48.724998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289642, -0.396822, 0.870999,
		0.957062, 0.108877, -0.268658,
		0.011778, 0.911415, 0.411319,
		33.493973, 34.001019, 48.848392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.084549, 33.276310, 48.891495>,  <33.485729, 33.363026, 48.560471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.084549, 33.276310, 48.891495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.905132, 33.583675, 49.074078>,  <33.797482, 33.768097, 49.183628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.905132, 33.583675, 49.074078>,  <34.084549, 33.276310, 48.891495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.905132, 33.583675, 49.074078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215255, -0.402800, 0.889617,
		0.867456, 0.497280, 0.015265,
		-0.448537, 0.768417, 0.456453,
		33.770573, 33.814201, 49.211014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.506424, 33.292271, 49.529678>,  <34.084549, 33.276310, 48.891495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.506424, 33.292271, 49.529678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.180576, 33.517139, 49.586754>,  <33.985069, 33.652061, 49.620998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.180576, 33.517139, 49.586754>,  <34.506424, 33.292271, 49.529678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.180576, 33.517139, 49.586754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014428, -0.265581, 0.963980,
		0.579822, 0.783214, 0.224458,
		-0.814615, 0.562176, 0.142689,
		33.936192, 33.685791, 49.629562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.639843, 33.689526, 50.101463>,  <34.506424, 33.292271, 49.529678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.639843, 33.689526, 50.101463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.244335, 33.642704, 50.064289>,  <34.007030, 33.614609, 50.041985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.244335, 33.642704, 50.064289>,  <34.639843, 33.689526, 50.101463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.244335, 33.642704, 50.064289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053835, -0.301133, 0.952061,
		-0.139432, 0.946370, 0.291449,
		-0.988767, -0.117057, -0.092935,
		33.947704, 33.607586, 50.036407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.344688, 33.904938, 50.826134>,  <34.639843, 33.689526, 50.101463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.344688, 33.904938, 50.826134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.043549, 33.726601, 50.632458>,  <33.862865, 33.619598, 50.516251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.043549, 33.726601, 50.632458>,  <34.344688, 33.904938, 50.826134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.043549, 33.726601, 50.632458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230389, -0.510597, 0.828379,
		-0.616549, 0.735200, 0.281689,
		-0.752853, -0.445838, -0.484190,
		33.817692, 33.592850, 50.487202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.730076, 34.157921, 51.171120>,  <34.344688, 33.904938, 50.826134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.730076, 34.157921, 51.171120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.691551, 33.799210, 50.998371>,  <33.668438, 33.583984, 50.894722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.691551, 33.799210, 50.998371>,  <33.730076, 34.157921, 51.171120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.691551, 33.799210, 50.998371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221078, -0.403782, 0.887742,
		-0.970489, 0.180977, -0.159369,
		-0.096311, -0.896776, -0.431876,
		33.662659, 33.530178, 50.868809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.004566, 33.886806, 51.236584>,  <33.730076, 34.157921, 51.171120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.004566, 33.886806, 51.236584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.286900, 33.605881, 51.199585>,  <33.456299, 33.437325, 51.177387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.286900, 33.605881, 51.199585>,  <33.004566, 33.886806, 51.236584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.286900, 33.605881, 51.199585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242733, -0.362454, 0.899838,
		-0.665496, -0.612681, -0.426306,
		0.705830, -0.702317, -0.092494,
		33.498650, 33.395187, 51.171837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.698597, 33.102051, 51.296852>,  <33.004566, 33.886806, 51.236584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.698597, 33.102051, 51.296852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.088097, 33.085217, 51.386333>,  <33.321796, 33.075115, 51.440022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.088097, 33.085217, 51.386333>,  <32.698597, 33.102051, 51.296852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.088097, 33.085217, 51.386333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226872, -0.259203, 0.938799,
		0.018478, -0.964906, -0.261945,
		0.973749, -0.042081, 0.223700,
		33.380222, 33.072590, 51.453442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.711567, 32.656151, 52.041245>,  <32.698597, 33.102051, 51.296852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.711567, 32.656151, 52.041245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.076717, 32.798885, 51.961929>,  <33.295807, 32.884525, 51.914341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.076717, 32.798885, 51.961929>,  <32.711567, 32.656151, 52.041245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.076717, 32.798885, 51.961929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209199, 0.008184, 0.977839,
		0.350550, -0.934131, -0.067179,
		0.912880, 0.356835, -0.198289,
		33.350582, 32.905937, 51.902443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.128387, 32.273476, 52.504055>,  <32.711567, 32.656151, 52.041245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.128387, 32.273476, 52.504055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.318974, 32.612236, 52.409626>,  <33.433327, 32.815495, 52.352970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.318974, 32.612236, 52.409626>,  <33.128387, 32.273476, 52.504055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.318974, 32.612236, 52.409626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214989, 0.148127, 0.965318,
		0.852502, -0.510695, -0.111497,
		0.476467, 0.846906, -0.236072,
		33.461914, 32.866306, 52.338806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.749786, 32.359592, 52.853928>,  <33.128387, 32.273476, 52.504055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.749786, 32.359592, 52.853928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.562164, 32.708576, 52.799091>,  <33.449589, 32.917969, 52.766190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.562164, 32.708576, 52.799091>,  <33.749786, 32.359592, 52.853928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.562164, 32.708576, 52.799091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037764, 0.174899, 0.983862,
		0.882359, 0.456312, -0.114985,
		-0.469058, 0.872462, -0.137092,
		33.421448, 32.970314, 52.757965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.530899, 32.361797, 52.590927>,  <33.749786, 32.359592, 52.853928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.530899, 32.361797, 52.590927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.690662, 32.001163, 52.657398>,  <34.786522, 31.784782, 52.697281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.690662, 32.001163, 52.657398>,  <34.530899, 32.361797, 52.590927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.690662, 32.001163, 52.657398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072153, -0.211620, -0.974685,
		0.913930, 0.377306, -0.149575,
		0.399408, -0.901586, 0.166182,
		34.810486, 31.730688, 52.707253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.271957, 32.273731, 52.238400>,  <34.530899, 32.361797, 52.590927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.271957, 32.273731, 52.238400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.038879, 31.949856, 52.266300>,  <34.899033, 31.755531, 52.283039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.038879, 31.949856, 52.266300>,  <35.271957, 32.273731, 52.238400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.038879, 31.949856, 52.266300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160756, -0.198964, -0.966732,
		0.796630, -0.552102, 0.246098,
		-0.582699, -0.809690, 0.069747,
		34.864071, 31.706949, 52.287224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.624901, 31.898684, 51.798557>,  <35.271957, 32.273731, 52.238400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.624901, 31.898684, 51.798557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.276100, 31.707092, 51.838932>,  <35.066818, 31.592138, 51.863159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.276100, 31.707092, 51.838932>,  <35.624901, 31.898684, 51.798557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.276100, 31.707092, 51.838932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123901, -0.415475, -0.901127,
		0.473557, -0.773280, 0.421642,
		-0.872005, -0.478977, 0.100941,
		35.014500, 31.563398, 51.869213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.719597, 31.283157, 51.526268>,  <35.624901, 31.898684, 51.798557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.719597, 31.283157, 51.526268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.324066, 31.326229, 51.485046>,  <35.086746, 31.352072, 51.460312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.324066, 31.326229, 51.485046>,  <35.719597, 31.283157, 51.526268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.324066, 31.326229, 51.485046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052293, -0.396861, -0.916388,
		-0.139573, -0.911541, 0.386797,
		-0.988830, 0.107676, -0.103058,
		35.027416, 31.358532, 51.454128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.614815, 30.737997, 51.186745>,  <35.719597, 31.283157, 51.526268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.614815, 30.737997, 51.186745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.281307, 30.942091, 51.102367>,  <35.081203, 31.064547, 51.051739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.281307, 30.942091, 51.102367>,  <35.614815, 30.737997, 51.186745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.281307, 30.942091, 51.102367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067662, -0.284760, -0.956208,
		-0.547959, -0.811525, 0.202899,
		-0.833764, 0.510234, -0.210946,
		35.031178, 31.095161, 51.039085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.229458, 30.447289, 50.729946>,  <35.614815, 30.737997, 51.186745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.229458, 30.447289, 50.729946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.988949, 30.758343, 50.656452>,  <34.844643, 30.944975, 50.612354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.988949, 30.758343, 50.656452>,  <35.229458, 30.447289, 50.729946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.988949, 30.758343, 50.656452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136723, -0.326678, -0.935194,
		-0.787263, -0.537182, 0.302742,
		-0.601269, 0.777635, -0.183737,
		34.808567, 30.991632, 50.601330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.626938, 30.234055, 50.337029>,  <35.229458, 30.447289, 50.729946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.626938, 30.234055, 50.337029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.659245, 30.620527, 50.239075>,  <34.678631, 30.852411, 50.180302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.659245, 30.620527, 50.239075>,  <34.626938, 30.234055, 50.337029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.659245, 30.620527, 50.239075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021771, -0.243919, -0.969551,
		-0.996495, 0.083640, 0.001334,
		0.080768, 0.966182, -0.244885,
		34.683475, 30.910381, 50.165607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.074039, 30.323067, 49.822720>,  <34.626938, 30.234055, 50.337029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.074039, 30.323067, 49.822720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.279606, 30.661377, 49.765366>,  <34.402946, 30.864363, 49.730953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.279606, 30.661377, 49.765366>,  <34.074039, 30.323067, 49.822720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.279606, 30.661377, 49.765366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000651, -0.166763, -0.985997,
		-0.857842, 0.506810, -0.085151,
		0.513913, 0.845774, -0.143387,
		34.433781, 30.915110, 49.722351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.741432, 30.661461, 49.278614>,  <34.074039, 30.323067, 49.822720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.741432, 30.661461, 49.278614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.091465, 30.854946, 49.285030>,  <34.301483, 30.971037, 49.288879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.091465, 30.854946, 49.285030>,  <33.741432, 30.661461, 49.278614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.091465, 30.854946, 49.285030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038944, 0.103414, -0.993876,
		-0.482408, 0.869096, 0.109333,
		0.875080, 0.483712, 0.016042,
		34.353989, 31.000059, 49.289845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.573402, 31.099989, 48.791424>,  <33.741432, 30.661461, 49.278614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.573402, 31.099989, 48.791424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.968597, 31.048231, 48.825230>,  <34.205715, 31.017178, 48.845512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.968597, 31.048231, 48.825230>,  <33.573402, 31.099989, 48.791424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.968597, 31.048231, 48.825230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089639, 0.034272, -0.995385,
		0.125898, 0.991001, 0.045459,
		0.987985, -0.129392, 0.084517,
		34.264992, 31.009413, 48.850586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.800426, 31.605003, 48.404564>,  <33.573402, 31.099989, 48.791424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.800426, 31.605003, 48.404564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.084759, 31.324339, 48.424103>,  <34.255360, 31.155939, 48.435825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.084759, 31.324339, 48.424103>,  <33.800426, 31.605003, 48.404564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.084759, 31.324339, 48.424103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014968, -0.084530, -0.996308,
		0.703202, 0.707477, -0.070589,
		0.710832, -0.701663, 0.048852,
		34.298008, 31.113840, 48.438759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.259125, 31.802101, 47.937321>,  <33.800426, 31.605003, 48.404564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.259125, 31.802101, 47.937321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.405113, 31.434780, 47.998661>,  <34.492706, 31.214388, 48.035465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.405113, 31.434780, 47.998661>,  <34.259125, 31.802101, 47.937321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.405113, 31.434780, 47.998661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244040, -0.064594, -0.967612,
		0.898467, 0.390571, 0.200528,
		0.364968, -0.918304, 0.153350,
		34.514603, 31.159288, 48.044666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.993736, 31.842846, 47.748474>,  <34.259125, 31.802101, 47.937321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.993736, 31.842846, 47.748474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.838428, 31.475756, 47.714935>,  <34.745243, 31.255503, 47.694813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.838428, 31.475756, 47.714935>,  <34.993736, 31.842846, 47.748474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.838428, 31.475756, 47.714935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193788, 0.007643, -0.981014,
		0.900941, -0.397145, 0.174877,
		-0.388268, -0.917724, -0.083848,
		34.721947, 31.200438, 47.689781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.381912, 31.616625, 47.260612>,  <34.993736, 31.842846, 47.748474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.381912, 31.616625, 47.260612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.066818, 31.370220, 47.259827>,  <34.877762, 31.222378, 47.259357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.066818, 31.370220, 47.259827>,  <35.381912, 31.616625, 47.260612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.066818, 31.370220, 47.259827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009136, 0.014866, -0.999848,
		0.615945, -0.787598, -0.017338,
		-0.787736, -0.616010, -0.001961,
		34.830498, 31.185417, 47.259239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.534954, 31.098932, 46.845379>,  <35.381912, 31.616625, 47.260612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.534954, 31.098932, 46.845379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.136341, 31.124298, 46.866909>,  <34.897171, 31.139517, 46.879826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.136341, 31.124298, 46.866909>,  <35.534954, 31.098932, 46.845379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.136341, 31.124298, 46.866909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050316, 0.055640, -0.997182,
		-0.066232, -0.996435, -0.052256,
		-0.996535, 0.063416, 0.053821,
		34.837379, 31.143322, 46.883057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.418427, 30.769037, 46.302670>,  <35.534954, 31.098932, 46.845379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.418427, 30.769037, 46.302670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.066727, 30.944027, 46.378075>,  <34.855705, 31.049021, 46.423317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.066727, 30.944027, 46.378075>,  <35.418427, 30.769037, 46.302670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.066727, 30.944027, 46.378075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218843, -0.019444, -0.975566,
		-0.423121, -0.899020, 0.112835,
		-0.879248, 0.437475, 0.188517,
		34.802952, 31.075270, 46.434631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.883450, 30.299963, 45.989742>,  <35.418427, 30.769037, 46.302670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.883450, 30.299963, 45.989742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.775246, 30.683952, 46.018791>,  <34.710323, 30.914347, 46.036221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.775246, 30.683952, 46.018791>,  <34.883450, 30.299963, 45.989742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.775246, 30.683952, 46.018791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070945, 0.095111, -0.992935,
		-0.960101, -0.263444, -0.093833,
		-0.270507, 0.959975, 0.072626,
		34.694092, 30.971945, 46.040581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.758923, 30.378658, 45.328743>,  <34.883450, 30.299963, 45.989742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.758923, 30.378658, 45.328743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.767784, 30.752754, 45.470070>,  <34.773102, 30.977213, 45.554867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.767784, 30.752754, 45.470070>,  <34.758923, 30.378658, 45.328743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.767784, 30.752754, 45.470070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035510, 0.353918, -0.934602,
		-0.999124, 0.008158, 0.041051,
		0.022153, 0.935241, 0.353318,
		34.774429, 31.033327, 45.576065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.282040, 30.830351, 44.953964>,  <34.758923, 30.378658, 45.328743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.282040, 30.830351, 44.953964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.550495, 31.081568, 45.111515>,  <34.711567, 31.232298, 45.206047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.550495, 31.081568, 45.111515>,  <34.282040, 30.830351, 44.953964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.550495, 31.081568, 45.111515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044798, 0.495983, -0.867176,
		-0.739979, 0.599639, 0.304737,
		0.671137, 0.628040, 0.393879,
		34.751835, 31.269979, 45.229679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.096664, 31.381096, 44.628464>,  <34.282040, 30.830351, 44.953964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.096664, 31.381096, 44.628464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.445087, 31.500896, 44.784184>,  <34.654140, 31.572777, 44.877617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.445087, 31.500896, 44.784184>,  <34.096664, 31.381096, 44.628464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.445087, 31.500896, 44.784184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246132, 0.419743, -0.873633,
		-0.425064, 0.856805, 0.291903,
		0.871057, 0.299503, 0.389304,
		34.706406, 31.590748, 44.900974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.094345, 32.022945, 44.510227>,  <34.096664, 31.381096, 44.628464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.094345, 32.022945, 44.510227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.489059, 31.962122, 44.532623>,  <34.725887, 31.925629, 44.546062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.489059, 31.962122, 44.532623>,  <34.094345, 32.022945, 44.510227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.489059, 31.962122, 44.532623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130758, 0.543133, -0.829403,
		0.095704, 0.825763, 0.555838,
		0.986784, -0.152058, 0.055995,
		34.785095, 31.916504, 44.549423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.406200, 32.661621, 44.456200>,  <34.094345, 32.022945, 44.510227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.406200, 32.661621, 44.456200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.681179, 32.396217, 44.338108>,  <34.846169, 32.236973, 44.267254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.681179, 32.396217, 44.338108>,  <34.406200, 32.661621, 44.456200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.681179, 32.396217, 44.338108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098393, 0.487874, -0.867351,
		0.719536, 0.567211, 0.400673,
		0.687449, -0.663514, -0.295233,
		34.887413, 32.197163, 44.249538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.799725, 33.135834, 44.089050>,  <34.406200, 32.661621, 44.456200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.799725, 33.135834, 44.089050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.875721, 32.754604, 43.994770>,  <34.921318, 32.525867, 43.938202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.875721, 32.754604, 43.994770>,  <34.799725, 33.135834, 44.089050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.875721, 32.754604, 43.994770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026312, 0.244928, -0.969184,
		0.981434, 0.177933, 0.071611,
		0.189989, -0.953074, -0.235699,
		34.932716, 32.468681, 43.924061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.458645, 33.074261, 43.739502>,  <34.799725, 33.135834, 44.089050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.458645, 33.074261, 43.739502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.210110, 32.780582, 43.630035>,  <35.060989, 32.604374, 43.564358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.210110, 32.780582, 43.630035>,  <35.458645, 33.074261, 43.739502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.210110, 32.780582, 43.630035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175637, 0.209868, -0.961825,
		0.763603, -0.645685, -0.001447,
		-0.621339, -0.734197, -0.273662,
		35.023708, 32.560322, 43.547935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.746281, 32.912380, 43.091213>,  <35.458645, 33.074261, 43.739502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.746281, 32.912380, 43.091213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.398746, 32.714855, 43.105480>,  <35.190228, 32.596340, 43.114040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.398746, 32.714855, 43.105480>,  <35.746281, 32.912380, 43.091213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.398746, 32.714855, 43.105480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146183, 0.187033, -0.971416,
		0.473026, -0.849216, -0.234688,
		-0.868836, -0.493812, 0.035669,
		35.138096, 32.566711, 43.116180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.709526, 32.593681, 42.484905>,  <35.746281, 32.912380, 43.091213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.709526, 32.593681, 42.484905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.325737, 32.575714, 42.596180>,  <35.095463, 32.564934, 42.662945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.325737, 32.575714, 42.596180>,  <35.709526, 32.593681, 42.484905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.325737, 32.575714, 42.596180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281339, 0.208572, -0.936668,
		-0.015949, -0.976975, -0.212757,
		-0.959475, -0.044918, 0.278188,
		35.037895, 32.562237, 42.679638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.350475, 32.041393, 42.077286>,  <35.709526, 32.593681, 42.484905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.350475, 32.041393, 42.077286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.086525, 32.311367, 42.209362>,  <34.928154, 32.473351, 42.288609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.086525, 32.311367, 42.209362>,  <35.350475, 32.041393, 42.077286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.086525, 32.311367, 42.209362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191705, 0.273679, -0.942523,
		-0.726510, -0.685245, -0.051205,
		-0.659873, 0.674936, 0.330195,
		34.888561, 32.513847, 42.308422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.763359, 31.982653, 41.570118>,  <35.350475, 32.041393, 42.077286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.763359, 31.982653, 41.570118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.701107, 32.333019, 41.752789>,  <34.663754, 32.543240, 41.862389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.701107, 32.333019, 41.752789>,  <34.763359, 31.982653, 41.570118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.701107, 32.333019, 41.752789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081949, 0.449263, -0.889633,
		-0.984410, -0.175879, 0.001860,
		-0.155633, 0.875916, 0.456672,
		34.654419, 32.595795, 41.889790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.103886, 32.214676, 41.341274>,  <34.763359, 31.982653, 41.570118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.103886, 32.214676, 41.341274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.269726, 32.545868, 41.492298>,  <34.369228, 32.744583, 41.582912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.269726, 32.545868, 41.492298>,  <34.103886, 32.214676, 41.341274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.269726, 32.545868, 41.492298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123794, 0.462359, -0.878009,
		-0.901545, 0.317281, 0.294192,
		0.414598, 0.827984, 0.377560,
		34.394104, 32.794262, 41.605568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.669727, 32.784863, 41.081623>,  <34.103886, 32.214676, 41.341274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.669727, 32.784863, 41.081623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.010220, 32.970615, 41.179398>,  <34.214516, 33.082069, 41.238064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.010220, 32.970615, 41.179398>,  <33.669727, 32.784863, 41.081623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.010220, 32.970615, 41.179398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065569, 0.556249, -0.828425,
		-0.520679, 0.689153, 0.503946,
		0.851231, 0.464387, 0.244440,
		34.265591, 33.109932, 41.252731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.499210, 33.455910, 40.981827>,  <33.669727, 32.784863, 41.081623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.499210, 33.455910, 40.981827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.898735, 33.463207, 40.963787>,  <34.138451, 33.467587, 40.952965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.898735, 33.463207, 40.963787>,  <33.499210, 33.455910, 40.981827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.898735, 33.463207, 40.963787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048551, 0.314225, -0.948106,
		-0.003127, 0.949173, 0.314739,
		0.998816, 0.018246, -0.045101,
		34.198380, 33.468681, 40.950256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.687817, 34.135387, 40.718128>,  <33.499210, 33.455910, 40.981827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.687817, 34.135387, 40.718128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.000000, 33.893970, 40.652855>,  <34.187309, 33.749123, 40.613689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.000000, 33.893970, 40.652855>,  <33.687817, 34.135387, 40.718128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.000000, 33.893970, 40.652855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009409, 0.272319, -0.962161,
		0.625140, 0.749388, 0.218212,
		0.780455, -0.603539, -0.163187,
		34.234138, 33.712910, 40.603897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.106705, 34.493237, 40.336205>,  <33.687817, 34.135387, 40.718128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.106705, 34.493237, 40.336205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.243420, 34.123028, 40.270973>,  <34.325447, 33.900902, 40.231834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.243420, 34.123028, 40.270973>,  <34.106705, 34.493237, 40.336205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.243420, 34.123028, 40.270973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237373, 0.252924, -0.937914,
		0.909306, 0.281855, 0.306140,
		0.341786, -0.925520, -0.163080,
		34.345955, 33.845371, 40.222050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.623768, 34.659290, 39.933975>,  <34.106705, 34.493237, 40.336205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.623768, 34.659290, 39.933975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.566250, 34.267269, 39.879112>,  <34.531738, 34.032055, 39.846195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.566250, 34.267269, 39.879112>,  <34.623768, 34.659290, 39.933975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.566250, 34.267269, 39.879112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239859, 0.099954, -0.965648,
		0.960100, -0.171753, 0.220703,
		-0.143793, -0.980056, -0.137162,
		34.523113, 33.973251, 39.837963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.234417, 34.409851, 39.562889>,  <34.623768, 34.659290, 39.933975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.234417, 34.409851, 39.562889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.937622, 34.145821, 39.515965>,  <34.759544, 33.987404, 39.487808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.937622, 34.145821, 39.515965>,  <35.234417, 34.409851, 39.562889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.937622, 34.145821, 39.515965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214900, -0.068420, -0.974236,
		0.635041, -0.748079, 0.192617,
		-0.741985, -0.660073, -0.117313,
		34.715027, 33.947800, 39.480770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.490349, 33.909519, 39.096645>,  <35.234417, 34.409851, 39.562889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.490349, 33.909519, 39.096645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.097252, 33.840298, 39.070496>,  <34.861393, 33.798767, 39.054806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.097252, 33.840298, 39.070496>,  <35.490349, 33.909519, 39.096645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.097252, 33.840298, 39.070496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052739, 0.076654, -0.995662,
		0.177313, -0.981925, -0.066205,
		-0.982741, -0.173052, -0.065378,
		34.802429, 33.788383, 39.050880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.377804, 33.388123, 38.619202>,  <35.490349, 33.909519, 39.096645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.377804, 33.388123, 38.619202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.025597, 33.577724, 38.620743>,  <34.814274, 33.691486, 38.621666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.025597, 33.577724, 38.620743>,  <35.377804, 33.388123, 38.619202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.025597, 33.577724, 38.620743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015267, -0.020235, -0.999679,
		-0.473773, -0.880290, 0.025054,
		-0.880515, 0.474003, 0.003853,
		34.761440, 33.719925, 38.621899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.984158, 32.907978, 38.194813>,  <35.377804, 33.388123, 38.619202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.984158, 32.907978, 38.194813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.804264, 33.265224, 38.191204>,  <34.696327, 33.479572, 38.189037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.804264, 33.265224, 38.191204>,  <34.984158, 32.907978, 38.194813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.804264, 33.265224, 38.191204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063966, -0.042283, -0.997056,
		-0.890871, -0.447830, 0.076145,
		-0.449731, 0.893118, -0.009022,
		34.669346, 33.533161, 38.188496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.283707, 32.835644, 37.869175>,  <34.984158, 32.907978, 38.194813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.283707, 32.835644, 37.869175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.434116, 33.204327, 37.831078>,  <34.524361, 33.425537, 37.808220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.434116, 33.204327, 37.831078>,  <34.283707, 32.835644, 37.869175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.434116, 33.204327, 37.831078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060039, -0.078332, -0.995118,
		-0.924663, 0.379905, 0.025884,
		0.376022, 0.921703, -0.095240,
		34.546925, 33.480839, 37.802505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.885380, 33.021938, 37.326473>,  <34.283707, 32.835644, 37.869175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.885380, 33.021938, 37.326473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.175922, 33.295921, 37.349243>,  <34.350250, 33.460312, 37.362904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.175922, 33.295921, 37.349243>,  <33.885380, 33.021938, 37.326473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.175922, 33.295921, 37.349243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032064, 0.116499, -0.992673,
		-0.686567, 0.719213, 0.106583,
		0.726360, 0.684954, 0.056924,
		34.393829, 33.501408, 37.366322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.620235, 33.748444, 37.005917>,  <33.885380, 33.021938, 37.326473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.620235, 33.748444, 37.005917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.018013, 33.706345, 37.005016>,  <34.256680, 33.681084, 37.004475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.018013, 33.706345, 37.005016>,  <33.620235, 33.748444, 37.005917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.018013, 33.706345, 37.005016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025474, 0.261332, -0.964913,
		0.102142, 0.959494, 0.262561,
		0.994444, -0.105247, -0.002251,
		34.316345, 33.674770, 37.004341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.826843, 34.358742, 36.576111>,  <33.620235, 33.748444, 37.005917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.826843, 34.358742, 36.576111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.166344, 34.147438, 36.585556>,  <34.370045, 34.020657, 36.591221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.166344, 34.147438, 36.585556>,  <33.826843, 34.358742, 36.576111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.166344, 34.147438, 36.585556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324686, 0.485390, -0.811773,
		0.417368, 0.696661, 0.583496,
		0.848754, -0.528261, 0.023610,
		34.420971, 33.988960, 36.592640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.428425, 34.862915, 36.602417>,  <33.826843, 34.358742, 36.576111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.428425, 34.862915, 36.602417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.530960, 34.511440, 36.441322>,  <34.592480, 34.300556, 36.344666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.530960, 34.511440, 36.441322>,  <34.428425, 34.862915, 36.602417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.530960, 34.511440, 36.441322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301521, 0.468556, -0.830385,
		0.918355, 0.091424, 0.385052,
		0.256335, -0.878690, -0.402735,
		34.607861, 34.247833, 36.320503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.197872, 35.019722, 36.247711>,  <34.428425, 34.862915, 36.602417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.197872, 35.019722, 36.247711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.012680, 34.696510, 36.101978>,  <34.901566, 34.502583, 36.014538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.012680, 34.696510, 36.101978>,  <35.197872, 35.019722, 36.247711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.012680, 34.696510, 36.101978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278342, 0.257707, -0.925264,
		0.841529, -0.529791, 0.105593,
		-0.462984, -0.808027, -0.364331,
		34.873783, 34.454102, 35.992680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.980137, 34.925301, 36.075085>,  <35.197872, 35.019722, 36.247711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.980137, 34.925301, 36.075085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.343430, 34.917690, 35.907871>,  <36.561405, 34.913124, 35.807545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.343430, 34.917690, 35.907871>,  <35.980137, 34.925301, 36.075085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.343430, 34.917690, 35.907871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339145, -0.551729, 0.761955,
		-0.245134, -0.833807, -0.494647,
		0.908235, -0.019024, -0.418029,
		36.615898, 34.911983, 35.782463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.255276, 34.178463, 35.962914>,  <35.980137, 34.925301, 36.075085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.255276, 34.178463, 35.962914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.542728, 34.450535, 36.020763>,  <36.715202, 34.613777, 36.055473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.542728, 34.450535, 36.020763>,  <36.255276, 34.178463, 35.962914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.542728, 34.450535, 36.020763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337122, -0.522681, 0.783041,
		0.608204, -0.513964, -0.604921,
		0.718635, 0.680181, 0.144628,
		36.758320, 34.654591, 36.064152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.863117, 33.828632, 36.105701>,  <36.255276, 34.178463, 35.962914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.863117, 33.828632, 36.105701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.933769, 34.196915, 36.244904>,  <36.976158, 34.417885, 36.328423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.933769, 34.196915, 36.244904>,  <36.863117, 33.828632, 36.105701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.933769, 34.196915, 36.244904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214008, -0.381023, 0.899456,
		0.960731, -0.084392, -0.264337,
		0.176625, 0.920706, 0.348001,
		36.986755, 34.473125, 36.349304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.640461, 33.891182, 36.243614>,  <36.863117, 33.828632, 36.105701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.640461, 33.891182, 36.243614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.419823, 34.125511, 36.481121>,  <37.287441, 34.266109, 36.623627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.419823, 34.125511, 36.481121>,  <37.640461, 33.891182, 36.243614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.419823, 34.125511, 36.481121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399347, -0.439495, 0.804590,
		0.732303, 0.680926, 0.008477,
		-0.551593, 0.585818, 0.593769,
		37.254345, 34.301258, 36.659252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.142265, 34.074596, 36.847046>,  <37.640461, 33.891182, 36.243614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.142265, 34.074596, 36.847046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.785221, 34.207031, 36.969440>,  <37.570995, 34.286491, 37.042877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.785221, 34.207031, 36.969440>,  <38.142265, 34.074596, 36.847046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.785221, 34.207031, 36.969440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236056, -0.235003, 0.942895,
		0.384091, 0.913867, 0.131610,
		-0.892610, 0.331090, 0.305986,
		37.517437, 34.306358, 37.061237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.262287, 34.560169, 37.381939>,  <38.142265, 34.074596, 36.847046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.262287, 34.560169, 37.381939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.891106, 34.421486, 37.436634>,  <37.668396, 34.338276, 37.469452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.891106, 34.421486, 37.436634>,  <38.262287, 34.560169, 37.381939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.891106, 34.421486, 37.436634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175184, -0.081926, 0.981121,
		-0.328957, 0.934389, 0.136761,
		-0.927953, -0.346705, 0.136739,
		37.612720, 34.317474, 37.477657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.950405, 35.007439, 37.823551>,  <38.262287, 34.560169, 37.381939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.950405, 35.007439, 37.823551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.721203, 34.681660, 37.860073>,  <37.583683, 34.486191, 37.881989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.721203, 34.681660, 37.860073>,  <37.950405, 35.007439, 37.823551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.721203, 34.681660, 37.860073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380445, -0.165657, 0.909846,
		-0.725899, 0.556082, 0.404776,
		-0.573003, -0.814451, 0.091308,
		37.549301, 34.437325, 37.887466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757675, 35.054081, 38.534855>,  <37.950405, 35.007439, 37.823551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.757675, 35.054081, 38.534855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.674526, 34.679684, 38.421215>,  <37.624638, 34.455048, 38.353031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.674526, 34.679684, 38.421215>,  <37.757675, 35.054081, 38.534855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.674526, 34.679684, 38.421215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288046, -0.336142, 0.896682,
		-0.934782, 0.104565, 0.339484,
		-0.207877, -0.935989, -0.284099,
		37.612164, 34.398888, 38.335987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.240578, 34.861973, 39.092007>,  <37.757675, 35.054081, 38.534855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.240578, 34.861973, 39.092007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.356186, 34.511669, 38.937344>,  <37.425552, 34.301487, 38.844547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.356186, 34.511669, 38.937344>,  <37.240578, 34.861973, 39.092007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.356186, 34.511669, 38.937344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099728, -0.374155, 0.921989,
		-0.952113, -0.305038, -0.020801,
		0.289024, -0.875763, -0.386659,
		37.442894, 34.248940, 38.821346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.904518, 34.354679, 39.533588>,  <37.240578, 34.861973, 39.092007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.904518, 34.354679, 39.533588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.212734, 34.169235, 39.358620>,  <37.397663, 34.057968, 39.253639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.212734, 34.169235, 39.358620>,  <36.904518, 34.354679, 39.533588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.212734, 34.169235, 39.358620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237959, -0.427408, 0.872180,
		-0.591303, -0.776139, -0.219017,
		0.770543, -0.463606, -0.437417,
		37.443897, 34.030155, 39.227394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.882851, 33.622414, 39.791679>,  <36.904518, 34.354679, 39.533588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.882851, 33.622414, 39.791679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.249992, 33.650005, 39.635326>,  <37.470276, 33.666561, 39.541515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.249992, 33.650005, 39.635326>,  <36.882851, 33.622414, 39.791679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.249992, 33.650005, 39.635326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387719, -0.366648, 0.845721,
		-0.084979, -0.927799, -0.363273,
		0.917852, 0.068980, -0.390883,
		37.525349, 33.670700, 39.518063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.256859, 33.010815, 39.896904>,  <36.882851, 33.622414, 39.791679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.256859, 33.010815, 39.896904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.541126, 33.286163, 39.838821>,  <37.711689, 33.451374, 39.803970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.541126, 33.286163, 39.838821>,  <37.256859, 33.010815, 39.896904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.541126, 33.286163, 39.838821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527222, -0.384448, 0.757784,
		0.465813, -0.615094, -0.636142,
		0.710672, 0.688374, -0.145210,
		37.754330, 33.492676, 39.795258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.855373, 32.709354, 39.879784>,  <37.256859, 33.010815, 39.896904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.855373, 32.709354, 39.879784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.937248, 33.083488, 39.995197>,  <37.986374, 33.307968, 40.064445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.937248, 33.083488, 39.995197>,  <37.855373, 32.709354, 39.879784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.937248, 33.083488, 39.995197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239117, -0.333622, 0.911877,
		0.949171, -0.117660, -0.291943,
		0.204690, 0.935336, 0.288530,
		37.998653, 33.364090, 40.081757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.400570, 32.632275, 40.402550>,  <37.855373, 32.709354, 39.879784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.400570, 32.632275, 40.402550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.242809, 32.999298, 40.422710>,  <38.148151, 33.219513, 40.434807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.242809, 32.999298, 40.422710>,  <38.400570, 32.632275, 40.402550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.242809, 32.999298, 40.422710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046173, -0.034989, 0.998321,
		0.917777, 0.396068, -0.028567,
		-0.394404, 0.917554, 0.050400,
		38.124489, 33.274563, 40.437832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.801933, 32.997719, 40.742840>,  <38.400570, 32.632275, 40.402550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.801933, 32.997719, 40.742840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.456913, 33.189503, 40.807495>,  <38.249901, 33.304573, 40.846287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.456913, 33.189503, 40.807495>,  <38.801933, 32.997719, 40.742840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.456913, 33.189503, 40.807495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106961, -0.139446, 0.984436,
		0.494538, 0.866414, 0.068995,
		-0.862550, 0.479461, 0.161634,
		38.198147, 33.333340, 40.855984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.898914, 33.413200, 41.334824>,  <38.801933, 32.997719, 40.742840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.898914, 33.413200, 41.334824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.501980, 33.408085, 41.285656>,  <38.263821, 33.405018, 41.256153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.501980, 33.408085, 41.285656>,  <38.898914, 33.413200, 41.334824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.501980, 33.408085, 41.285656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121268, -0.090922, 0.988447,
		-0.023815, 0.995776, 0.088674,
		-0.992334, -0.012786, -0.122922,
		38.204281, 33.404247, 41.248779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.676548, 33.781746, 41.872364>,  <38.898914, 33.413200, 41.334824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.676548, 33.781746, 41.872364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.348434, 33.588085, 41.750561>,  <38.151566, 33.471889, 41.677479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.348434, 33.588085, 41.750561>,  <38.676548, 33.781746, 41.872364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.348434, 33.588085, 41.750561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240236, -0.191502, 0.951637,
		-0.519052, 0.853770, 0.040776,
		-0.820287, -0.484153, -0.304506,
		38.102348, 33.442841, 41.659210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.220371, 34.028362, 42.314392>,  <38.676548, 33.781746, 41.872364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.220371, 34.028362, 42.314392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.030556, 33.706425, 42.171825>,  <37.916664, 33.513264, 42.086285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.030556, 33.706425, 42.171825>,  <38.220371, 34.028362, 42.314392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.030556, 33.706425, 42.171825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449684, -0.126419, 0.884196,
		-0.756699, 0.579864, -0.301935,
		-0.474543, -0.804845, -0.356416,
		37.888191, 33.464970, 42.064899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.559525, 34.090359, 42.635754>,  <38.220371, 34.028362, 42.314392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.559525, 34.090359, 42.635754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.631821, 33.715752, 42.515579>,  <37.675198, 33.490986, 42.443474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.631821, 33.715752, 42.515579>,  <37.559525, 34.090359, 42.635754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.631821, 33.715752, 42.515579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492438, -0.350592, 0.796612,
		-0.851374, 0.003966, -0.524544,
		0.180742, -0.936520, -0.300438,
		37.686043, 33.434795, 42.425449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.939754, 33.762547, 42.577446>,  <37.559525, 34.090359, 42.635754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.939754, 33.762547, 42.577446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.220417, 33.479580, 42.611462>,  <37.388817, 33.309799, 42.631870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.220417, 33.479580, 42.611462>,  <36.939754, 33.762547, 42.577446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.220417, 33.479580, 42.611462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531326, -0.439971, 0.723960,
		-0.474731, -0.553155, -0.684580,
		0.701657, -0.707422, 0.085038,
		37.430916, 33.267353, 42.636974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.577770, 33.192123, 42.643150>,  <36.939754, 33.762547, 42.577446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.577770, 33.192123, 42.643150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.937122, 33.113655, 42.800339>,  <37.152733, 33.066574, 42.894653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.937122, 33.113655, 42.800339>,  <36.577770, 33.192123, 42.643150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.937122, 33.113655, 42.800339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437728, -0.326272, 0.837819,
		-0.036137, -0.924697, -0.378985,
		0.898381, -0.196168, 0.392976,
		37.206638, 33.054806, 42.918232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.396568, 32.528416, 43.048550>,  <36.577770, 33.192123, 42.643150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.396568, 32.528416, 43.048550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.759621, 32.653458, 43.160610>,  <36.977451, 32.728481, 43.227848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.759621, 32.653458, 43.160610>,  <36.396568, 32.528416, 43.048550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.759621, 32.653458, 43.160610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190071, -0.289003, 0.938270,
		0.374273, -0.904851, -0.202891,
		0.907630, 0.312606, 0.280152,
		37.031910, 32.747238, 43.244656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.597340, 32.012997, 43.572453>,  <36.396568, 32.528416, 43.048550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.597340, 32.012997, 43.572453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.828316, 32.330242, 43.649940>,  <36.966904, 32.520588, 43.696434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.828316, 32.330242, 43.649940>,  <36.597340, 32.012997, 43.572453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.828316, 32.330242, 43.649940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041656, -0.208347, 0.977167,
		0.815367, -0.572330, -0.087271,
		0.577444, 0.793114, 0.193720,
		37.001549, 32.568176, 43.708057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.098774, 31.759388, 44.103458>,  <36.597340, 32.012997, 43.572453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.098774, 31.759388, 44.103458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.112453, 32.158329, 44.129120>,  <37.120663, 32.397694, 44.144516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.112453, 32.158329, 44.129120>,  <37.098774, 31.759388, 44.103458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.112453, 32.158329, 44.129120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077829, -0.066655, 0.994736,
		0.996380, -0.029027, -0.079902,
		0.034200, 0.997354, 0.064155,
		37.122715, 32.457535, 44.148365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.571129, 31.937687, 44.598148>,  <37.098774, 31.759388, 44.103458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.571129, 31.937687, 44.598148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.409081, 32.303318, 44.590809>,  <37.311852, 32.522697, 44.586403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.409081, 32.303318, 44.590809>,  <37.571129, 31.937687, 44.598148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.409081, 32.303318, 44.590809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234484, 0.123283, 0.964271,
		0.883681, 0.386346, -0.264281,
		-0.405124, 0.914078, -0.018351,
		37.287544, 32.577541, 44.585304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006733, 32.407063, 45.031715>,  <37.571129, 31.937687, 44.598148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.006733, 32.407063, 45.031715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.640453, 32.566586, 45.011890>,  <37.420685, 32.662300, 44.999996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.640453, 32.566586, 45.011890>,  <38.006733, 32.407063, 45.031715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.640453, 32.566586, 45.011890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032174, 0.195677, 0.980141,
		0.400583, 0.895916, -0.192011,
		-0.915695, 0.398805, -0.049560,
		37.365746, 32.686226, 44.997021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053013, 33.015354, 45.344864>,  <38.006733, 32.407063, 45.031715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.053013, 33.015354, 45.344864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.660347, 32.940468, 45.359238>,  <37.424747, 32.895535, 45.367863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.660347, 32.940468, 45.359238>,  <38.053013, 33.015354, 45.344864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.660347, 32.940468, 45.359238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020049, 0.288858, 0.957162,
		-0.189578, 0.938888, -0.287314,
		-0.981661, -0.187217, 0.035937,
		37.365849, 32.884304, 45.370018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.728310, 33.570862, 45.592400>,  <38.053013, 33.015354, 45.344864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.728310, 33.570862, 45.592400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.457714, 33.286392, 45.668911>,  <37.295357, 33.115711, 45.714817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.457714, 33.286392, 45.668911>,  <37.728310, 33.570862, 45.592400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.457714, 33.286392, 45.668911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161881, 0.396973, 0.903442,
		-0.718440, 0.580205, -0.383675,
		-0.676490, -0.711178, 0.191277,
		37.254768, 33.073040, 45.726295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.205563, 33.968121, 46.013622>,  <37.728310, 33.570862, 45.592400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.205563, 33.968121, 46.013622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.119164, 33.583511, 46.081520>,  <37.067322, 33.352745, 46.122257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.119164, 33.583511, 46.081520>,  <37.205563, 33.968121, 46.013622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.119164, 33.583511, 46.081520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294687, 0.229941, 0.927517,
		-0.930862, 0.150322, -0.333016,
		-0.216000, -0.961525, 0.169746,
		37.054363, 33.295055, 46.132442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.504974, 33.994740, 46.290104>,  <37.205563, 33.968121, 46.013622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.504974, 33.994740, 46.290104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.723244, 33.678097, 46.400089>,  <36.854206, 33.488113, 46.466080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.723244, 33.678097, 46.400089>,  <36.504974, 33.994740, 46.290104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.723244, 33.678097, 46.400089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277863, 0.138634, 0.950564,
		-0.790590, -0.595099, -0.144309,
		0.545674, -0.791605, 0.274959,
		36.886948, 33.440617, 46.482578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.063580, 33.660400, 46.744831>,  <36.504974, 33.994740, 46.290104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.063580, 33.660400, 46.744831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.409683, 33.493572, 46.856102>,  <36.617344, 33.393475, 46.922863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.409683, 33.493572, 46.856102>,  <36.063580, 33.660400, 46.744831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.409683, 33.493572, 46.856102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275076, 0.068923, 0.958949,
		-0.419119, -0.906258, -0.055089,
		0.865258, -0.417067, 0.278177,
		36.669262, 33.368450, 46.939556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.876171, 33.219452, 47.325546>,  <36.063580, 33.660400, 46.744831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.876171, 33.219452, 47.325546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.272732, 33.271122, 47.333942>,  <36.510666, 33.302124, 47.338982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.272732, 33.271122, 47.333942>,  <35.876171, 33.219452, 47.325546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.272732, 33.271122, 47.333942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027583, 0.049456, 0.998395,
		0.127930, -0.990388, 0.052594,
		0.991399, 0.129175, 0.020991,
		36.570152, 33.309872, 47.340240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.129532, 32.773823, 47.864025>,  <35.876171, 33.219452, 47.325546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.129532, 32.773823, 47.864025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.447800, 33.011429, 47.816608>,  <36.638760, 33.153992, 47.788158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.447800, 33.011429, 47.816608>,  <36.129532, 32.773823, 47.864025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.447800, 33.011429, 47.816608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088195, 0.080002, 0.992885,
		0.599276, -0.800463, 0.011266,
		0.795670, 0.594018, -0.118540,
		36.686501, 33.189636, 47.781048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.722816, 32.472401, 48.116753>,  <36.129532, 32.773823, 47.864025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.722816, 32.472401, 48.116753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.796169, 32.865063, 48.137623>,  <36.840183, 33.100658, 48.150143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.796169, 32.865063, 48.137623>,  <36.722816, 32.472401, 48.116753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.796169, 32.865063, 48.137623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301884, -0.106745, 0.947350,
		0.935541, -0.157979, -0.315921,
		0.183384, 0.981656, 0.052173,
		36.851185, 33.159561, 48.153275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.209782, 32.492184, 48.620544>,  <36.722816, 32.472401, 48.116753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.209782, 32.492184, 48.620544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.137634, 32.884457, 48.590279>,  <37.094345, 33.119820, 48.572117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.137634, 32.884457, 48.590279>,  <37.209782, 32.492184, 48.620544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.137634, 32.884457, 48.590279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535762, 0.162471, 0.828591,
		0.824880, 0.108911, -0.554718,
		-0.180368, 0.980684, -0.075669,
		37.083523, 33.178661, 48.567577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.878445, 32.863842, 48.774479>,  <37.209782, 32.492184, 48.620544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.878445, 32.863842, 48.774479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.552475, 33.091564, 48.817917>,  <37.356895, 33.228199, 48.843979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.552475, 33.091564, 48.817917>,  <37.878445, 32.863842, 48.774479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.552475, 33.091564, 48.817917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282596, 0.226728, 0.932059,
		0.506008, 0.790242, -0.345650,
		-0.814921, 0.569308, 0.108593,
		37.307999, 33.262356, 48.850494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.113773, 33.443863, 49.087078>,  <37.878445, 32.863842, 48.774479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.113773, 33.443863, 49.087078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.724480, 33.462788, 49.177044>,  <37.490906, 33.474144, 49.231022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.724480, 33.462788, 49.177044>,  <38.113773, 33.443863, 49.087078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.724480, 33.462788, 49.177044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227656, 0.332833, 0.915093,
		-0.031563, 0.941798, -0.334694,
		-0.973230, 0.047312, 0.224911,
		37.432510, 33.476982, 49.244518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.110844, 33.907276, 49.618839>,  <38.113773, 33.443863, 49.087078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.110844, 33.907276, 49.618839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.734390, 33.777287, 49.656063>,  <37.508518, 33.699291, 49.678398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.734390, 33.777287, 49.656063>,  <38.110844, 33.907276, 49.618839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.734390, 33.777287, 49.656063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056628, 0.422969, 0.904373,
		-0.333263, 0.845864, -0.416472,
		-0.941132, -0.324978, 0.093060,
		37.452049, 33.679794, 49.683983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.638298, 34.447678, 49.906956>,  <38.110844, 33.907276, 49.618839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.638298, 34.447678, 49.906956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.490459, 34.087124, 49.997196>,  <37.401756, 33.870792, 50.051342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.490459, 34.087124, 49.997196>,  <37.638298, 34.447678, 49.906956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.490459, 34.087124, 49.997196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077669, 0.271916, 0.959181,
		-0.925941, 0.336986, -0.170509,
		-0.369595, -0.901389, 0.225605,
		37.379581, 33.816708, 50.064877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.388271, 34.891407, 50.529034>,  <37.638298, 34.447678, 49.906956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.388271, 34.891407, 50.529034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.660717, 35.143440, 50.678207>,  <37.824184, 35.294659, 50.767712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.660717, 35.143440, 50.678207>,  <37.388271, 34.891407, 50.529034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.660717, 35.143440, 50.678207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300850, 0.223525, -0.927106,
		-0.667511, 0.743665, -0.037313,
		0.681116, 0.630079, 0.372937,
		37.865051, 35.332462, 50.790089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.274670, 35.417225, 50.076099>,  <37.388271, 34.891407, 50.529034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.274670, 35.417225, 50.076099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.630939, 35.473362, 50.249073>,  <37.844700, 35.507046, 50.352859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.630939, 35.473362, 50.249073>,  <37.274670, 35.417225, 50.076099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.630939, 35.473362, 50.249073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370632, 0.326736, -0.869411,
		-0.263308, 0.934638, 0.239000,
		0.890675, 0.140342, 0.432439,
		37.898140, 35.515465, 50.378803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.413425, 36.086761, 49.920868>,  <37.274670, 35.417225, 50.076099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.413425, 36.086761, 49.920868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.761269, 35.912094, 50.013039>,  <37.969975, 35.807293, 50.068340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.761269, 35.912094, 50.013039>,  <37.413425, 36.086761, 49.920868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.761269, 35.912094, 50.013039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431795, 0.446285, -0.783826,
		0.239440, 0.781119, 0.576647,
		0.869610, -0.436672, 0.230425,
		38.022152, 35.781094, 50.082165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.990875, 36.562195, 49.659592>,  <37.413425, 36.086761, 49.920868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.990875, 36.562195, 49.659592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.139557, 36.194607, 49.712234>,  <38.228767, 35.974052, 49.743820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.139557, 36.194607, 49.712234>,  <37.990875, 36.562195, 49.659592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.139557, 36.194607, 49.712234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574457, 0.116318, -0.810228,
		0.729270, 0.376771, 0.571147,
		0.371705, -0.918974, 0.131612,
		38.251068, 35.918915, 49.751717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.813236, 36.690510, 49.643940>,  <37.990875, 36.562195, 49.659592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.813236, 36.690510, 49.643940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.662128, 36.330547, 49.556793>,  <38.571465, 36.114571, 49.504505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.662128, 36.330547, 49.556793>,  <38.813236, 36.690510, 49.643940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.662128, 36.330547, 49.556793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272042, 0.117042, -0.955141,
		0.885034, -0.420090, 0.200597,
		-0.377767, -0.899903, -0.217868,
		38.548798, 36.060577, 49.491432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.254086, 36.445477, 49.094521>,  <38.813236, 36.690510, 49.643940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.254086, 36.445477, 49.094521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.922356, 36.221977, 49.095913>,  <38.723316, 36.087879, 49.096748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.922356, 36.221977, 49.095913>,  <39.254086, 36.445477, 49.094521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.922356, 36.221977, 49.095913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099183, -0.153344, -0.983183,
		0.549887, -0.815037, 0.182591,
		-0.829329, -0.558750, 0.003484,
		38.673557, 36.054352, 49.096958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.510921, 35.838200, 48.650986>,  <39.254086, 36.445477, 49.094521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.510921, 35.838200, 48.650986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.110996, 35.830544, 48.650539>,  <38.871040, 35.825951, 48.650272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.110996, 35.830544, 48.650539>,  <39.510921, 35.838200, 48.650986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.110996, 35.830544, 48.650539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006699, -0.294250, -0.955705,
		0.017962, -0.955537, 0.294324,
		-0.999816, -0.019139, -0.001116,
		38.811050, 35.824802, 48.650204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.293369, 35.230656, 48.221867>,  <39.510921, 35.838200, 48.650986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.293369, 35.230656, 48.221867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.955341, 35.439724, 48.266880>,  <38.752525, 35.565166, 48.293888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.955341, 35.439724, 48.266880>,  <39.293369, 35.230656, 48.221867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.955341, 35.439724, 48.266880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264600, -0.225964, -0.937511,
		-0.464585, -0.822042, 0.329256,
		-0.845073, 0.522674, 0.112533,
		38.701820, 35.596527, 48.300640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.722790, 34.847034, 47.977753>,  <39.293369, 35.230656, 48.221867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.722790, 34.847034, 47.977753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.605885, 35.227940, 47.942467>,  <38.535740, 35.456482, 47.921295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.605885, 35.227940, 47.942467>,  <38.722790, 34.847034, 47.977753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.605885, 35.227940, 47.942467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206610, -0.152939, -0.966397,
		-0.933753, -0.264217, 0.241445,
		-0.292264, 0.952260, -0.088218,
		38.518204, 35.513618, 47.916000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.129498, 34.845272, 47.586361>,  <38.722790, 34.847034, 47.977753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.129498, 34.845272, 47.586361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.239937, 35.227249, 47.542801>,  <38.306202, 35.456436, 47.516666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.239937, 35.227249, 47.542801>,  <38.129498, 34.845272, 47.586361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.239937, 35.227249, 47.542801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421836, 0.018595, -0.906481,
		-0.863611, 0.296215, 0.407963,
		0.276100, 0.954940, -0.108896,
		38.322765, 35.513733, 47.510132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.517757, 35.208790, 47.305691>,  <38.129498, 34.845272, 47.586361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.517757, 35.208790, 47.305691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.856030, 35.401764, 47.214409>,  <38.058994, 35.517548, 47.159641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.856030, 35.401764, 47.214409>,  <37.517757, 35.208790, 47.305691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.856030, 35.401764, 47.214409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302549, 0.081138, -0.949674,
		-0.439640, 0.872166, 0.214577,
		0.845683, 0.482435, -0.228201,
		38.109734, 35.546494, 47.145950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.300098, 35.691895, 46.804230>,  <37.517757, 35.208790, 47.305691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.300098, 35.691895, 46.804230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.696999, 35.655704, 46.770172>,  <37.935139, 35.633991, 46.749737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.696999, 35.655704, 46.770172>,  <37.300098, 35.691895, 46.804230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.696999, 35.655704, 46.770172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069227, 0.166448, -0.983617,
		0.103164, 0.981891, 0.158895,
		0.992252, -0.090474, -0.085145,
		37.994675, 35.628563, 46.744629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.479626, 36.284870, 46.391655>,  <37.300098, 35.691895, 46.804230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.479626, 36.284870, 46.391655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.751602, 35.995705, 46.342556>,  <37.914787, 35.822205, 46.313095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.751602, 35.995705, 46.342556>,  <37.479626, 36.284870, 46.391655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751602, 35.995705, 46.342556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083167, 0.090286, -0.992437,
		0.728532, 0.685011, 0.001266,
		0.679944, -0.722917, -0.122747,
		37.955585, 35.778828, 46.305733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023251, 36.524887, 45.890343>,  <37.479626, 36.284870, 46.391655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.023251, 36.524887, 45.890343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.031925, 36.124989, 45.892498>,  <38.037128, 35.885048, 45.893791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.031925, 36.124989, 45.892498>,  <38.023251, 36.524887, 45.890343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.031925, 36.124989, 45.892498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082716, -0.003573, -0.996567,
		0.996337, 0.022055, 0.082618,
		0.021684, -0.999750, 0.005384,
		38.038429, 35.825062, 45.894112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.166302, 36.414379, 45.258324>,  <38.023251, 36.524887, 45.890343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.166302, 36.414379, 45.258324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.130383, 36.022762, 45.331444>,  <38.108829, 35.787792, 45.375317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.130383, 36.022762, 45.331444>,  <38.166302, 36.414379, 45.258324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.130383, 36.022762, 45.331444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048025, -0.187581, -0.981074,
		0.994801, -0.079323, 0.063863,
		-0.089801, -0.979041, 0.182797,
		38.103443, 35.729050, 45.386284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.696598, 36.096607, 44.998810>,  <38.166302, 36.414379, 45.258324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.696598, 36.096607, 44.998810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.450626, 35.781464, 45.012329>,  <38.303043, 35.592377, 45.020439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.450626, 35.781464, 45.012329>,  <38.696598, 36.096607, 44.998810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.450626, 35.781464, 45.012329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226004, -0.217137, -0.949618,
		0.755502, -0.576309, 0.311583,
		-0.614930, -0.787857, 0.033800,
		38.266148, 35.545105, 45.022469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.084152, 35.393871, 44.880936>,  <38.696598, 36.096607, 44.998810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.084152, 35.393871, 44.880936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.694508, 35.366661, 44.794697>,  <38.460720, 35.350334, 44.742954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.694508, 35.366661, 44.794697>,  <39.084152, 35.393871, 44.880936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.694508, 35.366661, 44.794697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225345, -0.215811, -0.950076,
		0.018102, -0.974063, 0.225553,
		-0.974110, -0.068026, -0.215594,
		38.402275, 35.346252, 44.730019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.044006, 34.954109, 44.422215>,  <39.084152, 35.393871, 44.880936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.044006, 34.954109, 44.422215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.712826, 35.172882, 44.372639>,  <38.514118, 35.304146, 44.342892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.712826, 35.172882, 44.372639>,  <39.044006, 34.954109, 44.422215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.712826, 35.172882, 44.372639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107047, -0.062806, -0.992268,
		-0.550490, -0.834816, -0.006547,
		-0.827950, 0.546935, -0.123939,
		38.464439, 35.336964, 44.335457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.866547, 34.670265, 43.795235>,  <39.044006, 34.954109, 44.422215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.866547, 34.670265, 43.795235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.648525, 35.000694, 43.852524>,  <38.517712, 35.198952, 43.886898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.648525, 35.000694, 43.852524>,  <38.866547, 34.670265, 43.795235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.648525, 35.000694, 43.852524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016895, 0.181619, -0.983224,
		-0.838228, -0.533494, -0.112949,
		-0.545057, 0.826074, 0.143224,
		38.485008, 35.248516, 43.895493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.438660, 34.541229, 43.277992>,  <38.866547, 34.670265, 43.795235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.438660, 34.541229, 43.277992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.414234, 34.935966, 43.337883>,  <38.399578, 35.172810, 43.373817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.414234, 34.935966, 43.337883>,  <38.438660, 34.541229, 43.277992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.414234, 34.935966, 43.337883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148818, 0.139327, -0.979000,
		-0.986977, -0.082067, 0.138351,
		-0.061067, 0.986840, 0.149726,
		38.395912, 35.232018, 43.382801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.838608, 34.853107, 42.871109>,  <38.438660, 34.541229, 43.277992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.838608, 34.853107, 42.871109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.071880, 35.167793, 42.952080>,  <38.211845, 35.356606, 43.000664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.071880, 35.167793, 42.952080>,  <37.838608, 34.853107, 42.871109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.071880, 35.167793, 42.952080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009413, 0.255717, -0.966706,
		-0.812288, 0.561859, 0.156534,
		0.583181, 0.786717, 0.202427,
		38.246834, 35.403809, 43.012810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.522923, 35.506310, 42.537964>,  <37.838608, 34.853107, 42.871109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.522923, 35.506310, 42.537964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.910206, 35.597328, 42.579540>,  <38.142574, 35.651939, 42.604488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.910206, 35.597328, 42.579540>,  <37.522923, 35.506310, 42.537964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.910206, 35.597328, 42.579540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068225, 0.159572, -0.984826,
		-0.240676, 0.960605, 0.138974,
		0.968205, 0.227542, 0.103943,
		38.200668, 35.665592, 42.610722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.665730, 36.023445, 42.037701>,  <37.522923, 35.506310, 42.537964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.665730, 36.023445, 42.037701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.036430, 35.895126, 42.115891>,  <38.258850, 35.818134, 42.162804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.036430, 35.895126, 42.115891>,  <37.665730, 36.023445, 42.037701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.036430, 35.895126, 42.115891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275215, 0.225626, -0.934532,
		0.255695, 0.919880, 0.297390,
		0.926756, -0.320802, 0.195474,
		38.314457, 35.798885, 42.174534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.125675, 36.541275, 41.774384>,  <37.665730, 36.023445, 42.037701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.125675, 36.541275, 41.774384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.358994, 36.219742, 41.821083>,  <38.498985, 36.026821, 41.849102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.358994, 36.219742, 41.821083>,  <38.125675, 36.541275, 41.774384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.358994, 36.219742, 41.821083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333250, 0.105744, -0.936890,
		0.740753, 0.585387, 0.329555,
		0.583292, -0.803829, 0.116750,
		38.533981, 35.978592, 41.856110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.897491, 36.713005, 41.616039>,  <38.125675, 36.541275, 41.774384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.897491, 36.713005, 41.616039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.837524, 36.320778, 41.565422>,  <38.801544, 36.085442, 41.535053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.837524, 36.320778, 41.565422>,  <38.897491, 36.713005, 41.616039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.837524, 36.320778, 41.565422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316237, 0.073710, -0.945813,
		0.936760, -0.181810, 0.299041,
		-0.149916, -0.980567, -0.126544,
		38.792549, 36.026608, 41.527458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.477188, 36.472031, 41.410984>,  <38.897491, 36.713005, 41.616039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.477188, 36.472031, 41.410984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.232292, 36.170086, 41.316879>,  <39.085354, 35.988918, 41.260418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.232292, 36.170086, 41.316879>,  <39.477188, 36.472031, 41.410984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.232292, 36.170086, 41.316879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500120, -0.139254, -0.854686,
		0.612409, -0.640930, 0.462778,
		-0.612238, -0.754862, -0.235261,
		39.048622, 35.943626, 41.246300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.954967, 35.933113, 41.114464>,  <39.477188, 36.472031, 41.410984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.954967, 35.933113, 41.114464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.593254, 35.815197, 40.990936>,  <39.376225, 35.744446, 40.916821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.593254, 35.815197, 40.990936>,  <39.954967, 35.933113, 41.114464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.593254, 35.815197, 40.990936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382018, -0.235773, -0.893573,
		0.190607, -0.926018, 0.325822,
		-0.904285, -0.294791, -0.308815,
		39.321968, 35.726761, 40.898293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.029442, 35.346485, 40.757111>,  <39.954967, 35.933113, 41.114464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.029442, 35.346485, 40.757111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.678001, 35.453175, 40.598660>,  <39.467136, 35.517189, 40.503590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.678001, 35.453175, 40.598660>,  <40.029442, 35.346485, 40.757111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.678001, 35.453175, 40.598660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343558, -0.223138, -0.912238,
		-0.331708, -0.937586, 0.104414,
		-0.878601, 0.266724, -0.396131,
		39.414421, 35.533192, 40.479820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.954124, 34.925934, 40.238480>,  <40.029442, 35.346485, 40.757111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.954124, 34.925934, 40.238480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.700111, 35.222210, 40.150742>,  <39.547703, 35.399975, 40.098099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.700111, 35.222210, 40.150742>,  <39.954124, 34.925934, 40.238480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.700111, 35.222210, 40.150742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216089, -0.102282, -0.971001,
		-0.741645, -0.664017, -0.095102,
		-0.635034, 0.740689, -0.219344,
		39.509602, 35.444416, 40.084938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.565464, 34.720901, 39.607101>,  <39.954124, 34.925934, 40.238480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.565464, 34.720901, 39.607101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.523716, 35.118599, 39.616814>,  <39.498669, 35.357216, 39.622639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.523716, 35.118599, 39.616814>,  <39.565464, 34.720901, 39.607101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.523716, 35.118599, 39.616814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105258, 0.035318, -0.993818,
		-0.988953, -0.101169, -0.108338,
		-0.104370, 0.994242, 0.024279,
		39.492405, 35.416870, 39.624096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.255951, 34.858818, 38.901340>,  <39.565464, 34.720901, 39.607101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.255951, 34.858818, 38.901340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.416176, 35.194424, 39.048645>,  <39.512310, 35.395786, 39.137028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.416176, 35.194424, 39.048645>,  <39.255951, 34.858818, 38.901340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.416176, 35.194424, 39.048645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167718, 0.327980, -0.929677,
		-0.900789, 0.434156, -0.009341,
		0.400562, 0.839010, 0.368257,
		39.536343, 35.446125, 39.159122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.053204, 35.329632, 38.361710>,  <39.255951, 34.858818, 38.901340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.053204, 35.329632, 38.361710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.346840, 35.505428, 38.568768>,  <39.523022, 35.610909, 38.693001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.346840, 35.505428, 38.568768>,  <39.053204, 35.329632, 38.361710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.346840, 35.505428, 38.568768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289651, 0.486814, -0.824084,
		-0.614175, 0.754889, 0.230066,
		0.734092, 0.439493, 0.517644,
		39.567066, 35.637276, 38.724060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.062115, 36.050701, 38.142109>,  <39.053204, 35.329632, 38.361710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.062115, 36.050701, 38.142109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.422398, 35.979748, 38.300732>,  <39.638569, 35.937176, 38.395905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.422398, 35.979748, 38.300732>,  <39.062115, 36.050701, 38.142109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.422398, 35.979748, 38.300732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431344, 0.473694, -0.767826,
		-0.051647, 0.862640, 0.503174,
		0.900708, -0.177385, 0.396559,
		39.692612, 35.926533, 38.419701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.523842, 36.648216, 37.881805>,  <39.062115, 36.050701, 38.142109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.523842, 36.648216, 37.881805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.801559, 36.410549, 38.044247>,  <39.968189, 36.267948, 38.141712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.801559, 36.410549, 38.044247>,  <39.523842, 36.648216, 37.881805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.801559, 36.410549, 38.044247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674017, 0.339014, -0.656332,
		0.252295, 0.729409, 0.635853,
		0.694297, -0.594165, 0.406103,
		40.009850, 36.232300, 38.166077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.023949, 37.103508, 38.166809>,  <39.523842, 36.648216, 37.881805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.023949, 37.103508, 38.166809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.204655, 36.756004, 38.085644>,  <40.313076, 36.547501, 38.036945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.204655, 36.756004, 38.085644>,  <40.023949, 37.103508, 38.166809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.204655, 36.756004, 38.085644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686500, 0.483773, -0.542845,
		0.569763, 0.105939, 0.814952,
		0.451761, -0.868758, -0.202909,
		40.340183, 36.495377, 38.024773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.785538, 37.121288, 38.168995>,  <40.023949, 37.103508, 38.166809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.785538, 37.121288, 38.168995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.742619, 36.794930, 37.941730>,  <40.716866, 36.599113, 37.805370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.742619, 36.794930, 37.941730>,  <40.785538, 37.121288, 38.168995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.742619, 36.794930, 37.941730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708950, 0.337862, -0.619063,
		0.697049, -0.469221, 0.542176,
		-0.107297, -0.815893, -0.568160,
		40.710430, 36.550163, 37.771282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.410786, 36.935986, 38.013172>,  <40.785538, 37.121288, 38.168995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.410786, 36.935986, 38.013172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.207157, 36.771736, 37.710587>,  <41.084980, 36.673187, 37.529037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.207157, 36.771736, 37.710587>,  <41.410786, 36.935986, 38.013172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.207157, 36.771736, 37.710587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607607, 0.451049, -0.653735,
		0.609643, -0.792427, 0.019885,
		-0.509068, -0.410627, -0.756462,
		41.054436, 36.648548, 37.483646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.865059, 36.490620, 37.649990>,  <41.410786, 36.935986, 38.013172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.865059, 36.490620, 37.649990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.569939, 36.613079, 37.409348>,  <41.392868, 36.686554, 37.264961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.569939, 36.613079, 37.409348>,  <41.865059, 36.490620, 37.649990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.569939, 36.613079, 37.409348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667241, 0.465709, -0.581296,
		0.102206, -0.830292, -0.547876,
		-0.737797, 0.306153, -0.601603,
		41.348598, 36.704926, 37.228867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.085148, 36.366920, 36.915615>,  <41.865059, 36.490620, 37.649990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.085148, 36.366920, 36.915615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.773865, 36.610100, 36.852627>,  <41.587093, 36.756004, 36.814835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.773865, 36.610100, 36.852627>,  <42.085148, 36.366920, 36.915615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.773865, 36.610100, 36.852627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483722, 0.420354, -0.767669,
		-0.400507, -0.673578, -0.621198,
		-0.778208, 0.607944, -0.157470,
		41.540401, 36.792484, 36.805386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.878525, 36.328529, 36.208141>,  <42.085148, 36.366920, 36.915615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.878525, 36.328529, 36.208141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.773098, 36.686642, 36.351810>,  <41.709843, 36.901508, 36.438011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.773098, 36.686642, 36.351810>,  <41.878525, 36.328529, 36.208141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.773098, 36.686642, 36.351810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535680, 0.445488, -0.717348,
		-0.802234, 0.003333, -0.597000,
		-0.263566, 0.895282, 0.359171,
		41.694027, 36.955227, 36.459560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.526081, 36.756836, 35.651546>,  <41.878525, 36.328529, 36.208141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.526081, 36.756836, 35.651546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.719109, 36.946266, 35.946262>,  <41.834923, 37.059925, 36.123093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.719109, 36.946266, 35.946262>,  <41.526081, 36.756836, 35.651546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.719109, 36.946266, 35.946262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663374, 0.351658, -0.660509,
		-0.571896, 0.807507, -0.144456,
		0.482567, 0.473571, 0.736791,
		41.863880, 37.088337, 36.167301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.697475, 37.395294, 35.456440>,  <41.526081, 36.756836, 35.651546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.697475, 37.395294, 35.456440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.958595, 37.265823, 35.730400>,  <42.115265, 37.188141, 35.894775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.958595, 37.265823, 35.730400>,  <41.697475, 37.395294, 35.456440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.958595, 37.265823, 35.730400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747081, 0.125406, -0.652796,
		0.125406, 0.937819, 0.323680,
		0.652796, -0.323680, 0.684900,
		42.154434, 37.168720, 35.935871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.403008, 37.894279, 35.599434>,  <41.697475, 37.395294, 35.456440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.403008, 37.894279, 35.599434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.422112, 37.494797, 35.606388>,  <42.433575, 37.255108, 35.610561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.422112, 37.494797, 35.606388>,  <42.403008, 37.894279, 35.599434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.422112, 37.494797, 35.606388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510080, 0.009424, -0.860076,
		0.858800, 0.049949, 0.509870,
		0.047765, -0.998707, 0.017384,
		42.436440, 37.195183, 35.611603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.022373, 37.811852, 35.457626>,  <42.403008, 37.894279, 35.599434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.022373, 37.811852, 35.457626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.818344, 37.481918, 35.360073>,  <42.695927, 37.283958, 35.301540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.818344, 37.481918, 35.360073>,  <43.022373, 37.811852, 35.457626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.818344, 37.481918, 35.360073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421953, 0.007118, -0.906590,
		0.749518, -0.565336, 0.344409,
		-0.510076, -0.824830, -0.243880,
		42.665321, 37.234470, 35.286907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.447849, 37.474567, 34.994877>,  <43.022373, 37.811852, 35.457626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.447849, 37.474567, 34.994877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.087654, 37.306282, 34.950832>,  <42.871536, 37.205311, 34.924408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.087654, 37.306282, 34.950832>,  <43.447849, 37.474567, 34.994877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.087654, 37.306282, 34.950832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216335, -0.213718, -0.952641,
		0.377253, -0.881662, 0.283464,
		-0.900489, -0.420710, -0.110108,
		42.817509, 37.180069, 34.917801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.559792, 37.122280, 34.301559>,  <43.447849, 37.474567, 34.994877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.559792, 37.122280, 34.301559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.170189, 37.129051, 34.391914>,  <42.936428, 37.133114, 34.446125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.170189, 37.129051, 34.391914>,  <43.559792, 37.122280, 34.301559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.170189, 37.129051, 34.391914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223989, -0.220589, -0.949299,
		0.033756, -0.975220, 0.218647,
		-0.974007, 0.016930, 0.225885,
		42.877987, 37.134129, 34.459679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.086880, 36.535057, 34.267654>,  <43.559792, 37.122280, 34.301559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.086880, 36.535057, 34.267654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.466316, 36.426071, 34.203232>,  <44.693977, 36.360680, 34.164577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.466316, 36.426071, 34.203232>,  <44.086880, 36.535057, 34.267654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.466316, 36.426071, 34.203232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229383, -0.241191, -0.942979,
		0.218085, 0.931444, -0.291291,
		0.948590, -0.272467, -0.161058,
		44.750893, 36.344330, 34.154915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.354141, 36.804379, 33.587223>,  <44.086880, 36.535057, 34.267654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.354141, 36.804379, 33.587223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.540634, 36.468590, 33.698875>,  <44.652531, 36.267117, 33.765869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.540634, 36.468590, 33.698875>,  <44.354141, 36.804379, 33.587223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.540634, 36.468590, 33.698875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162516, -0.391433, -0.905742,
		0.869604, 0.376927, -0.318927,
		0.466237, -0.839468, 0.279135,
		44.680504, 36.216751, 33.782616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.738571, 36.599873, 33.017334>,  <44.354141, 36.804379, 33.587223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.738571, 36.599873, 33.017334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.730419, 36.265442, 33.236629>,  <44.725529, 36.064785, 33.368206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.730419, 36.265442, 33.236629>,  <44.738571, 36.599873, 33.017334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.730419, 36.265442, 33.236629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208245, -0.532774, -0.820235,
		0.977864, -0.130885, -0.163250,
		-0.020381, -0.836075, 0.548237,
		44.724304, 36.014618, 33.401100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.213512, 36.137138, 32.744461>,  <44.738571, 36.599873, 33.017334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.213512, 36.137138, 32.744461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.941223, 35.911285, 32.931141>,  <44.777847, 35.775776, 33.043148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.941223, 35.911285, 32.931141>,  <45.213512, 36.137138, 32.744461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.941223, 35.911285, 32.931141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142906, -0.522495, -0.840581,
		0.718464, -0.638899, 0.274987,
		-0.680725, -0.564630, 0.466697,
		44.737007, 35.741898, 33.071152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.211208, 35.371845, 32.517452>,  <45.213512, 36.137138, 32.744461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.211208, 35.371845, 32.517452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.844971, 35.425873, 32.668953>,  <44.625229, 35.458290, 32.759853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.844971, 35.425873, 32.668953>,  <45.211208, 35.371845, 32.517452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.844971, 35.425873, 32.668953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400348, -0.394334, -0.827177,
		0.037626, -0.908987, 0.415124,
		-0.915591, 0.135071, 0.378748,
		44.570293, 35.466393, 32.782578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.992447, 34.779655, 32.264503>,  <45.211208, 35.371845, 32.517452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.992447, 34.779655, 32.264503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.670170, 34.987347, 32.378532>,  <44.476803, 35.111961, 32.446949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.670170, 34.987347, 32.378532>,  <44.992447, 34.779655, 32.264503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.670170, 34.987347, 32.378532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510569, -0.364762, -0.778632,
		-0.300303, -0.772885, 0.558987,
		-0.805690, 0.519227, 0.285072,
		44.428463, 35.143116, 32.464054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.476967, 34.340813, 32.357014>,  <44.992447, 34.779655, 32.264503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.476967, 34.340813, 32.357014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.284786, 34.686077, 32.294891>,  <44.169479, 34.893234, 32.257618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.284786, 34.686077, 32.294891>,  <44.476967, 34.340813, 32.357014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.284786, 34.686077, 32.294891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564970, -0.440058, -0.697967,
		-0.670802, -0.247595, 0.699087,
		-0.480452, 0.863160, -0.155308,
		44.140652, 34.945026, 32.248299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.871582, 34.130531, 32.169556>,  <44.476967, 34.340813, 32.357014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.871582, 34.130531, 32.169556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.816319, 34.514767, 32.073078>,  <43.783161, 34.745308, 32.015190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.816319, 34.514767, 32.073078>,  <43.871582, 34.130531, 32.169556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.816319, 34.514767, 32.073078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645684, -0.272026, -0.713508,
		-0.751002, 0.057157, 0.657822,
		-0.138162, 0.960591, -0.241197,
		43.774868, 34.802944, 32.000717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.108753, 34.294754, 32.252346>,  <43.871582, 34.130531, 32.169556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.108753, 34.294754, 32.252346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.307598, 34.539093, 32.005852>,  <43.426903, 34.685696, 31.857954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.307598, 34.539093, 32.005852>,  <43.108753, 34.294754, 32.252346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.307598, 34.539093, 32.005852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478066, -0.399870, -0.782021,
		-0.724109, 0.683353, 0.093245,
		0.497110, 0.610846, -0.616238,
		43.456730, 34.722347, 31.820980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.599995, 34.414429, 31.658337>,  <43.108753, 34.294754, 32.252346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.599995, 34.414429, 31.658337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.951836, 34.553146, 31.528088>,  <43.162941, 34.636379, 31.449938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.951836, 34.553146, 31.528088>,  <42.599995, 34.414429, 31.658337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.951836, 34.553146, 31.528088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177041, -0.396689, -0.900719,
		-0.441539, 0.849923, -0.287531,
		0.879602, 0.346798, -0.325625,
		43.215717, 34.657185, 31.430401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.500156, 34.567898, 30.971237>,  <42.599995, 34.414429, 31.658337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.500156, 34.567898, 30.971237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.895508, 34.517662, 31.005493>,  <43.132717, 34.487522, 31.026047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.895508, 34.517662, 31.005493>,  <42.500156, 34.567898, 30.971237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.895508, 34.517662, 31.005493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001329, -0.570498, -0.821298,
		0.152003, 0.811640, -0.564035,
		0.988379, -0.125589, 0.085639,
		43.192020, 34.479984, 31.031185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.744293, 34.640945, 30.240734>,  <42.500156, 34.567898, 30.971237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.744293, 34.640945, 30.240734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.029118, 34.450413, 30.447063>,  <43.200012, 34.336094, 30.570860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.029118, 34.450413, 30.447063>,  <42.744293, 34.640945, 30.240734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.029118, 34.450413, 30.447063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017385, -0.746404, -0.665266,
		0.701900, 0.464743, -0.539768,
		0.712063, -0.476334, 0.515822,
		43.242737, 34.307514, 30.601810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.213619, 34.394501, 29.756275>,  <42.744293, 34.640945, 30.240734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.213619, 34.394501, 29.756275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.252766, 34.164326, 30.081062>,  <43.276253, 34.026218, 30.275934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.252766, 34.164326, 30.081062>,  <43.213619, 34.394501, 29.756275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.252766, 34.164326, 30.081062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071755, -0.817841, -0.570953,
		0.992609, -0.002385, -0.121330,
		0.097867, -0.575439, 0.811968,
		43.282127, 33.991695, 30.324652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.787476, 33.993843, 29.652000>,  <43.213619, 34.394501, 29.756275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.787476, 33.993843, 29.652000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.564407, 33.800919, 29.922224>,  <43.430569, 33.685162, 30.084358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.564407, 33.800919, 29.922224>,  <43.787476, 33.993843, 29.652000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.564407, 33.800919, 29.922224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144792, -0.744864, -0.651316,
		0.817339, -0.461033, 0.345550,
		-0.557666, -0.482313, 0.675561,
		43.397106, 33.656223, 30.124893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.854015, 33.324261, 29.370523>,  <43.787476, 33.993843, 29.652000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.854015, 33.324261, 29.370523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.582184, 33.250195, 29.654463>,  <43.419083, 33.205753, 29.824827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.582184, 33.250195, 29.654463>,  <43.854015, 33.324261, 29.370523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.582184, 33.250195, 29.654463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161154, -0.906303, -0.390696,
		0.715681, -0.379904, 0.586066,
		-0.679580, -0.185166, 0.709848,
		43.378311, 33.194645, 29.867416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.072987, 32.701584, 29.788324>,  <43.854015, 33.324261, 29.370523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.072987, 32.701584, 29.788324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.681870, 32.736965, 29.864313>,  <43.447197, 32.758194, 29.909906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.681870, 32.736965, 29.864313>,  <44.072987, 32.701584, 29.788324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.681870, 32.736965, 29.864313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153368, -0.919828, -0.361102,
		0.142801, -0.382220, 0.912970,
		-0.977796, 0.088454, 0.189973,
		43.388531, 32.763500, 29.921305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.837563, 32.304901, 30.347420>,  <44.072987, 32.701584, 29.788324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.837563, 32.304901, 30.347420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.517735, 32.364594, 30.114721>,  <43.325840, 32.400410, 29.975103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.517735, 32.364594, 30.114721>,  <43.837563, 32.304901, 30.347420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.517735, 32.364594, 30.114721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164755, -0.985979, -0.026479,
		-0.577539, 0.074674, 0.812941,
		-0.799565, 0.149229, -0.581744,
		43.277866, 32.409363, 29.940199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.256195, 31.938395, 30.685558>,  <43.837563, 32.304901, 30.347420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.256195, 31.938395, 30.685558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.157745, 32.004921, 30.303614>,  <43.098675, 32.044838, 30.074448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.157745, 32.004921, 30.303614>,  <43.256195, 31.938395, 30.685558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.157745, 32.004921, 30.303614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296142, -0.950960, -0.089302,
		-0.922888, 0.260795, 0.283310,
		-0.246127, 0.166316, -0.954861,
		43.083908, 32.054817, 30.017155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.599674, 31.696430, 30.656460>,  <43.256195, 31.938395, 30.685558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.599674, 31.696430, 30.656460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.716827, 31.687899, 30.274096>,  <42.787121, 31.682779, 30.044678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.716827, 31.687899, 30.274096>,  <42.599674, 31.696430, 30.656460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.716827, 31.687899, 30.274096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402130, -0.909781, -0.102911,
		-0.867475, 0.414541, -0.275034,
		0.292881, -0.021327, -0.955911,
		42.804691, 31.681501, 29.987322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.969585, 31.407225, 30.265610>,  <42.599674, 31.696430, 30.656460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.969585, 31.407225, 30.265610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.303642, 31.353304, 30.052305>,  <42.504078, 31.320951, 29.924322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.303642, 31.353304, 30.052305>,  <41.969585, 31.407225, 30.265610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.303642, 31.353304, 30.052305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289968, -0.931739, -0.218589,
		-0.467395, 0.337181, -0.817221,
		0.835141, -0.134800, -0.533262,
		42.554184, 31.312864, 29.892326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.785748, 30.944050, 29.674402>,  <41.969585, 31.407225, 30.265610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.785748, 30.944050, 29.674402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.184231, 30.909800, 29.680611>,  <42.423321, 30.889250, 29.684336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.184231, 30.909800, 29.680611>,  <41.785748, 30.944050, 29.674402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.184231, 30.909800, 29.680611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083426, -0.990482, -0.109475,
		0.024747, 0.107765, -0.993868,
		0.996207, -0.085623, 0.015521,
		42.483093, 30.884113, 29.685266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.056831, 30.615726, 29.015432>,  <41.785748, 30.944050, 29.674402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.056831, 30.615726, 29.015432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.270241, 30.558163, 29.348814>,  <42.398285, 30.523624, 29.548843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.270241, 30.558163, 29.348814>,  <42.056831, 30.615726, 29.015432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.270241, 30.558163, 29.348814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249427, -0.968364, -0.007540,
		0.808173, -0.203863, -0.552537,
		0.533520, -0.143912, 0.833455,
		42.430298, 30.514990, 29.598850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.563141, 30.119854, 28.892611>,  <42.056831, 30.615726, 29.015432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.563141, 30.119854, 28.892611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.469616, 30.113939, 29.281479>,  <42.413502, 30.110390, 29.514799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.469616, 30.113939, 29.281479>,  <42.563141, 30.119854, 28.892611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.469616, 30.113939, 29.281479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308213, -0.947189, -0.088535,
		0.922137, -0.320335, 0.216908,
		-0.233814, -0.014788, 0.972169,
		42.399471, 30.109503, 29.573130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.951462, 29.559896, 29.264475>,  <42.563141, 30.119854, 28.892611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.951462, 29.559896, 29.264475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.621376, 29.663338, 29.465330>,  <42.423325, 29.725403, 29.585844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.621376, 29.663338, 29.465330>,  <42.951462, 29.559896, 29.264475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.621376, 29.663338, 29.465330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276492, -0.960179, 0.040106,
		0.492515, -0.105742, 0.863856,
		-0.825216, 0.258602, 0.502140,
		42.373810, 29.740919, 29.615973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.888348, 29.010708, 29.591026>,  <42.951462, 29.559896, 29.264475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.888348, 29.010708, 29.591026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.549782, 29.196589, 29.695053>,  <42.346642, 29.308117, 29.757469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.549782, 29.196589, 29.695053>,  <42.888348, 29.010708, 29.591026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.549782, 29.196589, 29.695053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388702, -0.872943, 0.294755,
		0.363997, 0.148397, 0.919503,
		-0.846414, 0.464703, 0.260066,
		42.295856, 29.335999, 29.773073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.584229, 28.791828, 30.140984>,  <42.888348, 29.010708, 29.591026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.584229, 28.791828, 30.140984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.246590, 28.909908, 29.961939>,  <42.044006, 28.980757, 29.854513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.246590, 28.909908, 29.961939>,  <42.584229, 28.791828, 30.140984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.246590, 28.909908, 29.961939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329686, -0.944090, -0.000915,
		-0.422855, 0.146798, 0.894228,
		-0.844098, 0.295201, -0.447611,
		41.993359, 28.998468, 29.827656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.981380, 28.740889, 30.445360>,  <42.584229, 28.791828, 30.140984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.981380, 28.740889, 30.445360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.004223, 28.613844, 30.066761>,  <42.017929, 28.537617, 29.839602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.004223, 28.613844, 30.066761>,  <41.981380, 28.740889, 30.445360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.004223, 28.613844, 30.066761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126289, -0.942730, 0.308727,
		-0.990349, 0.101904, -0.093942,
		0.057101, -0.317611, -0.946500,
		42.021355, 28.518560, 29.782810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.451126, 28.168690, 30.351196>,  <41.981380, 28.740889, 30.445360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.451126, 28.168690, 30.351196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.816341, 28.117741, 30.196205>,  <42.035469, 28.087172, 30.103210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.816341, 28.117741, 30.196205>,  <41.451126, 28.168690, 30.351196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.816341, 28.117741, 30.196205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018218, -0.936306, 0.350712,
		-0.407471, -0.327272, -0.852561,
		0.913037, -0.127373, -0.387479,
		42.090252, 28.079529, 30.079962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.078743, 27.793329, 30.738701>,  <41.451126, 28.168690, 30.351196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.078743, 27.793329, 30.738701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.214874, 28.070234, 30.993242>,  <41.296555, 28.236378, 31.145967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.214874, 28.070234, 30.993242>,  <41.078743, 27.793329, 30.738701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.214874, 28.070234, 30.993242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.901466, 0.432701, 0.011392,
		-0.267465, -0.577529, 0.771312,
		0.340327, 0.692265, 0.636355,
		41.316971, 28.277914, 31.184149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.635212, 27.672836, 31.328587>,  <41.078743, 27.793329, 30.738701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.635212, 27.672836, 31.328587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.019997, 27.564003, 31.318735>,  <41.250866, 27.498703, 31.312824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.019997, 27.564003, 31.318735>,  <40.635212, 27.672836, 31.328587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.019997, 27.564003, 31.318735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233458, 0.771871, 0.591365,
		-0.141889, -0.574619, 0.806028,
		0.961959, -0.272082, -0.024629,
		41.308586, 27.482378, 31.311346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.837124, 27.572132, 31.972488>,  <40.635212, 27.672836, 31.328587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.837124, 27.572132, 31.972488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.161980, 27.675995, 31.763485>,  <41.356892, 27.738314, 31.638083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.161980, 27.675995, 31.763485>,  <40.837124, 27.572132, 31.972488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.161980, 27.675995, 31.763485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201924, 0.715102, 0.669220,
		0.547413, -0.649005, 0.528329,
		0.812137, 0.259657, -0.522506,
		41.405621, 27.753893, 31.606733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.464794, 27.629717, 32.432697>,  <40.837124, 27.572132, 31.972488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.464794, 27.629717, 32.432697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.479225, 27.864897, 32.109459>,  <41.487885, 28.006004, 31.915518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.479225, 27.864897, 32.109459>,  <41.464794, 27.629717, 32.432697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.479225, 27.864897, 32.109459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089191, 0.803497, 0.588590,
		0.995361, -0.093308, -0.023454,
		0.036075, 0.587951, -0.808092,
		41.490047, 28.041283, 31.867031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.029633, 28.063095, 32.473225>,  <41.464794, 27.629717, 32.432697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.029633, 28.063095, 32.473225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.778580, 28.260580, 32.232452>,  <41.627949, 28.379070, 32.087990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.778580, 28.260580, 32.232452>,  <42.029633, 28.063095, 32.473225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.778580, 28.260580, 32.232452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353560, 0.869618, 0.344615,
		0.693592, 0.003473, -0.720360,
		-0.627634, 0.493713, -0.601932,
		41.590290, 28.408693, 32.051872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.361763, 28.466444, 32.039242>,  <42.029633, 28.063095, 32.473225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.361763, 28.466444, 32.039242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.998734, 28.634235, 32.046741>,  <41.780914, 28.734909, 32.051243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.998734, 28.634235, 32.046741>,  <42.361763, 28.466444, 32.039242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.998734, 28.634235, 32.046741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385483, 0.814658, 0.433285,
		0.166479, 0.400465, -0.901062,
		-0.907572, 0.419477, 0.018749,
		41.726463, 28.760078, 32.052364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.402328, 29.179201, 31.601120>,  <42.361763, 28.466444, 32.039242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.402328, 29.179201, 31.601120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.096375, 29.177401, 31.858780>,  <41.912804, 29.176319, 32.013374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.096375, 29.177401, 31.858780>,  <42.402328, 29.179201, 31.601120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.096375, 29.177401, 31.858780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255660, 0.915724, 0.309980,
		-0.591260, 0.401783, -0.699273,
		-0.764885, -0.004503, 0.644151,
		41.866909, 29.176050, 32.052025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.084282, 29.879942, 31.475082>,  <42.402328, 29.179201, 31.601120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.084282, 29.879942, 31.475082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.973465, 29.753336, 31.837975>,  <41.906975, 29.677372, 32.055710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.973465, 29.753336, 31.837975>,  <42.084282, 29.879942, 31.475082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.973465, 29.753336, 31.837975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336956, 0.852224, 0.400219,
		-0.899839, 0.416573, -0.129448,
		-0.277039, -0.316515, 0.907231,
		41.890354, 29.658382, 32.110146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.849567, 30.500443, 31.787825>,  <42.084282, 29.879942, 31.475082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.849567, 30.500443, 31.787825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.901974, 30.276236, 32.114910>,  <41.933418, 30.141712, 32.311161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.901974, 30.276236, 32.114910>,  <41.849567, 30.500443, 31.787825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.901974, 30.276236, 32.114910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352566, 0.797246, 0.489996,
		-0.926570, 0.224100, 0.302072,
		0.131018, -0.560516, 0.817714,
		41.941280, 30.108080, 32.360226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.630333, 30.943506, 32.371315>,  <41.849567, 30.500443, 31.787825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.630333, 30.943506, 32.371315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.877617, 30.669540, 32.525566>,  <42.025990, 30.505161, 32.618114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.877617, 30.669540, 32.525566>,  <41.630333, 30.943506, 32.371315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.877617, 30.669540, 32.525566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489837, 0.719402, 0.492464,
		-0.614714, -0.115554, 0.780240,
		0.618212, -0.684915, 0.385623,
		42.063080, 30.464066, 32.641254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.725918, 31.250681, 33.009480>,  <41.630333, 30.943506, 32.371315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.725918, 31.250681, 33.009480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.015484, 30.976254, 32.980469>,  <42.189224, 30.811596, 32.963062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.015484, 30.976254, 32.980469>,  <41.725918, 31.250681, 33.009480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.015484, 30.976254, 32.980469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649335, 0.642066, 0.407573,
		-0.233057, -0.342141, 0.910288,
		0.723912, -0.686069, -0.072526,
		42.232658, 30.770433, 32.958710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.966293, 31.138498, 33.581833>,  <41.725918, 31.250681, 33.009480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.966293, 31.138498, 33.581833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.283371, 31.009899, 33.374653>,  <42.473618, 30.932739, 33.250343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.283371, 31.009899, 33.374653>,  <41.966293, 31.138498, 33.581833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.283371, 31.009899, 33.374653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578340, 0.665261, 0.472177,
		0.192770, -0.673845, 0.713283,
		0.792693, -0.321499, -0.517954,
		42.521179, 30.913450, 33.219265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.490826, 31.048769, 34.177223>,  <41.966293, 31.138498, 33.581833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.490826, 31.048769, 34.177223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.669018, 31.084311, 33.820873>,  <42.775932, 31.105637, 33.607063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.669018, 31.084311, 33.820873>,  <42.490826, 31.048769, 34.177223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.669018, 31.084311, 33.820873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692995, 0.595786, 0.405952,
		0.566841, -0.798213, 0.203832,
		0.445476, 0.088855, -0.890873,
		42.802662, 31.110968, 33.553612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.226391, 30.974468, 34.344833>,  <42.490826, 31.048769, 34.177223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.226391, 30.974468, 34.344833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.209343, 31.143585, 33.982742>,  <43.199112, 31.245054, 33.765488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.209343, 31.143585, 33.982742>,  <43.226391, 30.974468, 34.344833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.209343, 31.143585, 33.982742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764378, 0.597242, 0.242956,
		0.643357, -0.681579, -0.348628,
		-0.042621, 0.422792, -0.905224,
		43.196556, 31.270422, 33.711174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.913891, 30.845116, 33.924694>,  <43.226391, 30.974468, 34.344833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.913891, 30.845116, 33.924694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.693073, 31.173435, 33.865986>,  <43.560585, 31.370426, 33.830761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.693073, 31.173435, 33.865986>,  <43.913891, 30.845116, 33.924694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.693073, 31.173435, 33.865986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781302, 0.570677, 0.252776,
		0.291237, 0.024869, -0.956328,
		-0.552040, 0.820798, -0.146772,
		43.527462, 31.419674, 33.821953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.465179, 31.261549, 33.875717>,  <43.913891, 30.845116, 33.924694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.465179, 31.261549, 33.875717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.168877, 31.523649, 33.816494>,  <43.991096, 31.680910, 33.780960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.168877, 31.523649, 33.816494>,  <44.465179, 31.261549, 33.875717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.168877, 31.523649, 33.816494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635478, 0.754969, 0.161830,
		0.217822, 0.025788, -0.975648,
		-0.740757, 0.655253, -0.148061,
		43.946648, 31.720224, 33.772076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.619682, 31.781427, 33.403263>,  <44.465179, 31.261549, 33.875717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.619682, 31.781427, 33.403263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.350441, 31.954756, 33.642982>,  <44.188896, 32.058754, 33.786816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.350441, 31.954756, 33.642982>,  <44.619682, 31.781427, 33.403263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.350441, 31.954756, 33.642982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631011, 0.759129, 0.159838,
		-0.385683, 0.485751, -0.784407,
		-0.673108, 0.433322, 0.599297,
		44.148510, 32.084751, 33.822773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.659641, 32.531689, 33.194069>,  <44.619682, 31.781427, 33.403263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.659641, 32.531689, 33.194069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.469704, 32.478676, 33.542084>,  <44.355743, 32.446869, 33.750893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.469704, 32.478676, 33.542084>,  <44.659641, 32.531689, 33.194069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.469704, 32.478676, 33.542084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359009, 0.873429, 0.328988,
		-0.803517, 0.468568, -0.367158,
		-0.474840, -0.132535, 0.870035,
		44.327251, 32.438915, 33.803093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.349068, 33.168541, 33.319920>,  <44.659641, 32.531689, 33.194069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.349068, 33.168541, 33.319920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.369110, 32.991127, 33.677860>,  <44.381134, 32.884678, 33.892624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.369110, 32.991127, 33.677860>,  <44.349068, 33.168541, 33.319920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.369110, 32.991127, 33.677860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499648, 0.786932, 0.362063,
		-0.864778, 0.428971, 0.261042,
		0.050108, -0.443533, 0.894856,
		44.384144, 32.858067, 33.946316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.196785, 33.675529, 33.763699>,  <44.349068, 33.168541, 33.319920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.196785, 33.675529, 33.763699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.400734, 33.402248, 33.972801>,  <44.523102, 33.238281, 34.098263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.400734, 33.402248, 33.972801>,  <44.196785, 33.675529, 33.763699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.400734, 33.402248, 33.972801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521920, 0.728730, 0.443342,
		-0.683837, 0.046788, 0.728133,
		0.509870, -0.683200, 0.522753,
		44.553696, 33.197289, 34.129627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.252628, 34.000916, 34.363819>,  <44.196785, 33.675529, 33.763699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.252628, 34.000916, 34.363819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.536625, 33.720036, 34.385048>,  <44.707024, 33.551506, 34.397785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.536625, 33.720036, 34.385048>,  <44.252628, 34.000916, 34.363819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.536625, 33.720036, 34.385048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626197, 0.664029, 0.408585,
		-0.322153, -0.256859, 0.911176,
		0.709996, -0.702203, 0.053075,
		44.749622, 33.509377, 34.400970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.541245, 34.183430, 34.909615>,  <44.252628, 34.000916, 34.363819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.541245, 34.183430, 34.909615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.811794, 33.945312, 34.736115>,  <44.974125, 33.802441, 34.632015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.811794, 33.945312, 34.736115>,  <44.541245, 34.183430, 34.909615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.811794, 33.945312, 34.736115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736374, 0.559557, 0.380328,
		0.016301, -0.576648, 0.816830,
		0.676378, -0.595293, -0.433750,
		45.014709, 33.766724, 34.605991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.082031, 34.203659, 35.455795>,  <44.541245, 34.183430, 34.909615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.082031, 34.203659, 35.455795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.239784, 34.063663, 35.115921>,  <45.334438, 33.979668, 34.911995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.239784, 34.063663, 35.115921>,  <45.082031, 34.203659, 35.455795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.239784, 34.063663, 35.115921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859045, 0.468780, 0.205635,
		0.326346, -0.811020, 0.485536,
		0.394384, -0.349989, -0.849687,
		45.358101, 33.958668, 34.861015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.605625, 33.662460, 35.664364>,  <45.082031, 34.203659, 35.455795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.605625, 33.662460, 35.664364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.685925, 33.797321, 35.296444>,  <45.734104, 33.878239, 35.075691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.685925, 33.797321, 35.296444>,  <45.605625, 33.662460, 35.664364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.685925, 33.797321, 35.296444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872025, 0.366338, 0.324606,
		0.446399, -0.867250, -0.220466,
		0.200750, 0.337156, -0.919796,
		45.746151, 33.898468, 35.020504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.281006, 33.335167, 35.388760>,  <45.605625, 33.662460, 35.664364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.281006, 33.335167, 35.388760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.217186, 33.689617, 35.214714>,  <46.178894, 33.902287, 35.110287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.217186, 33.689617, 35.214714>,  <46.281006, 33.335167, 35.388760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.217186, 33.689617, 35.214714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939252, 0.271941, 0.209415,
		0.303894, -0.375272, -0.875682,
		-0.159546, 0.886126, -0.435116,
		46.169323, 33.955456, 35.084179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.825294, 33.491440, 34.952454>,  <46.281006, 33.335167, 35.388760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.825294, 33.491440, 34.952454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.679459, 33.863331, 34.973179>,  <46.591957, 34.086464, 34.985615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.679459, 33.863331, 34.973179>,  <46.825294, 33.491440, 34.952454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.679459, 33.863331, 34.973179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926495, 0.356633, 0.120082,
		0.093164, 0.091790, -0.991411,
		-0.364592, 0.929724, 0.051817,
		46.570080, 34.142250, 34.988724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.197643, 33.950611, 34.566162>,  <46.825294, 33.491440, 34.952454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.197643, 33.950611, 34.566162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.038437, 34.162601, 34.865685>,  <46.942913, 34.289795, 35.045399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.038437, 34.162601, 34.865685>,  <47.197643, 33.950611, 34.566162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.038437, 34.162601, 34.865685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843668, 0.532030, 0.071894,
		-0.360284, 0.660357, -0.658881,
		-0.398021, 0.529974, 0.748804,
		46.919029, 34.321594, 35.090324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.214680, 34.661724, 34.423916>,  <47.197643, 33.950611, 34.566162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.214680, 34.661724, 34.423916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.260925, 34.558678, 34.807640>,  <47.288673, 34.496849, 35.037872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.260925, 34.558678, 34.807640>,  <47.214680, 34.661724, 34.423916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.260925, 34.558678, 34.807640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840230, 0.540453, 0.043870,
		-0.529761, 0.800965, 0.278940,
		0.115616, -0.257614, 0.959306,
		47.295609, 34.481392, 35.095432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.427540, 35.259785, 34.664291>,  <47.214680, 34.661724, 34.423916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.427540, 35.259785, 34.664291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.559555, 34.959198, 34.892803>,  <47.638763, 34.778847, 35.029911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.559555, 34.959198, 34.892803>,  <47.427540, 35.259785, 34.664291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.559555, 34.959198, 34.892803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715213, 0.594042, 0.368218,
		-0.616072, 0.287063, 0.733519,
		0.330040, -0.751471, 0.571284,
		47.658566, 34.733757, 35.064190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.503006, 38.576176, 44.295227> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.272087, 38.250748, 44.323025>,  <36.133533, 38.055492, 44.339703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.272087, 38.250748, 44.323025>,  <36.503006, 38.576176, 44.295227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.272087, 38.250748, 44.323025> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012340, -0.093796, -0.995515,
		0.816439, -0.573853, 0.064188,
		-0.577300, -0.813570, 0.069497,
		36.098896, 38.006676, 44.343872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.835785, 37.969753, 44.035435>,  <36.503006, 38.576176, 44.295227>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.835785, 37.969753, 44.035435> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.437714, 37.931595, 44.026306>,  <36.198872, 37.908699, 44.020828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.437714, 37.931595, 44.026306>,  <36.835785, 37.969753, 44.035435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.437714, 37.931595, 44.026306> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044905, -0.236293, -0.970644,
		0.087201, -0.966988, 0.239437,
		-0.995178, -0.095393, -0.022818,
		36.139160, 37.902977, 44.019463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.677498, 37.282696, 43.639511>,  <36.835785, 37.969753, 44.035435>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.677498, 37.282696, 43.639511> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.337093, 37.492538, 43.629940>,  <36.132851, 37.618443, 43.624199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.337093, 37.492538, 43.629940>,  <36.677498, 37.282696, 43.639511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.337093, 37.492538, 43.629940> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061936, -0.145505, -0.987417,
		-0.521483, -0.838821, 0.156318,
		-0.851011, 0.524603, -0.023926,
		36.081791, 37.649918, 43.622761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.242527, 36.945343, 43.182182>,  <36.677498, 37.282696, 43.639511>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.242527, 36.945343, 43.182182> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.103119, 37.319965, 43.197193>,  <36.019474, 37.544739, 43.206200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.103119, 37.319965, 43.197193>,  <36.242527, 36.945343, 43.182182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.103119, 37.319965, 43.197193> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126041, -0.007156, -0.991999,
		-0.928790, -0.350458, 0.120538,
		-0.348516, 0.936551, 0.037525,
		35.998566, 37.600929, 43.208450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.647942, 36.911072, 42.749954>,  <36.242527, 36.945343, 43.182182>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.647942, 36.911072, 42.749954> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.744751, 37.298069, 42.779297>,  <35.802837, 37.530266, 42.796902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.744751, 37.298069, 42.779297>,  <35.647942, 36.911072, 42.749954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.744751, 37.298069, 42.779297> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205111, 0.124917, -0.970734,
		-0.948342, 0.219895, 0.228677,
		0.242025, 0.967493, 0.073361,
		35.817360, 37.588318, 42.801304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148209, 37.230309, 42.385166>,  <35.647942, 36.911072, 42.749954>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148209, 37.230309, 42.385166> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.423149, 37.520374, 42.368710>,  <35.588112, 37.694412, 42.358837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.423149, 37.520374, 42.368710>,  <35.148209, 37.230309, 42.385166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.423149, 37.520374, 42.368710> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143576, 0.080126, -0.986390,
		-0.711995, 0.683902, 0.159190,
		0.687349, 0.725161, -0.041143,
		35.629353, 37.737923, 42.356365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.900127, 37.826454, 41.961239>,  <35.148209, 37.230309, 42.385166>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.900127, 37.826454, 41.961239> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.297157, 37.872822, 41.976017>,  <35.535374, 37.900642, 41.984882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.297157, 37.872822, 41.976017>,  <34.900127, 37.826454, 41.961239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.297157, 37.872822, 41.976017> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002328, 0.285473, -0.958384,
		-0.121643, 0.951350, 0.283082,
		0.992571, 0.115922, 0.036941,
		35.594929, 37.907597, 41.987099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.958176, 38.508797, 41.597546>,  <34.900127, 37.826454, 41.961239>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.958176, 38.508797, 41.597546> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.303482, 38.306911, 41.600018>,  <35.510666, 38.185780, 41.601501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.303482, 38.306911, 41.600018>,  <34.958176, 38.508797, 41.597546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.303482, 38.306911, 41.600018> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221328, 0.367503, -0.903303,
		0.453636, 0.781158, 0.428959,
		0.863266, -0.504711, 0.006179,
		35.562462, 38.155499, 41.601871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.504704, 38.975445, 41.297318>,  <34.958176, 38.508797, 41.597546>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.504704, 38.975445, 41.297318> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.639313, 38.599941, 41.267712>,  <35.720078, 38.374638, 41.249947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.639313, 38.599941, 41.267712>,  <35.504704, 38.975445, 41.297318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.639313, 38.599941, 41.267712> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479553, 0.238491, -0.844482,
		0.810420, 0.248693, 0.530444,
		0.336523, -0.938762, -0.074016,
		35.740269, 38.318314, 41.245506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.263542, 38.985100, 41.144905>,  <35.504704, 38.975445, 41.297318>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.263542, 38.985100, 41.144905> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.184536, 38.611576, 41.025581>,  <36.137131, 38.387463, 40.953987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.184536, 38.611576, 41.025581>,  <36.263542, 38.985100, 41.144905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.184536, 38.611576, 41.025581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607380, 0.122282, -0.784944,
		0.769465, -0.336227, 0.543024,
		-0.197517, -0.933809, -0.298309,
		36.125282, 38.331432, 40.936089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.829487, 38.787506, 40.766453>,  <36.263542, 38.985100, 41.144905>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.829487, 38.787506, 40.766453> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.535149, 38.550316, 40.635658>,  <36.358547, 38.408001, 40.557182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.535149, 38.550316, 40.635658>,  <36.829487, 38.787506, 40.766453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.535149, 38.550316, 40.635658> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407345, -0.001880, -0.913272,
		0.540932, -0.805220, 0.242928,
		-0.735842, -0.592974, -0.326985,
		36.314396, 38.372425, 40.537563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.245068, 38.270985, 40.403946>,  <36.829487, 38.787506, 40.766453>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.245068, 38.270985, 40.403946> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.865929, 38.285736, 40.277313>,  <36.638443, 38.294586, 40.201336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.865929, 38.285736, 40.277313>,  <37.245068, 38.270985, 40.403946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.865929, 38.285736, 40.277313> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317760, 0.032344, -0.947619,
		-0.024708, -0.998796, -0.042376,
		-0.947849, 0.036879, -0.316579,
		36.581573, 38.296799, 40.182339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.177399, 37.560806, 39.962376>,  <37.245068, 38.270985, 40.403946>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.177399, 37.560806, 39.962376> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.890079, 37.823544, 39.870640>,  <36.717686, 37.981186, 39.815598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.890079, 37.823544, 39.870640>,  <37.177399, 37.560806, 39.962376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.890079, 37.823544, 39.870640> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463218, 0.205561, -0.862075,
		-0.519108, -0.725463, -0.451919,
		-0.718300, 0.656847, -0.229339,
		36.674591, 38.020599, 39.801838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.972088, 37.420307, 39.334454>,  <37.177399, 37.560806, 39.962376>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.972088, 37.420307, 39.334454> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.856453, 37.802055, 39.364410>,  <36.787071, 38.031105, 39.382385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.856453, 37.802055, 39.364410>,  <36.972088, 37.420307, 39.334454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.856453, 37.802055, 39.364410> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482670, 0.212869, -0.849539,
		-0.826715, -0.209445, -0.522183,
		-0.289088, 0.954369, 0.074889,
		36.769726, 38.088367, 39.386879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.940201, 37.632286, 38.603886>,  <36.972088, 37.420307, 39.334454>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.940201, 37.632286, 38.603886> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.937931, 37.986366, 38.789955>,  <36.936569, 38.198814, 38.901596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.937931, 37.986366, 38.789955>,  <36.940201, 37.632286, 38.603886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.937931, 37.986366, 38.789955> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597159, 0.376127, -0.708470,
		-0.802103, 0.273757, -0.530743,
		-0.005678, 0.885203, 0.465170,
		36.936226, 38.251926, 38.929504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.830395, 38.199310, 38.084415>,  <36.940201, 37.632286, 38.603886>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.830395, 38.199310, 38.084415> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.978268, 38.405231, 38.393818>,  <37.066994, 38.528786, 38.579460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.978268, 38.405231, 38.393818>,  <36.830395, 38.199310, 38.084415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.978268, 38.405231, 38.393818> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607240, 0.496238, -0.620490,
		-0.703273, 0.699089, -0.129157,
		0.369685, 0.514803, 0.773506,
		37.089172, 38.559673, 38.625870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.723888, 38.951714, 37.951851>,  <36.830395, 38.199310, 38.084415>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.723888, 38.951714, 37.951851> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.019920, 38.878349, 38.210663>,  <37.197540, 38.834332, 38.365948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.019920, 38.878349, 38.210663>,  <36.723888, 38.951714, 37.951851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.019920, 38.878349, 38.210663> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651576, 0.433789, -0.622315,
		-0.166535, 0.882150, 0.440543,
		0.740078, -0.183410, 0.647028,
		37.241943, 38.823326, 38.404770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.103962, 39.600342, 37.834965>,  <36.723888, 38.951714, 37.951851>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.103962, 39.600342, 37.834965> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.360817, 39.371246, 38.038784>,  <37.514931, 39.233791, 38.161076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.360817, 39.371246, 38.038784>,  <37.103962, 39.600342, 37.834965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.360817, 39.371246, 38.038784> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766517, 0.470530, -0.437096,
		0.010585, 0.671250, 0.741156,
		0.642136, -0.572735, 0.509544,
		37.553459, 39.199425, 38.191647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.523441, 39.988659, 38.265064>,  <37.103962, 39.600342, 37.834965>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.523441, 39.988659, 38.265064> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.744011, 39.663357, 38.190723>,  <37.876354, 39.468174, 38.146118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.744011, 39.663357, 38.190723>,  <37.523441, 39.988659, 38.265064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.744011, 39.663357, 38.190723> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648677, 0.558088, -0.517451,
		0.524544, 0.164777, 0.835286,
		0.551427, -0.813257, -0.185854,
		37.909439, 39.419380, 38.134968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.322853, 40.067650, 38.553734>,  <37.523441, 39.988659, 38.265064>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.322853, 40.067650, 38.553734> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.320015, 39.785717, 38.269997>,  <38.318310, 39.616558, 38.099754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.320015, 39.785717, 38.269997>,  <38.322853, 40.067650, 38.553734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.320015, 39.785717, 38.269997> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673979, 0.520654, -0.524091,
		0.738716, -0.481801, 0.471345,
		-0.007099, -0.704831, -0.709339,
		38.317886, 39.574268, 38.057194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.037449, 39.918587, 38.436687>,  <38.322853, 40.067650, 38.553734>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.037449, 39.918587, 38.436687> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.880478, 39.741680, 38.114098>,  <38.786297, 39.635536, 37.920544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.880478, 39.741680, 38.114098>,  <39.037449, 39.918587, 38.436687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.880478, 39.741680, 38.114098> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730764, 0.382547, -0.565369,
		0.558559, -0.811207, 0.173074,
		-0.392423, -0.442268, -0.806476,
		38.762753, 39.609001, 37.872154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.620209, 39.396851, 38.152786>,  <39.037449, 39.918587, 38.436687>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.620209, 39.396851, 38.152786> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.360386, 39.506786, 37.869225>,  <39.204494, 39.572746, 37.699089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.360386, 39.506786, 37.869225>,  <39.620209, 39.396851, 38.152786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.360386, 39.506786, 37.869225> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760311, 0.231723, -0.606821,
		-0.002508, -0.933150, -0.359479,
		-0.649555, 0.274837, -0.708903,
		39.165520, 39.589237, 37.656555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.285549, 39.297852, 37.719212>,  <39.620209, 39.396851, 38.152786>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.285549, 39.297852, 37.719212> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.622246, 39.106598, 37.819500>,  <40.824265, 38.991848, 37.879673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.622246, 39.106598, 37.819500>,  <40.285549, 39.297852, 37.719212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.622246, 39.106598, 37.819500> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339085, -0.106827, 0.934671,
		-0.420113, -0.871767, -0.252048,
		0.841740, -0.478133, 0.250723,
		40.874767, 38.963158, 37.894718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.209881, 38.531204, 37.862274>,  <40.285549, 39.297852, 37.719212>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.209881, 38.531204, 37.862274> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.514374, 38.681290, 38.073837>,  <40.697071, 38.771339, 38.200775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.514374, 38.681290, 38.073837>,  <40.209881, 38.531204, 37.862274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.514374, 38.681290, 38.073837> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403430, -0.364545, 0.839256,
		0.507706, -0.852247, -0.126134,
		0.761235, 0.375209, 0.528903,
		40.742744, 38.793854, 38.232510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.322899, 38.120628, 38.488293>,  <40.209881, 38.531204, 37.862274>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.322899, 38.120628, 38.488293> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.540539, 38.434235, 38.607807>,  <40.671124, 38.622398, 38.679516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.540539, 38.434235, 38.607807>,  <40.322899, 38.120628, 38.488293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.540539, 38.434235, 38.607807> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039052, -0.332058, 0.942450,
		0.838113, -0.524453, -0.150054,
		0.544097, 0.784020, 0.298783,
		40.703770, 38.669441, 38.697441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.776749, 37.814899, 39.066998>,  <40.322899, 38.120628, 38.488293>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.776749, 37.814899, 39.066998> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.800373, 38.212666, 39.102005>,  <40.814548, 38.451324, 39.123009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.800373, 38.212666, 39.102005>,  <40.776749, 37.814899, 39.066998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.800373, 38.212666, 39.102005> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014488, -0.086809, 0.996120,
		0.998149, -0.060099, 0.009280,
		0.059060, 0.994411, 0.087519,
		40.818092, 38.510990, 39.128262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.288021, 37.917545, 39.591431>,  <40.776749, 37.814899, 39.066998>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.288021, 37.917545, 39.591431> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.088848, 38.264297, 39.601063>,  <40.969345, 38.472351, 39.606842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.088848, 38.264297, 39.601063>,  <41.288021, 37.917545, 39.591431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.088848, 38.264297, 39.601063> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121518, 0.042246, 0.991690,
		0.858662, 0.496718, -0.126378,
		-0.497929, 0.866883, 0.024085,
		40.939468, 38.524361, 39.608288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.698956, 38.483170, 40.061752>,  <41.288021, 37.917545, 39.591431>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.698956, 38.483170, 40.061752> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.313736, 38.590328, 40.072895>,  <41.082603, 38.654621, 40.079582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.313736, 38.590328, 40.072895>,  <41.698956, 38.483170, 40.061752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.313736, 38.590328, 40.072895> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082039, 0.193242, 0.977715,
		0.256540, 0.943870, -0.208078,
		-0.963046, 0.267893, 0.027860,
		41.024822, 38.670696, 40.081253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.684036, 39.077385, 40.500950>,  <41.698956, 38.483170, 40.061752>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.684036, 39.077385, 40.500950> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.303265, 38.961079, 40.462399>,  <41.074802, 38.891293, 40.439270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.303265, 38.961079, 40.462399>,  <41.684036, 39.077385, 40.500950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.303265, 38.961079, 40.462399> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105896, 0.017143, 0.994229,
		-0.287440, 0.956639, -0.047110,
		-0.951927, -0.290770, -0.096376,
		41.017685, 38.873848, 40.433487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.401333, 39.556141, 40.959595>,  <41.684036, 39.077385, 40.500950>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.401333, 39.556141, 40.959595> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.161476, 39.239933, 40.909790>,  <41.017563, 39.050209, 40.879906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.161476, 39.239933, 40.909790>,  <41.401333, 39.556141, 40.959595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.161476, 39.239933, 40.909790> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252091, 0.038924, 0.966920,
		-0.759525, 0.611195, -0.222624,
		-0.599643, -0.790522, -0.124512,
		40.981583, 39.002777, 40.872437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.840347, 39.751320, 41.296204>,  <41.401333, 39.556141, 40.959595>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.840347, 39.751320, 41.296204> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.742222, 39.363987, 41.277634>,  <40.683346, 39.131588, 41.266491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.742222, 39.363987, 41.277634>,  <40.840347, 39.751320, 41.296204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.742222, 39.363987, 41.277634> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245253, 0.015658, 0.969333,
		-0.937909, 0.249175, -0.241328,
		-0.245312, -0.968332, -0.046425,
		40.668629, 39.073486, 41.263706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.201065, 39.557457, 41.674328>,  <40.840347, 39.751320, 41.296204>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.201065, 39.557457, 41.674328> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.373974, 39.199276, 41.631775>,  <40.477718, 38.984367, 41.606243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.373974, 39.199276, 41.631775>,  <40.201065, 39.557457, 41.674328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.373974, 39.199276, 41.631775> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294719, -0.251789, 0.921815,
		-0.852224, -0.367118, -0.372746,
		0.432268, -0.895448, -0.106384,
		40.503654, 38.930641, 41.599861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.708496, 38.944782, 41.642269>,  <40.201065, 39.557457, 41.674328>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.708496, 38.944782, 41.642269> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.074089, 38.849491, 41.773647>,  <40.293446, 38.792316, 41.852474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.074089, 38.849491, 41.773647>,  <39.708496, 38.944782, 41.642269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.074089, 38.849491, 41.773647> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387084, -0.269263, 0.881852,
		-0.121643, -0.933137, -0.338317,
		0.913985, -0.238228, 0.328449,
		40.348286, 38.778023, 41.872181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.583744, 38.284309, 41.816486>,  <39.708496, 38.944782, 41.642269>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.583744, 38.284309, 41.816486> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.902039, 38.441860, 42.000511>,  <40.093018, 38.536392, 42.110928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.902039, 38.441860, 42.000511>,  <39.583744, 38.284309, 41.816486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.902039, 38.441860, 42.000511> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288782, -0.420958, 0.859883,
		0.532357, -0.817101, -0.221227,
		0.795739, 0.393879, 0.460064,
		40.140759, 38.560024, 42.138531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.957973, 37.776180, 42.305729>,  <39.583744, 38.284309, 41.816486>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.957973, 37.776180, 42.305729> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.015781, 38.145111, 42.449078>,  <40.050465, 38.366470, 42.535088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.015781, 38.145111, 42.449078>,  <39.957973, 37.776180, 42.305729>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.015781, 38.145111, 42.449078> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324989, -0.297842, 0.897592,
		0.934610, -0.246184, 0.256703,
		0.144516, 0.922325, 0.358374,
		40.059135, 38.421810, 42.556591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.101448, 37.730469, 43.045929>,  <39.957973, 37.776180, 42.305729>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.101448, 37.730469, 43.045929> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.032463, 38.123875, 43.024204>,  <39.991074, 38.359921, 43.011169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.032463, 38.123875, 43.024204>,  <40.101448, 37.730469, 43.045929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.032463, 38.123875, 43.024204> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237667, 0.011961, 0.971273,
		0.955914, 0.180415, 0.231687,
		-0.172461, 0.983518, -0.054312,
		39.980724, 38.418930, 43.007912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.487316, 38.119110, 43.594196>,  <40.101448, 37.730469, 43.045929>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.487316, 38.119110, 43.594196> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.153080, 38.305561, 43.477905>,  <39.952538, 38.417431, 43.408131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.153080, 38.305561, 43.477905>,  <40.487316, 38.119110, 43.594196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.153080, 38.305561, 43.477905> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357121, -0.058766, 0.932207,
		0.417440, 0.882765, 0.215567,
		-0.835589, 0.466124, -0.290723,
		39.902405, 38.445400, 43.390690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.421772, 38.487720, 44.164726>,  <40.487316, 38.119110, 43.594196>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.421772, 38.487720, 44.164726> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.061127, 38.514526, 43.993797>,  <39.844738, 38.530609, 43.891239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.061127, 38.514526, 43.993797>,  <40.421772, 38.487720, 44.164726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.061127, 38.514526, 43.993797> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410185, 0.181071, 0.893846,
		0.137273, 0.981184, -0.135769,
		-0.901612, 0.067011, -0.427324,
		39.790642, 38.534630, 43.865601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.997002, 39.023285, 44.495541>,  <40.421772, 38.487720, 44.164726>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.997002, 39.023285, 44.495541> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.713013, 38.811943, 44.309303>,  <39.542618, 38.685139, 44.197559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.713013, 38.811943, 44.309303>,  <39.997002, 39.023285, 44.495541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.713013, 38.811943, 44.309303> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533707, -0.027659, 0.845217,
		-0.459451, 0.848574, -0.262349,
		-0.709973, -0.528354, -0.465598,
		39.500019, 38.653439, 44.169624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.378490, 39.358761, 44.594357>,  <39.997002, 39.023285, 44.495541>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.378490, 39.358761, 44.594357> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.283279, 38.975853, 44.528652>,  <39.226151, 38.746109, 44.489231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.283279, 38.975853, 44.528652>,  <39.378490, 39.358761, 44.594357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.283279, 38.975853, 44.528652> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602773, 0.012984, 0.797807,
		-0.761581, 0.288915, -0.580105,
		-0.238031, -0.957267, -0.164262,
		39.211872, 38.688671, 44.479374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.635403, 39.313572, 44.809601> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.746483, 38.929970, 44.787022>,  <38.813133, 38.699810, 44.773476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.746483, 38.929970, 44.787022>,  <38.635403, 39.313572, 44.809601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.746483, 38.929970, 44.787022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526790, -0.201156, 0.825850,
		-0.803351, -0.199606, -0.561057,
		0.277704, -0.959007, -0.056448,
		38.829796, 38.642269, 44.770088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.092850, 38.881641, 44.922531>,  <38.635403, 39.313572, 44.809601>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.092850, 38.881641, 44.922531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.358604, 38.597744, 45.016216>,  <38.518059, 38.427406, 45.072430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.358604, 38.597744, 45.016216>,  <38.092850, 38.881641, 44.922531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.358604, 38.597744, 45.016216> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570210, -0.278762, 0.772756,
		-0.483165, -0.646963, -0.589907,
		0.664389, -0.709739, 0.234217,
		38.557922, 38.384823, 45.086483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.740246, 38.189037, 44.984081>,  <38.092850, 38.881641, 44.922531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.740246, 38.189037, 44.984081> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.081558, 38.173698, 45.192101>,  <38.286346, 38.164494, 45.316910>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.081558, 38.173698, 45.192101>,  <37.740246, 38.189037, 44.984081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.081558, 38.173698, 45.192101> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519556, -0.147601, 0.841591,
		0.044488, -0.988303, -0.145867,
		0.853278, -0.038346, 0.520046,
		38.337540, 38.162193, 45.348114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694942, 37.605541, 45.390587>,  <37.740246, 38.189037, 44.984081>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.694942, 37.605541, 45.390587> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.980534, 37.820702, 45.569874>,  <38.151886, 37.949799, 45.677444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.980534, 37.820702, 45.569874>,  <37.694942, 37.605541, 45.390587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.980534, 37.820702, 45.569874> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441782, -0.150550, 0.884400,
		0.543202, -0.829453, 0.130147,
		0.713975, 0.537905, 0.448217,
		38.194725, 37.982071, 45.704338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.910469, 37.248310, 45.862968>,  <37.694942, 37.605541, 45.390587>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.910469, 37.248310, 45.862968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.014980, 37.609482, 45.999474>,  <38.077686, 37.826183, 46.081375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.014980, 37.609482, 45.999474>,  <37.910469, 37.248310, 45.862968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.014980, 37.609482, 45.999474> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443336, -0.201790, 0.873346,
		0.857429, -0.379482, 0.347576,
		0.261282, 0.902925, 0.341259,
		38.093365, 37.880360, 46.101852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964626, 37.126152, 46.576885>,  <37.910469, 37.248310, 45.862968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.964626, 37.126152, 46.576885> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.971779, 37.525341, 46.552479>,  <37.976070, 37.764854, 46.537834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.971779, 37.525341, 46.552479>,  <37.964626, 37.126152, 46.576885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.971779, 37.525341, 46.552479> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363921, 0.063336, 0.929274,
		0.931258, 0.005590, 0.364317,
		0.017880, 0.997977, -0.061017,
		37.977142, 37.824734, 46.534172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380302, 37.488411, 47.165966>,  <37.964626, 37.126152, 46.576885>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.380302, 37.488411, 47.165966> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.108097, 37.750420, 47.034603>,  <37.944775, 37.907623, 46.955788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.108097, 37.750420, 47.034603>,  <38.380302, 37.488411, 47.165966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.108097, 37.750420, 47.034603> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400750, 0.042503, 0.915201,
		0.613432, 0.754417, 0.233575,
		-0.680515, 0.655019, -0.328405,
		37.903942, 37.946926, 46.936081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.409111, 37.857475, 47.658321>,  <38.380302, 37.488411, 47.165966>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.409111, 37.857475, 47.658321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.070221, 37.986076, 47.489159>,  <37.866886, 38.063236, 47.387661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.070221, 37.986076, 47.489159>,  <38.409111, 37.857475, 47.658321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.070221, 37.986076, 47.489159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426081, 0.064216, 0.902403,
		0.317279, 0.944730, 0.082579,
		-0.847224, 0.321499, -0.422906,
		37.816055, 38.082527, 47.362286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.200218, 38.457642, 47.968651>,  <38.409111, 37.857475, 47.658321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.200218, 38.457642, 47.968651> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.864494, 38.280148, 47.843014>,  <37.663059, 38.173649, 47.767632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.864494, 38.280148, 47.843014>,  <38.200218, 38.457642, 47.968651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.864494, 38.280148, 47.843014> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381233, 0.068497, 0.921938,
		-0.387585, 0.893535, -0.226659,
		-0.839309, -0.443739, -0.314096,
		37.612701, 38.147026, 47.748783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.636608, 38.795086, 48.352074>,  <38.200218, 38.457642, 47.968651>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.636608, 38.795086, 48.352074> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.448338, 38.483391, 48.186546>,  <37.335373, 38.296375, 48.087231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.448338, 38.483391, 48.186546>,  <37.636608, 38.795086, 48.352074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.448338, 38.483391, 48.186546> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566719, -0.092467, 0.818706,
		-0.676232, 0.619868, -0.398087,
		-0.470680, -0.779239, -0.413821,
		37.307133, 38.249619, 48.062401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.978249, 38.978661, 48.291290>,  <37.636608, 38.795086, 48.352074>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.978249, 38.978661, 48.291290> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.004250, 38.580189, 48.314621>,  <37.019852, 38.341106, 48.328621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.004250, 38.580189, 48.314621>,  <36.978249, 38.978661, 48.291290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.004250, 38.580189, 48.314621> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422973, 0.025435, 0.905785,
		-0.903808, -0.083548, -0.419703,
		0.065001, -0.996179, 0.058327,
		37.023750, 38.281334, 48.332119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.619831, 38.756134, 48.916527>,  <36.978249, 38.978661, 48.291290>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.619831, 38.756134, 48.916527> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.731323, 38.386772, 48.810978>,  <36.798218, 38.165154, 48.747646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.731323, 38.386772, 48.810978>,  <36.619831, 38.756134, 48.916527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.731323, 38.386772, 48.810978> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370637, -0.356908, 0.857464,
		-0.885966, -0.141202, -0.441731,
		0.278733, -0.923406, -0.263874,
		36.814941, 38.109749, 48.731815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.962749, 38.259785, 49.011532>,  <36.619831, 38.756134, 48.916527>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.962749, 38.259785, 49.011532> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.312817, 38.068554, 49.041252>,  <36.522858, 37.953815, 49.059086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.312817, 38.068554, 49.041252>,  <35.962749, 38.259785, 49.011532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.312817, 38.068554, 49.041252> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243455, -0.302446, 0.921551,
		-0.418098, -0.824603, -0.381082,
		0.875171, -0.478075, 0.074301,
		36.575367, 37.925133, 49.063541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.846535, 37.491463, 49.193897>,  <35.962749, 38.259785, 49.011532>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.846535, 37.491463, 49.193897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.229393, 37.556572, 49.289703>,  <36.459110, 37.595638, 49.347187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.229393, 37.556572, 49.289703>,  <35.846535, 37.491463, 49.193897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.229393, 37.556572, 49.289703> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140221, -0.463168, 0.875108,
		0.253382, -0.871195, -0.420497,
		0.957150, 0.162775, 0.239518,
		36.516537, 37.605404, 49.361557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.126751, 36.825569, 49.448845>,  <35.846535, 37.491463, 49.193897>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.126751, 36.825569, 49.448845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.350811, 37.124340, 49.592140>,  <36.485245, 37.303604, 49.678116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.350811, 37.124340, 49.592140>,  <36.126751, 36.825569, 49.448845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.350811, 37.124340, 49.592140> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087189, -0.376884, 0.922148,
		0.823791, -0.547774, -0.145986,
		0.560148, 0.746929, 0.358233,
		36.518856, 37.348419, 49.699612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.541031, 36.546265, 49.919228>,  <36.126751, 36.825569, 49.448845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.541031, 36.546265, 49.919228> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.529694, 36.930267, 50.030640>,  <36.522892, 37.160671, 50.097488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.529694, 36.930267, 50.030640>,  <36.541031, 36.546265, 49.919228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.529694, 36.930267, 50.030640> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011755, -0.278304, 0.960421,
		0.999529, 0.030495, -0.003397,
		-0.028343, 0.960009, 0.278532,
		36.521191, 37.218269, 50.114201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.925747, 36.555180, 50.529640>,  <36.541031, 36.546265, 49.919228>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.925747, 36.555180, 50.529640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.735027, 36.906738, 50.535301>,  <36.620598, 37.117676, 50.538696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.735027, 36.906738, 50.535301>,  <36.925747, 36.555180, 50.529640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.735027, 36.906738, 50.535301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084949, -0.062093, 0.994449,
		0.874899, 0.472949, 0.104267,
		-0.476797, 0.878899, 0.014149,
		36.591988, 37.170406, 50.539547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.296150, 36.944027, 51.074490>,  <36.925747, 36.555180, 50.529640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.296150, 36.944027, 51.074490> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.948170, 37.134769, 51.024239>,  <36.739380, 37.249214, 50.994087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.948170, 37.134769, 51.024239>,  <37.296150, 36.944027, 51.074490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.948170, 37.134769, 51.024239> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092933, 0.091656, 0.991445,
		0.484294, 0.874188, -0.035421,
		-0.869956, 0.476859, -0.125629,
		36.687183, 37.277828, 50.986549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.372066, 37.470585, 51.505535>,  <37.296150, 36.944027, 51.074490>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.372066, 37.470585, 51.505535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.985897, 37.407925, 51.422195>,  <36.754196, 37.370331, 51.372192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.985897, 37.407925, 51.422195>,  <37.372066, 37.470585, 51.505535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.985897, 37.407925, 51.422195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188161, -0.134372, 0.972903,
		-0.180399, 0.978471, 0.100252,
		-0.965428, -0.156647, -0.208351,
		36.696270, 37.360931, 51.359692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.978249, 37.808170, 52.019493>,  <37.372066, 37.470585, 51.505535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.978249, 37.808170, 52.019493> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.720661, 37.533726, 51.884109>,  <36.566109, 37.369057, 51.802879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.720661, 37.533726, 51.884109>,  <36.978249, 37.808170, 52.019493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.720661, 37.533726, 51.884109> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227332, -0.250805, 0.940966,
		-0.730497, 0.682893, 0.005535,
		-0.643968, -0.686115, -0.338456,
		36.527470, 37.327892, 51.782574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.464100, 37.833191, 52.500858>,  <36.978249, 37.808170, 52.019493>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.464100, 37.833191, 52.500858> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.391685, 37.489235, 52.309940>,  <36.348236, 37.282860, 52.195389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.391685, 37.489235, 52.309940>,  <36.464100, 37.833191, 52.500858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.391685, 37.489235, 52.309940> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263651, -0.425112, 0.865891,
		-0.947477, 0.282597, -0.149751,
		-0.181037, -0.859895, -0.477291,
		36.337376, 37.231266, 52.166752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.684181, 37.599571, 52.461521>,  <36.464100, 37.833191, 52.500858>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.684181, 37.599571, 52.461521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.934860, 37.288383, 52.443520>,  <36.085266, 37.101673, 52.432720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.934860, 37.288383, 52.443520>,  <35.684181, 37.599571, 52.461521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.934860, 37.288383, 52.443520> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313997, -0.304951, 0.899117,
		-0.713205, -0.549340, -0.435390,
		0.626694, -0.777965, -0.045002,
		36.122868, 37.054993, 52.430019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.402237, 37.164101, 52.952778>,  <35.684181, 37.599571, 52.461521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.402237, 37.164101, 52.952778> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.766804, 37.000401, 52.935619>,  <35.985542, 36.902180, 52.925323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.766804, 37.000401, 52.935619>,  <35.402237, 37.164101, 52.952778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.766804, 37.000401, 52.935619> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134692, -0.395219, 0.908658,
		-0.388788, -0.822401, -0.415333,
		0.911428, -0.409217, -0.042885,
		36.040230, 36.877628, 52.922749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.744476, 37.151176, 52.602531>,  <35.402237, 37.164101, 52.952778>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.744476, 37.151176, 52.602531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.530651, 36.813213, 52.610176>,  <34.402355, 36.610435, 52.614761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.530651, 36.813213, 52.610176>,  <34.744476, 37.151176, 52.602531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.530651, 36.813213, 52.610176> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107927, 0.045821, -0.993102,
		0.838207, -0.532941, -0.115684,
		-0.534566, -0.844911, 0.019111,
		34.370281, 36.559742, 52.615910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.024895, 36.851170, 52.034866>,  <34.744476, 37.151176, 52.602531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.024895, 36.851170, 52.034866> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.668152, 36.680256, 52.094212>,  <34.454105, 36.577709, 52.129818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.668152, 36.680256, 52.094212>,  <35.024895, 36.851170, 52.034866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.668152, 36.680256, 52.094212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180066, 0.034506, -0.983049,
		0.414924, -0.903458, -0.107714,
		-0.891860, -0.427286, 0.148364,
		34.400593, 36.552071, 52.138721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.971695, 36.263130, 51.618328>,  <35.024895, 36.851170, 52.034866>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.971695, 36.263130, 51.618328> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.583733, 36.347855, 51.666348>,  <34.350956, 36.398689, 51.695160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.583733, 36.347855, 51.666348>,  <34.971695, 36.263130, 51.618328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.583733, 36.347855, 51.666348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140780, -0.085628, -0.986331,
		-0.198635, -0.973552, 0.112870,
		-0.969910, 0.211810, 0.120048,
		34.292759, 36.411396, 51.702362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.636425, 35.716312, 51.200359>,  <34.971695, 36.263130, 51.618328>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.636425, 35.716312, 51.200359> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.379322, 36.016190, 51.263378>,  <34.225060, 36.196117, 51.301189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.379322, 36.016190, 51.263378>,  <34.636425, 35.716312, 51.200359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.379322, 36.016190, 51.263378> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226676, 0.010329, -0.973915,
		-0.731765, -0.661706, 0.163298,
		-0.642759, 0.749693, 0.157552,
		34.186493, 36.241096, 51.310642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.151146, 35.539574, 50.780804>,  <34.636425, 35.716312, 51.200359>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.151146, 35.539574, 50.780804> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.093464, 35.931213, 50.838165>,  <34.058853, 36.166199, 50.872581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.093464, 35.931213, 50.838165>,  <34.151146, 35.539574, 50.780804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.093464, 35.931213, 50.838165> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283939, 0.097881, -0.953833,
		-0.947937, -0.178263, 0.263891,
		-0.144204, 0.979103, 0.143401,
		34.050201, 36.224945, 50.881187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.577709, 35.674114, 50.348965>,  <34.151146, 35.539574, 50.780804>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.577709, 35.674114, 50.348965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.747883, 36.030483, 50.412540>,  <33.849987, 36.244305, 50.450687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.747883, 36.030483, 50.412540>,  <33.577709, 35.674114, 50.348965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.747883, 36.030483, 50.412540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180539, 0.255649, -0.949763,
		-0.886798, 0.375367, 0.269608,
		0.425435, 0.890923, 0.158941,
		33.875515, 36.297760, 50.460224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.115437, 36.113327, 50.001583>,  <33.577709, 35.674114, 50.348965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.115437, 36.113327, 50.001583> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.483135, 36.264915, 50.044224>,  <33.703754, 36.355869, 50.069809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.483135, 36.264915, 50.044224>,  <33.115437, 36.113327, 50.001583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.483135, 36.264915, 50.044224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095777, 0.047364, -0.994275,
		-0.381854, 0.924194, 0.007242,
		0.919246, 0.378975, 0.106602,
		33.758907, 36.378609, 50.076206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.219894, 36.622910, 49.553665>,  <33.115437, 36.113327, 50.001583>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.219894, 36.622910, 49.553665> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.597710, 36.509132, 49.619324>,  <33.824398, 36.440865, 49.658718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.597710, 36.509132, 49.619324>,  <33.219894, 36.622910, 49.553665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.597710, 36.509132, 49.619324> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206930, 0.127364, -0.970030,
		0.255013, 0.950195, 0.179160,
		0.944536, -0.284444, 0.164144,
		33.881069, 36.423798, 49.668568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.464088, 37.023193, 48.975254>,  <33.219894, 36.622910, 49.553665>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.464088, 37.023193, 48.975254> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.739563, 36.777203, 49.128883>,  <33.904846, 36.629608, 49.221062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.739563, 36.777203, 49.128883>,  <33.464088, 37.023193, 48.975254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.739563, 36.777203, 49.128883> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414127, -0.101181, -0.904578,
		0.595157, 0.782026, 0.184997,
		0.688685, -0.614978, 0.384076,
		33.946167, 36.592709, 49.244106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.155514, 37.389404, 48.996597>,  <33.464088, 37.023193, 48.975254>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.155514, 37.389404, 48.996597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.237228, 36.998550, 48.973042>,  <34.286255, 36.764038, 48.958908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.237228, 36.998550, 48.973042>,  <34.155514, 37.389404, 48.996597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.237228, 36.998550, 48.973042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587173, 0.170445, -0.791313,
		0.783260, 0.127077, 0.608568,
		0.204285, -0.977139, -0.058887,
		34.298515, 36.705410, 48.955376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.807446, 37.363941, 48.932163>,  <34.155514, 37.389404, 48.996597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.807446, 37.363941, 48.932163> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.684246, 37.015232, 48.779770>,  <34.610325, 36.806007, 48.688335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.684246, 37.015232, 48.779770>,  <34.807446, 37.363941, 48.932163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.684246, 37.015232, 48.779770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631215, 0.112369, -0.767425,
		0.711830, -0.476851, 0.515666,
		-0.308002, -0.871772, -0.380983,
		34.591846, 36.753700, 48.665474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.370083, 37.136902, 48.733501>,  <34.807446, 37.363941, 48.932163>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.370083, 37.136902, 48.733501> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.086079, 36.949070, 48.523598>,  <34.915676, 36.836369, 48.397655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.086079, 36.949070, 48.523598>,  <35.370083, 37.136902, 48.733501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.086079, 36.949070, 48.523598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422431, 0.312202, -0.850930,
		0.563414, -0.825846, -0.023300,
		-0.710011, -0.469583, -0.524762,
		34.873074, 36.808197, 48.366169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.720142, 36.812656, 48.213421>,  <35.370083, 37.136902, 48.733501>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.720142, 36.812656, 48.213421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.349075, 36.817947, 48.064152>,  <35.126434, 36.821121, 47.974590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.349075, 36.817947, 48.064152>,  <35.720142, 36.812656, 48.213421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.349075, 36.817947, 48.064152> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342754, 0.426685, -0.836935,
		0.148152, -0.904304, -0.400357,
		-0.927670, 0.013231, -0.373168,
		35.070774, 36.821915, 47.952202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.805557, 36.439247, 47.533546>,  <35.720142, 36.812656, 48.213421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.805557, 36.439247, 47.533546> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.458385, 36.632294, 47.486576>,  <35.250084, 36.748119, 47.458393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.458385, 36.632294, 47.486576>,  <35.805557, 36.439247, 47.533546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.458385, 36.632294, 47.486576> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212461, 0.147037, -0.966044,
		-0.448961, -0.863402, -0.230154,
		-0.867925, 0.482615, -0.117426,
		35.198009, 36.777077, 47.451347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.531845, 36.161091, 46.888119>,  <35.805557, 36.439247, 47.533546>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.531845, 36.161091, 46.888119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.368279, 36.519230, 46.958702>,  <35.270138, 36.734112, 47.001053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.368279, 36.519230, 46.958702>,  <35.531845, 36.161091, 46.888119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.368279, 36.519230, 46.958702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158495, 0.260109, -0.952482,
		-0.898703, -0.361516, -0.248271,
		-0.408915, 0.895349, 0.176462,
		35.245605, 36.787834, 47.011642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.401592, 36.395821, 46.227345>,  <35.531845, 36.161091, 46.888119>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.401592, 36.395821, 46.227345> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.337776, 36.740524, 46.419975>,  <35.299488, 36.947346, 46.535553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.337776, 36.740524, 46.419975>,  <35.401592, 36.395821, 46.227345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.337776, 36.740524, 46.419975> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212343, 0.506362, -0.835768,
		-0.964084, -0.031076, -0.263772,
		-0.159536, 0.861761, 0.481577,
		35.289917, 36.999054, 46.564449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.851994, 36.733498, 45.952198>,  <35.401592, 36.395821, 46.227345>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.851994, 36.733498, 45.952198> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.102707, 37.000519, 46.112949>,  <35.253136, 37.160732, 46.209400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.102707, 37.000519, 46.112949>,  <34.851994, 36.733498, 45.952198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.102707, 37.000519, 46.112949> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070302, 0.465215, -0.882401,
		-0.776015, 0.581328, 0.244659,
		0.626784, 0.667557, 0.401883,
		35.290741, 37.200787, 46.233513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.535774, 37.218048, 45.714172>,  <34.851994, 36.733498, 45.952198>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.535774, 37.218048, 45.714172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.895206, 37.365437, 45.809494>,  <35.110867, 37.453869, 45.866688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.895206, 37.365437, 45.809494>,  <34.535774, 37.218048, 45.714172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.895206, 37.365437, 45.809494> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056845, 0.440742, -0.895832,
		-0.435114, 0.818522, 0.375096,
		0.898579, 0.368467, 0.238302,
		35.164780, 37.475975, 45.880985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.584698, 37.958836, 45.466743>,  <34.535774, 37.218048, 45.714172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.584698, 37.958836, 45.466743> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.968891, 37.880611, 45.545963>,  <35.199409, 37.833679, 45.593494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.968891, 37.880611, 45.545963>,  <34.584698, 37.958836, 45.466743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.968891, 37.880611, 45.545963> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260192, 0.378259, -0.888380,
		0.098818, 0.904807, 0.414196,
		0.960487, -0.195559, 0.198045,
		35.257038, 37.821945, 45.605377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.877911, 38.474270, 45.204426>,  <34.584698, 37.958836, 45.466743>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.877911, 38.474270, 45.204426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.161861, 38.192581, 45.199558>,  <35.332233, 38.023567, 45.196640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.161861, 38.192581, 45.199558>,  <34.877911, 38.474270, 45.204426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.161861, 38.192581, 45.199558> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358186, 0.375826, -0.854668,
		0.606447, 0.602352, 0.519032,
		0.709877, -0.704221, -0.012164,
		35.374825, 37.981316, 45.195908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.499825, 38.817631, 45.104458>,  <34.877911, 38.474270, 45.204426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.499825, 38.817631, 45.104458> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.588058, 38.446640, 44.983711>,  <35.640999, 38.224045, 44.911263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.588058, 38.446640, 44.983711>,  <35.499825, 38.817631, 45.104458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.588058, 38.446640, 44.983711> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250057, 0.352923, -0.901619,
		0.942769, 0.123400, 0.309773,
		0.220586, -0.927479, -0.301867,
		35.654236, 38.168396, 44.893150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.490116, 30.678097, 30.213449> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.179329, 30.580770, 29.981201>,  <42.992855, 30.522375, 29.841852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.179329, 30.580770, 29.981201>,  <43.490116, 30.678097, 30.213449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.179329, 30.580770, 29.981201> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015168, 0.929257, -0.369121,
		0.629358, -0.277988, -0.725693,
		-0.776967, -0.243317, -0.580619,
		42.946239, 30.507776, 29.807014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.797321, 30.940598, 29.612432>,  <43.490116, 30.678097, 30.213449>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.797321, 30.940598, 29.612432> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.398746, 30.911713, 29.629858>,  <43.159603, 30.894382, 29.640312>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.398746, 30.911713, 29.629858>,  <43.797321, 30.940598, 29.612432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.398746, 30.911713, 29.629858> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080788, 0.965558, -0.247330,
		-0.024202, -0.249968, -0.967952,
		-0.996437, -0.072213, 0.043562,
		43.099815, 30.890049, 29.642927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.490818, 31.146702, 29.039982>,  <43.797321, 30.940598, 29.612432>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.490818, 31.146702, 29.039982> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.197330, 31.208534, 29.304636>,  <43.021236, 31.245634, 29.463428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.197330, 31.208534, 29.304636>,  <43.490818, 31.146702, 29.039982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.197330, 31.208534, 29.304636> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065688, 0.985354, -0.157365,
		-0.676270, -0.071999, -0.733126,
		-0.733719, 0.154579, 0.661636,
		42.977215, 31.254908, 29.503126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.194771, 31.659340, 28.752861>,  <43.490818, 31.146702, 29.039982>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.194771, 31.659340, 28.752861> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.080631, 31.667637, 29.136141>,  <43.012146, 31.672615, 29.366108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.080631, 31.667637, 29.136141>,  <43.194771, 31.659340, 28.752861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.080631, 31.667637, 29.136141> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015165, 0.999543, -0.026151,
		-0.958303, -0.021993, -0.284906,
		-0.285351, 0.020740, 0.958199,
		42.995026, 31.673859, 29.423601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.766773, 32.271805, 28.811909>,  <43.194771, 31.659340, 28.752861>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.766773, 32.271805, 28.811909> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.835854, 32.179829, 29.195013>,  <42.877304, 32.124645, 29.424875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.835854, 32.179829, 29.195013>,  <42.766773, 32.271805, 28.811909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.835854, 32.179829, 29.195013> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162695, 0.965673, 0.202501,
		-0.971444, 0.120850, 0.204185,
		0.172704, -0.229939, 0.957759,
		42.887665, 32.110847, 29.482340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.217911, 32.672272, 29.223911>,  <42.766773, 32.271805, 28.811909>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.217911, 32.672272, 29.223911> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.536434, 32.590260, 29.451542>,  <42.727551, 32.541054, 29.588120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.536434, 32.590260, 29.451542>,  <42.217911, 32.672272, 29.223911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.536434, 32.590260, 29.451542> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063058, 0.963813, 0.259013,
		-0.601589, -0.170370, 0.780426,
		0.796313, -0.205031, 0.569077,
		42.775330, 32.528751, 29.622265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.080750, 32.979671, 29.874361>,  <42.217911, 32.672272, 29.223911>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.080750, 32.979671, 29.874361> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.475536, 32.915421, 29.878328>,  <42.712406, 32.876869, 29.880709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.475536, 32.915421, 29.878328>,  <42.080750, 32.979671, 29.874361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.475536, 32.915421, 29.878328> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139528, 0.884778, 0.444634,
		-0.080196, -0.437455, 0.895657,
		0.986965, -0.160627, 0.009919,
		42.771626, 32.867233, 29.881304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.270767, 33.115952, 30.576670>,  <42.080750, 32.979671, 29.874361>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.270767, 33.115952, 30.576670> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.611279, 33.140533, 30.368229>,  <42.815586, 33.155281, 30.243164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.611279, 33.140533, 30.368229>,  <42.270767, 33.115952, 30.576670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.611279, 33.140533, 30.368229> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294481, 0.766012, 0.571407,
		0.434286, -0.639881, 0.633994,
		0.851279, 0.061454, -0.521101,
		42.866661, 33.158970, 30.211899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.803555, 33.000248, 31.079700>,  <42.270767, 33.115952, 30.576670>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.803555, 33.000248, 31.079700> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.980030, 33.197014, 30.779469>,  <43.085915, 33.315075, 30.599329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.980030, 33.197014, 30.779469>,  <42.803555, 33.000248, 31.079700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.980030, 33.197014, 30.779469> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380222, 0.655136, 0.652861,
		0.812885, -0.573423, 0.102002,
		0.441190, 0.491917, -0.750579,
		43.112389, 33.344589, 30.554295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.319324, 33.301548, 31.404978>,  <42.803555, 33.000248, 31.079700>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.319324, 33.301548, 31.404978> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.331608, 33.510902, 31.064362>,  <43.338978, 33.636517, 30.859991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.331608, 33.510902, 31.064362>,  <43.319324, 33.301548, 31.404978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.331608, 33.510902, 31.064362> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353748, 0.791112, 0.499004,
		0.934836, -0.316556, -0.160852,
		0.030711, 0.523388, -0.851541,
		43.340820, 33.667919, 30.808899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.013412, 33.591915, 31.345554>,  <43.319324, 33.301548, 31.404978>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.013412, 33.591915, 31.345554> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.793499, 33.830978, 31.112133>,  <43.661549, 33.974415, 30.972080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.793499, 33.830978, 31.112133>,  <44.013412, 33.591915, 31.345554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.793499, 33.830978, 31.112133> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426097, 0.801547, 0.419480,
		0.718453, -0.018026, -0.695342,
		-0.549788, 0.597659, -0.583555,
		43.628563, 34.010277, 30.937067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.422009, 34.147446, 31.109549>,  <44.013412, 33.591915, 31.345554>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.422009, 34.147446, 31.109549> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.048828, 34.287846, 31.077528>,  <43.824921, 34.372086, 31.058315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.048828, 34.287846, 31.077528>,  <44.422009, 34.147446, 31.109549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.048828, 34.287846, 31.077528> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272531, 0.833849, 0.480023,
		0.235241, 0.426019, -0.873596,
		-0.932946, 0.351003, -0.080052,
		43.768944, 34.393147, 31.053513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.411236, 34.924255, 30.858206>,  <44.422009, 34.147446, 31.109549>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.411236, 34.924255, 30.858206> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.060677, 34.857811, 31.039021>,  <43.850342, 34.817944, 31.147511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.060677, 34.857811, 31.039021>,  <44.411236, 34.924255, 30.858206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.060677, 34.857811, 31.039021> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194268, 0.736941, 0.647440,
		-0.440670, 0.655230, -0.613583,
		-0.876396, -0.166108, 0.452038,
		43.797756, 34.807980, 31.174631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.059036, 35.619942, 31.027523>,  <44.411236, 34.924255, 30.858206>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.059036, 35.619942, 31.027523> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.902134, 35.344383, 31.271347>,  <43.807995, 35.179047, 31.417641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.902134, 35.344383, 31.271347>,  <44.059036, 35.619942, 31.027523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.902134, 35.344383, 31.271347> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305739, 0.527352, 0.792732,
		-0.867561, 0.497317, 0.003767,
		-0.392253, -0.688895, 0.609559,
		43.784458, 35.137714, 31.454214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.684433, 36.022793, 31.559595>,  <44.059036, 35.619942, 31.027523>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.684433, 36.022793, 31.559595> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.740932, 35.652416, 31.699694>,  <43.774834, 35.430191, 31.783752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.740932, 35.652416, 31.699694>,  <43.684433, 36.022793, 31.559595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.740932, 35.652416, 31.699694> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264609, 0.376235, 0.887935,
		-0.953955, -0.032741, 0.298156,
		0.141249, -0.925945, 0.350248,
		43.783306, 35.374634, 31.804768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.625751, 36.123985, 32.175575>,  <43.684433, 36.022793, 31.559595>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.625751, 36.123985, 32.175575> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.778450, 35.754436, 32.186352>,  <43.870068, 35.532707, 32.192818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.778450, 35.754436, 32.186352>,  <43.625751, 36.123985, 32.175575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.778450, 35.754436, 32.186352> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402045, 0.192232, 0.895213,
		-0.832243, -0.330914, 0.444823,
		0.381748, -0.923874, 0.026941,
		43.892975, 35.477276, 32.194435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.435951, 35.927708, 32.829937>,  <43.625751, 36.123985, 32.175575>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.435951, 35.927708, 32.829937> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.721733, 35.668312, 32.724857>,  <43.893204, 35.512676, 32.661808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.721733, 35.668312, 32.724857>,  <43.435951, 35.927708, 32.829937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.721733, 35.668312, 32.724857> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404557, 0.076546, 0.911304,
		-0.570863, -0.757365, 0.317040,
		0.714458, -0.648490, -0.262700,
		43.936069, 35.473766, 32.646046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.406765, 35.405594, 33.276314>,  <43.435951, 35.927708, 32.829937>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.406765, 35.405594, 33.276314> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.774384, 35.401508, 33.118706>,  <43.994953, 35.399059, 33.024139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.774384, 35.401508, 33.118706>,  <43.406765, 35.405594, 33.276314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.774384, 35.401508, 33.118706> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393696, 0.072016, 0.916415,
		0.019019, -0.997351, 0.070206,
		0.919044, -0.010210, -0.394023,
		44.050098, 35.398445, 33.000500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.835758, 34.958599, 33.666447>,  <43.406765, 35.405594, 33.276314>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.835758, 34.958599, 33.666447> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.123158, 35.178005, 33.495380>,  <44.295597, 35.309647, 33.392738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.123158, 35.178005, 33.495380>,  <43.835758, 34.958599, 33.666447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.123158, 35.178005, 33.495380> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472386, 0.066478, 0.878881,
		0.510508, -0.833496, -0.211345,
		0.718494, 0.548512, -0.427669,
		44.338707, 35.342560, 33.367081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.479370, 34.907936, 33.991772>,  <43.835758, 34.958599, 33.666447>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.479370, 34.907936, 33.991772> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.569187, 35.252865, 33.810230>,  <44.623077, 35.459824, 33.701305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.569187, 35.252865, 33.810230>,  <44.479370, 34.907936, 33.991772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.569187, 35.252865, 33.810230> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425053, 0.332435, 0.841913,
		0.876876, -0.381955, -0.291887,
		0.224539, 0.862321, -0.453856,
		44.636547, 35.511562, 33.674072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.221413, 35.075485, 34.140842>,  <44.479370, 34.907936, 33.991772>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.221413, 35.075485, 34.140842> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.027306, 35.416199, 34.061867>,  <44.910843, 35.620625, 34.014481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.027306, 35.416199, 34.061867>,  <45.221413, 35.075485, 34.140842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.027306, 35.416199, 34.061867> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537712, 0.468783, 0.700792,
		0.689480, 0.233904, -0.685498,
		-0.485267, 0.851782, -0.197443,
		44.881725, 35.671734, 34.002632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.888905, 35.023914, 34.420052>,  <45.221413, 35.075485, 34.140842>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.888905, 35.023914, 34.420052> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.009659, 34.698723, 34.619221>,  <46.082111, 34.503609, 34.738724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.009659, 34.698723, 34.619221>,  <45.888905, 35.023914, 34.420052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.009659, 34.698723, 34.619221> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716816, -0.537904, -0.443660,
		0.628523, -0.222987, -0.745142,
		0.301885, -0.812980, 0.497926,
		46.100224, 34.454830, 34.768597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.165012, 34.481152, 33.921036>,  <45.888905, 35.023914, 34.420052>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.165012, 34.481152, 33.921036> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.017681, 34.328072, 34.259945>,  <45.929283, 34.236225, 34.463291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.017681, 34.328072, 34.259945>,  <46.165012, 34.481152, 33.921036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.017681, 34.328072, 34.259945> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712508, -0.469229, -0.521686,
		0.597213, -0.795844, -0.099843,
		-0.368332, -0.382697, 0.847275,
		45.907181, 34.213264, 34.514126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.034836, 33.800930, 33.740974>,  <46.165012, 34.481152, 33.921036>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.034836, 33.800930, 33.740974> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.831947, 33.840256, 34.083450>,  <45.710213, 33.863853, 34.288937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.831947, 33.840256, 34.083450>,  <46.034836, 33.800930, 33.740974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.831947, 33.840256, 34.083450> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651426, -0.694178, -0.306206,
		0.564241, -0.713058, 0.416149,
		-0.507224, 0.098316, 0.856188,
		45.679779, 33.869751, 34.340305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.005188, 33.113842, 33.986359>,  <46.034836, 33.800930, 33.740974>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.005188, 33.113842, 33.986359> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.702980, 33.280251, 34.188789>,  <45.521656, 33.380096, 34.310249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.702980, 33.280251, 34.188789>,  <46.005188, 33.113842, 33.986359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.702980, 33.280251, 34.188789> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547834, -0.824821, -0.139812,
		0.359261, -0.382879, 0.851079,
		-0.755519, 0.416021, 0.506080,
		45.476326, 33.405056, 34.340614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.694500, 32.666595, 34.526978>,  <46.005188, 33.113842, 33.986359>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.694500, 32.666595, 34.526978> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.393024, 32.923119, 34.469475>,  <45.212139, 33.077034, 34.434975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.393024, 32.923119, 34.469475>,  <45.694500, 32.666595, 34.526978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.393024, 32.923119, 34.469475> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651343, -0.758061, 0.033103,
		-0.087744, 0.118583, 0.989060,
		-0.753693, 0.641312, -0.143753,
		45.166916, 33.115513, 34.426350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.153011, 32.455429, 34.970757>,  <45.694500, 32.666595, 34.526978>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.153011, 32.455429, 34.970757> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.944870, 32.686066, 34.718800>,  <44.819984, 32.824448, 34.567623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.944870, 32.686066, 34.718800>,  <45.153011, 32.455429, 34.970757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.944870, 32.686066, 34.718800> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732272, -0.680768, -0.018230,
		-0.439324, 0.451769, 0.776465,
		-0.520357, 0.576593, -0.629896,
		44.788761, 32.859043, 34.529831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.456440, 32.343815, 35.132694>,  <45.153011, 32.455429, 34.970757>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.456440, 32.343815, 35.132694> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.429928, 32.495197, 34.763397>,  <44.414021, 32.586025, 34.541821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.429928, 32.495197, 34.763397>,  <44.456440, 32.343815, 35.132694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.429928, 32.495197, 34.763397> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558246, -0.780978, -0.280062,
		-0.827024, 0.496834, 0.263034,
		-0.066279, 0.378456, -0.923243,
		44.410046, 32.608734, 34.486423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.685440, 32.479950, 35.028790>,  <44.456440, 32.343815, 35.132694>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.685440, 32.479950, 35.028790> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.866589, 32.467247, 34.672386>,  <43.975277, 32.459625, 34.458546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.866589, 32.467247, 34.672386>,  <43.685440, 32.479950, 35.028790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.866589, 32.467247, 34.672386> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746362, -0.560164, -0.359387,
		-0.487697, 0.827772, -0.277389,
		0.452874, -0.031761, -0.891008,
		44.002449, 32.457718, 34.405083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.201374, 32.597755, 34.543533>,  <43.685440, 32.479950, 35.028790>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.201374, 32.597755, 34.543533> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.484955, 32.442112, 34.308254>,  <43.655106, 32.348724, 34.167088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.484955, 32.442112, 34.308254>,  <43.201374, 32.597755, 34.543533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.484955, 32.442112, 34.308254> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687624, -0.566689, -0.453912,
		-0.156705, 0.726263, -0.669318,
		0.708955, -0.389109, -0.588199,
		43.697639, 32.325378, 34.131794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.964619, 32.582645, 33.821972>,  <43.201374, 32.597755, 34.543533>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.964619, 32.582645, 33.821972> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.269005, 32.323162, 33.817883>,  <43.451637, 32.167473, 33.815430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.269005, 32.323162, 33.817883>,  <42.964619, 32.582645, 33.821972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.269005, 32.323162, 33.817883> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526935, -0.608770, -0.593076,
		0.378510, 0.456699, -0.805082,
		0.760967, -0.648710, -0.010225,
		43.497295, 32.128548, 33.814816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.251625, 32.527527, 33.162189>,  <42.964619, 32.582645, 33.821972>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.251625, 32.527527, 33.162189> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.296429, 32.174171, 33.344212>,  <43.323311, 31.962158, 33.453423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.296429, 32.174171, 33.344212>,  <43.251625, 32.527527, 33.162189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.296429, 32.174171, 33.344212> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569459, -0.432343, -0.699139,
		0.814353, -0.180825, -0.551482,
		0.112007, -0.883392, 0.455052,
		43.330032, 31.909153, 33.480728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.422543, 31.902504, 32.666611>,  <43.251625, 32.527527, 33.162189>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.422543, 31.902504, 32.666611> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.292870, 31.705111, 32.989445>,  <43.215065, 31.586676, 33.183144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.292870, 31.705111, 32.989445>,  <43.422543, 31.902504, 32.666611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.292870, 31.705111, 32.989445> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533681, -0.609028, -0.586745,
		0.781084, -0.620935, -0.065929,
		-0.324178, -0.493482, 0.807083,
		43.195618, 31.557066, 33.231571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.413929, 31.202436, 32.400986>,  <43.422543, 31.902504, 32.666611>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.413929, 31.202436, 32.400986> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.234955, 31.182598, 32.758163>,  <43.127571, 31.170694, 32.972469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.234955, 31.182598, 32.758163>,  <43.413929, 31.202436, 32.400986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.234955, 31.182598, 32.758163> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559457, -0.763446, -0.322736,
		0.697720, -0.643965, 0.313842,
		-0.447432, -0.049598, 0.892941,
		43.100727, 31.167719, 33.026047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.637959, 30.511673, 32.684952>,  <43.413929, 31.202436, 32.400986>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.637959, 30.511673, 32.684952> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.288986, 30.642471, 32.830246>,  <43.079601, 30.720951, 32.917423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.288986, 30.642471, 32.830246>,  <43.637959, 30.511673, 32.684952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.288986, 30.642471, 32.830246> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459089, -0.803221, -0.379570,
		0.167636, -0.497904, 0.850876,
		-0.872431, 0.326997, 0.363231,
		43.027256, 30.740570, 32.939217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.203121, 29.875381, 32.705879>,  <43.637959, 30.511673, 32.684952>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.203121, 29.875381, 32.705879> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.919846, 30.146736, 32.784126>,  <42.749882, 30.309549, 32.831074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.919846, 30.146736, 32.784126>,  <43.203121, 29.875381, 32.705879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.919846, 30.146736, 32.784126> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704003, -0.657557, -0.268325,
		-0.053399, -0.327739, 0.943258,
		-0.708187, 0.678385, 0.195616,
		42.707390, 30.350252, 32.842812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.784615, 29.467840, 33.078991>,  <43.203121, 29.875381, 32.705879>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.784615, 29.467840, 33.078991> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.555080, 29.767624, 32.946918>,  <42.417358, 29.947495, 32.867676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.555080, 29.767624, 32.946918>,  <42.784615, 29.467840, 33.078991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.555080, 29.767624, 32.946918> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704457, -0.657321, -0.267712,
		-0.417674, 0.078974, 0.905158,
		-0.573838, 0.749461, -0.330180,
		42.382931, 29.992462, 32.847866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.176216, 29.348997, 33.353806>,  <42.784615, 29.467840, 33.078991>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.176216, 29.348997, 33.353806> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.117130, 29.590065, 33.040127>,  <42.081676, 29.734705, 32.851917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.117130, 29.590065, 33.040127>,  <42.176216, 29.348997, 33.353806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.117130, 29.590065, 33.040127> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694522, -0.627716, -0.351585,
		-0.704144, 0.492709, 0.511292,
		-0.147717, 0.602669, -0.784200,
		42.072815, 29.770866, 32.804867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.343697, 29.374914, 33.268726>,  <42.176216, 29.348997, 33.353806>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.343697, 29.374914, 33.268726> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.539043, 29.446819, 32.927158>,  <41.656250, 29.489962, 32.722218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.539043, 29.446819, 32.927158>,  <41.343697, 29.374914, 33.268726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.539043, 29.446819, 32.927158> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464400, -0.774936, -0.428728,
		-0.738805, 0.605937, -0.294969,
		0.488364, 0.179763, -0.853924,
		41.685555, 29.500748, 32.670982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.794552, 29.318371, 32.832737>,  <41.343697, 29.374914, 33.268726>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.794552, 29.318371, 32.832737> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.121094, 29.263645, 32.608292>,  <41.317017, 29.230810, 32.473625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.121094, 29.263645, 32.608292>,  <40.794552, 29.318371, 32.832737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.121094, 29.263645, 32.608292> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437075, -0.781425, -0.445355,
		-0.377540, 0.608816, -0.697716,
		0.816352, -0.136815, -0.561117,
		41.365997, 29.222601, 32.439957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.545158, 29.296709, 32.078465>,  <40.794552, 29.318371, 32.832737>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.545158, 29.296709, 32.078465> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.905922, 29.123989, 32.082645>,  <41.122379, 29.020357, 32.085155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.905922, 29.123989, 32.082645>,  <40.545158, 29.296709, 32.078465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.905922, 29.123989, 32.082645> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333137, -0.710825, -0.619474,
		0.274921, 0.555225, -0.784948,
		0.901908, -0.431802, 0.010455,
		41.176495, 28.994450, 32.085781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.683636, 29.053320, 31.499249>,  <40.545158, 29.296709, 32.078465>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.683636, 29.053320, 31.499249> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.953381, 28.823496, 31.684772>,  <41.115227, 28.685600, 31.796087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.953381, 28.823496, 31.684772>,  <40.683636, 29.053320, 31.499249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.953381, 28.823496, 31.684772> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229721, -0.760199, -0.607721,
		0.701761, 0.303276, -0.644636,
		0.674359, -0.574561, 0.463809,
		41.155689, 28.651127, 31.823915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.281391, 38.899864, 42.569660> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.935825, 38.741871, 42.444675>,  <40.728485, 38.647076, 42.369686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.935825, 38.741871, 42.444675>,  <41.281391, 38.899864, 42.569660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.935825, 38.741871, 42.444675> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317100, 0.055397, -0.946773,
		0.391270, -0.917016, 0.077391,
		-0.863919, -0.394984, -0.312461,
		40.676651, 38.623375, 42.350937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.513348, 38.355530, 42.169907>,  <41.281391, 38.899864, 42.569660>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.513348, 38.355530, 42.169907> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.142101, 38.475071, 42.081104>,  <40.919353, 38.546795, 42.027824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.142101, 38.475071, 42.081104>,  <41.513348, 38.355530, 42.169907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.142101, 38.475071, 42.081104> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239237, 0.021875, -0.970715,
		-0.285244, -0.954048, -0.091799,
		-0.928117, 0.298853, -0.222004,
		40.863667, 38.564728, 42.014503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.142647, 37.831699, 41.656895>,  <41.513348, 38.355530, 42.169907>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.142647, 37.831699, 41.656895> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.968468, 38.190506, 41.626568>,  <40.863960, 38.405788, 41.608372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.968468, 38.190506, 41.626568>,  <41.142647, 37.831699, 41.656895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.968468, 38.190506, 41.626568> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051336, -0.059336, -0.996917,
		-0.898748, -0.437999, -0.020212,
		-0.435450, 0.897015, -0.075813,
		40.837833, 38.459610, 41.603825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.592560, 37.723930, 41.153542>,  <41.142647, 37.831699, 41.656895>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.592560, 37.723930, 41.153542> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.646336, 38.119312, 41.181507>,  <40.678600, 38.356541, 41.198288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.646336, 38.119312, 41.181507>,  <40.592560, 37.723930, 41.153542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.646336, 38.119312, 41.181507> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024031, 0.067284, -0.997444,
		-0.990630, 0.135780, -0.014708,
		0.134443, 0.988452, 0.069917,
		40.686668, 38.415848, 41.202480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.067196, 38.048759, 40.680298>,  <40.592560, 37.723930, 41.153542>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.067196, 38.048759, 40.680298> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.327152, 38.345581, 40.746021>,  <40.483128, 38.523674, 40.785454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.327152, 38.345581, 40.746021>,  <40.067196, 38.048759, 40.680298>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.327152, 38.345581, 40.746021> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016928, 0.201996, -0.979240,
		-0.759840, 0.639180, 0.118714,
		0.649890, 0.742056, 0.164305,
		40.522118, 38.568199, 40.795311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.808270, 38.546417, 40.345276>,  <40.067196, 38.048759, 40.680298>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.808270, 38.546417, 40.345276> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.195488, 38.640808, 40.379204>,  <40.427818, 38.697441, 40.399563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.195488, 38.640808, 40.379204>,  <39.808270, 38.546417, 40.345276>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.195488, 38.640808, 40.379204> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012846, 0.291146, -0.956592,
		-0.250430, 0.927118, 0.278813,
		0.968049, 0.235978, 0.084822,
		40.485905, 38.711601, 40.404652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.819321, 39.137775, 39.966541>,  <39.808270, 38.546417, 40.345276>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.819321, 39.137775, 39.966541> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.192043, 38.994709, 39.991222>,  <40.415676, 38.908871, 40.006031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.192043, 38.994709, 39.991222>,  <39.819321, 39.137775, 39.966541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.192043, 38.994709, 39.991222> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163889, 0.262952, -0.950787,
		0.323836, 0.896066, 0.303638,
		0.931810, -0.357662, 0.061702,
		40.471588, 38.887409, 40.009731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.299892, 39.657936, 39.629879>,  <39.819321, 39.137775, 39.966541>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.299892, 39.657936, 39.629879> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.477859, 39.300625, 39.604279>,  <40.584641, 39.086239, 39.588917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.477859, 39.300625, 39.604279>,  <40.299892, 39.657936, 39.629879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.477859, 39.300625, 39.604279> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291189, 0.211875, -0.932908,
		0.846910, 0.396430, 0.354381,
		0.444918, -0.893282, -0.064003,
		40.611336, 39.032639, 39.585079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.920803, 39.783302, 39.356091>,  <40.299892, 39.657936, 39.629879>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.920803, 39.783302, 39.356091> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.865540, 39.394150, 39.281895>,  <40.832382, 39.160656, 39.237377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.865540, 39.394150, 39.281895>,  <40.920803, 39.783302, 39.356091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.865540, 39.394150, 39.281895> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296040, 0.138157, -0.945131,
		0.945132, -0.185487, 0.268926,
		-0.138155, -0.972886, -0.185488,
		40.824093, 39.102283, 39.226250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.398041, 39.746761, 38.841751>,  <40.920803, 39.783302, 39.356091>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.398041, 39.746761, 38.841751> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.181644, 39.411133, 38.818844>,  <41.051807, 39.209755, 38.805099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.181644, 39.411133, 38.818844>,  <41.398041, 39.746761, 38.841751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.181644, 39.411133, 38.818844> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435636, -0.221324, -0.872489,
		0.719408, -0.496961, 0.485266,
		-0.540994, -0.839074, -0.057272,
		41.019344, 39.159412, 38.801662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.888882, 39.022095, 38.770180>,  <41.398041, 39.746761, 38.841751>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.888882, 39.022095, 38.770180> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.521248, 39.008190, 38.613174>,  <41.300667, 38.999847, 38.518970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.521248, 39.008190, 38.613174>,  <41.888882, 39.022095, 38.770180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.521248, 39.008190, 38.613174> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393182, -0.014783, -0.919342,
		0.026160, -0.999286, 0.027257,
		-0.919088, -0.034767, -0.392515,
		41.245522, 38.997761, 38.495419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.026890, 38.581860, 38.306042>,  <41.888882, 39.022095, 38.770180>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.026890, 38.581860, 38.306042> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.674728, 38.718830, 38.174809>,  <41.463432, 38.801010, 38.096069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.674728, 38.718830, 38.174809>,  <42.026890, 38.581860, 38.306042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.674728, 38.718830, 38.174809> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332797, -0.046747, -0.941839,
		-0.337844, -0.938382, -0.072801,
		-0.880402, 0.342422, -0.328084,
		41.410606, 38.821556, 38.076382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.898560, 38.196098, 37.697712>,  <42.026890, 38.581860, 38.306042>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.898560, 38.196098, 37.697712> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.679184, 38.529816, 37.675205>,  <41.547558, 38.730045, 37.661701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.679184, 38.529816, 37.675205>,  <41.898560, 38.196098, 37.697712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.679184, 38.529816, 37.675205> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140074, 0.025320, -0.989817,
		-0.824375, -0.550736, -0.130750,
		-0.548439, 0.834295, -0.056271,
		41.514652, 38.780106, 37.658325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.887112, 38.033199, 36.989494>,  <41.898560, 38.196098, 37.697712>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.887112, 38.033199, 36.989494> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.779755, 37.845329, 36.653072>,  <41.715340, 37.732609, 36.451218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.779755, 37.845329, 36.653072>,  <41.887112, 38.033199, 36.989494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.779755, 37.845329, 36.653072> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708922, -0.494837, 0.502559,
		-0.652223, 0.731126, -0.200149,
		-0.268393, -0.469671, -0.841056,
		41.699238, 37.704430, 36.400757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.113026, 37.997475, 36.960518>,  <41.887112, 38.033199, 36.989494>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.113026, 37.997475, 36.960518> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.258305, 37.690639, 36.748985>,  <41.345474, 37.506538, 36.622066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.258305, 37.690639, 36.748985>,  <41.113026, 37.997475, 36.960518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.258305, 37.690639, 36.748985> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542070, -0.635614, 0.549687,
		-0.757790, 0.087018, -0.646670,
		0.363199, -0.767087, -0.528832,
		41.367264, 37.460514, 36.590336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.538326, 37.625214, 36.724972>,  <41.113026, 37.997475, 36.960518>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.538326, 37.625214, 36.724972> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.844147, 37.368031, 36.743130>,  <41.027641, 37.213718, 36.754025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.844147, 37.368031, 36.743130>,  <40.538326, 37.625214, 36.724972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.844147, 37.368031, 36.743130> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573006, -0.645741, 0.504661,
		-0.295166, -0.411850, -0.862123,
		0.764553, -0.642960, 0.045391,
		41.073513, 37.175144, 36.756748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.229164, 36.945564, 36.563309>,  <40.538326, 37.625214, 36.724972>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.229164, 36.945564, 36.563309> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.576958, 36.874451, 36.747654>,  <40.785633, 36.831783, 36.858261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.576958, 36.874451, 36.747654>,  <40.229164, 36.945564, 36.563309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.576958, 36.874451, 36.747654> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439367, -0.704709, 0.557083,
		0.225736, -0.686862, -0.690843,
		0.869482, -0.177780, 0.460863,
		40.837803, 36.821117, 36.885914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.381886, 36.136448, 36.545002>,  <40.229164, 36.945564, 36.563309>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.381886, 36.136448, 36.545002> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.572430, 36.312298, 36.849586>,  <40.686756, 36.417809, 37.032337>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.572430, 36.312298, 36.849586>,  <40.381886, 36.136448, 36.545002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.572430, 36.312298, 36.849586> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386797, -0.672951, 0.630496,
		0.789603, -0.594870, -0.150520,
		0.476356, 0.439621, 0.761458,
		40.715336, 36.444183, 37.078026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.537933, 35.584671, 36.924679>,  <40.381886, 36.136448, 36.545002>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.537933, 35.584671, 36.924679> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.598183, 35.877525, 37.190395>,  <40.634331, 36.053238, 37.349827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.598183, 35.877525, 37.190395>,  <40.537933, 35.584671, 36.924679>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.598183, 35.877525, 37.190395> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404011, -0.567697, 0.717283,
		0.902268, -0.376420, 0.210285,
		0.150621, 0.732140, 0.664293,
		40.643368, 36.097168, 37.389683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.613388, 35.269947, 37.533043>,  <40.537933, 35.584671, 36.924679>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.613388, 35.269947, 37.533043> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.550472, 35.637138, 37.678684>,  <40.512722, 35.857452, 37.766068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.550472, 35.637138, 37.678684>,  <40.613388, 35.269947, 37.533043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.550472, 35.637138, 37.678684> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333957, -0.396416, 0.855177,
		0.929372, 0.012917, 0.368919,
		-0.157292, 0.917980, 0.364104,
		40.503284, 35.912533, 37.787914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.956161, 35.350143, 38.277889>,  <40.613388, 35.269947, 37.533043>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.956161, 35.350143, 38.277889> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.639141, 35.592701, 38.252113>,  <40.448929, 35.738235, 38.236649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.639141, 35.592701, 38.252113>,  <40.956161, 35.350143, 38.277889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.639141, 35.592701, 38.252113> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265045, -0.247370, 0.931965,
		0.549199, 0.755707, 0.356775,
		-0.792548, 0.606396, -0.064441,
		40.401379, 35.774620, 38.232780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.801449, 35.541676, 38.937946>,  <40.956161, 35.350143, 38.277889>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.801449, 35.541676, 38.937946> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.465195, 35.679596, 38.770874>,  <40.263443, 35.762348, 38.670631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.465195, 35.679596, 38.770874>,  <40.801449, 35.541676, 38.937946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.465195, 35.679596, 38.770874> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442806, 0.006524, 0.896594,
		0.311868, 0.938655, 0.147194,
		-0.840631, 0.344797, -0.417676,
		40.213005, 35.783035, 38.645573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.604301, 36.194435, 39.355835>,  <40.801449, 35.541676, 38.937946>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.604301, 36.194435, 39.355835> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.294430, 36.028728, 39.164726>,  <40.108509, 35.929306, 39.050060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.294430, 36.028728, 39.164726>,  <40.604301, 36.194435, 39.355835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.294430, 36.028728, 39.164726> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469279, -0.129798, 0.873458,
		-0.423858, 0.900853, -0.093856,
		-0.774675, -0.414267, -0.477767,
		40.062027, 35.904449, 39.021397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.058613, 36.570858, 39.586578>,  <40.604301, 36.194435, 39.355835>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.058613, 36.570858, 39.586578> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.893097, 36.232304, 39.452473>,  <39.793789, 36.029171, 39.372009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.893097, 36.232304, 39.452473>,  <40.058613, 36.570858, 39.586578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.893097, 36.232304, 39.452473> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664762, 0.029304, 0.746480,
		-0.621987, 0.531760, -0.574772,
		-0.413791, -0.846388, -0.335268,
		39.768959, 35.978386, 39.351891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.300739, 36.720043, 39.619358>,  <40.058613, 36.570858, 39.586578>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.300739, 36.720043, 39.619358> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.362572, 36.324902, 39.625675>,  <39.399670, 36.087818, 39.629467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.362572, 36.324902, 39.625675>,  <39.300739, 36.720043, 39.619358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.362572, 36.324902, 39.625675> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613469, -0.083437, 0.785298,
		-0.774442, -0.131081, -0.618916,
		0.154578, -0.987854, 0.015797,
		39.408947, 36.028545, 39.630413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.717262, 36.458424, 39.735489>,  <39.300739, 36.720043, 39.619358>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.717262, 36.458424, 39.735489> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.957169, 36.155525, 39.838921>,  <39.101112, 35.973785, 39.900978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.957169, 36.155525, 39.838921>,  <38.717262, 36.458424, 39.735489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.957169, 36.155525, 39.838921> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563877, -0.170694, 0.808026,
		-0.567737, -0.630430, -0.529370,
		0.599764, -0.757246, 0.258575,
		39.137096, 35.928352, 39.916492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.290131, 35.981529, 40.080326>,  <38.717262, 36.458424, 39.735489>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.290131, 35.981529, 40.080326> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.639790, 35.836430, 40.209492>,  <38.849586, 35.749371, 40.286991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.639790, 35.836430, 40.209492>,  <38.290131, 35.981529, 40.080326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.639790, 35.836430, 40.209492> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388127, -0.122128, 0.913478,
		-0.291932, -0.923847, -0.247553,
		0.874147, -0.362756, 0.322917,
		38.902035, 35.727604, 40.306366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.193150, 35.399448, 40.350178>,  <38.290131, 35.981529, 40.080326>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.193150, 35.399448, 40.350178> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.536148, 35.494110, 40.532909>,  <38.741947, 35.550907, 40.642548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.536148, 35.494110, 40.532909>,  <38.193150, 35.399448, 40.350178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.536148, 35.494110, 40.532909> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413727, -0.210628, 0.885701,
		0.305831, -0.948487, -0.082700,
		0.857495, 0.236659, 0.456831,
		38.793396, 35.565109, 40.669960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.343765, 34.639069, 40.204437>,  <38.193150, 35.399448, 40.350178>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.343765, 34.639069, 40.204437> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.253296, 34.252811, 40.153236>,  <38.199017, 34.021057, 40.122517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.253296, 34.252811, 40.153236>,  <38.343765, 34.639069, 40.204437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.253296, 34.252811, 40.153236> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063804, 0.145809, -0.987253,
		0.971996, -0.215120, -0.094589,
		-0.226170, -0.965641, -0.128000,
		38.185444, 33.963120, 40.114838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.656361, 34.372169, 39.584187>,  <38.343765, 34.639069, 40.204437>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.656361, 34.372169, 39.584187> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.362930, 34.110287, 39.657097>,  <38.186871, 33.953156, 39.700844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.362930, 34.110287, 39.657097>,  <38.656361, 34.372169, 39.584187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.362930, 34.110287, 39.657097> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290048, 0.059053, -0.955188,
		0.614607, -0.753570, -0.233217,
		-0.733574, -0.654709, 0.182277,
		38.142857, 33.913876, 39.711781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.684414, 33.918865, 39.061455>,  <38.656361, 34.372169, 39.584187>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.684414, 33.918865, 39.061455> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.333591, 33.810551, 39.220177>,  <38.123100, 33.745564, 39.315411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.333591, 33.810551, 39.220177>,  <38.684414, 33.918865, 39.061455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.333591, 33.810551, 39.220177> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414712, 0.009854, -0.909900,
		0.242473, -0.962591, -0.120938,
		-0.877053, -0.270781, 0.396809,
		38.070477, 33.729317, 39.339218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.414764, 33.394459, 38.608425>,  <38.684414, 33.918865, 39.061455>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.414764, 33.394459, 38.608425> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.108307, 33.560749, 38.804466>,  <37.924435, 33.660522, 38.922092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.108307, 33.560749, 38.804466>,  <38.414764, 33.394459, 38.608425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.108307, 33.560749, 38.804466> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532688, 0.015864, -0.846163,
		-0.359545, -0.909353, 0.209296,
		-0.766140, 0.415723, 0.490105,
		37.878464, 33.685467, 38.951496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.825851, 33.089813, 38.342739>,  <38.414764, 33.394459, 38.608425>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.825851, 33.089813, 38.342739> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.700142, 33.441002, 38.487179>,  <37.624718, 33.651714, 38.573841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.700142, 33.441002, 38.487179>,  <37.825851, 33.089813, 38.342739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.700142, 33.441002, 38.487179> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334182, 0.253708, -0.907719,
		-0.888569, -0.405944, 0.213669,
		-0.314274, 0.877976, 0.361096,
		37.605858, 33.704395, 38.595509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.166637, 33.187580, 38.116634>,  <37.825851, 33.089813, 38.342739>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.166637, 33.187580, 38.116634> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.300159, 33.559265, 38.180058>,  <37.380272, 33.782276, 38.218113>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.300159, 33.559265, 38.180058>,  <37.166637, 33.187580, 38.116634>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.300159, 33.559265, 38.180058> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327446, 0.272034, -0.904863,
		-0.883942, 0.250129, 0.395073,
		0.333806, 0.929211, 0.158558,
		37.400303, 33.838028, 38.227627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.651192, 33.488972, 37.911930>,  <37.166637, 33.187580, 38.116634>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.651192, 33.488972, 37.911930> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.948719, 33.756069, 37.900261>,  <37.127235, 33.916328, 37.893257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.948719, 33.756069, 37.900261>,  <36.651192, 33.488972, 37.911930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.948719, 33.756069, 37.900261> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251603, 0.239291, -0.937783,
		-0.619219, 0.704880, 0.345996,
		0.743817, 0.667746, -0.029177,
		37.171864, 33.956394, 37.891506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.379967, 33.878819, 37.512836>,  <36.651192, 33.488972, 37.911930>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.379967, 33.878819, 37.512836> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.753807, 34.021019, 37.517628>,  <36.978111, 34.106339, 37.520500>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.753807, 34.021019, 37.517628>,  <36.379967, 33.878819, 37.512836>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.753807, 34.021019, 37.517628> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141865, 0.403414, -0.903953,
		-0.326184, 0.843136, 0.427464,
		0.934601, 0.355497, 0.011976,
		37.034187, 34.127666, 37.521221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.320721, 34.636951, 37.420048>,  <36.379967, 33.878819, 37.512836>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.320721, 34.636951, 37.420048> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.691841, 34.528866, 37.317150>,  <36.914513, 34.464012, 37.255413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.691841, 34.528866, 37.317150>,  <36.320721, 34.636951, 37.420048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.691841, 34.528866, 37.317150> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130499, 0.410897, -0.902293,
		0.349517, 0.870715, 0.345966,
		0.927797, -0.270219, -0.257243,
		36.970181, 34.447800, 37.239979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.580914, 35.293205, 37.263020>,  <36.320721, 34.636951, 37.420048>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.580914, 35.293205, 37.263020> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.775764, 34.994785, 37.081413>,  <36.892673, 34.815735, 36.972450>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.775764, 34.994785, 37.081413>,  <36.580914, 35.293205, 37.263020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.775764, 34.994785, 37.081413> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090230, 0.474086, -0.875843,
		0.868660, 0.467608, 0.163623,
		0.487123, -0.746046, -0.454012,
		36.921902, 34.770973, 36.945210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.055027, 35.672024, 36.782375>,  <36.580914, 35.293205, 37.263020>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.055027, 35.672024, 36.782375> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.048546, 35.296604, 36.644474>,  <37.044659, 35.071350, 36.561733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.048546, 35.296604, 36.644474>,  <37.055027, 35.672024, 36.782375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.048546, 35.296604, 36.644474> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122468, 0.340342, -0.932292,
		0.992340, -0.057328, 0.109428,
		-0.016204, -0.938552, -0.344756,
		37.043686, 35.015038, 36.541046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.635967, 35.553085, 36.272236>,  <37.055027, 35.672024, 36.782375>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.635967, 35.553085, 36.272236> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.345062, 35.285664, 36.210102>,  <37.170521, 35.125210, 36.172821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.345062, 35.285664, 36.210102>,  <37.635967, 35.553085, 36.272236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.345062, 35.285664, 36.210102> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026925, 0.198348, -0.979762,
		0.685831, -0.716727, -0.126250,
		-0.727263, -0.668552, -0.155331,
		37.126884, 35.085098, 36.163502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.213326, 32.978523, 43.725037> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.846333, 32.931931, 43.572903>,  <37.626137, 32.903976, 43.481621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.846333, 32.931931, 43.572903>,  <38.213326, 32.978523, 43.725037>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.846333, 32.931931, 43.572903> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358439, 0.172465, -0.917484,
		0.172465, -0.978104, -0.116482,
		0.917484, 0.116482, 0.380335,
		37.571087, 32.896984, 43.458801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.250004, 32.424477, 43.333866>,  <38.213326, 32.978523, 43.725037>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.250004, 32.424477, 43.333866> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.930294, 32.623909, 43.199654>,  <37.738468, 32.743568, 43.119125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.930294, 32.623909, 43.199654>,  <38.250004, 32.424477, 43.333866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.930294, 32.623909, 43.199654> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476229, 0.184914, -0.859659,
		-0.366561, -0.846894, -0.385233,
		-0.799274, 0.498576, -0.335533,
		37.690514, 32.773483, 43.098995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.282749, 32.266808, 42.697254>,  <38.250004, 32.424477, 43.333866>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.282749, 32.266808, 42.697254> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.002113, 32.550343, 42.668079>,  <37.833733, 32.720463, 42.650574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.002113, 32.550343, 42.668079>,  <38.282749, 32.266808, 42.697254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.002113, 32.550343, 42.668079> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409521, 0.317328, -0.855333,
		-0.583147, -0.629964, -0.512918,
		-0.701592, 0.708836, -0.072935,
		37.791637, 32.762993, 42.646198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.934582, 32.181992, 42.050632>,  <38.282749, 32.266808, 42.697254>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.934582, 32.181992, 42.050632> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.840179, 32.558292, 42.148029>,  <37.783539, 32.784073, 42.206467>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.840179, 32.558292, 42.148029>,  <37.934582, 32.181992, 42.050632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.840179, 32.558292, 42.148029> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175755, 0.287759, -0.941438,
		-0.955725, -0.179393, -0.233255,
		-0.236008, 0.940751, 0.243490,
		37.769379, 32.840519, 42.221077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.352184, 32.365036, 41.682827>,  <37.934582, 32.181992, 42.050632>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.352184, 32.365036, 41.682827> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.540028, 32.702633, 41.786469>,  <37.652733, 32.905193, 41.848656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.540028, 32.702633, 41.786469>,  <37.352184, 32.365036, 41.682827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.540028, 32.702633, 41.786469> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038193, 0.273787, -0.961032,
		-0.882048, 0.461206, 0.096338,
		0.469609, 0.843997, 0.259108,
		37.680912, 32.955833, 41.864201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009193, 32.867241, 41.316936>,  <37.352184, 32.365036, 41.682827>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.009193, 32.867241, 41.316936> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.349468, 33.039425, 41.437630>,  <37.553631, 33.142735, 41.510048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.349468, 33.039425, 41.437630>,  <37.009193, 32.867241, 41.316936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.349468, 33.039425, 41.437630> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113110, 0.410665, -0.904743,
		-0.513367, 0.803779, 0.300656,
		0.850682, 0.430458, 0.301737,
		37.604671, 33.168564, 41.528152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.875820, 33.419804, 41.095661>,  <37.009193, 32.867241, 41.316936>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.875820, 33.419804, 41.095661> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.272289, 33.434654, 41.146584>,  <37.510170, 33.443565, 41.177135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.272289, 33.434654, 41.146584>,  <36.875820, 33.419804, 41.095661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.272289, 33.434654, 41.146584> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101873, 0.401355, -0.910239,
		-0.084887, 0.915170, 0.394029,
		0.991169, 0.037127, 0.127301,
		37.569641, 33.445793, 41.184772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066132, 33.947334, 40.710320>,  <36.875820, 33.419804, 41.095661>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.066132, 33.947334, 40.710320> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.419437, 33.774967, 40.784245>,  <37.631420, 33.671547, 40.828598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.419437, 33.774967, 40.784245>,  <37.066132, 33.947334, 40.710320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.419437, 33.774967, 40.784245> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357160, 0.362975, -0.860631,
		0.303784, 0.826169, 0.474510,
		0.883262, -0.430922, 0.184809,
		37.684418, 33.645691, 40.839687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.684059, 34.473465, 40.700920>,  <37.066132, 33.947334, 40.710320>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.684059, 34.473465, 40.700920> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.820747, 34.111217, 40.600452>,  <37.902760, 33.893871, 40.540173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.820747, 34.111217, 40.600452>,  <37.684059, 34.473465, 40.700920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.820747, 34.111217, 40.600452> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189423, 0.328144, -0.925441,
		0.920514, 0.268664, 0.283678,
		0.341720, -0.905616, -0.251170,
		37.923264, 33.839531, 40.525101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226768, 34.952759, 41.006298>,  <37.684059, 34.473465, 40.700920>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.226768, 34.952759, 41.006298> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.474106, 35.259521, 41.075008>,  <38.622509, 35.443581, 41.116234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.474106, 35.259521, 41.075008>,  <38.226768, 34.952759, 41.006298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.474106, 35.259521, 41.075008> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349398, 0.072479, 0.934167,
		0.703968, -0.637654, 0.312773,
		0.618345, 0.766906, 0.171772,
		38.659611, 35.489594, 41.126541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.846172, 34.754345, 41.487194>,  <38.226768, 34.952759, 41.006298>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.846172, 34.754345, 41.487194> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.807575, 35.151283, 41.518009>,  <38.784416, 35.389446, 41.536499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.807575, 35.151283, 41.518009>,  <38.846172, 34.754345, 41.487194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.807575, 35.151283, 41.518009> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100510, -0.086721, 0.991150,
		0.990246, 0.087897, 0.108109,
		-0.096494, 0.992348, 0.077041,
		38.778625, 35.448986, 41.541122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.272102, 34.929794, 41.988121>,  <38.846172, 34.754345, 41.487194>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.272102, 34.929794, 41.988121> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.016964, 35.235023, 41.946415>,  <38.863880, 35.418159, 41.921391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.016964, 35.235023, 41.946415>,  <39.272102, 34.929794, 41.988121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.016964, 35.235023, 41.946415> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118106, 0.036868, 0.992316,
		0.761051, 0.645263, 0.066607,
		-0.637850, 0.763070, -0.104268,
		38.825607, 35.463943, 41.915134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.476261, 35.403450, 42.468166>,  <39.272102, 34.929794, 41.988121>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.476261, 35.403450, 42.468166> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.109798, 35.537857, 42.380764>,  <38.889919, 35.618500, 42.328323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.109798, 35.537857, 42.380764>,  <39.476261, 35.403450, 42.468166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.109798, 35.537857, 42.380764> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128666, 0.269760, 0.954293,
		0.379601, 0.902399, -0.203910,
		-0.916160, 0.336014, -0.218509,
		38.834949, 35.638660, 42.315212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.457333, 35.930843, 42.920963>,  <39.476261, 35.403450, 42.468166>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.457333, 35.930843, 42.920963> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.082424, 35.831608, 42.823013>,  <38.857479, 35.772064, 42.764244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.082424, 35.831608, 42.823013>,  <39.457333, 35.930843, 42.920963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.082424, 35.831608, 42.823013> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280067, 0.117678, 0.952740,
		-0.207549, 0.961563, -0.179779,
		-0.937276, -0.248091, -0.244878,
		38.801243, 35.757179, 42.749550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.129841, 36.335110, 43.464840>,  <39.457333, 35.930843, 42.920963>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.129841, 36.335110, 43.464840> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.858215, 36.075882, 43.326927>,  <38.695240, 35.920345, 43.244179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.858215, 36.075882, 43.326927>,  <39.129841, 36.335110, 43.464840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.858215, 36.075882, 43.326927> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414706, -0.048868, 0.908642,
		-0.605715, 0.760009, -0.235575,
		-0.679064, -0.648073, -0.344781,
		38.654495, 35.881458, 43.223492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.491310, 36.485893, 43.766815>,  <39.129841, 36.335110, 43.464840>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.491310, 36.485893, 43.766815> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.436752, 36.109798, 43.642006>,  <38.404018, 35.884144, 43.567120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.436752, 36.109798, 43.642006>,  <38.491310, 36.485893, 43.766815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.436752, 36.109798, 43.642006> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413277, -0.232243, 0.880491,
		-0.900333, 0.249043, -0.356901,
		-0.136393, -0.940234, -0.312020,
		38.395836, 35.827728, 43.548401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698563, 36.269646, 43.766857>,  <38.491310, 36.485893, 43.766815>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.698563, 36.269646, 43.766857> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.957581, 35.971050, 43.828102>,  <38.112991, 35.791893, 43.864849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.957581, 35.971050, 43.828102>,  <37.698563, 36.269646, 43.766857>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.957581, 35.971050, 43.828102> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309263, -0.073804, 0.948108,
		-0.696451, -0.661293, -0.278652,
		0.647543, -0.746488, 0.153113,
		38.151844, 35.747105, 43.874035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.298725, 35.917900, 44.214832>,  <37.698563, 36.269646, 43.766857>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.298725, 35.917900, 44.214832> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.645370, 35.721775, 44.251881>,  <37.853355, 35.604099, 44.274109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.645370, 35.721775, 44.251881>,  <37.298725, 35.917900, 44.214832>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.645370, 35.721775, 44.251881> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245761, -0.257858, 0.934404,
		-0.434269, -0.832526, -0.343963,
		0.866609, -0.490315, 0.092623,
		37.905354, 35.574680, 44.279667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.118225, 35.298542, 44.594261>,  <37.298725, 35.917900, 44.214832>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.118225, 35.298542, 44.594261> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.517227, 35.281746, 44.616928>,  <37.756630, 35.271667, 44.630527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.517227, 35.281746, 44.616928>,  <37.118225, 35.298542, 44.594261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.517227, 35.281746, 44.616928> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059325, -0.064946, 0.996124,
		-0.038137, -0.997005, -0.067275,
		0.997510, -0.041981, 0.056671,
		37.816479, 35.269150, 44.633930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.253071, 34.811653, 45.151287>,  <37.118225, 35.298542, 44.594261>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.253071, 34.811653, 45.151287> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.582798, 35.031578, 45.097321>,  <37.780636, 35.163532, 45.064941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.582798, 35.031578, 45.097321>,  <37.253071, 34.811653, 45.151287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.582798, 35.031578, 45.097321> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176395, -0.022994, 0.984051,
		0.537942, -0.834971, -0.115939,
		0.824320, 0.549814, -0.134916,
		37.830093, 35.196522, 45.056847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.733109, 34.549442, 45.626610>,  <37.253071, 34.811653, 45.151287>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.733109, 34.549442, 45.626610> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.847305, 34.927483, 45.563007>,  <37.915821, 35.154308, 45.524845>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.847305, 34.927483, 45.563007>,  <37.733109, 34.549442, 45.626610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.847305, 34.927483, 45.563007> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193953, 0.105503, 0.975321,
		0.938551, -0.309283, -0.153185,
		0.285489, 0.945099, -0.159006,
		37.932953, 35.211014, 45.515305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.462849, 34.600189, 45.864140>,  <37.733109, 34.549442, 45.626610>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.462849, 34.600189, 45.864140> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.306309, 34.967518, 45.887886>,  <38.212383, 35.187916, 45.902134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.306309, 34.967518, 45.887886>,  <38.462849, 34.600189, 45.864140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.306309, 34.967518, 45.887886> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448427, 0.133972, 0.883722,
		0.803590, 0.372468, -0.464231,
		-0.391352, 0.918324, 0.059366,
		38.188904, 35.243015, 45.905697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.010170, 35.061733, 46.209522>,  <38.462849, 34.600189, 45.864140>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.010170, 35.061733, 46.209522> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.666313, 35.265579, 46.224022>,  <38.459999, 35.387886, 46.232723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.666313, 35.265579, 46.224022>,  <39.010170, 35.061733, 46.209522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.666313, 35.265579, 46.224022> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184917, 0.244216, 0.951927,
		0.476262, 0.825017, -0.304174,
		-0.859640, 0.509613, 0.036249,
		38.408421, 35.418465, 46.234898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.638046, 35.563789, 45.572990> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.939178, 35.307762, 45.511593>,  <33.119858, 35.154148, 45.474754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.939178, 35.307762, 45.511593>,  <32.638046, 35.563789, 45.572990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.939178, 35.307762, 45.511593> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140984, 0.384590, -0.912258,
		0.642935, 0.665138, 0.379771,
		0.752834, -0.640064, -0.153493,
		33.165028, 35.115742, 45.465546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.166069, 35.912922, 45.253670>,  <32.638046, 35.563789, 45.572990>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.166069, 35.912922, 45.253670> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.258331, 35.534275, 45.163597>,  <33.313690, 35.307087, 45.109554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.258331, 35.534275, 45.163597>,  <33.166069, 35.912922, 45.253670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.258331, 35.534275, 45.163597> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127546, 0.258836, -0.957463,
		0.964639, 0.192125, 0.180440,
		0.230657, -0.946621, -0.225179,
		33.327530, 35.250290, 45.096043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.805859, 35.873096, 44.941833>,  <33.166069, 35.912922, 45.253670>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.805859, 35.873096, 44.941833> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.656788, 35.521271, 44.823524>,  <33.567345, 35.310177, 44.752541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.656788, 35.521271, 44.823524>,  <33.805859, 35.873096, 44.941833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.656788, 35.521271, 44.823524> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330535, 0.172003, -0.927988,
		0.867100, -0.443598, 0.226626,
		-0.372673, -0.879566, -0.295769,
		33.544987, 35.257401, 44.734795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.362907, 35.566544, 44.563881>,  <33.805859, 35.873096, 44.941833>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.362907, 35.566544, 44.563881> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.029774, 35.383236, 44.439709>,  <33.829891, 35.273251, 44.365204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.029774, 35.383236, 44.439709>,  <34.362907, 35.566544, 44.563881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.029774, 35.383236, 44.439709> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212692, 0.252826, -0.943844,
		0.511023, -0.852095, -0.113092,
		-0.832837, -0.458272, -0.310434,
		33.779922, 35.245754, 44.346577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.570869, 35.133457, 44.016525>,  <34.362907, 35.566544, 44.563881>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.570869, 35.133457, 44.016525> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.183693, 35.227020, 43.979908>,  <33.951389, 35.283157, 43.957935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.183693, 35.227020, 43.979908>,  <34.570869, 35.133457, 44.016525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.183693, 35.227020, 43.979908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114986, 0.088591, -0.989409,
		-0.223324, -0.968213, -0.112647,
		-0.967938, 0.233912, -0.091547,
		33.893311, 35.297195, 43.952442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.319981, 34.683060, 43.523636>,  <34.570869, 35.133457, 44.016525>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.319981, 34.683060, 43.523636> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.063877, 34.990059, 43.510883>,  <33.910213, 35.174259, 43.503231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.063877, 34.990059, 43.510883>,  <34.319981, 34.683060, 43.523636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.063877, 34.990059, 43.510883> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102014, 0.043824, -0.993817,
		-0.761356, -0.639551, -0.106354,
		-0.640258, 0.767498, -0.031877,
		33.871799, 35.220310, 43.501320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.102146, 34.680538, 42.866062>,  <34.319981, 34.683060, 43.523636>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.102146, 34.680538, 42.866062> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.948887, 35.031311, 42.982121>,  <33.856934, 35.241776, 43.051754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.948887, 35.031311, 42.982121>,  <34.102146, 34.680538, 42.866062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.948887, 35.031311, 42.982121> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032987, 0.326905, -0.944481,
		-0.923099, -0.352301, -0.154179,
		-0.383144, 0.876936, 0.290145,
		33.833942, 35.294392, 43.069164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.590679, 34.895927, 42.316051>,  <34.102146, 34.680538, 42.866062>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.590679, 34.895927, 42.316051> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.704411, 35.229286, 42.505619>,  <33.772652, 35.429302, 42.619362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.704411, 35.229286, 42.505619>,  <33.590679, 34.895927, 42.316051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.704411, 35.229286, 42.505619> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193727, 0.534071, -0.822944,
		-0.938950, 0.142176, 0.313305,
		0.284330, 0.833399, 0.473923,
		33.789711, 35.479305, 42.647797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.141766, 35.392857, 42.170109>,  <33.590679, 34.895927, 42.316051>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.141766, 35.392857, 42.170109> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.458405, 35.608810, 42.284584>,  <33.648388, 35.738384, 42.353268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.458405, 35.608810, 42.284584>,  <33.141766, 35.392857, 42.170109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.458405, 35.608810, 42.284584> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004584, 0.463091, -0.886299,
		-0.611031, 0.702900, 0.364105,
		0.791593, 0.539888, 0.286185,
		33.695881, 35.770775, 42.370438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.103802, 36.088860, 41.835861>,  <33.141766, 35.392857, 42.170109>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.103802, 36.088860, 41.835861> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.492252, 36.115494, 41.927490>,  <33.725323, 36.131474, 41.982468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.492252, 36.115494, 41.927490>,  <33.103802, 36.088860, 41.835861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.492252, 36.115494, 41.927490> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201293, 0.286608, -0.936663,
		-0.128023, 0.955731, 0.264930,
		0.971129, 0.066586, 0.229075,
		33.783592, 36.135471, 41.996212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.377941, 36.749607, 41.557320>,  <33.103802, 36.088860, 41.835861>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.377941, 36.749607, 41.557320> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.719402, 36.542793, 41.582478>,  <33.924278, 36.418705, 41.597572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.719402, 36.542793, 41.582478>,  <33.377941, 36.749607, 41.557320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.719402, 36.542793, 41.582478> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287334, 0.366774, -0.884825,
		0.434421, 0.773401, 0.461659,
		0.853649, -0.517037, 0.062890,
		33.975498, 36.387684, 41.601345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.876266, 37.186005, 41.445427>,  <33.377941, 36.749607, 41.557320>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.876266, 37.186005, 41.445427> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.058865, 36.839756, 41.363155>,  <34.168423, 36.632008, 41.313793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.058865, 36.839756, 41.363155>,  <33.876266, 37.186005, 41.445427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.058865, 36.839756, 41.363155> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337388, 0.382327, -0.860230,
		0.823273, 0.323298, 0.466583,
		0.456498, -0.865624, -0.205682,
		34.195812, 36.580070, 41.301449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.609390, 37.366310, 41.248489>,  <33.876266, 37.186005, 41.445427>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.609390, 37.366310, 41.248489> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.535679, 36.994614, 41.120399>,  <34.491451, 36.771595, 41.043545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.535679, 36.994614, 41.120399>,  <34.609390, 37.366310, 41.248489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.535679, 36.994614, 41.120399> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354869, 0.240923, -0.903340,
		0.916574, -0.280109, 0.285362,
		-0.184283, -0.929244, -0.320226,
		34.480392, 36.715839, 41.024330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.114796, 37.250278, 40.663147>,  <34.609390, 37.366310, 41.248489>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.114796, 37.250278, 40.663147> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.825451, 36.981438, 40.599861>,  <34.651844, 36.820133, 40.561890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.825451, 36.981438, 40.599861>,  <35.114796, 37.250278, 40.663147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.825451, 36.981438, 40.599861> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064537, 0.162317, -0.984626,
		0.687450, -0.722448, -0.074038,
		-0.723359, -0.672103, -0.158210,
		34.608444, 36.779808, 40.552399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.826244, 37.174149, 40.548504>,  <35.114796, 37.250278, 40.663147>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.826244, 37.174149, 40.548504> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.891491, 37.553661, 40.656727>,  <35.930637, 37.781368, 40.721661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.891491, 37.553661, 40.656727>,  <35.826244, 37.174149, 40.548504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.891491, 37.553661, 40.656727> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282398, -0.217861, 0.934231,
		0.945329, -0.228790, 0.232399,
		0.163112, 0.948784, 0.270560,
		35.940426, 37.838295, 40.737896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.217522, 37.120975, 41.169056>,  <35.826244, 37.174149, 40.548504>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.217522, 37.120975, 41.169056> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.086163, 37.498116, 41.191658>,  <36.007347, 37.724400, 41.205219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.086163, 37.498116, 41.191658>,  <36.217522, 37.120975, 41.169056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.086163, 37.498116, 41.191658> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095808, -0.092765, 0.991068,
		0.939669, 0.320048, 0.120796,
		-0.328395, 0.942849, 0.056505,
		35.987644, 37.780972, 41.208611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.725235, 37.594490, 41.543877>,  <36.217522, 37.120975, 41.169056>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.725235, 37.594490, 41.543877> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.358105, 37.752819, 41.555946>,  <36.137825, 37.847816, 41.563190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.358105, 37.752819, 41.555946>,  <36.725235, 37.594490, 41.543877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.358105, 37.752819, 41.555946> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056680, 0.055432, 0.996852,
		0.392907, 0.916651, -0.073313,
		-0.917830, 0.395826, 0.030177,
		36.082756, 37.871567, 41.564999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.836765, 38.144199, 41.966450>,  <36.725235, 37.594490, 41.543877>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.836765, 38.144199, 41.966450> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.445755, 38.060024, 41.971436>,  <36.211147, 38.009521, 41.974426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.445755, 38.060024, 41.971436>,  <36.836765, 38.144199, 41.966450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.445755, 38.060024, 41.971436> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044867, 0.265446, 0.963081,
		-0.205973, 0.940881, -0.268922,
		-0.977529, -0.210435, 0.012460,
		36.152496, 37.996895, 41.975174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.423325, 38.784603, 42.229073>,  <36.836765, 38.144199, 41.966450>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.423325, 38.784603, 42.229073> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.194168, 38.460705, 42.279839>,  <36.056675, 38.266365, 42.310299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.194168, 38.460705, 42.279839>,  <36.423325, 38.784603, 42.229073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.194168, 38.460705, 42.279839> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090330, 0.216280, 0.972144,
		-0.814636, 0.545472, -0.197049,
		-0.572895, -0.809743, 0.126917,
		36.022301, 38.217781, 42.317913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.157150, 38.843311, 42.899296>,  <36.423325, 38.784603, 42.229073>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.157150, 38.843311, 42.899296> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.040821, 38.463360, 42.853413>,  <35.971024, 38.235390, 42.825882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.040821, 38.463360, 42.853413>,  <36.157150, 38.843311, 42.899296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.040821, 38.463360, 42.853413> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209444, -0.053782, 0.976341,
		-0.933573, 0.307964, -0.183305,
		-0.290819, -0.949877, -0.114710,
		35.953575, 38.178398, 42.819000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.481968, 38.759663, 43.295681>,  <36.157150, 38.843311, 42.899296>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.481968, 38.759663, 43.295681> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.657410, 38.402042, 43.259247>,  <35.762672, 38.187469, 43.237385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.657410, 38.402042, 43.259247>,  <35.481968, 38.759663, 43.295681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.657410, 38.402042, 43.259247> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159219, -0.177061, 0.971236,
		-0.884465, -0.411483, -0.220009,
		0.438602, -0.894054, -0.091089,
		35.788990, 38.133827, 43.231922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.974636, 38.304363, 43.641087>,  <35.481968, 38.759663, 43.295681>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.974636, 38.304363, 43.641087> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.314373, 38.094635, 43.616734>,  <35.518215, 37.968800, 43.602123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.314373, 38.094635, 43.616734>,  <34.974636, 38.304363, 43.641087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.314373, 38.094635, 43.616734> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039441, -0.051975, 0.997869,
		-0.526369, -0.849932, -0.023465,
		0.849341, -0.524322, -0.060881,
		35.569176, 37.937340, 43.598469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.872993, 37.655518, 43.989079>,  <34.974636, 38.304363, 43.641087>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.872993, 37.655518, 43.989079> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.265667, 37.730366, 44.003452>,  <35.501270, 37.775276, 44.012077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.265667, 37.730366, 44.003452>,  <34.872993, 37.655518, 43.989079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.265667, 37.730366, 44.003452> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023229, -0.069643, 0.997301,
		0.189121, -0.979864, -0.064020,
		0.981679, 0.187124, 0.035932,
		35.560169, 37.786503, 44.014233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.205048, 37.170326, 44.418308>,  <34.872993, 37.655518, 43.989079>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.205048, 37.170326, 44.418308> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.484932, 37.455719, 44.403660>,  <35.652863, 37.626957, 44.394871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.484932, 37.455719, 44.403660>,  <35.205048, 37.170326, 44.418308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.484932, 37.455719, 44.403660> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197554, -0.143964, 0.969663,
		0.686569, -0.685720, -0.241685,
		0.699711, 0.713486, -0.036625,
		35.694847, 37.669765, 44.392673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.850346, 36.866180, 44.700989>,  <35.205048, 37.170326, 44.418308>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.850346, 36.866180, 44.700989> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.806458, 37.261063, 44.747280>,  <35.780125, 37.497990, 44.775055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.806458, 37.261063, 44.747280>,  <35.850346, 36.866180, 44.700989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.806458, 37.261063, 44.747280> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070691, -0.123887, 0.989775,
		0.991446, 0.100418, 0.083380,
		-0.109720, 0.987202, 0.115729,
		35.773540, 37.557224, 44.781998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.193474, 37.054775, 45.279041>,  <35.850346, 36.866180, 44.700989>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.193474, 37.054775, 45.279041> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.957497, 37.376274, 45.248154>,  <35.815910, 37.569172, 45.229622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.957497, 37.376274, 45.248154>,  <36.193474, 37.054775, 45.279041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.957497, 37.376274, 45.248154> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109141, 0.015377, 0.993907,
		0.800036, 0.594774, 0.078650,
		-0.589941, 0.803746, -0.077217,
		35.780514, 37.617397, 45.224987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482719, 37.509308, 45.764164>,  <36.193474, 37.054775, 45.279041>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.482719, 37.509308, 45.764164> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.096550, 37.600803, 45.714149>,  <35.864849, 37.655701, 45.684139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.096550, 37.600803, 45.714149>,  <36.482719, 37.509308, 45.764164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.096550, 37.600803, 45.714149> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115018, 0.056684, 0.991745,
		0.233943, 0.971835, -0.028415,
		-0.965423, 0.228743, -0.125039,
		35.806923, 37.669426, 45.676640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.350269, 37.995331, 46.238693>,  <36.482719, 37.509308, 45.764164>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.350269, 37.995331, 46.238693> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.004154, 37.822044, 46.137821>,  <35.796486, 37.718071, 46.077297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.004154, 37.822044, 46.137821>,  <36.350269, 37.995331, 46.238693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.004154, 37.822044, 46.137821> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255681, -0.051279, 0.965400,
		-0.431161, 0.899829, -0.066395,
		-0.865290, -0.433219, -0.252179,
		35.744568, 37.692078, 46.062168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.735062, 38.347702, 46.702652>,  <36.350269, 37.995331, 46.238693>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.735062, 38.347702, 46.702652> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.059879, 38.268913, 46.922394>,  <37.254768, 38.221642, 47.054237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.059879, 38.268913, 46.922394>,  <36.735062, 38.347702, 46.702652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.059879, 38.268913, 46.922394> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571805, 0.080276, -0.816453,
		0.116720, 0.977117, 0.177818,
		0.812044, -0.196973, 0.549351,
		37.303493, 38.209820, 47.087200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.154842, 38.776627, 46.331707>,  <36.735062, 38.347702, 46.702652>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.154842, 38.776627, 46.331707> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.397903, 38.524887, 46.525486>,  <37.543739, 38.373844, 46.641754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.397903, 38.524887, 46.525486>,  <37.154842, 38.776627, 46.331707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.397903, 38.524887, 46.525486> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674074, 0.086121, -0.733627,
		0.419983, 0.772340, 0.476555,
		0.607651, -0.629344, 0.484445,
		37.580200, 38.336082, 46.670818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817677, 39.102688, 46.407379>,  <37.154842, 38.776627, 46.331707>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.817677, 39.102688, 46.407379> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.883751, 38.711033, 46.454716>,  <37.923397, 38.476040, 46.483116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.883751, 38.711033, 46.454716>,  <37.817677, 39.102688, 46.407379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.883751, 38.711033, 46.454716> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656526, 0.019623, -0.754048,
		0.735993, 0.202254, 0.646070,
		0.165187, -0.979137, 0.118343,
		37.933308, 38.417294, 46.490219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.546551, 38.993805, 46.575951>,  <37.817677, 39.102688, 46.407379>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.546551, 38.993805, 46.575951> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.388412, 38.661633, 46.418934>,  <38.293530, 38.462330, 46.324726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.388412, 38.661633, 46.418934>,  <38.546551, 38.993805, 46.575951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.388412, 38.661633, 46.418934> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607204, 0.084377, -0.790053,
		0.689204, -0.550697, 0.470882,
		-0.395348, -0.830430, -0.392539,
		38.269810, 38.412502, 46.301170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.168053, 38.611404, 46.283772>,  <38.546551, 38.993805, 46.575951>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.168053, 38.611404, 46.283772> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.884850, 38.404003, 46.091988>,  <38.714928, 38.279564, 45.976917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.884850, 38.404003, 46.091988>,  <39.168053, 38.611404, 46.283772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.884850, 38.404003, 46.091988> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607961, -0.102065, -0.787379,
		0.359319, -0.848965, 0.387490,
		-0.708006, -0.518499, -0.479464,
		38.672447, 38.248455, 45.948147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.443333, 37.996376, 46.024670>,  <39.168053, 38.611404, 46.283772>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.443333, 37.996376, 46.024670> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.118107, 38.067780, 45.803017>,  <38.922970, 38.110622, 45.670025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.118107, 38.067780, 45.803017>,  <39.443333, 37.996376, 46.024670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.118107, 38.067780, 45.803017> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545900, -0.096951, -0.832222,
		-0.202283, -0.979150, -0.018621,
		-0.813065, 0.178509, -0.554130,
		38.874187, 38.121334, 45.636776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.598812, 37.664879, 45.395969>,  <39.443333, 37.996376, 46.024670>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.598812, 37.664879, 45.395969> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.276119, 37.877026, 45.291737>,  <39.082504, 38.004314, 45.229195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.276119, 37.877026, 45.291737>,  <39.598812, 37.664879, 45.395969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.276119, 37.877026, 45.291737> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359976, 0.091362, -0.928478,
		-0.468623, -0.842833, -0.264622,
		-0.806728, 0.530364, -0.260585,
		39.034100, 38.036133, 45.213562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.282963, 37.375301, 44.883598>,  <39.598812, 37.664879, 45.395969>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.282963, 37.375301, 44.883598> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.182484, 37.760738, 44.846962>,  <39.122196, 37.992001, 44.824982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.182484, 37.760738, 44.846962>,  <39.282963, 37.375301, 44.883598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.182484, 37.760738, 44.846962> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244959, -0.028255, -0.969122,
		-0.936427, -0.265876, -0.228943,
		-0.251197, 0.963593, -0.091588,
		39.107124, 38.049816, 44.819485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.983536, 37.460712, 44.254284>,  <39.282963, 37.375301, 44.883598>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.983536, 37.460712, 44.254284> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.066189, 37.846352, 44.320999>,  <39.115780, 38.077736, 44.361031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.066189, 37.846352, 44.320999>,  <38.983536, 37.460712, 44.254284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.066189, 37.846352, 44.320999> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130498, 0.141792, -0.981257,
		-0.969678, 0.224523, -0.096514,
		0.206630, 0.964098, 0.166793,
		39.128178, 38.135582, 44.371037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.631992, 37.845222, 43.661587>,  <38.983536, 37.460712, 44.254284>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.631992, 37.845222, 43.661587> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.888901, 38.112659, 43.811508>,  <39.043045, 38.273121, 43.901463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.888901, 38.112659, 43.811508>,  <38.631992, 37.845222, 43.661587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.888901, 38.112659, 43.811508> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406853, 0.117035, -0.905966,
		-0.649584, 0.734365, -0.196849,
		0.642271, 0.668589, 0.374802,
		39.081581, 38.313236, 43.923950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.628666, 38.473759, 43.263020>,  <38.631992, 37.845222, 43.661587>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.628666, 38.473759, 43.263020> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.979782, 38.514309, 43.450298>,  <39.190453, 38.538639, 43.562664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.979782, 38.514309, 43.450298>,  <38.628666, 38.473759, 43.263020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.979782, 38.514309, 43.450298> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431765, 0.255952, -0.864909,
		-0.207519, 0.961359, 0.180901,
		0.877790, 0.101378, 0.468196,
		39.243118, 38.544724, 43.590755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.887344, 39.188160, 43.062435>,  <38.628666, 38.473759, 43.263020>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.887344, 39.188160, 43.062435> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.179806, 38.941689, 43.179558>,  <39.355282, 38.793804, 43.249832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.179806, 38.941689, 43.179558>,  <38.887344, 39.188160, 43.062435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.179806, 38.941689, 43.179558> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530513, 0.243690, -0.811894,
		0.428917, 0.748958, 0.505066,
		0.731154, -0.616179, 0.292809,
		39.399151, 38.756836, 43.267399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.578907, 39.582428, 43.050983>,  <38.887344, 39.188160, 43.062435>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.578907, 39.582428, 43.050983> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.690002, 39.199924, 43.014248>,  <39.756660, 38.970421, 42.992207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.690002, 39.199924, 43.014248>,  <39.578907, 39.582428, 43.050983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.690002, 39.199924, 43.014248> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559521, 0.238729, -0.793691,
		0.780897, 0.169052, 0.601350,
		0.277734, -0.956258, -0.091834,
		39.773323, 38.913048, 42.986698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.273720, 39.690189, 42.948597>,  <39.578907, 39.582428, 43.050983>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.273720, 39.690189, 42.948597> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.204086, 39.316685, 42.823517>,  <40.162308, 39.092583, 42.748466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.204086, 39.316685, 42.823517>,  <40.273720, 39.690189, 42.948597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.204086, 39.316685, 42.823517> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543988, 0.173513, -0.820957,
		0.820837, -0.313019, 0.477751,
		-0.174079, -0.933763, -0.312704,
		40.151863, 39.036556, 42.729706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.719828, 30.348728, 27.468521> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.365015, 30.209530, 27.347147>,  <28.152126, 30.126011, 27.274323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.365015, 30.209530, 27.347147>,  <28.719828, 30.348728, 27.468521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.365015, 30.209530, 27.347147> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461492, 0.648186, 0.605706,
		-0.014103, 0.677313, -0.735560,
		-0.887032, -0.347997, -0.303433,
		28.098906, 30.105131, 27.256117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.374487, 30.945080, 27.393877>,  <28.719828, 30.348728, 27.468521>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.374487, 30.945080, 27.393877> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.095516, 30.662695, 27.443211>,  <27.928133, 30.493263, 27.472811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.095516, 30.662695, 27.443211>,  <28.374487, 30.945080, 27.393877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.095516, 30.662695, 27.443211> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471450, 0.581573, 0.662954,
		-0.539748, 0.404217, -0.738431,
		-0.697429, -0.705962, 0.123334,
		27.886288, 30.450907, 27.480211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.717363, 31.263985, 27.379679>,  <28.374487, 30.945080, 27.393877>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.717363, 31.263985, 27.379679> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.628754, 30.928942, 27.579414>,  <27.575588, 30.727917, 27.699257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.628754, 30.928942, 27.579414>,  <27.717363, 31.263985, 27.379679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.628754, 30.928942, 27.579414> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422903, 0.543922, 0.724777,
		-0.878681, -0.050618, -0.474718,
		-0.221522, -0.837608, 0.499341,
		27.562298, 30.677660, 27.729218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.056801, 31.340221, 27.506241>,  <27.717363, 31.263985, 27.379679>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.056801, 31.340221, 27.506241> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.198364, 31.075394, 27.770487>,  <27.283302, 30.916496, 27.929033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.198364, 31.075394, 27.770487>,  <27.056801, 31.340221, 27.506241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.198364, 31.075394, 27.770487> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380615, 0.543241, 0.748346,
		-0.854330, -0.516286, -0.059736,
		0.353910, -0.662071, 0.660614,
		27.304537, 30.876772, 27.968672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.506031, 31.246204, 27.903700>,  <27.056801, 31.340221, 27.506241>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.506031, 31.246204, 27.903700> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.833763, 31.142677, 28.108332>,  <27.030401, 31.080561, 28.231112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.833763, 31.142677, 28.108332>,  <26.506031, 31.246204, 27.903700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.833763, 31.142677, 28.108332> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360732, 0.460820, 0.810874,
		-0.445616, -0.848915, 0.284199,
		0.819328, -0.258819, 0.511580,
		27.079561, 31.065031, 28.261806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.257494, 31.160303, 28.590738>,  <26.506031, 31.246204, 27.903700>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.257494, 31.160303, 28.590738> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.650711, 31.223013, 28.628782>,  <26.886642, 31.260639, 28.651609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.650711, 31.223013, 28.628782>,  <26.257494, 31.160303, 28.590738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.650711, 31.223013, 28.628782> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150016, 0.389316, 0.908806,
		0.105447, -0.907665, 0.406233,
		0.983044, 0.156773, 0.095112,
		26.945623, 31.270044, 28.657316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.419998, 31.012960, 29.246393>,  <26.257494, 31.160303, 28.590738>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.419998, 31.012960, 29.246393> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.742672, 31.228992, 29.150415>,  <26.936277, 31.358612, 29.092829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.742672, 31.228992, 29.150415>,  <26.419998, 31.012960, 29.246393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.742672, 31.228992, 29.150415> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030372, 0.443363, 0.895828,
		0.590201, -0.715363, 0.374057,
		0.806685, 0.540079, -0.239946,
		26.984678, 31.391016, 29.078432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.793436, 30.994183, 29.830502>,  <26.419998, 31.012960, 29.246393>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.793436, 30.994183, 29.830502> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.958252, 31.306189, 29.642118>,  <27.057142, 31.493391, 29.529089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.958252, 31.306189, 29.642118>,  <26.793436, 30.994183, 29.830502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.958252, 31.306189, 29.642118> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049104, 0.535134, 0.843339,
		0.909841, -0.324364, 0.258798,
		0.412040, 0.780013, -0.470960,
		27.081863, 31.540192, 29.500830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.335251, 31.251673, 30.298964>,  <26.793436, 30.994183, 29.830502>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.335251, 31.251673, 30.298964> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.249292, 31.551991, 30.049124>,  <27.197718, 31.732182, 29.899220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.249292, 31.551991, 30.049124>,  <27.335251, 31.251673, 30.298964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.249292, 31.551991, 30.049124> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068778, 0.626320, 0.776526,
		0.974212, 0.209831, -0.082955,
		-0.214896, 0.750795, -0.624600,
		27.184824, 31.777229, 29.861744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.855345, 31.683336, 30.395380>,  <27.335251, 31.251673, 30.298964>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.855345, 31.683336, 30.395380> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.534843, 31.877926, 30.256050>,  <27.342543, 31.994680, 30.172451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.534843, 31.877926, 30.256050>,  <27.855345, 31.683336, 30.395380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.534843, 31.877926, 30.256050> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007415, 0.574053, 0.818785,
		0.598277, 0.658638, -0.456355,
		-0.801255, 0.486476, -0.348326,
		27.294466, 32.023869, 30.151552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.951654, 32.458775, 30.483252>,  <27.855345, 31.683336, 30.395380>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.951654, 32.458775, 30.483252> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.557497, 32.402649, 30.444656>,  <27.321003, 32.368973, 30.421499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.557497, 32.402649, 30.444656>,  <27.951654, 32.458775, 30.483252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.557497, 32.402649, 30.444656> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168856, 0.731747, 0.660329,
		-0.022048, 0.666977, -0.744752,
		-0.985394, -0.140315, -0.096489,
		27.261879, 32.360554, 30.415710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.626263, 33.231773, 30.374365>,  <27.951654, 32.458775, 30.483252>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.626263, 33.231773, 30.374365> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.339190, 32.972702, 30.476686>,  <27.166945, 32.817257, 30.538080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.339190, 32.972702, 30.476686>,  <27.626263, 33.231773, 30.374365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.339190, 32.972702, 30.476686> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253372, 0.585035, 0.770414,
		-0.648638, 0.488100, -0.583975,
		-0.717684, -0.647682, 0.255805,
		27.123884, 32.778397, 30.553429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.099657, 33.663212, 30.562708>,  <27.626263, 33.231773, 30.374365>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.099657, 33.663212, 30.562708> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.983513, 33.322002, 30.736160>,  <26.913826, 33.117275, 30.840233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.983513, 33.322002, 30.736160>,  <27.099657, 33.663212, 30.562708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.983513, 33.322002, 30.736160> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356689, 0.516977, 0.778144,
		-0.887955, 0.071269, -0.454374,
		-0.290358, -0.853027, 0.433632,
		26.896406, 33.066093, 30.866249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.513380, 33.811253, 30.877361>,  <27.099657, 33.663212, 30.562708>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.513380, 33.811253, 30.877361> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.573252, 33.461418, 31.061838>,  <26.609175, 33.251518, 31.172525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.573252, 33.461418, 31.061838>,  <26.513380, 33.811253, 30.877361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.573252, 33.461418, 31.061838> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309783, 0.401481, 0.861886,
		-0.938952, -0.271875, -0.210839,
		0.149678, -0.874584, 0.461194,
		26.618155, 33.199043, 31.200197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.827629, 33.630341, 31.228830>,  <26.513380, 33.811253, 30.877361>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.827629, 33.630341, 31.228830> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.134327, 33.444839, 31.406385>,  <26.318346, 33.333538, 31.512918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.134327, 33.444839, 31.406385>,  <25.827629, 33.630341, 31.228830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.134327, 33.444839, 31.406385> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251206, 0.419571, 0.872270,
		-0.590764, -0.780314, 0.205205,
		0.766743, -0.463757, 0.443887,
		26.364349, 33.305714, 31.539551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.641018, 33.531475, 31.923660>,  <25.827629, 33.630341, 31.228830>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.641018, 33.531475, 31.923660> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.026175, 33.432499, 31.966763>,  <26.257269, 33.373116, 31.992624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.026175, 33.432499, 31.966763>,  <25.641018, 33.531475, 31.923660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.026175, 33.432499, 31.966763> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020621, 0.465557, 0.884778,
		-0.269094, -0.849724, 0.453384,
		0.962893, -0.247438, 0.107757,
		26.315042, 33.358269, 31.999090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.696695, 33.280594, 32.634010>,  <25.641018, 33.531475, 31.923660>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.696695, 33.280594, 32.634010> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.055431, 33.403236, 32.506470>,  <26.270674, 33.476822, 32.429943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.055431, 33.403236, 32.506470>,  <25.696695, 33.280594, 32.634010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.055431, 33.403236, 32.506470> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136586, 0.493657, 0.858864,
		0.420733, -0.813817, 0.400855,
		0.896843, 0.306601, -0.318854,
		26.324484, 33.495216, 32.410812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.206964, 33.226681, 33.277126>,  <25.696695, 33.280594, 32.634010>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.206964, 33.226681, 33.277126> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.332523, 33.495308, 33.008659>,  <26.407860, 33.656483, 32.847580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.332523, 33.495308, 33.008659>,  <26.206964, 33.226681, 33.277126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.332523, 33.495308, 33.008659> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169181, 0.656020, 0.735538,
		0.934262, -0.344433, 0.092307,
		0.313898, 0.671568, -0.671166,
		26.426693, 33.696777, 32.807308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.914539, 33.508858, 33.549297>,  <26.206964, 33.226681, 33.277126>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.914539, 33.508858, 33.549297> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.775351, 33.780960, 33.291252>,  <26.691837, 33.944221, 33.136425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.775351, 33.780960, 33.291252>,  <26.914539, 33.508858, 33.549297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.775351, 33.780960, 33.291252> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219497, 0.728106, 0.649371,
		0.911448, 0.084362, -0.402674,
		-0.347972, 0.680254, -0.645113,
		26.670959, 33.985035, 33.097717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.446173, 33.959610, 33.471107>,  <26.914539, 33.508858, 33.549297>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.446173, 33.959610, 33.471107> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.133011, 34.186554, 33.369003>,  <26.945114, 34.322720, 33.307743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.133011, 34.186554, 33.369003>,  <27.446173, 33.959610, 33.471107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.133011, 34.186554, 33.369003> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380598, 0.761337, 0.524891,
		0.492142, 0.313789, -0.811993,
		-0.782906, 0.567364, -0.255259,
		26.898140, 34.356762, 33.292427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.635586, 34.607265, 33.550739>,  <27.446173, 33.959610, 33.471107>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.635586, 34.607265, 33.550739> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.246771, 34.692997, 33.512363>,  <27.013481, 34.744438, 33.489338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.246771, 34.692997, 33.512363>,  <27.635586, 34.607265, 33.550739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.246771, 34.692997, 33.512363> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175950, 0.935337, 0.306897,
		0.155515, 0.281435, -0.946895,
		-0.972037, 0.214333, -0.095940,
		26.955160, 34.757298, 33.483582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.286400, 34.285751, 33.764809>,  <27.635586, 34.607265, 33.550739>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.286400, 34.285751, 33.764809> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.668352, 34.303078, 33.882332>,  <28.897524, 34.313473, 33.952847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.668352, 34.303078, 33.882332>,  <28.286400, 34.285751, 33.764809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.668352, 34.303078, 33.882332> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116919, -0.964247, -0.237818,
		0.273006, 0.261440, -0.925806,
		0.954881, 0.043319, 0.293812,
		28.954817, 34.316074, 33.970474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.645887, 34.001686, 33.235561>,  <28.286400, 34.285751, 33.764809>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.645887, 34.001686, 33.235561> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.868170, 33.925724, 33.559322>,  <29.001539, 33.880146, 33.753578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.868170, 33.925724, 33.559322>,  <28.645887, 34.001686, 33.235561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.868170, 33.925724, 33.559322> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178090, -0.923773, -0.339009,
		0.812082, 0.332535, -0.479524,
		0.555704, -0.189905, 0.809401,
		29.034882, 33.868752, 33.802143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.349434, 33.825951, 33.018005>,  <28.645887, 34.001686, 33.235561>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.349434, 33.825951, 33.018005> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.312714, 33.688000, 33.391666>,  <29.290682, 33.605228, 33.615864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.312714, 33.688000, 33.391666>,  <29.349434, 33.825951, 33.018005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.312714, 33.688000, 33.391666> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282276, -0.908643, -0.307716,
		0.954931, 0.235439, 0.180762,
		-0.091800, -0.344873, 0.934150,
		29.285173, 33.584538, 33.671913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.950684, 33.484295, 33.152615>,  <29.349434, 33.825951, 33.018005>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.950684, 33.484295, 33.152615> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.668930, 33.341492, 33.398018>,  <29.499878, 33.255810, 33.545258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.668930, 33.341492, 33.398018>,  <29.950684, 33.484295, 33.152615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.668930, 33.341492, 33.398018> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158455, -0.921584, -0.354365,
		0.691909, -0.152395, 0.705718,
		-0.704382, -0.357013, 0.613504,
		29.457615, 33.234386, 33.582069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.268785, 32.907547, 33.380001>,  <29.950684, 33.484295, 33.152615>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.268785, 32.907547, 33.380001> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.873724, 32.871105, 33.430977>,  <29.636686, 32.849239, 33.461563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.873724, 32.871105, 33.430977>,  <30.268785, 32.907547, 33.380001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.873724, 32.871105, 33.430977> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042112, -0.937961, -0.344175,
		0.150889, -0.334559, 0.930217,
		-0.987653, -0.091105, 0.127439,
		29.577429, 32.843773, 33.469208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.245003, 32.153576, 33.326775>,  <30.268785, 32.907547, 33.380001>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.245003, 32.153576, 33.326775> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.861444, 32.266560, 33.337627>,  <29.631310, 32.334351, 33.344139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.861444, 32.266560, 33.337627>,  <30.245003, 32.153576, 33.326775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.861444, 32.266560, 33.337627> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263878, -0.852484, -0.451265,
		-0.104333, -0.439876, 0.891977,
		-0.958897, 0.282455, 0.027132,
		29.573776, 32.351295, 33.345768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.920511, 31.573603, 33.492546>,  <30.245003, 32.153576, 33.326775>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.920511, 31.573603, 33.492546> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.653831, 31.796635, 33.294712>,  <29.493824, 31.930454, 33.176010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.653831, 31.796635, 33.294712>,  <29.920511, 31.573603, 33.492546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.653831, 31.796635, 33.294712> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049747, -0.695393, -0.716906,
		-0.743666, -0.453355, 0.491355,
		-0.666698, 0.557582, -0.494587,
		29.453821, 31.963909, 33.146336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.335264, 31.149794, 33.227253>,  <29.920511, 31.573603, 33.492546>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.335264, 31.149794, 33.227253> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.323553, 31.476959, 32.997414>,  <29.316526, 31.673260, 32.859512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.323553, 31.476959, 32.997414>,  <29.335264, 31.149794, 33.227253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.323553, 31.476959, 32.997414> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263442, -0.560830, -0.784900,
		-0.964231, 0.128392, 0.231893,
		-0.029278, 0.817915, -0.574594,
		29.314770, 31.722334, 32.825035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.719292, 31.161270, 32.817436>,  <29.335264, 31.149794, 33.227253>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.719292, 31.161270, 32.817436> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.988136, 31.373526, 32.610870>,  <29.149443, 31.500879, 32.486931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.988136, 31.373526, 32.610870>,  <28.719292, 31.161270, 32.817436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.988136, 31.373526, 32.610870> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278907, -0.464640, -0.840429,
		-0.685912, 0.708895, -0.164292,
		0.672112, 0.530638, -0.516418,
		29.189770, 31.532717, 32.455944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.413946, 31.235317, 32.170361>,  <28.719292, 31.161270, 32.817436>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.413946, 31.235317, 32.170361> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.792944, 31.340231, 32.097187>,  <29.020342, 31.403179, 32.053284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.792944, 31.340231, 32.097187>,  <28.413946, 31.235317, 32.170361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.792944, 31.340231, 32.097187> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122248, -0.231509, -0.965121,
		-0.295487, 0.936809, -0.187290,
		0.947493, 0.262285, -0.182931,
		29.077192, 31.418917, 32.042309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.542665, 31.560619, 31.533234>,  <28.413946, 31.235317, 32.170361>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.542665, 31.560619, 31.533234> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.923357, 31.456314, 31.597996>,  <29.151772, 31.393732, 31.636852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.923357, 31.456314, 31.597996>,  <28.542665, 31.560619, 31.533234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.923357, 31.456314, 31.597996> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114059, -0.189250, -0.975282,
		0.284956, 0.946672, -0.150373,
		0.951730, -0.260761, 0.161905,
		29.208876, 31.378086, 31.646566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.872234, 31.794384, 30.907673>,  <28.542665, 31.560619, 31.533234>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.872234, 31.794384, 30.907673> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.118683, 31.537439, 31.090000>,  <29.266552, 31.383272, 31.199396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.118683, 31.537439, 31.090000>,  <28.872234, 31.794384, 30.907673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.118683, 31.537439, 31.090000> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312653, -0.331706, -0.890067,
		0.722941, 0.690901, -0.003535,
		0.616120, -0.642361, 0.455816,
		29.303518, 31.344730, 31.226746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.518913, 32.042408, 30.725262>,  <28.872234, 31.794384, 30.907673>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.518913, 32.042408, 30.725262> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.554127, 31.658083, 30.830406>,  <29.575254, 31.427488, 30.893492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.554127, 31.658083, 30.830406>,  <29.518913, 32.042408, 30.725262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.554127, 31.658083, 30.830406> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547244, -0.173847, -0.818719,
		0.832331, 0.215922, 0.510494,
		0.088032, -0.960810, 0.262860,
		29.580536, 31.369841, 30.909264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.231998, 31.898668, 30.582874>,  <29.518913, 32.042408, 30.725262>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.231998, 31.898668, 30.582874> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.020536, 31.559216, 30.575403>,  <29.893660, 31.355545, 30.570921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.020536, 31.559216, 30.575403>,  <30.231998, 31.898668, 30.582874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.020536, 31.559216, 30.575403> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327995, -0.183929, -0.926601,
		0.782907, -0.495980, 0.375582,
		-0.528656, -0.848631, -0.018680,
		29.861940, 31.304626, 30.569799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.742601, 31.347681, 30.383436>,  <30.231998, 31.898668, 30.582874>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.742601, 31.347681, 30.383436> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.399387, 31.150755, 30.324917>,  <30.193459, 31.032600, 30.289804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.399387, 31.150755, 30.324917>,  <30.742601, 31.347681, 30.383436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.399387, 31.150755, 30.324917> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343838, -0.339036, -0.875688,
		0.381513, -0.801674, 0.460181,
		-0.858034, -0.492315, -0.146299,
		30.141977, 31.003061, 30.281027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.938629, 30.902735, 29.927853>,  <30.742601, 31.347681, 30.383436>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.938629, 30.902735, 29.927853> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.555412, 30.788208, 29.933195>,  <30.325481, 30.719492, 29.936401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.555412, 30.788208, 29.933195>,  <30.938629, 30.902735, 29.927853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.555412, 30.788208, 29.933195> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165517, -0.590675, -0.789751,
		0.234011, -0.754403, 0.613282,
		-0.958041, -0.286319, 0.013358,
		30.268000, 30.702312, 29.937202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.809179, 30.084522, 29.820707>,  <30.938629, 30.902735, 29.927853>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.809179, 30.084522, 29.820707> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.489107, 30.280504, 29.682344>,  <30.297064, 30.398094, 29.599327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.489107, 30.280504, 29.682344>,  <30.809179, 30.084522, 29.820707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.489107, 30.280504, 29.682344> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030957, -0.609720, -0.792012,
		-0.598944, -0.623054, 0.503061,
		-0.800192, 0.489944, -0.345900,
		30.249052, 30.427490, 29.578571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.325428, 29.608448, 29.711138>,  <30.809179, 30.084522, 29.820707>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.325428, 29.608448, 29.711138> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.200554, 29.904734, 29.473185>,  <30.125629, 30.082504, 29.330414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.200554, 29.904734, 29.473185>,  <30.325428, 29.608448, 29.711138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.200554, 29.904734, 29.473185> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090372, -0.646492, -0.757550,
		-0.945713, -0.182737, 0.268766,
		-0.312187, 0.740713, -0.594881,
		30.106897, 30.126947, 29.294720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.614437, 29.442745, 29.505285>,  <30.325428, 29.608448, 29.711138>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.614437, 29.442745, 29.505285> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.738117, 29.684040, 29.211210>,  <29.812325, 29.828817, 29.034765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.738117, 29.684040, 29.211210>,  <29.614437, 29.442745, 29.505285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.738117, 29.684040, 29.211210> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149584, -0.732598, -0.664021,
		-0.939159, 0.315288, -0.136285,
		0.309200, 0.603235, -0.735188,
		29.830877, 29.865011, 28.990654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.144054, 29.373146, 28.929573>,  <29.614437, 29.442745, 29.505285>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.144054, 29.373146, 28.929573> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.468382, 29.531502, 28.757133>,  <29.662979, 29.626516, 28.653669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.468382, 29.531502, 28.757133>,  <29.144054, 29.373146, 28.929573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.468382, 29.531502, 28.757133> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088462, -0.645190, -0.758883,
		-0.578575, 0.653452, -0.488111,
		0.810818, 0.395891, -0.431097,
		29.711628, 29.650269, 28.627804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.891895, 29.740492, 28.297884>,  <29.144054, 29.373146, 28.929573>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.891895, 29.740492, 28.297884> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.280420, 29.647266, 28.278988>,  <29.513535, 29.591331, 28.267651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.280420, 29.647266, 28.278988>,  <28.891895, 29.740492, 28.297884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.280420, 29.647266, 28.278988> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178473, -0.583165, -0.792507,
		0.157157, 0.778203, -0.608031,
		0.971313, -0.233065, -0.047239,
		29.571814, 29.577347, 28.264816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.267525, 35.739727, 46.477146> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.879269, 35.699230, 46.564415>,  <38.646313, 35.674931, 46.616776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.879269, 35.699230, 46.564415>,  <39.267525, 35.739727, 46.477146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.879269, 35.699230, 46.564415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173195, 0.335195, 0.926093,
		-0.166893, 0.936693, -0.307819,
		-0.970644, -0.101246, 0.218173,
		38.588074, 35.668858, 46.629868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240158, 36.196709, 47.040314>,  <39.267525, 35.739727, 46.477146>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.240158, 36.196709, 47.040314> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.886436, 36.010967, 47.059849>,  <38.674206, 35.899521, 47.071568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.886436, 36.010967, 47.059849>,  <39.240158, 36.196709, 47.040314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.886436, 36.010967, 47.059849> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084874, 0.262711, 0.961134,
		-0.459137, 0.845788, -0.271728,
		-0.884302, -0.464355, 0.048835,
		38.621147, 35.871662, 47.074501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.793949, 36.649830, 47.288166>,  <39.240158, 36.196709, 47.040314>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.793949, 36.649830, 47.288166> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.636219, 36.291985, 47.372246>,  <38.541580, 36.077278, 47.422695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.636219, 36.291985, 47.372246>,  <38.793949, 36.649830, 47.288166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.636219, 36.291985, 47.372246> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079428, 0.194700, 0.977641,
		-0.915533, 0.402201, -0.005717,
		-0.394321, -0.894609, 0.210201,
		38.517921, 36.023602, 47.435307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.254421, 36.736893, 47.917381>,  <38.793949, 36.649830, 47.288166>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.254421, 36.736893, 47.917381> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.344017, 36.347458, 47.899685>,  <38.397774, 36.113796, 47.889065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.344017, 36.347458, 47.899685>,  <38.254421, 36.736893, 47.917381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.344017, 36.347458, 47.899685> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012338, -0.048228, 0.998760,
		-0.974513, -0.223170, -0.022815,
		0.223994, -0.973586, -0.044246,
		38.411217, 36.055382, 47.886410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.662563, 36.375862, 48.244854>,  <38.254421, 36.736893, 47.917381>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.662563, 36.375862, 48.244854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.995674, 36.154598, 48.253780>,  <38.195541, 36.021839, 48.259136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.995674, 36.154598, 48.253780>,  <37.662563, 36.375862, 48.244854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.995674, 36.154598, 48.253780> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034359, -0.011417, 0.999344,
		-0.552542, -0.832997, -0.028514,
		0.832776, -0.553159, 0.022313,
		38.245506, 35.988651, 48.260475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.509808, 35.890205, 48.729088>,  <37.662563, 36.375862, 48.244854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.509808, 35.890205, 48.729088> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.908291, 35.875111, 48.697750>,  <38.147381, 35.866055, 48.678947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.908291, 35.875111, 48.697750>,  <37.509808, 35.890205, 48.729088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.908291, 35.875111, 48.697750> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072496, -0.137206, 0.987886,
		-0.048023, -0.989824, -0.133951,
		0.996212, -0.037731, -0.078347,
		38.207153, 35.863792, 48.674248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.754852, 35.157600, 48.908989>,  <37.509808, 35.890205, 48.729088>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.754852, 35.157600, 48.908989> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.027252, 35.442345, 48.977684>,  <38.190693, 35.613194, 49.018902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.027252, 35.442345, 48.977684>,  <37.754852, 35.157600, 48.908989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.027252, 35.442345, 48.977684> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057521, -0.285794, 0.956563,
		0.730024, -0.641538, -0.235572,
		0.680996, 0.711864, 0.171734,
		38.231552, 35.655903, 49.029205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.349110, 34.790833, 49.161274>,  <37.754852, 35.157600, 48.908989>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.349110, 34.790833, 49.161274> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.361187, 35.175434, 49.270523>,  <38.368435, 35.406197, 49.336071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.361187, 35.175434, 49.270523>,  <38.349110, 34.790833, 49.161274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.361187, 35.175434, 49.270523> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006630, -0.273047, 0.961978,
		0.999522, -0.030859, -0.001870,
		0.030196, 0.961506, 0.273121,
		38.370247, 35.463886, 49.352459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.733376, 34.775799, 49.853287>,  <38.349110, 34.790833, 49.161274>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.733376, 34.775799, 49.853287> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.568195, 35.139290, 49.829018>,  <38.469090, 35.357384, 49.814457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.568195, 35.139290, 49.829018>,  <38.733376, 34.775799, 49.853287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.568195, 35.139290, 49.829018> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078483, 0.030865, 0.996438,
		0.907366, 0.416240, 0.058574,
		-0.412949, 0.908731, -0.060673,
		38.444309, 35.411911, 49.810814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.054054, 35.151196, 50.431805>,  <38.733376, 34.775799, 49.853287>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.054054, 35.151196, 50.431805> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.735916, 35.366184, 50.319698>,  <38.545033, 35.495178, 50.252434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.735916, 35.366184, 50.319698>,  <39.054054, 35.151196, 50.431805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.735916, 35.366184, 50.319698> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226381, 0.165529, 0.959871,
		0.562296, 0.826876, -0.009980,
		-0.795346, 0.537472, -0.280265,
		38.497311, 35.527428, 50.235619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.090309, 35.743660, 50.829952>,  <39.054054, 35.151196, 50.431805>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.090309, 35.743660, 50.829952> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.715164, 35.663036, 50.716961>,  <38.490078, 35.614662, 50.649166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.715164, 35.663036, 50.716961>,  <39.090309, 35.743660, 50.829952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.715164, 35.663036, 50.716961> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323493, 0.213197, 0.921900,
		-0.125591, 0.955993, -0.265150,
		-0.937859, -0.201557, -0.282481,
		38.433807, 35.602570, 50.632217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.634762, 36.313061, 51.139408>,  <39.090309, 35.743660, 50.829952>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.634762, 36.313061, 51.139408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.389133, 36.010567, 51.049053>,  <38.241756, 35.829071, 50.994839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.389133, 36.010567, 51.049053>,  <38.634762, 36.313061, 51.139408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.389133, 36.010567, 51.049053> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367411, 0.020602, 0.929831,
		-0.698516, 0.653976, -0.290500,
		-0.614072, -0.756235, -0.225887,
		38.204910, 35.783695, 50.981289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.915607, 36.476734, 51.241627>,  <38.634762, 36.313061, 51.139408>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.915607, 36.476734, 51.241627> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.959141, 36.080608, 51.276119>,  <37.985260, 35.842934, 51.296814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.959141, 36.080608, 51.276119>,  <37.915607, 36.476734, 51.241627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.959141, 36.080608, 51.276119> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379835, 0.038734, 0.924243,
		-0.918630, -0.133337, -0.371941,
		0.108829, -0.990313, 0.086228,
		37.991791, 35.783516, 51.301987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.288910, 36.092953, 51.408104>,  <37.915607, 36.476734, 51.241627>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.288910, 36.092953, 51.408104> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.609653, 35.907440, 51.558796>,  <37.802101, 35.796131, 51.649212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.609653, 35.907440, 51.558796>,  <37.288910, 36.092953, 51.408104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.609653, 35.907440, 51.558796> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354454, 0.138365, 0.924780,
		-0.481023, -0.875078, -0.053439,
		0.801860, -0.463782, 0.376731,
		37.850212, 35.768307, 51.671814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.777721, 36.091610, 51.943920>,  <37.288910, 36.092953, 51.408104>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.777721, 36.091610, 51.943920> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.539257, 36.365742, 52.111214>,  <36.396179, 36.530220, 52.211590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.539257, 36.365742, 52.111214>,  <36.777721, 36.091610, 51.943920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.539257, 36.365742, 52.111214> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085550, 0.463733, -0.881835,
		-0.798297, -0.561493, -0.217828,
		-0.596158, 0.685331, 0.418232,
		36.360409, 36.571342, 52.236683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.122971, 36.112156, 51.545918>,  <36.777721, 36.091610, 51.943920>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.122971, 36.112156, 51.545918> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.167931, 36.462875, 51.732933>,  <36.194908, 36.673306, 51.845142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.167931, 36.462875, 51.732933>,  <36.122971, 36.112156, 51.545918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.167931, 36.462875, 51.732933> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039880, 0.474120, -0.879557,
		-0.992862, 0.080218, 0.088259,
		0.112401, 0.876799, 0.467536,
		36.201653, 36.725914, 51.873196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743607, 36.535145, 51.200130>,  <36.122971, 36.112156, 51.545918>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.743607, 36.535145, 51.200130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.972637, 36.800945, 51.392212>,  <36.110054, 36.960426, 51.507462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.972637, 36.800945, 51.392212>,  <35.743607, 36.535145, 51.200130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.972637, 36.800945, 51.392212> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125737, 0.507617, -0.852359,
		-0.810153, 0.548419, 0.207097,
		0.572575, 0.664501, 0.480204,
		36.144409, 37.000298, 51.536274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.395477, 37.198498, 51.158821>,  <35.743607, 36.535145, 51.200130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.395477, 37.198498, 51.158821> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.788555, 37.246918, 51.214905>,  <36.024403, 37.275970, 51.248554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.788555, 37.246918, 51.214905>,  <35.395477, 37.198498, 51.158821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.788555, 37.246918, 51.214905> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070131, 0.457442, -0.886470,
		-0.171448, 0.880962, 0.441036,
		0.982694, 0.121053, 0.140210,
		36.083363, 37.283234, 51.256969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.516624, 37.824539, 50.841633>,  <35.395477, 37.198498, 51.158821>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.516624, 37.824539, 50.841633> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.871250, 37.642826, 50.876572>,  <36.084026, 37.533798, 50.897537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.871250, 37.642826, 50.876572>,  <35.516624, 37.824539, 50.841633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.871250, 37.642826, 50.876572> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266573, 0.347362, -0.899043,
		0.378080, 0.820344, 0.429059,
		0.886563, -0.454285, 0.087351,
		36.137218, 37.506542, 50.902779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.070892, 38.331043, 50.697159>,  <35.516624, 37.824539, 50.841633>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.070892, 38.331043, 50.697159> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.202782, 37.962063, 50.616798>,  <36.281918, 37.740673, 50.568584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.202782, 37.962063, 50.616798>,  <36.070892, 38.331043, 50.697159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.202782, 37.962063, 50.616798> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365006, 0.320811, -0.873986,
		0.870661, 0.214849, 0.442481,
		0.329728, -0.922453, -0.200896,
		36.301701, 37.685326, 50.556530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.569096, 38.551144, 50.295025>,  <36.070892, 38.331043, 50.697159>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.569096, 38.551144, 50.295025> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.564407, 38.152916, 50.257717>,  <36.561592, 37.913979, 50.235332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.564407, 38.152916, 50.257717>,  <36.569096, 38.551144, 50.295025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.564407, 38.152916, 50.257717> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534711, 0.072577, -0.841913,
		0.844954, -0.059741, 0.531492,
		-0.011723, -0.995572, -0.093268,
		36.560890, 37.854244, 50.229736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.136780, 38.403313, 50.049187>,  <36.569096, 38.551144, 50.295025>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.136780, 38.403313, 50.049187> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.964973, 38.056232, 49.949100>,  <36.861889, 37.847984, 49.889050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.964973, 38.056232, 49.949100>,  <37.136780, 38.403313, 50.049187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.964973, 38.056232, 49.949100> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525542, -0.014847, -0.850638,
		0.734385, -0.496864, 0.462390,
		-0.429516, -0.867702, -0.250219,
		36.836117, 37.795921, 49.874035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.635750, 38.009666, 49.744408>,  <37.136780, 38.403313, 50.049187>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.635750, 38.009666, 49.744408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.295048, 37.838818, 49.623028>,  <37.090626, 37.736309, 49.550201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.295048, 37.838818, 49.623028>,  <37.635750, 38.009666, 49.744408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.295048, 37.838818, 49.623028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289147, 0.099790, -0.952069,
		0.436936, -0.898668, 0.038506,
		-0.851752, -0.427127, -0.303449,
		37.039520, 37.710678, 49.531994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.799461, 37.514034, 49.247566>,  <37.635750, 38.009666, 49.744408>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.799461, 37.514034, 49.247566> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.416111, 37.609867, 49.185455>,  <37.186100, 37.667366, 49.148190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.416111, 37.609867, 49.185455>,  <37.799461, 37.514034, 49.247566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.416111, 37.609867, 49.185455> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189723, 0.128022, -0.973455,
		-0.213344, -0.962398, -0.168147,
		-0.958378, 0.239582, -0.155276,
		37.128597, 37.681740, 49.138874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.562901, 37.126278, 48.616081>,  <37.799461, 37.514034, 49.247566>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.562901, 37.126278, 48.616081> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.283184, 37.410225, 48.649727>,  <37.115353, 37.580593, 48.669914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.283184, 37.410225, 48.649727>,  <37.562901, 37.126278, 48.616081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.283184, 37.410225, 48.649727> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052121, 0.167987, -0.984411,
		-0.712935, -0.684005, -0.154470,
		-0.699291, 0.709872, 0.084113,
		37.073399, 37.623188, 48.674961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952496, 36.936028, 48.166988>,  <37.562901, 37.126278, 48.616081>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.952496, 36.936028, 48.166988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.967804, 37.330990, 48.228382>,  <36.976990, 37.567966, 48.265221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.967804, 37.330990, 48.228382>,  <36.952496, 36.936028, 48.166988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.967804, 37.330990, 48.228382> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094418, 0.149339, -0.984268,
		-0.994797, 0.052165, -0.087513,
		0.038275, 0.987409, 0.153487,
		36.979286, 37.627213, 48.274429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.606297, 37.251579, 47.599079>,  <36.952496, 36.936028, 48.166988>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.606297, 37.251579, 47.599079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.845787, 37.541779, 47.734833>,  <36.989479, 37.715900, 47.816284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.845787, 37.541779, 47.734833>,  <36.606297, 37.251579, 47.599079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.845787, 37.541779, 47.734833> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257931, 0.226509, -0.939236,
		-0.758290, 0.649879, -0.051513,
		0.598722, 0.725500, 0.339384,
		37.025402, 37.759430, 47.836647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.489754, 37.864613, 47.179962>,  <36.606297, 37.251579, 47.599079>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.489754, 37.864613, 47.179962> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.850185, 37.914364, 47.346138>,  <37.066444, 37.944214, 47.445843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.850185, 37.914364, 47.346138>,  <36.489754, 37.864613, 47.179962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.850185, 37.914364, 47.346138> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373744, 0.263140, -0.889423,
		-0.219942, 0.956707, 0.190624,
		0.901078, 0.124376, 0.415439,
		37.120510, 37.951675, 47.470768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.938286, 38.135632, 46.798512>,  <36.489754, 37.864613, 47.179962>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.938286, 38.135632, 46.798512> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.716648, 37.852409, 46.623405>,  <35.583664, 37.682476, 46.518341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.716648, 37.852409, 46.623405>,  <35.938286, 38.135632, 46.798512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.716648, 37.852409, 46.623405> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455034, -0.182739, 0.871522,
		-0.697083, 0.682102, -0.220935,
		-0.554094, -0.708056, -0.437764,
		35.550419, 37.639992, 46.492077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.341595, 38.086185, 47.256027>,  <35.938286, 38.135632, 46.798512>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.341595, 38.086185, 47.256027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.280258, 37.765335, 47.025173>,  <35.243458, 37.572826, 46.886662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.280258, 37.765335, 47.025173>,  <35.341595, 38.086185, 47.256027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.280258, 37.765335, 47.025173> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415603, -0.477529, 0.774106,
		-0.896527, 0.358560, -0.260141,
		-0.153339, -0.802123, -0.577136,
		35.234257, 37.524700, 46.852032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.652874, 37.951248, 47.264301>,  <35.341595, 38.086185, 47.256027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.652874, 37.951248, 47.264301> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.839436, 37.607681, 47.179695>,  <34.951374, 37.401543, 47.128933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.839436, 37.607681, 47.179695>,  <34.652874, 37.951248, 47.264301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.839436, 37.607681, 47.179695> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353910, -0.400331, 0.845271,
		-0.810689, -0.319381, -0.490693,
		0.466403, -0.858913, -0.211511,
		34.979355, 37.350006, 47.116241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.132298, 37.494057, 47.397434>,  <34.652874, 37.951248, 47.264301>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.132298, 37.494057, 47.397434> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.459370, 37.263836, 47.402275>,  <34.655613, 37.125706, 47.405178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.459370, 37.263836, 47.402275>,  <34.132298, 37.494057, 47.397434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.459370, 37.263836, 47.402275> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328912, -0.449828, 0.830344,
		-0.472461, -0.682934, -0.557119,
		0.817678, -0.575548, 0.012099,
		34.704674, 37.091171, 47.405903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.835224, 36.844238, 47.537769>,  <34.132298, 37.494057, 47.397434>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.835224, 36.844238, 47.537769> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.212318, 36.822906, 47.669472>,  <34.438576, 36.810108, 47.748493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.212318, 36.822906, 47.669472>,  <33.835224, 36.844238, 47.537769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.212318, 36.822906, 47.669472> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308747, -0.513015, 0.800931,
		0.126202, -0.856722, -0.500101,
		0.942735, -0.053325, 0.329254,
		34.495140, 36.806908, 47.768250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.004711, 36.112793, 47.679020>,  <33.835224, 36.844238, 47.537769>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.004711, 36.112793, 47.679020> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.255177, 36.339371, 47.893333>,  <34.405457, 36.475315, 48.021919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.255177, 36.339371, 47.893333>,  <34.004711, 36.112793, 47.679020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.255177, 36.339371, 47.893333> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188453, -0.556846, 0.808955,
		0.756573, -0.607509, -0.241930,
		0.626165, 0.566441, 0.535782,
		34.443027, 36.509304, 48.054070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.326160, 35.571049, 48.189743>,  <34.004711, 36.112793, 47.679020>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.326160, 35.571049, 48.189743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.410774, 35.931461, 48.341217>,  <34.461544, 36.147709, 48.432102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.410774, 35.931461, 48.341217>,  <34.326160, 35.571049, 48.189743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.410774, 35.931461, 48.341217> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294626, -0.310642, 0.903713,
		0.931906, -0.302738, 0.199754,
		0.211536, 0.901028, 0.378683,
		34.474236, 36.201771, 48.454823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.510464, 34.790478, 47.991760>,  <34.326160, 35.571049, 48.189743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.510464, 34.790478, 47.991760> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.139023, 34.657631, 48.057968>,  <33.916157, 34.577923, 48.097694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.139023, 34.657631, 48.057968>,  <34.510464, 34.790478, 47.991760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.139023, 34.657631, 48.057968> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156318, -0.054445, -0.986205,
		0.336550, -0.941665, -0.001359,
		-0.928600, -0.332119, 0.165523,
		33.860443, 34.557995, 48.107624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.386524, 34.198307, 47.467915>,  <34.510464, 34.790478, 47.991760>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.386524, 34.198307, 47.467915> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.014225, 34.318306, 47.551548>,  <33.790848, 34.390305, 47.601727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.014225, 34.318306, 47.551548>,  <34.386524, 34.198307, 47.467915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.014225, 34.318306, 47.551548> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257312, -0.131058, -0.957400,
		-0.259814, -0.944895, 0.199174,
		-0.930746, 0.299995, 0.209082,
		33.735001, 34.408302, 47.614273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.017860, 33.725502, 47.130356>,  <34.386524, 34.198307, 47.467915>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.017860, 33.725502, 47.130356> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.758720, 34.020813, 47.205448>,  <33.603237, 34.197998, 47.250504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.758720, 34.020813, 47.205448>,  <34.017860, 33.725502, 47.130356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.758720, 34.020813, 47.205448> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323549, -0.043569, -0.945208,
		-0.689642, -0.673094, 0.267094,
		-0.647850, 0.738273, 0.187731,
		33.564365, 34.242294, 47.261768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.355423, 33.530315, 46.908863>,  <34.017860, 33.725502, 47.130356>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.355423, 33.530315, 46.908863> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.350327, 33.930233, 46.902454>,  <33.347271, 34.170181, 46.898609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.350327, 33.930233, 46.902454>,  <33.355423, 33.530315, 46.908863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.350327, 33.930233, 46.902454> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320369, -0.019258, -0.947097,
		-0.947207, -0.006932, 0.320547,
		-0.012738, 0.999791, -0.016021,
		33.346504, 34.230171, 46.897648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.909306, 33.697166, 46.393127>,  <33.355423, 33.530315, 46.908863>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.909306, 33.697166, 46.393127> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.048332, 34.068886, 46.443085>,  <33.131748, 34.291920, 46.473057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.048332, 34.068886, 46.443085>,  <32.909306, 33.697166, 46.393127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.048332, 34.068886, 46.443085> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197714, 0.202832, -0.959045,
		-0.916574, 0.308639, 0.254234,
		0.347565, 0.929302, 0.124888,
		33.152603, 34.347675, 46.480553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.479481, 34.249866, 45.995464>,  <32.909306, 33.697166, 46.393127>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.479481, 34.249866, 45.995464> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.836544, 34.420856, 46.052616>,  <33.050781, 34.523453, 46.086906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.836544, 34.420856, 46.052616>,  <32.479481, 34.249866, 45.995464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.836544, 34.420856, 46.052616> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041082, 0.238517, -0.970269,
		-0.448849, 0.871993, 0.195353,
		0.892663, 0.427479, 0.142882,
		33.104343, 34.549099, 46.095482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.372143, 34.918133, 45.880424>,  <32.479481, 34.249866, 45.995464>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.372143, 34.918133, 45.880424> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.759548, 34.835995, 45.824116>,  <32.991993, 34.786713, 45.790333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.759548, 34.835995, 45.824116>,  <32.372143, 34.918133, 45.880424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.759548, 34.835995, 45.824116> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068449, 0.324005, -0.943576,
		0.239372, 0.923500, 0.299747,
		0.968512, -0.205348, -0.140770,
		33.050102, 34.774391, 45.781883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<36.917641, 32.593033, 50.376484> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.074028, 32.952286, 50.295986>,  <37.167862, 33.167839, 50.247688>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.074028, 32.952286, 50.295986>,  <36.917641, 32.593033, 50.376484>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.074028, 32.952286, 50.295986> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302848, -0.080940, -0.949596,
		-0.869152, 0.432210, 0.240353,
		0.390970, 0.898133, -0.201243,
		37.191319, 33.221725, 50.235615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.408131, 32.910130, 49.942799>,  <36.917641, 32.593033, 50.376484>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.408131, 32.910130, 49.942799> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.735443, 33.122833, 49.855480>,  <36.931831, 33.250458, 49.803089>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.735443, 33.122833, 49.855480>,  <36.408131, 32.910130, 49.942799>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.735443, 33.122833, 49.855480> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316685, 0.100112, -0.943233,
		-0.479722, 0.840955, 0.250321,
		0.818277, 0.531763, -0.218292,
		36.980927, 33.282364, 49.789993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.202389, 33.511395, 49.531784>,  <36.408131, 32.910130, 49.942799>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.202389, 33.511395, 49.531784> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.590034, 33.477711, 49.439064>,  <36.822620, 33.457500, 49.383434>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.590034, 33.477711, 49.439064>,  <36.202389, 33.511395, 49.531784>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.590034, 33.477711, 49.439064> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221298, 0.117907, -0.968052,
		0.108850, 0.989448, 0.095629,
		0.969112, -0.084210, -0.231797,
		36.880768, 33.452446, 49.369526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.438568, 34.120243, 49.087959>,  <36.202389, 33.511395, 49.531784>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.438568, 34.120243, 49.087959> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.711323, 33.841618, 48.998669>,  <36.874973, 33.674442, 48.945095>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.711323, 33.841618, 48.998669>,  <36.438568, 34.120243, 49.087959>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.711323, 33.841618, 48.998669> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130547, 0.184391, -0.974144,
		0.719717, 0.693395, 0.034798,
		0.681883, -0.696565, -0.223230,
		36.915886, 33.632648, 48.931698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.867767, 34.415638, 48.549725>,  <36.438568, 34.120243, 49.087959>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.867767, 34.415638, 48.549725> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.932316, 34.022667, 48.512199>,  <36.971043, 33.786884, 48.489685>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.932316, 34.022667, 48.512199>,  <36.867767, 34.415638, 48.549725>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.932316, 34.022667, 48.512199> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049749, 0.086836, -0.994980,
		0.985639, 0.165226, -0.034862,
		0.161370, -0.982426, -0.093809,
		36.980728, 33.727940, 48.484058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.247211, 34.443058, 47.938595>,  <36.867767, 34.415638, 48.549725>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.247211, 34.443058, 47.938595> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.156437, 34.064644, 48.031136>,  <37.101974, 33.837597, 48.086658>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.156437, 34.064644, 48.031136>,  <37.247211, 34.443058, 47.938595>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.156437, 34.064644, 48.031136> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127754, -0.206579, -0.970054,
		0.965495, -0.249694, -0.073979,
		-0.226934, -0.946033, 0.231350,
		37.088356, 33.780834, 48.100540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.636360, 34.021992, 47.539852>,  <37.247211, 34.443058, 47.938595>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.636360, 34.021992, 47.539852> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.343891, 33.764633, 47.630558>,  <37.168411, 33.610218, 47.684982>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.343891, 33.764633, 47.630558>,  <37.636360, 34.021992, 47.539852>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.343891, 33.764633, 47.630558> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089567, -0.420064, -0.903064,
		0.676287, -0.639986, 0.364767,
		-0.731173, -0.643401, 0.226762,
		37.124538, 33.571613, 47.698586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.877266, 33.481331, 47.301228>,  <37.636360, 34.021992, 47.539852>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.877266, 33.481331, 47.301228> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.482506, 33.418793, 47.317169>,  <37.245651, 33.381271, 47.326736>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.482506, 33.418793, 47.317169>,  <37.877266, 33.481331, 47.301228>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482506, 33.418793, 47.317169> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038258, -0.466748, -0.883563,
		0.156745, -0.870461, 0.466614,
		-0.986898, -0.156345, 0.039858,
		37.186436, 33.371891, 47.329128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692230, 32.694992, 47.212009>,  <37.877266, 33.481331, 47.301228>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.692230, 32.694992, 47.212009> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.373943, 32.921570, 47.126247>,  <37.182972, 33.057518, 47.074791>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.373943, 32.921570, 47.126247>,  <37.692230, 32.694992, 47.212009>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.373943, 32.921570, 47.126247> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070891, -0.438664, -0.895851,
		-0.601505, -0.697645, 0.389209,
		-0.795718, 0.566450, -0.214401,
		37.135227, 33.091503, 47.061928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.167187, 32.281662, 46.930798>,  <37.692230, 32.694992, 47.212009>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.167187, 32.281662, 46.930798> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.088058, 32.645432, 46.784473>,  <37.040581, 32.863693, 46.696678>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.088058, 32.645432, 46.784473>,  <37.167187, 32.281662, 46.930798>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.088058, 32.645432, 46.784473> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110307, -0.391469, -0.913556,
		-0.974012, -0.140368, 0.177756,
		-0.197819, 0.909423, -0.365812,
		37.028713, 32.918259, 46.674728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.730293, 32.029068, 46.379208>,  <37.167187, 32.281662, 46.930798>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.730293, 32.029068, 46.379208> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.815594, 32.410576, 46.294498>,  <36.866776, 32.639481, 46.243675>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.815594, 32.410576, 46.294498>,  <36.730293, 32.029068, 46.379208>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.815594, 32.410576, 46.294498> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029261, -0.222893, -0.974404,
		-0.976559, 0.201597, -0.075441,
		0.213252, 0.953770, -0.211769,
		36.879570, 32.696709, 46.230968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.227940, 32.209259, 45.816338>,  <36.730293, 32.029068, 46.379208>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.227940, 32.209259, 45.816338> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.543827, 32.454056, 45.799278>,  <36.733360, 32.600933, 45.789043>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.543827, 32.454056, 45.799278>,  <36.227940, 32.209259, 45.816338>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.543827, 32.454056, 45.799278> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049094, -0.006246, -0.998775,
		-0.611504, 0.790842, 0.025112,
		0.789717, 0.611988, -0.042645,
		36.780743, 32.637653, 45.786484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.537014, 32.189171, 45.755093>,  <36.227940, 32.209259, 45.816338>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.537014, 32.189171, 45.755093> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.293499, 31.918791, 45.588974>,  <35.147388, 31.756563, 45.489304>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.293499, 31.918791, 45.588974>,  <35.537014, 32.189171, 45.755093>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.293499, 31.918791, 45.588974> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389337, -0.201544, 0.898775,
		-0.691225, 0.708855, -0.140473,
		-0.608790, -0.675947, -0.415295,
		35.110863, 31.716007, 45.464386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.802258, 32.233894, 46.070683>,  <35.537014, 32.189171, 45.755093>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.802258, 32.233894, 46.070683> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.833443, 31.864834, 45.919613>,  <34.852154, 31.643398, 45.828972>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.833443, 31.864834, 45.919613>,  <34.802258, 32.233894, 46.070683>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.833443, 31.864834, 45.919613> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480136, -0.366751, 0.796845,
		-0.873722, 0.119213, -0.471590,
		0.077961, -0.922649, -0.377677,
		34.856831, 31.588039, 45.806309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.111618, 32.125362, 46.179508>,  <34.802258, 32.233894, 46.070683>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.111618, 32.125362, 46.179508> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.305099, 31.776852, 46.146275>,  <34.421188, 31.567745, 46.126335>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.305099, 31.776852, 46.146275>,  <34.111618, 32.125362, 46.179508>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.305099, 31.776852, 46.146275> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374604, -0.291889, 0.880042,
		-0.791013, -0.394557, -0.467572,
		0.483706, -0.871278, -0.083085,
		34.450211, 31.515469, 46.121349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.636124, 31.692415, 46.544899>,  <34.111618, 32.125362, 46.179508>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.636124, 31.692415, 46.544899> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.994141, 31.516472, 46.515430>,  <34.208950, 31.410906, 46.497749>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.994141, 31.516472, 46.515430>,  <33.636124, 31.692415, 46.544899>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.994141, 31.516472, 46.515430> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069424, -0.300581, 0.951226,
		-0.440550, -0.846271, -0.299569,
		0.895039, -0.439860, -0.073670,
		34.262653, 31.384514, 46.493328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.563808, 31.077351, 46.970409>,  <33.636124, 31.692415, 46.544899>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.563808, 31.077351, 46.970409> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.962631, 31.089125, 46.942097>,  <34.201923, 31.096189, 46.925110>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.962631, 31.089125, 46.942097>,  <33.563808, 31.077351, 46.970409>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.962631, 31.089125, 46.942097> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076310, -0.469399, 0.879682,
		-0.007333, -0.882495, -0.470264,
		0.997057, 0.029435, -0.070785,
		34.261749, 31.097956, 46.920860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.807716, 30.406673, 47.109482>,  <33.563808, 31.077351, 46.970409>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.807716, 30.406673, 47.109482> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.136971, 30.628286, 47.159275>,  <34.334522, 30.761253, 47.189152>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.136971, 30.628286, 47.159275>,  <33.807716, 30.406673, 47.109482>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.136971, 30.628286, 47.159275> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124800, -0.390364, 0.912163,
		0.553959, -0.735299, -0.390466,
		0.823136, 0.554031, 0.124480,
		34.383911, 30.794497, 47.196621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.329876, 29.979603, 47.489021>,  <33.807716, 30.406673, 47.109482>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.329876, 29.979603, 47.489021> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.434513, 30.360643, 47.551144>,  <34.497295, 30.589268, 47.588417>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.434513, 30.360643, 47.551144>,  <34.329876, 29.979603, 47.489021>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.434513, 30.360643, 47.551144> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162897, -0.202173, 0.965707,
		0.951333, -0.227324, -0.208063,
		0.261593, 0.952602, 0.155304,
		34.512993, 30.646423, 47.597736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.731281, 29.897881, 48.196682>,  <34.329876, 29.979603, 47.489021>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.731281, 29.897881, 48.196682> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.681759, 30.289728, 48.133411>,  <34.652046, 30.524836, 48.095448>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.681759, 30.289728, 48.133411>,  <34.731281, 29.897881, 48.196682>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.681759, 30.289728, 48.133411> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222010, 0.182708, 0.957773,
		0.967152, 0.083464, -0.240106,
		-0.123809, 0.979618, -0.158177,
		34.644615, 30.583614, 48.085957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.261158, 30.303232, 48.473911>,  <34.731281, 29.897881, 48.196682>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.261158, 30.303232, 48.473911> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.941425, 30.543577, 48.471573>,  <34.749584, 30.687784, 48.470169>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.941425, 30.543577, 48.471573>,  <35.261158, 30.303232, 48.473911>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.941425, 30.543577, 48.471573> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211962, 0.291051, 0.932932,
		0.562264, 0.744483, -0.360006,
		-0.799332, 0.600862, -0.005845,
		34.701626, 30.723835, 48.469818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.533009, 31.006121, 48.727356>,  <35.261158, 30.303232, 48.473911>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.533009, 31.006121, 48.727356> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.139023, 30.999613, 48.796143>,  <34.902630, 30.995708, 48.837414>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.139023, 30.999613, 48.796143>,  <35.533009, 31.006121, 48.727356>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.139023, 30.999613, 48.796143> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152724, 0.383077, 0.911003,
		-0.080697, 0.923573, -0.374834,
		-0.984968, -0.016269, 0.171965,
		34.843533, 30.994732, 48.847733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.584274, 31.370966, 49.336819>,  <35.533009, 31.006121, 48.727356>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.584274, 31.370966, 49.336819> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.195118, 31.286400, 49.299316>,  <34.961624, 31.235661, 49.276814>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.195118, 31.286400, 49.299316>,  <35.584274, 31.370966, 49.336819>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.195118, 31.286400, 49.299316> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169303, 0.374890, 0.911479,
		-0.157551, 0.902642, -0.400520,
		-0.972889, -0.211414, -0.093756,
		34.903252, 31.222975, 49.271191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.243511, 31.956167, 49.559841>,  <35.584274, 31.370966, 49.336819>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.243511, 31.956167, 49.559841> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.996540, 31.647333, 49.620071>,  <34.848358, 31.462032, 49.656208>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.996540, 31.647333, 49.620071>,  <35.243511, 31.956167, 49.559841>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.996540, 31.647333, 49.620071> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036552, 0.163053, 0.985940,
		-0.785781, 0.614246, -0.072451,
		-0.617423, -0.772085, 0.150576,
		34.811314, 31.415709, 49.665245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.538216, 32.182461, 49.945625>,  <35.243511, 31.956167, 49.559841>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.538216, 32.182461, 49.945625> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.603539, 31.794172, 50.016087>,  <34.642731, 31.561199, 50.058361>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.603539, 31.794172, 50.016087>,  <34.538216, 32.182461, 49.945625>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.603539, 31.794172, 50.016087> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082345, 0.164511, 0.982932,
		-0.983133, -0.175025, -0.053069,
		0.163307, -0.970723, 0.176149,
		34.652531, 31.502956, 50.068932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.041073, 32.085247, 50.460060>,  <34.538216, 32.182461, 49.945625>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.041073, 32.085247, 50.460060> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.316494, 31.796057, 50.482689>,  <34.481747, 31.622541, 50.496265>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.316494, 31.796057, 50.482689>,  <34.041073, 32.085247, 50.460060>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.316494, 31.796057, 50.482689> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065229, 0.015955, 0.997743,
		-0.722249, -0.690686, -0.036173,
		0.688550, -0.722979, 0.056576,
		34.523060, 31.579163, 50.499660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.515911, 32.499798, 50.136955>,  <34.041073, 32.085247, 50.460060>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.515911, 32.499798, 50.136955> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.524532, 32.818123, 50.379021>,  <33.529705, 33.009117, 50.524261>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.524532, 32.818123, 50.379021>,  <33.515911, 32.499798, 50.136955>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.524532, 32.818123, 50.379021> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184334, 0.598091, -0.779942,
		-0.982627, -0.094742, 0.159586,
		0.021554, 0.795809, 0.605164,
		33.530998, 33.056866, 50.560570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.873753, 32.876846, 49.989281>,  <33.515911, 32.499798, 50.136955>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.873753, 32.876846, 49.989281> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.155159, 33.122437, 50.132446>,  <33.324001, 33.269791, 50.218346>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.155159, 33.122437, 50.132446>,  <32.873753, 32.876846, 49.989281>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.155159, 33.122437, 50.132446> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110699, 0.592148, -0.798189,
		-0.702003, 0.521920, 0.484552,
		0.703517, 0.613971, 0.357914,
		33.366215, 33.306629, 50.239822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.663414, 33.530903, 49.937767>,  <32.873753, 32.876846, 49.989281>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.663414, 33.530903, 49.937767> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.058521, 33.578346, 49.978245>,  <33.295586, 33.606812, 50.002533>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.058521, 33.578346, 49.978245>,  <32.663414, 33.530903, 49.937767>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.058521, 33.578346, 49.978245> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006759, 0.681025, -0.732229,
		-0.155766, 0.722591, 0.673498,
		0.987771, 0.118609, 0.101197,
		33.354851, 33.613930, 50.008602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.832706, 34.301628, 49.878983>,  <32.663414, 33.530903, 49.937767>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.832706, 34.301628, 49.878983> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.183594, 34.125019, 49.803566>,  <33.394127, 34.019054, 49.758316>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.183594, 34.125019, 49.803566>,  <32.832706, 34.301628, 49.878983>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.183594, 34.125019, 49.803566> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099081, 0.550756, -0.828765,
		0.469755, 0.708327, 0.526880,
		0.877219, -0.441520, -0.188539,
		33.446758, 33.992561, 49.747005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.237633, 34.907074, 49.813576>,  <32.832706, 34.301628, 49.878983>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.237633, 34.907074, 49.813576> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.365177, 34.569622, 49.640781>,  <33.441704, 34.367149, 49.537106>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.365177, 34.569622, 49.640781>,  <33.237633, 34.907074, 49.813576>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.365177, 34.569622, 49.640781> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009332, 0.458552, -0.888618,
		0.947754, 0.279319, 0.154090,
		0.318866, -0.843630, -0.431988,
		33.460838, 34.316532, 49.511185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.784813, 35.187901, 49.333527>,  <33.237633, 34.907074, 49.813576>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.784813, 35.187901, 49.333527> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.719921, 34.820221, 49.189999>,  <33.680988, 34.599613, 49.103882>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.719921, 34.820221, 49.189999>,  <33.784813, 35.187901, 49.333527>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.719921, 34.820221, 49.189999> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107890, 0.344938, -0.932404,
		0.980838, -0.189974, 0.043215,
		-0.162226, -0.919200, -0.358824,
		33.671253, 34.544460, 49.082352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.251877, 35.100353, 48.763538>,  <33.784813, 35.187901, 49.333527>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.251877, 35.100353, 48.763538> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.991970, 34.809673, 48.674355>,  <33.836025, 34.635265, 48.620846>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.991970, 34.809673, 48.674355>,  <34.251877, 35.100353, 48.763538>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.991970, 34.809673, 48.674355> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108482, 0.201661, -0.973429,
		0.752355, -0.656687, -0.052198,
		-0.649765, -0.726702, -0.222960,
		33.797039, 34.591663, 48.607468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.791496, 35.503246, 48.838135>,  <34.251877, 35.100353, 48.763538>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.791496, 35.503246, 48.838135> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.646126, 35.874290, 48.872696>,  <34.558903, 36.096916, 48.893433>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.646126, 35.874290, 48.872696>,  <34.791496, 35.503246, 48.838135>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.646126, 35.874290, 48.872696> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099189, -0.130749, 0.986441,
		0.926326, 0.349932, 0.139526,
		-0.363430, 0.927606, 0.086407,
		34.537098, 36.152573, 48.898617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.970219, 35.694172, 49.544659>,  <34.791496, 35.503246, 48.838135>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.970219, 35.694172, 49.544659> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.729095, 36.001625, 49.459030>,  <34.584423, 36.186096, 49.407654>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.729095, 36.001625, 49.459030>,  <34.970219, 35.694172, 49.544659>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.729095, 36.001625, 49.459030> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182497, 0.128367, 0.974791,
		0.776738, 0.626676, 0.062893,
		-0.602805, 0.768634, -0.214074,
		34.548256, 36.232216, 49.394806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.145435, 36.350197, 49.923485>,  <34.970219, 35.694172, 49.544659>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.145435, 36.350197, 49.923485> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.762180, 36.387756, 49.815296>,  <34.532227, 36.410294, 49.750385>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.762180, 36.387756, 49.815296>,  <35.145435, 36.350197, 49.923485>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.762180, 36.387756, 49.815296> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260605, 0.105147, 0.959703,
		0.118553, 0.990014, -0.076275,
		-0.958139, 0.093898, -0.270468,
		34.474739, 36.415924, 49.734158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.870716, 36.974247, 50.223400>,  <35.145435, 36.350197, 49.923485>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.870716, 36.974247, 50.223400> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.511890, 36.808952, 50.160782>,  <34.296593, 36.709774, 50.123211>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.511890, 36.808952, 50.160782>,  <34.870716, 36.974247, 50.223400>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.511890, 36.808952, 50.160782> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228375, 0.130257, 0.964820,
		-0.378309, 0.901259, -0.211223,
		-0.897066, -0.413238, -0.156548,
		34.242771, 36.684982, 50.113819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.438358, 37.458996, 50.618488>,  <34.870716, 36.974247, 50.223400>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.438358, 37.458996, 50.618488> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.255398, 37.106255, 50.572662>,  <34.145622, 36.894611, 50.545166>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.255398, 37.106255, 50.572662>,  <34.438358, 37.458996, 50.618488>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.255398, 37.106255, 50.572662> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175826, -0.036600, 0.983741,
		-0.871703, 0.470110, -0.138311,
		-0.457404, -0.881848, -0.114562,
		34.118176, 36.841702, 50.538292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.827568, 37.506927, 51.108479>,  <34.438358, 37.458996, 50.618488>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.827568, 37.506927, 51.108479> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.884022, 37.117699, 51.035587>,  <33.917892, 36.884159, 50.991852>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.884022, 37.117699, 51.035587>,  <33.827568, 37.506927, 51.108479>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.884022, 37.117699, 51.035587> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049157, -0.190735, 0.980410,
		-0.988769, -0.129411, -0.074753,
		0.141134, -0.973074, -0.182231,
		33.926361, 36.825775, 50.980919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.283840, 37.108276, 51.404400>,  <33.827568, 37.506927, 51.108479>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.283840, 37.108276, 51.404400> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.588226, 36.849155, 51.390053>,  <33.770859, 36.693684, 51.381443>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.588226, 36.849155, 51.390053>,  <33.283840, 37.108276, 51.404400>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.588226, 36.849155, 51.390053> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085177, -0.154562, 0.984304,
		-0.643178, -0.745965, -0.172794,
		0.760964, -0.647801, -0.035872,
		33.816517, 36.654816, 51.379292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.067593, 36.689537, 52.013855>,  <33.283840, 37.108276, 51.404400>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.067593, 36.689537, 52.013855> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.436188, 36.587124, 51.897026>,  <33.657345, 36.525677, 51.826931>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.436188, 36.587124, 51.897026>,  <33.067593, 36.689537, 52.013855>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.436188, 36.587124, 51.897026> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202183, -0.325857, 0.923547,
		-0.331646, -0.910086, -0.248503,
		0.921484, -0.256047, -0.292073,
		33.712635, 36.510315, 51.809406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.217190, 36.130810, 52.435184>,  <33.067593, 36.689537, 52.013855>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.217190, 36.130810, 52.435184> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.573330, 36.269554, 52.317230>,  <33.787014, 36.352802, 52.246456>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.573330, 36.269554, 52.317230>,  <33.217190, 36.130810, 52.435184>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.573330, 36.269554, 52.317230> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305215, 0.025847, 0.951933,
		0.337810, -0.937560, -0.082855,
		0.890353, 0.346861, -0.294889,
		33.840435, 36.373611, 52.228764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<38.377510, 39.905724, 36.701584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.618454, 39.756866, 36.984051>,  <38.763020, 39.667553, 37.153530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.618454, 39.756866, 36.984051>,  <38.377510, 39.905724, 36.701584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.618454, 39.756866, 36.984051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730135, -0.614403, 0.299020,
		0.322590, -0.695712, -0.641810,
		0.602361, -0.372147, 0.706164,
		38.799164, 39.645222, 37.195900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.299526, 39.132763, 36.785114>,  <38.377510, 39.905724, 36.701584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.299526, 39.132763, 36.785114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.438423, 39.284653, 37.128098>,  <38.521763, 39.375786, 37.333889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.438423, 39.284653, 37.128098>,  <38.299526, 39.132763, 36.785114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.438423, 39.284653, 37.128098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618100, -0.594959, 0.513786,
		0.705248, -0.708403, 0.028112,
		0.347242, 0.379723, 0.857458,
		38.542595, 39.398571, 37.385334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.492260, 38.590214, 37.209145>,  <38.299526, 39.132763, 36.785114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.492260, 38.590214, 37.209145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.431927, 38.890179, 37.466789>,  <38.395725, 39.070156, 37.621376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.431927, 38.890179, 37.466789>,  <38.492260, 38.590214, 37.209145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.431927, 38.890179, 37.466789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471650, -0.627218, 0.619794,
		0.868790, -0.210311, 0.448300,
		-0.150832, 0.749911, 0.644114,
		38.386677, 39.115150, 37.660023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.484634, 38.291866, 37.919815>,  <38.492260, 38.590214, 37.209145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.484634, 38.291866, 37.919815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.323517, 38.650616, 37.992897>,  <38.226845, 38.865864, 38.036747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.323517, 38.650616, 37.992897>,  <38.484634, 38.291866, 37.919815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.323517, 38.650616, 37.992897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606164, -0.410950, 0.680945,
		0.685800, 0.163535, 0.709179,
		-0.402795, 0.896871, 0.182701,
		38.202679, 38.919678, 38.047707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.438835, 38.341717, 38.682079>,  <38.484634, 38.291866, 37.919815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.438835, 38.341717, 38.682079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.167007, 38.590996, 38.527256>,  <38.003910, 38.740562, 38.434364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.167007, 38.590996, 38.527256>,  <38.438835, 38.341717, 38.682079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.167007, 38.590996, 38.527256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669968, -0.312260, 0.673525,
		0.298877, 0.717021, 0.629724,
		-0.679569, 0.623197, -0.387054,
		37.963135, 38.777954, 38.411140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162861, 38.715214, 39.298664>,  <38.438835, 38.341717, 38.682079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.162861, 38.715214, 39.298664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.888966, 38.739304, 39.008144>,  <37.724628, 38.753757, 38.833832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.888966, 38.739304, 39.008144>,  <38.162861, 38.715214, 39.298664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.888966, 38.739304, 39.008144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712759, -0.263209, 0.650151,
		-0.152014, 0.962857, 0.223153,
		-0.684738, 0.060222, -0.726297,
		37.683544, 38.757370, 38.790257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.652565, 39.189926, 39.576340>,  <38.162861, 38.715214, 39.298664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.652565, 39.189926, 39.576340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.482994, 38.974106, 39.285362>,  <37.381252, 38.844612, 39.110775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.482994, 38.974106, 39.285362>,  <37.652565, 39.189926, 39.576340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482994, 38.974106, 39.285362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851030, -0.037517, 0.523776,
		-0.309897, 0.841114, -0.443273,
		-0.423925, -0.539555, -0.727440,
		37.355816, 38.812241, 39.067131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.976112, 39.365208, 39.589092>,  <37.652565, 39.189926, 39.576340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.976112, 39.365208, 39.589092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.981300, 39.016315, 39.393524>,  <36.984413, 38.806980, 39.276184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.981300, 39.016315, 39.393524>,  <36.976112, 39.365208, 39.589092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.981300, 39.016315, 39.393524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791295, -0.307878, 0.528266,
		-0.611298, 0.380025, -0.694188,
		0.012971, -0.872235, -0.488916,
		36.985191, 38.754646, 39.246849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.277180, 39.264366, 39.318310>,  <36.976112, 39.365208, 39.589092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.277180, 39.264366, 39.318310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.445343, 38.905266, 39.370914>,  <36.546242, 38.689804, 39.402477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.445343, 38.905266, 39.370914>,  <36.277180, 39.264366, 39.318310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.445343, 38.905266, 39.370914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735892, -0.252586, 0.628223,
		-0.530770, -0.360891, -0.766838,
		0.420412, -0.897752, 0.131512,
		36.571468, 38.635941, 39.410370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733334, 38.829365, 39.420990>,  <36.277180, 39.264366, 39.318310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.733334, 38.829365, 39.420990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.030212, 38.580051, 39.519508>,  <36.208340, 38.430462, 39.578617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.030212, 38.580051, 39.519508>,  <35.733334, 38.829365, 39.420990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.030212, 38.580051, 39.519508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511426, -0.289250, 0.809183,
		-0.433110, -0.726534, -0.533444,
		0.742199, -0.623283, 0.246291,
		36.252872, 38.393066, 39.593395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.377159, 38.256504, 39.705677>,  <35.733334, 38.829365, 39.420990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.377159, 38.256504, 39.705677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.756958, 38.271767, 39.830250>,  <35.984837, 38.280922, 39.904995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.756958, 38.271767, 39.830250>,  <35.377159, 38.256504, 39.705677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.756958, 38.271767, 39.830250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279501, -0.348152, 0.894801,
		0.142567, -0.936661, -0.319907,
		0.949502, 0.038155, 0.311433,
		36.041809, 38.283215, 39.923679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.403625, 37.585758, 40.082939>,  <35.377159, 38.256504, 39.705677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.403625, 37.585758, 40.082939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.693909, 37.827610, 40.214252>,  <35.868076, 37.972721, 40.293041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.693909, 37.827610, 40.214252>,  <35.403625, 37.585758, 40.082939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.693909, 37.827610, 40.214252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163924, -0.311463, 0.936013,
		0.668191, -0.733084, -0.126917,
		0.725706, 0.604631, 0.328287,
		35.911621, 38.008999, 40.312740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.269417, 36.824757, 40.057285>,  <35.403625, 37.585758, 40.082939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.269417, 36.824757, 40.057285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.879402, 36.736996, 40.070934>,  <34.645393, 36.684338, 40.079124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.879402, 36.736996, 40.070934>,  <35.269417, 36.824757, 40.057285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.879402, 36.736996, 40.070934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069021, 0.153426, -0.985747,
		0.211044, -0.963494, -0.164739,
		-0.975037, -0.219407, 0.034121,
		34.586891, 36.671177, 40.081169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.075359, 36.108902, 39.633068>,  <35.269417, 36.824757, 40.057285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.075359, 36.108902, 39.633068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.768967, 36.361870, 39.679245>,  <34.585133, 36.513649, 39.706951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.768967, 36.361870, 39.679245>,  <35.075359, 36.108902, 39.633068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.768967, 36.361870, 39.679245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147140, 0.002334, -0.989113,
		-0.625801, -0.774625, 0.091266,
		-0.765979, 0.632417, 0.115439,
		34.539173, 36.551594, 39.713879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.560574, 35.874813, 39.094200>,  <35.075359, 36.108902, 39.633068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.560574, 35.874813, 39.094200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.414310, 36.226089, 39.217541>,  <34.326553, 36.436855, 39.291546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.414310, 36.226089, 39.217541>,  <34.560574, 35.874813, 39.094200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.414310, 36.226089, 39.217541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501781, 0.093027, -0.859978,
		-0.783907, -0.469183, 0.406642,
		-0.365658, 0.878188, 0.308352,
		34.304611, 36.489544, 39.310047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.894474, 35.847576, 39.036350>,  <34.560574, 35.874813, 39.094200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.894474, 35.847576, 39.036350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.975159, 36.239159, 39.023979>,  <34.023567, 36.474110, 39.016556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.975159, 36.239159, 39.023979>,  <33.894474, 35.847576, 39.036350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.975159, 36.239159, 39.023979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467887, 0.068566, -0.881125,
		-0.860463, 0.192201, 0.471871,
		0.201708, 0.978957, -0.030930,
		34.035671, 36.532845, 39.014702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.300800, 36.183052, 38.704823>,  <33.894474, 35.847576, 39.036350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.300800, 36.183052, 38.704823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.599766, 36.446331, 38.668694>,  <33.779144, 36.604298, 38.647015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.599766, 36.446331, 38.668694>,  <33.300800, 36.183052, 38.704823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.599766, 36.446331, 38.668694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333744, 0.254424, -0.907680,
		-0.574450, 0.708554, 0.409827,
		0.747410, 0.658194, -0.090322,
		33.823990, 36.643791, 38.641598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.993465, 36.744965, 38.259438>,  <33.300800, 36.183052, 38.704823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.993465, 36.744965, 38.259438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.389992, 36.796776, 38.250332>,  <33.627907, 36.827862, 38.244869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.389992, 36.796776, 38.250332>,  <32.993465, 36.744965, 38.259438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.389992, 36.796776, 38.250332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054723, 0.248867, -0.966991,
		-0.119582, 0.959838, 0.253793,
		0.991315, 0.129523, -0.022765,
		33.687386, 36.835632, 38.243504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.014133, 37.341045, 37.852695>,  <32.993465, 36.744965, 38.259438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.014133, 37.341045, 37.852695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.375874, 37.171764, 37.830574>,  <33.592918, 37.070198, 37.817303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.375874, 37.171764, 37.830574>,  <33.014133, 37.341045, 37.852695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.375874, 37.171764, 37.830574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106130, 0.348485, -0.931286,
		0.413391, 0.836338, 0.360066,
		0.904348, -0.423199, -0.055300,
		33.647179, 37.044804, 37.813984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.512203, 37.803200, 37.416466>,  <33.014133, 37.341045, 37.852695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.512203, 37.803200, 37.416466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.705685, 37.454475, 37.385548>,  <33.821774, 37.245239, 37.366997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.705685, 37.454475, 37.385548>,  <33.512203, 37.803200, 37.416466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.705685, 37.454475, 37.385548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038552, 0.109451, -0.993244,
		0.874383, 0.477454, 0.086552,
		0.483702, -0.871813, -0.077295,
		33.850796, 37.192932, 37.362358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.921154, 37.961678, 36.931770>,  <33.512203, 37.803200, 37.416466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.921154, 37.961678, 36.931770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.924789, 37.561840, 36.942566>,  <33.926971, 37.321938, 36.949043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.924789, 37.561840, 36.942566>,  <33.921154, 37.961678, 36.931770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.924789, 37.561840, 36.942566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133358, -0.025534, -0.990739,
		0.991026, 0.012601, 0.133072,
		0.009087, -0.999595, 0.026986,
		33.927517, 37.261963, 36.950661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.582813, 37.760670, 36.510220>,  <33.921154, 37.961678, 36.931770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.582813, 37.760670, 36.510220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.331772, 37.449692, 36.493782>,  <34.181149, 37.263103, 36.483917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.331772, 37.449692, 36.493782>,  <34.582813, 37.760670, 36.510220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.331772, 37.449692, 36.493782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225213, -0.130769, -0.965494,
		0.745249, -0.615200, 0.257162,
		-0.627601, -0.777450, -0.041096,
		34.143490, 37.216457, 36.481453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.792492, 37.295429, 36.001198>,  <34.582813, 37.760670, 36.510220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.792492, 37.295429, 36.001198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.425262, 37.144184, 36.048824>,  <34.204926, 37.053436, 36.077400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.425262, 37.144184, 36.048824>,  <34.792492, 37.295429, 36.001198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.425262, 37.144184, 36.048824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069069, -0.143184, -0.987283,
		0.390355, -0.914619, 0.105337,
		-0.918070, -0.378115, 0.119064,
		34.149841, 37.030750, 36.084545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.775932, 36.708206, 35.686230>,  <34.792492, 37.295429, 36.001198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.775932, 36.708206, 35.686230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.384995, 36.791084, 35.703529>,  <34.150433, 36.840813, 35.713909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.384995, 36.791084, 35.703529>,  <34.775932, 36.708206, 35.686230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.384995, 36.791084, 35.703529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067610, -0.111987, -0.991407,
		-0.200570, -0.971869, 0.123458,
		-0.977343, 0.207194, 0.043247,
		34.091793, 36.853241, 35.716503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.408184, 36.077381, 35.542809>,  <34.775932, 36.708206, 35.686230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.408184, 36.077381, 35.542809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.162258, 36.373146, 35.433060>,  <34.014702, 36.550606, 35.367210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.162258, 36.373146, 35.433060>,  <34.408184, 36.077381, 35.542809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.162258, 36.373146, 35.433060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115425, -0.428498, -0.896140,
		-0.780183, -0.519287, 0.348792,
		-0.614810, 0.739412, -0.274368,
		33.977814, 36.594971, 35.350750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.837727, 35.813282, 35.292480>,  <34.408184, 36.077381, 35.542809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.837727, 35.813282, 35.292480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.888996, 36.170902, 35.120789>,  <33.919758, 36.385475, 35.017773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.888996, 36.170902, 35.120789>,  <33.837727, 35.813282, 35.292480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.888996, 36.170902, 35.120789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064725, -0.424340, -0.903186,
		-0.989637, 0.143548, 0.003478,
		0.128175, 0.894052, -0.429234,
		33.927448, 36.439117, 34.992020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.242332, 35.100338, 35.231720>,  <33.837727, 35.813282, 35.292480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.242332, 35.100338, 35.231720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.503803, 34.926567, 34.983856>,  <34.660686, 34.822304, 34.835136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.503803, 34.926567, 34.983856>,  <34.242332, 35.100338, 35.231720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.503803, 34.926567, 34.983856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066254, -0.848527, 0.524988,
		-0.753867, -0.302118, -0.583445,
		0.653678, -0.434427, -0.619660,
		34.699905, 34.796238, 34.797958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.978153, 34.525600, 35.103645>,  <34.242332, 35.100338, 35.231720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.978153, 34.525600, 35.103645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.376564, 34.511463, 35.070950>,  <34.615612, 34.502979, 35.051331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.376564, 34.511463, 35.070950>,  <33.978153, 34.525600, 35.103645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.376564, 34.511463, 35.070950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030992, -0.722891, 0.690266,
		-0.083487, -0.690057, -0.718924,
		0.996027, -0.035347, -0.081738,
		34.675373, 34.500858, 35.046429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.158276, 33.857632, 35.228798>,  <33.978153, 34.525600, 35.103645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.158276, 33.857632, 35.228798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.497898, 34.050713, 35.314686>,  <34.701672, 34.166561, 35.366219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.497898, 34.050713, 35.314686>,  <34.158276, 33.857632, 35.228798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.497898, 34.050713, 35.314686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005328, -0.398584, 0.917117,
		0.528274, -0.779828, -0.335848,
		0.849057, 0.482700, 0.214716,
		34.752617, 34.195522, 35.379101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.575249, 33.323029, 35.481571>,  <34.158276, 33.857632, 35.228798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.575249, 33.323029, 35.481571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.690041, 33.669724, 35.644741>,  <34.758915, 33.877743, 35.742645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.690041, 33.669724, 35.644741>,  <34.575249, 33.323029, 35.481571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.690041, 33.669724, 35.644741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037888, -0.415237, 0.908924,
		0.957187, -0.276299, -0.086326,
		0.286980, 0.866739, 0.407928,
		34.776134, 33.929745, 35.767120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.042149, 33.088459, 35.933384>,  <34.575249, 33.323029, 35.481571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.042149, 33.088459, 35.933384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.873390, 33.437302, 36.032532>,  <34.772137, 33.646606, 36.092022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.873390, 33.437302, 36.032532>,  <35.042149, 33.088459, 35.933384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.873390, 33.437302, 36.032532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029863, -0.259880, 0.965179,
		0.906153, 0.414605, 0.083598,
		-0.421894, 0.872104, 0.247872,
		34.746822, 33.698933, 36.106892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.577393, 33.401886, 36.462299>,  <35.042149, 33.088459, 35.933384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.577393, 33.401886, 36.462299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.215462, 33.561565, 36.521530>,  <34.998302, 33.657372, 36.557068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.215462, 33.561565, 36.521530>,  <35.577393, 33.401886, 36.462299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.215462, 33.561565, 36.521530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033947, -0.279045, 0.959678,
		0.424422, 0.873370, 0.238937,
		-0.904828, 0.399197, 0.148081,
		34.944012, 33.681324, 36.565956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.609264, 33.803665, 37.084011>,  <35.577393, 33.401886, 36.462299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.609264, 33.803665, 37.084011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.214123, 33.747440, 37.057522>,  <34.977039, 33.713707, 37.041630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.214123, 33.747440, 37.057522>,  <35.609264, 33.803665, 37.084011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.214123, 33.747440, 37.057522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045063, -0.148698, 0.987855,
		-0.148698, 0.978842, 0.140558,
		-0.987855, -0.140558, -0.066221,
		34.917767, 33.705273, 37.037655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.322418, 34.371952, 37.381599>,  <35.609264, 33.803665, 37.084011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.322418, 34.371952, 37.381599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.040184, 34.088539, 37.386292>,  <34.870846, 33.918491, 37.389107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.040184, 34.088539, 37.386292>,  <35.322418, 34.371952, 37.381599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.040184, 34.088539, 37.386292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014723, 0.031204, 0.999405,
		-0.708474, 0.704990, -0.032449,
		-0.705583, -0.708530, 0.011728,
		34.828510, 33.875980, 37.389809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.827160, 34.741577, 37.717724>,  <35.322418, 34.371952, 37.381599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.827160, 34.741577, 37.717724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.746105, 34.350327, 37.736519>,  <34.697472, 34.115578, 37.747795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.746105, 34.350327, 37.736519>,  <34.827160, 34.741577, 37.717724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.746105, 34.350327, 37.736519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132258, 0.074879, 0.988383,
		-0.970281, 0.194070, -0.144538,
		-0.202638, -0.978126, 0.046986,
		34.685314, 34.056889, 37.750614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.154510, 34.677750, 37.993591>,  <34.827160, 34.741577, 37.717724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.154510, 34.677750, 37.993591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.300045, 34.320179, 38.098297>,  <34.387363, 34.105637, 38.161121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.300045, 34.320179, 38.098297>,  <34.154510, 34.677750, 37.993591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.300045, 34.320179, 38.098297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243937, 0.179773, 0.952983,
		-0.898956, -0.410580, -0.152654,
		0.363832, -0.893927, 0.261764,
		34.409195, 34.052002, 38.176826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.684795, 34.408344, 38.486904>,  <34.154510, 34.677750, 37.993591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.684795, 34.408344, 38.486904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.013374, 34.187469, 38.543907>,  <34.210522, 34.054943, 38.578110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.013374, 34.187469, 38.543907>,  <33.684795, 34.408344, 38.486904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.013374, 34.187469, 38.543907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194119, -0.035769, 0.980326,
		-0.536229, -0.832950, -0.136573,
		0.821448, -0.552190, 0.142511,
		34.259808, 34.021812, 38.586662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.472553, 33.853874, 39.032791>,  <33.684795, 34.408344, 38.486904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.472553, 33.853874, 39.032791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.871662, 33.829781, 39.021343>,  <34.111130, 33.815323, 39.014477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.871662, 33.829781, 39.021343>,  <33.472553, 33.853874, 39.032791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.871662, 33.829781, 39.021343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002250, -0.398472, 0.917178,
		-0.066648, -0.915201, -0.397449,
		0.997774, -0.060234, -0.028616,
		34.170994, 33.811710, 39.012760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.625336, 33.146893, 39.295403>,  <33.472553, 33.853874, 39.032791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.625336, 33.146893, 39.295403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.955063, 33.368412, 39.342396>,  <34.152901, 33.501324, 39.370590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.955063, 33.368412, 39.342396>,  <33.625336, 33.146893, 39.295403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.955063, 33.368412, 39.342396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105160, -0.353692, 0.929432,
		0.556270, -0.753796, -0.349793,
		0.824321, 0.553799, 0.117480,
		34.202358, 33.534554, 39.377640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.137623, 32.728790, 39.579742>,  <33.625336, 33.146893, 39.295403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.137623, 32.728790, 39.579742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.273384, 33.094059, 39.670013>,  <34.354839, 33.313221, 39.724174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.273384, 33.094059, 39.670013>,  <34.137623, 32.728790, 39.579742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.273384, 33.094059, 39.670013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127963, -0.282509, 0.950692,
		0.931897, -0.293788, -0.212736,
		0.339402, 0.913169, 0.225675,
		34.375206, 33.368011, 39.737717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.672138, 32.627041, 40.123074>,  <34.137623, 32.728790, 39.579742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.672138, 32.627041, 40.123074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.562973, 33.011288, 40.143959>,  <34.497475, 33.241837, 40.156490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.562973, 33.011288, 40.143959>,  <34.672138, 32.627041, 40.123074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.562973, 33.011288, 40.143959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092024, -0.027959, 0.995364,
		0.957628, 0.276449, -0.080770,
		-0.272909, 0.960622, 0.052215,
		34.481102, 33.299473, 40.159622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.280022, 33.030521, 40.361412>,  <34.672138, 32.627041, 40.123074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.280022, 33.030521, 40.361412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.936920, 33.227062, 40.421860>,  <34.731060, 33.344986, 40.458126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.936920, 33.227062, 40.421860>,  <35.280022, 33.030521, 40.361412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.936920, 33.227062, 40.421860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106529, -0.117685, 0.987321,
		0.502906, 0.862974, 0.048601,
		-0.857751, 0.491352, 0.151116,
		34.679596, 33.374466, 40.467194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.491295, 33.566833, 40.896492>,  <35.280022, 33.030521, 40.361412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.491295, 33.566833, 40.896492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.096455, 33.504089, 40.909290>,  <34.859550, 33.466442, 40.916969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.096455, 33.504089, 40.909290>,  <35.491295, 33.566833, 40.896492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.096455, 33.504089, 40.909290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062302, -0.192287, 0.979359,
		-0.147474, 0.968720, 0.199580,
		-0.987102, -0.156864, 0.031996,
		34.800323, 33.457031, 40.918888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.277534, 33.855339, 41.481194>,  <35.491295, 33.566833, 40.896492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.277534, 33.855339, 41.481194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.994793, 33.582851, 41.404984>,  <34.825150, 33.419357, 41.359257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.994793, 33.582851, 41.404984>,  <35.277534, 33.855339, 41.481194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.994793, 33.582851, 41.404984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005296, -0.274430, 0.961593,
		-0.707344, 0.678693, 0.197588,
		-0.706850, -0.681223, -0.190522,
		34.782738, 33.378483, 41.347828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.108181, 33.786747, 42.102325>,  <35.277534, 33.855339, 41.481194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.108181, 33.786747, 42.102325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.881172, 33.502426, 41.936108>,  <34.744965, 33.331833, 41.836376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.881172, 33.502426, 41.936108>,  <35.108181, 33.786747, 42.102325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.881172, 33.502426, 41.936108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126498, -0.423427, 0.897055,
		-0.813580, 0.561667, 0.150391,
		-0.567526, -0.710802, -0.415541,
		34.710915, 33.289185, 41.811447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.521385, 33.766941, 42.488834>,  <35.108181, 33.786747, 42.102325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.521385, 33.766941, 42.488834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.542667, 33.408092, 42.313412>,  <34.555435, 33.192783, 42.208157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.542667, 33.408092, 42.313412>,  <34.521385, 33.766941, 42.488834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.542667, 33.408092, 42.313412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142357, -0.441509, 0.885892,
		-0.988384, 0.015297, -0.151203,
		0.053205, -0.897126, -0.438559,
		34.558628, 33.138954, 42.181843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.046463, 33.351624, 42.777122>,  <34.521385, 33.766941, 42.488834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.046463, 33.351624, 42.777122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.315075, 33.099907, 42.620636>,  <34.476242, 32.948879, 42.526745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.315075, 33.099907, 42.620636>,  <34.046463, 33.351624, 42.777122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.315075, 33.099907, 42.620636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034151, -0.553695, 0.832019,
		-0.740194, -0.545361, -0.393311,
		0.671525, -0.629287, -0.391218,
		34.516533, 32.911121, 42.503269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.775162, 32.591808, 42.750153>,  <34.046463, 33.351624, 42.777122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.775162, 32.591808, 42.750153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.174408, 32.582176, 42.772732>,  <34.413956, 32.576397, 42.786278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.174408, 32.582176, 42.772732>,  <33.775162, 32.591808, 42.750153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.174408, 32.582176, 42.772732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055503, -0.746571, 0.662986,
		0.026181, -0.664870, -0.746500,
		0.998115, -0.024075, 0.056449,
		34.473843, 32.574955, 42.789665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.919228, 31.953598, 43.082371>,  <33.775162, 32.591808, 42.750153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.919228, 31.953598, 43.082371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.269104, 32.145821, 43.107590>,  <34.479031, 32.261154, 43.122723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.269104, 32.145821, 43.107590>,  <33.919228, 31.953598, 43.082371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.269104, 32.145821, 43.107590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330791, -0.686982, 0.647019,
		0.354244, -0.545087, -0.759863,
		0.874694, 0.480558, 0.063049,
		34.531513, 32.289989, 43.126503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.424873, 31.437654, 43.228195>,  <33.919228, 31.953598, 43.082371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.424873, 31.437654, 43.228195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.640919, 31.765211, 43.305851>,  <34.770546, 31.961746, 43.352444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.640919, 31.765211, 43.305851>,  <34.424873, 31.437654, 43.228195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.640919, 31.765211, 43.305851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343423, -0.425056, 0.837489,
		0.768333, -0.385671, -0.510806,
		0.540117, 0.818893, 0.194136,
		34.802956, 32.010880, 43.364090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.080910, 31.214851, 43.508755>,  <34.424873, 31.437654, 43.228195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.080910, 31.214851, 43.508755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.073074, 31.599211, 43.619236>,  <35.068375, 31.829826, 43.685524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.073074, 31.599211, 43.619236>,  <35.080910, 31.214851, 43.508755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.073074, 31.599211, 43.619236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296118, -0.258287, 0.919566,
		0.954950, 0.099800, -0.279481,
		-0.019586, 0.960899, 0.276204,
		35.067200, 31.887480, 43.702099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.797661, 31.423294, 43.809048>,  <35.080910, 31.214851, 43.508755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.797661, 31.423294, 43.809048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.486542, 31.628666, 43.954052>,  <35.299870, 31.751888, 44.041054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.486542, 31.628666, 43.954052>,  <35.797661, 31.423294, 43.809048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.486542, 31.628666, 43.954052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226360, -0.309241, 0.923651,
		0.586334, 0.800475, 0.124308,
		-0.777801, 0.513429, 0.362514,
		35.253201, 31.782694, 44.062805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921722, 31.345728, 44.562408>,  <35.797661, 31.423294, 43.809048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.921722, 31.345728, 44.562408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.573692, 31.542473, 44.549530>,  <35.364872, 31.660521, 44.541805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.573692, 31.542473, 44.549530>,  <35.921722, 31.345728, 44.562408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.573692, 31.542473, 44.549530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131212, -0.168163, 0.976987,
		0.475129, 0.854279, 0.210853,
		-0.870078, 0.491862, -0.032192,
		35.312668, 31.690031, 44.539871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.938717, 31.945868, 45.079918>,  <35.921722, 31.345728, 44.562408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.938717, 31.945868, 45.079918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.566067, 31.811668, 45.024036>,  <35.342476, 31.731148, 44.990509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.566067, 31.811668, 45.024036>,  <35.938717, 31.945868, 45.079918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.566067, 31.811668, 45.024036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065202, -0.223863, 0.972437,
		-0.357525, 0.915055, 0.186681,
		-0.931625, -0.335499, -0.139700,
		35.286579, 31.711020, 44.982128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.114067, 32.687946, 45.274986>,  <35.938717, 31.945868, 45.079918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.114067, 32.687946, 45.274986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.506889, 32.741314, 45.328297>,  <36.742584, 32.773335, 45.360283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.506889, 32.741314, 45.328297>,  <36.114067, 32.687946, 45.274986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.506889, 32.741314, 45.328297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124632, 0.071175, -0.989647,
		-0.141526, 0.988500, 0.053269,
		0.982058, 0.133422, 0.133272,
		36.801506, 32.781342, 45.368279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.199886, 33.224277, 44.787849>,  <36.114067, 32.687946, 45.274986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.199886, 33.224277, 44.787849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.546810, 33.035755, 44.851902>,  <36.754967, 32.922642, 44.890331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.546810, 33.035755, 44.851902>,  <36.199886, 33.224277, 44.787849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.546810, 33.035755, 44.851902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221181, 0.076708, -0.972211,
		0.445925, 0.878628, 0.170774,
		0.867312, -0.471305, 0.160130,
		36.807003, 32.894363, 44.899940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.496803, 33.610962, 44.419186>,  <36.199886, 33.224277, 44.787849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.496803, 33.610962, 44.419186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.761471, 33.317059, 44.478951>,  <36.920273, 33.140717, 44.514809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.761471, 33.317059, 44.478951>,  <36.496803, 33.610962, 44.419186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.761471, 33.317059, 44.478951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340276, 0.116688, -0.933057,
		0.668138, 0.668216, 0.327230,
		0.661668, -0.734759, 0.149415,
		36.959972, 33.096630, 44.523773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.091816, 33.803787, 44.111839>,  <36.496803, 33.610962, 44.419186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.091816, 33.803787, 44.111839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.147724, 33.409653, 44.150993>,  <37.181267, 33.173172, 44.174484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.147724, 33.409653, 44.150993>,  <37.091816, 33.803787, 44.111839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.147724, 33.409653, 44.150993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175963, -0.072568, -0.981718,
		0.974424, 0.154435, 0.163239,
		0.139766, -0.985334, 0.097886,
		37.189655, 33.114052, 44.180359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.793121, 33.567146, 43.914005>,  <37.091816, 33.803787, 44.111839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.793121, 33.567146, 43.914005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.549789, 33.255825, 43.851803>,  <37.403790, 33.069035, 43.814484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.549789, 33.255825, 43.851803>,  <37.793121, 33.567146, 43.914005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.549789, 33.255825, 43.851803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335480, -0.074587, -0.939090,
		0.719296, -0.623446, 0.306478,
		-0.608331, -0.778301, -0.155503,
		37.367290, 33.022335, 43.805153>
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
