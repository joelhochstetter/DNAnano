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
	location <35, 92.5046, 58.4545>
	look_at <35, 26.874, 46.4577>
	direction <0, -65.6306, -11.9968>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 92.5046, 58.4545>;
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
{	1000 * <-1, -1.16351, -0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16351, 0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<40.567127, 34.120743, 48.939240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.644169, 33.740025, 48.843754>,  <40.690395, 33.511593, 48.786465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.644169, 33.740025, 48.843754>,  <40.567127, 34.120743, 48.939240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.644169, 33.740025, 48.843754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797841, 0.010276, 0.602780,
		-0.571272, -0.306552, 0.761363,
		0.192607, -0.951798, -0.238710,
		40.701950, 33.454487, 48.772141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.651562, 33.782913, 49.529617>,  <40.567127, 34.120743, 48.939240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.651562, 33.782913, 49.529617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.833515, 33.533360, 49.275417>,  <40.942688, 33.383629, 49.122898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.833515, 33.533360, 49.275417>,  <40.651562, 33.782913, 49.529617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.833515, 33.533360, 49.275417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806419, -0.014204, 0.591174,
		-0.377849, -0.781391, 0.496647,
		0.454884, -0.623880, -0.635495,
		40.969982, 33.346195, 49.084770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.995293, 33.240414, 49.994255>,  <40.651562, 33.782913, 49.529617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.995293, 33.240414, 49.994255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.179119, 33.198643, 49.641460>,  <41.289413, 33.173580, 49.429783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.179119, 33.198643, 49.641460>,  <40.995293, 33.240414, 49.994255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.179119, 33.198643, 49.641460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881496, -0.067642, 0.467322,
		-0.108462, -0.992229, 0.060968,
		0.459567, -0.104430, -0.881982,
		41.316990, 33.167313, 49.376865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.479683, 32.763580, 50.164722>,  <40.995293, 33.240414, 49.994255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.479683, 32.763580, 50.164722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.619545, 32.906075, 49.818119>,  <41.703461, 32.991570, 49.610157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.619545, 32.906075, 49.818119>,  <41.479683, 32.763580, 50.164722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.619545, 32.906075, 49.818119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927986, -0.004560, 0.372588,
		0.128777, -0.934385, -0.332176,
		0.349655, 0.356236, -0.866509,
		41.724442, 33.012943, 49.558167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.902134, 32.285572, 49.828930>,  <41.479683, 32.763580, 50.164722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.902134, 32.285572, 49.828930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.004765, 32.655239, 49.715733>,  <42.066341, 32.877041, 49.647816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.004765, 32.655239, 49.715733>,  <41.902134, 32.285572, 49.828930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.004765, 32.655239, 49.715733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898094, -0.119749, 0.423187,
		0.357207, -0.362734, -0.860713,
		0.256573, 0.924167, -0.282994,
		42.081738, 32.932487, 49.630833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.651363, 32.113914, 49.536488>,  <41.902134, 32.285572, 49.828930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.651363, 32.113914, 49.536488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.617146, 32.510918, 49.571396>,  <42.596615, 32.749119, 49.592342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.617146, 32.510918, 49.571396>,  <42.651363, 32.113914, 49.536488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.617146, 32.510918, 49.571396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971815, 0.063802, 0.226947,
		0.219678, 0.104223, -0.969989,
		-0.085540, 0.992505, 0.087269,
		42.591484, 32.808670, 49.597576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.304550, 32.365387, 49.252964>,  <42.651363, 32.113914, 49.536488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.304550, 32.365387, 49.252964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.144108, 32.674610, 49.449532>,  <43.047840, 32.860146, 49.567471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.144108, 32.674610, 49.449532>,  <43.304550, 32.365387, 49.252964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.144108, 32.674610, 49.449532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914758, 0.309761, 0.259358,
		0.048276, 0.553560, -0.831409,
		-0.401108, 0.773059, 0.491419,
		43.023777, 32.906528, 49.596958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.709740, 32.955933, 49.146652>,  <43.304550, 32.365387, 49.252964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.709740, 32.955933, 49.146652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.538242, 33.069248, 49.489799>,  <43.435345, 33.137238, 49.695686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.538242, 33.069248, 49.489799>,  <43.709740, 32.955933, 49.146652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.538242, 33.069248, 49.489799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863077, 0.409051, 0.296269,
		-0.266982, 0.867425, -0.419874,
		-0.428741, 0.283285, 0.857864,
		43.409618, 33.154232, 49.747158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.947296, 33.632111, 49.263309>,  <43.709740, 32.955933, 49.146652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.947296, 33.632111, 49.263309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.874287, 33.489098, 49.629665>,  <43.830482, 33.403290, 49.849480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.874287, 33.489098, 49.629665>,  <43.947296, 33.632111, 49.263309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.874287, 33.489098, 49.629665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769935, 0.527357, 0.359298,
		-0.611463, 0.770755, 0.179026,
		-0.182520, -0.357535, 0.915890,
		43.819530, 33.381836, 49.904434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.994305, 34.196327, 49.595371>,  <43.947296, 33.632111, 49.263309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.994305, 34.196327, 49.595371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.016720, 33.921577, 49.885216>,  <44.030167, 33.756725, 50.059120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.016720, 33.921577, 49.885216>,  <43.994305, 34.196327, 49.595371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.016720, 33.921577, 49.885216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731611, 0.522109, 0.438347,
		-0.679416, 0.505569, 0.531784,
		0.056034, -0.686878, 0.724609,
		44.033531, 33.715515, 50.102600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.076515, 34.638737, 50.233849>,  <43.994305, 34.196327, 49.595371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.076515, 34.638737, 50.233849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.197495, 34.266811, 50.317726>,  <44.270081, 34.043655, 50.368053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.197495, 34.266811, 50.317726>,  <44.076515, 34.638737, 50.233849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.197495, 34.266811, 50.317726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781224, 0.367859, 0.504351,
		-0.546092, 0.011282, 0.837650,
		0.302447, -0.929813, 0.209698,
		44.288227, 33.987869, 50.380634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.219452, 34.648075, 50.896202>,  <44.076515, 34.638737, 50.233849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.219452, 34.648075, 50.896202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.418373, 34.340286, 50.735901>,  <44.537727, 34.155613, 50.639721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.418373, 34.340286, 50.735901>,  <44.219452, 34.648075, 50.896202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.418373, 34.340286, 50.735901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837831, 0.306037, 0.452084,
		-0.225221, -0.560585, 0.796881,
		0.497307, -0.769471, -0.400750,
		44.567566, 34.109444, 50.615677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.591358, 34.452675, 51.446217>,  <44.219452, 34.648075, 50.896202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.591358, 34.452675, 51.446217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.740101, 34.246017, 51.137722>,  <44.829346, 34.122021, 50.952625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.740101, 34.246017, 51.137722>,  <44.591358, 34.452675, 51.446217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.740101, 34.246017, 51.137722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920837, 0.100224, 0.376847,
		-0.117401, -0.850313, 0.513016,
		0.371855, -0.516647, -0.771233,
		44.851658, 34.091022, 50.906353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.090485, 33.971661, 51.732716>,  <44.591358, 34.452675, 51.446217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.090485, 33.971661, 51.732716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.193352, 34.027290, 51.350193>,  <45.255074, 34.060669, 51.120678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.193352, 34.027290, 51.350193>,  <45.090485, 33.971661, 51.732716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.193352, 34.027290, 51.350193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958121, 0.092302, 0.271080,
		0.125968, -0.985971, -0.109510,
		0.257169, 0.139071, -0.956307,
		45.270504, 34.069012, 51.063301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.659737, 33.492836, 51.659859>,  <45.090485, 33.971661, 51.732716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.659737, 33.492836, 51.659859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.693153, 33.763332, 51.367088>,  <45.713203, 33.925629, 51.191425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.693153, 33.763332, 51.367088>,  <45.659737, 33.492836, 51.659859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.693153, 33.763332, 51.367088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988859, 0.034550, 0.144790,
		0.123201, -0.735872, -0.665819,
		0.083543, 0.676239, -0.731930,
		45.718216, 33.966206, 51.147511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.155457, 33.231022, 51.373592>,  <45.659737, 33.492836, 51.659859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.155457, 33.231022, 51.373592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.168240, 33.598759, 51.216732>,  <46.175911, 33.819401, 51.122616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.168240, 33.598759, 51.216732>,  <46.155457, 33.231022, 51.373592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.168240, 33.598759, 51.216732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974438, 0.058629, 0.216872,
		0.222372, -0.389056, -0.893972,
		0.031962, 0.919346, -0.392149,
		46.177830, 33.874561, 51.099087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.754120, 33.264923, 50.925961>,  <46.155457, 33.231022, 51.373592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.754120, 33.264923, 50.925961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.632984, 33.631836, 51.029404>,  <46.560303, 33.851982, 51.091469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.632984, 33.631836, 51.029404>,  <46.754120, 33.264923, 50.925961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.632984, 33.631836, 51.029404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927131, 0.220713, 0.302842,
		0.220713, 0.331477, -0.917283,
		-0.302842, 0.917283, 0.258608,
		46.542133, 33.907021, 51.106987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.161766, 33.860981, 50.565445>,  <46.754120, 33.264923, 50.925961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.161766, 33.860981, 50.565445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.014206, 33.974522, 50.919472>,  <46.925671, 34.042645, 51.131889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.014206, 33.974522, 50.919472>,  <47.161766, 33.860981, 50.565445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.014206, 33.974522, 50.919472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929166, 0.088330, 0.358954,
		0.023711, 0.954792, -0.296328,
		-0.368901, 0.283849, 0.885066,
		46.903534, 34.059677, 51.184990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.454227, 34.393677, 50.628510>,  <47.161766, 33.860981, 50.565445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.454227, 34.393677, 50.628510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.326107, 34.362671, 51.006165>,  <47.249233, 34.344067, 51.232758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.326107, 34.362671, 51.006165>,  <47.454227, 34.393677, 50.628510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.326107, 34.362671, 51.006165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900695, 0.283888, 0.328872,
		-0.293520, 0.955720, -0.021118,
		-0.320304, -0.077510, 0.944139,
		47.230015, 34.339417, 51.289406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.539474, 35.053654, 51.001774>,  <47.454227, 34.393677, 50.628510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.539474, 35.053654, 51.001774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.528271, 34.763470, 51.276852>,  <47.521549, 34.589359, 51.441898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.528271, 34.763470, 51.276852>,  <47.539474, 35.053654, 51.001774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.528271, 34.763470, 51.276852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814867, 0.381901, 0.436054,
		-0.578970, 0.572596, 0.580454,
		-0.028007, -0.725456, 0.687699,
		47.519867, 34.545834, 51.483162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.536018, 35.398956, 51.614075>,  <47.539474, 35.053654, 51.001774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.536018, 35.398956, 51.614075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.686680, 35.044178, 51.721001>,  <47.777077, 34.831310, 51.785156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.686680, 35.044178, 51.721001>,  <47.536018, 35.398956, 51.614075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.686680, 35.044178, 51.721001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755960, 0.461077, 0.464686,
		-0.535403, 0.027050, 0.844163,
		0.376654, -0.886948, 0.267311,
		47.799675, 34.778095, 51.801193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<24.124557, 35.196152, 51.616425> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.288519, 35.077492, 51.961441>,  <24.386896, 35.006298, 52.168453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.288519, 35.077492, 51.961441>,  <24.124557, 35.196152, 51.616425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.288519, 35.077492, 51.961441> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909749, 0.201235, -0.363127,
		-0.065853, 0.933545, 0.352360,
		0.409903, -0.296646, 0.862543,
		24.411489, 34.988499, 52.220203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.695631, 35.646168, 51.729076>,  <24.124557, 35.196152, 51.616425>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.695631, 35.646168, 51.729076> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.788658, 35.344296, 51.974472>,  <24.844475, 35.163170, 52.121708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.788658, 35.344296, 51.974472>,  <24.695631, 35.646168, 51.729076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.788658, 35.344296, 51.974472> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970753, 0.218768, -0.098889,
		-0.059581, 0.618541, 0.783491,
		0.232570, -0.754684, 0.613485,
		24.858429, 35.117889, 52.158516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.152206, 35.901810, 52.130516>,  <24.695631, 35.646168, 51.729076>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.152206, 35.901810, 52.130516> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.218843, 35.509453, 52.170719>,  <25.258825, 35.274040, 52.194839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.218843, 35.509453, 52.170719>,  <25.152206, 35.901810, 52.130516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.218843, 35.509453, 52.170719> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983904, 0.158687, -0.082167,
		0.064648, 0.112578, 0.991538,
		0.166594, -0.980890, 0.100507,
		25.268822, 35.215187, 52.200871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.777815, 35.856758, 52.408985>,  <25.152206, 35.901810, 52.130516>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.777815, 35.856758, 52.408985> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.739372, 35.473164, 52.302315>,  <25.716307, 35.243008, 52.238312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.739372, 35.473164, 52.302315>,  <25.777815, 35.856758, 52.408985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.739372, 35.473164, 52.302315> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989845, -0.063884, -0.126987,
		0.104742, -0.276175, 0.955383,
		-0.096104, -0.958982, -0.266679,
		25.710541, 35.185471, 52.222309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.352549, 35.553318, 52.561337>,  <25.777815, 35.856758, 52.408985>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.352549, 35.553318, 52.561337> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.265411, 35.255550, 52.308865>,  <26.213129, 35.076889, 52.157383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.265411, 35.255550, 52.308865>,  <26.352549, 35.553318, 52.561337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.265411, 35.255550, 52.308865> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955410, -0.030565, -0.293698,
		0.199341, -0.667014, 0.717882,
		-0.217843, -0.744418, -0.631179,
		26.200058, 35.032227, 52.119511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.940285, 35.250683, 52.568901>,  <26.352549, 35.553318, 52.561337>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.940285, 35.250683, 52.568901> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.765490, 35.131687, 52.229362>,  <26.660612, 35.060291, 52.025639>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.765490, 35.131687, 52.229362>,  <26.940285, 35.250683, 52.568901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.765490, 35.131687, 52.229362> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873583, -0.365139, -0.321756,
		-0.214228, -0.882142, 0.419442,
		-0.436989, -0.297488, -0.848847,
		26.634394, 35.042442, 51.974709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.300930, 34.679070, 52.467525>,  <26.940285, 35.250683, 52.568901>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.300930, 34.679070, 52.467525> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.119764, 34.768166, 52.122211>,  <27.011065, 34.821621, 51.915024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.119764, 34.768166, 52.122211>,  <27.300930, 34.679070, 52.467525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.119764, 34.768166, 52.122211> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883579, -0.017094, -0.467970,
		-0.118991, -0.974729, -0.189063,
		-0.452912, 0.222736, -0.863284,
		26.983891, 34.834988, 51.863228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.475204, 34.183044, 52.051052>,  <27.300930, 34.679070, 52.467525>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.475204, 34.183044, 52.051052> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.372046, 34.471012, 51.793308>,  <27.310150, 34.643795, 51.638660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.372046, 34.471012, 51.793308>,  <27.475204, 34.183044, 52.051052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.372046, 34.471012, 51.793308> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836040, -0.168000, -0.522316,
		-0.484279, -0.673417, -0.558555,
		-0.257899, 0.719921, -0.644362,
		27.294676, 34.686989, 51.599998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.736788, 33.940235, 51.300175>,  <27.475204, 34.183044, 52.051052>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.736788, 33.940235, 51.300175> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.663391, 34.333363, 51.308094>,  <27.619352, 34.569241, 51.312847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.663391, 34.333363, 51.308094>,  <27.736788, 33.940235, 51.300175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.663391, 34.333363, 51.308094> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879442, 0.173125, -0.443406,
		-0.439217, -0.063948, -0.896102,
		-0.183492, 0.982822, 0.019801,
		27.608343, 34.628208, 51.314034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.843513, 34.121265, 50.583595>,  <27.736788, 33.940235, 51.300175>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.843513, 34.121265, 50.583595> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.894066, 34.433922, 50.827911>,  <27.924397, 34.621513, 50.974503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.894066, 34.433922, 50.827911>,  <27.843513, 34.121265, 50.583595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.894066, 34.433922, 50.827911> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866140, 0.213199, -0.452047,
		-0.483559, 0.586163, -0.650065,
		0.126380, 0.781639, 0.610794,
		27.931980, 34.668415, 51.011150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.924383, 34.647003, 50.176540>,  <27.843513, 34.121265, 50.583595>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.924383, 34.647003, 50.176540> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.084030, 34.752266, 50.527870>,  <28.179817, 34.815422, 50.738667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.084030, 34.752266, 50.527870>,  <27.924383, 34.647003, 50.176540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.084030, 34.752266, 50.527870> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846150, 0.263274, -0.463375,
		-0.353180, 0.928136, -0.117592,
		0.399116, 0.263155, 0.878326,
		28.203764, 34.831211, 50.791367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.362167, 35.219456, 50.035156>,  <27.924383, 34.647003, 50.176540>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.362167, 35.219456, 50.035156> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.542845, 35.117844, 50.377254>,  <28.651251, 35.056877, 50.582512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.542845, 35.117844, 50.377254>,  <28.362167, 35.219456, 50.035156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.542845, 35.117844, 50.377254> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890749, 0.074286, -0.448383,
		0.050370, 0.964339, 0.259831,
		0.451695, -0.254030, 0.855243,
		28.678352, 35.041634, 50.633827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.963675, 35.678852, 50.063290>,  <28.362167, 35.219456, 50.035156>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.963675, 35.678852, 50.063290> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.014465, 35.373680, 50.316845>,  <29.044941, 35.190575, 50.468979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.014465, 35.373680, 50.316845>,  <28.963675, 35.678852, 50.063290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.014465, 35.373680, 50.316845> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918202, -0.151327, -0.366068,
		0.375209, 0.628516, 0.681312,
		0.126979, -0.762934, 0.633884,
		29.052559, 35.144798, 50.507011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.584583, 35.773724, 50.384789>,  <28.963675, 35.678852, 50.063290>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.584583, 35.773724, 50.384789> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.513336, 35.383568, 50.436764>,  <29.470587, 35.149475, 50.467949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.513336, 35.383568, 50.436764>,  <29.584583, 35.773724, 50.384789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.513336, 35.383568, 50.436764> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904248, -0.214328, -0.369322,
		0.388084, 0.051715, 0.920172,
		-0.178119, -0.975392, 0.129941,
		29.459900, 35.090950, 50.475746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.195621, 35.463703, 50.745918>,  <29.584583, 35.773724, 50.384789>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.195621, 35.463703, 50.745918> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.009214, 35.142330, 50.597691>,  <29.897369, 34.949505, 50.508755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.009214, 35.142330, 50.597691>,  <30.195621, 35.463703, 50.745918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.009214, 35.142330, 50.597691> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869404, -0.338090, -0.360323,
		0.164212, -0.490089, 0.856065,
		-0.466017, -0.803435, -0.370567,
		29.869410, 34.901299, 50.486519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.564457, 34.907784, 50.998749>,  <30.195621, 35.463703, 50.745918>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.564457, 34.907784, 50.998749> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.373150, 34.757973, 50.681011>,  <30.258366, 34.668087, 50.490368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.373150, 34.757973, 50.681011>,  <30.564457, 34.907784, 50.998749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.373150, 34.757973, 50.681011> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873105, -0.300202, -0.384144,
		-0.094593, -0.877273, 0.470579,
		-0.478267, -0.374528, -0.794348,
		30.229670, 34.645615, 50.442707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.998554, 34.410656, 50.756882>,  <30.564457, 34.907784, 50.998749>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.998554, 34.410656, 50.756882> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.772091, 34.497398, 50.438778>,  <30.636213, 34.549446, 50.247917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.772091, 34.497398, 50.438778>,  <30.998554, 34.410656, 50.756882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.772091, 34.497398, 50.438778> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717797, -0.344615, -0.604987,
		-0.405256, -0.913352, 0.039444,
		-0.566159, 0.216861, -0.795258,
		30.602243, 34.562458, 50.200199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.046415, 33.837219, 50.280903>,  <30.998554, 34.410656, 50.756882>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.046415, 33.837219, 50.280903> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.921700, 34.122292, 50.029545>,  <30.846870, 34.293335, 49.878731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.921700, 34.122292, 50.029545>,  <31.046415, 33.837219, 50.280903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.921700, 34.122292, 50.029545> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798355, -0.162094, -0.579960,
		-0.515184, -0.682506, -0.518432,
		-0.311792, 0.712679, -0.628390,
		30.828161, 34.336094, 49.841026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.971323, 33.529564, 49.640175>,  <31.046415, 33.837219, 50.280903>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.971323, 33.529564, 49.640175> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.004938, 33.915188, 49.539364>,  <31.025108, 34.146564, 49.478878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.004938, 33.915188, 49.539364>,  <30.971323, 33.529564, 49.640175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.004938, 33.915188, 49.539364> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678604, -0.240581, -0.693986,
		-0.729681, -0.112708, -0.674435,
		0.084039, 0.964063, -0.252031,
		31.030149, 34.204407, 49.463753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.945261, 33.662106, 48.850056>,  <30.971323, 33.529564, 49.640175>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.945261, 33.662106, 48.850056> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.135687, 33.986588, 48.985886>,  <31.249943, 34.181278, 49.067383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.135687, 33.986588, 48.985886>,  <30.945261, 33.662106, 48.850056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.135687, 33.986588, 48.985886> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737797, -0.158296, -0.656200,
		-0.478559, 0.562930, -0.673863,
		0.476065, 0.811204, 0.339574,
		31.278507, 34.229950, 49.087757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.214172, 33.921291, 48.224716>,  <30.945261, 33.662106, 48.850056>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.214172, 33.921291, 48.224716> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.411715, 34.114002, 48.514267>,  <31.530239, 34.229630, 48.688000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.411715, 34.114002, 48.514267>,  <31.214172, 33.921291, 48.224716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.411715, 34.114002, 48.514267> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862331, -0.164339, -0.478933,
		-0.111775, 0.860748, -0.496607,
		0.493853, 0.481773, 0.723881,
		31.559870, 34.258533, 48.731430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<24.109056, 35.461639, 34.734470> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.307066, 35.137218, 34.859146>,  <24.425871, 34.942566, 34.933952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.307066, 35.137218, 34.859146>,  <24.109056, 35.461639, 34.734470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.307066, 35.137218, 34.859146> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284630, 0.490301, 0.823766,
		-0.820937, -0.319067, 0.473559,
		0.495023, -0.811049, 0.311690,
		24.455572, 34.893902, 34.952652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.856909, 35.332172, 35.379017>,  <24.109056, 35.461639, 34.734470>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.856909, 35.332172, 35.379017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.232174, 35.194355, 35.365513>,  <24.457333, 35.111664, 35.357410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.232174, 35.194355, 35.365513>,  <23.856909, 35.332172, 35.379017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.232174, 35.194355, 35.365513> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244377, 0.590035, 0.769505,
		-0.245208, -0.730172, 0.637748,
		0.938164, -0.344540, -0.033756,
		24.513624, 35.090992, 35.355385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.016926, 35.096428, 35.963039>,  <23.856909, 35.332172, 35.379017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.016926, 35.096428, 35.963039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.364117, 35.210705, 35.800560>,  <24.572432, 35.279270, 35.703072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.364117, 35.210705, 35.800560>,  <24.016926, 35.096428, 35.963039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.364117, 35.210705, 35.800560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155563, 0.620358, 0.768737,
		0.471609, -0.730435, 0.494013,
		0.867977, 0.285692, -0.406195,
		24.624510, 35.296413, 35.678703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.393019, 35.652473, 36.396168>,  <24.016926, 35.096428, 35.963039>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.393019, 35.652473, 36.396168> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.634409, 35.637459, 36.077568>,  <24.779243, 35.628448, 35.886410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.634409, 35.637459, 36.077568>,  <24.393019, 35.652473, 36.396168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.634409, 35.637459, 36.077568> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486739, 0.808541, 0.330676,
		0.631587, -0.587242, 0.506207,
		0.603476, -0.037540, -0.796497,
		24.815453, 35.626198, 35.838619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.082302, 35.489769, 36.641766>,  <24.393019, 35.652473, 36.396168>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.082302, 35.489769, 36.641766> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.115728, 35.694969, 36.300041>,  <25.135784, 35.818089, 36.095009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.115728, 35.694969, 36.300041>,  <25.082302, 35.489769, 36.641766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.115728, 35.694969, 36.300041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703385, 0.576914, 0.415233,
		0.705880, -0.635607, -0.312630,
		0.083564, 0.513004, -0.854309,
		25.140799, 35.848869, 36.043747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.774965, 35.500546, 36.464523>,  <25.082302, 35.489769, 36.641766>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.774965, 35.500546, 36.464523> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.592085, 35.833576, 36.339443>,  <25.482357, 36.033394, 36.264393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.592085, 35.833576, 36.339443>,  <25.774965, 35.500546, 36.464523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.592085, 35.833576, 36.339443> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525194, 0.536500, 0.660560,
		0.717732, 0.137778, -0.682552,
		-0.457200, 0.832577, -0.312703,
		25.454926, 36.083351, 36.245632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.080132, 35.971077, 36.836891>,  <25.774965, 35.500546, 36.464523>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.080132, 35.971077, 36.836891> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.780420, 36.194294, 36.694244>,  <25.600594, 36.328224, 36.608658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.780420, 36.194294, 36.694244>,  <26.080132, 35.971077, 36.836891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.780420, 36.194294, 36.694244> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259559, 0.742854, 0.617087,
		0.609274, 0.369806, -0.701448,
		-0.749276, 0.558042, -0.356615,
		25.555637, 36.361706, 36.587261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.163984, 35.847672, 37.531147>,  <26.080132, 35.971077, 36.836891>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.163984, 35.847672, 37.531147> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.421219, 36.147312, 37.594765>,  <26.575560, 36.327095, 37.632935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.421219, 36.147312, 37.594765>,  <26.163984, 35.847672, 37.531147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.421219, 36.147312, 37.594765> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390486, 0.142114, 0.909574,
		0.658758, -0.647036, 0.383904,
		0.643085, 0.749098, 0.159040,
		26.614143, 36.372040, 37.642475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.554550, 35.716152, 38.152760>,  <26.163984, 35.847672, 37.531147>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.554550, 35.716152, 38.152760> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.542778, 36.111755, 38.094795>,  <26.535715, 36.349117, 38.060017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.542778, 36.111755, 38.094795>,  <26.554550, 35.716152, 38.152760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.542778, 36.111755, 38.094795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312877, 0.128575, 0.941051,
		0.949338, 0.073034, 0.305653,
		-0.029430, 0.989007, -0.144912,
		26.533949, 36.408459, 38.051323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.970047, 36.141361, 38.680435>,  <26.554550, 35.716152, 38.152760>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.970047, 36.141361, 38.680435> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.650221, 36.341347, 38.547325>,  <26.458324, 36.461338, 38.467461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.650221, 36.341347, 38.547325>,  <26.970047, 36.141361, 38.680435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.650221, 36.341347, 38.547325> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284748, 0.172270, 0.942996,
		0.528786, 0.848742, 0.004622,
		-0.799565, 0.499959, -0.332772,
		26.410351, 36.491333, 38.447495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.707434, 35.912235, 38.666313>,  <26.970047, 36.141361, 38.680435>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.707434, 35.912235, 38.666313> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.609524, 36.266987, 38.509579>,  <27.550777, 36.479839, 38.415539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.609524, 36.266987, 38.509579>,  <27.707434, 35.912235, 38.666313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.609524, 36.266987, 38.509579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881959, 0.035783, -0.469966,
		-0.402782, -0.460616, -0.790949,
		-0.244776, 0.886878, -0.391832,
		27.536091, 36.533051, 38.392029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.848915, 35.959072, 37.907654>,  <27.707434, 35.912235, 38.666313>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.848915, 35.959072, 37.907654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.881361, 36.302773, 38.109684>,  <27.900827, 36.508995, 38.230904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.881361, 36.302773, 38.109684>,  <27.848915, 35.959072, 37.907654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.881361, 36.302773, 38.109684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891030, 0.164567, -0.423063,
		-0.446638, 0.484355, -0.752273,
		0.081114, 0.859254, 0.505077,
		27.905695, 36.560551, 38.261208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.961227, 36.508957, 37.337624>,  <27.848915, 35.959072, 37.907654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.961227, 36.508957, 37.337624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.094917, 36.565781, 37.710316>,  <28.175131, 36.599873, 37.933929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.094917, 36.565781, 37.710316>,  <27.961227, 36.508957, 37.337624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.094917, 36.565781, 37.710316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861138, 0.355764, -0.363144,
		-0.383061, 0.923717, -0.003425,
		0.334224, 0.142056, 0.931727,
		28.195185, 36.608398, 37.989834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.373003, 37.080894, 37.284801>,  <27.961227, 36.508957, 37.337624>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.373003, 37.080894, 37.284801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.492079, 36.887215, 37.613907>,  <28.563524, 36.771008, 37.811371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.492079, 36.887215, 37.613907>,  <28.373003, 37.080894, 37.284801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.492079, 36.887215, 37.613907> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951108, 0.224734, -0.211871,
		-0.082316, 0.845606, 0.527422,
		0.297689, -0.484195, 0.822762,
		28.581385, 36.741955, 37.860737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.944162, 37.398186, 37.576832>,  <28.373003, 37.080894, 37.284801>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.944162, 37.398186, 37.576832> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.968473, 37.037354, 37.747738>,  <28.983061, 36.820854, 37.850281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.968473, 37.037354, 37.747738>,  <28.944162, 37.398186, 37.576832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.968473, 37.037354, 37.747738> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998117, 0.051357, -0.033548,
		0.008320, 0.428496, 0.903505,
		0.060777, -0.902083, 0.427262,
		28.986706, 36.766727, 37.875916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.232309, 37.349663, 38.295540>,  <28.944162, 37.398186, 37.576832>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.232309, 37.349663, 38.295540> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.344145, 36.993416, 38.152081>,  <29.411245, 36.779667, 38.066006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.344145, 36.993416, 38.152081>,  <29.232309, 37.349663, 38.295540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.344145, 36.993416, 38.152081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916442, 0.136163, 0.376289,
		-0.286295, -0.433887, 0.854270,
		0.279587, -0.890619, -0.358650,
		29.428020, 36.726231, 38.044487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.660303, 36.978863, 38.850616>,  <29.232309, 37.349663, 38.295540>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.660303, 36.978863, 38.850616> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.783424, 36.842049, 38.495480>,  <29.857298, 36.759960, 38.282398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.783424, 36.842049, 38.495480>,  <29.660303, 36.978863, 38.850616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.783424, 36.842049, 38.495480> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938878, -0.042005, 0.341678,
		-0.154160, -0.938748, 0.308201,
		0.307803, -0.342036, -0.887845,
		29.875765, 36.739437, 38.229126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.324312, 37.652699, 38.949139>,  <29.660303, 36.978863, 38.850616>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.324312, 37.652699, 38.949139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.472784, 37.986549, 39.111923>,  <29.561867, 38.186859, 39.209595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.472784, 37.986549, 39.111923>,  <29.324312, 37.652699, 38.949139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.472784, 37.986549, 39.111923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417335, -0.541461, 0.729830,
		0.829492, -0.101059, -0.549300,
		0.371181, 0.834630, 0.406962,
		29.584139, 38.236938, 39.234013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.023399, 37.656345, 38.912415>,  <29.324312, 37.652699, 38.949139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.023399, 37.656345, 38.912415> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.889273, 37.846325, 39.237865>,  <29.808798, 37.960312, 39.433136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.889273, 37.846325, 39.237865>,  <30.023399, 37.656345, 38.912415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.889273, 37.846325, 39.237865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385345, -0.718937, 0.578480,
		0.859694, 0.507500, 0.058053,
		-0.335315, 0.474945, 0.813628,
		29.788677, 37.988808, 39.481953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.581282, 37.776546, 39.434044>,  <30.023399, 37.656345, 38.912415>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.581282, 37.776546, 39.434044> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.215378, 37.703167, 39.578022>,  <29.995834, 37.659142, 39.664410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.215378, 37.703167, 39.578022>,  <30.581282, 37.776546, 39.434044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.215378, 37.703167, 39.578022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350914, -0.802265, 0.482939,
		0.200175, 0.568083, 0.798256,
		-0.914762, -0.183446, 0.359942,
		29.940948, 37.648132, 39.686005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.661280, 37.487579, 40.251133>,  <30.581282, 37.776546, 39.434044>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.661280, 37.487579, 40.251133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.317976, 37.373795, 40.080265>,  <30.111994, 37.305523, 39.977745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.317976, 37.373795, 40.080265>,  <30.661280, 37.487579, 40.251133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.317976, 37.373795, 40.080265> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043355, -0.869546, 0.491944,
		-0.511380, 0.403697, 0.758630,
		-0.858261, -0.284461, -0.427166,
		30.060497, 37.288456, 39.952114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.171785, 37.210503, 40.871113>,  <30.661280, 37.487579, 40.251133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.171785, 37.210503, 40.871113> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.083752, 37.069427, 40.507317>,  <30.030931, 36.984783, 40.289040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.083752, 37.069427, 40.507317>,  <30.171785, 37.210503, 40.871113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.083752, 37.069427, 40.507317> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000687, -0.932294, 0.361699,
		-0.975480, 0.080229, 0.204942,
		-0.220085, -0.352690, -0.909490,
		30.017727, 36.963619, 40.234470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.584623, 36.929688, 40.953331>,  <30.171785, 37.210503, 40.871113>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.584623, 36.929688, 40.953331> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.790743, 36.737713, 40.669323>,  <29.914415, 36.622528, 40.498917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.790743, 36.737713, 40.669323>,  <29.584623, 36.929688, 40.953331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.790743, 36.737713, 40.669323> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028280, -0.837554, 0.545622,
		-0.856548, -0.261075, -0.445158,
		0.515292, -0.479941, -0.710022,
		29.945332, 36.593731, 40.456318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.943783, 37.183128, 41.666553>,  <29.584623, 36.929688, 40.953331>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.943783, 37.183128, 41.666553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.713812, 36.856285, 41.683472>,  <29.575829, 36.660179, 41.693623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.713812, 36.856285, 41.683472>,  <29.943783, 37.183128, 41.666553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.713812, 36.856285, 41.683472> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542045, -0.341648, 0.767766,
		-0.612898, 0.464337, 0.639333,
		-0.574929, -0.817109, 0.042296,
		29.541332, 36.611153, 41.696159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.602053, 37.163563, 42.272045>,  <29.943783, 37.183128, 41.666553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.602053, 37.163563, 42.272045> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.697084, 36.806301, 42.119293>,  <29.754103, 36.591946, 42.027641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.697084, 36.806301, 42.119293>,  <29.602053, 37.163563, 42.272045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.697084, 36.806301, 42.119293> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604494, -0.171794, 0.777865,
		-0.760357, -0.415651, 0.499091,
		0.237580, -0.893152, -0.381883,
		29.768358, 36.538357, 42.004726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.362703, 36.697552, 42.740269>,  <29.602053, 37.163563, 42.272045>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.362703, 36.697552, 42.740269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.694252, 36.575653, 42.552608>,  <29.893181, 36.502514, 42.440014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.694252, 36.575653, 42.552608>,  <29.362703, 36.697552, 42.740269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.694252, 36.575653, 42.552608> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492299, -0.001010, 0.870425,
		-0.265732, -0.952434, 0.149189,
		0.828871, -0.304745, -0.469151,
		29.942913, 36.484230, 42.411861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.700031, 36.089874, 43.038971>,  <29.362703, 36.697552, 42.740269>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.700031, 36.089874, 43.038971> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.975330, 36.336784, 42.886505>,  <30.140509, 36.484932, 42.795025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.975330, 36.336784, 42.886505>,  <29.700031, 36.089874, 43.038971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.975330, 36.336784, 42.886505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403677, 0.110711, 0.908179,
		0.602797, -0.778918, -0.172984,
		0.688245, 0.617276, -0.381167,
		30.181805, 36.521969, 42.772156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.277050, 35.839787, 43.310360>,  <29.700031, 36.089874, 43.038971>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.277050, 35.839787, 43.310360> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.337812, 36.217186, 43.192562>,  <30.374269, 36.443626, 43.121883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.337812, 36.217186, 43.192562>,  <30.277050, 35.839787, 43.310360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.337812, 36.217186, 43.192562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468925, 0.193490, 0.861783,
		0.870076, -0.269009, -0.413039,
		0.151908, 0.943502, -0.294496,
		30.383385, 36.500237, 43.104214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.051884, 35.990688, 43.204601>,  <30.277050, 35.839787, 43.310360>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.051884, 35.990688, 43.204601> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.802620, 36.271851, 43.341766>,  <30.653061, 36.440548, 43.424065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.802620, 36.271851, 43.341766>,  <31.051884, 35.990688, 43.204601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.802620, 36.271851, 43.341766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565807, 0.102485, 0.818144,
		0.539938, 0.703857, -0.461576,
		-0.623161, 0.702910, 0.342911,
		30.615671, 36.482723, 43.444641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.526600, 36.677032, 43.364822>,  <31.051884, 35.990688, 43.204601>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.526600, 36.677032, 43.364822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.194628, 36.567108, 43.559017>,  <30.995445, 36.501152, 43.675533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.194628, 36.567108, 43.559017>,  <31.526600, 36.677032, 43.364822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.194628, 36.567108, 43.559017> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510734, -0.024182, 0.859399,
		-0.224432, 0.961194, 0.160425,
		-0.829929, -0.274811, 0.485487,
		30.945650, 36.484665, 43.704662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.451044, 37.030476, 43.970448>,  <31.526600, 36.677032, 43.364822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.451044, 37.030476, 43.970448> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.264275, 36.688484, 44.060768>,  <31.152212, 36.483288, 44.114960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.264275, 36.688484, 44.060768>,  <31.451044, 37.030476, 43.970448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.264275, 36.688484, 44.060768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497138, -0.042617, 0.866624,
		-0.731325, 0.516903, 0.444943,
		-0.466923, -0.854982, 0.225806,
		31.124197, 36.431988, 44.128510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.016687, 37.057590, 44.540901>,  <31.451044, 37.030476, 43.970448>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.016687, 37.057590, 44.540901> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.179676, 36.696896, 44.483173>,  <31.277470, 36.480476, 44.448536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.179676, 36.696896, 44.483173>,  <31.016687, 37.057590, 44.540901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.179676, 36.696896, 44.483173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393853, 0.030947, 0.918652,
		-0.823921, -0.431166, 0.367764,
		0.407473, -0.901742, -0.144318,
		31.301918, 36.426373, 44.439877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.841696, 36.497696, 45.026878>,  <31.016687, 37.057590, 44.540901>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.841696, 36.497696, 45.026878> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.209196, 36.426514, 44.885899>,  <31.429697, 36.383804, 44.801311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.209196, 36.426514, 44.885899>,  <30.841696, 36.497696, 45.026878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.209196, 36.426514, 44.885899> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325806, -0.162543, 0.931359,
		-0.223036, -0.970520, -0.091356,
		0.918752, -0.177963, -0.352454,
		31.484821, 36.373127, 44.780163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.017477, 35.863457, 45.195393>,  <30.841696, 36.497696, 45.026878>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.017477, 35.863457, 45.195393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.350996, 36.080250, 45.153381>,  <31.551107, 36.210327, 45.128174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.350996, 36.080250, 45.153381>,  <31.017477, 35.863457, 45.195393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.350996, 36.080250, 45.153381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221056, -0.153433, 0.963116,
		0.505881, -0.826262, -0.247741,
		0.833798, 0.541987, -0.105031,
		31.601135, 36.242847, 45.121872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.538176, 35.615543, 45.675507>,  <31.017477, 35.863457, 45.195393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.538176, 35.615543, 45.675507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.195122, 35.674557, 45.872562>,  <30.989288, 35.709965, 45.990795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.195122, 35.674557, 45.872562>,  <31.538176, 35.615543, 45.675507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.195122, 35.674557, 45.872562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437599, -0.293830, 0.849807,
		0.270126, 0.944404, 0.187439,
		-0.857636, 0.147532, 0.492641,
		30.937832, 35.718815, 46.020355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.657822, 36.175583, 46.172501>,  <31.538176, 35.615543, 45.675507>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.657822, 36.175583, 46.172501> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.405544, 35.876862, 46.256893>,  <31.254177, 35.697628, 46.307529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.405544, 35.876862, 46.256893>,  <31.657822, 36.175583, 46.172501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.405544, 35.876862, 46.256893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593295, -0.288772, 0.751407,
		-0.500227, 0.599081, 0.625200,
		-0.630693, -0.746802, 0.210980,
		31.216335, 35.652821, 46.320187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.477648, 36.220650, 46.979202>,  <31.657822, 36.175583, 46.172501>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.477648, 36.220650, 46.979202> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.442972, 35.858051, 46.813911>,  <31.422167, 35.640491, 46.714737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.442972, 35.858051, 46.813911>,  <31.477648, 36.220650, 46.979202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.442972, 35.858051, 46.813911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654770, -0.364462, 0.662150,
		-0.750840, -0.213168, 0.625139,
		-0.086691, -0.906491, -0.413229,
		31.416965, 35.586105, 46.689941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.537531, 35.672985, 47.526508>,  <31.477648, 36.220650, 46.979202>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.537531, 35.672985, 47.526508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.651176, 35.509853, 47.179417>,  <31.719364, 35.411976, 46.971161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.651176, 35.509853, 47.179417>,  <31.537531, 35.672985, 47.526508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.651176, 35.509853, 47.179417> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757424, -0.459435, 0.463928,
		-0.587869, -0.789047, 0.178369,
		0.284112, -0.407829, -0.867730,
		31.736410, 35.387505, 46.919098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.478085, 34.886272, 47.519749>,  <31.537531, 35.672985, 47.526508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.478085, 34.886272, 47.519749> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.757250, 35.040321, 47.278221>,  <31.924749, 35.132751, 47.133305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.757250, 35.040321, 47.278221>,  <31.478085, 34.886272, 47.519749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.757250, 35.040321, 47.278221> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715804, -0.402504, 0.570627,
		-0.023281, -0.830466, -0.556582,
		0.697913, 0.385119, -0.603822,
		31.966623, 35.155857, 47.097076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.767746, 34.638763, 48.141228>,  <31.478085, 34.886272, 47.519749>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.767746, 34.638763, 48.141228> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.039448, 34.792690, 48.391197>,  <32.202469, 34.885048, 48.541180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.039448, 34.792690, 48.391197>,  <31.767746, 34.638763, 48.141228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.039448, 34.792690, 48.391197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706942, -0.114404, -0.697957,
		-0.197095, 0.915874, -0.349755,
		0.679254, 0.384820, 0.624922,
		32.243225, 34.908138, 48.578674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.257175, 35.263599, 47.744572>,  <31.767746, 34.638763, 48.141228>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.257175, 35.263599, 47.744572> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.384922, 35.039230, 48.050087>,  <32.461571, 34.904610, 48.233395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.384922, 35.039230, 48.050087>,  <32.257175, 35.263599, 47.744572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.384922, 35.039230, 48.050087> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896178, -0.083198, -0.435826,
		0.308011, 0.823676, 0.476117,
		0.319367, -0.560924, 0.763786,
		32.480732, 34.870953, 48.279224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.004967, 35.512058, 48.103924>,  <32.257175, 35.263599, 47.744572>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.004967, 35.512058, 48.103924> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.936977, 35.126194, 48.184464>,  <32.896183, 34.894676, 48.232788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.936977, 35.126194, 48.184464>,  <33.004967, 35.512058, 48.103924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.936977, 35.126194, 48.184464> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852982, -0.246337, -0.460151,
		0.493489, 0.093534, 0.864708,
		-0.169970, -0.964660, 0.201347,
		32.885986, 34.836796, 48.244869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.635571, 35.213814, 48.480473>,  <33.004967, 35.512058, 48.103924>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.635571, 35.213814, 48.480473> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.424774, 34.920132, 48.309258>,  <33.298294, 34.743923, 48.206528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.424774, 34.920132, 48.309258>,  <33.635571, 35.213814, 48.480473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.424774, 34.920132, 48.309258> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819580, -0.305789, -0.484543,
		0.224867, -0.606161, 0.762892,
		-0.526994, -0.734209, -0.428036,
		33.266674, 34.699867, 48.180847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.062885, 34.608841, 48.642822>,  <33.635571, 35.213814, 48.480473>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.062885, 34.608841, 48.642822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.817085, 34.510456, 48.342983>,  <33.669605, 34.451427, 48.163078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.817085, 34.510456, 48.342983>,  <34.062885, 34.608841, 48.642822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.817085, 34.510456, 48.342983> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779918, -0.332516, -0.530246,
		-0.118835, -0.910460, 0.396157,
		-0.614496, -0.245958, -0.749599,
		33.632736, 34.436668, 48.118103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.238136, 33.913723, 48.541519>,  <34.062885, 34.608841, 48.642822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.238136, 33.913723, 48.541519> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.048111, 34.053276, 48.218384>,  <33.934097, 34.137009, 48.024502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.048111, 34.053276, 48.218384>,  <34.238136, 33.913723, 48.541519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.048111, 34.053276, 48.218384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724929, -0.365214, -0.584035,
		-0.498793, -0.863075, -0.079416,
		-0.475062, 0.348883, -0.807834,
		33.905594, 34.157940, 47.976032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.312428, 33.356785, 48.086407>,  <34.238136, 33.913723, 48.541519>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.312428, 33.356785, 48.086407> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.195683, 33.658981, 47.851788>,  <34.125637, 33.840302, 47.711014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.195683, 33.658981, 47.851788>,  <34.312428, 33.356785, 48.086407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.195683, 33.658981, 47.851788> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487547, -0.410084, -0.770798,
		-0.822869, -0.510939, -0.248651,
		-0.291863, 0.755495, -0.586552,
		34.108124, 33.885632, 47.675823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.069717, 33.177780, 47.371658>,  <34.312428, 33.356785, 48.086407>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.069717, 33.177780, 47.371658> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.156548, 33.565826, 47.328297>,  <34.208645, 33.798653, 47.302280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.156548, 33.565826, 47.328297>,  <34.069717, 33.177780, 47.371658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.156548, 33.565826, 47.328297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598331, -0.219982, -0.770460,
		-0.771283, 0.102388, -0.628204,
		0.217080, 0.970116, -0.108407,
		34.221672, 33.856861, 47.295776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.009678, 33.306110, 46.607212>,  <34.069717, 33.177780, 47.371658>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.009678, 33.306110, 46.607212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.256653, 33.591366, 46.739998>,  <34.404839, 33.762520, 46.819668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.256653, 33.591366, 46.739998>,  <34.009678, 33.306110, 46.607212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.256653, 33.591366, 46.739998> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623401, -0.186246, -0.759397,
		-0.479732, 0.675825, -0.559569,
		0.617437, 0.713143, 0.331962,
		34.441883, 33.805309, 46.839588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.195824, 33.631287, 45.997246>,  <34.009678, 33.306110, 46.607212>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.195824, 33.631287, 45.997246> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.470348, 33.751659, 46.262100>,  <34.635063, 33.823883, 46.421013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.470348, 33.751659, 46.262100>,  <34.195824, 33.631287, 45.997246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.470348, 33.751659, 46.262100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725604, -0.220981, -0.651664,
		-0.049785, 0.927691, -0.370016,
		0.686309, 0.300928, 0.662134,
		34.676243, 33.841938, 46.460739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.677414, 34.086899, 45.705753>,  <34.195824, 33.631287, 45.997246>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.677414, 34.086899, 45.705753> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.897079, 33.957672, 46.014053>,  <35.028877, 33.880135, 46.199032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.897079, 33.957672, 46.014053>,  <34.677414, 34.086899, 45.705753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.897079, 33.957672, 46.014053> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762810, -0.182965, -0.620198,
		0.341385, 0.928521, 0.145960,
		0.549161, -0.323066, 0.770747,
		35.061829, 33.860752, 46.245277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.413609, 34.399757, 45.643387>,  <34.677414, 34.086899, 45.705753>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.413609, 34.399757, 45.643387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.455223, 34.089603, 45.892529>,  <35.480194, 33.903511, 46.042015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.455223, 34.089603, 45.892529>,  <35.413609, 34.399757, 45.643387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.455223, 34.089603, 45.892529> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893451, -0.202270, -0.401040,
		0.436946, 0.598218, 0.671724,
		0.104040, -0.775385, 0.622859,
		35.486435, 33.856987, 46.079388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117081, 34.442638, 45.872673>,  <35.413609, 34.399757, 45.643387>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.117081, 34.442638, 45.872673> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.994186, 34.064301, 45.914577>,  <35.920448, 33.837296, 45.939720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.994186, 34.064301, 45.914577>,  <36.117081, 34.442638, 45.872673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.994186, 34.064301, 45.914577> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869363, -0.323746, -0.373358,
		0.387056, -0.023634, 0.921753,
		-0.307238, -0.945849, 0.104762,
		35.902016, 33.780544, 45.946007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.599422, 34.105694, 46.012020>,  <36.117081, 34.442638, 45.872673>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.599422, 34.105694, 46.012020> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.393448, 33.777187, 45.913746>,  <36.269863, 33.580082, 45.854782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.393448, 33.777187, 45.913746>,  <36.599422, 34.105694, 46.012020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.393448, 33.777187, 45.913746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781600, -0.332097, -0.528027,
		0.352060, -0.463929, 0.812911,
		-0.514932, -0.821268, -0.245689,
		36.238968, 33.530807, 45.840038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.318863, 34.139988, 46.026398>,  <36.599422, 34.105694, 46.012020>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.318863, 34.139988, 46.026398> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.703815, 34.136967, 45.917767>,  <37.934788, 34.135155, 45.852589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.703815, 34.136967, 45.917767>,  <37.318863, 34.139988, 46.026398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.703815, 34.136967, 45.917767> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152203, 0.843024, 0.515892,
		0.225052, -0.537822, 0.812465,
		0.962386, -0.007557, -0.271582,
		37.992531, 34.134701, 45.836292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.787136, 34.056896, 46.581661>,  <37.318863, 34.139988, 46.026398>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.787136, 34.056896, 46.581661> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.909477, 34.304920, 46.292671>,  <37.982880, 34.453735, 46.119278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.909477, 34.304920, 46.292671>,  <37.787136, 34.056896, 46.581661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.909477, 34.304920, 46.292671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035356, 0.750923, 0.659443,
		0.951423, -0.227235, 0.207747,
		0.305851, 0.620064, -0.722480,
		38.001232, 34.490940, 46.075928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.306835, 33.602135, 46.869045>,  <37.787136, 34.056896, 46.581661>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.306835, 33.602135, 46.869045> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.348053, 33.538002, 47.261715>,  <38.372784, 33.499523, 47.497314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.348053, 33.538002, 47.261715>,  <38.306835, 33.602135, 46.869045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.348053, 33.538002, 47.261715> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093709, -0.980969, -0.170055,
		0.990253, 0.109515, -0.086058,
		0.103044, -0.160333, 0.981670,
		38.378967, 33.489902, 47.556217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.917027, 33.263393, 46.886215>,  <38.306835, 33.602135, 46.869045>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.917027, 33.263393, 46.886215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.661812, 33.186249, 47.184399>,  <38.508682, 33.139961, 47.363308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.661812, 33.186249, 47.184399>,  <38.917027, 33.263393, 46.886215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.661812, 33.186249, 47.184399> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218501, -0.973677, -0.064889,
		0.738351, 0.121482, 0.663385,
		-0.638040, -0.192861, 0.745459,
		38.470398, 33.128391, 47.408035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.254459, 32.748402, 47.400997>,  <38.917027, 33.263393, 46.886215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.254459, 32.748402, 47.400997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.855022, 32.736721, 47.383293>,  <38.615360, 32.729713, 47.372669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.855022, 32.736721, 47.383293>,  <39.254459, 32.748402, 47.400997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.855022, 32.736721, 47.383293> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034052, -0.992984, -0.113237,
		-0.040642, -0.114585, 0.992582,
		-0.998593, -0.029198, -0.044259,
		38.555443, 32.727962, 47.370014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.991661, 32.314964, 48.005512>,  <39.254459, 32.748402, 47.400997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.991661, 32.314964, 48.005512> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.744045, 32.324551, 47.691517>,  <38.595474, 32.330303, 47.503120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.744045, 32.324551, 47.691517>,  <38.991661, 32.314964, 48.005512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.744045, 32.324551, 47.691517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169957, -0.979937, 0.104108,
		-0.766747, 0.197863, 0.610696,
		-0.619043, 0.023967, -0.784992,
		38.558334, 32.331741, 47.456020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.626926, 32.068272, 48.525158>,  <38.991661, 32.314964, 48.005512>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.626926, 32.068272, 48.525158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.631390, 31.895195, 48.885746>,  <38.634068, 31.791349, 49.102100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.631390, 31.895195, 48.885746>,  <38.626926, 32.068272, 48.525158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.631390, 31.895195, 48.885746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447646, 0.803983, 0.391439,
		-0.894141, -0.407910, -0.184721,
		0.011160, -0.432691, 0.901473,
		38.634739, 31.765388, 49.156189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923977, 32.171669, 48.895355>,  <38.626926, 32.068272, 48.525158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.923977, 32.171669, 48.895355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.235245, 32.116753, 49.140499>,  <38.422005, 32.083801, 49.287586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.235245, 32.116753, 49.140499>,  <37.923977, 32.171669, 48.895355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.235245, 32.116753, 49.140499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322713, 0.749733, 0.577717,
		-0.538797, -0.647342, 0.539116,
		0.778173, -0.137293, 0.612859,
		38.468697, 32.075565, 49.324356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.988316, 32.731876, 49.411015>,  <37.923977, 32.171669, 48.895355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.988316, 32.731876, 49.411015> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.723568, 32.924942, 49.181591>,  <37.564720, 33.040783, 49.043938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.723568, 32.924942, 49.181591>,  <37.988316, 32.731876, 49.411015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.723568, 32.924942, 49.181591> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308787, 0.521657, 0.795314,
		0.683070, 0.703499, -0.196227,
		-0.661865, 0.482663, -0.573560,
		37.525009, 33.069740, 49.009521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.848171, 33.416233, 49.704361>,  <37.988316, 32.731876, 49.411015>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.848171, 33.416233, 49.704361> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.547543, 33.381363, 49.442814>,  <37.367165, 33.360439, 49.285885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.547543, 33.381363, 49.442814>,  <37.848171, 33.416233, 49.704361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.547543, 33.381363, 49.442814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534449, 0.661489, 0.526115,
		0.386661, 0.744871, -0.543747,
		-0.751570, -0.087177, -0.653867,
		37.322071, 33.355209, 49.246655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.637428, 34.108334, 49.436169>,  <37.848171, 33.416233, 49.704361>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.637428, 34.108334, 49.436169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.340237, 33.840881, 49.424080>,  <37.161922, 33.680408, 49.416828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.340237, 33.840881, 49.424080>,  <37.637428, 34.108334, 49.436169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.340237, 33.840881, 49.424080> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554552, 0.589677, 0.587157,
		-0.374773, 0.453003, -0.808909,
		-0.742979, -0.668632, -0.030219,
		37.117344, 33.640293, 49.415012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.977890, 34.497883, 49.417053>,  <37.637428, 34.108334, 49.436169>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.977890, 34.497883, 49.417053> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.864811, 34.134033, 49.538811>,  <36.796963, 33.915722, 49.611866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.864811, 34.134033, 49.538811>,  <36.977890, 34.497883, 49.417053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.864811, 34.134033, 49.538811> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538581, 0.413123, 0.734343,
		-0.793732, 0.043658, -0.606699,
		-0.282701, -0.909628, 0.304395,
		36.779999, 33.861145, 49.630131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.283592, 34.596241, 49.428432>,  <36.977890, 34.497883, 49.417053>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.283592, 34.596241, 49.428432> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.348412, 34.264111, 49.641708>,  <36.387302, 34.064831, 49.769676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.348412, 34.264111, 49.641708>,  <36.283592, 34.596241, 49.428432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.348412, 34.264111, 49.641708> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610275, 0.340281, 0.715383,
		-0.775439, -0.441319, -0.451588,
		0.162045, -0.830329, 0.533193,
		36.397026, 34.015011, 49.801666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.696747, 34.241341, 49.606392>,  <36.283592, 34.596241, 49.428432>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.696747, 34.241341, 49.606392> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.958649, 34.151360, 49.895027>,  <36.115791, 34.097370, 50.068207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.958649, 34.151360, 49.895027>,  <35.696747, 34.241341, 49.606392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.958649, 34.151360, 49.895027> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694468, 0.197779, 0.691808,
		-0.298337, -0.954086, -0.026724,
		0.654759, -0.224951, 0.721587,
		36.155075, 34.083874, 50.111504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.299450, 33.864738, 50.132980>,  <35.696747, 34.241341, 49.606392>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.299450, 33.864738, 50.132980> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.627743, 33.963913, 50.338863>,  <35.824718, 34.023418, 50.462395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.627743, 33.963913, 50.338863>,  <35.299450, 33.864738, 50.132980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.627743, 33.963913, 50.338863> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535949, 0.022079, 0.843961,
		0.197883, -0.968525, 0.151001,
		0.820732, 0.247935, 0.514711,
		35.873962, 34.038292, 50.493279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.160423, 33.526161, 50.768665>,  <35.299450, 33.864738, 50.132980>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.160423, 33.526161, 50.768665> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.451496, 33.792664, 50.833881>,  <35.626141, 33.952564, 50.873013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.451496, 33.792664, 50.833881>,  <35.160423, 33.526161, 50.768665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.451496, 33.792664, 50.833881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446642, 0.279852, 0.849819,
		0.520573, -0.691216, 0.501222,
		0.727677, 0.666261, 0.163043,
		35.669800, 33.992542, 50.882793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.418407, 33.348072, 51.463833>,  <35.160423, 33.526161, 50.768665>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.418407, 33.348072, 51.463833> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.514027, 33.726200, 51.375076>,  <35.571396, 33.953075, 51.321823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.514027, 33.726200, 51.375076>,  <35.418407, 33.348072, 51.463833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.514027, 33.726200, 51.375076> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449376, 0.310269, 0.837731,
		0.860767, -0.100543, 0.498971,
		0.239044, 0.945317, -0.221888,
		35.585739, 34.009796, 51.308510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.532230, 33.610779, 52.096245>,  <35.418407, 33.348072, 51.463833>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.532230, 33.610779, 52.096245> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.476791, 33.943649, 51.881477>,  <35.443527, 34.143372, 51.752617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.476791, 33.943649, 51.881477>,  <35.532230, 33.610779, 52.096245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.476791, 33.943649, 51.881477> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390186, 0.452411, 0.801922,
		0.910244, 0.320642, 0.262000,
		-0.138598, 0.832174, -0.536914,
		35.435211, 34.193302, 51.720402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.828518, 34.181747, 52.503040>,  <35.532230, 33.610779, 52.096245>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.828518, 34.181747, 52.503040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.568279, 34.353329, 52.252373>,  <35.412136, 34.456280, 52.101971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.568279, 34.353329, 52.252373>,  <35.828518, 34.181747, 52.503040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.568279, 34.353329, 52.252373> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309194, 0.604081, 0.734497,
		0.693626, 0.671627, -0.260385,
		-0.650601, 0.428957, -0.626669,
		35.373100, 34.482018, 52.064373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.918217, 34.917938, 52.636497>,  <35.828518, 34.181747, 52.503040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.918217, 34.917938, 52.636497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.566013, 34.890751, 52.448841>,  <35.354691, 34.874439, 52.336246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.566013, 34.890751, 52.448841>,  <35.918217, 34.917938, 52.636497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.566013, 34.890751, 52.448841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413329, 0.594647, 0.689604,
		0.232096, 0.801108, -0.551686,
		-0.880506, -0.067973, -0.469137,
		35.301861, 34.870358, 52.308102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.757145, 35.527935, 52.707611>,  <35.918217, 34.917938, 52.636497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.757145, 35.527935, 52.707611> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.408592, 35.344166, 52.638771>,  <35.199459, 35.233906, 52.597466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.408592, 35.344166, 52.638771>,  <35.757145, 35.527935, 52.707611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.408592, 35.344166, 52.638771> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445415, 0.593800, 0.670080,
		-0.205655, 0.660554, -0.722062,
		-0.871385, -0.459423, -0.172102,
		35.147179, 35.206341, 52.587139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.224304, 36.026882, 52.548328>,  <35.757145, 35.527935, 52.707611>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.224304, 36.026882, 52.548328> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.025482, 35.702553, 52.671936>,  <34.906189, 35.507954, 52.746101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.025482, 35.702553, 52.671936>,  <35.224304, 36.026882, 52.548328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.025482, 35.702553, 52.671936> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559773, 0.571748, 0.599798,
		-0.663013, 0.125155, -0.738072,
		-0.497059, -0.810827, 0.309018,
		34.876366, 35.459305, 52.764641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.516891, 36.162331, 52.320122>,  <35.224304, 36.026882, 52.548328>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.516891, 36.162331, 52.320122> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.531952, 35.944405, 52.655205>,  <34.540989, 35.813648, 52.856255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.531952, 35.944405, 52.655205>,  <34.516891, 36.162331, 52.320122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.531952, 35.944405, 52.655205> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595918, 0.660690, 0.456475,
		-0.802162, -0.516395, -0.299788,
		0.037654, -0.544816, 0.837710,
		34.543247, 35.780960, 52.906517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.030396, 36.449390, 52.701862>,  <34.516891, 36.162331, 52.320122>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.030396, 36.449390, 52.701862> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.181816, 36.181564, 52.957481>,  <34.272667, 36.020870, 53.110855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.181816, 36.181564, 52.957481>,  <34.030396, 36.449390, 52.701862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.181816, 36.181564, 52.957481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478366, 0.449545, 0.754371,
		-0.792381, -0.591266, -0.150121,
		0.378548, -0.669562, 0.639052,
		34.295380, 35.980694, 53.149197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.464722, 35.961121, 53.053585>,  <34.030396, 36.449390, 52.701862>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.464722, 35.961121, 53.053585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.776165, 35.986366, 53.303314>,  <33.963032, 36.001514, 53.453152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.776165, 35.986366, 53.303314>,  <33.464722, 35.961121, 53.053585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.776165, 35.986366, 53.303314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606038, 0.333644, 0.722080,
		-0.162732, -0.940584, 0.298026,
		0.778611, 0.063109, 0.624325,
		34.009750, 36.005299, 53.490612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.350185, 35.720421, 53.723267>,  <33.464722, 35.961121, 53.053585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.350185, 35.720421, 53.723267> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.663921, 35.956726, 53.798962>,  <33.852165, 36.098507, 53.844379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.663921, 35.956726, 53.798962>,  <33.350185, 35.720421, 53.723267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.663921, 35.956726, 53.798962> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525115, 0.469894, 0.709545,
		0.330246, -0.655900, 0.678773,
		0.784342, 0.590758, 0.189242,
		33.899223, 36.133953, 53.855736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.135914, 36.025978, 54.355396>,  <33.350185, 35.720421, 53.723267>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.135914, 36.025978, 54.355396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.462337, 36.248840, 54.293900>,  <33.658192, 36.382557, 54.257004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.462337, 36.248840, 54.293900>,  <33.135914, 36.025978, 54.355396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.462337, 36.248840, 54.293900> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396400, 0.733100, 0.552658,
		0.420621, -0.390057, 0.819105,
		0.816054, 0.557153, -0.153738,
		33.707153, 36.415985, 54.247780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.244190, 36.345360, 55.086185>,  <33.135914, 36.025978, 54.355396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.244190, 36.345360, 55.086185> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.443398, 36.566269, 54.818760>,  <33.562920, 36.698814, 54.658306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.443398, 36.566269, 54.818760>,  <33.244190, 36.345360, 55.086185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.443398, 36.566269, 54.818760> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297415, 0.832992, 0.466550,
		0.814569, -0.033510, 0.579098,
		0.498017, 0.552269, -0.668563,
		33.592804, 36.731949, 54.618191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.440235, 36.929394, 55.471134>,  <33.244190, 36.345360, 55.086185>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.440235, 36.929394, 55.471134> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.494446, 37.049305, 55.093403>,  <33.526974, 37.121254, 54.866764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.494446, 37.049305, 55.093403>,  <33.440235, 36.929394, 55.471134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.494446, 37.049305, 55.093403> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366758, 0.900598, 0.233261,
		0.920392, 0.314729, 0.232001,
		0.135526, 0.299780, -0.944333,
		33.535103, 37.139240, 54.810104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.740429, 37.534641, 55.519981>,  <33.440235, 36.929394, 55.471134>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.740429, 37.534641, 55.519981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.574417, 37.568493, 55.157635>,  <33.474812, 37.588806, 54.940228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.574417, 37.568493, 55.157635>,  <33.740429, 37.534641, 55.519981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.574417, 37.568493, 55.157635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203911, 0.961682, 0.183269,
		0.886663, 0.260778, -0.381869,
		-0.415029, 0.084631, -0.905863,
		33.449909, 37.593884, 54.885876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.915989, 38.212864, 55.235180>,  <33.740429, 37.534641, 55.519981>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.915989, 38.212864, 55.235180> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.595913, 38.099144, 55.023945>,  <33.403870, 38.030910, 54.897205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.595913, 38.099144, 55.023945>,  <33.915989, 38.212864, 55.235180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.595913, 38.099144, 55.023945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450845, 0.865818, 0.217020,
		0.395524, 0.411740, -0.820993,
		-0.800187, -0.284304, -0.528083,
		33.355858, 38.013851, 54.865520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.860641, 38.730015, 54.790199>,  <33.915989, 38.212864, 55.235180>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.860641, 38.730015, 54.790199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.505581, 38.547222, 54.812984>,  <33.292545, 38.437546, 54.826656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.505581, 38.547222, 54.812984>,  <33.860641, 38.730015, 54.790199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.505581, 38.547222, 54.812984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457558, 0.889174, 0.003248,
		-0.052138, -0.023182, -0.998371,
		-0.887650, -0.456982, 0.056967,
		33.239285, 38.410126, 54.830074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.448521, 39.086136, 54.268391>,  <33.860641, 38.730015, 54.790199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.448521, 39.086136, 54.268391> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.206371, 38.905056, 54.530254>,  <33.061081, 38.796410, 54.687374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.206371, 38.905056, 54.530254>,  <33.448521, 39.086136, 54.268391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.206371, 38.905056, 54.530254> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461702, 0.869709, 0.174465,
		-0.648345, -0.196642, -0.735514,
		-0.605376, -0.452701, 0.654661,
		33.024757, 38.769245, 54.726654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.731983, 39.154770, 53.972683>,  <33.448521, 39.086136, 54.268391>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.731983, 39.154770, 53.972683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.689133, 39.063782, 54.359833>,  <32.663422, 39.009190, 54.592121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.689133, 39.063782, 54.359833>,  <32.731983, 39.154770, 53.972683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.689133, 39.063782, 54.359833> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539605, 0.830933, 0.135559,
		-0.835074, -0.507748, -0.211763,
		-0.107131, -0.227470, 0.967874,
		32.656994, 38.995541, 54.650196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.965948, 39.354412, 54.196880>,  <32.731983, 39.154770, 53.972683>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.965948, 39.354412, 54.196880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.191483, 39.339798, 54.526913>,  <32.326805, 39.331028, 54.724930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.191483, 39.339798, 54.526913>,  <31.965948, 39.354412, 54.196880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.191483, 39.339798, 54.526913> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516627, 0.763823, 0.386873,
		-0.644348, -0.644390, 0.411796,
		0.563837, -0.036536, 0.825078,
		32.360634, 39.328838, 54.774437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.517143, 39.403194, 54.706318>,  <31.965948, 39.354412, 54.196880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.517143, 39.403194, 54.706318> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.867287, 39.518028, 54.861919>,  <32.077374, 39.586929, 54.955280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.867287, 39.518028, 54.861919>,  <31.517143, 39.403194, 54.706318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.867287, 39.518028, 54.861919> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475478, 0.656890, 0.585163,
		-0.087545, -0.697194, 0.711517,
		0.875361, 0.287083, 0.389008,
		32.129894, 39.604153, 54.978622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.610632, 39.249622, 55.450325>,  <31.517143, 39.403194, 54.706318>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.610632, 39.249622, 55.450325> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.833712, 39.570103, 55.363564>,  <31.967560, 39.762390, 55.311504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.833712, 39.570103, 55.363564>,  <31.610632, 39.249622, 55.450325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.833712, 39.570103, 55.363564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466543, 0.518709, 0.716435,
		0.686520, -0.298357, 0.663078,
		0.557698, 0.801201, -0.216908,
		32.001022, 39.810463, 55.298492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.619175, 39.560295, 56.061417>,  <31.610632, 39.249622, 55.450325>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.619175, 39.560295, 56.061417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.746983, 39.861107, 55.830814>,  <31.823668, 40.041595, 55.692451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.746983, 39.861107, 55.830814>,  <31.619175, 39.560295, 56.061417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.746983, 39.861107, 55.830814> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444226, 0.656279, 0.609886,
		0.837001, 0.061229, 0.543765,
		0.319519, 0.752029, -0.576506,
		31.842838, 40.086716, 55.657864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.096729, 40.048164, 56.410172>,  <31.619175, 39.560295, 56.061417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.096729, 40.048164, 56.410172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.879766, 40.229839, 56.127468>,  <31.749588, 40.338844, 55.957848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.879766, 40.229839, 56.127468>,  <32.096729, 40.048164, 56.410172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.879766, 40.229839, 56.127468> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525223, 0.473262, 0.707223,
		0.655695, 0.754808, -0.018149,
		-0.542407, 0.454190, -0.706758,
		31.717045, 40.366096, 55.915440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.881897, 40.659859, 56.767567>,  <32.096729, 40.048164, 56.410172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.881897, 40.659859, 56.767567> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.673859, 40.707527, 56.429264>,  <31.549036, 40.736130, 56.226284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.673859, 40.707527, 56.429264>,  <31.881897, 40.659859, 56.767567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.673859, 40.707527, 56.429264> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487650, 0.771523, 0.408594,
		0.701212, 0.624940, -0.343151,
		-0.520096, 0.119173, -0.845753,
		31.517830, 40.743279, 56.175537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.732515, 41.355316, 56.750149>,  <31.881897, 40.659859, 56.767567>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.732515, 41.355316, 56.750149> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.462183, 41.210667, 56.493248>,  <31.299984, 41.123878, 56.339108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.462183, 41.210667, 56.493248>,  <31.732515, 41.355316, 56.750149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.462183, 41.210667, 56.493248> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624610, 0.743600, 0.238583,
		0.391300, 0.562397, -0.728418,
		-0.675830, -0.361619, -0.642249,
		31.259434, 41.102180, 56.300571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.437426, 41.974545, 56.403210>,  <31.732515, 41.355316, 56.750149>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.437426, 41.974545, 56.403210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.182714, 41.666576, 56.386513>,  <31.029888, 41.481796, 56.376495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.182714, 41.666576, 56.386513>,  <31.437426, 41.974545, 56.403210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.182714, 41.666576, 56.386513> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747517, 0.603164, 0.278231,
		-0.189037, 0.208375, -0.959607,
		-0.636776, -0.769918, -0.041744,
		30.991682, 41.435600, 56.373989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.871788, 42.176292, 56.098850>,  <31.437426, 41.974545, 56.403210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.871788, 42.176292, 56.098850> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.736542, 41.854156, 56.293629>,  <30.655394, 41.660877, 56.410496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.736542, 41.854156, 56.293629>,  <30.871788, 42.176292, 56.098850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.736542, 41.854156, 56.293629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890399, 0.441293, 0.111579,
		-0.304744, -0.395848, -0.866277,
		-0.338114, -0.805336, 0.486944,
		30.635107, 41.612556, 56.439713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.169241, 41.982121, 55.827602>,  <30.871788, 42.176292, 56.098850>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.169241, 41.982121, 55.827602> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.192863, 41.822357, 56.193550>,  <30.207037, 41.726501, 56.413120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.192863, 41.822357, 56.193550>,  <30.169241, 41.982121, 55.827602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.192863, 41.822357, 56.193550> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858315, 0.447638, 0.250830,
		-0.509714, -0.800059, -0.316381,
		0.059055, -0.399406, 0.914870,
		30.210581, 41.702534, 56.468010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.511065, 41.853725, 55.958504>,  <30.169241, 41.982121, 55.827602>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.511065, 41.853725, 55.958504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.664804, 41.791183, 56.322445>,  <29.757050, 41.753658, 56.540810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.664804, 41.791183, 56.322445>,  <29.511065, 41.853725, 55.958504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.664804, 41.791183, 56.322445> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768025, 0.492715, 0.409109,
		-0.512262, -0.856029, 0.069293,
		0.384351, -0.156352, 0.909851,
		29.780109, 41.744278, 56.595402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.007427, 41.372414, 56.390079>,  <29.511065, 41.853725, 55.958504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.007427, 41.372414, 56.390079> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.223900, 41.611210, 56.626968>,  <29.353783, 41.754486, 56.769104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.223900, 41.611210, 56.626968>,  <29.007427, 41.372414, 56.390079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.223900, 41.611210, 56.626968> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804288, 0.573035, 0.157324,
		-0.245444, -0.561460, 0.790266,
		0.541181, 0.596987, 0.592224,
		29.386253, 41.790306, 56.804634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.564646, 41.495182, 56.921017>,  <29.007427, 41.372414, 56.390079>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.564646, 41.495182, 56.921017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.852100, 41.772030, 56.947929>,  <29.024572, 41.938141, 56.964077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.852100, 41.772030, 56.947929>,  <28.564646, 41.495182, 56.921017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.852100, 41.772030, 56.947929> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646693, 0.629614, 0.430550,
		0.255634, -0.352919, 0.900056,
		0.718637, 0.692123, 0.067280,
		29.067692, 41.979668, 56.968113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.311653, 41.776863, 57.527710>,  <28.564646, 41.495182, 56.921017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.311653, 41.776863, 57.527710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.587521, 42.007923, 57.353043>,  <28.753040, 42.146561, 57.248241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.587521, 42.007923, 57.353043>,  <28.311653, 41.776863, 57.527710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.587521, 42.007923, 57.353043> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408182, 0.808213, 0.424475,
		0.598118, -0.114508, 0.793185,
		0.689668, 0.577650, -0.436667,
		28.794420, 42.181217, 57.222042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.462513, 42.096050, 58.027241>,  <28.311653, 41.776863, 57.527710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.462513, 42.096050, 58.027241> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.568605, 42.333794, 57.723560>,  <28.632261, 42.476440, 57.541351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.568605, 42.333794, 57.723560>,  <28.462513, 42.096050, 58.027241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.568605, 42.333794, 57.723560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324619, 0.796484, 0.510132,
		0.907895, 0.111148, 0.404193,
		0.265233, 0.594356, -0.759205,
		28.648176, 42.512100, 57.495800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.755756, 42.645817, 58.301716>,  <28.462513, 42.096050, 58.027241>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.755756, 42.645817, 58.301716> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.621485, 42.745094, 57.938240>,  <28.540922, 42.804661, 57.720154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.621485, 42.745094, 57.938240>,  <28.755756, 42.645817, 58.301716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.621485, 42.745094, 57.938240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479085, 0.785597, 0.391555,
		0.811047, 0.566776, -0.144799,
		-0.335678, 0.248198, -0.908690,
		28.520781, 42.819553, 57.665634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.065559, 43.277943, 57.979027>,  <28.755756, 42.645817, 58.301716>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.065559, 43.277943, 57.979027> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.689295, 43.163448, 57.906120>,  <28.463535, 43.094753, 57.862377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.689295, 43.163448, 57.906120>,  <29.065559, 43.277943, 57.979027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.689295, 43.163448, 57.906120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338095, 0.836520, 0.431191,
		0.029052, 0.467231, -0.883658,
		-0.940663, -0.286233, -0.182270,
		28.407095, 43.077579, 57.851440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.710505, 43.846565, 58.300453>,  <29.065559, 43.277943, 57.979027>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.710505, 43.846565, 58.300453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.391012, 43.635700, 58.184429>,  <28.199318, 43.509182, 58.114815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.391012, 43.635700, 58.184429>,  <28.710505, 43.846565, 58.300453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.391012, 43.635700, 58.184429> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549437, 0.442519, 0.708728,
		-0.245256, 0.725451, -0.643094,
		-0.798729, -0.527160, -0.290059,
		28.151394, 43.477551, 58.097412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.248867, 44.390385, 58.334629>,  <28.710505, 43.846565, 58.300453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.248867, 44.390385, 58.334629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.043060, 44.050175, 58.378227>,  <27.919577, 43.846050, 58.404388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.043060, 44.050175, 58.378227>,  <28.248867, 44.390385, 58.334629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.043060, 44.050175, 58.378227> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634723, 0.463232, 0.618500,
		-0.576541, 0.249044, -0.778188,
		-0.514516, -0.850525, 0.108999,
		27.888706, 43.795017, 58.410927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.716242, 45.045921, 58.429268>,  <28.248867, 44.390385, 58.334629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.716242, 45.045921, 58.429268> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.734581, 45.273769, 58.101017>,  <28.745584, 45.410480, 57.904068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.734581, 45.273769, 58.101017>,  <28.716242, 45.045921, 58.429268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.734581, 45.273769, 58.101017> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906626, -0.321200, -0.273605,
		-0.419437, 0.756545, 0.501709,
		0.045846, 0.569622, -0.820627,
		28.748335, 45.444656, 57.854828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.081959, 45.455254, 58.368256>,  <28.716242, 45.045921, 58.429268>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.081959, 45.455254, 58.368256> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.272840, 45.379551, 58.024986>,  <28.387369, 45.334129, 57.819023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.272840, 45.379551, 58.024986>,  <28.081959, 45.455254, 58.368256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.272840, 45.379551, 58.024986> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841105, -0.381276, -0.383628,
		-0.254596, 0.904881, -0.341131,
		0.477203, -0.189257, -0.858172,
		28.416002, 45.322773, 57.767536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.909845, 45.856255, 57.633068>,  <28.081959, 45.455254, 58.368256>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.909845, 45.856255, 57.633068> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.998013, 45.466763, 57.655922>,  <28.050913, 45.233067, 57.669636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.998013, 45.466763, 57.655922>,  <27.909845, 45.856255, 57.633068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.998013, 45.466763, 57.655922> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864046, -0.222097, -0.451772,
		0.452594, 0.050212, -0.890302,
		0.220418, -0.973731, 0.057134,
		28.064138, 45.174644, 57.673061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.039541, 45.555840, 56.990570>,  <27.909845, 45.856255, 57.633068>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.039541, 45.555840, 56.990570> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.855778, 45.295841, 57.232712>,  <27.745520, 45.139843, 57.377998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.855778, 45.295841, 57.232712>,  <28.039541, 45.555840, 56.990570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.855778, 45.295841, 57.232712> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703221, -0.150175, -0.694930,
		0.542608, -0.744955, -0.388096,
		-0.459409, -0.649992, 0.605354,
		27.717955, 45.100845, 57.414318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.714027, 45.081306, 56.681515>,  <28.039541, 45.555840, 56.990570>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.714027, 45.081306, 56.681515> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.074604, 45.039833, 56.849632>,  <28.290951, 45.014950, 56.950504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.074604, 45.039833, 56.849632>,  <27.714027, 45.081306, 56.681515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.074604, 45.039833, 56.849632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373624, -0.304025, -0.876341,
		0.218644, 0.947005, -0.235322,
		0.901443, -0.103685, 0.420297,
		28.345037, 45.008728, 56.975723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.198387, 45.457230, 56.262722>,  <27.714027, 45.081306, 56.681515>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.198387, 45.457230, 56.262722> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.390778, 45.145981, 56.424309>,  <28.506212, 44.959232, 56.521263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.390778, 45.145981, 56.424309>,  <28.198387, 45.457230, 56.262722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.390778, 45.145981, 56.424309> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413793, -0.204743, -0.887049,
		0.772939, 0.593811, 0.223503,
		0.480978, -0.778119, 0.403969,
		28.535070, 44.912544, 56.545498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.903242, 45.478134, 55.981457>,  <28.198387, 45.457230, 56.262722>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.903242, 45.478134, 55.981457> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.796967, 45.108582, 56.091629>,  <28.733202, 44.886852, 56.157734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.796967, 45.108582, 56.091629>,  <28.903242, 45.478134, 55.981457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.796967, 45.108582, 56.091629> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487906, -0.375267, -0.788113,
		0.831480, -0.075007, 0.550469,
		-0.265686, -0.923877, 0.275431,
		28.717260, 44.831417, 56.174259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.504843, 45.034187, 56.025108>,  <28.903242, 45.478134, 55.981457>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.504843, 45.034187, 56.025108> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.199345, 44.785362, 55.956142>,  <29.016047, 44.636066, 55.914764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.199345, 44.785362, 55.956142>,  <29.504843, 45.034187, 56.025108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.199345, 44.785362, 55.956142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555064, -0.496517, -0.667364,
		0.329539, -0.605397, 0.724499,
		-0.763746, -0.622066, -0.172412,
		28.970221, 44.598743, 55.904419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.784498, 44.359787, 56.044750>,  <29.504843, 45.034187, 56.025108>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.784498, 44.359787, 56.044750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.447483, 44.333138, 55.830952>,  <29.245274, 44.317150, 55.702671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.447483, 44.333138, 55.830952>,  <29.784498, 44.359787, 56.044750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.447483, 44.333138, 55.830952> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514873, -0.391098, -0.762855,
		-0.158219, -0.917935, 0.363817,
		-0.842539, -0.066622, -0.534499,
		29.194721, 44.313152, 55.670601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.825363, 43.750633, 55.778515>,  <29.784498, 44.359787, 56.044750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.825363, 43.750633, 55.778515> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.543535, 43.925770, 55.555134>,  <29.374439, 44.030853, 55.421104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.543535, 43.925770, 55.555134>,  <29.825363, 43.750633, 55.778515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.543535, 43.925770, 55.555134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318580, -0.508040, -0.800252,
		-0.634105, -0.741745, 0.218460,
		-0.704569, 0.437847, -0.558456,
		29.332165, 44.057125, 55.387596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.459581, 43.212616, 55.621483>,  <29.825363, 43.750633, 55.778515>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.459581, 43.212616, 55.621483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.370499, 43.510048, 55.369293>,  <29.317049, 43.688507, 55.217979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.370499, 43.510048, 55.369293>,  <29.459581, 43.212616, 55.621483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.370499, 43.510048, 55.369293> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374515, -0.531831, -0.759536,
		-0.900078, -0.405273, -0.160040,
		-0.222705, 0.743579, -0.630470,
		29.303688, 43.733120, 55.180153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.071836, 42.966442, 55.077938>,  <29.459581, 43.212616, 55.621483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.071836, 42.966442, 55.077938> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.215542, 43.302010, 54.914410>,  <29.301765, 43.503349, 54.816292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.215542, 43.302010, 54.914410>,  <29.071836, 42.966442, 55.077938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.215542, 43.302010, 54.914410> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280724, -0.514930, -0.809964,
		-0.890013, 0.176224, -0.420502,
		0.359264, 0.838923, -0.408824,
		29.323320, 43.553688, 54.791763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.815044, 42.950371, 54.387947>,  <29.071836, 42.966442, 55.077938>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.815044, 42.950371, 54.387947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.103380, 43.221283, 54.329052>,  <29.276382, 43.383831, 54.293716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.103380, 43.221283, 54.329052>,  <28.815044, 42.950371, 54.387947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.103380, 43.221283, 54.329052> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225538, -0.430083, -0.874163,
		-0.655380, 0.596923, -0.462774,
		0.720839, 0.677282, -0.147239,
		29.319632, 43.424469, 54.284882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.678123, 43.113853, 53.701141>,  <28.815044, 42.950371, 54.387947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.678123, 43.113853, 53.701141> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.054781, 43.179173, 53.818882>,  <29.280775, 43.218365, 53.889526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.054781, 43.179173, 53.818882>,  <28.678123, 43.113853, 53.701141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.054781, 43.179173, 53.818882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336459, -0.430290, -0.837643,
		-0.010127, 0.887798, -0.460122,
		0.941644, 0.163295, 0.294350,
		29.337275, 43.228161, 53.907188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.956095, 43.524822, 53.230858>,  <28.678123, 43.113853, 53.701141>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.956095, 43.524822, 53.230858> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.275486, 43.349480, 53.395916>,  <29.467121, 43.244274, 53.494949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.275486, 43.349480, 53.395916>,  <28.956095, 43.524822, 53.230858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.275486, 43.349480, 53.395916> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204889, -0.446640, -0.870938,
		0.566084, 0.779972, -0.266819,
		0.798480, -0.438356, 0.412643,
		29.515030, 43.217972, 53.519711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.557892, 43.512287, 52.807652>,  <28.956095, 43.524822, 53.230858>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.557892, 43.512287, 52.807652> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.643679, 43.219742, 53.066605>,  <29.695150, 43.044212, 53.221977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.643679, 43.219742, 53.066605>,  <29.557892, 43.512287, 52.807652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.643679, 43.219742, 53.066605> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289221, -0.585532, -0.757300,
		0.932929, 0.349652, 0.085950,
		0.214465, -0.731365, 0.647387,
		29.708017, 43.000332, 53.260822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.226564, 43.438091, 52.625542>,  <29.557892, 43.512287, 52.807652>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.226564, 43.438091, 52.625542> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.116177, 43.105782, 52.818893>,  <30.049944, 42.906395, 52.934906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.116177, 43.105782, 52.818893>,  <30.226564, 43.438091, 52.625542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.116177, 43.105782, 52.818893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581111, -0.544801, -0.604567,
		0.765605, 0.114056, 0.633120,
		-0.275970, -0.830772, 0.483382,
		30.033386, 42.856548, 52.963909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.886131, 43.053299, 52.799034>,  <30.226564, 43.438091, 52.625542>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.886131, 43.053299, 52.799034> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.602470, 42.771671, 52.813950>,  <30.432274, 42.602695, 52.822899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.602470, 42.771671, 52.813950>,  <30.886131, 43.053299, 52.799034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.602470, 42.771671, 52.813950> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614715, -0.643325, -0.456354,
		0.345292, -0.300704, 0.889017,
		-0.709154, -0.704067, 0.037288,
		30.389725, 42.560452, 52.825134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.233511, 42.506336, 53.022335>,  <30.886131, 43.053299, 52.799034>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.233511, 42.506336, 53.022335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.892361, 42.351151, 52.882572>,  <30.687670, 42.258041, 52.798714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.892361, 42.351151, 52.882572>,  <31.233511, 42.506336, 53.022335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.892361, 42.351151, 52.882572> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504013, -0.786445, -0.357037,
		-0.136271, -0.480614, 0.866280,
		-0.852878, -0.387962, -0.349406,
		30.636497, 42.234760, 52.777752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.180462, 41.730175, 53.166595>,  <31.233511, 42.506336, 53.022335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.180462, 41.730175, 53.166595> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.973349, 41.834705, 52.840748>,  <30.849081, 41.897423, 52.645237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.973349, 41.834705, 52.840748>,  <31.180462, 41.730175, 53.166595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.973349, 41.834705, 52.840748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372937, -0.788024, -0.489833,
		-0.769945, -0.557432, 0.310572,
		-0.517787, 0.261320, -0.814622,
		30.818012, 41.913101, 52.596359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.840277, 41.204472, 52.896545>,  <31.180462, 41.730175, 53.166595>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.840277, 41.204472, 52.896545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.941008, 41.439430, 52.588898>,  <31.001446, 41.580406, 52.404308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.941008, 41.439430, 52.588898>,  <30.840277, 41.204472, 52.896545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.941008, 41.439430, 52.588898> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473436, -0.767918, -0.431463,
		-0.844062, -0.255476, -0.471477,
		0.251827, 0.587396, -0.769122,
		31.016556, 41.615650, 52.358162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.662966, 40.827957, 52.283051>,  <30.840277, 41.204472, 52.896545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.662966, 40.827957, 52.283051> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.932585, 41.101528, 52.171406>,  <31.094357, 41.265671, 52.104420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.932585, 41.101528, 52.171406>,  <30.662966, 40.827957, 52.283051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.932585, 41.101528, 52.171406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456679, -0.682815, -0.570270,
		-0.580607, 0.256923, -0.772584,
		0.674047, 0.683926, -0.279116,
		31.134798, 41.306705, 52.087669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.704386, 40.636856, 51.563488>,  <30.662966, 40.827957, 52.283051>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.704386, 40.636856, 51.563488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.037203, 40.837532, 51.658157>,  <31.236893, 40.957935, 51.714958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.037203, 40.837532, 51.658157>,  <30.704386, 40.636856, 51.563488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.037203, 40.837532, 51.658157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548012, -0.677326, -0.490827,
		-0.085937, 0.538089, -0.838495,
		0.832044, 0.501686, 0.236672,
		31.286816, 40.988037, 51.729160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.119358, 40.683998, 50.955368>,  <30.704386, 40.636856, 51.563488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.119358, 40.683998, 50.955368> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.365650, 40.719471, 51.268547>,  <31.513426, 40.740757, 51.456455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.365650, 40.719471, 51.268547>,  <31.119358, 40.683998, 50.955368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.365650, 40.719471, 51.268547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621994, -0.664715, -0.413858,
		0.483735, 0.741815, -0.464448,
		0.615731, 0.088686, 0.782950,
		31.550369, 40.746078, 51.503433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.825584, 40.821602, 50.694611>,  <31.119358, 40.683998, 50.955368>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.825584, 40.821602, 50.694611> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.854689, 40.704315, 51.075920>,  <31.872150, 40.633945, 51.304707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.854689, 40.704315, 51.075920>,  <31.825584, 40.821602, 50.694611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.854689, 40.704315, 51.075920> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700819, -0.665030, -0.258046,
		0.709619, 0.686848, 0.157103,
		0.072760, -0.293215, 0.953274,
		31.876516, 40.616352, 51.361904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.556786, 40.965443, 50.871002>,  <31.825584, 40.821602, 50.694611>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.556786, 40.965443, 50.871002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.405502, 40.702011, 51.131226>,  <32.314732, 40.543953, 51.287361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.405502, 40.702011, 51.131226>,  <32.556786, 40.965443, 50.871002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.405502, 40.702011, 51.131226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759083, -0.622875, -0.189262,
		0.529863, 0.422251, 0.735492,
		-0.378204, -0.658582, 0.650562,
		32.292042, 40.504436, 51.326393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.155079, 40.778267, 51.352139>,  <32.556786, 40.965443, 50.871002>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.155079, 40.778267, 51.352139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.898582, 40.479462, 51.422318>,  <32.744682, 40.300179, 51.464424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.898582, 40.479462, 51.422318>,  <33.155079, 40.778267, 51.352139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.898582, 40.479462, 51.422318> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732240, -0.664063, -0.151143,
		0.229412, 0.031548, 0.972818,
		-0.641245, -0.747011, 0.175444,
		32.706207, 40.255360, 51.474953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.491890, 40.291157, 51.826267>,  <33.155079, 40.778267, 51.352139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.491890, 40.291157, 51.826267> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.202267, 40.105469, 51.622215>,  <33.028492, 39.994057, 51.499783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.202267, 40.105469, 51.622215>,  <33.491890, 40.291157, 51.826267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.202267, 40.105469, 51.622215> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642115, -0.723726, -0.252803,
		-0.251841, -0.510609, 0.822104,
		-0.724061, -0.464219, -0.510133,
		32.985050, 39.966202, 51.469173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.696972, 39.603752, 51.918449>,  <33.491890, 40.291157, 51.826267>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.696972, 39.603752, 51.918449> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.444893, 39.589432, 51.608204>,  <33.293648, 39.580841, 51.422058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.444893, 39.589432, 51.608204>,  <33.696972, 39.603752, 51.918449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.444893, 39.589432, 51.608204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576229, -0.691090, -0.436297,
		-0.520397, -0.721882, 0.456150,
		-0.630196, -0.035799, -0.775611,
		33.255833, 39.578693, 51.375519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.811905, 38.915646, 51.780144>,  <33.696972, 39.603752, 51.918449>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.811905, 38.915646, 51.780144> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.626507, 39.062233, 51.457439>,  <33.515266, 39.150185, 51.263817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.626507, 39.062233, 51.457439>,  <33.811905, 38.915646, 51.780144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.626507, 39.062233, 51.457439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468195, -0.671711, -0.574106,
		-0.752304, -0.643821, 0.139761,
		-0.463500, 0.366467, -0.806765,
		33.487457, 39.172173, 51.215408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.470715, 38.324677, 51.456764>,  <33.811905, 38.915646, 51.780144>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.470715, 38.324677, 51.456764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.544865, 38.621960, 51.199619>,  <33.589355, 38.800331, 51.045334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.544865, 38.621960, 51.199619>,  <33.470715, 38.324677, 51.456764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.544865, 38.621960, 51.199619> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434565, -0.648755, -0.624716,
		-0.881357, -0.163561, -0.443235,
		0.185372, 0.743213, -0.642863,
		33.600475, 38.844925, 51.006760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.422028, 38.055374, 50.858025>,  <33.470715, 38.324677, 51.456764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.422028, 38.055374, 50.858025> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.605667, 38.397972, 50.763664>,  <33.715851, 38.603531, 50.707050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.605667, 38.397972, 50.763664>,  <33.422028, 38.055374, 50.858025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.605667, 38.397972, 50.763664> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476254, -0.461435, -0.748505,
		-0.749942, 0.231289, -0.619752,
		0.459096, 0.856494, -0.235897,
		33.743397, 38.654919, 50.692894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.298065, 38.266659, 50.143154>,  <33.422028, 38.055374, 50.858025>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.298065, 38.266659, 50.143154> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.644028, 38.450539, 50.223770>,  <33.851604, 38.560867, 50.272141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.644028, 38.450539, 50.223770>,  <33.298065, 38.266659, 50.143154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.644028, 38.450539, 50.223770> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435876, -0.488748, -0.755736,
		-0.248912, 0.741484, -0.623093,
		0.864902, 0.459703, 0.201539,
		33.903500, 38.588451, 50.284233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.572079, 38.534576, 49.543041>,  <33.298065, 38.266659, 50.143154>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.572079, 38.534576, 49.543041> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.900436, 38.524593, 49.771255>,  <34.097450, 38.518604, 49.908184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.900436, 38.524593, 49.771255>,  <33.572079, 38.534576, 49.543041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.900436, 38.524593, 49.771255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450765, -0.585081, -0.674160,
		0.350636, 0.810591, -0.469038,
		0.820893, -0.024959, 0.570536,
		34.146706, 38.517105, 49.942417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.093384, 38.662849, 49.046619>,  <33.572079, 38.534576, 49.543041>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.093384, 38.662849, 49.046619> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.278629, 38.508396, 49.365726>,  <34.389778, 38.415726, 49.557190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.278629, 38.508396, 49.365726>,  <34.093384, 38.662849, 49.046619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.278629, 38.508396, 49.365726> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568497, -0.561131, -0.601617,
		0.679953, 0.732144, -0.040354,
		0.463114, -0.386130, 0.797765,
		34.417564, 38.392559, 49.605057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.839329, 38.690639, 48.837414>,  <34.093384, 38.662849, 49.046619>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.839329, 38.690639, 48.837414> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.776352, 38.422909, 49.127853>,  <34.738567, 38.262272, 49.302116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.776352, 38.422909, 49.127853>,  <34.839329, 38.690639, 48.837414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.776352, 38.422909, 49.127853> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586515, -0.654918, -0.476533,
		0.794489, 0.350842, 0.495679,
		-0.157441, -0.669323, 0.726099,
		34.729118, 38.222111, 49.345684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.492306, 38.541569, 48.958958>,  <34.839329, 38.690639, 48.837414>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.492306, 38.541569, 48.958958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.271221, 38.227425, 49.070473>,  <35.138569, 38.038940, 49.137383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.271221, 38.227425, 49.070473>,  <35.492306, 38.541569, 48.958958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.271221, 38.227425, 49.070473> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580824, -0.602919, -0.546930,
		0.597619, -0.140373, 0.789397,
		-0.552716, -0.785356, 0.278784,
		35.105408, 37.991817, 49.154106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.982681, 38.000751, 48.974850>,  <35.492306, 38.541569, 48.958958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.982681, 38.000751, 48.974850> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.651672, 37.777203, 48.996288>,  <35.453068, 37.643074, 49.009151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.651672, 37.777203, 48.996288>,  <35.982681, 38.000751, 48.974850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.651672, 37.777203, 48.996288> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510270, -0.788494, -0.343368,
		0.234161, -0.256794, 0.937670,
		-0.827522, -0.558869, 0.053600,
		35.403416, 37.609543, 49.012367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.157928, 37.400066, 49.290524>,  <35.982681, 38.000751, 48.974850>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.157928, 37.400066, 49.290524> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.817974, 37.308392, 49.100719>,  <35.614002, 37.253387, 48.986835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.817974, 37.308392, 49.100719>,  <36.157928, 37.400066, 49.290524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.817974, 37.308392, 49.100719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450050, -0.784111, -0.427347,
		-0.274129, -0.576752, 0.769552,
		-0.849887, -0.229189, -0.474515,
		35.563007, 37.239635, 48.958366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.077736, 36.684139, 49.331867>,  <36.157928, 37.400066, 49.290524>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.077736, 36.684139, 49.331867> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.833786, 36.771572, 49.027164>,  <35.687416, 36.824032, 48.844345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.833786, 36.771572, 49.027164>,  <36.077736, 36.684139, 49.331867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.833786, 36.771572, 49.027164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399158, -0.745660, -0.533540,
		-0.684631, -0.629455, 0.367514,
		-0.609879, 0.218582, -0.761754,
		35.650822, 36.837147, 48.798637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.842640, 36.060009, 49.181244>,  <36.077736, 36.684139, 49.331867>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.842640, 36.060009, 49.181244> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.792820, 36.298851, 48.864273>,  <35.762928, 36.442158, 48.674091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.792820, 36.298851, 48.864273>,  <35.842640, 36.060009, 49.181244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.792820, 36.298851, 48.864273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472791, -0.666437, -0.576481,
		-0.872328, -0.446455, -0.199304,
		-0.124549, 0.597110, -0.792431,
		35.755455, 36.477985, 48.626545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.422779, 35.680458, 48.712036>,  <35.842640, 36.060009, 49.181244>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.422779, 35.680458, 48.712036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.595291, 35.954391, 48.477089>,  <35.698799, 36.118752, 48.336121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.595291, 35.954391, 48.477089>,  <35.422779, 35.680458, 48.712036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.595291, 35.954391, 48.477089> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360031, -0.727578, -0.583959,
		-0.827269, 0.040381, -0.560352,
		0.431281, 0.684836, -0.587364,
		35.724674, 36.159843, 48.300880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.275776, 35.496399, 48.016174>,  <35.422779, 35.680458, 48.712036>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.275776, 35.496399, 48.016174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.614056, 35.709705, 48.024307>,  <35.817024, 35.837688, 48.029186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.614056, 35.709705, 48.024307>,  <35.275776, 35.496399, 48.016174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.614056, 35.709705, 48.024307> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418160, -0.638528, -0.646084,
		-0.331554, 0.554896, -0.762996,
		0.845703, 0.533266, 0.020329,
		35.867767, 35.869686, 48.030407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.431084, 35.613708, 47.228287>,  <35.275776, 35.496399, 48.016174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.431084, 35.613708, 47.228287> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.765934, 35.671745, 47.439255>,  <35.966843, 35.706566, 47.565834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.765934, 35.671745, 47.439255>,  <35.431084, 35.613708, 47.228287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.765934, 35.671745, 47.439255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514752, -0.535166, -0.669797,
		0.185077, 0.832194, -0.522686,
		0.837124, 0.145090, 0.527420,
		36.017071, 35.715271, 47.597481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.009323, 35.725128, 46.697765>,  <35.431084, 35.613708, 47.228287>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.009323, 35.725128, 46.697765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.178127, 35.608463, 47.041122>,  <36.279408, 35.538464, 47.247139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.178127, 35.608463, 47.041122>,  <36.009323, 35.725128, 46.697765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.178127, 35.608463, 47.041122> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687699, -0.513986, -0.512726,
		0.590745, 0.806693, -0.016333,
		0.422008, -0.291658, 0.858397,
		36.304729, 35.520966, 47.298641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.618229, 36.370331, 46.595024>,  <36.009323, 35.725128, 46.697765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.618229, 36.370331, 46.595024> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.637749, 36.458355, 46.205318>,  <35.649460, 36.511169, 45.971497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.637749, 36.458355, 46.205318>,  <35.618229, 36.370331, 46.595024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.637749, 36.458355, 46.205318> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899665, 0.433374, 0.052827,
		0.433846, 0.873934, 0.219129,
		0.048798, 0.220061, -0.974265,
		35.652390, 36.524376, 45.913040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.443596, 37.057690, 46.553131>,  <35.618229, 36.370331, 46.595024>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.443596, 37.057690, 46.553131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.364655, 36.843445, 46.224701>,  <35.317291, 36.714897, 46.027641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.364655, 36.843445, 46.224701>,  <35.443596, 37.057690, 46.553131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.364655, 36.843445, 46.224701> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956058, 0.290384, 0.040374,
		0.216803, 0.792968, -0.569384,
		-0.197355, -0.535611, -0.821080,
		35.305447, 36.682762, 45.978378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.091835, 37.499557, 46.203732>,  <35.443596, 37.057690, 46.553131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.091835, 37.499557, 46.203732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.025951, 37.171604, 45.984402>,  <34.986420, 36.974831, 45.852802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.025951, 37.171604, 45.984402>,  <35.091835, 37.499557, 46.203732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.025951, 37.171604, 45.984402> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.951507, 0.278518, -0.130626,
		0.259816, 0.500220, -0.826000,
		-0.164714, -0.819883, -0.548326,
		34.976536, 36.925640, 45.819904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.745537, 37.715870, 45.598156>,  <35.091835, 37.499557, 46.203732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.745537, 37.715870, 45.598156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.663479, 37.326447, 45.638344>,  <34.614246, 37.092793, 45.662457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.663479, 37.326447, 45.638344>,  <34.745537, 37.715870, 45.598156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.663479, 37.326447, 45.638344> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.971436, 0.215049, 0.100328,
		-0.119281, -0.077016, -0.989869,
		-0.205143, -0.973562, 0.100467,
		34.601936, 37.034378, 45.668484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.180809, 37.668255, 45.224693>,  <34.745537, 37.715870, 45.598156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.180809, 37.668255, 45.224693> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.157986, 37.346710, 45.461521>,  <34.144291, 37.153782, 45.603619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.157986, 37.346710, 45.461521>,  <34.180809, 37.668255, 45.224693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.157986, 37.346710, 45.461521> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962442, 0.201952, 0.181440,
		-0.265423, -0.559483, -0.785194,
		-0.057059, -0.803863, 0.592072,
		34.140869, 37.105553, 45.639141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.537998, 37.396721, 45.067749>,  <34.180809, 37.668255, 45.224693>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.537998, 37.396721, 45.067749> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.616692, 37.213406, 45.414452>,  <33.663906, 37.103416, 45.622475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.616692, 37.213406, 45.414452>,  <33.537998, 37.396721, 45.067749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.616692, 37.213406, 45.414452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.932426, 0.185852, 0.309906,
		-0.303114, -0.869156, -0.390756,
		0.196734, -0.458288, 0.866757,
		33.675713, 37.075920, 45.674480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.975552, 36.996887, 45.171719>,  <33.537998, 37.396721, 45.067749>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.975552, 36.996887, 45.171719> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.142197, 37.043411, 45.532364>,  <33.242184, 37.071327, 45.748753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.142197, 37.043411, 45.532364>,  <32.975552, 36.996887, 45.171719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.142197, 37.043411, 45.532364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908928, 0.071609, 0.410757,
		-0.016788, -0.990628, 0.135551,
		0.416614, 0.116310, 0.901612,
		33.267181, 37.078304, 45.802849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.532707, 36.552029, 45.637665>,  <32.975552, 36.996887, 45.171719>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.532707, 36.552029, 45.637665> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.743404, 36.812447, 45.856274>,  <32.869823, 36.968697, 45.987438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.743404, 36.812447, 45.856274>,  <32.532707, 36.552029, 45.637665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.743404, 36.812447, 45.856274> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794333, 0.148113, 0.589150,
		0.302615, -0.744450, 0.595162,
		0.526744, 0.651043, 0.546520,
		32.901428, 37.007759, 46.020229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.477127, 36.322880, 46.358444>,  <32.532707, 36.552029, 45.637665>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.477127, 36.322880, 46.358444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.559811, 36.712730, 46.392807>,  <32.609421, 36.946640, 46.413425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.559811, 36.712730, 46.392807>,  <32.477127, 36.322880, 46.358444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.559811, 36.712730, 46.392807> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828309, 0.127589, 0.545550,
		0.520746, -0.183924, 0.833664,
		0.206707, 0.974624, 0.085904,
		32.621822, 37.005119, 46.418579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.159256, 36.502335, 46.995975>,  <32.477127, 36.322880, 46.358444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.159256, 36.502335, 46.995975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.236172, 36.863129, 46.841343>,  <32.282322, 37.079605, 46.748562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.236172, 36.863129, 46.841343>,  <32.159256, 36.502335, 46.995975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.236172, 36.863129, 46.841343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768261, 0.383461, 0.512574,
		0.610574, 0.198433, 0.766697,
		0.192287, 0.901988, -0.386580,
		32.293858, 37.133724, 46.725368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.346798, 37.003258, 47.536285>,  <32.159256, 36.502335, 46.995975>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.346798, 37.003258, 47.536285> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.199959, 37.209614, 47.226681>,  <32.111855, 37.333427, 47.040916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.199959, 37.209614, 47.226681>,  <32.346798, 37.003258, 47.536285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.199959, 37.209614, 47.226681> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713714, 0.377423, 0.590054,
		0.596532, 0.769034, 0.229644,
		-0.367099, 0.515886, -0.774016,
		32.089828, 37.364380, 46.994476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.149670, 37.729565, 47.726898>,  <32.346798, 37.003258, 47.536285>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.149670, 37.729565, 47.726898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.942499, 37.624474, 47.401264>,  <31.818197, 37.561417, 47.205883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.942499, 37.624474, 47.401264>,  <32.149670, 37.729565, 47.726898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.942499, 37.624474, 47.401264> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784373, 0.525603, 0.329394,
		0.341340, 0.809144, -0.478302,
		-0.517924, -0.262732, -0.814080,
		31.787123, 37.545654, 47.157040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.090511, 38.249630, 47.477154>,  <32.149670, 37.729565, 47.726898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.090511, 38.249630, 47.477154> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.793209, 38.044304, 47.305534>,  <31.614828, 37.921108, 47.202560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.793209, 38.044304, 47.305534>,  <32.090511, 38.249630, 47.477154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.793209, 38.044304, 47.305534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652836, 0.696658, 0.297443,
		0.146221, 0.501176, -0.852902,
		-0.743253, -0.513313, -0.429052,
		31.570234, 37.890308, 47.176819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.650024, 38.704899, 47.332600>,  <32.090511, 38.249630, 47.477154>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.650024, 38.704899, 47.332600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.414577, 38.385708, 47.280807>,  <31.273310, 38.194195, 47.249733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.414577, 38.385708, 47.280807>,  <31.650024, 38.704899, 47.332600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.414577, 38.385708, 47.280807> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796852, 0.545724, 0.259252,
		-0.136214, 0.255780, -0.957090,
		-0.588618, -0.797974, -0.129483,
		31.237991, 38.146317, 47.241962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.025869, 38.984783, 47.082825>,  <31.650024, 38.704899, 47.332600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.025869, 38.984783, 47.082825> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.934809, 38.632221, 47.248383>,  <30.880173, 38.420685, 47.347717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.934809, 38.632221, 47.248383>,  <31.025869, 38.984783, 47.082825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.934809, 38.632221, 47.248383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867407, 0.376705, 0.325113,
		-0.442470, -0.285002, -0.850290,
		-0.227651, -0.881401, 0.413893,
		30.866514, 38.367802, 47.372551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.289936, 38.803524, 46.928417>,  <31.025869, 38.984783, 47.082825>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.289936, 38.803524, 46.928417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.355680, 38.544735, 47.226250>,  <30.395126, 38.389462, 47.404949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.355680, 38.544735, 47.226250>,  <30.289936, 38.803524, 46.928417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.355680, 38.544735, 47.226250> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853856, 0.284628, 0.435794,
		-0.493879, -0.707396, -0.505643,
		0.164359, -0.646976, 0.744586,
		30.404987, 38.350643, 47.449627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.606358, 38.327869, 47.033592>,  <30.289936, 38.803524, 46.928417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.606358, 38.327869, 47.033592> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.823368, 38.343735, 47.369232>,  <29.953575, 38.353256, 47.570618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.823368, 38.343735, 47.369232>,  <29.606358, 38.327869, 47.033592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.823368, 38.343735, 47.369232> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815185, 0.266041, 0.514487,
		-0.202829, -0.963145, 0.176667,
		0.542526, 0.039664, 0.839102,
		29.986126, 38.355633, 47.620964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.182596, 37.969650, 47.482300>,  <29.606358, 38.327869, 47.033592>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.182596, 37.969650, 47.482300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.432135, 38.199959, 47.693695>,  <29.581858, 38.338142, 47.820534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.432135, 38.199959, 47.693695>,  <29.182596, 37.969650, 47.482300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.432135, 38.199959, 47.693695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771883, 0.347896, 0.532132,
		0.122525, -0.739904, 0.661461,
		0.623846, 0.575770, 0.528493,
		29.619289, 38.372688, 47.852242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.749496, 38.119125, 48.062943>,  <29.182596, 37.969650, 47.482300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.749496, 38.119125, 48.062943> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.056675, 38.373619, 48.092499>,  <29.240982, 38.526318, 48.110233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.056675, 38.373619, 48.092499>,  <28.749496, 38.119125, 48.062943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.056675, 38.373619, 48.092499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551663, 0.598385, 0.581036,
		0.325461, -0.486968, 0.810517,
		0.767947, 0.636236, 0.073891,
		29.287060, 38.564491, 48.114666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.730227, 38.340054, 48.794609>,  <28.749496, 38.119125, 48.062943>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.730227, 38.340054, 48.794609> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.950548, 38.634071, 48.636456>,  <29.082741, 38.810482, 48.541565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.950548, 38.634071, 48.636456>,  <28.730227, 38.340054, 48.794609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.950548, 38.634071, 48.636456> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302063, 0.617162, 0.726546,
		0.778058, -0.280753, 0.561964,
		0.550803, 0.735044, -0.395383,
		29.115789, 38.854584, 48.517841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.176394, 38.696423, 49.352268>,  <28.730227, 38.340054, 48.794609>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.176394, 38.696423, 49.352268> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.204266, 38.952469, 49.046227>,  <29.220989, 39.106098, 48.862602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.204266, 38.952469, 49.046227>,  <29.176394, 38.696423, 49.352268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.204266, 38.952469, 49.046227> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031463, 0.765181, 0.643046,
		0.997073, -0.068881, 0.033178,
		0.069681, 0.640120, -0.765108,
		29.225170, 39.144505, 48.816692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.794415, 39.155342, 49.523262>,  <29.176394, 38.696423, 49.352268>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.794415, 39.155342, 49.523262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.543144, 39.330990, 49.266335>,  <29.392382, 39.436378, 49.112179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.543144, 39.330990, 49.266335>,  <29.794415, 39.155342, 49.523262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.543144, 39.330990, 49.266335> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005935, 0.828205, 0.560393,
		0.778049, 0.348213, -0.522865,
		-0.628176, 0.439116, -0.642318,
		29.354692, 39.462727, 49.073639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.081528, 39.825848, 49.363972>,  <29.794415, 39.155342, 49.523262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.081528, 39.825848, 49.363972> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.690687, 39.846817, 49.281483>,  <29.456182, 39.859398, 49.231991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.690687, 39.846817, 49.281483>,  <30.081528, 39.825848, 49.363972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.690687, 39.846817, 49.281483> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039731, 0.907176, 0.418871,
		0.209040, 0.417472, -0.884319,
		-0.977100, 0.052426, -0.206222,
		29.397556, 39.862545, 49.219616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.930597, 40.486435, 49.278225>,  <30.081528, 39.825848, 49.363972>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.930597, 40.486435, 49.278225> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.552557, 40.361431, 49.316418>,  <29.325733, 40.286430, 49.339333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.552557, 40.361431, 49.316418>,  <29.930597, 40.486435, 49.278225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.552557, 40.361431, 49.316418> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210893, 0.806533, 0.552293,
		-0.249608, 0.501837, -0.828164,
		-0.945103, -0.312511, 0.095483,
		29.269026, 40.267677, 49.345062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.466545, 41.001003, 49.072063>,  <29.930597, 40.486435, 49.278225>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.466545, 41.001003, 49.072063> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.310545, 40.768425, 49.357670>,  <29.216944, 40.628880, 49.529034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.310545, 40.768425, 49.357670>,  <29.466545, 41.001003, 49.072063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.310545, 40.768425, 49.357670> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175487, 0.808142, 0.562237,
		-0.903937, 0.093972, -0.417213,
		-0.390002, -0.581442, 0.714019,
		29.193544, 40.593994, 49.571877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.788065, 41.230831, 49.150177>,  <29.466545, 41.001003, 49.072063>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.788065, 41.230831, 49.150177> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.896124, 41.050781, 49.490623>,  <28.960958, 40.942753, 49.694893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.896124, 41.050781, 49.490623>,  <28.788065, 41.230831, 49.150177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.896124, 41.050781, 49.490623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359602, 0.772848, 0.522869,
		-0.893144, -0.447316, 0.046917,
		0.270147, -0.450126, 0.851121,
		28.977169, 40.915745, 49.745960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.299549, 41.491322, 49.662720>,  <28.788065, 41.230831, 49.150177>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.299549, 41.491322, 49.662720> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.554256, 41.309238, 49.911659>,  <28.707081, 41.199989, 50.061024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.554256, 41.309238, 49.911659>,  <28.299549, 41.491322, 49.662720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.554256, 41.309238, 49.911659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385858, 0.510673, 0.768327,
		-0.667561, -0.729384, 0.149536,
		0.636770, -0.455205, 0.622344,
		28.745287, 41.172676, 50.098362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.018929, 41.045761, 50.209393>,  <28.299549, 41.491322, 49.662720>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.018929, 41.045761, 50.209393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.372396, 41.162811, 50.355541>,  <28.584476, 41.233040, 50.443230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.372396, 41.162811, 50.355541>,  <28.018929, 41.045761, 50.209393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.372396, 41.162811, 50.355541> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435033, 0.225163, 0.871807,
		0.172843, -0.929340, 0.326271,
		0.883669, 0.292625, 0.365375,
		28.637497, 41.250599, 50.465153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.145338, 40.515930, 50.816456>,  <28.018929, 41.045761, 50.209393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.145338, 40.515930, 50.816456> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.383350, 40.831192, 50.879395>,  <28.526157, 41.020348, 50.917156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.383350, 40.831192, 50.879395>,  <28.145338, 40.515930, 50.816456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.383350, 40.831192, 50.879395> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368765, 0.093790, 0.924779,
		0.714108, -0.608295, 0.346450,
		0.595031, 0.788150, 0.157342,
		28.561859, 41.067638, 50.926598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.415760, 40.484463, 51.544613>,  <28.145338, 40.515930, 50.816456>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.415760, 40.484463, 51.544613> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.483715, 40.868481, 51.455654>,  <28.524488, 41.098892, 51.402279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.483715, 40.868481, 51.455654>,  <28.415760, 40.484463, 51.544613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.483715, 40.868481, 51.455654> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208924, 0.255633, 0.943929,
		0.963062, -0.113900, 0.244005,
		0.169889, 0.960041, -0.222394,
		28.534681, 41.156494, 51.388935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.741816, 40.772633, 52.112949>,  <28.415760, 40.484463, 51.544613>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.741816, 40.772633, 52.112949> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.583025, 41.080421, 51.912819>,  <28.487751, 41.265095, 51.792740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.583025, 41.080421, 51.912819>,  <28.741816, 40.772633, 52.112949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.583025, 41.080421, 51.912819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346741, 0.378997, 0.857981,
		0.849813, 0.514082, 0.116353,
		-0.396975, 0.769468, -0.500329,
		28.463932, 41.311260, 51.762718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.803421, 41.333553, 52.549633>,  <28.741816, 40.772633, 52.112949>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.803421, 41.333553, 52.549633> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.511936, 41.434658, 52.295048>,  <28.337046, 41.495319, 52.142296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.511936, 41.434658, 52.295048>,  <28.803421, 41.333553, 52.549633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.511936, 41.434658, 52.295048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508089, 0.423586, 0.749947,
		0.459153, 0.869879, -0.180250,
		-0.728714, 0.252758, -0.636466,
		28.293322, 41.510487, 52.104107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.631323, 42.138062, 52.530869>,  <28.803421, 41.333553, 52.549633>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.631323, 42.138062, 52.530869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.320435, 41.916645, 52.411186>,  <28.133902, 41.783794, 52.339378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.320435, 41.916645, 52.411186>,  <28.631323, 42.138062, 52.530869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.320435, 41.916645, 52.411186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554766, 0.378433, 0.740961,
		-0.296921, 0.741879, -0.601210,
		-0.777221, -0.553538, -0.299205,
		28.087269, 41.750584, 52.321426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.136478, 42.498779, 52.834747>,  <28.631323, 42.138062, 52.530869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.136478, 42.498779, 52.834747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.945345, 42.155273, 52.760777>,  <27.830664, 41.949169, 52.716396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.945345, 42.155273, 52.760777>,  <28.136478, 42.498779, 52.834747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.945345, 42.155273, 52.760777> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673180, 0.222731, 0.705138,
		-0.564359, 0.461426, -0.684532,
		-0.477836, -0.858764, -0.184923,
		27.801994, 41.897644, 52.705299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.465324, 42.657372, 52.842587>,  <28.136478, 42.498779, 52.834747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.465324, 42.657372, 52.842587> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.441139, 42.260231, 52.883762>,  <27.426628, 42.021946, 52.908470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.441139, 42.260231, 52.883762>,  <27.465324, 42.657372, 52.842587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.441139, 42.260231, 52.883762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586475, 0.118790, 0.801209,
		-0.807707, -0.011928, -0.589463,
		-0.060465, -0.992848, 0.102943,
		27.423000, 41.962376, 52.914646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.728230, 42.453003, 52.937431>,  <27.465324, 42.657372, 52.842587>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.728230, 42.453003, 52.937431> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.993240, 42.200405, 53.098560>,  <27.152246, 42.048847, 53.195236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.993240, 42.200405, 53.098560>,  <26.728230, 42.453003, 52.937431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.993240, 42.200405, 53.098560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442808, 0.103546, 0.890618,
		-0.604134, -0.768433, -0.211030,
		0.662528, -0.631498, 0.402823,
		27.191999, 42.010956, 53.219406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.286470, 41.950661, 53.276031>,  <26.728230, 42.453003, 52.937431>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.286470, 41.950661, 53.276031> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.644196, 41.933540, 53.454185>,  <26.858831, 41.923267, 53.561077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.644196, 41.933540, 53.454185>,  <26.286470, 41.950661, 53.276031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.644196, 41.933540, 53.454185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447170, -0.051010, 0.892993,
		-0.015494, -0.997781, -0.064754,
		0.894315, -0.042792, 0.445387,
		26.912491, 41.920700, 53.587803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.194517, 41.489437, 53.753880>,  <26.286470, 41.950661, 53.276031>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.194517, 41.489437, 53.753880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.510715, 41.687363, 53.898254>,  <26.700436, 41.806118, 53.984879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.510715, 41.687363, 53.898254>,  <26.194517, 41.489437, 53.753880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.510715, 41.687363, 53.898254> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436454, 0.041671, 0.898761,
		0.429676, -0.868001, 0.248903,
		0.790498, 0.494811, 0.360938,
		26.747866, 41.835804, 54.006535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.289270, 41.296890, 54.376308>,  <26.194517, 41.489437, 53.753880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.289270, 41.296890, 54.376308> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.524984, 41.619038, 54.401997>,  <26.666412, 41.812325, 54.417408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.524984, 41.619038, 54.401997>,  <26.289270, 41.296890, 54.376308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.524984, 41.619038, 54.401997> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423610, 0.240314, 0.873386,
		0.687965, -0.541877, 0.482776,
		0.589286, 0.805368, 0.064217,
		26.701771, 41.860649, 54.421261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.776011, 41.035587, 54.797775>,  <26.289270, 41.296890, 54.376308>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.776011, 41.035587, 54.797775> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.558722, 40.734074, 54.945675>,  <26.428349, 40.553165, 55.034416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.558722, 40.734074, 54.945675>,  <26.776011, 41.035587, 54.797775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.558722, 40.734074, 54.945675> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481979, -0.640574, -0.597797,
		0.687464, -0.146524, 0.711283,
		-0.543221, -0.753788, 0.369750,
		26.395756, 40.507938, 55.056599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.170319, 40.488796, 54.832039>,  <26.776011, 41.035587, 54.797775>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.170319, 40.488796, 54.832039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.816296, 40.303150, 54.846287>,  <26.603882, 40.191761, 54.854836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.816296, 40.303150, 54.846287>,  <27.170319, 40.488796, 54.832039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.816296, 40.303150, 54.846287> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365103, -0.739633, -0.565369,
		0.288746, -0.487378, 0.824068,
		-0.885057, -0.464119, 0.035623,
		26.550779, 40.163914, 54.856976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.324043, 39.759033, 55.134300>,  <27.170319, 40.488796, 54.832039>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.324043, 39.759033, 55.134300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.986610, 39.768520, 54.919708>,  <26.784151, 39.774212, 54.790955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.986610, 39.768520, 54.919708>,  <27.324043, 39.759033, 55.134300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.986610, 39.768520, 54.919708> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391550, -0.656528, -0.644717,
		-0.367505, -0.753929, 0.544547,
		-0.843581, 0.023720, -0.536478,
		26.733536, 39.775635, 54.758766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.188801, 39.144135, 54.875240>,  <27.324043, 39.759033, 55.134300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.188801, 39.144135, 54.875240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.906033, 39.309895, 54.645969>,  <26.736372, 39.409351, 54.508408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.906033, 39.309895, 54.645969>,  <27.188801, 39.144135, 54.875240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.906033, 39.309895, 54.645969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160434, -0.695313, -0.700572,
		-0.688851, -0.587209, 0.425052,
		-0.706926, 0.414397, -0.573175,
		26.693956, 39.434216, 54.474014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.762751, 38.590862, 54.691486>,  <27.188801, 39.144135, 54.875240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.762751, 38.590862, 54.691486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.726654, 38.888271, 54.426449>,  <26.704996, 39.066715, 54.267426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.726654, 38.888271, 54.426449>,  <26.762751, 38.590862, 54.691486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.726654, 38.888271, 54.426449> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299720, -0.614191, -0.730025,
		-0.949750, -0.264470, -0.167424,
		-0.090239, 0.743522, -0.662595,
		26.699583, 39.111328, 54.227669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.428967, 38.247570, 54.066521>,  <26.762751, 38.590862, 54.691486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.428967, 38.247570, 54.066521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.600792, 38.587517, 53.944401>,  <26.703888, 38.791485, 53.871128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.600792, 38.587517, 53.944401>,  <26.428967, 38.247570, 54.066521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.600792, 38.587517, 53.944401> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370196, -0.474092, -0.798869,
		-0.823668, 0.230147, -0.518269,
		0.429565, 0.849864, -0.305295,
		26.729662, 38.842476, 53.852814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.256191, 38.168633, 53.426342>,  <26.428967, 38.247570, 54.066521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.256191, 38.168633, 53.426342> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.545567, 38.444130, 53.445404>,  <26.719193, 38.609428, 53.456841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.545567, 38.444130, 53.445404>,  <26.256191, 38.168633, 53.426342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.545567, 38.444130, 53.445404> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411196, -0.374412, -0.831104,
		-0.554574, 0.620847, -0.554072,
		0.723440, 0.688741, 0.047651,
		26.762598, 38.650753, 53.459698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.294502, 38.464008, 52.759876>,  <26.256191, 38.168633, 53.426342>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.294502, 38.464008, 52.759876> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.650232, 38.554577, 52.918789>,  <26.863670, 38.608917, 53.014137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.650232, 38.554577, 52.918789>,  <26.294502, 38.464008, 52.759876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.650232, 38.554577, 52.918789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455019, -0.351881, -0.818009,
		-0.045421, 0.908246, -0.415963,
		0.889323, 0.226426, 0.397286,
		26.917028, 38.622505, 53.037975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.717466, 38.613712, 52.263401>,  <26.294502, 38.464008, 52.759876>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.717466, 38.613712, 52.263401> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.987932, 38.534950, 52.547382>,  <27.150211, 38.487694, 52.717770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.987932, 38.534950, 52.547382>,  <26.717466, 38.613712, 52.263401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.987932, 38.534950, 52.547382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623199, -0.361120, -0.693697,
		0.392967, 0.911494, -0.121468,
		0.676165, -0.196901, 0.709951,
		27.190783, 38.475880, 52.760368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.332794, 39.072456, 52.101585>,  <26.717466, 38.613712, 52.263401>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.332794, 39.072456, 52.101585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.438313, 38.754364, 52.319950>,  <27.501623, 38.563511, 52.450970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.438313, 38.754364, 52.319950>,  <27.332794, 39.072456, 52.101585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.438313, 38.754364, 52.319950> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615405, -0.297056, -0.730092,
		0.742757, 0.528555, 0.411025,
		0.263797, -0.795228, 0.545916,
		27.517452, 38.515797, 52.483727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.036177, 39.051777, 52.025440>,  <27.332794, 39.072456, 52.101585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.036177, 39.051777, 52.025440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.919449, 38.694397, 52.162022>,  <27.849413, 38.479969, 52.243973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.919449, 38.694397, 52.162022>,  <28.036177, 39.051777, 52.025440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.919449, 38.694397, 52.162022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528691, -0.448175, -0.720850,
		0.797074, -0.029833, 0.603144,
		-0.291819, -0.893448, 0.341456,
		27.831903, 38.426361, 52.264458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.698689, 38.658222, 52.083374>,  <28.036177, 39.051777, 52.025440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.698689, 38.658222, 52.083374> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.414841, 38.377064, 52.102875>,  <28.244532, 38.208370, 52.114574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.414841, 38.377064, 52.102875>,  <28.698689, 38.658222, 52.083374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.414841, 38.377064, 52.102875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466804, -0.520842, -0.714715,
		0.527763, -0.484418, 0.697714,
		-0.709620, -0.702896, 0.048753,
		28.201954, 38.166195, 52.117500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.049179, 38.016464, 52.182289>,  <28.698689, 38.658222, 52.083374>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.049179, 38.016464, 52.182289> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.686214, 37.961460, 52.023445>,  <28.468435, 37.928459, 51.928139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.686214, 37.961460, 52.023445>,  <29.049179, 38.016464, 52.182289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.686214, 37.961460, 52.023445> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410383, -0.493455, -0.766869,
		-0.090503, -0.858832, 0.504199,
		-0.907412, -0.137510, -0.397109,
		28.413992, 37.920208, 51.904312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.076733, 37.258263, 52.048775>,  <29.049179, 38.016464, 52.182289>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.076733, 37.258263, 52.048775> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.789698, 37.411430, 51.816071>,  <28.617477, 37.503330, 51.676449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.789698, 37.411430, 51.816071>,  <29.076733, 37.258263, 52.048775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.789698, 37.411430, 51.816071> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342070, -0.533832, -0.773312,
		-0.606677, -0.753920, 0.252086,
		-0.717587, 0.382919, -0.581757,
		28.574421, 37.526306, 51.641544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.774416, 36.690281, 51.633945>,  <29.076733, 37.258263, 52.048775>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.774416, 36.690281, 51.633945> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.640343, 37.012211, 51.438023>,  <28.559898, 37.205368, 51.320469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.640343, 37.012211, 51.438023>,  <28.774416, 36.690281, 51.633945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.640343, 37.012211, 51.438023> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187764, -0.452387, -0.871832,
		-0.923254, -0.384191, 0.000515,
		-0.335182, 0.804825, -0.489805,
		28.539787, 37.253658, 51.291080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.285736, 36.514378, 51.047794>,  <28.774416, 36.690281, 51.633945>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.285736, 36.514378, 51.047794> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.437189, 36.870457, 50.946457>,  <28.528061, 37.084106, 50.885654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.437189, 36.870457, 50.946457>,  <28.285736, 36.514378, 51.047794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.437189, 36.870457, 50.946457> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221739, -0.352995, -0.908970,
		-0.898593, 0.287991, -0.331047,
		0.378633, 0.890200, -0.253340,
		28.550779, 37.137516, 50.870457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.914278, 36.689873, 50.567654>,  <28.285736, 36.514378, 51.047794>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.914278, 36.689873, 50.567654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.248329, 36.906796, 50.530853>,  <28.448761, 37.036949, 50.508774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.248329, 36.906796, 50.530853>,  <27.914278, 36.689873, 50.567654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.248329, 36.906796, 50.530853> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132362, -0.360467, -0.923333,
		-0.533891, 0.758925, -0.372817,
		0.835129, 0.542306, -0.091998,
		28.498867, 37.069489, 50.503254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.821875, 36.961494, 49.871746>,  <27.914278, 36.689873, 50.567654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.821875, 36.961494, 49.871746> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.208807, 37.042721, 49.932453>,  <28.440968, 37.091457, 49.968880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.208807, 37.042721, 49.932453>,  <27.821875, 36.961494, 49.871746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.208807, 37.042721, 49.932453> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167011, -0.060049, -0.984125,
		-0.190725, 0.977323, -0.092001,
		0.967332, 0.203062, 0.151771,
		28.499006, 37.103638, 49.977985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.065462, 37.408611, 49.336590>,  <27.821875, 36.961494, 49.871746>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.065462, 37.408611, 49.336590> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.412683, 37.242954, 49.446110>,  <28.621017, 37.143559, 49.511822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.412683, 37.242954, 49.446110>,  <28.065462, 37.408611, 49.336590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.412683, 37.242954, 49.446110> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185730, -0.240559, -0.952699,
		0.460417, 0.877849, -0.131900,
		0.868056, -0.414141, 0.273800,
		28.673100, 37.118713, 49.528252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.553865, 37.631989, 48.794209>,  <28.065462, 37.408611, 49.336590>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.553865, 37.631989, 48.794209> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.748486, 37.334274, 48.977207>,  <28.865257, 37.155643, 49.087006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.748486, 37.334274, 48.977207>,  <28.553865, 37.631989, 48.794209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.748486, 37.334274, 48.977207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370714, -0.298290, -0.879542,
		0.791100, 0.597541, 0.130786,
		0.486550, -0.744290, 0.457494,
		28.894451, 37.110989, 49.114456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.268801, 37.613590, 48.455505>,  <28.553865, 37.631989, 48.794209>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.268801, 37.613590, 48.455505> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.203390, 37.264133, 48.638817>,  <29.164145, 37.054459, 48.748802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.203390, 37.264133, 48.638817>,  <29.268801, 37.613590, 48.455505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.203390, 37.264133, 48.638817> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269418, -0.486416, -0.831152,
		0.949038, -0.012446, 0.314914,
		-0.163524, -0.873638, 0.458275,
		29.154333, 37.002041, 48.776299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.900110, 37.229961, 48.365444>,  <29.268801, 37.613590, 48.455505>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.900110, 37.229961, 48.365444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.590904, 36.993584, 48.457741>,  <29.405380, 36.851757, 48.513119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.590904, 36.993584, 48.457741>,  <29.900110, 37.229961, 48.365444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.590904, 36.993584, 48.457741> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249652, -0.617739, -0.745703,
		0.583202, -0.518834, 0.625050,
		-0.773013, -0.590940, 0.230738,
		29.359001, 36.816303, 48.526962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.126837, 36.513878, 48.514488>,  <29.900110, 37.229961, 48.365444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.126837, 36.513878, 48.514488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.748135, 36.463409, 48.396008>,  <29.520914, 36.433128, 48.324917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.748135, 36.463409, 48.396008>,  <30.126837, 36.513878, 48.514488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.748135, 36.463409, 48.396008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304515, -0.649648, -0.696584,
		-0.104536, -0.749692, 0.653479,
		-0.946754, -0.126176, -0.296204,
		29.464108, 36.425556, 48.307148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.147141, 35.911373, 48.191624>,  <30.126837, 36.513878, 48.514488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.147141, 35.911373, 48.191624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.812637, 36.068218, 48.038303>,  <29.611935, 36.162327, 47.946312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.812637, 36.068218, 48.038303>,  <30.147141, 35.911373, 48.191624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.812637, 36.068218, 48.038303> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081577, -0.602274, -0.794111,
		-0.542231, -0.695351, 0.471670,
		-0.836260, 0.392114, -0.383296,
		29.561760, 36.185852, 47.923313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.696619, 35.375591, 48.099140>,  <30.147141, 35.911373, 48.191624>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.696619, 35.375591, 48.099140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.615835, 35.675869, 47.847534>,  <29.567366, 35.856037, 47.696571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.615835, 35.675869, 47.847534>,  <29.696619, 35.375591, 48.099140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.615835, 35.675869, 47.847534> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002883, -0.642706, -0.766108,
		-0.979390, -0.152908, 0.131964,
		-0.201958, 0.750698, -0.629019,
		29.555248, 35.901077, 47.658829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.305435, 35.107643, 47.663502>,  <29.696619, 35.375591, 48.099140>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.305435, 35.107643, 47.663502> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.398169, 35.443741, 47.467442>,  <29.453808, 35.645397, 47.349804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.398169, 35.443741, 47.467442>,  <29.305435, 35.107643, 47.663502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.398169, 35.443741, 47.467442> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194689, -0.533764, -0.822917,
		-0.953074, 0.095352, -0.287330,
		0.231834, 0.840240, -0.490152,
		29.467718, 35.695812, 47.320396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.171864, 34.932621, 47.073574>,  <29.305435, 35.107643, 47.663502>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.171864, 34.932621, 47.073574> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.393368, 35.262863, 47.030266>,  <29.526270, 35.461010, 47.004280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.393368, 35.262863, 47.030266>,  <29.171864, 34.932621, 47.073574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.393368, 35.262863, 47.030266> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399328, -0.377407, -0.835524,
		-0.730676, 0.419446, -0.538681,
		0.553759, 0.825608, -0.108266,
		29.559496, 35.510544, 46.997787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.013115, 35.232426, 46.428783>,  <29.171864, 34.932621, 47.073574>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.013115, 35.232426, 46.428783> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.379442, 35.356430, 46.530899>,  <29.599239, 35.430832, 46.592167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.379442, 35.356430, 46.530899>,  <29.013115, 35.232426, 46.428783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.379442, 35.356430, 46.530899> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398950, -0.629494, -0.666765,
		-0.045999, 0.712484, -0.700179,
		0.915818, 0.310007, 0.255290,
		29.654188, 35.449432, 46.607487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.455458, 35.309849, 45.758533>,  <29.013115, 35.232426, 46.428783>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.455458, 35.309849, 45.758533> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.707615, 35.279423, 46.067551>,  <29.858910, 35.261166, 46.252960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.707615, 35.279423, 46.067551>,  <29.455458, 35.309849, 45.758533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.707615, 35.279423, 46.067551> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419772, -0.803734, -0.421668,
		0.652992, 0.590107, -0.474737,
		0.630391, -0.076065, 0.772542,
		29.896732, 35.256603, 46.299313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.086782, 35.283260, 45.357536>,  <29.455458, 35.309849, 45.758533>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.086782, 35.283260, 45.357536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.160608, 35.128078, 45.718742>,  <30.204905, 35.034969, 45.935467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.160608, 35.128078, 45.718742>,  <30.086782, 35.283260, 45.357536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.160608, 35.128078, 45.718742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371772, -0.822965, -0.429550,
		0.909792, 0.414995, -0.007661,
		0.184566, -0.387953, 0.903011,
		30.215979, 35.011692, 45.989647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.836359, 34.955986, 45.384117>,  <30.086782, 35.283260, 45.357536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.836359, 34.955986, 45.384117> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.651318, 34.760757, 45.680168>,  <30.540293, 34.643620, 45.857800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.651318, 34.760757, 45.680168>,  <30.836359, 34.955986, 45.384117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.651318, 34.760757, 45.680168> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478569, -0.840220, -0.254954,
		0.746305, 0.236259, 0.622263,
		-0.462603, -0.488069, 0.740127,
		30.512537, 34.614338, 45.902206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.349157, 34.440758, 45.587471>,  <30.836359, 34.955986, 45.384117>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.349157, 34.440758, 45.587471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.009298, 34.312996, 45.755318>,  <30.805384, 34.236340, 45.856026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.009298, 34.312996, 45.755318>,  <31.349157, 34.440758, 45.587471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.009298, 34.312996, 45.755318> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339811, -0.940091, -0.027529,
		0.403273, 0.119201, 0.907283,
		-0.849647, -0.319406, 0.419619,
		30.754404, 34.217175, 45.881203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.592735, 33.949772, 46.037991>,  <31.349157, 34.440758, 45.587471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.592735, 33.949772, 46.037991> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.207457, 33.861084, 45.977207>,  <30.976290, 33.807869, 45.940739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.207457, 33.861084, 45.977207>,  <31.592735, 33.949772, 46.037991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.207457, 33.861084, 45.977207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210108, -0.973632, 0.088858,
		-0.167651, 0.053661, 0.984385,
		-0.963197, -0.221724, -0.151955,
		30.918497, 33.794567, 45.931622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.366802, 33.464275, 46.624496>,  <31.592735, 33.949772, 46.037991>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.366802, 33.464275, 46.624496> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.125563, 33.416420, 46.309040>,  <30.980820, 33.387707, 46.119766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.125563, 33.416420, 46.309040>,  <31.366802, 33.464275, 46.624496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.125563, 33.416420, 46.309040> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107610, -0.991853, 0.068178,
		-0.790376, -0.043748, 0.611058,
		-0.603097, -0.119642, -0.788644,
		30.944633, 33.380527, 46.072445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.941597, 33.013191, 46.842045>,  <31.366802, 33.464275, 46.624496>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.941597, 33.013191, 46.842045> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.930758, 33.011051, 46.442196>,  <30.924253, 33.009766, 46.202286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.930758, 33.011051, 46.442196>,  <30.941597, 33.013191, 46.842045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.930758, 33.011051, 46.442196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248417, -0.968652, -0.001547,
		-0.968274, -0.248364, 0.027578,
		-0.027097, -0.005353, -0.999618,
		30.922626, 33.009445, 46.142311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.683502, 32.410694, 46.704517>,  <30.941597, 33.013191, 46.842045>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.683502, 32.410694, 46.704517> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.855162, 32.495705, 46.353367>,  <30.958157, 32.546711, 46.142677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.855162, 32.495705, 46.353367>,  <30.683502, 32.410694, 46.704517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.855162, 32.495705, 46.353367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412426, -0.910796, -0.018878,
		-0.803578, -0.353958, -0.478514,
		0.429147, 0.212522, -0.877877,
		30.983906, 32.559460, 46.090004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.575390, 31.905865, 46.188972>,  <30.683502, 32.410694, 46.704517>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.575390, 31.905865, 46.188972> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.903940, 32.083508, 46.045803>,  <31.101070, 32.190094, 45.959900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.903940, 32.083508, 46.045803>,  <30.575390, 31.905865, 46.188972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.903940, 32.083508, 46.045803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462410, -0.885852, -0.037996,
		-0.333942, -0.134299, -0.932977,
		0.821377, 0.444106, -0.357924,
		31.150352, 32.216740, 45.938427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.720705, 31.430180, 45.708145>,  <30.575390, 31.905865, 46.188972>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.720705, 31.430180, 45.708145> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.045864, 31.643406, 45.801991>,  <31.240959, 31.771341, 45.858299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.045864, 31.643406, 45.801991>,  <30.720705, 31.430180, 45.708145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.045864, 31.643406, 45.801991> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546133, -0.837628, 0.010912,
		0.202336, 0.119260, -0.972027,
		0.812896, 0.533064, 0.234614,
		31.289732, 31.803326, 45.872375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.269747, 30.924250, 45.536045>,  <30.720705, 31.430180, 45.708145>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.269747, 30.924250, 45.536045> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.513733, 31.196295, 45.698719>,  <31.660124, 31.359522, 45.796322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.513733, 31.196295, 45.698719>,  <31.269747, 30.924250, 45.536045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.513733, 31.196295, 45.698719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659476, -0.720222, 0.215341,
		0.439358, 0.136847, -0.887828,
		0.609964, 0.680113, 0.406683,
		31.696722, 31.400330, 45.820724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.940243, 30.845007, 45.195076>,  <31.269747, 30.924250, 45.536045>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.940243, 30.845007, 45.195076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.001083, 31.012665, 45.553112>,  <32.037586, 31.113260, 45.767933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.001083, 31.012665, 45.553112>,  <31.940243, 30.845007, 45.195076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.001083, 31.012665, 45.553112> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619202, -0.746280, 0.244243,
		0.770360, 0.517090, -0.373047,
		0.152102, 0.419147, 0.895087,
		32.046715, 31.138409, 45.821640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.650139, 30.731714, 45.356743>,  <31.940243, 30.845007, 45.195076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.650139, 30.731714, 45.356743> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.479073, 30.792915, 45.713100>,  <32.376434, 30.829636, 45.926914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.479073, 30.792915, 45.713100>,  <32.650139, 30.731714, 45.356743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.479073, 30.792915, 45.713100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543429, -0.744065, 0.388654,
		0.722348, 0.650352, 0.235066,
		-0.427666, 0.153002, 0.890894,
		32.350773, 30.838816, 45.980370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.268074, 30.469837, 45.313557>,  <32.650139, 30.731714, 45.356743>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.268074, 30.469837, 45.313557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.498516, 30.142899, 45.316212>,  <33.636784, 29.946735, 45.317806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.498516, 30.142899, 45.316212>,  <33.268074, 30.469837, 45.313557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.498516, 30.142899, 45.316212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620034, 0.442292, 0.648024,
		-0.532596, -0.369216, 0.761591,
		0.576107, -0.817347, 0.006637,
		33.671349, 29.897694, 45.318203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.338768, 30.332275, 46.069038>,  <33.268074, 30.469837, 45.313557>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.338768, 30.332275, 46.069038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.631695, 30.149706, 45.866894>,  <33.807449, 30.040165, 45.745605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.631695, 30.149706, 45.866894>,  <33.338768, 30.332275, 46.069038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.631695, 30.149706, 45.866894> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644670, 0.225630, 0.730405,
		-0.219349, -0.860679, 0.459475,
		0.732316, -0.456423, -0.505363,
		33.851391, 30.012779, 45.715286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.639614, 29.857758, 46.434292>,  <33.338768, 30.332275, 46.069038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.639614, 29.857758, 46.434292> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.924946, 29.979063, 46.181564>,  <34.096146, 30.051847, 46.029930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.924946, 29.979063, 46.181564>,  <33.639614, 29.857758, 46.434292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.924946, 29.979063, 46.181564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567248, 0.279592, 0.774634,
		0.411570, -0.910965, 0.027415,
		0.713330, 0.303265, -0.631815,
		34.138947, 30.070044, 45.992020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.389126, 29.429043, 46.453732>,  <33.639614, 29.857758, 46.434292>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.389126, 29.429043, 46.453732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.396706, 29.809504, 46.330479>,  <34.401253, 30.037781, 46.256527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.396706, 29.809504, 46.330479>,  <34.389126, 29.429043, 46.453732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.396706, 29.809504, 46.330479> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745454, 0.191940, 0.638325,
		0.666288, -0.241797, -0.705404,
		0.018950, 0.951154, -0.308135,
		34.402390, 30.094851, 46.238037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.866341, 29.707624, 46.803638>,  <34.389126, 29.429043, 46.453732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.866341, 29.707624, 46.803638> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.709789, 30.038702, 46.642765>,  <34.615860, 30.237349, 46.546242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.709789, 30.038702, 46.642765>,  <34.866341, 29.707624, 46.803638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.709789, 30.038702, 46.642765> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668281, 0.556096, 0.494123,
		0.632634, -0.075383, -0.770774,
		-0.391376, 0.827692, -0.402182,
		34.592377, 30.287010, 46.522110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.371597, 30.049328, 46.370609>,  <34.866341, 29.707624, 46.803638>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.371597, 30.049328, 46.370609> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.118637, 30.312542, 46.534103>,  <34.966862, 30.470470, 46.632198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.118637, 30.312542, 46.534103>,  <35.371597, 30.049328, 46.370609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.118637, 30.312542, 46.534103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774171, 0.555295, 0.303819,
		-0.027042, 0.508563, -0.860600,
		-0.632398, 0.658036, 0.408731,
		34.928917, 30.509953, 46.656723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.593929, 30.782227, 46.120670>,  <35.371597, 30.049328, 46.370609>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.593929, 30.782227, 46.120670> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.416283, 30.768503, 46.478794>,  <35.309692, 30.760269, 46.693668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.416283, 30.768503, 46.478794>,  <35.593929, 30.782227, 46.120670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.416283, 30.768503, 46.478794> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712055, 0.592998, 0.375939,
		-0.543816, 0.804473, -0.238931,
		-0.444119, -0.034310, 0.895311,
		35.283047, 30.758211, 46.747387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.535133, 31.455170, 46.254017>,  <35.593929, 30.782227, 46.120670>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.535133, 31.455170, 46.254017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.519047, 31.241737, 46.591934>,  <35.509396, 31.113678, 46.794685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.519047, 31.241737, 46.591934>,  <35.535133, 31.455170, 46.254017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.519047, 31.241737, 46.591934> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773434, 0.518660, 0.364408,
		-0.632601, 0.668046, 0.391831,
		-0.040214, -0.533579, 0.844793,
		35.506981, 31.081663, 46.845371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.522591, 31.905752, 46.862556>,  <35.535133, 31.455170, 46.254017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.522591, 31.905752, 46.862556> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.671494, 31.551302, 46.972977>,  <35.760838, 31.338631, 47.039227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.671494, 31.551302, 46.972977>,  <35.522591, 31.905752, 46.862556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.671494, 31.551302, 46.972977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694702, 0.463259, 0.550255,
		-0.615477, -0.013067, 0.788047,
		0.372260, -0.886127, 0.276047,
		35.783173, 31.285463, 47.055790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.913891, 32.184750, 47.395363>,  <35.522591, 31.905752, 46.862556>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.913891, 32.184750, 47.395363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.016830, 31.800285, 47.355492>,  <36.078594, 31.569605, 47.331570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.016830, 31.800285, 47.355492>,  <35.913891, 32.184750, 47.395363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.016830, 31.800285, 47.355492> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799750, 0.153951, 0.580258,
		-0.542379, -0.229043, 0.808310,
		0.257344, -0.961165, -0.099677,
		36.094032, 31.511936, 47.325588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.019547, 31.899105, 48.072468>,  <35.913891, 32.184750, 47.395363>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.019547, 31.899105, 48.072468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.242752, 31.700216, 47.806717>,  <36.376675, 31.580883, 47.647266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.242752, 31.700216, 47.806717>,  <36.019547, 31.899105, 48.072468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.242752, 31.700216, 47.806717> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815157, 0.178542, 0.551037,
		-0.155369, -0.849054, 0.504943,
		0.558013, -0.497222, -0.664373,
		36.410156, 31.551050, 47.607407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.563702, 31.742609, 48.459667>,  <36.019547, 31.899105, 48.072468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.563702, 31.742609, 48.459667> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.691898, 31.673922, 48.087044>,  <36.768818, 31.632710, 47.863472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.691898, 31.673922, 48.087044>,  <36.563702, 31.742609, 48.459667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.691898, 31.673922, 48.087044> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919825, 0.291346, 0.262755,
		0.226285, -0.941079, 0.251326,
		0.320496, -0.171718, -0.931555,
		36.788048, 31.622406, 47.807579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.159622, 31.368769, 48.491497>,  <36.563702, 31.742609, 48.459667>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.159622, 31.368769, 48.491497> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.175575, 31.529123, 48.125393>,  <37.185146, 31.625336, 47.905731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.175575, 31.529123, 48.125393>,  <37.159622, 31.368769, 48.491497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.175575, 31.529123, 48.125393> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.987614, 0.123298, 0.097035,
		0.151750, -0.907793, -0.391003,
		0.039878, 0.400885, -0.915260,
		37.187538, 31.649389, 47.850815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.828411, 31.261290, 48.390064>,  <37.159622, 31.368769, 48.491497>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.828411, 31.261290, 48.390064> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.729149, 31.525818, 48.106918>,  <37.669590, 31.684534, 47.937031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.729149, 31.525818, 48.106918>,  <37.828411, 31.261290, 48.390064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.729149, 31.525818, 48.106918> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943686, 0.330080, -0.022453,
		0.218803, -0.673575, -0.705990,
		-0.248157, 0.661320, -0.707866,
		37.654701, 31.724215, 47.894558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354847, 31.218876, 47.842987>,  <37.828411, 31.261290, 48.390064>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.354847, 31.218876, 47.842987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.214752, 31.590239, 47.793358>,  <38.130695, 31.813057, 47.763580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.214752, 31.590239, 47.793358>,  <38.354847, 31.218876, 47.842987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.214752, 31.590239, 47.793358> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935480, 0.353363, 0.003412,
		0.047009, -0.114870, -0.992267,
		-0.350239, 0.928407, -0.124070,
		38.109680, 31.868761, 47.756138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.717869, 31.596283, 47.222736>,  <38.354847, 31.218876, 47.842987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.717869, 31.596283, 47.222736> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.580753, 31.887383, 47.460350>,  <38.498486, 32.062042, 47.602917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.580753, 31.887383, 47.460350>,  <38.717869, 31.596283, 47.222736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.580753, 31.887383, 47.460350> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821051, 0.539363, -0.186985,
		-0.456479, 0.423637, -0.782406,
		-0.342787, 0.727750, 0.594035,
		38.477917, 32.105709, 47.638561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.253208, 31.043425, 47.375851>,  <38.717869, 31.596283, 47.222736>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.253208, 31.043425, 47.375851> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.232704, 30.648478, 47.315884>,  <39.220402, 30.411509, 47.279903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.232704, 30.648478, 47.315884>,  <39.253208, 31.043425, 47.375851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.232704, 30.648478, 47.315884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.998243, 0.055126, -0.021727,
		0.029717, 0.148542, -0.988459,
		-0.051262, -0.987369, -0.149919,
		39.217327, 30.352266, 47.270908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.806850, 30.718782, 47.092075>,  <39.253208, 31.043425, 47.375851>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.806850, 30.718782, 47.092075> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.999096, 31.060873, 47.014511>,  <40.114441, 31.266127, 46.967972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.999096, 31.060873, 47.014511>,  <39.806850, 30.718782, 47.092075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.999096, 31.060873, 47.014511> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030766, -0.237435, -0.970916,
		-0.876394, 0.460667, -0.140426,
		0.480611, 0.855225, -0.193914,
		40.143280, 31.317440, 46.956337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.473106, 31.185776, 46.520939>,  <39.806850, 30.718782, 47.092075>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.473106, 31.185776, 46.520939> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.864914, 31.265715, 46.511135>,  <40.099998, 31.313679, 46.505253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.864914, 31.265715, 46.511135>,  <39.473106, 31.185776, 46.520939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.864914, 31.265715, 46.511135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009460, -0.167280, -0.985864,
		-0.201123, 0.965442, -0.165744,
		0.979520, 0.199848, -0.024511,
		40.158772, 31.325668, 46.503780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.580421, 31.804760, 46.088581>,  <39.473106, 31.185776, 46.520939>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.580421, 31.804760, 46.088581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.905811, 31.572742, 46.105602>,  <40.101044, 31.433531, 46.115814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.905811, 31.572742, 46.105602>,  <39.580421, 31.804760, 46.088581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.905811, 31.572742, 46.105602> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029722, -0.114527, -0.992975,
		0.580844, 0.806493, -0.110405,
		0.813472, -0.580045, 0.042551,
		40.149853, 31.398729, 46.118366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.140537, 32.131260, 45.734325>,  <39.580421, 31.804760, 46.088581>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.140537, 32.131260, 45.734325> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.192234, 31.734634, 45.730225>,  <40.223251, 31.496660, 45.727764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.192234, 31.734634, 45.730225>,  <40.140537, 32.131260, 45.734325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.192234, 31.734634, 45.730225> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056164, 0.002998, -0.998417,
		0.990022, 0.129612, -0.055302,
		0.129241, -0.991560, -0.010247,
		40.231007, 31.437166, 45.727150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.714191, 32.106937, 45.272217>,  <40.140537, 32.131260, 45.734325>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.714191, 32.106937, 45.272217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.484806, 31.779270, 45.276310>,  <40.347176, 31.582670, 45.278767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.484806, 31.779270, 45.276310>,  <40.714191, 32.106937, 45.272217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.484806, 31.779270, 45.276310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126261, 0.076037, -0.989079,
		0.809445, -0.568490, -0.147033,
		-0.573461, -0.819169, 0.010231,
		40.312767, 31.533520, 45.279381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.930340, 31.588720, 44.692745>,  <40.714191, 32.106937, 45.272217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.930340, 31.588720, 44.692745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.553036, 31.518097, 44.805229>,  <40.326653, 31.475723, 44.872719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.553036, 31.518097, 44.805229>,  <40.930340, 31.588720, 44.692745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.553036, 31.518097, 44.805229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282515, -0.018249, -0.959089,
		0.174467, -0.984121, -0.032667,
		-0.943264, -0.176558, 0.281213,
		40.270058, 31.465130, 44.889591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.707676, 31.181610, 44.122383>,  <40.930340, 31.588720, 44.692745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.707676, 31.181610, 44.122383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.375900, 31.322866, 44.295506>,  <40.176834, 31.407621, 44.399380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.375900, 31.322866, 44.295506>,  <40.707676, 31.181610, 44.122383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.375900, 31.322866, 44.295506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357130, 0.260527, -0.896986,
		-0.429522, -0.898563, -0.089973,
		-0.829439, 0.353143, 0.432806,
		40.127068, 31.428810, 44.425346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.479950, 31.007795, 44.053768>,  <40.707676, 31.181610, 44.122383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.479950, 31.007795, 44.053768> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.541225, 30.703176, 44.305664>,  <41.577991, 30.520405, 44.456802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.541225, 30.703176, 44.305664>,  <41.479950, 31.007795, 44.053768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.541225, 30.703176, 44.305664> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734673, -0.338434, -0.587977,
		0.660900, 0.552726, 0.507646,
		0.153185, -0.761549, 0.629744,
		41.587181, 30.474712, 44.494587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.185566, 30.993658, 44.153690>,  <41.479950, 31.007795, 44.053768>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.185566, 30.993658, 44.153690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.041183, 30.628963, 44.232124>,  <41.954556, 30.410147, 44.279186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.041183, 30.628963, 44.232124>,  <42.185566, 30.993658, 44.153690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.041183, 30.628963, 44.232124> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683209, -0.401640, -0.609845,
		0.634774, -0.086156, 0.767880,
		-0.360953, -0.911736, 0.196088,
		41.932899, 30.355442, 44.290951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.538097, 30.358545, 44.215649>,  <42.185566, 30.993658, 44.153690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.538097, 30.358545, 44.215649> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.529102, 30.049019, 43.962444>,  <42.523705, 29.863302, 43.810520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.529102, 30.049019, 43.962444>,  <42.538097, 30.358545, 44.215649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.529102, 30.049019, 43.962444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585202, -0.523552, 0.619219,
		-0.810576, -0.356512, 0.464614,
		-0.022490, -0.773817, -0.633010,
		42.522354, 29.816874, 43.772541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.402519, 30.603033, 43.601841>,  <42.538097, 30.358545, 44.215649>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.402519, 30.603033, 43.601841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.063717, 30.734789, 43.434948>,  <41.860435, 30.813843, 43.334812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.063717, 30.734789, 43.434948>,  <42.402519, 30.603033, 43.601841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.063717, 30.734789, 43.434948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462451, 0.069520, -0.883915,
		-0.262148, -0.941631, -0.211211,
		-0.847005, 0.329392, -0.417234,
		41.809616, 30.833607, 43.309776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.157047, 31.229555, 43.417683>,  <42.402519, 30.603033, 43.601841>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.157047, 31.229555, 43.417683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.264118, 31.430634, 43.088890>,  <42.328362, 31.551281, 42.891617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.264118, 31.430634, 43.088890>,  <42.157047, 31.229555, 43.417683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.264118, 31.430634, 43.088890> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132123, -0.825900, -0.548118,
		-0.954407, 0.255321, -0.154656,
		0.267676, 0.502694, -0.821978,
		42.344421, 31.581442, 42.842297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.568039, 31.048424, 42.803684>,  <42.157047, 31.229555, 43.417683>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.568039, 31.048424, 42.803684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.697132, 31.014524, 43.180759>,  <42.774590, 30.994184, 43.407005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.697132, 31.014524, 43.180759>,  <42.568039, 31.048424, 42.803684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.697132, 31.014524, 43.180759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859700, 0.442879, -0.254507,
		-0.395928, 0.892567, 0.215789,
		0.322733, -0.084747, 0.942688,
		42.793953, 30.989100, 43.463566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.243668, 30.558966, 42.491764>,  <42.568039, 31.048424, 42.803684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.243668, 30.558966, 42.491764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.496071, 30.312645, 42.303032>,  <43.647511, 30.164852, 42.189793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.496071, 30.312645, 42.303032>,  <43.243668, 30.558966, 42.491764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.496071, 30.312645, 42.303032> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769474, 0.419426, 0.481655,
		-0.098706, -0.666987, 0.738503,
		0.631004, -0.615801, -0.471829,
		43.685371, 30.127905, 42.161484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.555538, 29.943691, 42.841393>,  <43.243668, 30.558966, 42.491764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.555538, 29.943691, 42.841393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.783287, 30.125650, 42.567493>,  <43.919937, 30.234825, 42.403152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.783287, 30.125650, 42.567493>,  <43.555538, 29.943691, 42.841393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.783287, 30.125650, 42.567493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730328, 0.102490, 0.675364,
		0.377401, -0.884627, -0.273868,
		0.569377, 0.454896, -0.684748,
		43.954102, 30.262119, 42.362068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.216526, 29.701597, 42.847210>,  <43.555538, 29.943691, 42.841393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.216526, 29.701597, 42.847210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.227562, 30.080185, 42.718567>,  <44.234184, 30.307339, 42.641380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.227562, 30.080185, 42.718567>,  <44.216526, 29.701597, 42.847210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.227562, 30.080185, 42.718567> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834512, 0.155309, 0.528648,
		0.550299, -0.282971, -0.785556,
		0.027588, 0.946470, -0.321609,
		44.235840, 30.364126, 42.622086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.840855, 29.772398, 42.705006>,  <44.216526, 29.701597, 42.847210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.840855, 29.772398, 42.705006> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.700378, 30.138378, 42.784531>,  <44.616093, 30.357965, 42.832245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.700378, 30.138378, 42.784531>,  <44.840855, 29.772398, 42.705006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.700378, 30.138378, 42.784531> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735020, 0.137870, 0.663881,
		0.580007, 0.379286, -0.720926,
		-0.351195, 0.914950, 0.198817,
		44.595020, 30.412863, 42.844177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.426113, 30.227942, 42.697426>,  <44.840855, 29.772398, 42.705006>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.426113, 30.227942, 42.697426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.154884, 30.359333, 42.960430>,  <44.992146, 30.438168, 43.118233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.154884, 30.359333, 42.960430>,  <45.426113, 30.227942, 42.697426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.154884, 30.359333, 42.960430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692179, -0.015475, 0.721560,
		0.247194, 0.944384, -0.216874,
		-0.678073, 0.328481, 0.657508,
		44.951462, 30.457878, 43.157684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.772308, 30.770205, 43.110676>,  <45.426113, 30.227942, 42.697426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.772308, 30.770205, 43.110676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.473125, 30.612999, 43.324627>,  <45.293617, 30.518675, 43.452999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.473125, 30.612999, 43.324627>,  <45.772308, 30.770205, 43.110676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.473125, 30.612999, 43.324627> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580248, 0.004125, 0.814430,
		-0.322290, 0.919523, 0.224961,
		-0.747958, -0.393015, 0.534881,
		45.248737, 30.495094, 43.485092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.835308, 31.161581, 42.452316>,  <45.772308, 30.770205, 43.110676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.835308, 31.161581, 42.452316> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.910915, 31.534719, 42.574997>,  <45.956280, 31.758602, 42.648605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.910915, 31.534719, 42.574997>,  <45.835308, 31.161581, 42.452316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.910915, 31.534719, 42.574997> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137139, 0.284195, -0.948908,
		-0.972350, 0.221424, -0.074211,
		0.189021, 0.932848, 0.306703,
		45.967621, 31.814573, 42.667007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.358513, 31.513103, 41.991795>,  <45.835308, 31.161581, 42.452316>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.358513, 31.513103, 41.991795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.694813, 31.711761, 42.078033>,  <45.896595, 31.830956, 42.129776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.694813, 31.711761, 42.078033>,  <45.358513, 31.513103, 41.991795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.694813, 31.711761, 42.078033> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270488, -0.040341, -0.961878,
		-0.469012, 0.867017, -0.168252,
		0.840752, 0.496643, 0.215597,
		45.947037, 31.860754, 42.142712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.536518, 32.138592, 41.510818>,  <45.358513, 31.513103, 41.991795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.536518, 32.138592, 41.510818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.884724, 32.025753, 41.672131>,  <46.093647, 31.958050, 41.768917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.884724, 32.025753, 41.672131>,  <45.536518, 32.138592, 41.510818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.884724, 32.025753, 41.672131> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372314, -0.158425, -0.914485,
		0.321863, 0.946215, -0.032882,
		0.870509, -0.282096, 0.403280,
		46.145878, 31.941124, 41.793114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.949017, 32.242821, 40.941319>,  <45.536518, 32.138592, 41.510818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.949017, 32.242821, 40.941319> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.186462, 32.042171, 41.193031>,  <46.328930, 31.921782, 41.344059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.186462, 32.042171, 41.193031>,  <45.949017, 32.242821, 40.941319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.186462, 32.042171, 41.193031> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680349, -0.104823, -0.725354,
		0.429817, 0.858711, 0.279055,
		0.593618, -0.501624, 0.629278,
		46.364548, 31.891684, 41.381813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.884262, 31.920492, 40.192688>,  <45.949017, 32.242821, 40.941319>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.884262, 31.920492, 40.192688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.065220, 31.616173, 40.378819>,  <46.173794, 31.433582, 40.490498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.065220, 31.616173, 40.378819>,  <45.884262, 31.920492, 40.192688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.065220, 31.616173, 40.378819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282651, 0.372557, 0.883917,
		-0.845842, -0.531403, -0.046497,
		0.452393, -0.760797, 0.465326,
		46.200939, 31.387934, 40.518417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.333939, 32.525539, 40.358734>,  <45.884262, 31.920492, 40.192688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.333939, 32.525539, 40.358734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.413422, 32.698013, 40.006691>,  <46.461109, 32.801498, 39.795464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.413422, 32.698013, 40.006691>,  <46.333939, 32.525539, 40.358734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.413422, 32.698013, 40.006691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.965300, 0.241367, -0.099687,
		0.169446, 0.869378, 0.464187,
		0.198705, 0.431188, -0.880110,
		46.473034, 32.827370, 39.742657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.923214, 33.107239, 40.240417>,  <46.333939, 32.525539, 40.358734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.923214, 33.107239, 40.240417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.022953, 33.040428, 39.858856>,  <46.082794, 33.000343, 39.629921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.022953, 33.040428, 39.858856>,  <45.923214, 33.107239, 40.240417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.022953, 33.040428, 39.858856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.955364, 0.118740, -0.270518,
		0.158449, 0.978777, -0.129961,
		0.249345, -0.167023, -0.953903,
		46.097755, 32.990322, 39.572685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.656792, 33.657780, 39.882801>,  <45.923214, 33.107239, 40.240417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.656792, 33.657780, 39.882801> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.707981, 33.346794, 39.636494>,  <45.738693, 33.160202, 39.488708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.707981, 33.346794, 39.636494>,  <45.656792, 33.657780, 39.882801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.707981, 33.346794, 39.636494> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.965765, 0.043579, -0.255732,
		0.225658, 0.627411, -0.745274,
		0.127971, -0.777468, -0.615766,
		45.746372, 33.113552, 39.451763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.608917, 33.869095, 39.173935>,  <45.656792, 33.657780, 39.882801>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.608917, 33.869095, 39.173935> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.486588, 33.500313, 39.268982>,  <45.413189, 33.279041, 39.326012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.486588, 33.500313, 39.268982>,  <45.608917, 33.869095, 39.173935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.486588, 33.500313, 39.268982> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.932417, 0.239556, -0.270577,
		0.192536, -0.304313, -0.932911,
		-0.305825, -0.921958, 0.237623,
		45.394840, 33.223724, 39.340267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.165585, 33.672691, 38.672050>,  <45.608917, 33.869095, 39.173935>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.165585, 33.672691, 38.672050> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.070557, 33.459030, 38.996578>,  <45.013538, 33.330833, 39.191296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.070557, 33.459030, 38.996578>,  <45.165585, 33.672691, 38.672050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.070557, 33.459030, 38.996578> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.971130, 0.149163, -0.186162,
		-0.021580, -0.832123, -0.554171,
		-0.237571, -0.534155, 0.811319,
		44.999287, 33.298782, 39.239975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.590206, 33.207500, 38.575981>,  <45.165585, 33.672691, 38.672050>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.590206, 33.207500, 38.575981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.551964, 33.353935, 38.946243>,  <44.529018, 33.441795, 39.168400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.551964, 33.353935, 38.946243>,  <44.590206, 33.207500, 38.575981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.551964, 33.353935, 38.946243> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.939069, 0.275270, -0.205854,
		-0.330166, -0.888934, 0.317469,
		-0.095601, 0.366091, 0.925655,
		44.523285, 33.463764, 39.223942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.463634, 33.908386, 38.229214>,  <44.590206, 33.207500, 38.575981>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.463634, 33.908386, 38.229214> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.454269, 33.554684, 38.042648>,  <44.448650, 33.342461, 37.930710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.454269, 33.554684, 38.042648>,  <44.463634, 33.908386, 38.229214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.454269, 33.554684, 38.042648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070563, 0.463916, -0.883064,
		0.997233, -0.053585, 0.051535,
		-0.023411, -0.884257, -0.466413,
		44.447247, 33.289406, 37.902725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.088390, 33.748814, 37.641430>,  <44.463634, 33.908386, 38.229214>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.088390, 33.748814, 37.641430> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.714333, 33.607349, 37.633129>,  <44.489899, 33.522472, 37.628151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.714333, 33.607349, 37.633129>,  <45.088390, 33.748814, 37.641430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.714333, 33.607349, 37.633129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191158, 0.553030, -0.810935,
		0.298271, -0.754375, -0.584768,
		-0.935143, -0.353661, -0.020748,
		44.433788, 33.501251, 37.626904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.205105, 33.336773, 37.149113>,  <45.088390, 33.748814, 37.641430>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.205105, 33.336773, 37.149113> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.830288, 33.467209, 37.199097>,  <44.605396, 33.545471, 37.229088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.830288, 33.467209, 37.199097>,  <45.205105, 33.336773, 37.149113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.830288, 33.467209, 37.199097> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031832, 0.276576, -0.960465,
		-0.347755, -0.903976, -0.248784,
		-0.937045, 0.326087, 0.124956,
		44.549175, 33.565037, 37.236584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.924053, 32.959820, 36.681778>,  <45.205105, 33.336773, 37.149113>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.924053, 32.959820, 36.681778> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.733334, 33.301136, 36.766205>,  <44.618900, 33.505928, 36.816860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.733334, 33.301136, 36.766205>,  <44.924053, 32.959820, 36.681778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.733334, 33.301136, 36.766205> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079982, 0.281242, -0.956298,
		-0.875364, -0.439083, -0.202345,
		-0.476802, 0.853293, 0.211071,
		44.590294, 33.557125, 36.829525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.134350, 33.680523, 36.418781>,  <44.924053, 32.959820, 36.681778>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.134350, 33.680523, 36.418781> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.116920, 34.058636, 36.548115>,  <45.106461, 34.285503, 36.625717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.116920, 34.058636, 36.548115>,  <45.134350, 33.680523, 36.418781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.116920, 34.058636, 36.548115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354513, 0.317213, -0.879600,
		-0.934035, 0.076298, -0.348936,
		-0.043575, 0.945280, 0.323336,
		45.103848, 34.342220, 36.645115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.129875, 34.123455, 35.861191>,  <45.134350, 33.680523, 36.418781>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.129875, 34.123455, 35.861191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.250618, 34.420830, 36.099918>,  <45.323063, 34.599255, 36.243156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.250618, 34.420830, 36.099918>,  <45.129875, 34.123455, 35.861191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.250618, 34.420830, 36.099918> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406281, 0.466013, -0.785982,
		-0.862449, 0.479729, -0.161374,
		0.301856, 0.743432, 0.596818,
		45.341175, 34.643860, 36.278965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.980480, 34.824455, 35.704113>,  <45.129875, 34.123455, 35.861191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.980480, 34.824455, 35.704113> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.327652, 34.857235, 35.900066>,  <45.535954, 34.876904, 36.017639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.327652, 34.857235, 35.900066>,  <44.980480, 34.824455, 35.704113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.327652, 34.857235, 35.900066> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411746, 0.432901, -0.801912,
		-0.277790, 0.897708, 0.341983,
		0.867928, 0.081953, 0.489883,
		45.588032, 34.881821, 36.047031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.334553, 35.430771, 35.455280>,  <44.980480, 34.824455, 35.704113>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.334553, 35.430771, 35.455280> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.581310, 35.149128, 35.595955>,  <45.729366, 34.980145, 35.680359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.581310, 35.149128, 35.595955>,  <45.334553, 35.430771, 35.455280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.581310, 35.149128, 35.595955> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619235, 0.158413, -0.769060,
		0.485786, 0.692203, 0.533729,
		0.616895, -0.704103, 0.351682,
		45.766380, 34.937897, 35.701458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.069252, 35.669689, 35.550690>,  <45.334553, 35.430771, 35.455280>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.069252, 35.669689, 35.550690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.046379, 35.281219, 35.458134>,  <46.032654, 35.048138, 35.402599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.046379, 35.281219, 35.458134>,  <46.069252, 35.669689, 35.550690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.046379, 35.281219, 35.458134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511905, 0.170465, -0.841959,
		0.857137, -0.166597, 0.487403,
		-0.057183, -0.971178, -0.231393,
		46.029224, 34.989864, 35.388714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.683796, 35.363571, 35.632500>,  <46.069252, 35.669689, 35.550690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.683796, 35.363571, 35.632500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.438999, 35.223148, 35.349030>,  <46.292122, 35.138897, 35.178947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.438999, 35.223148, 35.349030>,  <46.683796, 35.363571, 35.632500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.438999, 35.223148, 35.349030> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597621, 0.381620, -0.705134,
		0.517986, -0.855059, -0.023753,
		-0.611996, -0.351054, -0.708676,
		46.255402, 35.117832, 35.136425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.035606, 34.941879, 35.038002>,  <46.683796, 35.363571, 35.632500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.035606, 34.941879, 35.038002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.695629, 35.106937, 34.906963>,  <46.491642, 35.205975, 34.828342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.695629, 35.106937, 34.906963>,  <47.035606, 34.941879, 35.038002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.695629, 35.106937, 34.906963> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506802, 0.470335, -0.722452,
		-0.144039, -0.780069, -0.608889,
		-0.849944, 0.412648, -0.327594,
		46.440647, 35.230732, 34.808685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.644070, 34.659496, 35.312813>,  <47.035606, 34.941879, 35.038002>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.644070, 34.659496, 35.312813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.797943, 34.956482, 35.093441>,  <47.890266, 35.134674, 34.961819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.797943, 34.956482, 35.093441>,  <47.644070, 34.659496, 35.312813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.797943, 34.956482, 35.093441> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743278, -0.103138, -0.660984,
		-0.547318, 0.661903, 0.512179,
		0.384682, 0.742460, -0.548428,
		47.913349, 35.179218, 34.928913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<30.825420, 34.842476, 55.515205> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.126543, 35.096630, 55.446423>,  <31.307217, 35.249123, 55.405151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.126543, 35.096630, 55.446423>,  <30.825420, 34.842476, 55.515205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.126543, 35.096630, 55.446423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435857, -0.676929, -0.593124,
		-0.493265, 0.371558, -0.786533,
		0.752807, 0.635383, -0.171959,
		31.352385, 35.287247, 55.394836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.046394, 34.836945, 54.806339>,  <30.825420, 34.842476, 55.515205>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.046394, 34.836945, 54.806339> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.363974, 34.953053, 55.020027>,  <31.554522, 35.022717, 55.148239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.363974, 34.953053, 55.020027>,  <31.046394, 34.836945, 54.806339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.363974, 34.953053, 55.020027> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580594, -0.622744, -0.524500,
		0.180434, 0.726590, -0.662956,
		0.793948, 0.290270, 0.534218,
		31.602158, 35.040134, 55.180294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.587915, 34.970650, 54.289272>,  <31.046394, 34.836945, 54.806339>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.587915, 34.970650, 54.289272> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.835676, 34.991524, 54.602608>,  <31.984333, 35.004047, 54.790607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.835676, 34.991524, 54.602608>,  <31.587915, 34.970650, 54.289272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.835676, 34.991524, 54.602608> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677863, -0.538888, -0.500101,
		0.396033, 0.840760, -0.369162,
		0.619402, 0.052185, 0.783338,
		32.021496, 35.007179, 54.837608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.252598, 35.069115, 53.991573>,  <31.587915, 34.970650, 54.289272>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.252598, 35.069115, 53.991573> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.283413, 34.905941, 54.355476>,  <32.301903, 34.808037, 54.573818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.283413, 34.905941, 54.355476>,  <32.252598, 35.069115, 53.991573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.283413, 34.905941, 54.355476> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486701, -0.780975, -0.391409,
		0.870165, 0.472932, 0.138377,
		0.077041, -0.407939, 0.909753,
		32.306526, 34.783558, 54.628403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.901955, 35.199963, 54.155754>,  <32.252598, 35.069115, 53.991573>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.901955, 35.199963, 54.155754> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.772404, 34.884327, 54.364540>,  <32.694675, 34.694946, 54.489811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.772404, 34.884327, 54.364540>,  <32.901955, 35.199963, 54.155754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.772404, 34.884327, 54.364540> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773443, -0.538565, -0.334266,
		0.544877, 0.295450, 0.784741,
		-0.323875, -0.789086, 0.521966,
		32.675240, 34.647602, 54.521130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.444439, 34.928852, 54.347431>,  <32.901955, 35.199963, 54.155754>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.444439, 34.928852, 54.347431> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.222691, 34.602436, 54.412857>,  <33.089642, 34.406586, 54.452114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.222691, 34.602436, 54.412857>,  <33.444439, 34.928852, 54.347431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.222691, 34.602436, 54.412857> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612149, -0.532952, -0.584154,
		0.563864, -0.223713, 0.794991,
		-0.554375, -0.816036, 0.163567,
		33.056377, 34.357624, 54.461926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.920254, 34.432327, 54.463005>,  <33.444439, 34.928852, 54.347431>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.920254, 34.432327, 54.463005> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.577175, 34.246326, 54.375256>,  <33.371326, 34.134727, 54.322605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.577175, 34.246326, 54.375256>,  <33.920254, 34.432327, 54.463005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.577175, 34.246326, 54.375256> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510445, -0.719004, -0.471677,
		0.061603, -0.516533, 0.854048,
		-0.857701, -0.465002, -0.219369,
		33.319866, 34.106827, 54.309444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.087757, 33.804058, 54.322075>,  <33.920254, 34.432327, 54.463005>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.087757, 33.804058, 54.322075> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.718941, 33.801449, 54.167263>,  <33.497650, 33.799885, 54.074375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.718941, 33.801449, 54.167263>,  <34.087757, 33.804058, 54.322075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.718941, 33.801449, 54.167263> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283788, -0.691372, -0.664432,
		-0.263249, -0.722470, 0.639326,
		-0.922043, -0.006522, -0.387032,
		33.442329, 33.799492, 54.051155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.782276, 33.129539, 54.355610>,  <34.087757, 33.804058, 54.322075>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.782276, 33.129539, 54.355610> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.595306, 33.316463, 54.055439>,  <33.483124, 33.428616, 53.875336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.595306, 33.316463, 54.055439>,  <33.782276, 33.129539, 54.355610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.595306, 33.316463, 54.055439> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172999, -0.784102, -0.596033,
		-0.866942, -0.408422, 0.285662,
		-0.467421, 0.467307, -0.750428,
		33.455082, 33.456657, 53.830311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.416435, 32.635342, 53.978928>,  <33.782276, 33.129539, 54.355610>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.416435, 32.635342, 53.978928> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.439686, 32.946239, 53.728325>,  <33.453636, 33.132778, 53.577961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.439686, 32.946239, 53.728325>,  <33.416435, 32.635342, 53.978928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.439686, 32.946239, 53.728325> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014128, -0.628148, -0.777965,
		-0.998209, 0.036367, -0.047491,
		0.058124, 0.777243, -0.626509,
		33.457123, 33.179413, 53.540371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.004200, 32.496479, 53.419521>,  <33.416435, 32.635342, 53.978928>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.004200, 32.496479, 53.419521> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.263664, 32.755840, 53.260113>,  <33.419342, 32.911457, 53.164467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.263664, 32.755840, 53.260113>,  <33.004200, 32.496479, 53.419521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.263664, 32.755840, 53.260113> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156549, -0.626097, -0.763868,
		-0.744805, 0.433103, -0.507630,
		0.648659, 0.648401, -0.398518,
		33.458263, 32.950359, 53.140556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.781773, 32.742973, 52.682091>,  <33.004200, 32.496479, 53.419521>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.781773, 32.742973, 52.682091> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.177223, 32.800934, 52.698208>,  <33.414494, 32.835712, 52.707878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.177223, 32.800934, 52.698208>,  <32.781773, 32.742973, 52.682091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.177223, 32.800934, 52.698208> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127009, -0.660819, -0.739721,
		-0.080562, 0.736425, -0.671706,
		0.988625, 0.144906, 0.040295,
		33.473812, 32.844406, 52.710297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.972195, 32.818962, 52.048218>,  <32.781773, 32.742973, 52.682091>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.972195, 32.818962, 52.048218> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.344662, 32.760651, 52.181892>,  <33.568142, 32.725662, 52.262096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.344662, 32.760651, 52.181892>,  <32.972195, 32.818962, 52.048218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.344662, 32.760651, 52.181892> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170111, -0.637002, -0.751859,
		0.322484, 0.756953, -0.568355,
		0.931164, -0.145779, 0.334189,
		33.624012, 32.716915, 52.282150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.417809, 32.985905, 51.535156>,  <32.972195, 32.818962, 52.048218>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.417809, 32.985905, 51.535156> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.604729, 32.732197, 51.781517>,  <33.716881, 32.579971, 51.929333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.604729, 32.732197, 51.781517>,  <33.417809, 32.985905, 51.535156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.604729, 32.732197, 51.781517> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354442, -0.503802, -0.787753,
		0.809940, 0.586417, -0.010614,
		0.467299, -0.634270, 0.615900,
		33.744919, 32.541916, 51.966286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.957230, 32.819080, 51.149620>,  <33.417809, 32.985905, 51.535156>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.957230, 32.819080, 51.149620> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.989819, 32.541634, 51.435909>,  <34.009373, 32.375164, 51.607681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.989819, 32.541634, 51.435909>,  <33.957230, 32.819080, 51.149620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.989819, 32.541634, 51.435909> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458793, -0.611403, -0.644744,
		0.884800, 0.380896, 0.268415,
		0.081470, -0.693617, 0.715722,
		34.014259, 32.333549, 51.650627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.625389, 32.608242, 51.303593>,  <33.957230, 32.819080, 51.149620>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.625389, 32.608242, 51.303593> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.405903, 32.288380, 51.401123>,  <34.274212, 32.096462, 51.459641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.405903, 32.288380, 51.401123>,  <34.625389, 32.608242, 51.303593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.405903, 32.288380, 51.401123> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340637, -0.480207, -0.808312,
		0.763463, -0.360478, 0.535892,
		-0.548717, -0.799661, 0.243828,
		34.241287, 32.048481, 51.474270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.175110, 32.073200, 51.308167>,  <34.625389, 32.608242, 51.303593>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.175110, 32.073200, 51.308167> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.817593, 31.897354, 51.272671>,  <34.603085, 31.791845, 51.251373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.817593, 31.897354, 51.272671>,  <35.175110, 32.073200, 51.308167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.817593, 31.897354, 51.272671> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354461, -0.571218, -0.740316,
		0.274764, -0.693143, 0.666376,
		-0.893791, -0.439617, -0.088742,
		34.549454, 31.765469, 51.246048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.312408, 31.428379, 51.189838>,  <35.175110, 32.073200, 51.308167>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.312408, 31.428379, 51.189838> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.928814, 31.428883, 51.076462>,  <34.698658, 31.429184, 51.008434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.928814, 31.428883, 51.076462>,  <35.312408, 31.428379, 51.189838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.928814, 31.428883, 51.076462> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231794, -0.572053, -0.786783,
		-0.163135, -0.820216, 0.548300,
		-0.958988, 0.001259, -0.283443,
		34.641117, 31.429260, 50.991428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.299366, 30.809006, 50.801094>,  <35.312408, 31.428379, 51.189838>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.299366, 30.809006, 50.801094> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.955772, 30.987345, 50.700405>,  <34.749615, 31.094349, 50.639992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.955772, 30.987345, 50.700405>,  <35.299366, 30.809006, 50.801094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.955772, 30.987345, 50.700405> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064639, -0.393281, -0.917144,
		-0.507905, -0.804084, 0.309003,
		-0.858985, 0.445848, -0.251724,
		34.698078, 31.121099, 50.624889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.750515, 30.368052, 50.744781>,  <35.299366, 30.809006, 50.801094>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.750515, 30.368052, 50.744781> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.650166, 30.660254, 50.490719>,  <34.589958, 30.835575, 50.338280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.650166, 30.660254, 50.490719>,  <34.750515, 30.368052, 50.744781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.650166, 30.660254, 50.490719> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062645, -0.667019, -0.742403,
		-0.965992, -0.146456, 0.213097,
		-0.250869, 0.730505, -0.635160,
		34.574905, 30.879404, 50.300171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.360134, 30.049091, 50.192787>,  <34.750515, 30.368052, 50.744781>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.360134, 30.049091, 50.192787> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.473415, 30.391672, 50.020145>,  <34.541386, 30.597221, 49.916561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.473415, 30.391672, 50.020145>,  <34.360134, 30.049091, 50.192787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.473415, 30.391672, 50.020145> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201443, -0.493111, -0.846323,
		-0.937665, 0.152739, -0.312178,
		0.283205, 0.856454, -0.431604,
		34.558376, 30.648609, 49.890663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.006344, 30.049873, 49.607731>,  <34.360134, 30.049091, 50.192787>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.006344, 30.049873, 49.607731> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.320995, 30.288036, 49.542358>,  <34.509785, 30.430935, 49.503136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.320995, 30.288036, 49.542358>,  <34.006344, 30.049873, 49.607731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.320995, 30.288036, 49.542358> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144845, -0.435259, -0.888577,
		-0.600201, 0.675305, -0.428628,
		0.786625, 0.595409, -0.163428,
		34.556984, 30.466660, 49.493328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.919918, 30.529453, 48.975452>,  <34.006344, 30.049873, 49.607731>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.919918, 30.529453, 48.975452> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.290359, 30.415676, 49.074585>,  <34.512627, 30.347410, 49.134064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.290359, 30.415676, 49.074585>,  <33.919918, 30.529453, 48.975452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.290359, 30.415676, 49.074585> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115185, -0.412368, -0.903706,
		0.359249, 0.865475, -0.349133,
		0.926106, -0.284441, 0.247833,
		34.568192, 30.330343, 49.148933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.263119, 30.595173, 48.547176>,  <33.919918, 30.529453, 48.975452>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.263119, 30.595173, 48.547176> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.885986, 30.529346, 48.431248>,  <32.659706, 30.489851, 48.361691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.885986, 30.529346, 48.431248>,  <33.263119, 30.595173, 48.547176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.885986, 30.529346, 48.431248> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332893, 0.422860, 0.842835,
		-0.016150, 0.891126, -0.453467,
		-0.942826, -0.164568, -0.289820,
		32.603138, 30.479977, 48.344303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.925743, 31.189602, 48.604565>,  <33.263119, 30.595173, 48.547176>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.925743, 31.189602, 48.604565> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.620373, 30.931341, 48.597454>,  <32.437149, 30.776384, 48.593189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.620373, 30.931341, 48.597454>,  <32.925743, 31.189602, 48.604565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.620373, 30.931341, 48.597454> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406578, 0.458993, 0.789949,
		-0.501873, 0.610294, -0.612915,
		-0.763425, -0.645652, -0.017776,
		32.391346, 30.737646, 48.592121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.382515, 31.545700, 48.664326>,  <32.925743, 31.189602, 48.604565>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.382515, 31.545700, 48.664326> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.249950, 31.190180, 48.790943>,  <32.170410, 30.976868, 48.866913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.249950, 31.190180, 48.790943>,  <32.382515, 31.545700, 48.664326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.249950, 31.190180, 48.790943> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464316, 0.445711, 0.765344,
		-0.821326, 0.106667, -0.560398,
		-0.331413, -0.888799, 0.316547,
		32.150528, 30.923540, 48.885906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.677820, 31.667152, 48.657757>,  <32.382515, 31.545700, 48.664326>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.677820, 31.667152, 48.657757> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.737875, 31.356577, 48.902576>,  <31.773909, 31.170233, 49.049469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.737875, 31.356577, 48.902576>,  <31.677820, 31.667152, 48.657757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.737875, 31.356577, 48.902576> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567663, 0.439152, 0.696351,
		-0.809456, -0.451985, -0.374822,
		0.150136, -0.776437, 0.612049,
		31.782915, 31.123646, 49.086193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.078291, 31.659168, 49.232327>,  <31.677820, 31.667152, 48.657757>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.078291, 31.659168, 49.232327> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.352043, 31.427027, 49.408875>,  <31.516294, 31.287741, 49.514805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.352043, 31.427027, 49.408875>,  <31.078291, 31.659168, 49.232327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.352043, 31.427027, 49.408875> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303927, 0.323178, 0.896206,
		-0.662760, -0.747491, 0.044791,
		0.684381, -0.580356, 0.441372,
		31.557358, 31.252920, 49.541286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.725462, 31.358227, 49.798882>,  <31.078291, 31.659168, 49.232327>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.725462, 31.358227, 49.798882> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.115181, 31.344109, 49.887875>,  <31.349012, 31.335638, 49.941269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.115181, 31.344109, 49.887875>,  <30.725462, 31.358227, 49.798882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.115181, 31.344109, 49.887875> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192268, 0.384343, 0.902947,
		-0.117380, -0.922516, 0.367678,
		0.974298, -0.035296, 0.222484,
		31.407471, 31.333521, 49.954620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.712227, 31.234734, 50.551270>,  <30.725462, 31.358227, 49.798882>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.712227, 31.234734, 50.551270> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.092508, 31.327862, 50.469334>,  <31.320677, 31.383738, 50.420174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.092508, 31.327862, 50.469334>,  <30.712227, 31.234734, 50.551270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.092508, 31.327862, 50.469334> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121145, 0.329215, 0.936451,
		0.285455, -0.915103, 0.284782,
		0.950704, 0.232815, -0.204837,
		31.377720, 31.397707, 50.407883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.298206, 30.899694, 51.048267>,  <30.712227, 31.234734, 50.551270>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.298206, 30.899694, 51.048267> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.388832, 31.252197, 50.882351>,  <31.443207, 31.463699, 50.782799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.388832, 31.252197, 50.882351>,  <31.298206, 30.899694, 51.048267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.388832, 31.252197, 50.882351> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298214, 0.468179, 0.831792,
		0.927220, -0.064756, 0.368875,
		0.226563, 0.881258, -0.414793,
		31.456800, 31.516575, 50.757912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.665102, 31.208944, 51.607681>,  <31.298206, 30.899694, 51.048267>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.665102, 31.208944, 51.607681> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.537369, 31.499453, 51.364185>,  <31.460728, 31.673758, 51.218090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.537369, 31.499453, 51.364185>,  <31.665102, 31.208944, 51.607681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.537369, 31.499453, 51.364185> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275951, 0.543264, 0.792916,
		0.906574, 0.421187, 0.026931,
		-0.319335, 0.726268, -0.608736,
		31.441568, 31.717333, 51.181564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.883003, 31.840172, 51.902508>,  <31.665102, 31.208944, 51.607681>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.883003, 31.840172, 51.902508> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.616137, 31.963194, 51.631126>,  <31.456017, 32.037006, 51.468296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.616137, 31.963194, 51.631126>,  <31.883003, 31.840172, 51.902508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.616137, 31.963194, 51.631126> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556688, 0.399327, 0.728448,
		0.494962, 0.863683, -0.095205,
		-0.667166, 0.307554, -0.678454,
		31.415987, 32.055462, 51.427589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.674335, 32.513988, 52.212433>,  <31.883003, 31.840172, 51.902508>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.674335, 32.513988, 52.212433> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.416273, 32.459061, 51.911789>,  <31.261436, 32.426105, 51.731403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.416273, 32.459061, 51.911789>,  <31.674335, 32.513988, 52.212433>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.416273, 32.459061, 51.911789> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698794, 0.503844, 0.507768,
		0.308969, 0.852810, -0.421015,
		-0.645155, -0.137318, -0.751611,
		31.222727, 32.417866, 51.686306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.436031, 33.203388, 51.881111>,  <31.674335, 32.513988, 52.212433>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.436031, 33.203388, 51.881111> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.173023, 32.902557, 51.899231>,  <31.015219, 32.722061, 51.910103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.173023, 32.902557, 51.899231>,  <31.436031, 33.203388, 51.881111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.173023, 32.902557, 51.899231> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647635, 0.594886, 0.476109,
		-0.385017, 0.283714, -0.878219,
		-0.657519, -0.752075, 0.045298,
		30.975767, 32.676933, 51.912819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.800066, 33.456772, 51.604935>,  <31.436031, 33.203388, 51.881111>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.800066, 33.456772, 51.604935> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.736609, 33.175308, 51.881973>,  <30.698534, 33.006428, 52.048195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.736609, 33.175308, 51.881973>,  <30.800066, 33.456772, 51.604935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.736609, 33.175308, 51.881973> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616281, 0.618624, 0.487342,
		-0.771381, -0.349520, -0.531795,
		-0.158646, -0.703662, 0.692598,
		30.689014, 32.964211, 52.089752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.204412, 33.314449, 51.546638>,  <30.800066, 33.456772, 51.604935>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.204412, 33.314449, 51.546638> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.280285, 33.222755, 51.928524>,  <30.325809, 33.167740, 52.157654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.280285, 33.222755, 51.928524>,  <30.204412, 33.314449, 51.546638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.280285, 33.222755, 51.928524> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694595, 0.655915, 0.295490,
		-0.693945, -0.719187, -0.034806,
		0.189683, -0.229230, 0.954712,
		30.337191, 33.153988, 52.214939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.516201, 33.192093, 51.844795>,  <30.204412, 33.314449, 51.546638>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.516201, 33.192093, 51.844795> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.775335, 33.249802, 52.143993>,  <29.930817, 33.284428, 52.323513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.775335, 33.249802, 52.143993>,  <29.516201, 33.192093, 51.844795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.775335, 33.249802, 52.143993> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666815, 0.582158, 0.465243,
		-0.368330, -0.800174, 0.473344,
		0.647836, 0.144270, 0.747994,
		29.969687, 33.293083, 52.368393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.115356, 33.264050, 52.448250>,  <29.516201, 33.192093, 51.844795>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.115356, 33.264050, 52.448250> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.446144, 33.390167, 52.634457>,  <29.644617, 33.465839, 52.746181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.446144, 33.390167, 52.634457>,  <29.115356, 33.264050, 52.448250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.446144, 33.390167, 52.634457> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558866, 0.551588, 0.619208,
		-0.061542, -0.772230, 0.632355,
		0.826971, 0.315295, 0.465519,
		29.694235, 33.484756, 52.774113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.997171, 33.201355, 53.098602>,  <29.115356, 33.264050, 52.448250>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.997171, 33.201355, 53.098602> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.301832, 33.454887, 53.152473>,  <29.484629, 33.607006, 53.184795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.301832, 33.454887, 53.152473>,  <28.997171, 33.201355, 53.098602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.301832, 33.454887, 53.152473> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521541, 0.476292, 0.707913,
		0.384552, -0.609426, 0.693339,
		0.761653, 0.633834, 0.134682,
		29.530329, 33.645039, 53.192879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<29.503466, 33.395641, 54.435410> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.580748, 33.659325, 54.144722>,  <29.627117, 33.817535, 53.970310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.580748, 33.659325, 54.144722>,  <29.503466, 33.395641, 54.435410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.580748, 33.659325, 54.144722> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302944, 0.744565, 0.594852,
		0.933219, 0.105229, 0.343554,
		0.193203, 0.659204, -0.726720,
		29.638708, 33.857086, 53.926704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.896717, 33.894482, 54.753593>,  <29.503466, 33.395641, 54.435410>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.896717, 33.894482, 54.753593> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.769869, 34.058998, 54.411770>,  <29.693760, 34.157707, 54.206676>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.769869, 34.058998, 54.411770>,  <29.896717, 33.894482, 54.753593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.769869, 34.058998, 54.411770> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279673, 0.820443, 0.498654,
		0.906211, 0.397131, -0.145151,
		-0.317119, 0.411291, -0.854561,
		29.674732, 34.182384, 54.155403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.136574, 34.650677, 54.700180>,  <29.896717, 33.894482, 54.753593>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.136574, 34.650677, 54.700180> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.814997, 34.625038, 54.463684>,  <29.622051, 34.609653, 54.321785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.814997, 34.625038, 54.463684>,  <30.136574, 34.650677, 54.700180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.814997, 34.625038, 54.463684> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226159, 0.952433, 0.204265,
		0.550026, 0.297932, -0.780197,
		-0.803943, -0.064098, -0.591243,
		29.573814, 34.605808, 54.286312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.175783, 35.288589, 54.291782>,  <30.136574, 34.650677, 54.700180>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.175783, 35.288589, 54.291782> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.812216, 35.124470, 54.321518>,  <29.594076, 35.025997, 54.339359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.812216, 35.124470, 54.321518>,  <30.175783, 35.288589, 54.291782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.812216, 35.124470, 54.321518> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372706, 0.879348, 0.296376,
		-0.186972, 0.241674, -0.952174,
		-0.908918, -0.410295, 0.074340,
		29.539541, 35.001381, 54.343819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.800047, 35.886280, 54.187706>,  <30.175783, 35.288589, 54.291782>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.800047, 35.886280, 54.187706> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.557484, 35.595928, 54.317547>,  <29.411945, 35.421719, 54.395451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.557484, 35.595928, 54.317547>,  <29.800047, 35.886280, 54.187706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.557484, 35.595928, 54.317547> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588111, 0.684186, 0.431295,
		-0.535158, 0.070636, -0.841793,
		-0.606408, -0.725879, 0.324606,
		29.375561, 35.378166, 54.414928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.157711, 36.138241, 54.003899>,  <29.800047, 35.886280, 54.187706>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.157711, 36.138241, 54.003899> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.084457, 35.845997, 54.267010>,  <29.040504, 35.670650, 54.424877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.084457, 35.845997, 54.267010>,  <29.157711, 36.138241, 54.003899>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.084457, 35.845997, 54.267010> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691248, 0.571460, 0.442278,
		-0.699027, -0.373691, -0.609686,
		-0.183136, -0.730608, 0.657779,
		29.029516, 35.626816, 54.464344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.365643, 36.021572, 53.957493>,  <29.157711, 36.138241, 54.003899>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.365643, 36.021572, 53.957493> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.527439, 35.902702, 54.303459>,  <28.624517, 35.831383, 54.511040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.527439, 35.902702, 54.303459>,  <28.365643, 36.021572, 53.957493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.527439, 35.902702, 54.303459> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649517, 0.572438, 0.500441,
		-0.643826, -0.764201, 0.038529,
		0.404493, -0.297172, 0.864913,
		28.648787, 35.813549, 54.562935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.826982, 35.974342, 54.385334>,  <28.365643, 36.021572, 53.957493>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.826982, 35.974342, 54.385334> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.107218, 35.992683, 54.670170>,  <28.275360, 36.003689, 54.841072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.107218, 35.992683, 54.670170>,  <27.826982, 35.974342, 54.385334>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.107218, 35.992683, 54.670170> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590772, 0.596966, 0.542790,
		-0.400204, -0.800955, 0.445318,
		0.700590, 0.045855, 0.712090,
		28.317394, 36.006439, 54.883797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.458797, 35.934658, 54.985378>,  <27.826982, 35.974342, 54.385334>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.458797, 35.934658, 54.985378> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.801222, 36.125801, 55.064186>,  <28.006676, 36.240486, 55.111473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.801222, 36.125801, 55.064186>,  <27.458797, 35.934658, 54.985378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.801222, 36.125801, 55.064186> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450194, 0.502047, 0.738427,
		0.253944, -0.720836, 0.644909,
		0.856059, 0.477853, 0.197024,
		28.058039, 36.269157, 55.123295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.563072, 35.913197, 55.746796>,  <27.458797, 35.934658, 54.985378>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.563072, 35.913197, 55.746796> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.786455, 36.224018, 55.630646>,  <27.920485, 36.410511, 55.560955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.786455, 36.224018, 55.630646>,  <27.563072, 35.913197, 55.746796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.786455, 36.224018, 55.630646> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531479, 0.603927, 0.593972,
		0.636913, -0.177378, 0.750253,
		0.558455, 0.777052, -0.290376,
		27.953993, 36.457134, 55.543533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.746958, 36.196609, 56.390450>,  <27.563072, 35.913197, 55.746796>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.746958, 36.196609, 56.390450> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.810160, 36.505016, 56.143688>,  <27.848080, 36.690060, 55.995632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.810160, 36.505016, 56.143688>,  <27.746958, 36.196609, 56.390450>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.810160, 36.505016, 56.143688> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440365, 0.614207, 0.654850,
		0.883806, 0.168196, 0.436574,
		0.158004, 0.771012, -0.616907,
		27.857561, 36.736320, 55.958614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.841873, 36.772022, 56.830212>,  <27.746958, 36.196609, 56.390450>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.841873, 36.772022, 56.830212> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.783188, 36.931187, 56.467964>,  <27.747976, 37.026688, 56.250618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.783188, 36.931187, 56.467964>,  <27.841873, 36.772022, 56.830212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.783188, 36.931187, 56.467964> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640193, 0.659729, 0.393587,
		0.754075, 0.637513, 0.157951,
		-0.146712, 0.397913, -0.905616,
		27.739174, 37.050560, 56.196278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.996653, 37.428005, 56.866367>,  <27.841873, 36.772022, 56.830212>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.996653, 37.428005, 56.866367> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.769758, 37.411251, 56.537373>,  <27.633621, 37.401199, 56.339977>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.769758, 37.411251, 56.537373>,  <27.996653, 37.428005, 56.866367>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.769758, 37.411251, 56.537373> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504890, 0.806698, 0.307123,
		0.650636, 0.589478, -0.478736,
		-0.567238, -0.041884, -0.822488,
		27.599586, 37.398685, 56.290627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.927046, 38.064240, 56.619774>,  <27.996653, 37.428005, 56.866367>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.927046, 38.064240, 56.619774> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.606476, 37.863537, 56.489567>,  <27.414135, 37.743114, 56.411442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.606476, 37.863537, 56.489567>,  <27.927046, 38.064240, 56.619774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.606476, 37.863537, 56.489567> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593101, 0.736915, 0.324327,
		0.077150, 0.452990, -0.888171,
		-0.801424, -0.501753, -0.325521,
		27.366049, 37.713013, 56.391911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.425987, 38.664642, 56.500832>,  <27.927046, 38.064240, 56.619774>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.425987, 38.664642, 56.500832> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.196856, 38.337078, 56.486637>,  <27.059378, 38.140541, 56.478119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.196856, 38.337078, 56.486637>,  <27.425987, 38.664642, 56.500832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.196856, 38.337078, 56.486637> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780394, 0.531620, 0.329190,
		-0.250709, 0.216265, -0.943596,
		-0.572827, -0.818908, -0.035490,
		27.025007, 38.091404, 56.475990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.916590, 38.809238, 56.028877>,  <27.425987, 38.664642, 56.500832>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.916590, 38.809238, 56.028877> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.790741, 38.527393, 56.283287>,  <26.715231, 38.358288, 56.435932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.790741, 38.527393, 56.283287>,  <26.916590, 38.809238, 56.028877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.790741, 38.527393, 56.283287> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796354, 0.560579, 0.227094,
		-0.516558, -0.435055, -0.737493,
		-0.314624, -0.704613, 0.636029,
		26.696354, 38.316010, 56.474094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.191444, 38.622559, 55.811668>,  <26.916590, 38.809238, 56.028877>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.191444, 38.622559, 55.811668> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.236008, 38.510746, 56.193130>,  <26.262745, 38.443657, 56.422009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.236008, 38.510746, 56.193130>,  <26.191444, 38.622559, 55.811668>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.236008, 38.510746, 56.193130> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806869, 0.534751, 0.251005,
		-0.580130, -0.797435, -0.165972,
		0.111407, -0.279533, 0.953651,
		26.269430, 38.426888, 56.479225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.543621, 38.464371, 56.161221>,  <26.191444, 38.622559, 55.811668>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.543621, 38.464371, 56.161221> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.752808, 38.504486, 56.499794>,  <25.878319, 38.528557, 56.702938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.752808, 38.504486, 56.499794>,  <25.543621, 38.464371, 56.161221>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.752808, 38.504486, 56.499794> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745248, 0.535744, 0.396968,
		-0.413659, -0.838403, 0.354918,
		0.522965, 0.100293, 0.846433,
		25.909697, 38.534573, 56.753723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.080626, 38.382103, 56.752468>,  <25.543621, 38.464371, 56.161221>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.080626, 38.382103, 56.752468> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.383291, 38.566166, 56.938248>,  <25.564890, 38.676605, 57.049717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.383291, 38.566166, 56.938248>,  <25.080626, 38.382103, 56.752468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.383291, 38.566166, 56.938248> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638266, 0.673856, 0.372201,
		-0.141700, -0.578073, 0.803587,
		0.756662, 0.460162, 0.464450,
		25.610291, 38.704216, 57.077583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.862692, 38.558247, 57.414249>,  <25.080626, 38.382103, 56.752468>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.862692, 38.558247, 57.414249> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.162777, 38.816132, 57.355572>,  <25.342829, 38.970863, 57.320366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.162777, 38.816132, 57.355572>,  <24.862692, 38.558247, 57.414249>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.162777, 38.816132, 57.355572> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518180, 0.711097, 0.475217,
		0.410691, -0.280503, 0.867555,
		0.750215, 0.644717, -0.146691,
		25.387842, 39.009548, 57.311565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.923298, 38.977821, 58.014114>,  <24.862692, 38.558247, 57.414249>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.923298, 38.977821, 58.014114> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.126837, 39.205856, 57.756100>,  <25.248960, 39.342678, 57.601292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.126837, 39.205856, 57.756100>,  <24.923298, 38.977821, 58.014114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.126837, 39.205856, 57.756100> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311326, 0.820446, 0.479526,
		0.802588, -0.043191, 0.594968,
		0.508850, 0.570091, -0.645033,
		25.279490, 39.376884, 57.562588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.120947, 39.434624, 58.507504>,  <24.923298, 38.977821, 58.014114>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.120947, 39.434624, 58.507504> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.176468, 39.593891, 58.144802>,  <25.209780, 39.689449, 57.927181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.176468, 39.593891, 58.144802>,  <25.120947, 39.434624, 58.507504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.176468, 39.593891, 58.144802> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189668, 0.909353, 0.370273,
		0.971988, 0.120587, 0.201739,
		0.138802, 0.398165, -0.906752,
		25.218109, 39.713341, 57.872776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.601749, 39.930069, 58.687588>,  <25.120947, 39.434624, 58.507504>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.601749, 39.930069, 58.687588> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.443197, 39.995464, 58.326221>,  <25.348066, 40.034702, 58.109402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.443197, 39.995464, 58.326221>,  <25.601749, 39.930069, 58.687588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.443197, 39.995464, 58.326221> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203945, 0.943752, 0.260266,
		0.895148, 0.287411, -0.340742,
		-0.396380, 0.163484, -0.903414,
		25.324284, 40.044510, 58.055199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.905102, 40.545509, 58.398838>,  <25.601749, 39.930069, 58.687588>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.905102, 40.545509, 58.398838> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.526020, 40.437153, 58.331345>,  <25.298571, 40.372139, 58.290848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.526020, 40.437153, 58.331345>,  <25.905102, 40.545509, 58.398838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.526020, 40.437153, 58.331345> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317639, 0.851907, 0.416365,
		0.030955, 0.448188, -0.893403,
		-0.947706, -0.270891, -0.168733,
		25.241709, 40.355885, 58.280724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.495266, 40.771160, 57.932968>,  <25.905102, 40.545509, 58.398838>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.495266, 40.771160, 57.932968> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.776842, 40.967533, 58.138279>,  <26.945787, 41.085358, 58.261463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.776842, 40.967533, 58.138279>,  <26.495266, 40.771160, 57.932968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.776842, 40.967533, 58.138279> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633207, -0.761140, -0.140410,
		0.321741, 0.423849, -0.846661,
		0.703940, 0.490936, 0.513274,
		26.988024, 41.114815, 58.292263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.071461, 40.679707, 57.635227>,  <26.495266, 40.771160, 57.932968>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.071461, 40.679707, 57.635227> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.223080, 40.794033, 57.987282>,  <27.314051, 40.862629, 58.198513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.223080, 40.794033, 57.987282>,  <27.071461, 40.679707, 57.635227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.223080, 40.794033, 57.987282> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787659, -0.598866, -0.144748,
		0.485712, 0.748112, -0.452121,
		0.379047, 0.285811, 0.880134,
		27.336794, 40.879776, 58.251324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.697269, 41.014519, 57.512852>,  <27.071461, 40.679707, 57.635227>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.697269, 41.014519, 57.512852> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.690689, 40.831841, 57.868641>,  <27.686741, 40.722233, 58.082115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.690689, 40.831841, 57.868641>,  <27.697269, 41.014519, 57.512852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.690689, 40.831841, 57.868641> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780441, -0.561946, -0.274094,
		0.625012, 0.689671, 0.365668,
		-0.016451, -0.456695, 0.889471,
		27.685753, 40.694832, 58.135483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.353260, 41.055710, 57.671501>,  <27.697269, 41.014519, 57.512852>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.353260, 41.055710, 57.671501> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.234415, 40.774155, 57.929573>,  <28.163109, 40.605221, 58.084415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.234415, 40.774155, 57.929573>,  <28.353260, 41.055710, 57.671501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.234415, 40.774155, 57.929573> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846318, -0.506998, -0.163397,
		0.442120, 0.497483, 0.746352,
		-0.297111, -0.703892, 0.645183,
		28.145281, 40.562988, 58.123127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.904470, 40.912460, 58.069347>,  <28.353260, 41.055710, 57.671501>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.904470, 40.912460, 58.069347> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.673656, 40.585949, 58.058563>,  <28.535168, 40.390041, 58.052094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.673656, 40.585949, 58.058563>,  <28.904470, 40.912460, 58.069347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.673656, 40.585949, 58.058563> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805704, -0.563539, -0.182386,
		0.133685, -0.126963, 0.982858,
		-0.577034, -0.816275, -0.026958,
		28.500546, 40.341068, 58.050476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.370010, 40.481560, 58.349686>,  <28.904470, 40.912460, 58.069347>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.370010, 40.481560, 58.349686> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.076216, 40.249424, 58.208984>,  <28.899939, 40.110142, 58.124565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.076216, 40.249424, 58.208984>,  <29.370010, 40.481560, 58.349686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.076216, 40.249424, 58.208984> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677596, -0.598690, -0.427122,
		0.037285, -0.552063, 0.832969,
		-0.734488, -0.580342, -0.351753,
		28.855869, 40.075321, 58.103458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.444798, 39.890022, 58.631611>,  <29.370010, 40.481560, 58.349686>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.444798, 39.890022, 58.631611> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.258818, 39.825321, 58.283436>,  <29.147230, 39.786499, 58.074532>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.258818, 39.825321, 58.283436>,  <29.444798, 39.890022, 58.631611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.258818, 39.825321, 58.283436> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763037, -0.571821, -0.301322,
		-0.448993, -0.804274, 0.389293,
		-0.464951, -0.161753, -0.870435,
		29.119333, 39.776794, 58.022305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.676950, 39.190285, 58.613735>,  <29.444798, 39.890022, 58.631611>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.676950, 39.190285, 58.613735> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.529722, 39.300434, 58.258503>,  <29.441385, 39.366524, 58.045364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.529722, 39.300434, 58.258503>,  <29.676950, 39.190285, 58.613735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.529722, 39.300434, 58.258503> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610692, -0.648636, -0.454232,
		-0.701128, -0.709534, 0.070572,
		-0.368069, 0.275377, -0.888084,
		29.419302, 39.383049, 57.992077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.706345, 38.588890, 58.260944>,  <29.676950, 39.190285, 58.613735>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.706345, 38.588890, 58.260944> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.668825, 38.870872, 57.979733>,  <29.646313, 39.040062, 57.811005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.668825, 38.870872, 57.979733>,  <29.706345, 38.588890, 58.260944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.668825, 38.870872, 57.979733> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520295, -0.567329, -0.638303,
		-0.848820, -0.425653, -0.313567,
		-0.093800, 0.704952, -0.703026,
		29.640686, 39.082359, 57.768826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.428642, 38.233994, 57.664890>,  <29.706345, 38.588890, 58.260944>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.428642, 38.233994, 57.664890> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.591505, 38.563183, 57.506428>,  <29.689222, 38.760696, 57.411350>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.591505, 38.563183, 57.506428>,  <29.428642, 38.233994, 57.664890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.591505, 38.563183, 57.506428> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319862, -0.534743, -0.782137,
		-0.855518, 0.191738, -0.480963,
		0.407157, 0.822974, -0.396153,
		29.713652, 38.810074, 57.387581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.130621, 38.279484, 57.025074>,  <29.428642, 38.233994, 57.664890>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.130621, 38.279484, 57.025074> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.476475, 38.480438, 57.023308>,  <29.683987, 38.601009, 57.022247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.476475, 38.480438, 57.023308>,  <29.130621, 38.279484, 57.025074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.476475, 38.480438, 57.023308> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297184, -0.518514, -0.801764,
		-0.405079, 0.691922, -0.597625,
		0.864635, 0.502382, -0.004411,
		29.735865, 38.631153, 57.021984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.274029, 38.306164, 56.316704>,  <29.130621, 38.279484, 57.025074>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.274029, 38.306164, 56.316704> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.620672, 38.393066, 56.496387>,  <29.828657, 38.445210, 56.604198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.620672, 38.393066, 56.496387>,  <29.274029, 38.306164, 56.316704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.620672, 38.393066, 56.496387> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498037, -0.432279, -0.751728,
		0.030866, 0.875176, -0.482818,
		0.866606, 0.217259, 0.449213,
		29.880653, 38.458244, 56.631153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.741850, 38.566639, 55.780945>,  <29.274029, 38.306164, 56.316704>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.741850, 38.566639, 55.780945> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.954037, 38.402523, 56.077667>,  <30.081348, 38.304054, 56.255699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.954037, 38.402523, 56.077667>,  <29.741850, 38.566639, 55.780945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.954037, 38.402523, 56.077667> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472755, -0.583171, -0.660617,
		0.703639, 0.701126, -0.115389,
		0.530467, -0.410285, 0.741802,
		30.113176, 38.279438, 56.300209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.308151, 38.244564, 55.406979>,  <29.741850, 38.566639, 55.780945>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.308151, 38.244564, 55.406979> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.370539, 38.082581, 55.767353>,  <30.407970, 37.985390, 55.983578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.370539, 38.082581, 55.767353>,  <30.308151, 38.244564, 55.406979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.370539, 38.082581, 55.767353> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415475, -0.800591, -0.431781,
		0.896133, 0.441660, 0.043383,
		0.155968, -0.404958, 0.900934,
		30.417330, 37.961094, 56.037632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.972242, 38.018185, 55.410156>,  <30.308151, 38.244564, 55.406979>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.972242, 38.018185, 55.410156> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.767611, 37.811737, 55.684937>,  <30.644831, 37.687870, 55.849804>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.767611, 37.811737, 55.684937>,  <30.972242, 38.018185, 55.410156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.767611, 37.811737, 55.684937> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427908, -0.846334, -0.317196,
		0.745104, 0.131682, 0.653820,
		-0.511581, -0.516118, 0.686954,
		30.614136, 37.656902, 55.891022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.443438, 37.556629, 55.715263>,  <30.972242, 38.018185, 55.410156>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.443438, 37.556629, 55.715263> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.087898, 37.393845, 55.799477>,  <30.874575, 37.296173, 55.850006>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.087898, 37.393845, 55.799477>,  <31.443438, 37.556629, 55.715263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.087898, 37.393845, 55.799477> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360483, -0.904737, -0.226942,
		0.282838, -0.125822, 0.950879,
		-0.888850, -0.406964, 0.210537,
		30.821243, 37.271755, 55.862637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.461420, 37.043293, 56.350742>,  <31.443438, 37.556629, 55.715263>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.461420, 37.043293, 56.350742> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.163086, 36.931549, 56.108852>,  <30.984085, 36.864502, 55.963718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.163086, 36.931549, 56.108852>,  <31.461420, 37.043293, 56.350742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.163086, 36.931549, 56.108852> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517864, -0.814162, -0.262596,
		-0.418986, -0.509018, 0.751898,
		-0.745833, -0.279357, -0.604725,
		30.939337, 36.847740, 55.927433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.409431, 36.499447, 56.580555>,  <31.461420, 37.043293, 56.350742>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.409431, 36.499447, 56.580555> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.200739, 36.447479, 56.243290>,  <31.075523, 36.416298, 56.040932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.200739, 36.447479, 56.243290>,  <31.409431, 36.499447, 56.580555>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.200739, 36.447479, 56.243290> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423575, -0.897358, -0.123829,
		-0.740528, -0.421746, 0.523210,
		-0.521731, -0.129920, -0.843159,
		31.044220, 36.408504, 55.990341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.017284, 35.869793, 56.642735>,  <31.409431, 36.499447, 56.580555>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.017284, 35.869793, 56.642735> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.039412, 35.941895, 56.249908>,  <31.052689, 35.985157, 56.014214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.039412, 35.941895, 56.249908>,  <31.017284, 35.869793, 56.642735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.039412, 35.941895, 56.249908> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481514, -0.866455, -0.131910,
		-0.874691, -0.465580, -0.134726,
		0.055319, 0.180253, -0.982063,
		31.056007, 35.995972, 55.955288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.911146, 35.237415, 56.286964>,  <31.017284, 35.869793, 56.642735>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.911146, 35.237415, 56.286964> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.128420, 35.439507, 56.018726>,  <31.258783, 35.560760, 55.857784>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.128420, 35.439507, 56.018726>,  <30.911146, 35.237415, 56.286964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.128420, 35.439507, 56.018726> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623533, -0.777611, -0.080793,
		-0.562279, -0.374250, -0.737414,
		0.543184, 0.505230, -0.670592,
		31.291374, 35.591076, 55.817547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<48.131569, 33.639015, 52.370663> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<48.031322, 33.977150, 52.181938>,  <47.971172, 34.180031, 52.068703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<48.031322, 33.977150, 52.181938>,  <48.131569, 33.639015, 52.370663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.031322, 33.977150, 52.181938> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839024, -0.432790, -0.329746,
		-0.482938, 0.313217, 0.817720,
		-0.250619, 0.845333, -0.471807,
		47.956139, 34.230751, 52.040398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.347343, 33.645424, 52.437550>,  <48.131569, 33.639015, 52.370663>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.347343, 33.645424, 52.437550> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.425232, 33.901852, 52.140602>,  <47.471966, 34.055710, 51.962433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.425232, 33.901852, 52.140602>,  <47.347343, 33.645424, 52.437550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.425232, 33.901852, 52.140602> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917890, -0.147715, -0.368317,
		-0.345777, 0.753134, 0.559668,
		0.194721, 0.641069, -0.742371,
		47.483646, 34.094173, 51.917892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.839901, 34.265274, 52.462143>,  <47.347343, 33.645424, 52.437550>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.839901, 34.265274, 52.462143> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.976570, 34.231049, 52.087776>,  <47.058571, 34.210514, 51.863155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.976570, 34.231049, 52.087776>,  <46.839901, 34.265274, 52.462143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.976570, 34.231049, 52.087776> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.935503, 0.064380, -0.347405,
		0.089978, 0.994251, -0.058045,
		0.341671, -0.085560, -0.935917,
		47.079071, 34.205379, 51.806999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.356838, 34.649841, 52.156364>,  <46.839901, 34.265274, 52.462143>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.356838, 34.649841, 52.156364> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.539436, 34.460377, 51.855099>,  <46.648994, 34.346699, 51.674339>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.539436, 34.460377, 51.855099>,  <46.356838, 34.649841, 52.156364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.539436, 34.460377, 51.855099> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822868, 0.097184, -0.559861,
		0.338378, 0.875331, -0.345393,
		0.456497, -0.473657, -0.753166,
		46.676384, 34.318279, 51.629150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.178432, 35.050961, 51.630592>,  <46.356838, 34.649841, 52.156364>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.178432, 35.050961, 51.630592> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.294350, 34.706440, 51.463650>,  <46.363899, 34.499729, 51.363483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.294350, 34.706440, 51.463650>,  <46.178432, 35.050961, 51.630592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.294350, 34.706440, 51.463650> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802103, 0.019349, -0.596872,
		0.522160, 0.507733, -0.685242,
		0.289793, -0.861297, -0.417358,
		46.381287, 34.448051, 51.338444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.096695, 35.182945, 50.888676>,  <46.178432, 35.050961, 51.630592>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.096695, 35.182945, 50.888676> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.102150, 34.788876, 50.957085>,  <46.105423, 34.552433, 50.998131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.102150, 34.788876, 50.957085>,  <46.096695, 35.182945, 50.888676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.102150, 34.788876, 50.957085> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812301, -0.110653, -0.572646,
		0.583079, -0.131118, -0.801764,
		0.013633, -0.985172, 0.171027,
		46.106239, 34.493324, 51.008392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.878872, 34.911648, 50.242378>,  <46.096695, 35.182945, 50.888676>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.878872, 34.911648, 50.242378> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.827496, 34.619614, 50.510849>,  <45.796669, 34.444393, 50.671932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.827496, 34.619614, 50.510849>,  <45.878872, 34.911648, 50.242378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.827496, 34.619614, 50.510849> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801168, -0.322489, -0.504113,
		0.584493, -0.602475, -0.543500,
		-0.128443, -0.730086, 0.671176,
		45.788963, 34.400589, 50.712200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.629890, 34.385040, 49.875057>,  <45.878872, 34.911648, 50.242378>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.629890, 34.385040, 49.875057> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.520271, 34.251511, 50.235825>,  <45.454498, 34.171394, 50.452286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.520271, 34.251511, 50.235825>,  <45.629890, 34.385040, 49.875057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.520271, 34.251511, 50.235825> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841471, -0.370842, -0.392941,
		0.465642, -0.866626, -0.179270,
		-0.274051, -0.333820, 0.901920,
		45.438057, 34.151363, 50.506401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.374710, 33.686630, 49.783062>,  <45.629890, 34.385040, 49.875057>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.374710, 33.686630, 49.783062> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.229004, 33.801254, 50.137508>,  <45.141579, 33.870029, 50.350174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.229004, 33.801254, 50.137508>,  <45.374710, 33.686630, 49.783062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.229004, 33.801254, 50.137508> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891021, -0.384016, -0.242100,
		0.270905, -0.877734, 0.395214,
		-0.364268, 0.286558, 0.886111,
		45.119724, 33.887222, 50.403343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.125298, 33.104233, 50.002247>,  <45.374710, 33.686630, 49.783062>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.125298, 33.104233, 50.002247> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.961876, 33.419640, 50.186131>,  <44.863823, 33.608883, 50.296459>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.961876, 33.419640, 50.186131>,  <45.125298, 33.104233, 50.002247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.961876, 33.419640, 50.186131> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899458, -0.433407, -0.055967,
		0.155110, -0.436353, 0.886305,
		-0.408553, 0.788514, 0.459707,
		44.839310, 33.656193, 50.324043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.790829, 32.874008, 50.632416>,  <45.125298, 33.104233, 50.002247>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.790829, 32.874008, 50.632416> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.626068, 33.224030, 50.530735>,  <44.527210, 33.434040, 50.469727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.626068, 33.224030, 50.530735>,  <44.790829, 32.874008, 50.632416>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.626068, 33.224030, 50.530735> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.895598, -0.440213, -0.064158,
		-0.168046, 0.201239, 0.965020,
		-0.411903, 0.875051, -0.254206,
		44.502499, 33.486546, 50.454472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.193844, 32.889694, 51.100494>,  <44.790829, 32.874008, 50.632416>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.193844, 32.889694, 51.100494> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.114075, 33.132645, 50.792904>,  <44.066212, 33.278416, 50.608349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.114075, 33.132645, 50.792904>,  <44.193844, 32.889694, 51.100494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.114075, 33.132645, 50.792904> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960903, -0.275032, 0.031967,
		-0.192077, 0.745285, 0.638480,
		-0.199427, 0.607378, -0.768975,
		44.054245, 33.314857, 50.562210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.449261, 33.038418, 51.102959>,  <44.193844, 32.889694, 51.100494>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.449261, 33.038418, 51.102959> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.553303, 33.160313, 50.736465>,  <43.615726, 33.233452, 50.516571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.553303, 33.160313, 50.736465>,  <43.449261, 33.038418, 51.102959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.553303, 33.160313, 50.736465> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.929133, -0.179254, -0.323388,
		-0.262788, 0.935415, 0.236520,
		0.260104, 0.304741, -0.916231,
		43.631332, 33.251736, 50.461597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.005302, 33.437836, 50.906437>,  <43.449261, 33.038418, 51.102959>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.005302, 33.437836, 50.906437> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.122845, 33.323776, 50.541504>,  <43.193371, 33.255341, 50.322544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.122845, 33.323776, 50.541504>,  <43.005302, 33.437836, 50.906437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.122845, 33.323776, 50.541504> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.950828, -0.184919, -0.248458,
		-0.097860, 0.940477, -0.325464,
		0.293853, -0.285146, -0.912328,
		43.211002, 33.238232, 50.267807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.574036, 33.763912, 50.457359>,  <43.005302, 33.437836, 50.906437>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.574036, 33.763912, 50.457359> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.717598, 33.490417, 50.203213>,  <42.803734, 33.326321, 50.050724>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.717598, 33.490417, 50.203213>,  <42.574036, 33.763912, 50.457359>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.717598, 33.490417, 50.203213> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862855, 0.016520, -0.505181,
		0.355906, 0.729543, -0.584036,
		0.358902, -0.683735, -0.635370,
		42.825268, 33.285297, 50.012600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.501686, 34.080116, 49.835209>,  <42.574036, 33.763912, 50.457359>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.501686, 34.080116, 49.835209> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.540291, 33.690834, 49.751724>,  <42.563454, 33.457264, 49.701633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.540291, 33.690834, 49.751724>,  <42.501686, 34.080116, 49.835209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.540291, 33.690834, 49.751724> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860564, 0.023769, -0.508788,
		0.500115, 0.228716, -0.835209,
		0.096516, -0.973203, -0.208712,
		42.569244, 33.398872, 49.689110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.605747, 33.964340, 49.032352>,  <42.501686, 34.080116, 49.835209>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.605747, 33.964340, 49.032352> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.408558, 33.673542, 49.223541>,  <42.290245, 33.499062, 49.338253>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.408558, 33.673542, 49.223541>,  <42.605747, 33.964340, 49.032352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.408558, 33.673542, 49.223541> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828995, 0.225726, -0.511678,
		0.264101, -0.648473, -0.713956,
		-0.492968, -0.727001, 0.477967,
		42.260666, 33.455444, 49.366932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.110149, 33.734947, 48.542942>,  <42.605747, 33.964340, 49.032352>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.110149, 33.734947, 48.542942> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.989090, 33.522026, 48.859184>,  <41.916454, 33.394276, 49.048931>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.989090, 33.522026, 48.859184>,  <42.110149, 33.734947, 48.542942>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.989090, 33.522026, 48.859184> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917771, -0.061003, -0.392396,
		0.257102, -0.844355, -0.470068,
		-0.302646, -0.532301, 0.790608,
		41.898296, 33.362335, 49.096367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.844185, 33.129116, 48.205261>,  <42.110149, 33.734947, 48.542942>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.844185, 33.129116, 48.205261> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.684387, 33.132874, 48.571934>,  <41.588509, 33.135128, 48.791939>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.684387, 33.132874, 48.571934>,  <41.844185, 33.129116, 48.205261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.684387, 33.132874, 48.571934> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892801, -0.230979, -0.386723,
		0.208105, -0.972913, 0.100658,
		-0.399498, 0.009389, 0.916686,
		41.564537, 33.135693, 48.846939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.494240, 32.469398, 48.270962>,  <41.844185, 33.129116, 48.205261>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.494240, 32.469398, 48.270962> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.331055, 32.743450, 48.512344>,  <41.233143, 32.907883, 48.657173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.331055, 32.743450, 48.512344>,  <41.494240, 32.469398, 48.270962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.331055, 32.743450, 48.512344> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887164, -0.141357, -0.439270,
		-0.215653, -0.714574, 0.665490,
		-0.407963, 0.685129, 0.603461,
		41.208664, 32.948990, 48.693382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.870140, 32.158142, 48.532810>,  <41.494240, 32.469398, 48.270962>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.870140, 32.158142, 48.532810> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.845909, 32.557041, 48.549877>,  <40.831371, 32.796383, 48.560116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.845909, 32.557041, 48.549877>,  <40.870140, 32.158142, 48.532810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.845909, 32.557041, 48.549877> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.957639, -0.046013, -0.284272,
		-0.281528, -0.058077, 0.957794,
		-0.060581, 0.997251, 0.042663,
		40.827736, 32.856216, 48.562675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.233597, 32.366257, 48.912785>,  <40.870140, 32.158142, 48.532810>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.233597, 32.366257, 48.912785> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.290905, 32.670296, 48.659256>,  <40.325291, 32.852718, 48.507137>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.290905, 32.670296, 48.659256>,  <40.233597, 32.366257, 48.912785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.290905, 32.670296, 48.659256> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923863, -0.126941, -0.361058,
		-0.354896, 0.637295, 0.684035,
		0.143268, 0.760093, -0.633824,
		40.333885, 32.898323, 48.469109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.673405, 32.913849, 48.823238>,  <40.233597, 32.366257, 48.912785>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.673405, 32.913849, 48.823238> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.850967, 32.853378, 48.469948>,  <39.957504, 32.817097, 48.257973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.850967, 32.853378, 48.469948>,  <39.673405, 32.913849, 48.823238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.850967, 32.853378, 48.469948> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860272, -0.347728, -0.372851,
		-0.250759, 0.925328, -0.284408,
		0.443906, -0.151172, -0.883230,
		39.984138, 32.808025, 48.204979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.238525, 33.137676, 48.241760>,  <39.673405, 32.913849, 48.823238>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.238525, 33.137676, 48.241760> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.496391, 32.889786, 48.062717>,  <39.651112, 32.741051, 47.955292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.496391, 32.889786, 48.062717>,  <39.238525, 33.137676, 48.241760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.496391, 32.889786, 48.062717> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759045, -0.588505, -0.278411,
		-0.090881, 0.519234, -0.849786,
		0.644664, -0.619723, -0.447606,
		39.689789, 32.703869, 47.928436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.655399, 32.805698, 48.687729>,  <39.238525, 33.137676, 48.241760>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.655399, 32.805698, 48.687729> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.651379, 32.750534, 48.291573>,  <38.648968, 32.717438, 48.053879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.651379, 32.750534, 48.291573>,  <38.655399, 32.805698, 48.687729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.651379, 32.750534, 48.291573> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940150, -0.336073, 0.056337,
		-0.340614, 0.931685, -0.126277,
		-0.010049, -0.137909, -0.990394,
		38.648365, 32.709160, 47.994453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.974655, 33.029602, 48.345234>,  <38.655399, 32.805698, 48.687729>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.974655, 33.029602, 48.345234> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.126801, 32.744946, 48.108967>,  <38.218090, 32.574150, 47.967205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.126801, 32.744946, 48.108967>,  <37.974655, 33.029602, 48.345234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.126801, 32.744946, 48.108967> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892991, -0.448759, -0.034382,
		-0.240600, 0.540538, -0.806183,
		0.380367, -0.711641, -0.590667,
		38.240910, 32.531452, 47.931767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.651249, 33.081875, 47.723309>,  <37.974655, 33.029602, 48.345234>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.651249, 33.081875, 47.723309> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.800282, 32.710735, 47.716557>,  <37.889702, 32.488052, 47.712505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.800282, 32.710735, 47.716557>,  <37.651249, 33.081875, 47.723309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.800282, 32.710735, 47.716557> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.923540, -0.368951, -0.104636,
		0.090859, 0.054574, -0.994367,
		0.372583, -0.927845, -0.016879,
		37.912056, 32.432381, 47.711494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.374153, 32.755722, 47.079098>,  <37.651249, 33.081875, 47.723309>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.374153, 32.755722, 47.079098> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.473507, 32.443127, 47.308037>,  <37.533119, 32.255569, 47.445400>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.473507, 32.443127, 47.308037>,  <37.374153, 32.755722, 47.079098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.473507, 32.443127, 47.308037> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814266, -0.488486, -0.313612,
		0.524668, -0.388150, -0.757669,
		0.248382, -0.781486, 0.572351,
		37.548023, 32.208679, 47.479740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308647, 32.171864, 46.682785>,  <37.374153, 32.755722, 47.079098>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.308647, 32.171864, 46.682785> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.258945, 32.009071, 47.044762>,  <37.229126, 31.911396, 47.261948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.258945, 32.009071, 47.044762>,  <37.308647, 32.171864, 46.682785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.258945, 32.009071, 47.044762> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851385, -0.424674, -0.307890,
		0.509613, -0.808713, -0.293733,
		-0.124254, -0.406984, 0.904945,
		37.221668, 31.886976, 47.316246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.141537, 31.555323, 46.525631>,  <37.308647, 32.171864, 46.682785>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.141537, 31.555323, 46.525631> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.015217, 31.569712, 46.904888>,  <36.939423, 31.578344, 47.132442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.015217, 31.569712, 46.904888>,  <37.141537, 31.555323, 46.525631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.015217, 31.569712, 46.904888> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756858, -0.612199, -0.228865,
		0.572219, -0.789885, 0.220559,
		-0.315803, 0.035971, 0.948143,
		36.920475, 31.580503, 47.189331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.086979, 30.844879, 46.766575>,  <37.141537, 31.555323, 46.525631>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.086979, 30.844879, 46.766575> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.864693, 31.067688, 47.013443>,  <36.731319, 31.201372, 47.161564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.864693, 31.067688, 47.013443>,  <37.086979, 30.844879, 46.766575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.864693, 31.067688, 47.013443> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782370, -0.601481, -0.161609,
		0.281200, -0.572669, 0.770050,
		-0.555719, 0.557020, 0.617175,
		36.697975, 31.234795, 47.198597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.581936, 30.335066, 47.027283>,  <37.086979, 30.844879, 46.766575>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.581936, 30.335066, 47.027283> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.438969, 30.687542, 47.151062>,  <36.353188, 30.899027, 47.225327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.438969, 30.687542, 47.151062>,  <36.581936, 30.335066, 47.027283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.438969, 30.687542, 47.151062> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924856, -0.380058, 0.014034,
		0.129973, -0.281175, 0.950814,
		-0.357418, 0.881191, 0.309443,
		36.331741, 30.951899, 47.243896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.143612, 30.152998, 47.527756>,  <36.581936, 30.335066, 47.027283>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.143612, 30.152998, 47.527756> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.035179, 30.507235, 47.376896>,  <35.970119, 30.719776, 47.286381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.035179, 30.507235, 47.376896>,  <36.143612, 30.152998, 47.527756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.035179, 30.507235, 47.376896> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949646, -0.310019, -0.045391,
		-0.157122, 0.345856, 0.925038,
		-0.271081, 0.885591, -0.377152,
		35.953854, 30.772911, 47.263752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.566685, 30.316381, 47.886162>,  <36.143612, 30.152998, 47.527756>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.566685, 30.316381, 47.886162> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.534744, 30.570257, 47.578709>,  <35.515579, 30.722582, 47.394238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.534744, 30.570257, 47.578709>,  <35.566685, 30.316381, 47.886162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.534744, 30.570257, 47.578709> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.973591, -0.215108, -0.076482,
		-0.213880, 0.742217, 0.635114,
		-0.079852, 0.634699, -0.768623,
		35.510788, 30.760664, 47.348118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.931881, 30.720749, 47.979004>,  <35.566685, 30.316381, 47.886162>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.931881, 30.720749, 47.979004> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.024742, 30.734531, 47.590176>,  <35.080460, 30.742802, 47.356880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.024742, 30.734531, 47.590176>,  <34.931881, 30.720749, 47.979004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.024742, 30.734531, 47.590176> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933659, -0.272325, -0.232636,
		-0.272734, 0.961588, -0.031052,
		0.232156, 0.034456, -0.972068,
		35.094387, 30.744867, 47.298553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<30.225307, 31.942947, 50.904804> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.526064, 32.101261, 51.115715>,  <30.706518, 32.196251, 51.242260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.526064, 32.101261, 51.115715>,  <30.225307, 31.942947, 50.904804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.526064, 32.101261, 51.115715> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630878, -0.199674, -0.749749,
		-0.191454, 0.896374, -0.399824,
		0.751890, 0.395783, 0.527274,
		30.751631, 32.219997, 51.273899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.611134, 32.459755, 50.523209>,  <30.225307, 31.942947, 50.904804>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.611134, 32.459755, 50.523209> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.873440, 32.348099, 50.803795>,  <31.030823, 32.281105, 50.972145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.873440, 32.348099, 50.803795>,  <30.611134, 32.459755, 50.523209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.873440, 32.348099, 50.803795> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667787, -0.218970, -0.711416,
		0.352186, 0.934950, 0.042814,
		0.655764, -0.279141, 0.701465,
		31.070169, 32.264355, 51.014233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.242691, 32.698742, 50.321114>,  <30.611134, 32.459755, 50.523209>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.242691, 32.698742, 50.321114> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.340286, 32.409801, 50.579937>,  <31.398844, 32.236439, 50.735229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.340286, 32.409801, 50.579937>,  <31.242691, 32.698742, 50.321114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.340286, 32.409801, 50.579937> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504370, -0.475365, -0.720860,
		0.828300, 0.502238, 0.248347,
		0.243988, -0.722347, 0.647058,
		31.413483, 32.193096, 50.774055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.074520, 32.530293, 50.337986>,  <31.242691, 32.698742, 50.321114>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.074520, 32.530293, 50.337986> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.865372, 32.215908, 50.469975>,  <31.739883, 32.027279, 50.549168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.865372, 32.215908, 50.469975>,  <32.074520, 32.530293, 50.337986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.865372, 32.215908, 50.469975> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501770, -0.596717, -0.626223,
		0.689083, -0.161864, 0.706375,
		-0.522869, -0.785957, 0.329969,
		31.708511, 31.980122, 50.568966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.549065, 31.963985, 50.264259>,  <32.074520, 32.530293, 50.337986>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.549065, 31.963985, 50.264259> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.191933, 31.788578, 50.305347>,  <31.977654, 31.683334, 50.329998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.191933, 31.788578, 50.305347>,  <32.549065, 31.963985, 50.264259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.191933, 31.788578, 50.305347> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235810, -0.649449, -0.722917,
		0.383721, -0.621223, 0.683257,
		-0.892833, -0.438517, 0.102717,
		31.924082, 31.657022, 50.336163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.663193, 31.275406, 50.395458>,  <32.549065, 31.963985, 50.264259>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.663193, 31.275406, 50.395458> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.288208, 31.274593, 50.256226>,  <32.063217, 31.274105, 50.172688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.288208, 31.274593, 50.256226>,  <32.663193, 31.275406, 50.395458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.288208, 31.274593, 50.256226> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302431, -0.499843, -0.811599,
		-0.172337, -0.866114, 0.469198,
		-0.937462, -0.002032, -0.348081,
		32.006969, 31.273985, 50.151802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.388313, 30.559607, 50.146286>,  <32.663193, 31.275406, 50.395458>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.388313, 30.559607, 50.146286> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.142357, 30.799698, 49.941689>,  <31.994781, 30.943752, 49.818928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.142357, 30.799698, 49.941689>,  <32.388313, 30.559607, 50.146286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.142357, 30.799698, 49.941689> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176368, -0.527510, -0.831040,
		-0.768636, -0.601213, 0.218500,
		-0.614893, 0.600231, -0.511498,
		31.957890, 30.979767, 49.788239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.973858, 30.024836, 49.835396>,  <32.388313, 30.559607, 50.146286>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.973858, 30.024836, 49.835396> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.920725, 30.350153, 49.608799>,  <31.888845, 30.545343, 49.472843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.920725, 30.350153, 49.608799>,  <31.973858, 30.024836, 49.835396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.920725, 30.350153, 49.608799> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325923, -0.503924, -0.799897,
		-0.936018, -0.290882, -0.198135,
		-0.132831, 0.813295, -0.566487,
		31.880875, 30.594141, 49.438854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.881319, 29.712803, 49.218414>,  <31.973858, 30.024836, 49.835396>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.881319, 29.712803, 49.218414> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.941906, 30.091772, 49.105671>,  <31.978258, 30.319155, 49.038025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.941906, 30.091772, 49.105671>,  <31.881319, 29.712803, 49.218414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.941906, 30.091772, 49.105671> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267237, -0.313781, -0.911112,
		-0.951653, 0.062679, -0.300714,
		0.151466, 0.947424, -0.281860,
		31.987347, 30.375999, 49.021114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.543228, 29.799870, 48.631802>,  <31.881319, 29.712803, 49.218414>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.543228, 29.799870, 48.631802> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.819057, 30.089518, 48.636478>,  <31.984554, 30.263306, 48.639282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.819057, 30.089518, 48.636478>,  <31.543228, 29.799870, 48.631802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.819057, 30.089518, 48.636478> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171845, -0.147923, -0.973955,
		-0.703532, 0.673623, -0.226440,
		0.689574, 0.724121, 0.011690,
		32.025928, 30.306753, 48.639984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.365274, 30.221600, 48.097569>,  <31.543228, 29.799870, 48.631802>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.365274, 30.221600, 48.097569> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.754808, 30.290310, 48.157085>,  <31.988529, 30.331535, 48.192795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.754808, 30.290310, 48.157085>,  <31.365274, 30.221600, 48.097569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.754808, 30.290310, 48.157085> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195460, -0.299081, -0.933995,
		-0.115935, 0.938640, -0.324830,
		0.973835, 0.171774, 0.148792,
		32.046959, 30.341843, 48.201721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.605570, 30.564739, 47.478699>,  <31.365274, 30.221600, 48.097569>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.605570, 30.564739, 47.478699> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.900211, 30.360243, 47.655807>,  <32.076996, 30.237545, 47.762074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.900211, 30.360243, 47.655807>,  <31.605570, 30.564739, 47.478699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.900211, 30.360243, 47.655807> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387265, -0.217893, -0.895851,
		0.554473, 0.831357, 0.037485,
		0.736604, -0.511241, 0.442771,
		32.121193, 30.206871, 47.788639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.392780, 30.652632, 46.786865>,  <31.605570, 30.564739, 47.478699>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.392780, 30.652632, 46.786865> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.771811, 30.621931, 46.662796>,  <31.999229, 30.603510, 46.588352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.771811, 30.621931, 46.662796>,  <31.392780, 30.652632, 46.786865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.771811, 30.621931, 46.662796> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028332, 0.987082, -0.157693,
		0.318274, 0.140639, 0.937509,
		0.947575, -0.076751, -0.310178,
		32.056084, 30.598906, 46.569744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.665405, 31.199503, 47.021935>,  <31.392780, 30.652632, 46.786865>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.665405, 31.199503, 47.021935> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.900381, 31.092661, 46.716366>,  <32.041367, 31.028557, 46.533024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.900381, 31.092661, 46.716366>,  <31.665405, 31.199503, 47.021935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.900381, 31.092661, 46.716366> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008838, 0.941788, -0.336092,
		0.809220, 0.204185, 0.550883,
		0.587440, -0.267104, -0.763918,
		32.076614, 31.012529, 46.487190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.160618, 31.723633, 46.957878>,  <31.665405, 31.199503, 47.021935>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.160618, 31.723633, 46.957878> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.099178, 31.552029, 46.601818>,  <32.062313, 31.449066, 46.388184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.099178, 31.552029, 46.601818>,  <32.160618, 31.723633, 46.957878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.099178, 31.552029, 46.601818> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332476, 0.870750, -0.362290,
		0.930519, 0.240304, -0.276383,
		-0.153601, -0.429008, -0.890145,
		32.053097, 31.423326, 46.334774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.418159, 32.234810, 46.539471>,  <32.160618, 31.723633, 46.957878>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.418159, 32.234810, 46.539471> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.175537, 31.999477, 46.325569>,  <32.029964, 31.858278, 46.197227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.175537, 31.999477, 46.325569>,  <32.418159, 32.234810, 46.539471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.175537, 31.999477, 46.325569> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546368, 0.797076, -0.257200,
		0.577554, 0.136163, -0.804916,
		-0.606558, -0.588328, -0.534750,
		31.993570, 31.822979, 46.165146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.436501, 32.433334, 45.838203>,  <32.418159, 32.234810, 46.539471>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.436501, 32.433334, 45.838203> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.087082, 32.248623, 45.899750>,  <31.877432, 32.137794, 45.936680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.087082, 32.248623, 45.899750>,  <32.436501, 32.433334, 45.838203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.087082, 32.248623, 45.899750> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459351, 0.677554, -0.574385,
		0.160986, -0.572431, -0.803994,
		-0.873545, -0.461783, 0.153870,
		31.825018, 32.110088, 45.945911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.145470, 32.814381, 45.394585>,  <32.436501, 32.433334, 45.838203>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.145470, 32.814381, 45.394585> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.827230, 32.629665, 45.551445>,  <31.636288, 32.518837, 45.645561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.827230, 32.629665, 45.551445>,  <32.145470, 32.814381, 45.394585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.827230, 32.629665, 45.551445> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573252, 0.783224, -0.240712,
		-0.195983, -0.416310, -0.887850,
		-0.795596, -0.461786, 0.392149,
		31.588552, 32.491131, 45.669090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.602028, 32.994225, 44.982052>,  <32.145470, 32.814381, 45.394585>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.602028, 32.994225, 44.982052> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.422033, 32.887474, 45.322941>,  <31.314037, 32.823425, 45.527473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.422033, 32.887474, 45.322941>,  <31.602028, 32.994225, 44.982052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.422033, 32.887474, 45.322941> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602579, 0.795054, -0.069196,
		-0.659100, -0.544671, -0.518576,
		-0.449985, -0.266876, 0.852227,
		31.287037, 32.807411, 45.578609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.871490, 33.067120, 44.843994>,  <31.602028, 32.994225, 44.982052>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.871490, 33.067120, 44.843994> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.890274, 33.033741, 45.242157>,  <30.901545, 33.013714, 45.481056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.890274, 33.033741, 45.242157>,  <30.871490, 33.067120, 44.843994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.890274, 33.033741, 45.242157> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602617, 0.792374, 0.094852,
		-0.796648, -0.604302, -0.013079,
		0.046955, -0.083445, 0.995405,
		30.904362, 33.008709, 45.540779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.142479, 33.193581, 45.108952>,  <30.871490, 33.067120, 44.843994>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.142479, 33.193581, 45.108952> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.392834, 33.237518, 45.417809>,  <30.543047, 33.263882, 45.603123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.392834, 33.237518, 45.417809>,  <30.142479, 33.193581, 45.108952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.392834, 33.237518, 45.417809> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485710, 0.829502, 0.275703,
		-0.610207, -0.547595, 0.572527,
		0.625886, 0.109846, 0.772140,
		30.580599, 33.270473, 45.649452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.718798, 33.316383, 45.728931>,  <30.142479, 33.193581, 45.108952>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.718798, 33.316383, 45.728931> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.078665, 33.468655, 45.814426>,  <30.294584, 33.560017, 45.865723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.078665, 33.468655, 45.814426>,  <29.718798, 33.316383, 45.728931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.078665, 33.468655, 45.814426> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422588, 0.882281, 0.207363,
		-0.109638, -0.276881, 0.954629,
		0.899666, 0.380680, 0.213738,
		30.348564, 33.582859, 45.878548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.637682, 33.737076, 46.332909>,  <29.718798, 33.316383, 45.728931>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.637682, 33.737076, 46.332909> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.992695, 33.874454, 46.210056>,  <30.205704, 33.956882, 46.136345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.992695, 33.874454, 46.210056>,  <29.637682, 33.737076, 46.332909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.992695, 33.874454, 46.210056> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262510, 0.924760, 0.275513,
		0.378644, -0.163902, 0.910914,
		0.887534, 0.343446, -0.307129,
		30.258955, 33.977489, 46.117916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.865229, 34.106667, 46.848816>,  <29.637682, 33.737076, 46.332909>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.865229, 34.106667, 46.848816> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.099007, 34.264706, 46.565319>,  <30.239273, 34.359531, 46.395222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.099007, 34.264706, 46.565319>,  <29.865229, 34.106667, 46.848816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.099007, 34.264706, 46.565319> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328847, 0.913834, 0.238260,
		0.741812, 0.093819, 0.664013,
		0.584444, 0.395102, -0.708745,
		30.274340, 34.383236, 46.352695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.256966, 34.559742, 47.221962>,  <29.865229, 34.106667, 46.848816>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.256966, 34.559742, 47.221962> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.272301, 34.695808, 46.846130>,  <30.281502, 34.777447, 46.620632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.272301, 34.695808, 46.846130>,  <30.256966, 34.559742, 47.221962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.272301, 34.695808, 46.846130> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284528, 0.905069, 0.316060,
		0.957901, 0.255220, 0.131487,
		0.038340, 0.340166, -0.939583,
		30.283802, 34.797859, 46.564255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.814003, 35.141026, 47.144932>,  <30.256966, 34.559742, 47.221962>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.814003, 35.141026, 47.144932> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.520830, 35.183197, 46.876099>,  <30.344927, 35.208500, 46.714798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.520830, 35.183197, 46.876099>,  <30.814003, 35.141026, 47.144932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.520830, 35.183197, 46.876099> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227743, 0.892889, 0.388435,
		0.641048, 0.437759, -0.630417,
		-0.732933, 0.105432, -0.672081,
		30.300951, 35.214828, 46.674473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.864105, 35.882759, 46.909698>,  <30.814003, 35.141026, 47.144932>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.864105, 35.882759, 46.909698> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.498898, 35.752071, 46.812008>,  <30.279774, 35.673656, 46.753391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.498898, 35.752071, 46.812008>,  <30.864105, 35.882759, 46.909698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.498898, 35.752071, 46.812008> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391738, 0.869227, 0.301638,
		0.113738, 0.371075, -0.921611,
		-0.913020, -0.326723, -0.244228,
		30.224991, 35.654053, 46.738739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.376356, 36.479832, 46.676132>,  <30.864105, 35.882759, 46.909698>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.376356, 36.479832, 46.676132> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.134232, 36.183952, 46.793739>,  <29.988956, 36.006424, 46.864304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.134232, 36.183952, 46.793739>,  <30.376356, 36.479832, 46.676132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.134232, 36.183952, 46.793739> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633306, 0.671307, 0.385059,
		-0.482203, 0.046877, -0.874805,
		-0.605313, -0.739696, 0.294018,
		29.952637, 35.962044, 46.881947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.720358, 37.207890, 46.486252>,  <30.376356, 36.479832, 46.676132>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.720358, 37.207890, 46.486252> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.977514, 37.429646, 46.697666>,  <31.131809, 37.562698, 46.824512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.977514, 37.429646, 46.697666>,  <30.720358, 37.207890, 46.486252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.977514, 37.429646, 46.697666> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761381, -0.387225, -0.519957,
		-0.083597, 0.736690, -0.671043,
		0.642892, 0.554387, 0.528531,
		31.170382, 37.595963, 46.856224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.204359, 37.618832, 46.054340>,  <30.720358, 37.207890, 46.486252>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.204359, 37.618832, 46.054340> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.391268, 37.573574, 46.405079>,  <31.503412, 37.546421, 46.615520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.391268, 37.573574, 46.405079>,  <31.204359, 37.618832, 46.054340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.391268, 37.573574, 46.405079> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869774, -0.119069, -0.478868,
		0.158585, 0.986418, 0.042771,
		0.467272, -0.113142, 0.876844,
		31.531450, 37.539631, 46.668133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.803003, 37.903954, 45.816788>,  <31.204359, 37.618832, 46.054340>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.803003, 37.903954, 45.816788> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.883711, 37.774643, 46.186607>,  <31.932135, 37.697060, 46.408497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.883711, 37.774643, 46.186607>,  <31.803003, 37.903954, 45.816788>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.883711, 37.774643, 46.186607> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969169, -0.070409, -0.236125,
		0.141429, 0.943683, 0.299099,
		0.201768, -0.323272, 0.924546,
		31.944241, 37.677662, 46.463970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.408516, 38.270367, 46.151215>,  <31.803003, 37.903954, 45.816788>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.408516, 38.270367, 46.151215> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.371830, 37.909206, 46.319195>,  <32.349819, 37.692509, 46.419983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.371830, 37.909206, 46.319195>,  <32.408516, 38.270367, 46.151215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.371830, 37.909206, 46.319195> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956603, -0.197022, -0.214693,
		0.276586, 0.382037, 0.881787,
		-0.091711, -0.902901, 0.419951,
		32.344318, 37.638336, 46.445179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.931702, 38.206360, 46.614258>,  <32.408516, 38.270367, 46.151215>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.931702, 38.206360, 46.614258> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.826153, 37.833355, 46.515636>,  <32.762821, 37.609550, 46.456463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.826153, 37.833355, 46.515636>,  <32.931702, 38.206360, 46.614258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.826153, 37.833355, 46.515636> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945198, -0.199035, -0.258815,
		0.192276, -0.301338, 0.933930,
		-0.263875, -0.932513, -0.246555,
		32.746990, 37.553600, 46.441669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.563782, 37.982056, 46.623451>,  <32.931702, 38.206360, 46.614258>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.563782, 37.982056, 46.623451> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.351482, 37.685532, 46.459129>,  <33.224102, 37.507618, 46.360538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.351482, 37.685532, 46.459129>,  <33.563782, 37.982056, 46.623451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.351482, 37.685532, 46.459129> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844142, -0.505657, -0.178143,
		-0.075665, -0.441324, 0.894152,
		-0.530753, -0.741313, -0.410801,
		33.192257, 37.463139, 46.335888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.776276, 37.476711, 46.924019>,  <33.563782, 37.982056, 46.623451>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.776276, 37.476711, 46.924019> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.615269, 37.343773, 46.582840>,  <33.518665, 37.264011, 46.378132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.615269, 37.343773, 46.582840>,  <33.776276, 37.476711, 46.924019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.615269, 37.343773, 46.582840> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822949, -0.539456, -0.178165,
		-0.400917, -0.773649, 0.490646,
		-0.402519, -0.332347, -0.852950,
		33.494514, 37.244068, 46.326954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.938087, 36.707249, 46.857769>,  <33.776276, 37.476711, 46.924019>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.938087, 36.707249, 46.857769> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.856167, 36.823769, 46.483990>,  <33.807014, 36.893681, 46.259720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.856167, 36.823769, 46.483990>,  <33.938087, 36.707249, 46.857769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.856167, 36.823769, 46.483990> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756159, -0.559114, -0.340024,
		-0.621513, -0.776232, -0.105762,
		-0.204804, 0.291302, -0.934451,
		33.794727, 36.911160, 46.203655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.130459, 36.094284, 46.482689>,  <33.938087, 36.707249, 46.857769>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.130459, 36.094284, 46.482689> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.113850, 36.398426, 46.223415>,  <34.103886, 36.580910, 46.067852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.113850, 36.398426, 46.223415>,  <34.130459, 36.094284, 46.482689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.113850, 36.398426, 46.223415> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809556, -0.354611, -0.467835,
		-0.585572, -0.544164, -0.600825,
		-0.041520, 0.760353, -0.648182,
		34.101395, 36.626534, 46.028961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.118130, 35.793995, 45.817574>,  <34.130459, 36.094284, 46.482689>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.118130, 35.793995, 45.817574> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.285114, 36.157192, 45.803242>,  <34.385303, 36.375111, 45.794643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.285114, 36.157192, 45.803242>,  <34.118130, 35.793995, 45.817574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.285114, 36.157192, 45.803242> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807371, -0.388713, -0.443908,
		-0.416991, 0.156385, -0.895356,
		0.417457, 0.907990, -0.035829,
		34.410351, 36.429588, 45.792492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.625271, 35.770584, 45.266914>,  <34.118130, 35.793995, 45.817574>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.625271, 35.770584, 45.266914> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.717880, 36.121758, 45.434544>,  <34.773445, 36.332462, 45.535122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.717880, 36.121758, 45.434544>,  <34.625271, 35.770584, 45.266914>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.717880, 36.121758, 45.434544> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952283, -0.116462, -0.282125,
		-0.198881, 0.464398, -0.863007,
		0.231526, 0.877935, 0.419076,
		34.787338, 36.385139, 45.560268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.043438, 36.233418, 44.813557>,  <34.625271, 35.770584, 45.266914>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.043438, 36.233418, 44.813557> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.120026, 36.347034, 45.189358>,  <35.165977, 36.415207, 45.414837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.120026, 36.347034, 45.189358>,  <35.043438, 36.233418, 44.813557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.120026, 36.347034, 45.189358> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981497, -0.053818, -0.183758,
		-0.001634, 0.957299, -0.289095,
		0.191470, 0.284046, 0.939498,
		35.177467, 36.432247, 45.471207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.594078, 40.427261, 50.775440> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.331432, 40.664780, 50.589424>,  <29.173845, 40.807293, 50.477814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.331432, 40.664780, 50.589424>,  <29.594078, 40.427261, 50.775440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.331432, 40.664780, 50.589424> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017071, -0.604719, -0.796256,
		-0.754034, -0.530771, 0.386930,
		-0.656613, 0.593799, -0.465039,
		29.134449, 40.842918, 50.449913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.058771, 39.994171, 50.633999>,  <29.594078, 40.427261, 50.775440>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.058771, 39.994171, 50.633999> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.055250, 40.304714, 50.381908>,  <29.053139, 40.491039, 50.230656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.055250, 40.304714, 50.381908>,  <29.058771, 39.994171, 50.633999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.055250, 40.304714, 50.381908> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106831, -0.627373, -0.771356,
		-0.994238, 0.060539, 0.088461,
		-0.008801, 0.776362, -0.630226,
		29.052610, 40.537624, 50.192841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.478523, 39.909557, 50.339233>,  <29.058771, 39.994171, 50.633999>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.478523, 39.909557, 50.339233> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.681042, 40.135380, 50.078484>,  <28.802553, 40.270874, 49.922035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.681042, 40.135380, 50.078484>,  <28.478523, 39.909557, 50.339233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.681042, 40.135380, 50.078484> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277650, -0.608947, -0.743030,
		-0.816440, 0.557186, -0.151557,
		0.506296, 0.564560, -0.651871,
		28.832930, 40.304749, 49.882923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.171772, 39.659836, 49.704063>,  <28.478523, 39.909557, 50.339233>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.171772, 39.659836, 49.704063> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.497240, 39.865086, 49.594776>,  <28.692520, 39.988235, 49.529205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.497240, 39.865086, 49.594776>,  <28.171772, 39.659836, 49.704063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.497240, 39.865086, 49.594776> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091702, -0.577395, -0.811299,
		-0.574047, 0.635076, -0.516864,
		0.813671, 0.513121, -0.273214,
		28.741341, 40.019024, 49.512814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.105347, 39.848942, 48.914604>,  <28.171772, 39.659836, 49.704063>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.105347, 39.848942, 48.914604> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.495905, 39.863716, 48.999729>,  <28.730240, 39.872581, 49.050804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.495905, 39.863716, 48.999729>,  <28.105347, 39.848942, 48.914604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.495905, 39.863716, 48.999729> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202538, -0.498841, -0.842695,
		0.075036, 0.865906, -0.494546,
		0.976395, 0.036932, 0.212810,
		28.788824, 39.874794, 49.063572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.494057, 40.061867, 48.275414>,  <28.105347, 39.848942, 48.914604>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.494057, 40.061867, 48.275414> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.753078, 39.879757, 48.519840>,  <28.908491, 39.770493, 48.666496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.753078, 39.879757, 48.519840>,  <28.494057, 40.061867, 48.275414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.753078, 39.879757, 48.519840> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319201, -0.566100, -0.760027,
		0.691943, 0.687212, -0.221257,
		0.647554, -0.455270, 0.611068,
		28.947344, 39.743176, 48.703159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.029198, 39.962822, 47.833908>,  <28.494057, 40.061867, 48.275414>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.029198, 39.962822, 47.833908> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.101376, 39.728378, 48.149860>,  <29.144682, 39.587711, 48.339432>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.101376, 39.728378, 48.149860>,  <29.029198, 39.962822, 47.833908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.101376, 39.728378, 48.149860> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347760, -0.713179, -0.608637,
		0.920056, 0.384515, 0.075135,
		0.180445, -0.586109, 0.789883,
		29.155510, 39.552547, 48.386826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.714359, 39.841354, 48.019600>,  <29.029198, 39.962822, 47.833908>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.714359, 39.841354, 48.019600> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.523684, 39.522644, 48.168152>,  <29.409279, 39.331417, 48.257282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.523684, 39.522644, 48.168152>,  <29.714359, 39.841354, 48.019600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.523684, 39.522644, 48.168152> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657422, -0.603577, -0.451099,
		0.583578, 0.029117, 0.811535,
		-0.476690, -0.796773, 0.371377,
		29.380676, 39.283611, 48.279564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.234636, 39.495544, 48.185127>,  <29.714359, 39.841354, 48.019600>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.234636, 39.495544, 48.185127> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.959000, 39.206036, 48.199623>,  <29.793617, 39.032330, 48.208321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.959000, 39.206036, 48.199623>,  <30.234636, 39.495544, 48.185127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.959000, 39.206036, 48.199623> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666987, -0.652994, -0.358786,
		0.283343, -0.223063, 0.932716,
		-0.689090, -0.723769, 0.036242,
		29.752274, 38.988903, 48.210495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.498520, 38.963844, 48.546436>,  <30.234636, 39.495544, 48.185127>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.498520, 38.963844, 48.546436> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.214979, 38.778660, 48.333572>,  <30.044855, 38.667549, 48.205853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.214979, 38.778660, 48.333572>,  <30.498520, 38.963844, 48.546436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.214979, 38.778660, 48.333572> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664225, -0.691993, -0.282755,
		-0.237346, -0.553905, 0.798033,
		-0.708853, -0.462962, -0.532160,
		30.002323, 38.639771, 48.173923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.599659, 38.259586, 48.768646>,  <30.498520, 38.963844, 48.546436>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.599659, 38.259586, 48.768646> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.419104, 38.310535, 48.415371>,  <30.310770, 38.341103, 48.203407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.419104, 38.310535, 48.415371>,  <30.599659, 38.259586, 48.768646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.419104, 38.310535, 48.415371> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678107, -0.594384, -0.432295,
		-0.580013, -0.794032, 0.181932,
		-0.451393, 0.127367, -0.883189,
		30.283686, 38.348747, 48.150414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.774918, 37.609779, 48.435757>,  <30.599659, 38.259586, 48.768646>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.774918, 37.609779, 48.435757> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.657841, 37.867115, 48.152786>,  <30.587595, 38.021515, 47.983006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.657841, 37.867115, 48.152786>,  <30.774918, 37.609779, 48.435757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.657841, 37.867115, 48.152786> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625762, -0.430532, -0.650434,
		-0.723018, -0.633054, -0.276565,
		-0.292690, 0.643339, -0.707423,
		30.570034, 38.060116, 47.940559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.671125, 37.187855, 47.909500>,  <30.774918, 37.609779, 48.435757>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.671125, 37.187855, 47.909500> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.713011, 37.541538, 47.727421>,  <30.738142, 37.753750, 47.618176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.713011, 37.541538, 47.727421>,  <30.671125, 37.187855, 47.909500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.713011, 37.541538, 47.727421> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495773, -0.443194, -0.746852,
		-0.862116, -0.147467, -0.484778,
		0.104715, 0.884213, -0.455195,
		30.744425, 37.806801, 47.590862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.455051, 37.108719, 47.199287>,  <30.671125, 37.187855, 47.909500>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.455051, 37.108719, 47.199287> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.697865, 37.426582, 47.197109>,  <30.843554, 37.617302, 47.195805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.697865, 37.426582, 47.197109>,  <30.455051, 37.108719, 47.199287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.697865, 37.426582, 47.197109> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636043, -0.489952, -0.596151,
		-0.476402, 0.358423, -0.802854,
		0.607034, 0.794657, -0.005442,
		30.879974, 37.664978, 47.195477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.755112, 36.875694, 46.769123>,  <30.455051, 37.108719, 47.199287>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.755112, 36.875694, 46.769123> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.682419, 36.513386, 46.922249>,  <29.638803, 36.296001, 47.014122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.682419, 36.513386, 46.922249>,  <29.755112, 36.875694, 46.769123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.682419, 36.513386, 46.922249> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516914, 0.419163, 0.746393,
		-0.836524, -0.062235, -0.544384,
		-0.181734, -0.905776, 0.382810,
		29.627899, 36.241653, 47.037090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.039768, 36.787617, 46.870518>,  <29.755112, 36.875694, 46.769123>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.039768, 36.787617, 46.870518> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.211901, 36.524563, 47.117847>,  <29.315180, 36.366730, 47.266247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.211901, 36.524563, 47.117847>,  <29.039768, 36.787617, 46.870518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.211901, 36.524563, 47.117847> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486538, 0.407991, 0.772544,
		-0.760325, -0.633290, -0.144393,
		0.430333, -0.657637, 0.618325,
		29.341002, 36.327271, 47.303345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.460411, 36.653080, 47.441437>,  <29.039768, 36.787617, 46.870518>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.460411, 36.653080, 47.441437> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.805418, 36.501686, 47.575790>,  <29.012423, 36.410851, 47.656403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.805418, 36.501686, 47.575790>,  <28.460411, 36.653080, 47.441437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.805418, 36.501686, 47.575790> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251678, 0.254989, 0.933616,
		-0.439003, -0.889794, 0.124677,
		0.862517, -0.378482, 0.335882,
		29.064173, 36.388142, 47.676556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.245720, 36.169392, 47.923679>,  <28.460411, 36.653080, 47.441437>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.245720, 36.169392, 47.923679> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.619526, 36.268181, 48.026199>,  <28.843809, 36.327454, 48.087711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.619526, 36.268181, 48.026199>,  <28.245720, 36.169392, 47.923679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.619526, 36.268181, 48.026199> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308140, 0.200973, 0.929871,
		0.178132, -0.947956, 0.263911,
		0.934515, 0.246961, 0.256304,
		28.899879, 36.342270, 48.103088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.524654, 35.842342, 48.608727>,  <28.245720, 36.169392, 47.923679>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.524654, 35.842342, 48.608727> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.757139, 36.167763, 48.601490>,  <28.896629, 36.363014, 48.597149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.757139, 36.167763, 48.601490>,  <28.524654, 35.842342, 48.608727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.757139, 36.167763, 48.601490> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132765, 0.116741, 0.984248,
		0.802849, -0.569654, 0.175863,
		0.581212, 0.813551, -0.018095,
		28.931503, 36.411827, 48.596062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.978291, 35.758770, 49.203850>,  <28.524654, 35.842342, 48.608727>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.978291, 35.758770, 49.203850> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.002764, 36.139355, 49.083199>,  <29.017448, 36.367706, 49.010807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.002764, 36.139355, 49.083199>,  <28.978291, 35.758770, 49.203850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.002764, 36.139355, 49.083199> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188785, 0.285710, 0.939537,
		0.980111, -0.114427, -0.162141,
		0.061183, 0.951460, -0.301630,
		29.021118, 36.424793, 48.992710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.497036, 36.082481, 49.597176>,  <28.978291, 35.758770, 49.203850>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.497036, 36.082481, 49.597176> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.321806, 36.417229, 49.465878>,  <29.216669, 36.618076, 49.387100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.321806, 36.417229, 49.465878>,  <29.497036, 36.082481, 49.597176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.321806, 36.417229, 49.465878> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020600, 0.374399, 0.927039,
		0.898703, 0.399349, -0.181254,
		-0.438074, 0.836867, -0.328247,
		29.190384, 36.668289, 49.367405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.737448, 36.585007, 50.008110>,  <29.497036, 36.082481, 49.597176>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.737448, 36.585007, 50.008110> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.411379, 36.747753, 49.843204>,  <29.215738, 36.845402, 49.744263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.411379, 36.747753, 49.843204>,  <29.737448, 36.585007, 50.008110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.411379, 36.747753, 49.843204> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154676, 0.532991, 0.831863,
		0.558187, 0.741877, -0.371546,
		-0.815170, 0.406866, -0.412259,
		29.166828, 36.869812, 49.719528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.742016, 37.287407, 50.225071>,  <29.737448, 36.585007, 50.008110>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.742016, 37.287407, 50.225071> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.353758, 37.236115, 50.143681>,  <29.120802, 37.205341, 50.094845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.353758, 37.236115, 50.143681>,  <29.742016, 37.287407, 50.225071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.353758, 37.236115, 50.143681> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240484, 0.529987, 0.813192,
		0.003565, 0.838255, -0.545267,
		-0.970647, -0.128229, -0.203476,
		29.062563, 37.197647, 50.082638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.471617, 37.906670, 50.430851>,  <29.742016, 37.287407, 50.225071>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.471617, 37.906670, 50.430851> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.170809, 37.643044, 50.434891>,  <28.990324, 37.484867, 50.437317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.170809, 37.643044, 50.434891>,  <29.471617, 37.906670, 50.430851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.170809, 37.643044, 50.434891> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394657, 0.462490, 0.793945,
		-0.527932, 0.593076, -0.607906,
		-0.752020, -0.659063, 0.010101,
		28.945204, 37.445324, 50.437920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.918112, 38.315113, 50.466564>,  <29.471617, 37.906670, 50.430851>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.918112, 38.315113, 50.466564> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.803255, 37.960484, 50.611637>,  <28.734341, 37.747707, 50.698681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.803255, 37.960484, 50.611637>,  <28.918112, 38.315113, 50.466564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.803255, 37.960484, 50.611637> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434264, 0.457966, 0.775681,
		-0.853794, 0.065231, -0.516508,
		-0.287142, -0.886573, 0.362682,
		28.717112, 37.694511, 50.720440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.208313, 38.387417, 50.690216>,  <28.918112, 38.315113, 50.466564>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.208313, 38.387417, 50.690216> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.330818, 38.045971, 50.858761>,  <28.404322, 37.841103, 50.959888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.330818, 38.045971, 50.858761>,  <28.208313, 38.387417, 50.690216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.330818, 38.045971, 50.858761> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483334, 0.241900, 0.841352,
		-0.820117, -0.461334, -0.338495,
		0.306262, -0.853613, 0.421365,
		28.422697, 37.789886, 50.985168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.656622, 38.134933, 50.868107>,  <28.208313, 38.387417, 50.690216>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.656622, 38.134933, 50.868107> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.949940, 37.987968, 51.096943>,  <28.125931, 37.899788, 51.234245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.949940, 37.987968, 51.096943>,  <27.656622, 38.134933, 50.868107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.949940, 37.987968, 51.096943> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608854, 0.019650, 0.793039,
		-0.302617, -0.929849, -0.209293,
		0.733294, -0.367416, 0.572089,
		28.169928, 37.877743, 51.268570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.232021, 37.803841, 51.393574>,  <27.656622, 38.134933, 50.868107>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.232021, 37.803841, 51.393574> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.605986, 37.834354, 51.532207>,  <27.830364, 37.852661, 51.615387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.605986, 37.834354, 51.532207>,  <27.232021, 37.803841, 51.393574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.605986, 37.834354, 51.532207> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351421, 0.063013, 0.934095,
		0.049422, -0.995093, 0.085721,
		0.934912, 0.076289, 0.346582,
		27.886459, 37.857239, 51.636181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<32.817863, 39.338478, 55.974499> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.677189, 39.311882, 55.600998>,  <32.592785, 39.295925, 55.376896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.677189, 39.311882, 55.600998>,  <32.817863, 39.338478, 55.974499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.677189, 39.311882, 55.600998> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518855, -0.844086, -0.135310,
		-0.779172, -0.532070, 0.331350,
		-0.351683, -0.066493, -0.933755,
		32.571686, 39.291935, 55.320873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.551113, 38.671608, 55.947327>,  <32.817863, 39.338478, 55.974499>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.551113, 38.671608, 55.947327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.585030, 38.787304, 55.565929>,  <32.605381, 38.856720, 55.337090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.585030, 38.787304, 55.565929>,  <32.551113, 38.671608, 55.947327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.585030, 38.787304, 55.565929> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262276, -0.929673, -0.258689,
		-0.961260, -0.228142, -0.154692,
		0.084795, 0.289240, -0.953494,
		32.610470, 38.874077, 55.279881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.198990, 38.179222, 55.549480>,  <32.551113, 38.671608, 55.947327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.198990, 38.179222, 55.549480> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.427525, 38.359211, 55.274937>,  <32.564648, 38.467205, 55.110210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.427525, 38.359211, 55.274937>,  <32.198990, 38.179222, 55.549480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.427525, 38.359211, 55.274937> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334094, -0.891388, -0.306280,
		-0.749634, -0.054320, -0.659620,
		0.571341, 0.449973, -0.686363,
		32.598927, 38.494202, 55.069027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.119587, 37.830822, 54.855343>,  <32.198990, 38.179222, 55.549480>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.119587, 37.830822, 54.855343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.470947, 38.019703, 54.825871>,  <32.681763, 38.133034, 54.808189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.470947, 38.019703, 54.825871>,  <32.119587, 37.830822, 54.855343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.470947, 38.019703, 54.825871> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441638, -0.860935, -0.252480,
		-0.182655, 0.189241, -0.964793,
		0.878404, 0.472206, -0.073678,
		32.734467, 38.161366, 54.803768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.353462, 37.752064, 54.139412>,  <32.119587, 37.830822, 54.855343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.353462, 37.752064, 54.139412> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.657700, 37.810329, 54.392483>,  <32.840244, 37.845287, 54.544323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.657700, 37.810329, 54.392483>,  <32.353462, 37.752064, 54.139412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.657700, 37.810329, 54.392483> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422898, -0.850561, -0.312575,
		0.492596, 0.505300, -0.708535,
		0.760596, 0.145665, 0.632673,
		32.885880, 37.854031, 54.582283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.986320, 37.713089, 53.716366>,  <32.353462, 37.752064, 54.139412>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.986320, 37.713089, 53.716366> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.112534, 37.664177, 54.092766>,  <33.188263, 37.634830, 54.318607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.112534, 37.664177, 54.092766>,  <32.986320, 37.713089, 53.716366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.112534, 37.664177, 54.092766> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567143, -0.770752, -0.290328,
		0.760779, 0.625292, -0.173853,
		0.315537, -0.122275, 0.941002,
		33.207195, 37.627495, 54.375065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.620049, 37.528301, 53.562832>,  <32.986320, 37.713089, 53.716366>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.620049, 37.528301, 53.562832> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.602413, 37.425411, 53.948971>,  <33.591831, 37.363678, 54.180653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.602413, 37.425411, 53.948971>,  <33.620049, 37.528301, 53.562832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.602413, 37.425411, 53.948971> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690448, -0.706218, -0.156645,
		0.722037, 0.659616, 0.208732,
		-0.044084, -0.257222, 0.965346,
		33.589188, 37.348244, 54.238575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.303898, 37.547604, 53.812408>,  <33.620049, 37.528301, 53.562832>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.303898, 37.547604, 53.812408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.082207, 37.301952, 54.037148>,  <33.949192, 37.154560, 54.171993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.082207, 37.301952, 54.037148>,  <34.303898, 37.547604, 53.812408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.082207, 37.301952, 54.037148> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549912, -0.776872, -0.306704,
		0.624841, 0.138984, 0.768282,
		-0.554230, -0.614129, 0.561850,
		33.915939, 37.117714, 54.205704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.786877, 37.168388, 54.143795>,  <34.303898, 37.547604, 53.812408>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.786877, 37.168388, 54.143795> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.457062, 36.942192, 54.151436>,  <34.259174, 36.806473, 54.156021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.457062, 36.942192, 54.151436>,  <34.786877, 37.168388, 54.143795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.457062, 36.942192, 54.151436> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543872, -0.801421, -0.248855,
		0.156037, -0.194798, 0.968352,
		-0.824534, -0.565490, 0.019106,
		34.209702, 36.772545, 54.157169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.083103, 36.650021, 54.279617>,  <34.786877, 37.168388, 54.143795>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.083103, 36.650021, 54.279617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.726585, 36.532295, 54.141644>,  <34.512676, 36.461658, 54.058861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.726585, 36.532295, 54.141644>,  <35.083103, 36.650021, 54.279617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.726585, 36.532295, 54.141644> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418349, -0.827160, -0.375220,
		-0.174883, -0.478732, 0.860367,
		-0.891291, -0.294314, -0.344933,
		34.459198, 36.444000, 54.038162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.217045, 35.995316, 54.059219>,  <35.083103, 36.650021, 54.279617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.217045, 35.995316, 54.059219> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.851177, 36.001583, 53.897655>,  <34.631657, 36.005344, 53.800716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.851177, 36.001583, 53.897655>,  <35.217045, 35.995316, 54.059219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.851177, 36.001583, 53.897655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237825, -0.787123, -0.569102,
		-0.326842, -0.616597, 0.716227,
		-0.914666, 0.015670, -0.403907,
		34.576778, 36.006283, 53.776482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.951435, 35.259884, 54.140781>,  <35.217045, 35.995316, 54.059219>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.951435, 35.259884, 54.140781> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.799679, 35.468487, 53.835075>,  <34.708626, 35.593647, 53.651653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.799679, 35.468487, 53.835075>,  <34.951435, 35.259884, 54.140781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.799679, 35.468487, 53.835075> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182178, -0.767743, -0.614314,
		-0.907125, -0.372296, 0.196265,
		-0.379388, 0.521505, -0.764263,
		34.685863, 35.624939, 53.605797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.525036, 34.734638, 53.726688>,  <34.951435, 35.259884, 54.140781>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.525036, 34.734638, 53.726688> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.559402, 35.051933, 53.485561>,  <34.580025, 35.242310, 53.340885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.559402, 35.051933, 53.485561>,  <34.525036, 34.734638, 53.726688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.559402, 35.051933, 53.485561> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163931, -0.608068, -0.776775,
		-0.982723, -0.032080, -0.182281,
		0.085920, 0.793236, -0.602822,
		34.585178, 35.289906, 53.304714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.204906, 34.389641, 53.130356>,  <34.525036, 34.734638, 53.726688>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.204906, 34.389641, 53.130356> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.400066, 34.721539, 53.021935>,  <34.517162, 34.920677, 52.956882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.400066, 34.721539, 53.021935>,  <34.204906, 34.389641, 53.130356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.400066, 34.721539, 53.021935> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266053, -0.437108, -0.859158,
		-0.831366, 0.347069, -0.434022,
		0.487901, 0.829747, -0.271058,
		34.546436, 34.970463, 52.940617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.587948, 34.223457, 52.739799>,  <34.204906, 34.389641, 53.130356>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.587948, 34.223457, 52.739799> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.552055, 33.893318, 52.962776>,  <33.530521, 33.695232, 53.096561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.552055, 33.893318, 52.962776>,  <33.587948, 34.223457, 52.739799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.552055, 33.893318, 52.962776> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612179, 0.487192, 0.622800,
		-0.785611, -0.285371, -0.548979,
		-0.089729, -0.825353, 0.557442,
		33.525135, 33.645714, 53.130009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.870510, 34.134293, 52.829502>,  <33.587948, 34.223457, 52.739799>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.870510, 34.134293, 52.829502> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.042042, 33.920261, 53.120651>,  <33.144962, 33.791843, 53.295341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.042042, 33.920261, 53.120651>,  <32.870510, 34.134293, 52.829502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.042042, 33.920261, 53.120651> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492271, 0.537175, 0.684918,
		-0.757477, -0.652025, -0.033044,
		0.428833, -0.535076, 0.727871,
		33.170692, 33.759739, 53.339012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.377430, 33.916744, 53.318943>,  <32.870510, 34.134293, 52.829502>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.377430, 33.916744, 53.318943> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.699959, 33.850422, 53.546047>,  <32.893475, 33.810627, 53.682312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.699959, 33.850422, 53.546047>,  <32.377430, 33.916744, 53.318943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.699959, 33.850422, 53.546047> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488369, 0.354897, 0.797210,
		-0.333680, -0.920085, 0.205186,
		0.806321, -0.165807, 0.567763,
		32.941856, 33.800678, 53.716377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.130608, 33.547604, 53.924648>,  <32.377430, 33.916744, 53.318943>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.130608, 33.547604, 53.924648> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.480904, 33.709801, 54.029453>,  <32.691082, 33.807117, 54.092335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.480904, 33.709801, 54.029453>,  <32.130608, 33.547604, 53.924648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.480904, 33.709801, 54.029453> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431329, 0.413379, 0.801918,
		0.216857, -0.815290, 0.536914,
		0.875745, 0.405488, 0.262014,
		32.743626, 33.831448, 54.108059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.148685, 33.400066, 54.585125>,  <32.130608, 33.547604, 53.924648>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.148685, 33.400066, 54.585125> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.400768, 33.708744, 54.550884>,  <32.552017, 33.893951, 54.530342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.400768, 33.708744, 54.550884>,  <32.148685, 33.400066, 54.585125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.400768, 33.708744, 54.550884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455896, 0.457022, 0.763734,
		0.628492, -0.442284, 0.639830,
		0.630204, 0.771697, -0.085599,
		32.589828, 33.940254, 54.525204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.446659, 33.660301, 55.340878>,  <32.148685, 33.400066, 54.585125>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.446659, 33.660301, 55.340878> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.488251, 33.958672, 55.077736>,  <32.513206, 34.137695, 54.919849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.488251, 33.958672, 55.077736>,  <32.446659, 33.660301, 55.340878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.488251, 33.958672, 55.077736> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447152, 0.625885, 0.639002,
		0.888394, 0.227720, 0.398623,
		0.103979, 0.745930, -0.657857,
		32.519444, 34.182449, 54.880379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.617771, 34.231689, 55.723022>,  <32.446659, 33.660301, 55.340878>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.617771, 34.231689, 55.723022> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.519058, 34.407623, 55.377621>,  <32.459831, 34.513184, 55.170380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.519058, 34.407623, 55.377621>,  <32.617771, 34.231689, 55.723022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.519058, 34.407623, 55.377621> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326604, 0.801185, 0.501431,
		0.912374, 0.405771, -0.054069,
		-0.246786, 0.439834, -0.863506,
		32.445023, 34.539574, 55.118568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.791729, 34.880642, 55.880070>,  <32.617771, 34.231689, 55.723022>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.791729, 34.880642, 55.880070> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.560635, 34.919338, 55.555882>,  <32.421978, 34.942558, 55.361370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.560635, 34.919338, 55.555882>,  <32.791729, 34.880642, 55.880070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.560635, 34.919338, 55.555882> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521097, 0.720543, 0.457467,
		0.628237, 0.686629, -0.365869,
		-0.577734, 0.096745, -0.810471,
		32.387314, 34.948360, 55.312740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.717571, 35.603546, 55.735508>,  <32.791729, 34.880642, 55.880070>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.717571, 35.603546, 55.735508> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.396606, 35.426159, 55.575771>,  <32.204029, 35.319725, 55.479931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.396606, 35.426159, 55.575771>,  <32.717571, 35.603546, 55.735508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.396606, 35.426159, 55.575771> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583106, 0.725009, 0.366538,
		0.126977, 0.526971, -0.840344,
		-0.802412, -0.443468, -0.399339,
		32.155884, 35.293118, 55.455971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.374004, 36.105724, 55.285133>,  <32.717571, 35.603546, 55.735508>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.374004, 36.105724, 55.285133> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.070042, 35.854412, 55.351837>,  <31.887665, 35.703625, 55.391857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.070042, 35.854412, 55.351837>,  <32.374004, 36.105724, 55.285133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.070042, 35.854412, 55.351837> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578228, 0.770547, 0.268160,
		-0.296973, 0.107353, -0.948832,
		-0.759907, -0.628278, 0.166757,
		31.842070, 35.665928, 55.401863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.832211, 36.350296, 54.958950>,  <32.374004, 36.105724, 55.285133>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.832211, 36.350296, 54.958950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.673086, 36.105492, 55.232357>,  <31.577612, 35.958611, 55.396400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.673086, 36.105492, 55.232357>,  <31.832211, 36.350296, 54.958950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.673086, 36.105492, 55.232357> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751491, 0.644736, 0.139915,
		-0.526316, -0.457995, -0.716402,
		-0.397810, -0.612009, 0.683514,
		31.553743, 35.921890, 55.437412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.111830, 36.282352, 54.696266>,  <31.832211, 36.350296, 54.958950>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.111830, 36.282352, 54.696266> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.102612, 36.183628, 55.083782>,  <31.097080, 36.124393, 55.316292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.102612, 36.183628, 55.083782>,  <31.111830, 36.282352, 54.696266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.102612, 36.183628, 55.083782> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657232, 0.733952, 0.171349,
		-0.753336, -0.632771, -0.179124,
		-0.023044, -0.246810, 0.968790,
		31.095699, 36.109585, 55.374420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.438366, 36.373798, 54.833607>,  <31.111830, 36.282352, 54.696266>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.438366, 36.373798, 54.833607> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.619194, 36.387909, 55.190121>,  <30.727692, 36.396374, 55.404030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.619194, 36.387909, 55.190121>,  <30.438366, 36.373798, 54.833607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.619194, 36.387909, 55.190121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594977, 0.756375, 0.271842,
		-0.664556, -0.653186, 0.362924,
		0.452070, 0.035277, 0.891285,
		30.754816, 36.398491, 55.457504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.916222, 36.438278, 55.337612>,  <30.438366, 36.373798, 54.833607>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.916222, 36.438278, 55.337612> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.249746, 36.575420, 55.510681>,  <30.449862, 36.657707, 55.614525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.249746, 36.575420, 55.510681>,  <29.916222, 36.438278, 55.337612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.249746, 36.575420, 55.510681> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491405, 0.818101, 0.298716,
		-0.251556, -0.461692, 0.850623,
		0.833811, 0.342857, 0.432676,
		30.499889, 36.678276, 55.640484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.315262, 36.117191, 55.701248>,  <29.916222, 36.438278, 55.337612>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.315262, 36.117191, 55.701248> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.009756, 36.096909, 55.443848>,  <28.826452, 36.084740, 55.289406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.009756, 36.096909, 55.443848>,  <29.315262, 36.117191, 55.701248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.009756, 36.096909, 55.443848> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317939, -0.897144, -0.306671,
		-0.561764, -0.438818, 0.701327,
		-0.763765, -0.050702, -0.643500,
		28.780626, 36.081699, 55.250797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.140337, 35.389000, 55.705090>,  <29.315262, 36.117191, 55.701248>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.140337, 35.389000, 55.705090> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.987885, 35.530205, 55.363300>,  <28.896412, 35.614929, 55.158226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.987885, 35.530205, 55.363300>,  <29.140337, 35.389000, 55.705090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.987885, 35.530205, 55.363300> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369356, -0.789129, -0.490767,
		-0.847534, -0.502651, 0.170375,
		-0.381132, 0.353013, -0.854471,
		28.873545, 35.636108, 55.106960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.788616, 34.761921, 55.420158>,  <29.140337, 35.389000, 55.705090>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.788616, 34.761921, 55.420158> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.853174, 35.037392, 55.137409>,  <28.891909, 35.202675, 54.967758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.853174, 35.037392, 55.137409>,  <28.788616, 34.761921, 55.420158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.853174, 35.037392, 55.137409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235014, -0.722479, -0.650225,
		-0.958499, -0.061182, -0.278455,
		0.161396, 0.688681, -0.706874,
		28.901592, 35.243996, 54.925346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.561989, 34.438290, 54.861450>,  <28.788616, 34.761921, 55.420158>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.561989, 34.438290, 54.861450> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.784933, 34.730537, 54.703693>,  <28.918699, 34.905888, 54.609039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.784933, 34.730537, 54.703693>,  <28.561989, 34.438290, 54.861450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.784933, 34.730537, 54.703693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272147, -0.609540, -0.744579,
		-0.784401, 0.307667, -0.538569,
		0.557361, 0.730618, -0.394393,
		28.952141, 34.949722, 54.585377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.378630, 34.497345, 54.177345>,  <28.561989, 34.438290, 54.861450>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.378630, 34.497345, 54.177345> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.736925, 34.670273, 54.218815>,  <28.951902, 34.774029, 54.243694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.736925, 34.670273, 54.218815>,  <28.378630, 34.497345, 54.177345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.736925, 34.670273, 54.218815> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381051, -0.626448, -0.679972,
		-0.229023, 0.648582, -0.725872,
		0.895739, 0.432323, 0.103672,
		29.005648, 34.799969, 54.249916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.564829, 34.470993, 53.493736>,  <28.378630, 34.497345, 54.177345>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.564829, 34.470993, 53.493736> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.890223, 34.523869, 53.720284>,  <29.085459, 34.555595, 53.856213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.890223, 34.523869, 53.720284>,  <28.564829, 34.470993, 53.493736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.890223, 34.523869, 53.720284> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523677, -0.590104, -0.614443,
		0.252991, 0.796432, -0.549265,
		0.813485, 0.132189, 0.566364,
		29.134268, 34.563526, 53.890194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.129292, 34.732529, 53.109699>,  <28.564829, 34.470993, 53.493736>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.129292, 34.732529, 53.109699> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.300047, 34.556347, 53.425617>,  <29.402500, 34.450638, 53.615166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.300047, 34.556347, 53.425617>,  <29.129292, 34.732529, 53.109699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.300047, 34.556347, 53.425617> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638985, -0.471085, -0.608093,
		0.639893, 0.764253, 0.080340,
		0.426889, -0.440450, 0.789790,
		29.428114, 34.424213, 53.662556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.900301, 34.709404, 52.993797>,  <29.129292, 34.732529, 53.109699>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.900301, 34.709404, 52.993797> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.816807, 34.427814, 53.265343>,  <29.766710, 34.258862, 53.428268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.816807, 34.427814, 53.265343>,  <29.900301, 34.709404, 52.993797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.816807, 34.427814, 53.265343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670368, -0.608408, -0.424790,
		0.712065, 0.366418, 0.598917,
		-0.208735, -0.703973, 0.678861,
		29.754187, 34.216621, 53.469002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.490685, 34.499187, 53.323498>,  <29.900301, 34.709404, 52.993797>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.490685, 34.499187, 53.323498> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.206480, 34.221958, 53.274803>,  <30.035957, 34.055618, 53.245586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.206480, 34.221958, 53.274803>,  <30.490685, 34.499187, 53.323498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.206480, 34.221958, 53.274803> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558336, -0.449951, -0.696997,
		0.428297, -0.563194, 0.706665,
		-0.710509, -0.693078, -0.121739,
		29.993328, 34.014034, 53.238281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.846884, 33.954086, 53.193398>,  <30.490685, 34.499187, 53.323498>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.846884, 33.954086, 53.193398> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.489628, 33.818066, 53.075638>,  <30.275274, 33.736454, 53.004982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.489628, 33.818066, 53.075638>,  <30.846884, 33.954086, 53.193398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.489628, 33.818066, 53.075638> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445156, -0.574671, -0.686723,
		0.064336, -0.744393, 0.664636,
		-0.893139, -0.340048, -0.294399,
		30.221685, 33.716053, 52.987320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.764355, 33.263386, 53.323494>,  <30.846884, 33.954086, 53.193398>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.764355, 33.263386, 53.323494> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.516081, 33.299427, 53.011948>,  <30.367117, 33.321053, 52.825020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.516081, 33.299427, 53.011948>,  <30.764355, 33.263386, 53.323494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.516081, 33.299427, 53.011948> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426029, -0.795180, -0.431495,
		-0.658215, -0.599642, 0.455172,
		-0.620686, 0.090101, -0.778865,
		30.329874, 33.326458, 52.778290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.553936, 32.639343, 53.352642>,  <30.764355, 33.263386, 53.323494>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.553936, 32.639343, 53.352642> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.488068, 32.800964, 52.992725>,  <30.448547, 32.897938, 52.776775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.488068, 32.800964, 52.992725>,  <30.553936, 32.639343, 53.352642>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.488068, 32.800964, 52.992725> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331725, -0.836422, -0.436300,
		-0.928893, -0.370329, 0.003700,
		-0.164670, 0.404048, -0.899794,
		30.438667, 32.922180, 52.722786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.470093, 32.055805, 52.960007>,  <30.553936, 32.639343, 53.352642>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.470093, 32.055805, 52.960007> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.527700, 32.337551, 52.681980>,  <30.562265, 32.506599, 52.515163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.527700, 32.337551, 52.681980>,  <30.470093, 32.055805, 52.960007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.527700, 32.337551, 52.681980> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279745, -0.702722, -0.654159,
		-0.949210, -0.100230, -0.298251,
		0.144021, 0.704369, -0.695070,
		30.570908, 32.548862, 52.473457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.385942, 31.663420, 52.362690>,  <30.470093, 32.055805, 52.960007>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.385942, 31.663420, 52.362690> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.521561, 32.012661, 52.222553>,  <30.602932, 32.222206, 52.138474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.521561, 32.012661, 52.222553>,  <30.385942, 31.663420, 52.362690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.521561, 32.012661, 52.222553> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336633, -0.460332, -0.821446,
		-0.878480, 0.160570, -0.449989,
		0.339044, 0.873105, -0.350339,
		30.623274, 32.274593, 52.117451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<27.319193, 37.224194, 51.965485> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.571274, 37.531635, 52.009457>,  <27.722523, 37.716103, 52.035839>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.571274, 37.531635, 52.009457>,  <27.319193, 37.224194, 51.965485>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.571274, 37.531635, 52.009457> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419811, 0.218209, 0.880990,
		0.653148, -0.601354, 0.460186,
		0.630204, 0.768608, 0.109932,
		27.760334, 37.762218, 52.042435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.390877, 37.242886, 52.656769>,  <27.319193, 37.224194, 51.965485>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.390877, 37.242886, 52.656769> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.557983, 37.588741, 52.545151>,  <27.658247, 37.796257, 52.478180>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.557983, 37.588741, 52.545151>,  <27.390877, 37.242886, 52.656769>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.557983, 37.588741, 52.545151> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262456, 0.408885, 0.874031,
		0.869821, -0.291904, 0.397748,
		0.417766, 0.864641, -0.279045,
		27.683313, 37.848133, 52.461437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.734093, 37.525635, 53.313141>,  <27.390877, 37.242886, 52.656769>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.734093, 37.525635, 53.313141> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.670473, 37.826424, 53.057255>,  <27.632301, 38.006897, 52.903721>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.670473, 37.826424, 53.057255>,  <27.734093, 37.525635, 53.313141>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.670473, 37.826424, 53.057255> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351405, 0.562411, 0.748470,
		0.922614, 0.343845, 0.174795,
		-0.159051, 0.751973, -0.639718,
		27.622757, 38.052017, 52.865341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.137476, 38.178215, 53.571461>,  <27.734093, 37.525635, 53.313141>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.137476, 38.178215, 53.571461> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.820400, 38.266808, 53.344273>,  <27.630154, 38.319962, 53.207962>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.820400, 38.266808, 53.344273>,  <28.137476, 38.178215, 53.571461>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.820400, 38.266808, 53.344273> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170098, 0.814311, 0.554945,
		0.585412, 0.536510, -0.607824,
		-0.792691, 0.221482, -0.567967,
		27.582592, 38.333252, 53.173882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.049984, 38.886528, 53.741390>,  <28.137476, 38.178215, 53.571461>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.049984, 38.886528, 53.741390> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.729378, 38.807884, 53.515499>,  <27.537014, 38.760696, 53.379963>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.729378, 38.807884, 53.515499>,  <28.049984, 38.886528, 53.741390>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.729378, 38.807884, 53.515499> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488586, 0.759811, 0.428918,
		0.344759, 0.619703, -0.705059,
		-0.801514, -0.196609, -0.564730,
		27.488924, 38.748901, 53.346081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.762589, 39.528297, 53.503719>,  <28.049984, 38.886528, 53.741390>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.762589, 39.528297, 53.503719> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.459883, 39.266857, 53.499393>,  <27.278259, 39.109993, 53.496799>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.459883, 39.266857, 53.499393>,  <27.762589, 39.528297, 53.503719>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.459883, 39.266857, 53.499393> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584715, 0.669425, 0.458235,
		-0.292266, 0.353096, -0.888766,
		-0.756762, -0.653601, -0.010811,
		27.232855, 39.070778, 53.496151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.163872, 39.880909, 53.311947>,  <27.762589, 39.528297, 53.503719>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.163872, 39.880909, 53.311947> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.014544, 39.558479, 53.495632>,  <26.924946, 39.365021, 53.605843>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.014544, 39.558479, 53.495632>,  <27.163872, 39.880909, 53.311947>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.014544, 39.558479, 53.495632> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695257, 0.570826, 0.436777,
		-0.614206, -0.156214, -0.773529,
		-0.373320, -0.806073, 0.459214,
		26.902548, 39.316658, 53.633396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.498632, 40.088127, 53.387157>,  <27.163872, 39.880909, 53.311947>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.498632, 40.088127, 53.387157> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.518185, 39.779430, 53.640781>,  <26.529915, 39.594212, 53.792953>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.518185, 39.779430, 53.640781>,  <26.498632, 40.088127, 53.387157>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.518185, 39.779430, 53.640781> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569845, 0.499815, 0.652275,
		-0.820298, -0.393197, -0.415341,
		0.048878, -0.771739, 0.634058,
		26.532848, 39.547909, 53.830997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.828110, 39.947803, 53.672653>,  <26.498632, 40.088127, 53.387157>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.828110, 39.947803, 53.672653> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.087217, 39.799522, 53.938877>,  <26.242682, 39.710552, 54.098614>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.087217, 39.799522, 53.938877>,  <25.828110, 39.947803, 53.672653>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.087217, 39.799522, 53.938877> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402276, 0.575468, 0.712047,
		-0.646970, -0.728981, 0.223643,
		0.647769, -0.370706, 0.665562,
		26.281548, 39.688309, 54.138546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.535849, 39.674736, 54.244099>,  <25.828110, 39.947803, 53.672653>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.535849, 39.674736, 54.244099> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.897221, 39.726513, 54.407589>,  <26.114044, 39.757580, 54.505684>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.897221, 39.726513, 54.407589>,  <25.535849, 39.674736, 54.244099>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.897221, 39.726513, 54.407589> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422767, 0.427426, 0.799109,
		-0.071266, -0.894737, 0.440872,
		0.903432, 0.129437, 0.408726,
		26.168251, 39.765343, 54.530209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.437263, 39.539608, 54.981308>,  <25.535849, 39.674736, 54.244099>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.437263, 39.539608, 54.981308> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.795261, 39.716263, 54.956188>,  <26.010059, 39.822254, 54.941116>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.795261, 39.716263, 54.956188>,  <25.437263, 39.539608, 54.981308>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.795261, 39.716263, 54.956188> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211108, 0.543350, 0.812529,
		0.392964, -0.713951, 0.579528,
		0.894993, 0.441638, -0.062796,
		26.063759, 39.848755, 54.937351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.793352, 39.507721, 55.636658>,  <25.437263, 39.539608, 54.981308>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.793352, 39.507721, 55.636658> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.931334, 39.830109, 55.444233>,  <26.014122, 40.023540, 55.328777>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.931334, 39.830109, 55.444233>,  <25.793352, 39.507721, 55.636658>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.931334, 39.830109, 55.444233> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247575, 0.572498, 0.781634,
		0.905381, -0.150527, 0.397022,
		0.344952, 0.805970, -0.481062,
		26.034819, 40.071899, 55.299915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.122904, 39.840382, 56.109440>,  <25.793352, 39.507721, 55.636658>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.122904, 39.840382, 56.109440> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.034138, 40.113022, 55.830536>,  <25.980877, 40.276608, 55.663193>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.034138, 40.113022, 55.830536>,  <26.122904, 39.840382, 56.109440>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.034138, 40.113022, 55.830536> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258478, 0.648385, 0.716090,
		0.940182, 0.339139, 0.032291,
		-0.221918, 0.681602, -0.697260,
		25.967562, 40.317501, 55.621357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.823626, 40.620720, 56.180138>,  <26.122904, 39.840382, 56.109440>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.823626, 40.620720, 56.180138> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.488695, 40.835590, 56.220783>,  <25.287737, 40.964512, 56.245171>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.488695, 40.835590, 56.220783>,  <25.823626, 40.620720, 56.180138>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.488695, 40.835590, 56.220783> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396714, -0.469131, -0.789009,
		-0.376164, -0.700971, 0.605921,
		-0.837328, 0.537174, 0.101614,
		25.237497, 40.996742, 56.251266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.448463, 40.336052, 56.655922>,  <25.823626, 40.620720, 56.180138>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.448463, 40.336052, 56.655922> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.440126, 40.193027, 57.029385>,  <25.435123, 40.107212, 57.253464>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.440126, 40.193027, 57.029385>,  <25.448463, 40.336052, 56.655922>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.440126, 40.193027, 57.029385> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280085, -0.898555, -0.337863,
		0.959749, 0.254461, 0.118876,
		-0.020843, -0.357559, 0.933658,
		25.433874, 40.085758, 57.309483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.998051, 40.102226, 56.788006>,  <25.448463, 40.336052, 56.655922>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.998051, 40.102226, 56.788006> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.769222, 39.880802, 57.030098>,  <25.631926, 39.747948, 57.175354>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.769222, 39.880802, 57.030098>,  <25.998051, 40.102226, 56.788006>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.769222, 39.880802, 57.030098> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507128, -0.818672, -0.269438,
		0.644636, 0.152791, 0.749066,
		-0.572071, -0.553562, 0.605230,
		25.597601, 39.714733, 57.211666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.457060, 39.769897, 57.157612>,  <25.998051, 40.102226, 56.788006>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.457060, 39.769897, 57.157612> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.125126, 39.549576, 57.193367>,  <25.925966, 39.417381, 57.214821>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.125126, 39.549576, 57.193367>,  <26.457060, 39.769897, 57.157612>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.125126, 39.549576, 57.193367> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537151, -0.831887, -0.139404,
		0.151143, -0.067669, 0.986193,
		-0.829834, -0.550805, 0.089385,
		25.876175, 39.384335, 57.220184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.589973, 39.337093, 57.710384>,  <26.457060, 39.769897, 57.157612>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.589973, 39.337093, 57.710384> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.295397, 39.171581, 57.496307>,  <26.118650, 39.072273, 57.367859>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.295397, 39.171581, 57.496307>,  <26.589973, 39.337093, 57.710384>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.295397, 39.171581, 57.496307> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579585, -0.793936, -0.183700,
		-0.348901, -0.445477, 0.824511,
		-0.736443, -0.413782, -0.535197,
		26.074463, 39.047447, 57.335747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.477016, 38.584671, 57.896992>,  <26.589973, 39.337093, 57.710384>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.477016, 38.584671, 57.896992> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.354649, 38.642277, 57.520550>,  <26.281227, 38.676838, 57.294685>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.354649, 38.642277, 57.520550>,  <26.477016, 38.584671, 57.896992>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.354649, 38.642277, 57.520550> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495592, -0.819919, -0.286568,
		-0.812896, -0.554070, 0.179462,
		-0.305923, 0.144010, -0.941101,
		26.262873, 38.685482, 57.238220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.595978, 38.011250, 57.675056>,  <26.477016, 38.584671, 57.896992>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.595978, 38.011250, 57.675056> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.462114, 38.147198, 57.323490>,  <26.381796, 38.228767, 57.112553>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.462114, 38.147198, 57.323490>,  <26.595978, 38.011250, 57.675056>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.462114, 38.147198, 57.323490> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607530, -0.635165, -0.476941,
		-0.720355, -0.693579, 0.006080,
		-0.334659, 0.339873, -0.878914,
		26.361717, 38.249161, 57.059814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.217255, 37.472965, 57.325489>,  <26.595978, 38.011250, 57.675056>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.217255, 37.472965, 57.325489> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.386522, 37.739887, 57.080334>,  <26.488083, 37.900040, 56.933239>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.386522, 37.739887, 57.080334>,  <26.217255, 37.472965, 57.325489>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.386522, 37.739887, 57.080334> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506400, -0.735117, -0.450735,
		-0.751323, -0.119630, -0.649002,
		0.423171, 0.667302, -0.612890,
		26.513474, 37.940079, 56.896465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.262577, 37.034893, 56.717392>,  <26.217255, 37.472965, 57.325489>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.262577, 37.034893, 56.717392> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.474617, 37.364738, 56.638390>,  <26.601841, 37.562645, 56.590988>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.474617, 37.364738, 56.638390>,  <26.262577, 37.034893, 56.717392>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.474617, 37.364738, 56.638390> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636890, -0.540984, -0.549278,
		-0.559791, 0.165380, -0.811963,
		0.530099, 0.824612, -0.197509,
		26.633646, 37.612122, 56.579136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.305706, 37.163761, 55.898651>,  <26.262577, 37.034893, 56.717392>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.305706, 37.163761, 55.898651> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.637688, 37.308987, 56.068054>,  <26.836876, 37.396122, 56.169697>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.637688, 37.308987, 56.068054>,  <26.305706, 37.163761, 55.898651>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.637688, 37.308987, 56.068054> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550273, -0.408280, -0.728359,
		-0.091533, 0.837550, -0.538639,
		0.829953, 0.363068, 0.423509,
		26.886673, 37.417908, 56.195107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.762655, 37.149422, 55.350906>,  <26.305706, 37.163761, 55.898651>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.762655, 37.149422, 55.350906> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.021471, 37.248150, 55.639465>,  <27.176762, 37.307384, 55.812603>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.021471, 37.248150, 55.639465>,  <26.762655, 37.149422, 55.350906>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.021471, 37.248150, 55.639465> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745159, -0.405093, -0.529752,
		0.161483, 0.880330, -0.446030,
		0.647041, 0.246817, 0.721401,
		27.215584, 37.322193, 55.855885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.361237, 37.380947, 54.994404>,  <26.762655, 37.149422, 55.350906>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.361237, 37.380947, 54.994404> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.486517, 37.302658, 55.366123>,  <27.561686, 37.255684, 55.589153>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.486517, 37.302658, 55.366123>,  <27.361237, 37.380947, 54.994404>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.486517, 37.302658, 55.366123> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844158, -0.390928, -0.366842,
		0.435088, 0.899371, 0.042781,
		0.313203, -0.195722, 0.929299,
		27.580479, 37.243942, 55.644913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.122904, 37.619217, 55.105999>,  <27.361237, 37.380947, 54.994404>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.122904, 37.619217, 55.105999> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.019932, 37.326328, 55.358215>,  <27.958149, 37.150597, 55.509544>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.019932, 37.326328, 55.358215>,  <28.122904, 37.619217, 55.105999>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.019932, 37.326328, 55.358215> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829938, -0.501751, -0.243823,
		0.494907, 0.460543, 0.736863,
		-0.257431, -0.732220, 0.630542,
		27.942703, 37.106663, 55.547379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.744335, 37.471523, 55.330772>,  <28.122904, 37.619217, 55.105999>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.744335, 37.471523, 55.330772> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.505127, 37.155849, 55.386715>,  <28.361601, 36.966446, 55.420280>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.505127, 37.155849, 55.386715>,  <28.744335, 37.471523, 55.330772>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.505127, 37.155849, 55.386715> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733589, -0.609251, -0.301100,
		0.322828, -0.077471, 0.943282,
		-0.598022, -0.789184, 0.139852,
		28.325720, 36.919094, 55.428669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.169008, 36.830639, 55.469494>,  <28.744335, 37.471523, 55.330772>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.169008, 36.830639, 55.469494> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.834414, 36.637714, 55.365444>,  <28.633657, 36.521957, 55.303017>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.834414, 36.637714, 55.365444>,  <29.169008, 36.830639, 55.469494>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.834414, 36.637714, 55.365444> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547244, -0.759941, -0.350733,
		-0.028512, -0.435733, 0.899624,
		-0.836487, -0.482314, -0.260120,
		28.583467, 36.493019, 55.287407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.692581, 36.667503, 56.066273>,  <29.169008, 36.830639, 55.469494>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.692581, 36.667503, 56.066273> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.043938, 36.850227, 56.010052>,  <30.254751, 36.959862, 55.976318>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.043938, 36.850227, 56.010052>,  <29.692581, 36.667503, 56.066273>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.043938, 36.850227, 56.010052> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374664, 0.840720, 0.390918,
		0.296739, -0.290719, 0.909631,
		0.878392, 0.456807, -0.140552,
		30.307455, 36.987270, 55.967888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.862225, 36.996506, 56.718037>,  <29.692581, 36.667503, 56.066273>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.862225, 36.996506, 56.718037> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.096312, 37.182720, 56.452465>,  <30.236763, 37.294449, 56.293121>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.096312, 37.182720, 56.452465>,  <29.862225, 36.996506, 56.718037>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.096312, 37.182720, 56.452465> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011747, 0.823555, 0.567114,
		0.810793, -0.324084, 0.487426,
		0.585215, 0.465538, -0.663926,
		30.271877, 37.322380, 56.253288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.401001, 37.288960, 57.145409>,  <29.862225, 36.996506, 56.718037>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.401001, 37.288960, 57.145409> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.422865, 37.502636, 56.807972>,  <30.435984, 37.630844, 56.605511>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.422865, 37.502636, 56.807972>,  <30.401001, 37.288960, 57.145409>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.422865, 37.502636, 56.807972> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125009, 0.841870, 0.525002,
		0.990649, 0.076760, 0.112795,
		0.054660, 0.534193, -0.843593,
		30.439262, 37.662895, 56.554893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.957548, 37.847145, 57.215897>,  <30.401001, 37.288960, 57.145409>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.957548, 37.847145, 57.215897> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.700403, 37.970295, 56.935341>,  <30.546116, 38.044186, 56.767010>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.700403, 37.970295, 56.935341>,  <30.957548, 37.847145, 57.215897>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.700403, 37.970295, 56.935341> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227112, 0.797883, 0.558393,
		0.731539, 0.518263, -0.443006,
		-0.642861, 0.307874, -0.701386,
		30.507545, 38.062656, 56.724926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.967976, 38.561623, 57.285942>,  <30.957548, 37.847145, 57.215897>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.967976, 38.561623, 57.285942> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.628300, 38.520603, 57.078728>,  <30.424494, 38.495991, 56.954399>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.628300, 38.520603, 57.078728>,  <30.967976, 38.561623, 57.285942>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.628300, 38.520603, 57.078728> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392997, 0.777974, 0.490213,
		0.352752, 0.619871, -0.700946,
		-0.849188, -0.102547, -0.518039,
		30.373543, 38.489838, 56.923317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.824280, 39.203682, 56.884842>,  <30.967976, 38.561623, 57.285942>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.824280, 39.203682, 56.884842> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.463327, 39.043385, 56.948227>,  <30.246756, 38.947205, 56.986259>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.463327, 39.043385, 56.948227>,  <30.824280, 39.203682, 56.884842>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.463327, 39.043385, 56.948227> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347844, 0.894421, 0.281096,
		-0.254380, 0.198536, -0.946506,
		-0.902383, -0.400742, 0.158463,
		30.192612, 38.923161, 56.995766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.287653, 39.748329, 56.751369>,  <30.824280, 39.203682, 56.884842>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.287653, 39.748329, 56.751369> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.093784, 39.465717, 56.957638>,  <29.977463, 39.296150, 57.081398>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.093784, 39.465717, 56.957638>,  <30.287653, 39.748329, 56.751369>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.093784, 39.465717, 56.957638> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506303, 0.707344, 0.493276,
		-0.713267, -0.022007, -0.700547,
		-0.484672, -0.706527, 0.515668,
		29.948383, 39.253757, 57.112339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.183052, 40.413345, 56.324600>,  <30.287653, 39.748329, 56.751369>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.183052, 40.413345, 56.324600> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.428566, 40.727837, 56.295979>,  <30.575874, 40.916531, 56.278805>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.428566, 40.727837, 56.295979>,  <30.183052, 40.413345, 56.324600>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.428566, 40.727837, 56.295979> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619458, -0.535810, -0.573742,
		-0.489428, 0.307830, -0.815905,
		0.613785, 0.786224, -0.071553,
		30.612701, 40.963703, 56.274513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.313276, 40.483482, 55.651196>,  <30.183052, 40.413345, 56.324600>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.313276, 40.483482, 55.651196> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.607023, 40.700130, 55.814827>,  <30.783272, 40.830120, 55.913006>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.607023, 40.700130, 55.814827>,  <30.313276, 40.483482, 55.651196>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.607023, 40.700130, 55.814827> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659274, -0.425853, -0.619683,
		-0.161428, 0.724771, -0.669812,
		0.734369, 0.541624, 0.409078,
		30.827333, 40.862617, 55.937550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.842617, 40.828430, 55.124592>,  <30.313276, 40.483482, 55.651196>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.842617, 40.828430, 55.124592> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.084532, 40.813423, 55.442795>,  <31.229681, 40.804420, 55.633717>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.084532, 40.813423, 55.442795>,  <30.842617, 40.828430, 55.124592>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.084532, 40.813423, 55.442795> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748085, -0.315822, -0.583631,
		0.273134, 0.948077, -0.162938,
		0.604786, -0.037518, 0.795504,
		31.265968, 40.802166, 55.681446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.459040, 41.128929, 54.894447>,  <30.842617, 40.828430, 55.124592>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.459040, 41.128929, 54.894447> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.564405, 40.923000, 55.220779>,  <31.627625, 40.799442, 55.416580>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.564405, 40.923000, 55.220779>,  <31.459040, 41.128929, 54.894447>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.564405, 40.923000, 55.220779> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662336, -0.518348, -0.540950,
		0.701373, 0.682846, 0.204443,
		0.263413, -0.514818, 0.815829,
		31.643429, 40.768555, 55.465527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.197578, 41.070648, 54.941586>,  <31.459040, 41.128929, 54.894447>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.197578, 41.070648, 54.941586> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.077690, 40.764893, 55.169930>,  <32.005756, 40.581440, 55.306934>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.077690, 40.764893, 55.169930>,  <32.197578, 41.070648, 54.941586>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.077690, 40.764893, 55.169930> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727058, -0.570433, -0.382089,
		0.617701, 0.300527, 0.726725,
		-0.299720, -0.764388, 0.570858,
		31.987774, 40.535576, 55.341187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.809937, 40.767532, 55.131111>,  <32.197578, 41.070648, 54.941586>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.809937, 40.767532, 55.131111> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.545753, 40.468048, 55.153862>,  <32.387245, 40.288357, 55.167515>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.545753, 40.468048, 55.153862>,  <32.809937, 40.767532, 55.131111>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.545753, 40.468048, 55.153862> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575383, -0.553320, -0.602305,
		0.482424, -0.365067, 0.796237,
		-0.660455, -0.748708, 0.056882,
		32.347618, 40.243435, 55.170925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.248802, 40.201988, 55.234562>,  <32.809937, 40.767532, 55.131111>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.248802, 40.201988, 55.234562> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.897472, 40.027588, 55.156136>,  <32.686672, 39.922947, 55.109077>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.897472, 40.027588, 55.156136>,  <33.248802, 40.201988, 55.234562>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.897472, 40.027588, 55.156136> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464880, -0.683327, -0.562984,
		0.111483, -0.585632, 0.802874,
		-0.878327, -0.436003, -0.196069,
		32.633976, 39.896786, 55.097313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<27.469357, 42.904846, 54.335026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.275877, 42.559940, 54.395084>,  <27.159790, 42.352997, 54.431122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.275877, 42.559940, 54.395084>,  <27.469357, 42.904846, 54.335026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.275877, 42.559940, 54.395084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427566, -0.382481, -0.819082,
		0.763692, -0.331988, 0.553678,
		-0.483697, -0.862260, 0.150151,
		27.130768, 42.301262, 54.440128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.976414, 42.383530, 54.346680>,  <27.469357, 42.904846, 54.335026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.976414, 42.383530, 54.346680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.612267, 42.256725, 54.240295>,  <27.393778, 42.180641, 54.176464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.612267, 42.256725, 54.240295>,  <27.976414, 42.383530, 54.346680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.612267, 42.256725, 54.240295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388479, -0.433362, -0.813192,
		0.142532, -0.843624, 0.517670,
		-0.910367, -0.317010, -0.265962,
		27.339157, 42.161621, 54.160507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.970541, 41.596443, 54.148407>,  <27.976414, 42.383530, 54.346680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.970541, 41.596443, 54.148407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.655256, 41.754528, 53.959717>,  <27.466085, 41.849380, 53.846500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.655256, 41.754528, 53.959717>,  <27.970541, 41.596443, 54.148407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.655256, 41.754528, 53.959717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274744, -0.459918, -0.844388,
		-0.550676, -0.795158, 0.253927,
		-0.788208, 0.395220, -0.471731,
		27.418793, 41.873093, 53.818199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.696489, 40.972317, 53.717003>,  <27.970541, 41.596443, 54.148407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.696489, 40.972317, 53.717003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.577484, 41.312428, 53.543327>,  <27.506081, 41.516495, 53.439121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.577484, 41.312428, 53.543327>,  <27.696489, 40.972317, 53.717003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.577484, 41.312428, 53.543327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127240, -0.415411, -0.900691,
		-0.946201, -0.323213, 0.015401,
		-0.297513, 0.850274, -0.434188,
		27.488230, 41.567509, 53.413071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.443092, 40.686401, 53.100826>,  <27.696489, 40.972317, 53.717003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.443092, 40.686401, 53.100826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.427217, 41.079704, 53.029682>,  <27.417692, 41.315685, 52.986996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.427217, 41.079704, 53.029682>,  <27.443092, 40.686401, 53.100826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.427217, 41.079704, 53.029682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257162, -0.161953, -0.952701,
		-0.965553, -0.083549, -0.246428,
		-0.039688, 0.983255, -0.177860,
		27.415312, 41.374680, 52.976322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.980957, 40.844204, 52.473228>,  <27.443092, 40.686401, 53.100826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.980957, 40.844204, 52.473228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.220152, 41.162354, 52.512806>,  <27.363668, 41.353245, 52.536552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.220152, 41.162354, 52.512806>,  <26.980957, 40.844204, 52.473228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.220152, 41.162354, 52.512806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302167, -0.109384, -0.946958,
		-0.742365, 0.596166, -0.305746,
		0.597988, 0.795375, 0.098939,
		27.399548, 41.400967, 52.542488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.050920, 41.198978, 51.848278>,  <26.980957, 40.844204, 52.473228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.050920, 41.198978, 51.848278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.367943, 41.399239, 51.987534>,  <27.558155, 41.519394, 52.071087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.367943, 41.399239, 51.987534>,  <27.050920, 41.198978, 51.848278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.367943, 41.399239, 51.987534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462018, -0.120395, -0.878660,
		-0.397990, 0.857234, -0.326731,
		0.792555, 0.500654, 0.348142,
		27.605709, 41.549435, 52.091976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.245733, 41.631748, 51.322960>,  <27.050920, 41.198978, 51.848278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.245733, 41.631748, 51.322960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.574179, 41.624081, 51.551136>,  <27.771246, 41.619480, 51.688042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.574179, 41.624081, 51.551136>,  <27.245733, 41.631748, 51.322960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.574179, 41.624081, 51.551136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570679, 0.010024, -0.821112,
		0.010024, 0.999766, 0.019172,
		0.821112, -0.019172, 0.570445,
		27.820513, 41.618328, 51.722271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.725437, 42.155651, 51.031982>,  <27.245733, 41.631748, 51.322960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.725437, 42.155651, 51.031982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.935032, 41.903530, 51.261120>,  <28.060789, 41.752258, 51.398602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.935032, 41.903530, 51.261120>,  <27.725437, 42.155651, 51.031982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.935032, 41.903530, 51.261120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693582, -0.074595, -0.716505,
		0.494347, 0.772757, 0.398080,
		0.523989, -0.630304, 0.572846,
		28.092228, 41.714439, 51.432972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.437159, 42.409138, 51.152588>,  <27.725437, 42.155651, 51.031982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.437159, 42.409138, 51.152588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.476971, 42.014885, 51.207172>,  <28.500858, 41.778332, 51.239925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.476971, 42.014885, 51.207172>,  <28.437159, 42.409138, 51.152588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.476971, 42.014885, 51.207172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605625, -0.048811, -0.794252,
		0.789502, 0.161696, 0.592065,
		0.099529, -0.985633, 0.136463,
		28.506828, 41.719196, 51.248112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.149965, 42.264545, 51.091511>,  <28.437159, 42.409138, 51.152588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.149965, 42.264545, 51.091511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.990915, 41.899494, 51.053551>,  <28.895485, 41.680466, 51.030773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.990915, 41.899494, 51.053551>,  <29.149965, 42.264545, 51.091511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.990915, 41.899494, 51.053551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571204, -0.165265, -0.803999,
		0.718067, -0.373899, 0.587009,
		-0.397626, -0.912627, -0.094901,
		28.871628, 41.625706, 51.025082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.713251, 41.710926, 51.026947>,  <29.149965, 42.264545, 51.091511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.713251, 41.710926, 51.026947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.377707, 41.592289, 50.844364>,  <29.176380, 41.521107, 50.734814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.377707, 41.592289, 50.844364>,  <29.713251, 41.710926, 51.026947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.377707, 41.592289, 50.844364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499983, -0.088226, -0.861530,
		0.215249, -0.950921, 0.222298,
		-0.838859, -0.296589, -0.456454,
		29.126049, 41.503311, 50.707428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.021357, 41.959454, 51.593048>,  <29.713251, 41.710926, 51.026947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.021357, 41.959454, 51.593048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.256807, 41.932777, 51.915310>,  <30.398077, 41.916771, 52.108665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.256807, 41.932777, 51.915310>,  <30.021357, 41.959454, 51.593048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.256807, 41.932777, 51.915310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599805, 0.632130, 0.490556,
		-0.541990, -0.771987, 0.332088,
		0.588626, -0.066688, 0.805650,
		30.433395, 41.912769, 52.157005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.508568, 41.880718, 52.197647>,  <30.021357, 41.959454, 51.593048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.508568, 41.880718, 52.197647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.864737, 41.962326, 52.360382>,  <30.078438, 42.011292, 52.458023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.864737, 41.962326, 52.360382>,  <29.508568, 41.880718, 52.197647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.864737, 41.962326, 52.360382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444997, 0.577860, 0.684145,
		-0.095517, -0.790223, 0.605330,
		0.890423, 0.204023, 0.406842,
		30.131865, 42.023533, 52.482433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.393204, 41.725014, 52.935955>,  <29.508568, 41.880718, 52.197647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.393204, 41.725014, 52.935955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.702440, 41.977291, 52.908962>,  <29.887981, 42.128658, 52.892769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.702440, 41.977291, 52.908962>,  <29.393204, 41.725014, 52.935955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.702440, 41.977291, 52.908962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388323, 0.554728, 0.735855,
		0.501530, -0.542681, 0.673769,
		0.773093, 0.630693, -0.067477,
		29.934368, 42.166500, 52.888718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.686981, 41.777977, 53.580597>,  <29.393204, 41.725014, 52.935955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.686981, 41.777977, 53.580597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.799509, 42.116669, 53.399975>,  <29.867025, 42.319885, 53.291599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.799509, 42.116669, 53.399975>,  <29.686981, 41.777977, 53.580597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.799509, 42.116669, 53.399975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260974, 0.520333, 0.813109,
		0.923445, -0.110899, 0.367355,
		0.281320, 0.846732, -0.451557,
		29.883905, 42.370689, 53.264507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.144829, 42.146152, 54.133774>,  <29.686981, 41.777977, 53.580597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.144829, 42.146152, 54.133774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.007929, 42.412052, 53.868153>,  <29.925789, 42.571590, 53.708778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.007929, 42.412052, 53.868153>,  <30.144829, 42.146152, 54.133774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.007929, 42.412052, 53.868153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046881, 0.693777, 0.718663,
		0.938438, 0.277095, -0.206282,
		-0.342252, 0.664750, -0.664057,
		29.905252, 42.611477, 53.668934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.567707, 42.766495, 54.221485>,  <30.144829, 42.146152, 54.133774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.567707, 42.766495, 54.221485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.234951, 42.870651, 54.025463>,  <30.035297, 42.933144, 53.907848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.234951, 42.870651, 54.025463>,  <30.567707, 42.766495, 54.221485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.234951, 42.870651, 54.025463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202040, 0.680358, 0.704480,
		0.516852, 0.685062, -0.513375,
		-0.831891, 0.260390, -0.490055,
		29.985384, 42.948769, 53.878448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.587847, 43.563740, 54.201050>,  <30.567707, 42.766495, 54.221485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.587847, 43.563740, 54.201050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.213495, 43.435055, 54.143593>,  <29.988884, 43.357845, 54.109119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.213495, 43.435055, 54.143593>,  <30.587847, 43.563740, 54.201050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.213495, 43.435055, 54.143593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337607, 0.702262, 0.626777,
		-0.100765, 0.635082, -0.765844,
		-0.935878, -0.321711, -0.143645,
		29.932732, 43.338543, 54.100498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.323984, 44.205009, 54.216778>,  <30.587847, 43.563740, 54.201050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.323984, 44.205009, 54.216778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.026480, 43.939758, 54.250427>,  <29.847977, 43.780605, 54.270618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.026480, 43.939758, 54.250427>,  <30.323984, 44.205009, 54.216778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.026480, 43.939758, 54.250427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475643, 0.613452, 0.630429,
		-0.469662, 0.428876, -0.771675,
		-0.743761, -0.663130, 0.084124,
		29.803350, 43.740818, 54.275665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.834944, 44.687382, 54.371601>,  <30.323984, 44.205009, 54.216778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.834944, 44.687382, 54.371601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.668419, 44.337433, 54.470631>,  <29.568504, 44.127464, 54.530048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.668419, 44.337433, 54.470631>,  <29.834944, 44.687382, 54.371601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.668419, 44.337433, 54.470631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623711, 0.472913, 0.622365,
		-0.661567, 0.104684, -0.742544,
		-0.416311, -0.874868, 0.247571,
		29.543526, 44.074974, 54.544903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.065125, 44.665478, 54.219204>,  <29.834944, 44.687382, 54.371601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.065125, 44.665478, 54.219204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.142136, 44.400875, 54.509125>,  <29.188341, 44.242115, 54.683079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.142136, 44.400875, 54.509125>,  <29.065125, 44.665478, 54.219204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.142136, 44.400875, 54.509125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638666, 0.476303, 0.604352,
		-0.745010, -0.579261, -0.330782,
		0.192526, -0.661507, 0.724804,
		29.199894, 44.202423, 54.726566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.517326, 44.797668, 54.620739>,  <29.065125, 44.665478, 54.219204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.517326, 44.797668, 54.620739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.744724, 44.554638, 54.842606>,  <28.881163, 44.408817, 54.975727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.744724, 44.554638, 54.842606>,  <28.517326, 44.797668, 54.620739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.744724, 44.554638, 54.842606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559498, 0.208752, 0.802112,
		-0.603136, -0.766335, -0.221266,
		0.568497, -0.607580, 0.554668,
		28.915274, 44.372364, 55.009007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.012190, 44.460541, 55.069420>,  <28.517326, 44.797668, 54.620739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.012190, 44.460541, 55.069420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.363487, 44.374962, 55.240494>,  <28.574266, 44.323616, 55.343140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.363487, 44.374962, 55.240494>,  <28.012190, 44.460541, 55.069420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.363487, 44.374962, 55.240494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423277, 0.068402, 0.903414,
		-0.222537, -0.974447, -0.030486,
		0.878245, -0.213947, 0.427683,
		28.626961, 44.310780, 55.368797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.994522, 43.855927, 55.612793>,  <28.012190, 44.460541, 55.069420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.994522, 43.855927, 55.612793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.284595, 44.112125, 55.713882>,  <28.458639, 44.265846, 55.774536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.284595, 44.112125, 55.713882>,  <27.994522, 43.855927, 55.612793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.284595, 44.112125, 55.713882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450038, 0.163116, 0.877986,
		0.521126, -0.750437, 0.406538,
		0.725186, 0.640498, 0.252722,
		28.502151, 44.304276, 55.789700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.158478, 43.623356, 56.359016>,  <27.994522, 43.855927, 55.612793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.158478, 43.623356, 56.359016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.298925, 43.994133, 56.306114>,  <28.383194, 44.216599, 56.274372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.298925, 43.994133, 56.306114>,  <28.158478, 43.623356, 56.359016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.298925, 43.994133, 56.306114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248616, 0.228471, 0.941271,
		0.902721, -0.297620, 0.310673,
		0.351121, 0.926943, -0.132253,
		28.404263, 44.272217, 56.266438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.880146, 43.213310, 56.426918>,  <28.158478, 43.623356, 56.359016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.880146, 43.213310, 56.426918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.846140, 43.014038, 56.772076>,  <28.825737, 42.894474, 56.979172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.846140, 43.014038, 56.772076>,  <28.880146, 43.213310, 56.426918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.846140, 43.014038, 56.772076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639176, -0.691623, -0.336322,
		0.764347, 0.522951, 0.377221,
		-0.085015, -0.498177, 0.862898,
		28.820635, 42.864586, 57.030945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.551016, 43.170345, 56.751961>,  <28.880146, 43.213310, 56.426918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.551016, 43.170345, 56.751961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.317036, 42.868004, 56.869614>,  <29.176647, 42.686600, 56.940205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.317036, 42.868004, 56.869614>,  <29.551016, 43.170345, 56.751961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.317036, 42.868004, 56.869614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712546, -0.652146, -0.258814,
		0.387441, 0.058185, 0.920057,
		-0.584952, -0.755857, 0.294128,
		29.141550, 42.641247, 56.957851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.016611, 42.841282, 57.228519>,  <29.551016, 43.170345, 56.751961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.016611, 42.841282, 57.228519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.720633, 42.582764, 57.153915>,  <29.543045, 42.427654, 57.109154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.720633, 42.582764, 57.153915>,  <30.016611, 42.841282, 57.228519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.720633, 42.582764, 57.153915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670936, -0.728984, -0.135749,
		-0.048229, -0.225583, 0.973029,
		-0.739945, -0.646293, -0.186510,
		29.498650, 42.388874, 57.097961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.116316, 42.455551, 57.699200>,  <30.016611, 42.841282, 57.228519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.116316, 42.455551, 57.699200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.905693, 42.258808, 57.421837>,  <29.779320, 42.140762, 57.255421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.905693, 42.258808, 57.421837>,  <30.116316, 42.455551, 57.699200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.905693, 42.258808, 57.421837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765937, -0.628390, -0.135893,
		-0.368887, -0.602659, 0.707618,
		-0.526558, -0.491862, -0.693404,
		29.747726, 42.111248, 57.213818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.267805, 41.694958, 57.751507>,  <30.116316, 42.455551, 57.699200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.267805, 41.694958, 57.751507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.116238, 41.715523, 57.381905>,  <30.025297, 41.727863, 57.160145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.116238, 41.715523, 57.381905>,  <30.267805, 41.694958, 57.751507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.116238, 41.715523, 57.381905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701689, -0.635020, -0.323084,
		-0.603370, -0.770783, 0.204544,
		-0.378917, 0.051413, -0.924001,
		30.002563, 41.730946, 57.104706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.049023, 41.004860, 57.540207>,  <30.267805, 41.694958, 57.751507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.049023, 41.004860, 57.540207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.106934, 41.210899, 57.202282>,  <30.141680, 41.334522, 56.999527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.106934, 41.210899, 57.202282>,  <30.049023, 41.004860, 57.540207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.106934, 41.210899, 57.202282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771137, -0.593729, -0.229856,
		-0.619990, -0.618190, -0.483170,
		0.144778, 0.515099, -0.844815,
		30.150368, 41.365429, 56.948837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.274223, 40.515167, 57.094154>,  <30.049023, 41.004860, 57.540207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.274223, 40.515167, 57.094154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.382532, 40.849430, 56.903008>,  <30.447517, 41.049988, 56.788319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.382532, 40.849430, 56.903008>,  <30.274223, 40.515167, 57.094154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.382532, 40.849430, 56.903008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751041, -0.493912, -0.438164,
		-0.602180, -0.240255, -0.761352,
		0.270770, 0.835661, -0.477865,
		30.463762, 41.100128, 56.759647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.606249, 40.091072, 56.935753>,  <30.274223, 40.515167, 57.094154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.606249, 40.091072, 56.935753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.625668, 39.783352, 57.190571>,  <29.637320, 39.598721, 57.343460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.625668, 39.783352, 57.190571>,  <29.606249, 40.091072, 56.935753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.625668, 39.783352, 57.190571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740973, 0.399948, 0.539445,
		-0.669778, -0.498221, -0.550612,
		0.048547, -0.769297, 0.637044,
		29.640232, 39.552563, 57.381683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.953182, 39.739712, 56.829956>,  <29.606249, 40.091072, 56.935753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.953182, 39.739712, 56.829956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.099035, 39.622154, 57.183376>,  <29.186548, 39.551620, 57.395428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.099035, 39.622154, 57.183376>,  <28.953182, 39.739712, 56.829956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.099035, 39.622154, 57.183376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842151, 0.300750, 0.447585,
		-0.397272, -0.907290, -0.137841,
		0.364634, -0.293896, 0.883554,
		29.208426, 39.533985, 57.448444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.409534, 39.398720, 57.076389>,  <28.953182, 39.739712, 56.829956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.409534, 39.398720, 57.076389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.636568, 39.522297, 57.381649>,  <28.772789, 39.596443, 57.564804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.636568, 39.522297, 57.381649>,  <28.409534, 39.398720, 57.076389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.636568, 39.522297, 57.381649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811481, 0.366518, 0.455153,
		-0.139094, -0.877622, 0.458729,
		0.567585, 0.308940, 0.763154,
		28.806843, 39.614979, 57.610596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.030571, 39.200996, 57.635887>,  <28.409534, 39.398720, 57.076389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.030571, 39.200996, 57.635887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.281740, 39.468948, 57.794369>,  <28.432442, 39.629719, 57.889458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.281740, 39.468948, 57.794369>,  <28.030571, 39.200996, 57.635887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.281740, 39.468948, 57.794369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754877, 0.400324, 0.519520,
		0.189406, -0.625303, 0.757048,
		0.627922, 0.669878, 0.396203,
		28.470118, 39.669910, 57.913231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.796188, 39.261978, 58.300758>,  <28.030571, 39.200996, 57.635887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.796188, 39.261978, 58.300758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.004301, 39.596104, 58.229694>,  <28.129169, 39.796577, 58.187057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.004301, 39.596104, 58.229694>,  <27.796188, 39.261978, 58.300758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.004301, 39.596104, 58.229694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667844, 0.527628, 0.524969,
		0.532246, -0.154489, 0.832374,
		0.520286, 0.835309, -0.177654,
		28.160385, 39.846695, 58.176395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.594687, 39.645882, 58.852200>,  <27.796188, 39.261978, 58.300758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.594687, 39.645882, 58.852200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.766111, 39.926071, 58.623932>,  <27.868967, 40.094185, 58.486973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.766111, 39.926071, 58.623932>,  <27.594687, 39.645882, 58.852200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.766111, 39.926071, 58.623932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615902, 0.688615, 0.382720,
		0.661059, 0.187458, 0.726540,
		0.428562, 0.700478, -0.570671,
		27.894680, 40.136215, 58.452732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.653217, 40.296024, 59.358215>,  <27.594687, 39.645882, 58.852200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.653217, 40.296024, 59.358215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.671778, 40.426727, 58.980629>,  <27.682915, 40.505150, 58.754078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.671778, 40.426727, 58.980629>,  <27.653217, 40.296024, 59.358215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.671778, 40.426727, 58.980629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632143, 0.741302, 0.225534,
		0.773461, 0.586257, 0.240958,
		0.046402, 0.326762, -0.943967,
		27.685698, 40.524757, 58.697437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.629503, 41.044125, 59.455856>,  <27.653217, 40.296024, 59.358215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.629503, 41.044125, 59.455856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.544027, 40.996529, 59.068005>,  <27.492743, 40.967972, 58.835293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.544027, 40.996529, 59.068005>,  <27.629503, 41.044125, 59.455856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.544027, 40.996529, 59.068005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512669, 0.858553, 0.007621,
		0.831569, 0.498726, -0.244469,
		-0.213690, -0.118994, -0.969627,
		27.479921, 40.960831, 58.777115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.700811, 41.774487, 59.208710>,  <27.629503, 41.044125, 59.455856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.700811, 41.774487, 59.208710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.469542, 41.557667, 58.964775>,  <27.330780, 41.427574, 58.818417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.469542, 41.557667, 58.964775>,  <27.700811, 41.774487, 59.208710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.469542, 41.557667, 58.964775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549335, 0.811249, -0.200264,
		0.603281, 0.219216, -0.766809,
		-0.578173, -0.542050, -0.609834,
		27.296089, 41.395050, 58.781826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 11

// nucleotide -1

// particle -1
sphere {
	<35.560669, 32.516544, 45.413807> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.778801, 32.817802, 45.560989>,  <35.909679, 32.998558, 45.649300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.778801, 32.817802, 45.560989>,  <35.560669, 32.516544, 45.413807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.778801, 32.817802, 45.560989> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813344, 0.369279, 0.449560,
		0.202706, -0.544432, 0.813944,
		0.545328, 0.753145, 0.367956,
		35.942398, 33.043747, 45.671375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.387833, 32.571163, 46.046791>,  <35.560669, 32.516544, 45.413807>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.387833, 32.571163, 46.046791> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.540394, 32.939457, 46.013851>,  <35.631931, 33.160435, 45.994087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.540394, 32.939457, 46.013851>,  <35.387833, 32.571163, 46.046791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.540394, 32.939457, 46.013851> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692031, 0.343454, 0.634928,
		0.612883, -0.185174, 0.768170,
		0.381403, 0.920733, -0.082350,
		35.654816, 33.215675, 45.989147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.462742, 32.753544, 46.730873>,  <35.387833, 32.571163, 46.046791>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.462742, 32.753544, 46.730873> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.462101, 33.101341, 46.533298>,  <35.461716, 33.310020, 46.414753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.462101, 33.101341, 46.533298>,  <35.462742, 32.753544, 46.730873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.462101, 33.101341, 46.533298> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515188, 0.422624, 0.745634,
		0.857076, 0.255665, 0.447277,
		-0.001603, 0.869497, -0.493936,
		35.461620, 33.362190, 46.385117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.611435, 33.240028, 47.206234>,  <35.462742, 32.753544, 46.730873>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.611435, 33.240028, 47.206234> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.460598, 33.455685, 46.905003>,  <35.370094, 33.585079, 46.724266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.460598, 33.455685, 46.905003>,  <35.611435, 33.240028, 47.206234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.460598, 33.455685, 46.905003> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488369, 0.575129, 0.656294,
		0.786953, 0.615264, 0.046424,
		-0.377094, 0.539145, -0.753075,
		35.347469, 33.617428, 46.679081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.594898, 33.983585, 47.424541>,  <35.611435, 33.240028, 47.206234>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.594898, 33.983585, 47.424541> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.313465, 33.949230, 47.142380>,  <35.144604, 33.928616, 46.973083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.313465, 33.949230, 47.142380>,  <35.594898, 33.983585, 47.424541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.313465, 33.949230, 47.142380> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617771, 0.564504, 0.547444,
		0.351181, 0.820950, -0.450237,
		-0.703584, -0.085892, -0.705402,
		35.102390, 33.923462, 46.930759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.203621, 34.631866, 47.438572>,  <35.594898, 33.983585, 47.424541>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.203621, 34.631866, 47.438572> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.957207, 34.381596, 47.247150>,  <34.809357, 34.231434, 47.132298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.957207, 34.381596, 47.247150>,  <35.203621, 34.631866, 47.438572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.957207, 34.381596, 47.247150> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781280, 0.407820, 0.472531,
		-0.100488, 0.664986, -0.740065,
		-0.616040, -0.625681, -0.478559,
		34.772396, 34.193890, 47.103584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.677933, 35.064392, 47.176559>,  <35.203621, 34.631866, 47.438572>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.677933, 35.064392, 47.176559> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.536793, 34.691330, 47.206635>,  <34.452106, 34.467495, 47.224678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.536793, 34.691330, 47.206635>,  <34.677933, 35.064392, 47.176559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.536793, 34.691330, 47.206635> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828945, 0.348863, 0.437201,
		-0.433986, 0.091944, -0.896216,
		-0.352854, -0.932653, 0.075185,
		34.430935, 34.411533, 47.229191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.880730, 35.052227, 47.050945>,  <34.677933, 35.064392, 47.176559>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.880730, 35.052227, 47.050945> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.973576, 34.691265, 47.196156>,  <34.029282, 34.474686, 47.283279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.973576, 34.691265, 47.196156>,  <33.880730, 35.052227, 47.050945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.973576, 34.691265, 47.196156> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834131, 0.007315, 0.551518,
		-0.500349, -0.430824, -0.751027,
		0.232113, -0.902407, 0.363024,
		34.043209, 34.420544, 47.305061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.299770, 34.641518, 46.916981>,  <33.880730, 35.052227, 47.050945>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.299770, 34.641518, 46.916981> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.489624, 34.466396, 47.222408>,  <33.603539, 34.361324, 47.405666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.489624, 34.466396, 47.222408>,  <33.299770, 34.641518, 46.916981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.489624, 34.466396, 47.222408> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854016, -0.019121, 0.519895,
		-0.213016, -0.898864, -0.382972,
		0.474638, -0.437810, 0.763571,
		33.632015, 34.335052, 47.451481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.880043, 34.201767, 47.063606>,  <33.299770, 34.641518, 46.916981>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.880043, 34.201767, 47.063606> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.104759, 34.243393, 47.391888>,  <33.239590, 34.268368, 47.588856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.104759, 34.243393, 47.391888>,  <32.880043, 34.201767, 47.063606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.104759, 34.243393, 47.391888> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824207, 0.155804, 0.544434,
		-0.071211, -0.982291, 0.173303,
		0.561794, 0.104068, 0.820705,
		33.273296, 34.274612, 47.638100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.569332, 33.738300, 47.567558>,  <32.880043, 34.201767, 47.063606>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.569332, 33.738300, 47.567558> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.795029, 34.013885, 47.749527>,  <32.930447, 34.179237, 47.858707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.795029, 34.013885, 47.749527>,  <32.569332, 33.738300, 47.567558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.795029, 34.013885, 47.749527> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700237, 0.107451, 0.705778,
		0.437375, -0.716784, 0.543068,
		0.564243, 0.688966, 0.454923,
		32.964302, 34.220577, 47.886005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.745571, 33.511459, 48.336903>,  <32.569332, 33.738300, 47.567558>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.745571, 33.511459, 48.336903> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.774403, 33.907879, 48.291946>,  <32.791702, 34.145729, 48.264973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.774403, 33.907879, 48.291946>,  <32.745571, 33.511459, 48.336903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.774403, 33.907879, 48.291946> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683486, 0.131144, 0.718086,
		0.726396, 0.025061, 0.686819,
		0.072076, 0.991047, -0.112391,
		32.796024, 34.205193, 48.258228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.511826, 33.772877, 48.990330>,  <32.745571, 33.511459, 48.336903>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.511826, 33.772877, 48.990330> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.485294, 34.105366, 48.769539>,  <32.469376, 34.304859, 48.637066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.485294, 34.105366, 48.769539>,  <32.511826, 33.772877, 48.990330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.485294, 34.105366, 48.769539> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773661, 0.306504, 0.554530,
		0.630118, 0.463823, 0.622751,
		-0.066328, 0.831218, -0.551976,
		32.465397, 34.354733, 48.603947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.585705, 34.353588, 49.435398>,  <32.511826, 33.772877, 48.990330>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.585705, 34.353588, 49.435398> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.359352, 34.444027, 49.118248>,  <32.223541, 34.498291, 48.927956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.359352, 34.444027, 49.118248>,  <32.585705, 34.353588, 49.435398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.359352, 34.444027, 49.118248> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722615, 0.327036, 0.608995,
		0.396993, 0.917566, -0.021680,
		-0.565883, 0.226100, -0.792878,
		32.189587, 34.511856, 48.880386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.169098, 34.942966, 49.580753>,  <32.585705, 34.353588, 49.435398>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.169098, 34.942966, 49.580753> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.972588, 34.756699, 49.286324>,  <31.854681, 34.644939, 49.109665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.972588, 34.756699, 49.286324>,  <32.169098, 34.942966, 49.580753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.972588, 34.756699, 49.286324> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870731, 0.241339, 0.428467,
		-0.021880, 0.851416, -0.524035,
		-0.491273, -0.465668, -0.736073,
		31.825205, 34.616997, 49.065502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.723726, 35.403694, 49.349293>,  <32.169098, 34.942966, 49.580753>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.723726, 35.403694, 49.349293> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.591930, 35.030407, 49.291969>,  <31.512852, 34.806435, 49.257576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.591930, 35.030407, 49.291969>,  <31.723726, 35.403694, 49.349293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.591930, 35.030407, 49.291969> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831402, 0.214848, 0.512456,
		-0.447444, 0.287997, -0.846671,
		-0.329491, -0.933220, -0.143309,
		31.493084, 34.750443, 49.248978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.068077, 35.432602, 49.004807>,  <31.723726, 35.403694, 49.349293>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.068077, 35.432602, 49.004807> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.043869, 35.063869, 49.157940>,  <31.029345, 34.842628, 49.249821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.043869, 35.063869, 49.157940>,  <31.068077, 35.432602, 49.004807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.043869, 35.063869, 49.157940> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830543, 0.259244, 0.492941,
		-0.553657, -0.288128, -0.781311,
		-0.060520, -0.921832, 0.382835,
		31.025713, 34.787319, 49.272789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.414192, 35.248180, 49.024849>,  <31.068077, 35.432602, 49.004807>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.414192, 35.248180, 49.024849> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.551849, 34.976753, 49.284420>,  <30.634443, 34.813896, 49.440163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.551849, 34.976753, 49.284420>,  <30.414192, 35.248180, 49.024849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.551849, 34.976753, 49.284420> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859298, 0.050905, 0.508935,
		-0.378383, -0.732769, -0.565576,
		0.344141, -0.678571, 0.648929,
		30.655092, 34.773182, 49.479099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.874531, 34.778248, 49.143078>,  <30.414192, 35.248180, 49.024849>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.874531, 34.778248, 49.143078> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.100958, 34.703281, 49.464188>,  <30.236814, 34.658302, 49.656853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.100958, 34.703281, 49.464188>,  <29.874531, 34.778248, 49.143078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.100958, 34.703281, 49.464188> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815915, 0.011637, 0.578054,
		-0.117681, -0.982211, -0.146331,
		0.566068, -0.187419, 0.802771,
		30.270779, 34.647057, 49.705017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.463949, 34.271851, 49.424858>,  <29.874531, 34.778248, 49.143078>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.463949, 34.271851, 49.424858> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.714712, 34.371006, 49.720299>,  <29.865170, 34.430500, 49.897564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.714712, 34.371006, 49.720299>,  <29.463949, 34.271851, 49.424858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.714712, 34.371006, 49.720299> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765796, 0.021665, 0.642718,
		0.143321, -0.968546, 0.203415,
		0.626909, 0.247889, 0.738604,
		29.902784, 34.445374, 49.941879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.392601, 33.824795, 49.965721>,  <29.463949, 34.271851, 49.424858>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.392601, 33.824795, 49.965721> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.541994, 34.168232, 50.106190>,  <29.631630, 34.374294, 50.190472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.541994, 34.168232, 50.106190>,  <29.392601, 33.824795, 49.965721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.541994, 34.168232, 50.106190> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808761, 0.115977, 0.576589,
		0.454331, -0.499359, 0.737715,
		0.373483, 0.858597, 0.351170,
		29.654039, 34.425812, 50.211540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.176947, 33.819534, 50.649902>,  <29.392601, 33.824795, 49.965721>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.176947, 33.819534, 50.649902> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.268076, 34.205860, 50.600422>,  <29.322754, 34.437656, 50.570732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.268076, 34.205860, 50.600422>,  <29.176947, 33.819534, 50.649902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.268076, 34.205860, 50.600422> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685047, 0.249268, 0.684526,
		0.691959, -0.071209, 0.718416,
		0.227823, 0.965813, -0.123701,
		29.336422, 34.495605, 50.563313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.232849, 34.179981, 51.375980>,  <29.176947, 33.819534, 50.649902>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.232849, 34.179981, 51.375980> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.165434, 34.450123, 51.088791>,  <29.124985, 34.612209, 50.916477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.165434, 34.450123, 51.088791>,  <29.232849, 34.179981, 51.375980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.165434, 34.450123, 51.088791> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795095, 0.337373, 0.503988,
		0.582596, 0.655802, 0.480109,
		-0.168540, 0.675353, -0.717977,
		29.114872, 34.652729, 50.873398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.043467, 34.747627, 51.765224>,  <29.232849, 34.179981, 51.375980>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.043467, 34.747627, 51.765224> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.914827, 34.812836, 51.392128>,  <28.837645, 34.851959, 51.168270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.914827, 34.812836, 51.392128>,  <29.043467, 34.747627, 51.765224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.914827, 34.812836, 51.392128> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872576, 0.331484, 0.358789,
		0.367678, 0.929270, 0.035645,
		-0.321596, 0.163022, -0.932738,
		28.818348, 34.861744, 51.112309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.682795, 35.404625, 51.857227>,  <29.043467, 34.747627, 51.765224>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.682795, 35.404625, 51.857227> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.528698, 35.227512, 51.533367>,  <28.436239, 35.121246, 51.339050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.528698, 35.227512, 51.533367>,  <28.682795, 35.404625, 51.857227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.528698, 35.227512, 51.533367> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921689, 0.227965, 0.313882,
		0.045593, 0.867168, -0.495924,
		-0.385242, -0.442777, -0.809653,
		28.413126, 35.094681, 51.290470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.120287, 35.733116, 51.711452>,  <28.682795, 35.404625, 51.857227>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.120287, 35.733116, 51.711452> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.059612, 35.401093, 51.496796>,  <28.023209, 35.201878, 51.368000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.059612, 35.401093, 51.496796>,  <28.120287, 35.733116, 51.711452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.059612, 35.401093, 51.496796> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.985510, 0.085310, 0.146602,
		-0.075907, 0.551108, -0.830974,
		-0.151684, -0.830062, -0.536646,
		28.014107, 35.152073, 51.335800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.492144, 35.949093, 51.296692>,  <28.120287, 35.733116, 51.711452>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.492144, 35.949093, 51.296692> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.532885, 35.551250, 51.288918>,  <27.557329, 35.312546, 51.284252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.532885, 35.551250, 51.288918>,  <27.492144, 35.949093, 51.296692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.532885, 35.551250, 51.288918> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.986542, -0.103502, 0.126582,
		-0.127911, 0.006281, -0.991766,
		0.101854, -0.994609, -0.019436,
		27.563440, 35.252869, 51.283089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.930065, 35.651909, 50.853752>,  <27.492144, 35.949093, 51.296692>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.930065, 35.651909, 50.853752> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.055544, 35.330883, 51.056725>,  <27.130831, 35.138268, 51.178509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.055544, 35.330883, 51.056725>,  <26.930065, 35.651909, 50.853752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.055544, 35.330883, 51.056725> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.939760, -0.338857, 0.045020,
		0.135815, -0.490984, -0.860517,
		0.313696, -0.802565, 0.507429,
		27.149652, 35.090115, 51.208954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.460011, 35.145264, 50.715416>,  <26.930065, 35.651909, 50.853752>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.460011, 35.145264, 50.715416> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.624577, 35.031963, 51.061943>,  <26.723316, 34.963982, 51.269859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.624577, 35.031963, 51.061943>,  <26.460011, 35.145264, 50.715416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.624577, 35.031963, 51.061943> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889238, -0.333288, 0.313329,
		0.199980, -0.899269, -0.389002,
		0.411416, -0.283256, 0.866316,
		26.748001, 34.946987, 51.321838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.141121, 34.532234, 50.852818>,  <26.460011, 35.145264, 50.715416>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.141121, 34.532234, 50.852818> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.266350, 34.674088, 51.205231>,  <26.341486, 34.759201, 51.416679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.266350, 34.674088, 51.205231>,  <26.141121, 34.532234, 50.852818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.266350, 34.674088, 51.205231> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880731, -0.238724, 0.409054,
		0.355388, -0.904016, 0.237600,
		0.313070, 0.354634, 0.881034,
		26.360271, 34.780479, 51.469540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.752892, 34.163513, 51.212994>,  <26.141121, 34.532234, 50.852818>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.752892, 34.163513, 51.212994> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.916222, 34.404003, 51.487743>,  <26.014219, 34.548298, 51.652592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.916222, 34.404003, 51.487743>,  <25.752892, 34.163513, 51.212994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.916222, 34.404003, 51.487743> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792232, -0.140399, 0.593850,
		0.453475, -0.786647, 0.418983,
		0.408326, 0.601227, 0.686874,
		26.038719, 34.584370, 51.693806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.652536, 33.910641, 51.847019>,  <25.752892, 34.163513, 51.212994>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.652536, 33.910641, 51.847019> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.656696, 34.296043, 51.954010>,  <25.659193, 34.527287, 52.018204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.656696, 34.296043, 51.954010>,  <25.652536, 33.910641, 51.847019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.656696, 34.296043, 51.954010> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878101, -0.119165, 0.463398,
		0.478362, -0.239695, 0.844817,
		0.010402, 0.963507, 0.267481,
		25.659817, 34.585094, 52.034256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.366806, 33.941422, 52.479347>,  <25.652536, 33.910641, 51.847019>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.366806, 33.941422, 52.479347> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.332237, 34.326168, 52.375542>,  <25.311495, 34.557014, 52.313259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.332237, 34.326168, 52.375542>,  <25.366806, 33.941422, 52.479347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.332237, 34.326168, 52.375542> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.958635, -0.009377, 0.284483,
		0.271201, 0.273369, 0.922887,
		-0.086423, 0.961864, -0.259518,
		25.306311, 34.614727, 52.297688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.002308, 34.228825, 53.117317>,  <25.366806, 33.941422, 52.479347>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.002308, 34.228825, 53.117317> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.967169, 34.485878, 52.812870>,  <24.946085, 34.640110, 52.630199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.967169, 34.485878, 52.812870>,  <25.002308, 34.228825, 53.117317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.967169, 34.485878, 52.812870> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908899, 0.260981, 0.325255,
		0.407658, 0.720355, 0.561162,
		-0.087847, 0.642633, -0.761122,
		24.940815, 34.678669, 52.584534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.859533, 34.719612, 53.395199>,  <25.002308, 34.228825, 53.117317>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.859533, 34.719612, 53.395199> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.717073, 34.769688, 53.024796>,  <24.631598, 34.799732, 52.802555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.717073, 34.769688, 53.024796>,  <24.859533, 34.719612, 53.395199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.717073, 34.769688, 53.024796> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919039, 0.132185, 0.371340,
		0.168891, 0.983288, 0.067972,
		-0.356149, 0.125185, -0.926006,
		24.610229, 34.807243, 52.746994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 12

// nucleotide -1

// particle -1
sphere {
	<35.620152, 31.157110, 49.335087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.265499, 30.973854, 49.360371>,  <35.052708, 30.863901, 49.375542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.265499, 30.973854, 49.360371>,  <35.620152, 31.157110, 49.335087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.265499, 30.973854, 49.360371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240155, 0.572881, 0.783666,
		-0.395238, 0.679643, -0.617958,
		-0.886630, -0.458140, 0.063205,
		34.999512, 30.836412, 49.379333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.063671, 31.651285, 49.262932>,  <35.620152, 31.157110, 49.335087>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.063671, 31.651285, 49.262932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.907291, 31.348656, 49.472603>,  <34.813465, 31.167078, 49.598404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.907291, 31.348656, 49.472603>,  <35.063671, 31.651285, 49.262932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.907291, 31.348656, 49.472603> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394634, 0.652280, 0.647144,
		-0.831520, 0.046141, -0.553575,
		-0.390945, -0.756573, 0.524175,
		34.790009, 31.121683, 49.629856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.376225, 31.920017, 49.596081>,  <35.063671, 31.651285, 49.262932>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.376225, 31.920017, 49.596081> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.440186, 31.586773, 49.807877>,  <34.478561, 31.386826, 49.934952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.440186, 31.586773, 49.807877>,  <34.376225, 31.920017, 49.596081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.440186, 31.586773, 49.807877> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362310, 0.449421, 0.816549,
		-0.918239, -0.322404, -0.229982,
		0.159900, -0.833112, 0.529486,
		34.488155, 31.336840, 49.966724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.792965, 31.787767, 49.985905>,  <34.376225, 31.920017, 49.596081>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.792965, 31.787767, 49.985905> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.071186, 31.589123, 50.193588>,  <34.238117, 31.469936, 50.318199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.071186, 31.589123, 50.193588>,  <33.792965, 31.787767, 49.985905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.071186, 31.589123, 50.193588> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379173, 0.360101, 0.852382,
		-0.610272, -0.789749, 0.062167,
		0.695554, -0.496613, 0.519211,
		34.279854, 31.440140, 50.349350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.404839, 31.540564, 50.572731>,  <33.792965, 31.787767, 49.985905>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.404839, 31.540564, 50.572731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.784561, 31.502556, 50.692589>,  <34.012394, 31.479752, 50.764503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.784561, 31.502556, 50.692589>,  <33.404839, 31.540564, 50.572731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.784561, 31.502556, 50.692589> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267847, 0.254441, 0.929257,
		-0.164540, -0.962409, 0.216091,
		0.949307, -0.095020, 0.299644,
		34.069355, 31.474051, 50.782482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.463280, 31.041533, 51.147617>,  <33.404839, 31.540564, 50.572731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.463280, 31.041533, 51.147617> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.784805, 31.279051, 51.161995>,  <33.977722, 31.421562, 51.170620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.784805, 31.279051, 51.161995>,  <33.463280, 31.041533, 51.147617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.784805, 31.279051, 51.161995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172862, 0.175338, 0.969214,
		0.569214, -0.785279, 0.243583,
		0.803813, 0.593796, 0.035941,
		34.025948, 31.457190, 51.172775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.559387, 31.088945, 51.887562>,  <33.463280, 31.041533, 51.147617>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.559387, 31.088945, 51.887562> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.783566, 31.392839, 51.755684>,  <33.918072, 31.575176, 51.676556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.783566, 31.392839, 51.755684>,  <33.559387, 31.088945, 51.887562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.783566, 31.392839, 51.755684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208949, 0.514924, 0.831381,
		0.801398, -0.397056, 0.447334,
		0.560448, 0.759737, -0.329695,
		33.951698, 31.620760, 51.656776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.941189, 31.382334, 52.542473>,  <33.559387, 31.088945, 51.887562>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.941189, 31.382334, 52.542473> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.998554, 31.661242, 52.261547>,  <34.032974, 31.828587, 52.092991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.998554, 31.661242, 52.261547>,  <33.941189, 31.382334, 52.542473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.998554, 31.661242, 52.261547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052547, 0.714014, 0.698157,
		0.988267, -0.063221, 0.139038,
		0.143413, 0.697271, -0.702314,
		34.041580, 31.870422, 52.050854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.496456, 31.831192, 52.734737>,  <33.941189, 31.382334, 52.542473>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.496456, 31.831192, 52.734737> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.295006, 32.044056, 52.462513>,  <34.174133, 32.171776, 52.299179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.295006, 32.044056, 52.462513>,  <34.496456, 31.831192, 52.734737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.295006, 32.044056, 52.462513> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109789, 0.820798, 0.560569,
		0.856915, 0.207602, -0.471804,
		-0.503631, 0.532159, -0.680561,
		34.143917, 32.203705, 52.258343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.773899, 32.505180, 52.726059>,  <34.496456, 31.831192, 52.734737>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.773899, 32.505180, 52.726059> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.396557, 32.553173, 52.602329>,  <34.170151, 32.581966, 52.528091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.396557, 32.553173, 52.602329>,  <34.773899, 32.505180, 52.726059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.396557, 32.553173, 52.602329> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138929, 0.703791, 0.696690,
		0.301285, 0.700203, -0.647259,
		-0.943359, 0.119979, -0.309320,
		34.113548, 32.589169, 52.509533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.662769, 33.257820, 52.804485>,  <34.773899, 32.505180, 52.726059>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.662769, 33.257820, 52.804485> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.292252, 33.109341, 52.778603>,  <34.069939, 33.020252, 52.763073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.292252, 33.109341, 52.778603>,  <34.662769, 33.257820, 52.804485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.292252, 33.109341, 52.778603> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352237, 0.792081, 0.498534,
		-0.133803, 0.484582, -0.864452,
		-0.926297, -0.371197, -0.064705,
		34.014362, 32.997982, 52.759190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.245644, 33.830059, 52.577347>,  <34.662769, 33.257820, 52.804485>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.245644, 33.830059, 52.577347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.016167, 33.562008, 52.765732>,  <33.878479, 33.401176, 52.878761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.016167, 33.562008, 52.765732>,  <34.245644, 33.830059, 52.577347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.016167, 33.562008, 52.765732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384318, 0.728001, 0.567727,
		-0.723310, 0.144703, -0.675192,
		-0.573692, -0.670131, 0.470958,
		33.844059, 33.360970, 52.907021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.122330, 34.474377, 52.316231>,  <34.245644, 33.830059, 52.577347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.122330, 34.474377, 52.316231> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.427086, 34.725876, 52.378460>,  <34.609940, 34.876778, 52.415798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.427086, 34.725876, 52.378460>,  <34.122330, 34.474377, 52.316231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.427086, 34.725876, 52.378460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504374, -0.425226, -0.751525,
		-0.406368, 0.651043, -0.641099,
		0.761887, 0.628750, 0.155571,
		34.655651, 34.914501, 52.425133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.122299, 34.881794, 51.750317>,  <34.122330, 34.474377, 52.316231>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.122299, 34.881794, 51.750317> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.486908, 34.854523, 51.912537>,  <34.705673, 34.838158, 52.009869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.486908, 34.854523, 51.912537>,  <34.122299, 34.881794, 51.750317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.486908, 34.854523, 51.912537> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361195, -0.338762, -0.868780,
		0.196620, 0.938398, -0.284164,
		0.911525, -0.068181, 0.405552,
		34.760365, 34.834068, 52.034203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.602703, 35.138577, 51.283730>,  <34.122299, 34.881794, 51.750317>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.602703, 35.138577, 51.283730> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.826134, 34.914036, 51.527985>,  <34.960190, 34.779312, 51.674538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.826134, 34.914036, 51.527985>,  <34.602703, 35.138577, 51.283730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.826134, 34.914036, 51.527985> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509816, -0.348363, -0.786595,
		0.654282, 0.750682, 0.091602,
		0.558572, -0.561355, 0.610637,
		34.993706, 34.745628, 51.711174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.300102, 35.299683, 51.044514>,  <34.602703, 35.138577, 51.283730>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.300102, 35.299683, 51.044514> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.372089, 34.980637, 51.274792>,  <35.415283, 34.789211, 51.412960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.372089, 34.980637, 51.274792>,  <35.300102, 35.299683, 51.044514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.372089, 34.980637, 51.274792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641248, -0.348675, -0.683539,
		0.745931, 0.492178, 0.448718,
		0.179967, -0.797613, 0.575696,
		35.426079, 34.741352, 51.447502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.070465, 35.251633, 51.245892>,  <35.300102, 35.299683, 51.044514>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.070465, 35.251633, 51.245892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.920033, 34.881386, 51.262840>,  <35.829773, 34.659237, 51.273010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.920033, 34.881386, 51.262840>,  <36.070465, 35.251633, 51.245892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.920033, 34.881386, 51.262840> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713531, -0.318475, -0.624057,
		0.591131, -0.204466, 0.780229,
		-0.376082, -0.925617, 0.042368,
		35.807209, 34.603699, 51.275551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582684, 34.911770, 51.006393>,  <36.070465, 35.251633, 51.245892>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.582684, 34.911770, 51.006393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.301510, 34.627872, 50.987854>,  <36.132805, 34.457535, 50.976730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.301510, 34.627872, 50.987854>,  <36.582684, 34.911770, 51.006393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.301510, 34.627872, 50.987854> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634937, -0.596802, -0.490594,
		0.320539, -0.374280, 0.870155,
		-0.702930, -0.709748, -0.046346,
		36.090630, 34.414948, 50.973949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.860897, 34.349728, 51.244823>,  <36.582684, 34.911770, 51.006393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.860897, 34.349728, 51.244823> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.564087, 34.262642, 50.991211>,  <36.386002, 34.210392, 50.839043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.564087, 34.262642, 50.991211>,  <36.860897, 34.349728, 51.244823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.564087, 34.262642, 50.991211> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632982, -0.538991, -0.555718,
		-0.220753, -0.813689, 0.537752,
		-0.742026, -0.217711, -0.634034,
		36.341480, 34.197330, 50.800999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.914928, 33.577938, 51.026199>,  <36.860897, 34.349728, 51.244823>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.914928, 33.577938, 51.026199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.697346, 33.742016, 50.733391>,  <36.566795, 33.840462, 50.557705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.697346, 33.742016, 50.733391>,  <36.914928, 33.577938, 51.026199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.697346, 33.742016, 50.733391> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482119, -0.561228, -0.672743,
		-0.686785, -0.718864, 0.107522,
		-0.543955, 0.410192, -0.732021,
		36.534161, 33.865074, 50.513783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.697628, 33.083599, 50.608311>,  <36.914928, 33.577938, 51.026199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.697628, 33.083599, 50.608311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.602654, 33.376648, 50.353161>,  <36.545670, 33.552479, 50.200069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.602654, 33.376648, 50.353161>,  <36.697628, 33.083599, 50.608311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.602654, 33.376648, 50.353161> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281083, -0.576747, -0.767043,
		-0.929846, -0.361423, -0.068985,
		-0.237440, 0.732623, -0.637876,
		36.531422, 33.596436, 50.161797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.359730, 32.695641, 50.004791>,  <36.697628, 33.083599, 50.608311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.359730, 32.695641, 50.004791> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.477203, 33.065304, 49.907078>,  <36.547688, 33.287102, 49.848450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.477203, 33.065304, 49.907078>,  <36.359730, 32.695641, 50.004791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.477203, 33.065304, 49.907078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440775, -0.357690, -0.823271,
		-0.848213, 0.134110, -0.512396,
		0.293688, 0.924160, -0.244285,
		36.565311, 33.342552, 49.833794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.070099, 32.809242, 49.338478>,  <36.359730, 32.695641, 50.004791>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.070099, 32.809242, 49.338478> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.388901, 33.048016, 49.375267>,  <36.580181, 33.191280, 49.397343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.388901, 33.048016, 49.375267>,  <36.070099, 32.809242, 49.338478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.388901, 33.048016, 49.375267> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379419, -0.376355, -0.845221,
		-0.469923, 0.708541, -0.526442,
		0.797003, 0.596931, 0.091976,
		36.628002, 33.227097, 49.402859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.165894, 33.235107, 48.609486>,  <36.070099, 32.809242, 49.338478>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.165894, 33.235107, 48.609486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.510170, 33.223244, 48.812790>,  <36.716736, 33.216125, 48.934772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.510170, 33.223244, 48.812790>,  <36.165894, 33.235107, 48.609486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.510170, 33.223244, 48.812790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494113, -0.191969, -0.847939,
		0.122723, 0.980953, -0.150569,
		0.860692, -0.029663, 0.508261,
		36.768379, 33.214344, 48.965267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.644318, 33.522293, 48.162399>,  <36.165894, 33.235107, 48.609486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.644318, 33.522293, 48.162399> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.883213, 33.354733, 48.435993>,  <37.026550, 33.254196, 48.600147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.883213, 33.354733, 48.435993>,  <36.644318, 33.522293, 48.162399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.883213, 33.354733, 48.435993> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606031, -0.322923, -0.726944,
		0.525393, 0.848670, 0.061007,
		0.597234, -0.418903, 0.683982,
		37.062382, 33.229061, 48.641190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378559, 33.900665, 48.057831>,  <36.644318, 33.522293, 48.162399>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.378559, 33.900665, 48.057831> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.307034, 33.514526, 48.133869>,  <37.264118, 33.282845, 48.179493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.307034, 33.514526, 48.133869>,  <37.378559, 33.900665, 48.057831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.307034, 33.514526, 48.133869> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113852, -0.212214, -0.970568,
		0.977273, -0.151908, 0.147853,
		-0.178814, -0.965344, 0.190096,
		37.253391, 33.224922, 48.190899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.981159, 34.200729, 47.486137>,  <37.378559, 33.900665, 48.057831>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.981159, 34.200729, 47.486137> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.958069, 34.163189, 47.883701>,  <36.944214, 34.140663, 48.122238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.958069, 34.163189, 47.883701>,  <36.981159, 34.200729, 47.486137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.958069, 34.163189, 47.883701> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910941, 0.402395, 0.090907,
		-0.408477, 0.910643, 0.062262,
		-0.057730, -0.093850, 0.993911,
		36.940750, 34.135033, 48.181873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.321297, 34.500023, 47.326900>,  <36.981159, 34.200729, 47.486137>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.321297, 34.500023, 47.326900> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.685673, 34.664745, 47.317127>,  <36.904301, 34.763580, 47.311264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.685673, 34.664745, 47.317127>,  <36.321297, 34.500023, 47.326900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.685673, 34.664745, 47.317127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363926, 0.830090, 0.422503,
		0.194270, -0.375985, 0.906033,
		0.910943, 0.411809, -0.024431,
		36.958954, 34.788288, 47.309799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.623856, 34.685291, 48.049927>,  <36.321297, 34.500023, 47.326900>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.623856, 34.685291, 48.049927> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.731682, 34.924175, 47.747753>,  <36.796375, 35.067505, 47.566448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.731682, 34.924175, 47.747753>,  <36.623856, 34.685291, 48.049927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.731682, 34.924175, 47.747753> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505518, 0.755447, 0.416834,
		0.819627, 0.269522, 0.505539,
		0.269562, 0.597208, -0.755433,
		36.812550, 35.103336, 47.521122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.971531, 35.318161, 48.356628>,  <36.623856, 34.685291, 48.049927>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.971531, 35.318161, 48.356628> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.783535, 35.394958, 48.012012>,  <36.670738, 35.441036, 47.805244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.783535, 35.394958, 48.012012>,  <36.971531, 35.318161, 48.356628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.783535, 35.394958, 48.012012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365528, 0.846096, 0.387957,
		0.803429, 0.497253, -0.327477,
		-0.469990, 0.191994, -0.861538,
		36.642536, 35.452557, 47.753551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.158096, 36.081303, 48.067005>,  <36.971531, 35.318161, 48.356628>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.158096, 36.081303, 48.067005> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.804970, 35.962471, 47.921467>,  <36.593094, 35.891174, 47.834145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.804970, 35.962471, 47.921467>,  <37.158096, 36.081303, 48.067005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.804970, 35.962471, 47.921467> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446635, 0.770756, 0.454370,
		0.145455, 0.563631, -0.813119,
		-0.882814, -0.297077, -0.363848,
		36.540127, 35.873348, 47.812313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.892624, 36.652538, 47.877415>,  <37.158096, 36.081303, 48.067005>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.892624, 36.652538, 47.877415> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.573406, 36.413395, 47.907562>,  <36.381874, 36.269909, 47.925652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.573406, 36.413395, 47.907562>,  <36.892624, 36.652538, 47.877415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.573406, 36.413395, 47.907562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524360, 0.750618, 0.402019,
		-0.296928, 0.281308, -0.912524,
		-0.798048, -0.597862, 0.075373,
		36.333992, 36.234035, 47.930176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.403183, 37.075375, 47.703625>,  <36.892624, 36.652538, 47.877415>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.403183, 37.075375, 47.703625> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.187614, 36.785698, 47.875725>,  <36.058273, 36.611893, 47.978985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.187614, 36.785698, 47.875725>,  <36.403183, 37.075375, 47.703625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.187614, 36.785698, 47.875725> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580153, 0.689419, 0.433733,
		-0.610730, -0.015866, -0.791680,
		-0.538917, -0.724189, 0.430254,
		36.025940, 36.568439, 48.004803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.695591, 37.284035, 47.617397>,  <36.403183, 37.075375, 47.703625>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.695591, 37.284035, 47.617397> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.691071, 37.023087, 47.920525>,  <35.688358, 36.866520, 48.102402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.691071, 37.023087, 47.920525>,  <35.695591, 37.284035, 47.617397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.691071, 37.023087, 47.920525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533435, 0.644952, 0.547251,
		-0.845766, -0.398065, -0.355281,
		-0.011298, -0.652366, 0.757820,
		35.687683, 36.827377, 48.147869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.982510, 37.229168, 47.758648>,  <35.695591, 37.284035, 47.617397>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.982510, 37.229168, 47.758648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.177109, 37.100563, 48.083599>,  <35.293869, 37.023399, 48.278568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.177109, 37.100563, 48.083599>,  <34.982510, 37.229168, 47.758648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.177109, 37.100563, 48.083599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640462, 0.501197, 0.581902,
		-0.594246, -0.803389, 0.037918,
		0.486498, -0.321508, 0.812374,
		35.323059, 37.004112, 48.327312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.448845, 37.004265, 48.276173>,  <34.982510, 37.229168, 47.758648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.448845, 37.004265, 48.276173> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.774025, 37.060734, 48.502159>,  <34.969131, 37.094616, 48.637753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.774025, 37.060734, 48.502159>,  <34.448845, 37.004265, 48.276173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.774025, 37.060734, 48.502159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546403, 0.520432, 0.656197,
		-0.201392, -0.842153, 0.500220,
		0.812948, 0.141169, 0.564966,
		35.017910, 37.103085, 48.671650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.329430, 36.928108, 48.925690>,  <34.448845, 37.004265, 48.276173>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.329430, 36.928108, 48.925690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.668892, 37.131325, 48.984596>,  <34.872570, 37.253254, 49.019939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.668892, 37.131325, 48.984596>,  <34.329430, 36.928108, 48.925690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.668892, 37.131325, 48.984596> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483156, 0.631206, 0.606745,
		0.215294, -0.586068, 0.781135,
		0.848651, 0.508039, 0.147268,
		34.923489, 37.283737, 49.028778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.462875, 36.923264, 49.662132>,  <34.329430, 36.928108, 48.925690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.462875, 36.923264, 49.662132> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.649303, 37.240932, 49.506153>,  <34.761162, 37.431534, 49.412563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.649303, 37.240932, 49.506153>,  <34.462875, 36.923264, 49.662132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.649303, 37.240932, 49.506153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399736, 0.582220, 0.707976,
		0.789294, -0.174091, 0.588818,
		0.466074, 0.794174, -0.389953,
		34.789127, 37.479183, 49.389168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.684048, 37.338913, 50.266338>,  <34.462875, 36.923264, 49.662132>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.684048, 37.338913, 50.266338> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.687923, 37.614197, 49.976162>,  <34.690250, 37.779369, 49.802055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.687923, 37.614197, 49.976162>,  <34.684048, 37.338913, 50.266338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.687923, 37.614197, 49.976162> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309041, 0.692024, 0.652378,
		0.950999, 0.217871, 0.219390,
		0.009689, 0.688211, -0.725446,
		34.690830, 37.820660, 49.758530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.037327, 37.849262, 50.561359>,  <34.684048, 37.338913, 50.266338>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.037327, 37.849262, 50.561359> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.830620, 38.039059, 50.276314>,  <34.706596, 38.152935, 50.105286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.830620, 38.039059, 50.276314>,  <35.037327, 37.849262, 50.561359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.830620, 38.039059, 50.276314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178014, 0.754622, 0.631550,
		0.837416, 0.453218, -0.305497,
		-0.516765, 0.474487, -0.712612,
		34.675591, 38.181404, 50.062531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.128246, 38.656445, 50.722260>,  <35.037327, 37.849262, 50.561359>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.128246, 38.656445, 50.722260> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.809620, 38.615211, 50.483978>,  <34.618446, 38.590469, 50.341011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.809620, 38.615211, 50.483978>,  <35.128246, 38.656445, 50.722260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.809620, 38.615211, 50.483978> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481044, 0.704898, 0.521263,
		0.366175, 0.701778, -0.611084,
		-0.796563, -0.103084, -0.595702,
		34.570652, 38.584286, 50.305267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.901112, 39.364075, 50.567181>,  <35.128246, 38.656445, 50.722260>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.901112, 39.364075, 50.567181> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.581993, 39.139397, 50.479515>,  <34.390522, 39.004589, 50.426918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.581993, 39.139397, 50.479515>,  <34.901112, 39.364075, 50.567181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.581993, 39.139397, 50.479515> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582439, 0.623996, 0.520954,
		-0.155861, 0.543260, -0.824970,
		-0.797792, -0.561691, -0.219159,
		34.342655, 38.970890, 50.413769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.386257, 39.788166, 50.432186>,  <34.901112, 39.364075, 50.567181>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.386257, 39.788166, 50.432186> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.195232, 39.444901, 50.507542>,  <34.080616, 39.238941, 50.552753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.195232, 39.444901, 50.507542>,  <34.386257, 39.788166, 50.432186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.195232, 39.444901, 50.507542> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743271, 0.508943, 0.434195,
		-0.468489, 0.067332, -0.880900,
		-0.477563, -0.858163, 0.188389,
		34.051964, 39.187450, 50.564056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.698990, 39.961514, 50.326118>,  <34.386257, 39.788166, 50.432186>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.698990, 39.961514, 50.326118> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.682671, 39.603283, 50.503330>,  <33.672878, 39.388344, 50.609657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.682671, 39.603283, 50.503330>,  <33.698990, 39.961514, 50.326118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.682671, 39.603283, 50.503330> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782615, 0.304299, 0.543061,
		-0.621167, -0.324568, -0.713307,
		-0.040798, -0.895577, 0.443032,
		33.670429, 39.334610, 50.636238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.027760, 39.795586, 50.176521>,  <33.698990, 39.961514, 50.326118>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.027760, 39.795586, 50.176521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.152245, 39.569836, 50.482365>,  <33.226936, 39.434387, 50.665871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.152245, 39.569836, 50.482365>,  <33.027760, 39.795586, 50.176521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.152245, 39.569836, 50.482365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787806, 0.296780, 0.539707,
		-0.531518, -0.770327, -0.352257,
		0.311208, -0.564374, 0.764612,
		33.245605, 39.400524, 50.711750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.393044, 39.505390, 50.406193>,  <33.027760, 39.795586, 50.176521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.393044, 39.505390, 50.406193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.667015, 39.523769, 50.697056>,  <32.831398, 39.534798, 50.871574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.667015, 39.523769, 50.697056>,  <32.393044, 39.505390, 50.406193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.667015, 39.523769, 50.697056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630817, 0.536828, 0.560255,
		-0.364616, -0.842440, 0.396675,
		0.684927, 0.045951, 0.727161,
		32.872494, 39.537556, 50.915203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.064255, 39.259342, 50.851303>,  <32.393044, 39.505390, 50.406193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.064255, 39.259342, 50.851303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.351303, 39.465000, 51.039207>,  <32.523533, 39.588394, 51.151951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.351303, 39.465000, 51.039207>,  <32.064255, 39.259342, 50.851303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.351303, 39.465000, 51.039207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692294, 0.600077, 0.400796,
		-0.075824, -0.612831, 0.786568,
		0.717621, 0.514146, 0.469760,
		32.566589, 39.619244, 51.180134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.805321, 39.306889, 51.567146>,  <32.064255, 39.259342, 50.851303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.805321, 39.306889, 51.567146> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.095161, 39.578510, 51.520103>,  <32.269066, 39.741486, 51.491879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.095161, 39.578510, 51.520103>,  <31.805321, 39.306889, 51.567146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.095161, 39.578510, 51.520103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551305, 0.673552, 0.492331,
		0.413539, -0.291905, 0.862425,
		0.724602, 0.679058, -0.117611,
		32.312542, 39.782227, 51.484821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.792168, 39.585678, 52.202816>,  <31.805321, 39.306889, 51.567146>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.792168, 39.585678, 52.202816> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.949463, 39.839455, 51.936626>,  <32.043839, 39.991718, 51.776913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.949463, 39.839455, 51.936626>,  <31.792168, 39.585678, 52.202816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.949463, 39.839455, 51.936626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661542, 0.697891, 0.274429,
		0.638534, 0.332320, 0.694145,
		0.393239, 0.634439, -0.665471,
		32.067436, 40.029785, 51.736984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.029312, 40.144310, 52.579704>,  <31.792168, 39.585678, 52.202816>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.029312, 40.144310, 52.579704> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.964859, 40.278347, 52.208382>,  <31.926188, 40.358768, 51.985588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.964859, 40.278347, 52.208382>,  <32.029312, 40.144310, 52.579704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.964859, 40.278347, 52.208382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286485, 0.884216, 0.368901,
		0.944437, 0.325388, -0.046480,
		-0.161134, 0.335088, -0.928306,
		31.916519, 40.378872, 51.929890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.273232, 40.839245, 52.529202>,  <32.029312, 40.144310, 52.579704>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.273232, 40.839245, 52.529202> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.021877, 40.801010, 52.220398>,  <31.871065, 40.778069, 52.035118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.021877, 40.801010, 52.220398>,  <32.273232, 40.839245, 52.529202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.021877, 40.801010, 52.220398> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268173, 0.958204, 0.099647,
		0.730215, 0.269648, -0.627755,
		-0.628387, -0.095583, -0.772006,
		31.833361, 40.772335, 51.988796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.444809, 41.461426, 52.177551>,  <32.273232, 40.839245, 52.529202>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.444809, 41.461426, 52.177551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.083313, 41.333965, 52.063210>,  <31.866415, 41.257488, 51.994606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.083313, 41.333965, 52.063210>,  <32.444809, 41.461426, 52.177551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.083313, 41.333965, 52.063210> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328352, 0.944441, -0.014690,
		0.274654, 0.080585, -0.958160,
		-0.903742, -0.318649, -0.285855,
		31.812191, 41.238369, 51.977451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.186630, 41.998707, 51.640911>,  <32.444809, 41.461426, 52.177551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.186630, 41.998707, 51.640911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.857790, 41.812710, 51.772324>,  <31.660486, 41.701111, 51.851173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.857790, 41.812710, 51.772324>,  <32.186630, 41.998707, 51.640911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.857790, 41.812710, 51.772324> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402797, 0.882830, 0.241591,
		-0.402379, 0.066279, -0.913071,
		-0.822098, -0.464993, 0.328535,
		31.611160, 41.673210, 51.870884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.576897, 42.456303, 51.486698>,  <32.186630, 41.998707, 51.640911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.576897, 42.456303, 51.486698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.421700, 42.179092, 51.729740>,  <31.328581, 42.012768, 51.875565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.421700, 42.179092, 51.729740>,  <31.576897, 42.456303, 51.486698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.421700, 42.179092, 51.729740> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675407, 0.662363, 0.324194,
		-0.627127, -0.284593, -0.725065,
		-0.387992, -0.693024, 0.607601,
		31.305302, 41.971184, 51.912022>
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
