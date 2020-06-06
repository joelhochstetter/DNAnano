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
	location <25.469, 94.9851, 44.8844>
	look_at <25.469, 29.3977, 32.8955>
	direction <0, -65.5874, -11.9889>
	angle 67.0682
}


# declare cpy_camera_pos = <25.469, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 28
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
	<4.626732, 15.256062, 15.446852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.487108, 15.089746, 15.110929>,  <4.403333, 14.989957, 14.909375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.487108, 15.089746, 15.110929>,  <4.626732, 15.256062, 15.446852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.487108, 15.089746, 15.110929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630242, 0.767383, -0.117975,
		0.693506, 0.488101, -0.529911,
		-0.349061, -0.415788, -0.839807,
		4.382390, 14.965010, 14.858986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.744524, 15.636991, 14.770931>,  <4.626732, 15.256062, 15.446852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.744524, 15.636991, 14.770931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.401918, 15.430691, 14.778801>,  <4.196355, 15.306911, 14.783523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.401918, 15.430691, 14.778801>,  <4.744524, 15.636991, 14.770931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.401918, 15.430691, 14.778801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513352, 0.847347, -0.135913,
		0.053425, -0.126511, -0.990525,
		-0.856514, -0.515749, 0.019675,
		4.144964, 15.275966, 14.784703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.885964, 16.042582, 14.102372>,  <4.744524, 15.636991, 14.770931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.885964, 16.042582, 14.102372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.066447, 16.021572, 13.746023>,  <5.174737, 16.008966, 13.532214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.066447, 16.021572, 13.746023>,  <4.885964, 16.042582, 14.102372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.066447, 16.021572, 13.746023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214677, -0.962565, 0.165479,
		-0.866213, -0.265915, -0.423042,
		0.451209, -0.052522, -0.890871,
		5.201810, 16.005816, 13.478762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.494994, 15.482534, 13.686051>,  <4.885964, 16.042582, 14.102372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.494994, 15.482534, 13.686051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.877834, 15.581954, 13.626472>,  <5.107538, 15.641605, 13.590725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.877834, 15.581954, 13.626472>,  <4.494994, 15.482534, 13.686051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.877834, 15.581954, 13.626472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239662, -0.967940, -0.075193,
		-0.162862, 0.036270, -0.985982,
		0.957099, 0.248549, -0.148948,
		5.164964, 15.656519, 13.581788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.848550, 15.016190, 13.162666>,  <4.494994, 15.482534, 13.686051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.848550, 15.016190, 13.162666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.134209, 15.181746, 13.388477>,  <5.305604, 15.281079, 13.523964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.134209, 15.181746, 13.388477>,  <4.848550, 15.016190, 13.162666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.134209, 15.181746, 13.388477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436890, -0.893654, 0.102510,
		0.546921, 0.173430, -0.819024,
		0.714146, 0.413889, 0.564528,
		5.348453, 15.305912, 13.557836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.436772, 14.581657, 12.974581>,  <4.848550, 15.016190, 13.162666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.436772, 14.581657, 12.974581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.547068, 14.786409, 13.300021>,  <5.613245, 14.909261, 13.495286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.547068, 14.786409, 13.300021>,  <5.436772, 14.581657, 12.974581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.547068, 14.786409, 13.300021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671037, -0.708540, 0.218357,
		0.688242, 0.485748, -0.538863,
		0.275739, 0.511879, 0.813602,
		5.629789, 14.939973, 13.544102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.101743, 14.505399, 12.986678>,  <5.436772, 14.581657, 12.974581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.101743, 14.505399, 12.986678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.008472, 14.600203, 13.363922>,  <5.952510, 14.657084, 13.590268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.008472, 14.600203, 13.363922>,  <6.101743, 14.505399, 12.986678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.008472, 14.600203, 13.363922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489397, -0.809469, 0.324424,
		0.840309, 0.537203, 0.072758,
		-0.233176, 0.237009, 0.943109,
		5.938519, 14.671306, 13.646855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.721175, 14.505549, 13.208404>,  <6.101743, 14.505399, 12.986678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.721175, 14.505549, 13.208404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.475406, 14.433805, 13.515731>,  <6.327944, 14.390759, 13.700128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.475406, 14.433805, 13.515731>,  <6.721175, 14.505549, 13.208404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.475406, 14.433805, 13.515731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499649, -0.842110, 0.202982,
		0.610601, 0.508607, 0.607030,
		-0.614424, -0.179361, 0.768318,
		6.291079, 14.379997, 13.746226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.111771, 14.197095, 13.648609>,  <6.721175, 14.505549, 13.208404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.111771, 14.197095, 13.648609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.759891, 14.110755, 13.818095>,  <6.548762, 14.058950, 13.919786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.759891, 14.110755, 13.818095>,  <7.111771, 14.197095, 13.648609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.759891, 14.110755, 13.818095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427775, -0.748380, 0.506889,
		0.207687, 0.627165, 0.750686,
		-0.879701, -0.215851, 0.423714,
		6.495980, 14.046000, 13.945210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.250860, 14.155586, 14.381495>,  <7.111771, 14.197095, 13.648609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.250860, 14.155586, 14.381495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.927708, 13.931719, 14.307630>,  <6.733817, 13.797399, 14.263310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.927708, 13.931719, 14.307630>,  <7.250860, 14.155586, 14.381495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.927708, 13.931719, 14.307630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438766, -0.780365, 0.445549,
		-0.393464, 0.278927, 0.876006,
		-0.807880, -0.559669, -0.184662,
		6.685344, 13.763818, 14.252231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.097282, 13.888462, 15.008870>,  <7.250860, 14.155586, 14.381495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.097282, 13.888462, 15.008870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.931632, 13.644335, 14.738755>,  <6.832241, 13.497859, 14.576687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.931632, 13.644335, 14.738755>,  <7.097282, 13.888462, 15.008870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.931632, 13.644335, 14.738755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495137, -0.773575, 0.395501,
		-0.763766, -0.170571, 0.622549,
		-0.414127, -0.610317, -0.675286,
		6.807394, 13.461240, 14.536169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.100158, 13.329980, 15.309010>,  <7.097282, 13.888462, 15.008870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.100158, 13.329980, 15.309010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.021657, 13.175529, 14.948479>,  <6.974556, 13.082858, 14.732161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.021657, 13.175529, 14.948479>,  <7.100158, 13.329980, 15.309010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.021657, 13.175529, 14.948479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546516, -0.806264, 0.226405,
		-0.814128, -0.448157, 0.369256,
		-0.196253, -0.386127, -0.901327,
		6.962781, 13.059690, 14.678081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.865151, 12.651995, 15.337618>,  <7.100158, 13.329980, 15.309010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.865151, 12.651995, 15.337618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.030870, 12.691064, 14.975663>,  <7.130302, 12.714505, 14.758491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.030870, 12.691064, 14.975663>,  <6.865151, 12.651995, 15.337618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.030870, 12.691064, 14.975663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727910, -0.632389, 0.265010,
		-0.546355, -0.768468, -0.333095,
		0.414297, 0.097674, -0.904885,
		7.155159, 12.720366, 14.704198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.092639, 12.068704, 15.276635>,  <6.865151, 12.651995, 15.337618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.092639, 12.068704, 15.276635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.295462, 12.270612, 14.997178>,  <7.417155, 12.391756, 14.829504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.295462, 12.270612, 14.997178>,  <7.092639, 12.068704, 15.276635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.295462, 12.270612, 14.997178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859732, -0.353818, 0.368339,
		-0.061265, -0.787414, -0.613373,
		0.507057, 0.504770, -0.698642,
		7.447579, 12.422043, 14.787585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.460896, 11.505035, 14.889526>,  <7.092639, 12.068704, 15.276635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.460896, 11.505035, 14.889526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.623071, 11.860547, 14.804023>,  <7.720376, 12.073854, 14.752721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.623071, 11.860547, 14.804023>,  <7.460896, 11.505035, 14.889526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.623071, 11.860547, 14.804023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889804, -0.330130, 0.315061,
		0.209452, -0.317940, -0.924686,
		0.405437, 0.888779, -0.213758,
		7.744702, 12.127181, 14.739895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.038461, 11.271108, 14.536954>,  <7.460896, 11.505035, 14.889526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.038461, 11.271108, 14.536954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.113727, 11.648889, 14.644733>,  <8.158886, 11.875557, 14.709401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.113727, 11.648889, 14.644733>,  <8.038461, 11.271108, 14.536954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.113727, 11.648889, 14.644733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925262, -0.262472, 0.273859,
		0.329369, 0.197779, -0.923255,
		0.188165, 0.944453, 0.269448,
		8.170177, 11.932224, 14.725568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.703761, 11.530175, 14.123510>,  <8.038461, 11.271108, 14.536954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.703761, 11.530175, 14.123510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.648715, 11.738319, 14.460625>,  <8.615687, 11.863206, 14.662893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.648715, 11.738319, 14.460625>,  <8.703761, 11.530175, 14.123510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.648715, 11.738319, 14.460625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964215, -0.124290, 0.234183,
		0.226609, 0.844853, -0.484635,
		-0.137615, 0.520360, 0.842785,
		8.607430, 11.894427, 14.713460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.261408, 11.953612, 14.154155>,  <8.703761, 11.530175, 14.123510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.261408, 11.953612, 14.154155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.139503, 11.948520, 14.535092>,  <9.066360, 11.945464, 14.763655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.139503, 11.948520, 14.535092>,  <9.261408, 11.953612, 14.154155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.139503, 11.948520, 14.535092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906878, -0.309408, 0.286075,
		0.291020, 0.950844, 0.105842,
		-0.304761, -0.012732, 0.952344,
		9.048075, 11.944700, 14.820795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.808774, 12.143059, 14.470424>,  <9.261408, 11.953612, 14.154155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.808774, 12.143059, 14.470424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.604521, 12.019485, 14.791376>,  <9.481969, 11.945341, 14.983948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.604521, 12.019485, 14.791376>,  <9.808774, 12.143059, 14.470424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.604521, 12.019485, 14.791376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847706, -0.336862, 0.409778,
		0.143697, 0.889429, 0.433898,
		-0.510632, -0.308934, 0.802380,
		9.451331, 11.926805, 15.032090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.143942, 12.443658, 15.093358>,  <9.808774, 12.143059, 14.470424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.143942, 12.443658, 15.093358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.948915, 12.114373, 15.209704>,  <9.831900, 11.916802, 15.279512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.948915, 12.114373, 15.209704>,  <10.143942, 12.443658, 15.093358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.948915, 12.114373, 15.209704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831406, -0.336062, 0.442524,
		-0.266541, 0.457587, 0.848275,
		-0.487566, -0.823211, 0.290866,
		9.802646, 11.867410, 15.296965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.268455, 12.409919, 15.862129>,  <10.143942, 12.443658, 15.093358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.268455, 12.409919, 15.862129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.143023, 12.037843, 15.785798>,  <10.067765, 11.814597, 15.740000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.143023, 12.037843, 15.785798>,  <10.268455, 12.409919, 15.862129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.143023, 12.037843, 15.785798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805041, -0.367001, 0.466069,
		-0.503566, -0.007475, 0.863924,
		-0.313577, -0.930191, -0.190827,
		10.048950, 11.758785, 15.728550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.459437, 12.094929, 16.435755>,  <10.268455, 12.409919, 15.862129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.459437, 12.094929, 16.435755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.433908, 11.812394, 16.153757>,  <10.418590, 11.642874, 15.984559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.433908, 11.812394, 16.153757>,  <10.459437, 12.094929, 16.435755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.433908, 11.812394, 16.153757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880380, -0.372522, 0.293527,
		-0.469954, -0.601927, 0.645621,
		-0.063826, -0.706337, -0.704993,
		10.414760, 11.600493, 15.942259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.641838, 11.474677, 16.733477>,  <10.459437, 12.094929, 16.435755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.641838, 11.474677, 16.733477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.709506, 11.435949, 16.341148>,  <10.750107, 11.412713, 16.105751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.709506, 11.435949, 16.341148>,  <10.641838, 11.474677, 16.733477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.709506, 11.435949, 16.341148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956903, -0.222204, 0.186979,
		-0.236045, -0.970181, 0.055057,
		0.169170, -0.096819, -0.980820,
		10.760257, 11.406903, 16.046902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.982701, 10.797098, 16.619646>,  <10.641838, 11.474677, 16.733477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.982701, 10.797098, 16.619646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.062879, 11.008457, 16.289648>,  <11.110985, 11.135272, 16.091648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.062879, 11.008457, 16.289648>,  <10.982701, 10.797098, 16.619646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.062879, 11.008457, 16.289648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964121, -0.255991, 0.070287,
		-0.174052, -0.809484, -0.560750,
		0.200443, 0.528397, -0.824996,
		11.123012, 11.166976, 16.042149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.359839, 10.299416, 16.308685>,  <10.982701, 10.797098, 16.619646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.359839, 10.299416, 16.308685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.441866, 10.654246, 16.143255>,  <11.491082, 10.867145, 16.043997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.441866, 10.654246, 16.143255>,  <11.359839, 10.299416, 16.308685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.441866, 10.654246, 16.143255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978745, -0.184751, 0.089027,
		0.002566, -0.423039, -0.906108,
		0.205066, 0.887077, -0.413573,
		11.503386, 10.920369, 16.019184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.739989, 10.334345, 15.677979>,  <11.359839, 10.299416, 16.308685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.739989, 10.334345, 15.677979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.838195, 10.678470, 15.856678>,  <11.897119, 10.884945, 15.963898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.838195, 10.678470, 15.856678>,  <11.739989, 10.334345, 15.677979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.838195, 10.678470, 15.856678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945356, -0.314475, 0.086063,
		0.214533, 0.401207, -0.890510,
		0.245514, 0.860313, 0.446748,
		11.911849, 10.936563, 15.990703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.285599, 10.587862, 15.340377>,  <11.739989, 10.334345, 15.677979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.285599, 10.587862, 15.340377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.313408, 10.749144, 15.705363>,  <12.330093, 10.845913, 15.924355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.313408, 10.749144, 15.705363>,  <12.285599, 10.587862, 15.340377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.313408, 10.749144, 15.705363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971219, -0.236240, 0.030392,
		0.227815, 0.884091, -0.408023,
		0.069522, 0.403204, 0.912465,
		12.334265, 10.870105, 15.979103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.902269, 10.871460, 15.238380>,  <12.285599, 10.587862, 15.340377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.902269, 10.871460, 15.238380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.845140, 10.860845, 15.634137>,  <12.810863, 10.854476, 15.871592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.845140, 10.860845, 15.634137>,  <12.902269, 10.871460, 15.238380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.845140, 10.860845, 15.634137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963665, -0.231711, 0.132892,
		0.225726, 0.972423, 0.058667,
		-0.142821, -0.026538, 0.989393,
		12.802294, 10.852883, 15.930955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.564574, 10.671657, 15.408577>,  <12.902269, 10.871460, 15.238380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.564574, 10.671657, 15.408577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.413003, 10.681548, 15.778615>,  <13.322060, 10.687483, 16.000637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.413003, 10.681548, 15.778615>,  <13.564574, 10.671657, 15.408577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.413003, 10.681548, 15.778615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844460, -0.399668, 0.356584,
		0.378549, 0.916326, 0.130564,
		-0.378929, 0.024728, 0.925095,
		13.299324, 10.688967, 16.056143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.001011, 10.949627, 15.934049>,  <13.564574, 10.671657, 15.408577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.001011, 10.949627, 15.934049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.778832, 10.712703, 16.167509>,  <13.645525, 10.570548, 16.307585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.778832, 10.712703, 16.167509>,  <14.001011, 10.949627, 15.934049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.778832, 10.712703, 16.167509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805184, -0.207745, 0.555446,
		-0.207745, 0.778468, 0.592309,
		-0.555446, -0.592309, 0.583652,
		13.612199, 10.535010, 16.342604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.062786, 11.086054, 16.739315>,  <14.001011, 10.949627, 15.934049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.062786, 11.086054, 16.739315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.966637, 10.711395, 16.637402>,  <13.908947, 10.486600, 16.576254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.966637, 10.711395, 16.637402>,  <14.062786, 11.086054, 16.739315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.966637, 10.711395, 16.637402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712445, -0.348512, 0.609066,
		-0.659274, -0.035116, 0.751082,
		-0.240374, -0.936646, -0.254783,
		13.894525, 10.430402, 16.560966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.410731, 11.568421, 16.172886>,  <14.062786, 11.086054, 16.739315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.410731, 11.568421, 16.172886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.606631, 11.911302, 16.109196>,  <14.724172, 12.117029, 16.070982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.606631, 11.911302, 16.109196>,  <14.410731, 11.568421, 16.172886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.606631, 11.911302, 16.109196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790784, 0.513644, 0.332912,
		0.367157, -0.037131, 0.929417,
		0.489751, 0.857200, -0.159226,
		14.753556, 12.168462, 16.061428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.229248, 12.046037, 16.634678>,  <14.410731, 11.568421, 16.172886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.229248, 12.046037, 16.634678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.397374, 12.326563, 16.404375>,  <14.498250, 12.494879, 16.266193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.397374, 12.326563, 16.404375>,  <14.229248, 12.046037, 16.634678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.397374, 12.326563, 16.404375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672825, 0.666620, 0.320818,
		0.608804, 0.252537, 0.752053,
		0.420316, 0.701315, -0.575754,
		14.523468, 12.536957, 16.231649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.452998, 12.712943, 17.067701>,  <14.229248, 12.046037, 16.634678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.452998, 12.712943, 17.067701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.391198, 12.817185, 16.686501>,  <14.354118, 12.879730, 16.457779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.391198, 12.817185, 16.686501>,  <14.452998, 12.712943, 17.067701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.391198, 12.817185, 16.686501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611913, 0.732070, 0.299392,
		0.775688, 0.629411, 0.046363,
		-0.154499, 0.260605, -0.953003,
		14.344849, 12.895367, 16.400600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.276711, 13.472988, 17.150793>,  <14.452998, 12.712943, 17.067701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.276711, 13.472988, 17.150793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.151254, 13.304037, 16.810623>,  <14.075979, 13.202666, 16.606522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.151254, 13.304037, 16.810623>,  <14.276711, 13.472988, 17.150793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.151254, 13.304037, 16.810623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732441, 0.677585, -0.066403,
		0.604282, 0.602060, -0.521887,
		-0.313645, -0.422378, -0.850426,
		14.057160, 13.177323, 16.555496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.153484, 13.969336, 16.689405>,  <14.276711, 13.472988, 17.150793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.153484, 13.969336, 16.689405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.923907, 13.660437, 16.580429>,  <13.786161, 13.475098, 16.515043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.923907, 13.660437, 16.580429>,  <14.153484, 13.969336, 16.689405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.923907, 13.660437, 16.580429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799529, 0.600374, -0.017450,
		0.177043, 0.207810, -0.962014,
		-0.573942, -0.772247, -0.272442,
		13.751724, 13.428762, 16.498697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.771395, 14.091608, 15.986396>,  <14.153484, 13.969336, 16.689405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.771395, 14.091608, 15.986396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.564325, 13.828146, 16.204823>,  <13.440084, 13.670069, 16.335878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.564325, 13.828146, 16.204823>,  <13.771395, 14.091608, 15.986396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.564325, 13.828146, 16.204823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836238, 0.524452, -0.160173,
		-0.180887, -0.539560, -0.822286,
		-0.517673, -0.658654, 0.546067,
		13.409023, 13.630549, 16.368643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.059389, 14.289347, 15.796843>,  <13.771395, 14.091608, 15.986396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.059389, 14.289347, 15.796843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.034318, 14.036034, 16.105394>,  <13.019276, 13.884046, 16.290525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.034318, 14.036034, 16.105394>,  <13.059389, 14.289347, 15.796843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.034318, 14.036034, 16.105394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.956361, 0.259120, 0.135022,
		-0.285387, -0.729253, -0.621888,
		-0.062678, -0.633283, 0.771378,
		13.015514, 13.846049, 16.336807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.533333, 13.948819, 15.548867>,  <13.059389, 14.289347, 15.796843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.533333, 13.948819, 15.548867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.571859, 13.905568, 15.944652>,  <12.594975, 13.879618, 16.182121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.571859, 13.905568, 15.944652>,  <12.533333, 13.948819, 15.548867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.571859, 13.905568, 15.944652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908160, 0.397327, 0.131821,
		-0.407393, -0.911285, -0.059928,
		0.096315, -0.108127, 0.989460,
		12.600754, 13.873130, 16.241489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.028129, 13.534975, 15.808260>,  <12.533333, 13.948819, 15.548867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.028129, 13.534975, 15.808260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.110799, 13.785211, 16.109171>,  <12.160401, 13.935352, 16.289717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.110799, 13.785211, 16.109171>,  <12.028129, 13.534975, 15.808260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.110799, 13.785211, 16.109171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898803, 0.425182, -0.106647,
		-0.386572, -0.654108, 0.650157,
		0.206676, 0.625590, 0.752278,
		12.172802, 13.972888, 16.334854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.430353, 13.481707, 16.466164>,  <12.028129, 13.534975, 15.808260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.430353, 13.481707, 16.466164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.605241, 13.826574, 16.363789>,  <11.710174, 14.033495, 16.302364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.605241, 13.826574, 16.363789>,  <11.430353, 13.481707, 16.466164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.605241, 13.826574, 16.363789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898938, 0.427618, -0.095151,
		0.027407, 0.271674, 0.961999,
		0.437218, 0.862169, -0.255938,
		11.736406, 14.085225, 16.287006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.880000, 13.912433, 16.567539>,  <11.430353, 13.481707, 16.466164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.880000, 13.912433, 16.567539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.163692, 14.159123, 16.430927>,  <11.333906, 14.307137, 16.348961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.163692, 14.159123, 16.430927>,  <10.880000, 13.912433, 16.567539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.163692, 14.159123, 16.430927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694066, 0.695750, -0.184945,
		0.123559, 0.368213, 0.921495,
		0.709229, 0.616727, -0.341530,
		11.376460, 14.344141, 16.328468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.818842, 14.527099, 16.927486>,  <10.880000, 13.912433, 16.567539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.818842, 14.527099, 16.927486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.991570, 14.650247, 16.588371>,  <11.095208, 14.724135, 16.384901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.991570, 14.650247, 16.588371>,  <10.818842, 14.527099, 16.927486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.991570, 14.650247, 16.588371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628071, 0.777245, -0.037657,
		0.647346, 0.548733, 0.528995,
		0.431822, 0.307869, -0.847789,
		11.121117, 14.742607, 16.334034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.685093, 15.177863, 16.989796>,  <10.818842, 14.527099, 16.927486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.685093, 15.177863, 16.989796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.793395, 15.130428, 16.607670>,  <10.858377, 15.101967, 16.378393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.793395, 15.130428, 16.607670>,  <10.685093, 15.177863, 16.989796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.793395, 15.130428, 16.607670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570384, 0.779661, -0.258441,
		0.775470, 0.614871, 0.143456,
		0.270755, -0.118588, -0.955316,
		10.874621, 15.094851, 16.321075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.723776, 15.916069, 16.648800>,  <10.685093, 15.177863, 16.989796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.723776, 15.916069, 16.648800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.701097, 15.662445, 16.340319>,  <10.687490, 15.510271, 16.155230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.701097, 15.662445, 16.340319>,  <10.723776, 15.916069, 16.648800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.701097, 15.662445, 16.340319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589042, 0.644923, -0.486933,
		0.806111, 0.426665, -0.410052,
		-0.056695, -0.634060, -0.771203,
		10.684089, 15.472227, 16.108957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.724382, 16.327738, 16.108015>,  <10.723776, 15.916069, 16.648800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.724382, 16.327738, 16.108015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.601956, 15.989651, 15.932774>,  <10.528501, 15.786799, 15.827629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.601956, 15.989651, 15.932774>,  <10.724382, 16.327738, 16.108015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.601956, 15.989651, 15.932774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648134, 0.522068, -0.554408,
		0.697314, 0.114264, -0.707600,
		-0.306066, -0.845215, -0.438103,
		10.510137, 15.736086, 15.801343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.633868, 16.375465, 15.345580>,  <10.724382, 16.327738, 16.108015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.633868, 16.375465, 15.345580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.393846, 16.074074, 15.453062>,  <10.249832, 15.893239, 15.517551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.393846, 16.074074, 15.453062>,  <10.633868, 16.375465, 15.345580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.393846, 16.074074, 15.453062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761793, 0.435712, -0.479403,
		0.244142, -0.492365, -0.835446,
		-0.600055, -0.753479, 0.268705,
		10.213829, 15.848030, 15.533673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.188245, 16.271921, 14.699108>,  <10.633868, 16.375465, 15.345580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.188245, 16.271921, 14.699108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.997313, 16.071993, 14.988200>,  <9.882754, 15.952036, 15.161655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.997313, 16.071993, 14.988200>,  <10.188245, 16.271921, 14.699108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.997313, 16.071993, 14.988200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875255, 0.343453, -0.340543,
		-0.078014, -0.795123, -0.601409,
		-0.477329, -0.499819, 0.722729,
		9.854115, 15.922047, 15.205019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.780500, 15.814191, 14.275454>,  <10.188245, 16.271921, 14.699108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.780500, 15.814191, 14.275454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.637354, 15.871694, 14.644509>,  <9.551466, 15.906195, 14.865943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.637354, 15.871694, 14.644509>,  <9.780500, 15.814191, 14.275454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.637354, 15.871694, 14.644509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874598, 0.294544, -0.385126,
		-0.327122, -0.944764, 0.020321,
		-0.357867, 0.143756, 0.922640,
		9.529994, 15.914821, 14.921302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.163722, 15.553232, 14.154674>,  <9.780500, 15.814191, 14.275454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.163722, 15.553232, 14.154674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.118689, 15.753656, 14.497896>,  <9.091669, 15.873911, 14.703830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.118689, 15.753656, 14.497896>,  <9.163722, 15.553232, 14.154674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.118689, 15.753656, 14.497896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863378, 0.378113, -0.334079,
		-0.491836, -0.778440, 0.390036,
		-0.112583, 0.501061, 0.858058,
		9.084913, 15.903975, 14.755314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.520249, 15.521009, 14.272976>,  <9.163722, 15.553232, 14.154674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.520249, 15.521009, 14.272976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.599181, 15.794421, 14.554073>,  <8.646541, 15.958468, 14.722732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.599181, 15.794421, 14.554073>,  <8.520249, 15.521009, 14.272976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.599181, 15.794421, 14.554073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871865, 0.450117, -0.192991,
		-0.448232, -0.574615, 0.684767,
		0.197330, 0.683530, 0.702744,
		8.658381, 15.999480, 14.764896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.940088, 15.465970, 14.708897>,  <8.520249, 15.521009, 14.272976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.940088, 15.465970, 14.708897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.107040, 15.827909, 14.742472>,  <8.207211, 16.045073, 14.762617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.107040, 15.827909, 14.742472>,  <7.940088, 15.465970, 14.708897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.107040, 15.827909, 14.742472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876157, 0.425209, -0.227040,
		-0.241128, 0.021219, 0.970261,
		0.417381, 0.904847, 0.083938,
		8.232255, 16.099363, 14.767653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.534793, 15.725409, 15.252687>,  <7.940088, 15.465970, 14.708897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.534793, 15.725409, 15.252687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.736542, 15.991503, 15.032480>,  <7.857591, 16.151159, 14.900355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.736542, 15.991503, 15.032480>,  <7.534793, 15.725409, 15.252687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.736542, 15.991503, 15.032480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824588, 0.560268, -0.078450,
		0.256250, 0.493519, 0.831129,
		0.504371, 0.665236, -0.550519,
		7.887853, 16.191074, 14.867325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.534282, 16.373384, 15.567729>,  <7.534793, 15.725409, 15.252687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.534282, 16.373384, 15.567729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.615367, 16.459953, 15.185720>,  <7.664019, 16.511894, 14.956515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.615367, 16.459953, 15.185720>,  <7.534282, 16.373384, 15.567729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.615367, 16.459953, 15.185720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861133, 0.503726, -0.068632,
		0.466216, 0.836313, 0.288483,
		0.202714, 0.216424, -0.955022,
		7.676182, 16.524881, 14.899214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.344156, 17.003904, 15.636413>,  <7.534282, 16.373384, 15.567729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.344156, 17.003904, 15.636413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.380387, 16.869326, 15.261477>,  <7.402125, 16.788578, 15.036516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.380387, 16.869326, 15.261477>,  <7.344156, 17.003904, 15.636413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.380387, 16.869326, 15.261477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780106, 0.561095, -0.276780,
		0.619056, 0.756292, -0.211641,
		0.090576, -0.336445, -0.937337,
		7.407560, 16.768393, 14.980276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.406404, 17.552732, 15.261713>,  <7.344156, 17.003904, 15.636413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.406404, 17.552732, 15.261713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.258560, 17.299116, 14.990012>,  <7.169854, 17.146946, 14.826992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.258560, 17.299116, 14.990012>,  <7.406404, 17.552732, 15.261713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.258560, 17.299116, 14.990012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766274, 0.621460, -0.163130,
		0.525558, 0.460198, -0.715546,
		-0.369611, -0.634039, -0.679252,
		7.147677, 17.108904, 14.786237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.572134, 17.821314, 14.585011>,  <7.406404, 17.552732, 15.261713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.572134, 17.821314, 14.585011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.260995, 17.998869, 14.407059>,  <7.074312, 18.105402, 14.300287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.260995, 17.998869, 14.407059>,  <7.572134, 17.821314, 14.585011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.260995, 17.998869, 14.407059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396481, 0.202634, 0.895401,
		0.487603, 0.872872, 0.018374,
		-0.777847, 0.443885, -0.444882,
		7.027641, 18.132034, 14.273594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.405576, 18.402979, 14.906544>,  <7.572134, 17.821314, 14.585011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.405576, 18.402979, 14.906544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.057897, 18.290203, 14.744061>,  <6.849289, 18.222538, 14.646570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.057897, 18.290203, 14.744061>,  <7.405576, 18.402979, 14.906544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.057897, 18.290203, 14.744061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438909, 0.061598, 0.896417,
		-0.227716, 0.957452, -0.177288,
		-0.869197, -0.281942, -0.406208,
		6.797137, 18.205620, 14.622198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.207440, 18.961498, 14.726604>,  <7.405576, 18.402979, 14.906544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.207440, 18.961498, 14.726604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.337540, 19.330313, 14.810568>,  <7.415600, 19.551601, 14.860947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.337540, 19.330313, 14.810568>,  <7.207440, 18.961498, 14.726604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.337540, 19.330313, 14.810568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936291, -0.345121, 0.065196,
		0.132558, 0.175332, -0.975544,
		0.325250, 0.922036, 0.209911,
		7.435114, 19.606924, 14.873541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.212687, 18.901592, 13.926978>,  <7.207440, 18.961498, 14.726604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.212687, 18.901592, 13.926978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.321496, 19.231064, 13.727957>,  <7.386780, 19.428747, 13.608543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.321496, 19.231064, 13.727957>,  <7.212687, 18.901592, 13.926978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.321496, 19.231064, 13.727957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888266, -0.016055, 0.459049,
		0.370120, -0.566831, -0.736012,
		0.272020, 0.823677, -0.497555,
		7.403101, 19.478167, 13.578691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.807427, 18.840763, 13.559571>,  <7.212687, 18.901592, 13.926978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.807427, 18.840763, 13.559571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.775877, 19.225525, 13.664277>,  <7.756948, 19.456381, 13.727100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.775877, 19.225525, 13.664277>,  <7.807427, 18.840763, 13.559571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.775877, 19.225525, 13.664277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869303, -0.062160, 0.490355,
		0.487946, 0.266230, -0.831283,
		-0.078874, 0.961903, 0.261765,
		7.752215, 19.514095, 13.742806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.476597, 18.946383, 13.766941>,  <7.807427, 18.840763, 13.559571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.476597, 18.946383, 13.766941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.320229, 19.261003, 13.958155>,  <8.226407, 19.449776, 14.072883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.320229, 19.261003, 13.958155>,  <8.476597, 18.946383, 13.766941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.320229, 19.261003, 13.958155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807715, 0.044127, 0.587919,
		0.441334, 0.615946, -0.652560,
		-0.390922, 0.786552, 0.478034,
		8.202952, 19.496969, 14.101564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.991669, 19.566402, 13.940332>,  <8.476597, 18.946383, 13.766941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.991669, 19.566402, 13.940332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.684996, 19.567327, 14.197142>,  <8.500992, 19.567883, 14.351227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.684996, 19.567327, 14.197142>,  <8.991669, 19.566402, 13.940332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.684996, 19.567327, 14.197142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629004, 0.203087, 0.750406,
		-0.128652, 0.979158, -0.157158,
		-0.766683, 0.002312, 0.642022,
		8.454990, 19.568022, 14.389749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.884593, 20.209871, 14.328418>,  <8.991669, 19.566402, 13.940332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.884593, 20.209871, 14.328418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.819837, 19.861048, 14.513159>,  <8.780983, 19.651754, 14.624003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.819837, 19.861048, 14.513159>,  <8.884593, 20.209871, 14.328418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.819837, 19.861048, 14.513159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901498, 0.059664, 0.428651,
		-0.401364, 0.485754, 0.776498,
		-0.161890, -0.872057, 0.461853,
		8.771270, 19.599430, 14.651715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.972385, 20.364334, 15.137589>,  <8.884593, 20.209871, 14.328418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.972385, 20.364334, 15.137589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.022609, 19.976830, 15.052050>,  <9.052743, 19.744326, 15.000726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.022609, 19.976830, 15.052050>,  <8.972385, 20.364334, 15.137589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.022609, 19.976830, 15.052050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900134, 0.020612, 0.435126,
		-0.417126, -0.247128, 0.874605,
		0.125560, -0.968764, -0.213851,
		9.060277, 19.686201, 14.987894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.066221, 20.122175, 15.822509>,  <8.972385, 20.364334, 15.137589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.066221, 20.122175, 15.822509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.206650, 19.866331, 15.548970>,  <9.290907, 19.712824, 15.384847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.206650, 19.866331, 15.548970>,  <9.066221, 20.122175, 15.822509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.206650, 19.866331, 15.548970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856966, -0.074807, 0.509915,
		-0.377304, -0.765051, 0.521862,
		0.351071, -0.639611, -0.683847,
		9.311972, 19.674448, 15.343816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.338636, 19.532721, 16.216309>,  <9.066221, 20.122175, 15.822509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.338636, 19.532721, 16.216309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.512633, 19.562721, 15.857387>,  <9.617031, 19.580721, 15.642034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.512633, 19.562721, 15.857387>,  <9.338636, 19.532721, 16.216309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.512633, 19.562721, 15.857387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897171, -0.120855, 0.424826,
		-0.076582, -0.989833, -0.119859,
		0.434993, 0.075000, -0.897305,
		9.643131, 19.585222, 15.588195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.862103, 19.066181, 16.241596>,  <9.338636, 19.532721, 16.216309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.862103, 19.066181, 16.241596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.981362, 19.321943, 15.958114>,  <10.052918, 19.475401, 15.788024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.981362, 19.321943, 15.958114>,  <9.862103, 19.066181, 16.241596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.981362, 19.321943, 15.958114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938209, -0.059645, 0.340889,
		0.175696, -0.766551, -0.617682,
		0.298151, 0.639408, -0.708706,
		10.070807, 19.513765, 15.745502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.534225, 19.004833, 16.348637>,  <9.862103, 19.066181, 16.241596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.534225, 19.004833, 16.348637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.514392, 19.300739, 16.080221>,  <10.502492, 19.478283, 15.919172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.514392, 19.300739, 16.080221>,  <10.534225, 19.004833, 16.348637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.514392, 19.300739, 16.080221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988271, 0.133500, 0.074147,
		0.144435, -0.659490, -0.737707,
		-0.049585, 0.739764, -0.671036,
		10.499516, 19.522669, 15.878910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.181400, 18.951149, 15.882041>,  <10.534225, 19.004833, 16.348637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.181400, 18.951149, 15.882041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.014507, 19.313135, 15.915392>,  <10.914371, 19.530327, 15.935403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.014507, 19.313135, 15.915392>,  <11.181400, 18.951149, 15.882041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.014507, 19.313135, 15.915392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764815, 0.300091, 0.570091,
		0.490893, 0.301629, -0.817340,
		-0.417232, 0.904967, 0.083377,
		10.889338, 19.584625, 15.940405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.704149, 19.456829, 15.951911>,  <11.181400, 18.951149, 15.882041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.704149, 19.456829, 15.951911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.402190, 19.679298, 16.090939>,  <11.221015, 19.812780, 16.174355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.402190, 19.679298, 16.090939>,  <11.704149, 19.456829, 15.951911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.402190, 19.679298, 16.090939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618351, 0.426961, 0.659808,
		0.218568, 0.713006, -0.666221,
		-0.754897, 0.556171, 0.347568,
		11.175721, 19.846149, 16.195210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.058450, 20.145725, 16.126291>,  <11.704149, 19.456829, 15.951911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.058450, 20.145725, 16.126291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.695484, 20.171911, 16.292336>,  <11.477705, 20.187622, 16.391962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.695484, 20.171911, 16.292336>,  <12.058450, 20.145725, 16.126291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.695484, 20.171911, 16.292336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377100, 0.562785, 0.735573,
		-0.185463, 0.824006, -0.535366,
		-0.907413, 0.065465, 0.415109,
		11.423260, 20.191551, 16.416868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.887162, 20.853830, 16.375231>,  <12.058450, 20.145725, 16.126291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.887162, 20.853830, 16.375231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.654490, 20.628592, 16.610031>,  <11.514886, 20.493448, 16.750912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.654490, 20.628592, 16.610031>,  <11.887162, 20.853830, 16.375231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.654490, 20.628592, 16.610031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056851, 0.691737, 0.719908,
		-0.811428, 0.452128, -0.370358,
		-0.581681, -0.563098, 0.586999,
		11.479985, 20.459661, 16.786131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.340542, 21.259546, 16.661961>,  <11.887162, 20.853830, 16.375231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.340542, 21.259546, 16.661961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.349897, 20.940582, 16.903154>,  <11.355511, 20.749203, 17.047871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.349897, 20.940582, 16.903154>,  <11.340542, 21.259546, 16.661961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.349897, 20.940582, 16.903154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079469, 0.602722, 0.793984,
		-0.996563, 0.029348, 0.077467,
		0.023389, -0.797411, 0.602983,
		11.356915, 20.701359, 17.084049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.028946, 21.466873, 17.290699>,  <11.340542, 21.259546, 16.661961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.028946, 21.466873, 17.290699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.185399, 21.124210, 17.425253>,  <11.279271, 20.918613, 17.505985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.185399, 21.124210, 17.425253>,  <11.028946, 21.466873, 17.290699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.185399, 21.124210, 17.425253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118037, 0.409176, 0.904788,
		-0.912734, -0.314187, 0.261159,
		0.391133, -0.856657, 0.336383,
		11.302739, 20.867214, 17.526169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.842261, 21.421373, 18.005144>,  <11.028946, 21.466873, 17.290699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.842261, 21.421373, 18.005144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.136444, 21.150648, 18.017967>,  <11.312954, 20.988213, 18.025661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.136444, 21.150648, 18.017967>,  <10.842261, 21.421373, 18.005144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.136444, 21.150648, 18.017967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152633, 0.211585, 0.965368,
		-0.660157, -0.705092, 0.258916,
		0.735456, -0.676814, 0.032059,
		11.357080, 20.947603, 18.027586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.623160, 20.985113, 18.612623>,  <10.842261, 21.421373, 18.005144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.623160, 20.985113, 18.612623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.016274, 20.939209, 18.554710>,  <11.252143, 20.911667, 18.519962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.016274, 20.939209, 18.554710>,  <10.623160, 20.985113, 18.612623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.016274, 20.939209, 18.554710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127991, -0.142194, 0.981529,
		-0.133230, -0.983164, -0.125058,
		0.982786, -0.114763, -0.144780,
		11.311110, 20.904781, 18.511276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.714330, 20.356993, 18.823252>,  <10.623160, 20.985113, 18.612623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.714330, 20.356993, 18.823252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.045827, 20.578428, 18.856060>,  <11.244725, 20.711288, 18.875746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.045827, 20.578428, 18.856060>,  <10.714330, 20.356993, 18.823252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.045827, 20.578428, 18.856060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014107, -0.125852, 0.991949,
		0.559454, -0.823226, -0.096489,
		0.828742, 0.553588, 0.082021,
		11.294450, 20.744505, 18.880667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.085412, 20.114180, 19.418043>,  <10.714330, 20.356993, 18.823252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.085412, 20.114180, 19.418043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.278564, 20.459885, 19.361650>,  <11.394456, 20.667307, 19.327814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.278564, 20.459885, 19.361650>,  <11.085412, 20.114180, 19.418043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.278564, 20.459885, 19.361650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090138, 0.111086, 0.989715,
		0.871034, -0.490623, -0.024261,
		0.482882, 0.864262, -0.140984,
		11.423429, 20.719164, 19.319355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.711300, 20.130407, 19.811581>,  <11.085412, 20.114180, 19.418043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.711300, 20.130407, 19.811581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.643454, 20.518705, 19.743595>,  <11.602746, 20.751684, 19.702805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.643454, 20.518705, 19.743595>,  <11.711300, 20.130407, 19.811581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.643454, 20.518705, 19.743595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181845, 0.200330, 0.962705,
		0.968588, 0.132383, -0.210504,
		-0.169616, 0.970743, -0.169964,
		11.592568, 20.809929, 19.692606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.234358, 20.465597, 20.116570>,  <11.711300, 20.130407, 19.811581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.234358, 20.465597, 20.116570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.966637, 20.759882, 20.075075>,  <11.806004, 20.936453, 20.050179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.966637, 20.759882, 20.075075>,  <12.234358, 20.465597, 20.116570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.966637, 20.759882, 20.075075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136823, 0.259277, 0.956062,
		0.730283, 0.625702, -0.274198,
		-0.669303, 0.735712, -0.103735,
		11.765845, 20.980597, 20.043955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.560395, 20.935574, 20.479803>,  <12.234358, 20.465597, 20.116570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.560395, 20.935574, 20.479803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.181569, 21.062752, 20.462025>,  <11.954273, 21.139059, 20.451357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.181569, 21.062752, 20.462025>,  <12.560395, 20.935574, 20.479803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.181569, 21.062752, 20.462025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080382, 0.368882, 0.925994,
		0.310813, 0.873405, -0.374913,
		-0.947066, 0.317948, -0.044447,
		11.897449, 21.158136, 20.448690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.684597, 21.410801, 20.869955>,  <12.560395, 20.935574, 20.479803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.684597, 21.410801, 20.869955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.286214, 21.377331, 20.856886>,  <12.047184, 21.357248, 20.849045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.286214, 21.377331, 20.856886>,  <12.684597, 21.410801, 20.869955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.286214, 21.377331, 20.856886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063115, 0.392993, 0.917373,
		-0.063921, 0.915726, -0.396686,
		-0.995957, -0.083676, -0.032675,
		11.987427, 21.352228, 20.847084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.363141, 22.130316, 20.999327>,  <12.684597, 21.410801, 20.869955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.363141, 22.130316, 20.999327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.097652, 21.853540, 21.112955>,  <11.938359, 21.687475, 21.181133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.097652, 21.853540, 21.112955>,  <12.363141, 22.130316, 20.999327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.097652, 21.853540, 21.112955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102994, 0.460713, 0.881553,
		-0.740856, 0.555847, -0.377050,
		-0.663721, -0.691938, 0.284073,
		11.898537, 21.645960, 21.198177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.756151, 22.549049, 21.290564>,  <12.363141, 22.130316, 20.999327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.756151, 22.549049, 21.290564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.730558, 22.174286, 21.428032>,  <11.715203, 21.949429, 21.510513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.730558, 22.174286, 21.428032>,  <11.756151, 22.549049, 21.290564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.730558, 22.174286, 21.428032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171702, 0.349576, 0.921040,
		-0.983069, -0.000080, -0.183235,
		-0.063981, -0.936908, 0.343671,
		11.711364, 21.893213, 21.531134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.156569, 22.527798, 21.724020>,  <11.756151, 22.549049, 21.290564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.156569, 22.527798, 21.724020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.355444, 22.198608, 21.833942>,  <11.474770, 22.001095, 21.899895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.355444, 22.198608, 21.833942>,  <11.156569, 22.527798, 21.724020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.355444, 22.198608, 21.833942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315189, 0.123771, 0.940923,
		-0.808368, -0.554432, -0.197855,
		0.497190, -0.822973, 0.274804,
		11.504601, 21.951715, 21.916384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.684555, 22.169436, 22.136192>,  <11.156569, 22.527798, 21.724020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.684555, 22.169436, 22.136192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.048500, 22.034864, 22.233324>,  <11.266867, 21.954121, 22.291603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.048500, 22.034864, 22.233324>,  <10.684555, 22.169436, 22.136192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.048500, 22.034864, 22.233324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199616, 0.158138, 0.967029,
		-0.363738, -0.928336, 0.076727,
		0.909862, -0.336429, 0.242832,
		11.321459, 21.933935, 22.306173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.618515, 21.635529, 22.684256>,  <10.684555, 22.169436, 22.136192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.618515, 21.635529, 22.684256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.996140, 21.760809, 22.725540>,  <11.222714, 21.835978, 22.750311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.996140, 21.760809, 22.725540>,  <10.618515, 21.635529, 22.684256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.996140, 21.760809, 22.725540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129150, 0.063178, 0.989611,
		0.303427, -0.947583, 0.100094,
		0.944062, 0.313201, 0.103210,
		11.279358, 21.854769, 22.756504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.781205, 21.472908, 23.402603>,  <10.618515, 21.635529, 22.684256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.781205, 21.472908, 23.402603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.066499, 21.739281, 23.315119>,  <11.237675, 21.899103, 23.262629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.066499, 21.739281, 23.315119>,  <10.781205, 21.472908, 23.402603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.066499, 21.739281, 23.315119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196271, 0.109806, 0.974382,
		0.672886, -0.737889, -0.052385,
		0.713233, 0.665930, -0.218713,
		11.280469, 21.939060, 23.249504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.311926, 21.384283, 23.834690>,  <10.781205, 21.472908, 23.402603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.311926, 21.384283, 23.834690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.347318, 21.762354, 23.708954>,  <11.368553, 21.989197, 23.633512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.347318, 21.762354, 23.708954>,  <11.311926, 21.384283, 23.834690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.347318, 21.762354, 23.708954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316937, 0.272465, 0.908468,
		0.944311, -0.180007, -0.275454,
		0.088479, 0.945177, -0.314343,
		11.373861, 22.045908, 23.614651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.805382, 21.705254, 24.269583>,  <11.311926, 21.384283, 23.834690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.805382, 21.705254, 24.269583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.630189, 22.024212, 24.103531>,  <11.525073, 22.215588, 24.003901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.630189, 22.024212, 24.103531>,  <11.805382, 21.705254, 24.269583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.630189, 22.024212, 24.103531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120003, 0.509501, 0.852061,
		0.890938, 0.323372, -0.318843,
		-0.437983, 0.797395, -0.415128,
		11.498794, 22.263430, 23.978992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.144464, 22.368147, 24.383402>,  <11.805382, 21.705254, 24.269583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.144464, 22.368147, 24.383402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.788798, 22.510723, 24.268627>,  <11.575398, 22.596270, 24.199762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.788798, 22.510723, 24.268627>,  <12.144464, 22.368147, 24.383402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.788798, 22.510723, 24.268627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018147, 0.654040, 0.756242,
		0.457224, 0.667218, -0.588019,
		-0.889166, 0.356442, -0.286935,
		11.522048, 22.617657, 24.182547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.195366, 23.180199, 24.247396>,  <12.144464, 22.368147, 24.383402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.195366, 23.180199, 24.247396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.837600, 23.033188, 24.349333>,  <11.622940, 22.944981, 24.410494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.837600, 23.033188, 24.349333>,  <12.195366, 23.180199, 24.247396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.837600, 23.033188, 24.349333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005564, 0.578912, 0.815371,
		-0.447203, 0.727863, -0.519832,
		-0.894415, -0.367529, 0.254841,
		11.569275, 22.922930, 24.425785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.881509, 23.714252, 24.388315>,  <12.195366, 23.180199, 24.247396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.881509, 23.714252, 24.388315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.655821, 23.438114, 24.569458>,  <11.520408, 23.272430, 24.678144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.655821, 23.438114, 24.569458>,  <11.881509, 23.714252, 24.388315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.655821, 23.438114, 24.569458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079825, 0.591545, 0.802311,
		-0.821756, 0.416531, -0.388868,
		-0.564220, -0.690345, 0.452857,
		11.486555, 23.231010, 24.705315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.329967, 24.066189, 24.594711>,  <11.881509, 23.714252, 24.388315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.329967, 24.066189, 24.594711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.359884, 23.744522, 24.830584>,  <11.377834, 23.551521, 24.972107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.359884, 23.744522, 24.830584>,  <11.329967, 24.066189, 24.594711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.359884, 23.744522, 24.830584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080084, 0.594270, 0.800269,
		-0.993978, -0.012629, 0.108847,
		0.074791, -0.804167, 0.589680,
		11.382321, 23.503273, 25.007488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.708149, 24.049376, 25.089411>,  <11.329967, 24.066189, 24.594711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.708149, 24.049376, 25.089411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.016040, 23.840771, 25.236677>,  <11.200774, 23.715607, 25.325037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.016040, 23.840771, 25.236677>,  <10.708149, 24.049376, 25.089411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.016040, 23.840771, 25.236677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047619, 0.528210, 0.847778,
		-0.636596, -0.670088, 0.381743,
		0.769726, -0.521513, 0.368165,
		11.246958, 23.684317, 25.347126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.567455, 24.106485, 25.821152>,  <10.708149, 24.049376, 25.089411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.567455, 24.106485, 25.821152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.935312, 23.950554, 25.840286>,  <11.156027, 23.856995, 25.851767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.935312, 23.950554, 25.840286>,  <10.567455, 24.106485, 25.821152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.935312, 23.950554, 25.840286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130560, 0.418308, 0.898873,
		-0.370419, -0.820397, 0.435590,
		0.919643, -0.389830, 0.047838,
		11.211205, 23.833605, 25.854637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.593381, 23.700857, 26.429306>,  <10.567455, 24.106485, 25.821152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.593381, 23.700857, 26.429306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.977915, 23.770325, 26.343821>,  <11.208635, 23.812006, 26.292530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.977915, 23.770325, 26.343821>,  <10.593381, 23.700857, 26.429306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.977915, 23.770325, 26.343821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199317, 0.096699, 0.975152,
		0.190021, -0.980045, 0.058345,
		0.961335, 0.173670, -0.213714,
		11.266315, 23.822426, 26.279707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.924309, 23.245249, 26.781940>,  <10.593381, 23.700857, 26.429306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.924309, 23.245249, 26.781940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.179103, 23.543335, 26.703045>,  <11.331980, 23.722187, 26.655706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.179103, 23.543335, 26.703045>,  <10.924309, 23.245249, 26.781940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.179103, 23.543335, 26.703045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177298, 0.107380, 0.978282,
		0.750210, -0.658122, -0.063726,
		0.636986, 0.745215, -0.197241,
		11.370198, 23.766899, 26.643873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.544766, 23.064978, 27.204842>,  <10.924309, 23.245249, 26.781940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.544766, 23.064978, 27.204842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.567870, 23.453363, 27.111984>,  <11.581733, 23.686396, 27.056271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.567870, 23.453363, 27.111984>,  <11.544766, 23.064978, 27.204842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.567870, 23.453363, 27.111984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102742, 0.225516, 0.968807,
		0.993030, -0.079808, -0.086733,
		0.057759, 0.970965, -0.232143,
		11.585198, 23.744654, 27.042341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.074815, 23.280588, 27.675022>,  <11.544766, 23.064978, 27.204842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.074815, 23.280588, 27.675022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.913513, 23.615129, 27.526484>,  <11.816732, 23.815855, 27.437361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.913513, 23.615129, 27.526484>,  <12.074815, 23.280588, 27.675022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.913513, 23.615129, 27.526484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173189, 0.468225, 0.866470,
		0.898550, 0.285094, -0.333661,
		-0.403253, 0.836353, -0.371349,
		11.792537, 23.866035, 27.415079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.559190, 23.871283, 27.833502>,  <12.074815, 23.280588, 27.675022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.559190, 23.871283, 27.833502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.182579, 24.002180, 27.801409>,  <11.956613, 24.080719, 27.782154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.182579, 24.002180, 27.801409>,  <12.559190, 23.871283, 27.833502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.182579, 24.002180, 27.801409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046829, 0.362903, 0.930649,
		0.333665, 0.872475, -0.357008,
		-0.941528, 0.327244, -0.080231,
		11.900121, 24.100353, 27.777340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.523555, 24.492428, 28.259348>,  <12.559190, 23.871283, 27.833502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.523555, 24.492428, 28.259348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.131841, 24.415119, 28.235186>,  <11.896812, 24.368734, 28.220688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.131841, 24.415119, 28.235186>,  <12.523555, 24.492428, 28.259348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.131841, 24.415119, 28.235186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125119, 0.343009, 0.930962,
		-0.159210, 0.919234, -0.360085,
		-0.979284, -0.193272, -0.060404,
		11.838056, 24.357138, 28.217064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.164657, 25.088928, 28.514933>,  <12.523555, 24.492428, 28.259348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.164657, 25.088928, 28.514933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.874122, 24.814110, 28.522928>,  <11.699800, 24.649218, 28.527725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.874122, 24.814110, 28.522928>,  <12.164657, 25.088928, 28.514933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.874122, 24.814110, 28.522928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271019, 0.313002, 0.910263,
		-0.631651, 0.655740, -0.413548,
		-0.726338, -0.687047, 0.019990,
		11.656220, 24.607996, 28.528925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.539582, 25.377707, 28.625114>,  <12.164657, 25.088928, 28.514933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.539582, 25.377707, 28.625114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.515463, 25.008297, 28.776625>,  <11.500992, 24.786652, 28.867531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.515463, 25.008297, 28.776625>,  <11.539582, 25.377707, 28.625114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.515463, 25.008297, 28.776625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374342, 0.372691, 0.849099,
		-0.925328, -0.090592, -0.368186,
		-0.060298, -0.923523, 0.378774,
		11.497374, 24.731239, 28.890257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.866151, 26.107430, 28.684057>,  <11.539582, 25.377707, 28.625114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.866151, 26.107430, 28.684057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.823062, 26.192383, 29.072550>,  <11.797209, 26.243355, 29.305645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.823062, 26.192383, 29.072550>,  <11.866151, 26.107430, 28.684057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.823062, 26.192383, 29.072550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307110, -0.922028, 0.235685,
		0.945558, 0.323664, 0.034098,
		-0.107722, 0.212382, 0.971231,
		11.790746, 26.256098, 29.363918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.482101, 25.888618, 29.106602>,  <11.866151, 26.107430, 28.684057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.482101, 25.888618, 29.106602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.129160, 25.865820, 29.293451>,  <11.917395, 25.852140, 29.405561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.129160, 25.865820, 29.293451>,  <12.482101, 25.888618, 29.106602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.129160, 25.865820, 29.293451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283450, -0.856739, 0.430877,
		0.375643, 0.512592, 0.772102,
		-0.882354, -0.056996, 0.467123,
		11.864454, 25.848721, 29.433588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.515173, 25.414303, 29.670889>,  <12.482101, 25.888618, 29.106602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.515173, 25.414303, 29.670889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.120089, 25.423843, 29.609106>,  <11.883038, 25.429567, 29.572037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.120089, 25.423843, 29.609106>,  <12.515173, 25.414303, 29.670889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.120089, 25.423843, 29.609106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099636, -0.857517, 0.504716,
		-0.120412, 0.513903, 0.849356,
		-0.987712, 0.023852, -0.154458,
		11.823775, 25.431000, 29.562769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.153735, 25.426603, 30.423254>,  <12.515173, 25.414303, 29.670889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.153735, 25.426603, 30.423254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.985801, 25.283905, 30.089436>,  <11.885040, 25.198286, 29.889145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.985801, 25.283905, 30.089436>,  <12.153735, 25.426603, 30.423254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.985801, 25.283905, 30.089436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122206, -0.933357, 0.337505,
		-0.899335, 0.039710, 0.435453,
		-0.419836, -0.356745, -0.834548,
		11.859850, 25.176882, 29.839071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.616961, 24.928608, 30.626011>,  <12.153735, 25.426603, 30.423254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.616961, 24.928608, 30.626011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.808785, 24.870937, 30.279778>,  <11.923880, 24.836336, 30.072037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.808785, 24.870937, 30.279778>,  <11.616961, 24.928608, 30.626011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.808785, 24.870937, 30.279778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219056, -0.935512, 0.277185,
		-0.849728, -0.322538, -0.417052,
		0.479560, -0.144174, -0.865584,
		11.952654, 24.827684, 30.020102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.461026, 24.254854, 30.285337>,  <11.616961, 24.928608, 30.626011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.461026, 24.254854, 30.285337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.806586, 24.375393, 30.123909>,  <12.013922, 24.447716, 30.027052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.806586, 24.375393, 30.123909>,  <11.461026, 24.254854, 30.285337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.806586, 24.375393, 30.123909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397311, -0.900190, 0.178331,
		-0.309550, -0.314403, -0.897402,
		0.863900, 0.301345, -0.403570,
		12.065756, 24.465796, 30.002838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.682019, 23.782604, 29.774099>,  <11.461026, 24.254854, 30.285337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.682019, 23.782604, 29.774099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.013651, 23.950321, 29.922058>,  <12.212630, 24.050951, 30.010834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.013651, 23.950321, 29.922058>,  <11.682019, 23.782604, 29.774099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.013651, 23.950321, 29.922058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484819, -0.868643, -0.102030,
		0.278527, 0.263924, -0.923454,
		0.829080, 0.419290, 0.369896,
		12.262375, 24.076109, 30.033028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.313528, 23.611259, 29.382675>,  <11.682019, 23.782604, 29.774099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.313528, 23.611259, 29.382675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.310357, 23.637648, 29.781792>,  <12.308455, 23.653481, 30.021261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.310357, 23.637648, 29.781792>,  <12.313528, 23.611259, 29.382675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.310357, 23.637648, 29.781792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167874, -0.983572, 0.066366,
		0.985777, 0.168029, -0.003278,
		-0.007928, 0.065973, 0.997790,
		12.307979, 23.657440, 30.081129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.798142, 23.164860, 29.657850>,  <12.313528, 23.611259, 29.382675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.798142, 23.164860, 29.657850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.519552, 23.230928, 29.937176>,  <12.352398, 23.270569, 30.104771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.519552, 23.230928, 29.937176>,  <12.798142, 23.164860, 29.657850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.519552, 23.230928, 29.937176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171025, -0.983314, 0.062007,
		0.696902, -0.076243, 0.713102,
		-0.696476, 0.165171, 0.698313,
		12.310610, 23.280479, 30.146669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.874775, 22.861849, 30.310745>,  <12.798142, 23.164860, 29.657850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.874775, 22.861849, 30.310745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.487089, 22.874035, 30.213015>,  <12.254478, 22.881348, 30.154377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.487089, 22.874035, 30.213015>,  <12.874775, 22.861849, 30.310745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.487089, 22.874035, 30.213015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046374, -0.997143, 0.059619,
		-0.241812, 0.069114, 0.967858,
		-0.969214, 0.030467, -0.244327,
		12.196325, 22.883175, 30.139717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.546322, 22.512003, 30.766983>,  <12.874775, 22.861849, 30.310745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.546322, 22.512003, 30.766983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.302780, 22.513903, 30.449677>,  <12.156655, 22.515043, 30.259293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.302780, 22.513903, 30.449677>,  <12.546322, 22.512003, 30.766983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.302780, 22.513903, 30.449677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027150, -0.999521, 0.014853,
		-0.792817, 0.030581, 0.608692,
		-0.608855, 0.004750, -0.793268,
		12.120124, 22.515327, 30.211697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.059650, 21.889177, 30.805401>,  <12.546322, 22.512003, 30.766983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.059650, 21.889177, 30.805401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.078135, 21.998011, 30.420935>,  <12.089227, 22.063311, 30.190256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.078135, 21.998011, 30.420935>,  <12.059650, 21.889177, 30.805401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.078135, 21.998011, 30.420935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238526, -0.931352, -0.275113,
		-0.970036, 0.241976, 0.021860,
		0.046212, 0.272084, -0.961163,
		12.091999, 22.079636, 30.132586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.463993, 21.596165, 30.425541>,  <12.059650, 21.889177, 30.805401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.463993, 21.596165, 30.425541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.715092, 21.692074, 30.129313>,  <11.865750, 21.749619, 29.951576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.715092, 21.692074, 30.129313>,  <11.463993, 21.596165, 30.425541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.715092, 21.692074, 30.129313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256852, -0.834292, -0.487836,
		-0.734822, 0.496454, -0.462137,
		0.627745, 0.239772, -0.740571,
		11.903416, 21.764006, 29.907141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.041904, 21.674587, 29.777365>,  <11.463993, 21.596165, 30.425541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.041904, 21.674587, 29.777365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.407959, 21.595772, 29.636681>,  <11.627592, 21.548483, 29.552271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.407959, 21.595772, 29.636681>,  <11.041904, 21.674587, 29.777365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.407959, 21.595772, 29.636681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396205, -0.600744, -0.694354,
		-0.074471, 0.774778, -0.627832,
		0.915137, -0.197041, -0.351709,
		11.682500, 21.536659, 29.531168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.999864, 21.677460, 29.059654>,  <11.041904, 21.674587, 29.777365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.999864, 21.677460, 29.059654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.330927, 21.467787, 29.139870>,  <11.529565, 21.341984, 29.188000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.330927, 21.467787, 29.139870>,  <10.999864, 21.677460, 29.059654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.330927, 21.467787, 29.139870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337830, -0.750646, -0.567805,
		0.448168, 0.402199, -0.798362,
		0.827657, -0.524183, 0.200540,
		11.579224, 21.310532, 29.200031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.191292, 21.366915, 28.406469>,  <10.999864, 21.677460, 29.059654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.191292, 21.366915, 28.406469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.396836, 21.148510, 28.671141>,  <11.520163, 21.017467, 28.829943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.396836, 21.148510, 28.671141>,  <11.191292, 21.366915, 28.406469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.396836, 21.148510, 28.671141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097414, -0.803450, -0.587349,
		0.852325, 0.237358, -0.466051,
		0.513860, -0.546012, 0.661678,
		11.550994, 20.984707, 28.869644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.652357, 20.987314, 28.009045>,  <11.191292, 21.366915, 28.406469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.652357, 20.987314, 28.009045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.628843, 20.785427, 28.353558>,  <11.614736, 20.664295, 28.560265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.628843, 20.785427, 28.353558>,  <11.652357, 20.987314, 28.009045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.628843, 20.785427, 28.353558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051342, -0.863161, -0.502312,
		0.996950, 0.014692, 0.076653,
		-0.058784, -0.504716, 0.861282,
		11.611208, 20.634012, 28.611942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.120398, 20.512789, 27.921185>,  <11.652357, 20.987314, 28.009045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.120398, 20.512789, 27.921185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.861267, 20.373034, 28.191961>,  <11.705789, 20.289181, 28.354427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.861267, 20.373034, 28.191961>,  <12.120398, 20.512789, 27.921185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.861267, 20.373034, 28.191961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073209, -0.855955, -0.511841,
		0.758263, -0.381142, 0.528931,
		-0.647825, -0.349387, 0.676942,
		11.666920, 20.268217, 28.395044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.383209, 19.893053, 28.099436>,  <12.120398, 20.512789, 27.921185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.383209, 19.893053, 28.099436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.996264, 19.881100, 28.200087>,  <11.764097, 19.873928, 28.260477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.996264, 19.881100, 28.200087>,  <12.383209, 19.893053, 28.099436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.996264, 19.881100, 28.200087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119778, -0.821156, -0.557993,
		0.223300, -0.569921, 0.790776,
		-0.967363, -0.029882, 0.251629,
		11.706056, 19.872135, 28.275576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.195814, 19.201668, 28.237364>,  <12.383209, 19.893053, 28.099436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.195814, 19.201668, 28.237364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.853239, 19.382612, 28.137857>,  <11.647694, 19.491179, 28.078154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.853239, 19.382612, 28.137857>,  <12.195814, 19.201668, 28.237364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.853239, 19.382612, 28.137857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187819, -0.721874, -0.666050,
		-0.480873, -0.523707, 0.703202,
		-0.856438, 0.452359, -0.248767,
		11.596308, 19.518320, 28.063227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.686425, 18.612650, 28.147161>,  <12.195814, 19.201668, 28.237364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.686425, 18.612650, 28.147161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.535000, 18.941227, 27.976553>,  <11.444145, 19.138374, 27.874187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.535000, 18.941227, 27.976553>,  <11.686425, 18.612650, 28.147161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.535000, 18.941227, 27.976553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372518, -0.557065, -0.742232,
		-0.847302, -0.122095, 0.516887,
		-0.378563, 0.821444, -0.426520,
		11.421432, 19.187660, 27.848597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.982702, 18.419750, 28.007586>,  <11.686425, 18.612650, 28.147161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.982702, 18.419750, 28.007586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.073735, 18.733406, 27.776648>,  <11.128355, 18.921600, 27.638084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.073735, 18.733406, 27.776648>,  <10.982702, 18.419750, 28.007586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.073735, 18.733406, 27.776648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282398, -0.514275, -0.809798,
		-0.931911, 0.347337, 0.104400,
		0.227583, 0.784142, -0.577345,
		11.142010, 18.968649, 27.603443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.461772, 18.572952, 27.628849>,  <10.982702, 18.419750, 28.007586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.461772, 18.572952, 27.628849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.754374, 18.739557, 27.412916>,  <10.929935, 18.839521, 27.283358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.754374, 18.739557, 27.412916>,  <10.461772, 18.572952, 27.628849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.754374, 18.739557, 27.412916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395722, -0.385399, -0.833590,
		-0.555252, 0.823397, -0.117097,
		0.731505, 0.416515, -0.539830,
		10.973825, 18.864511, 27.250967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.222877, 18.948336, 27.087852>,  <10.461772, 18.572952, 27.628849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.222877, 18.948336, 27.087852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.589906, 18.846796, 26.965464>,  <10.810123, 18.785872, 26.892031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.589906, 18.846796, 26.965464>,  <10.222877, 18.948336, 27.087852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.589906, 18.846796, 26.965464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340399, -0.104026, -0.934509,
		0.205395, 0.961633, -0.181861,
		0.917574, -0.253849, -0.305972,
		10.865178, 18.770641, 26.873672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.167694, 18.905867, 26.400688>,  <10.222877, 18.948336, 27.087852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.167694, 18.905867, 26.400688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.544340, 18.774380, 26.429829>,  <10.770328, 18.695488, 26.447313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.544340, 18.774380, 26.429829>,  <10.167694, 18.905867, 26.400688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.544340, 18.774380, 26.429829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033407, -0.306523, -0.951277,
		0.335030, 0.893303, -0.299608,
		0.941615, -0.328715, 0.072852,
		10.826824, 18.675766, 26.451685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.539125, 19.228077, 25.805902>,  <10.167694, 18.905867, 26.400688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.539125, 19.228077, 25.805902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.724813, 18.892447, 25.919357>,  <10.836225, 18.691069, 25.987431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.724813, 18.892447, 25.919357>,  <10.539125, 19.228077, 25.805902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.724813, 18.892447, 25.919357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011038, -0.325690, -0.945412,
		0.885653, 0.435745, -0.160452,
		0.464217, -0.839078, 0.283638,
		10.864078, 18.640722, 26.004448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.954797, 19.174587, 25.285255>,  <10.539125, 19.228077, 25.805902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.954797, 19.174587, 25.285255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.920175, 18.821489, 25.469978>,  <10.899402, 18.609631, 25.580812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.920175, 18.821489, 25.469978>,  <10.954797, 19.174587, 25.285255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.920175, 18.821489, 25.469978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009412, -0.462803, -0.886411,
		0.996203, -0.081069, 0.031750,
		-0.086555, -0.882746, 0.461809,
		10.894208, 18.556665, 25.608521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.406951, 18.746773, 24.939629>,  <10.954797, 19.174587, 25.285255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.406951, 18.746773, 24.939629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.244508, 18.453756, 25.158155>,  <11.147041, 18.277946, 25.289270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.244508, 18.453756, 25.158155>,  <11.406951, 18.746773, 24.939629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.244508, 18.453756, 25.158155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036237, -0.584455, -0.810617,
		0.913106, -0.348996, 0.210807,
		-0.406109, -0.732540, 0.546316,
		11.122675, 18.233994, 25.322050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.796679, 18.117483, 24.792624>,  <11.406951, 18.746773, 24.939629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.796679, 18.117483, 24.792624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.429465, 18.028311, 24.923782>,  <11.209137, 17.974808, 25.002478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.429465, 18.028311, 24.923782>,  <11.796679, 18.117483, 24.792624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.429465, 18.028311, 24.923782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140989, -0.589389, -0.795451,
		0.370588, -0.776481, 0.509648,
		-0.918034, -0.222930, 0.327895,
		11.154055, 17.961432, 25.022150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.801584, 17.341125, 24.714003>,  <11.796679, 18.117483, 24.792624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.801584, 17.341125, 24.714003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.429833, 17.488686, 24.719200>,  <11.206782, 17.577221, 24.722319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.429833, 17.488686, 24.719200>,  <11.801584, 17.341125, 24.714003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.429833, 17.488686, 24.719200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228076, -0.546201, -0.806006,
		-0.290237, -0.752049, 0.591765,
		-0.929379, 0.368900, 0.012996,
		11.151020, 17.599356, 24.723099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.301776, 16.758171, 24.595013>,  <11.801584, 17.341125, 24.714003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.301776, 16.758171, 24.595013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.105489, 17.092415, 24.496258>,  <10.987717, 17.292961, 24.437004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.105489, 17.092415, 24.496258>,  <11.301776, 16.758171, 24.595013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.105489, 17.092415, 24.496258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415825, -0.473590, -0.776403,
		-0.765694, -0.278332, 0.579866,
		-0.490717, 0.835610, -0.246887,
		10.958274, 17.343098, 24.422192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.664124, 16.570698, 24.333654>,  <11.301776, 16.758171, 24.595013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.664124, 16.570698, 24.333654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.655704, 16.945223, 24.193438>,  <10.650653, 17.169937, 24.109308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.655704, 16.945223, 24.193438>,  <10.664124, 16.570698, 24.333654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.655704, 16.945223, 24.193438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208953, -0.346995, -0.914294,
		-0.977699, 0.054002, 0.202949,
		-0.021049, 0.936311, -0.350540,
		10.649390, 17.226116, 24.088276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.977474, 16.657555, 23.943861>,  <10.664124, 16.570698, 24.333654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.977474, 16.657555, 23.943861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.219496, 16.955376, 23.831043>,  <10.364709, 17.134069, 23.763353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.219496, 16.955376, 23.831043>,  <9.977474, 16.657555, 23.943861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.219496, 16.955376, 23.831043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280019, -0.132611, -0.950791,
		-0.745317, 0.654258, 0.128252,
		0.605055, 0.744554, -0.282042,
		10.401012, 17.178741, 23.746431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.589320, 17.080811, 23.468393>,  <9.977474, 16.657555, 23.943861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.589320, 17.080811, 23.468393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.952836, 17.198238, 23.349791>,  <10.170946, 17.268696, 23.278629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.952836, 17.198238, 23.349791>,  <9.589320, 17.080811, 23.468393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.952836, 17.198238, 23.349791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274354, -0.114971, -0.954731,
		-0.314371, 0.948998, -0.023942,
		0.908791, 0.293571, -0.296505,
		10.225473, 17.286310, 23.260839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.438590, 17.508102, 22.903408>,  <9.589320, 17.080811, 23.468393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.438590, 17.508102, 22.903408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.825816, 17.409616, 22.884516>,  <10.058151, 17.350525, 22.873180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.825816, 17.409616, 22.884516>,  <9.438590, 17.508102, 22.903408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.825816, 17.409616, 22.884516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059393, -0.042200, -0.997342,
		0.243565, 0.968296, -0.055476,
		0.968064, -0.246213, -0.047231,
		10.116236, 17.335752, 22.870346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.708981, 18.019724, 22.493261>,  <9.438590, 17.508102, 22.903408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.708981, 18.019724, 22.493261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.981199, 17.726887, 22.481276>,  <10.144530, 17.551186, 22.474085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.981199, 17.726887, 22.481276>,  <9.708981, 18.019724, 22.493261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.981199, 17.726887, 22.481276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064449, -0.019073, -0.997739,
		0.729865, 0.680939, -0.060163,
		0.680547, -0.732092, -0.029965,
		10.185364, 17.507259, 22.472286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.254713, 18.284168, 22.022175>,  <9.708981, 18.019724, 22.493261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.254713, 18.284168, 22.022175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.277381, 17.884825, 22.018896>,  <10.290982, 17.645218, 22.016930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.277381, 17.884825, 22.018896>,  <10.254713, 18.284168, 22.022175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.277381, 17.884825, 22.018896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014074, 0.007410, -0.999873,
		0.998294, 0.056779, -0.013631,
		0.056671, -0.998359, -0.008197,
		10.294382, 17.585318, 22.016438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.663563, 18.183071, 21.540607>,  <10.254713, 18.284168, 22.022175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.663563, 18.183071, 21.540607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.473232, 17.831350, 21.548779>,  <10.359035, 17.620317, 21.553680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.473232, 17.831350, 21.548779>,  <10.663563, 18.183071, 21.540607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.473232, 17.831350, 21.548779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071742, 0.015652, -0.997301,
		0.876609, -0.476006, -0.070530,
		-0.475825, -0.879303, 0.020428,
		10.330484, 17.567560, 21.554907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.027556, 17.744162, 21.053312>,  <10.663563, 18.183071, 21.540607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.027556, 17.744162, 21.053312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.661406, 17.587204, 21.089336>,  <10.441715, 17.493029, 21.110950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.661406, 17.587204, 21.089336>,  <11.027556, 17.744162, 21.053312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.661406, 17.587204, 21.089336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087542, -0.024345, -0.995863,
		0.392963, -0.919475, -0.012066,
		-0.915377, -0.392394, 0.090059,
		10.386792, 17.469486, 21.116354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.904708, 17.158287, 20.576220>,  <11.027556, 17.744162, 21.053312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.904708, 17.158287, 20.576220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.526892, 17.253759, 20.666443>,  <10.300202, 17.311043, 20.720577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.526892, 17.253759, 20.666443>,  <10.904708, 17.158287, 20.576220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.526892, 17.253759, 20.666443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241193, -0.038077, -0.969730,
		-0.222866, -0.970352, 0.093533,
		-0.944540, 0.238680, 0.225557,
		10.243529, 17.325363, 20.734110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.556462, 16.767214, 20.189434>,  <10.904708, 17.158287, 20.576220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.556462, 16.767214, 20.189434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.307241, 17.064663, 20.286457>,  <10.157709, 17.243132, 20.344671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.307241, 17.064663, 20.286457>,  <10.556462, 16.767214, 20.189434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.307241, 17.064663, 20.286457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322429, 0.038358, -0.945816,
		-0.712633, -0.667500, 0.215866,
		-0.623052, 0.743621, 0.242556,
		10.120326, 17.287750, 20.359224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.881411, 16.554087, 19.840815>,  <10.556462, 16.767214, 20.189434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.881411, 16.554087, 19.840815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.899880, 16.946285, 19.917231>,  <9.910962, 17.181604, 19.963079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.899880, 16.946285, 19.917231>,  <9.881411, 16.554087, 19.840815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.899880, 16.946285, 19.917231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197494, 0.196427, -0.960423,
		-0.979216, 0.006618, 0.202711,
		0.046174, 0.980496, 0.191038,
		9.913733, 17.240435, 19.974543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.308606, 16.768805, 19.438196>,  <9.881411, 16.554087, 19.840815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.308606, 16.768805, 19.438196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.498343, 17.111845, 19.517714>,  <9.612185, 17.317669, 19.565424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.498343, 17.111845, 19.517714>,  <9.308606, 16.768805, 19.438196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.498343, 17.111845, 19.517714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171188, 0.311361, -0.934745,
		-0.863535, 0.409359, 0.294503,
		0.474343, 0.857601, 0.198794,
		9.640646, 17.369125, 19.577353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.919559, 17.081554, 19.193949>,  <9.308606, 16.768805, 19.438196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.919559, 17.081554, 19.193949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.250982, 17.304720, 19.212814>,  <9.449836, 17.438620, 19.224134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.250982, 17.304720, 19.212814>,  <8.919559, 17.081554, 19.193949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.250982, 17.304720, 19.212814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131332, 0.275542, -0.952275,
		-0.544285, 0.782820, 0.301574,
		0.828556, 0.557915, 0.047164,
		9.499549, 17.472095, 19.226963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.858152, 17.849466, 19.068506>,  <8.919559, 17.081554, 19.193949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.858152, 17.849466, 19.068506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.240631, 17.784487, 18.971102>,  <9.470119, 17.745499, 18.912659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.240631, 17.784487, 18.971102>,  <8.858152, 17.849466, 19.068506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.240631, 17.784487, 18.971102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206446, 0.215529, -0.954425,
		0.207529, 0.962890, 0.172551,
		0.956197, -0.162449, -0.243513,
		9.527490, 17.735752, 18.898048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.941236, 18.274958, 18.469492>,  <8.858152, 17.849466, 19.068506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.941236, 18.274958, 18.469492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.291327, 18.082005, 18.455139>,  <9.501381, 17.966232, 18.446527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.291327, 18.082005, 18.455139>,  <8.941236, 18.274958, 18.469492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.291327, 18.082005, 18.455139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227000, 0.475099, -0.850148,
		0.427144, 0.735926, 0.525320,
		0.875225, -0.482384, -0.035880,
		9.553894, 17.937290, 18.444376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.528482, 18.771097, 18.197899>,  <8.941236, 18.274958, 18.469492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.528482, 18.771097, 18.197899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.656343, 18.399675, 18.122416>,  <9.733060, 18.176823, 18.077126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.656343, 18.399675, 18.122416>,  <9.528482, 18.771097, 18.197899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.656343, 18.399675, 18.122416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078498, 0.224425, -0.971324,
		0.944278, 0.295672, 0.144627,
		0.319652, -0.928553, -0.188710,
		9.752239, 18.121109, 18.065802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.071295, 18.849449, 17.835135>,  <9.528482, 18.771097, 18.197899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.071295, 18.849449, 17.835135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.008150, 18.460812, 17.764612>,  <9.970263, 18.227629, 17.722300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.008150, 18.460812, 17.764612>,  <10.071295, 18.849449, 17.835135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.008150, 18.460812, 17.764612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216780, 0.140088, -0.966117,
		0.963372, -0.190733, 0.188508,
		-0.157862, -0.971595, -0.176304,
		9.960792, 18.169333, 17.711721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.570607, 18.546732, 17.408211>,  <10.071295, 18.849449, 17.835135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.570607, 18.546732, 17.408211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.257558, 18.313074, 17.322166>,  <10.069728, 18.172878, 17.270540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.257558, 18.313074, 17.322166>,  <10.570607, 18.546732, 17.408211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.257558, 18.313074, 17.322166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171993, 0.129196, -0.976589,
		0.598262, -0.801300, -0.000643,
		-0.782624, -0.584146, -0.215111,
		10.022771, 18.137831, 17.257633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.873071, 17.985037, 17.016251>,  <10.570607, 18.546732, 17.408211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.873071, 17.985037, 17.016251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.477289, 17.994095, 16.959026>,  <10.239820, 17.999529, 16.924692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.477289, 17.994095, 16.959026>,  <10.873071, 17.985037, 17.016251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.477289, 17.994095, 16.959026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142093, -0.039768, -0.989054,
		-0.028075, -0.998952, 0.036133,
		-0.989455, 0.022634, -0.143061,
		10.180452, 18.000889, 16.916107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.457267, 17.590137, 16.884827>,  <10.873071, 17.985037, 17.016251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.457267, 17.590137, 16.884827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.529140, 17.213556, 16.998936>,  <11.572265, 16.987608, 17.067402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.529140, 17.213556, 16.998936>,  <11.457267, 17.590137, 16.884827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.529140, 17.213556, 16.998936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655659, 0.330804, 0.678734,
		-0.733365, 0.065084, 0.676713,
		0.179685, -0.941452, 0.285273,
		11.583046, 16.931120, 17.084518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.296331, 17.354273, 17.621624>,  <11.457267, 17.590137, 16.884827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.296331, 17.354273, 17.621624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.620737, 17.205204, 17.441236>,  <11.815380, 17.115763, 17.333004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.620737, 17.205204, 17.441236>,  <11.296331, 17.354273, 17.621624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.620737, 17.205204, 17.441236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576742, 0.380035, 0.723147,
		-0.098112, -0.846575, 0.523148,
		0.811013, -0.372672, -0.450970,
		11.864041, 17.093403, 17.305946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.645500, 16.964312, 18.173824>,  <11.296331, 17.354273, 17.621624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.645500, 16.964312, 18.173824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.939161, 17.100206, 17.938673>,  <12.115358, 17.181744, 17.797583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.939161, 17.100206, 17.938673>,  <11.645500, 16.964312, 18.173824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.939161, 17.100206, 17.938673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572079, 0.156838, 0.805064,
		0.365711, -0.927351, -0.079213,
		0.734153, 0.339737, -0.587876,
		12.159408, 17.202127, 17.762310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.211033, 16.521343, 18.257816>,  <11.645500, 16.964312, 18.173824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.211033, 16.521343, 18.257816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.314495, 16.887318, 18.133890>,  <12.376573, 17.106903, 18.059534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.314495, 16.887318, 18.133890>,  <12.211033, 16.521343, 18.257816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.314495, 16.887318, 18.133890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465858, 0.162814, 0.869751,
		0.846211, -0.369297, -0.384118,
		0.258657, 0.914938, -0.309815,
		12.392092, 17.161798, 18.040945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.985209, 16.588999, 18.318352>,  <12.211033, 16.521343, 18.257816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.985209, 16.588999, 18.318352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.818588, 16.952595, 18.324320>,  <12.718616, 17.170752, 18.327900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.818588, 16.952595, 18.324320>,  <12.985209, 16.588999, 18.318352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.818588, 16.952595, 18.324320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490240, 0.210776, 0.845718,
		0.765605, 0.359598, -0.533422,
		-0.416551, 0.908990, 0.014919,
		12.693623, 17.225292, 18.328794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.648934, 17.006937, 18.568693>,  <12.985209, 16.588999, 18.318352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.648934, 17.006937, 18.568693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.321154, 17.233093, 18.606287>,  <13.124485, 17.368786, 18.628843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.321154, 17.233093, 18.606287>,  <13.648934, 17.006937, 18.568693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.321154, 17.233093, 18.606287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396442, 0.440711, 0.805361,
		0.413922, 0.697215, -0.585286,
		-0.819452, 0.565389, 0.093986,
		13.075318, 17.402710, 18.634483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.939366, 17.644234, 18.797773>,  <13.648934, 17.006937, 18.568693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.939366, 17.644234, 18.797773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.545697, 17.632891, 18.867743>,  <13.309496, 17.626085, 18.909723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.545697, 17.632891, 18.867743>,  <13.939366, 17.644234, 18.797773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.545697, 17.632891, 18.867743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130781, 0.549846, 0.824964,
		-0.119575, 0.834785, -0.537435,
		-0.984174, -0.028359, 0.174922,
		13.250445, 17.624384, 18.920219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.665546, 18.346855, 18.931362>,  <13.939366, 17.644234, 18.797773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.665546, 18.346855, 18.931362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.419683, 18.095730, 19.122377>,  <13.272164, 17.945055, 19.236986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.419683, 18.095730, 19.122377>,  <13.665546, 18.346855, 18.931362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.419683, 18.095730, 19.122377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152174, 0.499651, 0.852755,
		-0.773975, 0.596823, -0.211578,
		-0.614659, -0.627814, 0.477538,
		13.235285, 17.907385, 19.265638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.349900, 18.768221, 19.318590>,  <13.665546, 18.346855, 18.931362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.349900, 18.768221, 19.318590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.318449, 18.407291, 19.488123>,  <13.299578, 18.190735, 19.589842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.318449, 18.407291, 19.488123>,  <13.349900, 18.768221, 19.318590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.318449, 18.407291, 19.488123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201354, 0.402010, 0.893221,
		-0.976358, 0.155573, 0.150077,
		-0.078629, -0.902322, 0.423831,
		13.294860, 18.136595, 19.615273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.107584, 18.923426, 20.011126>,  <13.349900, 18.768221, 19.318590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.107584, 18.923426, 20.011126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.207165, 18.536806, 20.035791>,  <13.266913, 18.304834, 20.050591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.207165, 18.536806, 20.035791>,  <13.107584, 18.923426, 20.011126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.207165, 18.536806, 20.035791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032156, 0.055385, 0.997947,
		-0.967982, -0.250425, -0.017292,
		0.248953, -0.966550, 0.061664,
		13.281851, 18.246841, 20.054291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.580612, 18.603533, 20.491632>,  <13.107584, 18.923426, 20.011126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.580612, 18.603533, 20.491632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.888248, 18.347889, 20.494066>,  <13.072830, 18.194502, 20.495527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.888248, 18.347889, 20.494066>,  <12.580612, 18.603533, 20.491632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.888248, 18.347889, 20.494066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002184, 0.012149, 0.999924,
		-0.639137, -0.769018, 0.010740,
		0.769090, -0.639111, 0.006085,
		13.118976, 18.156155, 20.495892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.410331, 18.130413, 20.991739>,  <12.580612, 18.603533, 20.491632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.410331, 18.130413, 20.991739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.805411, 18.089291, 20.944620>,  <13.042459, 18.064617, 20.916349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.805411, 18.089291, 20.944620>,  <12.410331, 18.130413, 20.991739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.805411, 18.089291, 20.944620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107975, -0.096401, 0.989469,
		-0.113092, -0.990018, -0.084113,
		0.987700, -0.102819, -0.117799,
		13.101722, 18.058449, 20.909281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.652150, 17.473167, 21.246672>,  <12.410331, 18.130413, 20.991739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.652150, 17.473167, 21.246672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.977097, 17.705975, 21.261179>,  <13.172065, 17.845659, 21.269882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.977097, 17.705975, 21.261179>,  <12.652150, 17.473167, 21.246672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.977097, 17.705975, 21.261179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144137, -0.260666, 0.954609,
		0.565053, -0.770265, -0.295647,
		0.812367, 0.582018, 0.036267,
		13.220807, 17.880579, 21.272058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.991766, 17.239748, 21.877104>,  <12.652150, 17.473167, 21.246672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.991766, 17.239748, 21.877104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.225659, 17.549263, 21.779663>,  <13.365995, 17.734972, 21.721199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.225659, 17.549263, 21.779663>,  <12.991766, 17.239748, 21.877104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.225659, 17.549263, 21.779663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422935, -0.034536, 0.905502,
		0.692252, -0.632505, -0.347456,
		0.584734, 0.773786, -0.243601,
		13.401079, 17.781399, 21.706583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.805456, 17.054302, 21.874121>,  <12.991766, 17.239748, 21.877104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.805456, 17.054302, 21.874121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.710456, 17.434982, 21.951952>,  <13.653456, 17.663391, 21.998650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.710456, 17.434982, 21.951952>,  <13.805456, 17.054302, 21.874121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.710456, 17.434982, 21.951952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408047, -0.084033, 0.909085,
		0.881527, 0.295305, -0.368380,
		-0.237501, 0.951700, 0.194576,
		13.639206, 17.720493, 22.010324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.323864, 17.230844, 22.338224>,  <13.805456, 17.054302, 21.874121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.323864, 17.230844, 22.338224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.051836, 17.518269, 22.396435>,  <13.888619, 17.690723, 22.431360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.051836, 17.518269, 22.396435>,  <14.323864, 17.230844, 22.338224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.051836, 17.518269, 22.396435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048803, -0.153686, 0.986914,
		0.731521, 0.678273, 0.069450,
		-0.680070, 0.718559, 0.145526,
		13.847815, 17.733837, 22.440092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.662224, 17.676073, 22.735807>,  <14.323864, 17.230844, 22.338224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.662224, 17.676073, 22.735807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.281861, 17.777275, 22.807100>,  <14.053644, 17.837996, 22.849876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.281861, 17.777275, 22.807100>,  <14.662224, 17.676073, 22.735807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.281861, 17.777275, 22.807100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189530, 0.020792, 0.981655,
		0.244657, 0.967242, -0.067723,
		-0.950906, 0.253004, 0.178234,
		13.996590, 17.853176, 22.860571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.681730, 18.060806, 23.377775>,  <14.662224, 17.676073, 22.735807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.681730, 18.060806, 23.377775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.287549, 18.021711, 23.322161>,  <14.051041, 17.998255, 23.288792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.287549, 18.021711, 23.322161>,  <14.681730, 18.060806, 23.377775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.287549, 18.021711, 23.322161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150337, 0.119762, 0.981354,
		-0.079262, 0.987980, -0.132713,
		-0.985452, -0.097735, -0.139038,
		13.991913, 17.992392, 23.280449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.410942, 18.633747, 23.690119>,  <14.681730, 18.060806, 23.377775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.410942, 18.633747, 23.690119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.130095, 18.348982, 23.684284>,  <13.961587, 18.178123, 23.680784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.130095, 18.348982, 23.684284>,  <14.410942, 18.633747, 23.690119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.130095, 18.348982, 23.684284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223247, 0.200632, 0.953891,
		-0.676160, 0.673000, -0.299799,
		-0.702117, -0.711912, -0.014587,
		13.919460, 18.135408, 23.679909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.765760, 18.952465, 23.952185>,  <14.410942, 18.633747, 23.690119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.765760, 18.952465, 23.952185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.708542, 18.558643, 23.992561>,  <13.674211, 18.322350, 24.016787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.708542, 18.558643, 23.992561>,  <13.765760, 18.952465, 23.952185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.708542, 18.558643, 23.992561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307847, 0.141192, 0.940901,
		-0.940621, 0.103518, -0.323289,
		-0.143046, -0.984555, 0.100941,
		13.665628, 18.263277, 24.022844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.156128, 18.938643, 24.234247>,  <13.765760, 18.952465, 23.952185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.156128, 18.938643, 24.234247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.321199, 18.586794, 24.328871>,  <13.420242, 18.375685, 24.385645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.321199, 18.586794, 24.328871>,  <13.156128, 18.938643, 24.234247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.321199, 18.586794, 24.328871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091297, 0.218451, 0.971568,
		-0.906289, -0.422543, 0.009843,
		0.412680, -0.879623, 0.236556,
		13.445004, 18.322906, 24.399837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.773480, 18.689194, 24.750462>,  <13.156128, 18.938643, 24.234247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.773480, 18.689194, 24.750462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.111795, 18.480408, 24.794636>,  <13.314784, 18.355137, 24.821140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.111795, 18.480408, 24.794636>,  <12.773480, 18.689194, 24.750462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.111795, 18.480408, 24.794636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049431, 0.129437, 0.990355,
		-0.531225, -0.843089, 0.083675,
		0.845788, -0.521965, 0.110435,
		13.365532, 18.323818, 24.827766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.664899, 18.233192, 25.221811>,  <12.773480, 18.689194, 24.750462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.664899, 18.233192, 25.221811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.064253, 18.250641, 25.207241>,  <13.303865, 18.261110, 25.198500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.064253, 18.250641, 25.207241>,  <12.664899, 18.233192, 25.221811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.064253, 18.250641, 25.207241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021995, 0.294425, 0.955421,
		0.052398, -0.954679, 0.292990,
		0.998384, 0.043618, -0.036425,
		13.363768, 18.263727, 25.196314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.007936, 17.841333, 25.851614>,  <12.664899, 18.233192, 25.221811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.007936, 17.841333, 25.851614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.288242, 18.098303, 25.727533>,  <13.456426, 18.252483, 25.653086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.288242, 18.098303, 25.727533>,  <13.007936, 17.841333, 25.851614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.288242, 18.098303, 25.727533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052999, 0.386743, 0.920663,
		0.711423, -0.661607, 0.236968,
		0.700763, 0.642422, -0.310202,
		13.498471, 18.291029, 25.634472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.441713, 17.742683, 26.316406>,  <13.007936, 17.841333, 25.851614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.441713, 17.742683, 26.316406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.534617, 18.102303, 26.167938>,  <13.590360, 18.318073, 26.078857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.534617, 18.102303, 26.167938>,  <13.441713, 17.742683, 26.316406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.534617, 18.102303, 26.167938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367218, 0.272314, 0.889380,
		0.900670, -0.342868, -0.266899,
		0.232259, 0.899048, -0.371172,
		13.604295, 18.372017, 26.056587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.066428, 17.953106, 26.566265>,  <13.441713, 17.742683, 26.316406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.066428, 17.953106, 26.566265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.909877, 18.309738, 26.475134>,  <13.815946, 18.523718, 26.420456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.909877, 18.309738, 26.475134>,  <14.066428, 17.953106, 26.566265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.909877, 18.309738, 26.475134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291540, 0.354955, 0.888263,
		0.872827, 0.281227, -0.398854,
		-0.391379, 0.891582, -0.227826,
		13.792463, 18.577213, 26.406786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.507550, 18.459751, 26.703817>,  <14.066428, 17.953106, 26.566265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.507550, 18.459751, 26.703817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.130921, 18.580647, 26.763277>,  <13.904944, 18.653183, 26.798952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.130921, 18.580647, 26.763277>,  <14.507550, 18.459751, 26.703817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.130921, 18.580647, 26.763277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291528, 0.510273, 0.809094,
		0.168687, 0.805155, -0.568568,
		-0.941571, 0.302237, 0.148649,
		13.848450, 18.671318, 26.807871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.529556, 19.192499, 26.828722>,  <14.507550, 18.459751, 26.703817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.529556, 19.192499, 26.828722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.197442, 19.078379, 27.020233>,  <13.998173, 19.009907, 27.135139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.197442, 19.078379, 27.020233>,  <14.529556, 19.192499, 26.828722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.197442, 19.078379, 27.020233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348752, 0.404119, 0.845612,
		-0.434737, 0.869075, -0.236035,
		-0.830287, -0.285301, 0.478777,
		13.948356, 18.992788, 27.163866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.371260, 19.778931, 27.288563>,  <14.529556, 19.192499, 26.828722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.371260, 19.778931, 27.288563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.143271, 19.475925, 27.415880>,  <14.006478, 19.294123, 27.492271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.143271, 19.475925, 27.415880>,  <14.371260, 19.778931, 27.288563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.143271, 19.475925, 27.415880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041755, 0.360173, 0.931950,
		-0.820604, 0.544474, -0.173658,
		-0.569970, -0.757511, 0.318294,
		13.972281, 19.248672, 27.511368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.859083, 20.049988, 27.759308>,  <14.371260, 19.778931, 27.288563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.859083, 20.049988, 27.759308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.910760, 19.665565, 27.857027>,  <13.941766, 19.434912, 27.915659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.910760, 19.665565, 27.857027>,  <13.859083, 20.049988, 27.759308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.910760, 19.665565, 27.857027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054309, 0.252853, 0.965979,
		-0.990131, -0.111528, 0.084861,
		0.129191, -0.961055, 0.244300,
		13.949517, 19.377249, 27.930317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.310040, 19.820839, 28.312017>,  <13.859083, 20.049988, 27.759308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.310040, 19.820839, 28.312017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.644279, 19.602196, 28.333927>,  <13.844822, 19.471010, 28.347073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.644279, 19.602196, 28.333927>,  <13.310040, 19.820839, 28.312017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.644279, 19.602196, 28.333927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196255, 0.390159, 0.899589,
		-0.513092, -0.740943, 0.433289,
		0.835596, -0.546607, 0.054774,
		13.894958, 19.438213, 28.350359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.249862, 19.373877, 28.856691>,  <13.310040, 19.820839, 28.312017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.249862, 19.373877, 28.856691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.634207, 19.458780, 28.785488>,  <13.864814, 19.509722, 28.742765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.634207, 19.458780, 28.785488>,  <13.249862, 19.373877, 28.856691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.634207, 19.458780, 28.785488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141637, 0.175815, 0.974181,
		0.238079, -0.961266, 0.138870,
		0.960863, 0.212263, -0.178009,
		13.922466, 19.522459, 28.732086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.687204, 19.029970, 29.283571>,  <13.249862, 19.373877, 28.856691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.687204, 19.029970, 29.283571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.863436, 19.369188, 29.165785>,  <13.969174, 19.572720, 29.095112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.863436, 19.369188, 29.165785>,  <13.687204, 19.029970, 29.283571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.863436, 19.369188, 29.165785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077037, 0.362525, 0.928784,
		0.894403, -0.386516, 0.225051,
		0.440577, 0.848045, -0.294468,
		13.995609, 19.623602, 29.077444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.025803, 19.249311, 29.863205>,  <13.687204, 19.029970, 29.283571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.025803, 19.249311, 29.863205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.003879, 19.570280, 29.625511>,  <13.990725, 19.762861, 29.482895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.003879, 19.570280, 29.625511>,  <14.025803, 19.249311, 29.863205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.003879, 19.570280, 29.625511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065755, 0.590935, 0.804035,
		0.996329, 0.083143, 0.020374,
		-0.054810, 0.802423, -0.594233,
		13.987435, 19.811007, 29.447241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.429873, 19.700270, 30.171350>,  <14.025803, 19.249311, 29.863205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.429873, 19.700270, 30.171350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.199344, 19.932100, 29.940891>,  <14.061027, 20.071198, 29.802616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.199344, 19.932100, 29.940891>,  <14.429873, 19.700270, 30.171350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.199344, 19.932100, 29.940891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030382, 0.689325, 0.723815,
		0.816658, 0.434654, -0.379665,
		-0.576322, 0.579574, -0.576148,
		14.026447, 20.105972, 29.768047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.747239, 20.371410, 30.279531>,  <14.429873, 19.700270, 30.171350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.747239, 20.371410, 30.279531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.355004, 20.433731, 30.231911>,  <14.119663, 20.471125, 30.203339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.355004, 20.433731, 30.231911>,  <14.747239, 20.371410, 30.279531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.355004, 20.433731, 30.231911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019767, 0.682612, 0.730514,
		0.195084, 0.713979, -0.672440,
		-0.980587, 0.155804, -0.119053,
		14.060828, 20.480473, 30.196196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.613933, 21.139055, 30.125505>,  <14.747239, 20.371410, 30.279531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.613933, 21.139055, 30.125505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.307491, 20.969423, 30.318686>,  <14.123627, 20.867643, 30.434593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.307491, 20.969423, 30.318686>,  <14.613933, 21.139055, 30.125505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.307491, 20.969423, 30.318686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085658, 0.812086, 0.577216,
		-0.636983, 0.400839, -0.658468,
		-0.766104, -0.424080, 0.482950,
		14.077661, 20.842199, 30.463570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.063589, 21.731091, 30.129473>,  <14.613933, 21.139055, 30.125505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.063589, 21.731091, 30.129473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.001167, 21.485245, 30.438766>,  <13.963715, 21.337736, 30.624344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.001167, 21.485245, 30.438766>,  <14.063589, 21.731091, 30.129473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.001167, 21.485245, 30.438766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187592, 0.787022, 0.587713,
		-0.969772, -0.053338, -0.238114,
		-0.156054, -0.614616, 0.773237,
		13.954351, 21.300859, 30.670738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.386748, 22.394680, 30.159882>,  <14.063589, 21.731091, 30.129473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.386748, 22.394680, 30.159882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.591668, 22.724545, 30.063980>,  <14.714620, 22.922464, 30.006439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.591668, 22.724545, 30.063980>,  <14.386748, 22.394680, 30.159882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.591668, 22.724545, 30.063980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001722, -0.280155, -0.959953,
		-0.858805, 0.491371, -0.144943,
		0.512299, 0.824662, -0.239753,
		14.745358, 22.971943, 29.992054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.024493, 22.824232, 29.599663>,  <14.386748, 22.394680, 30.159882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.024493, 22.824232, 29.599663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.416567, 22.902416, 29.612532>,  <14.651811, 22.949327, 29.620253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.416567, 22.902416, 29.612532>,  <14.024493, 22.824232, 29.599663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.416567, 22.902416, 29.612532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095082, -0.321760, -0.942035,
		-0.173779, 0.926427, -0.333969,
		0.980184, 0.195460, 0.032172,
		14.710622, 22.961054, 29.622183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.129261, 23.151566, 29.008289>,  <14.024493, 22.824232, 29.599663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.129261, 23.151566, 29.008289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.484174, 23.004299, 29.119419>,  <14.697122, 22.915939, 29.186096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.484174, 23.004299, 29.119419>,  <14.129261, 23.151566, 29.008289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.484174, 23.004299, 29.119419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145467, -0.348239, -0.926050,
		0.437690, 0.862081, -0.255430,
		0.887281, -0.368166, 0.277825,
		14.750358, 22.893850, 29.202766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.528523, 23.314564, 28.446465>,  <14.129261, 23.151566, 29.008289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.528523, 23.314564, 28.446465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.762171, 23.042940, 28.624310>,  <14.902359, 22.879965, 28.731016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.762171, 23.042940, 28.624310>,  <14.528523, 23.314564, 28.446465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.762171, 23.042940, 28.624310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127344, -0.464324, -0.876463,
		0.801616, 0.568578, -0.184746,
		0.584119, -0.679060, 0.444615,
		14.937407, 22.839222, 28.757694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.103752, 23.324282, 28.033100>,  <14.528523, 23.314564, 28.446465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.103752, 23.324282, 28.033100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.101112, 22.969763, 28.218327>,  <15.099528, 22.757051, 28.329462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.101112, 22.969763, 28.218327>,  <15.103752, 23.324282, 28.033100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.101112, 22.969763, 28.218327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025415, -0.463076, -0.885954,
		0.999655, 0.005923, 0.025580,
		-0.006598, -0.886299, 0.463067,
		15.099133, 22.703873, 28.357246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.643117, 22.990959, 27.718620>,  <15.103752, 23.324282, 28.033100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.643117, 22.990959, 27.718620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.435802, 22.695576, 27.891159>,  <15.311413, 22.518347, 27.994682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.435802, 22.695576, 27.891159>,  <15.643117, 22.990959, 27.718620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.435802, 22.695576, 27.891159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021683, -0.515561, -0.856579,
		0.854932, -0.434601, 0.283221,
		-0.518287, -0.738458, 0.431345,
		15.280315, 22.474039, 28.020563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.014715, 22.348013, 27.550627>,  <15.643117, 22.990959, 27.718620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.014715, 22.348013, 27.550627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.646715, 22.236000, 27.660303>,  <15.425915, 22.168793, 27.726109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.646715, 22.236000, 27.660303>,  <16.014715, 22.348013, 27.550627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.646715, 22.236000, 27.660303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108978, -0.489236, -0.865316,
		0.376460, -0.825973, 0.419580,
		-0.920001, -0.280032, 0.274191,
		15.370715, 22.151991, 27.742559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.994614, 21.620462, 27.542557>,  <16.014715, 22.348013, 27.550627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.994614, 21.620462, 27.542557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.616764, 21.738703, 27.485556>,  <15.390055, 21.809647, 27.451355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.616764, 21.738703, 27.485556>,  <15.994614, 21.620462, 27.542557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.616764, 21.738703, 27.485556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031174, -0.513125, -0.857748,
		-0.326671, -0.805807, 0.493925,
		-0.944624, 0.295599, -0.142503,
		15.333377, 21.827383, 27.442804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.633966, 21.035879, 27.203470>,  <15.994614, 21.620462, 27.542557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.633966, 21.035879, 27.203470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.423745, 21.371277, 27.145889>,  <15.297612, 21.572515, 27.111341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.423745, 21.371277, 27.145889>,  <15.633966, 21.035879, 27.203470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.423745, 21.371277, 27.145889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206190, -0.289694, -0.934646,
		-0.825396, -0.461526, 0.325138,
		-0.525554, 0.838494, -0.143950,
		15.266079, 21.622826, 27.102705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.163958, 20.775461, 26.881598>,  <15.633966, 21.035879, 27.203470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.163958, 20.775461, 26.881598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.118511, 21.160242, 26.782207>,  <15.091244, 21.391111, 26.722574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.118511, 21.160242, 26.782207>,  <15.163958, 20.775461, 26.881598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.118511, 21.160242, 26.782207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142016, -0.263249, -0.954218,
		-0.983322, -0.073127, 0.166522,
		-0.113616, 0.961952, -0.248474,
		15.084426, 21.448828, 26.707664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.531187, 20.819548, 26.435284>,  <15.163958, 20.775461, 26.881598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.531187, 20.819548, 26.435284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.744502, 21.151316, 26.368748>,  <14.872491, 21.350376, 26.328827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.744502, 21.151316, 26.368748>,  <14.531187, 20.819548, 26.435284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.744502, 21.151316, 26.368748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199093, -0.068050, -0.977615,
		-0.822172, 0.554467, 0.128841,
		0.533288, 0.829419, -0.166340,
		14.904489, 21.400141, 26.318846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.065897, 21.188572, 26.024664>,  <14.531187, 20.819548, 26.435284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.065897, 21.188572, 26.024664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.433480, 21.335714, 25.967813>,  <14.654030, 21.424000, 25.933704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.433480, 21.335714, 25.967813>,  <14.065897, 21.188572, 26.024664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.433480, 21.335714, 25.967813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125716, -0.068327, -0.989711,
		-0.373782, 0.927369, -0.016544,
		0.918957, 0.367856, -0.142125,
		14.709167, 21.446072, 25.925177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.019190, 21.663164, 25.441706>,  <14.065897, 21.188572, 26.024664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.019190, 21.663164, 25.441706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.406799, 21.567312, 25.465603>,  <14.639365, 21.509802, 25.479942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.406799, 21.567312, 25.465603>,  <14.019190, 21.663164, 25.441706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.406799, 21.567312, 25.465603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067688, 0.025049, -0.997392,
		0.237507, 0.970541, 0.040493,
		0.969025, -0.239629, 0.059745,
		14.697507, 21.495424, 25.483526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.288493, 22.127686, 24.965801>,  <14.019190, 21.663164, 25.441706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.288493, 22.127686, 24.965801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.560031, 21.837517, 25.011292>,  <14.722954, 21.663416, 25.038586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.560031, 21.837517, 25.011292>,  <14.288493, 22.127686, 24.965801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.560031, 21.837517, 25.011292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005322, -0.159736, -0.987146,
		0.734262, 0.669514, -0.112297,
		0.678845, -0.725421, 0.113725,
		14.763684, 21.619890, 25.045408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.803641, 22.235226, 24.503628>,  <14.288493, 22.127686, 24.965801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.803641, 22.235226, 24.503628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.861320, 21.854061, 24.610334>,  <14.895926, 21.625362, 24.674358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.861320, 21.854061, 24.610334>,  <14.803641, 22.235226, 24.503628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.861320, 21.854061, 24.610334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113159, -0.251935, -0.961106,
		0.983058, 0.168774, 0.071503,
		0.144196, -0.952914, 0.266765,
		14.904578, 21.568188, 24.690363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.264985, 22.082302, 24.042501>,  <14.803641, 22.235226, 24.503628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.264985, 22.082302, 24.042501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.131810, 21.735853, 24.191624>,  <15.051906, 21.527983, 24.281097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.131810, 21.735853, 24.191624>,  <15.264985, 22.082302, 24.042501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.131810, 21.735853, 24.191624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231859, -0.458416, -0.857960,
		0.913999, -0.199208, 0.353442,
		-0.332937, -0.866124, 0.372804,
		15.031929, 21.476015, 24.303465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.805628, 21.595474, 23.901285>,  <15.264985, 22.082302, 24.042501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.805628, 21.595474, 23.901285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.481481, 21.367252, 23.954611>,  <15.286992, 21.230320, 23.986607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.481481, 21.367252, 23.954611>,  <15.805628, 21.595474, 23.901285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.481481, 21.367252, 23.954611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122215, -0.387122, -0.913893,
		0.573034, -0.724296, 0.383441,
		-0.810367, -0.570554, 0.133315,
		15.238370, 21.196087, 23.994606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.990645, 20.901873, 23.722702>,  <15.805628, 21.595474, 23.901285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.990645, 20.901873, 23.722702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.591152, 20.891449, 23.705484>,  <15.351457, 20.885195, 23.695154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.591152, 20.891449, 23.705484>,  <15.990645, 20.901873, 23.722702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.591152, 20.891449, 23.705484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049730, -0.380958, -0.923254,
		0.007663, -0.924225, 0.381771,
		-0.998733, -0.026061, -0.043042,
		15.291533, 20.883631, 23.692572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.745028, 20.166834, 23.396284>,  <15.990645, 20.901873, 23.722702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.745028, 20.166834, 23.396284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.434520, 20.414583, 23.349333>,  <15.248215, 20.563232, 23.321163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.434520, 20.414583, 23.349333>,  <15.745028, 20.166834, 23.396284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.434520, 20.414583, 23.349333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126570, -0.335536, -0.933486,
		-0.617561, -0.709783, 0.338862,
		-0.776273, 0.619374, -0.117376,
		15.201638, 20.600395, 23.314119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.267948, 19.734892, 22.999884>,  <15.745028, 20.166834, 23.396284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.267948, 19.734892, 22.999884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.138153, 20.112837, 22.982265>,  <15.060276, 20.339603, 22.971695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.138153, 20.112837, 22.982265>,  <15.267948, 19.734892, 22.999884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.138153, 20.112837, 22.982265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177226, -0.106471, -0.978394,
		-0.929138, -0.309672, 0.202003,
		-0.324488, 0.944864, -0.044044,
		15.040807, 20.396296, 22.969051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.514222, 19.694298, 22.754095>,  <15.267948, 19.734892, 22.999884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.514222, 19.694298, 22.754095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.700102, 20.038017, 22.668621>,  <14.811629, 20.244249, 22.617336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.700102, 20.038017, 22.668621>,  <14.514222, 19.694298, 22.754095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.700102, 20.038017, 22.668621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191600, -0.138025, -0.971719,
		-0.864491, 0.492499, 0.100501,
		0.464699, 0.859298, -0.213684,
		14.839512, 20.295807, 22.604515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.083240, 19.917927, 22.256945>,  <14.514222, 19.694298, 22.754095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.083240, 19.917927, 22.256945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.412820, 20.134960, 22.191576>,  <14.610568, 20.265181, 22.152355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.412820, 20.134960, 22.191576>,  <14.083240, 19.917927, 22.256945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.412820, 20.134960, 22.191576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063923, -0.197559, -0.978205,
		-0.563044, 0.816440, -0.128095,
		0.823951, 0.542584, -0.163424,
		14.660006, 20.297735, 22.142550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.006961, 20.399712, 21.627359>,  <14.083240, 19.917927, 22.256945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.006961, 20.399712, 21.627359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.395741, 20.328056, 21.688316>,  <14.629008, 20.285063, 21.724890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.395741, 20.328056, 21.688316>,  <14.006961, 20.399712, 21.627359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.395741, 20.328056, 21.688316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116358, -0.196836, -0.973507,
		0.204390, 0.963932, -0.170470,
		0.971949, -0.179140, 0.152392,
		14.687325, 20.274315, 21.734034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.381276, 20.656557, 21.055128>,  <14.006961, 20.399712, 21.627359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.381276, 20.656557, 21.055128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.676838, 20.423113, 21.189840>,  <14.854175, 20.283047, 21.270668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.676838, 20.423113, 21.189840>,  <14.381276, 20.656557, 21.055128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.676838, 20.423113, 21.189840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264895, -0.207975, -0.941582,
		0.619558, 0.784951, 0.000921,
		0.738904, -0.583609, 0.336782,
		14.898509, 20.248030, 21.290874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.930735, 20.764313, 20.601894>,  <14.381276, 20.656557, 21.055128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.930735, 20.764313, 20.601894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.013884, 20.425558, 20.797680>,  <15.063773, 20.222305, 20.915152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.013884, 20.425558, 20.797680>,  <14.930735, 20.764313, 20.601894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.013884, 20.425558, 20.797680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327057, -0.411419, -0.850746,
		0.921859, 0.336929, 0.191457,
		0.207872, -0.846885, 0.489465,
		15.076245, 20.171494, 20.944519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.652222, 20.593195, 20.367296>,  <14.930735, 20.764313, 20.601894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.652222, 20.593195, 20.367296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.525421, 20.241348, 20.509163>,  <15.449341, 20.030241, 20.594282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.525421, 20.241348, 20.509163>,  <15.652222, 20.593195, 20.367296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.525421, 20.241348, 20.509163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442501, -0.467927, -0.765007,
		0.838870, -0.085569, 0.537564,
		-0.317002, -0.879615, 0.354666,
		15.430321, 19.977465, 20.615562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.226322, 20.164833, 20.432699>,  <15.652222, 20.593195, 20.367296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.226322, 20.164833, 20.432699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.942884, 19.882895, 20.419506>,  <15.772822, 19.713732, 20.411591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.942884, 19.882895, 20.419506>,  <16.226322, 20.164833, 20.432699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.942884, 19.882895, 20.419506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572644, -0.547121, -0.610522,
		0.412280, -0.451498, 0.791312,
		-0.708593, -0.704846, -0.032981,
		15.730307, 19.671440, 20.409613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.673777, 19.466860, 20.361906>,  <16.226322, 20.164833, 20.432699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.673777, 19.466860, 20.361906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.291534, 19.398928, 20.265591>,  <16.062189, 19.358168, 20.207802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.291534, 19.398928, 20.265591>,  <16.673777, 19.466860, 20.361906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.291534, 19.398928, 20.265591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287635, -0.714980, -0.637236,
		-0.063936, -0.678204, 0.732086,
		-0.955603, -0.169831, -0.240789,
		16.004854, 19.347979, 20.193354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.599895, 18.852468, 20.538206>,  <16.673777, 19.466860, 20.361906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.599895, 18.852468, 20.538206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.323788, 18.945648, 20.264194>,  <16.158123, 19.001556, 20.099789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.323788, 18.945648, 20.264194>,  <16.599895, 18.852468, 20.538206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.323788, 18.945648, 20.264194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349975, -0.721147, -0.597883,
		-0.633282, -0.652443, 0.416259,
		-0.690269, 0.232948, -0.685028,
		16.116707, 19.015533, 20.058685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.326008, 18.214106, 20.325272>,  <16.599895, 18.852468, 20.538206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.326008, 18.214106, 20.325272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.244322, 18.488724, 20.046144>,  <16.195311, 18.653496, 19.878668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.244322, 18.488724, 20.046144>,  <16.326008, 18.214106, 20.325272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.244322, 18.488724, 20.046144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315894, -0.628488, -0.710783,
		-0.926556, -0.365590, -0.088528,
		-0.204216, 0.686547, -0.697818,
		16.183058, 18.694687, 19.836800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.128429, 17.741484, 19.808533>,  <16.326008, 18.214106, 20.325272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.128429, 17.741484, 19.808533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.198128, 18.098789, 19.642776>,  <16.239946, 18.313173, 19.543324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.198128, 18.098789, 19.642776>,  <16.128429, 17.741484, 19.808533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.198128, 18.098789, 19.642776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449804, -0.446559, -0.773474,
		-0.875965, -0.051619, -0.479604,
		0.174246, 0.893264, -0.414389,
		16.250401, 18.366768, 19.518459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.885722, 17.697643, 19.122267>,  <16.128429, 17.741484, 19.808533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.885722, 17.697643, 19.122267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.156052, 17.992283, 19.132729>,  <16.318249, 18.169067, 19.139006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.156052, 17.992283, 19.132729>,  <15.885722, 17.697643, 19.122267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.156052, 17.992283, 19.132729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440073, -0.374788, -0.816008,
		-0.591267, 0.562989, -0.577448,
		0.675825, 0.736598, 0.026157,
		16.358799, 18.213263, 19.140575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.047947, 17.877317, 18.416910>,  <15.885722, 17.697643, 19.122267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.047947, 17.877317, 18.416910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.366329, 18.011044, 18.618776>,  <16.557360, 18.091278, 18.739895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.366329, 18.011044, 18.618776>,  <16.047947, 17.877317, 18.416910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.366329, 18.011044, 18.618776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604524, -0.395385, -0.691535,
		-0.031653, 0.855514, -0.516811,
		0.795958, 0.334314, 0.504664,
		16.605116, 18.111338, 18.770176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.440535, 18.264875, 17.921061>,  <16.047947, 17.877317, 18.416910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.440535, 18.264875, 17.921061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.691278, 18.153082, 18.211973>,  <16.841724, 18.086006, 18.386520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.691278, 18.153082, 18.211973>,  <16.440535, 18.264875, 17.921061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.691278, 18.153082, 18.211973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693492, -0.225321, -0.684324,
		0.355129, 0.933338, 0.052576,
		0.626859, -0.279484, 0.727280,
		16.879335, 18.069237, 18.430157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.070759, 18.512846, 17.713957>,  <16.440535, 18.264875, 17.921061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.070759, 18.512846, 17.713957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.158495, 18.227953, 17.980675>,  <17.211136, 18.057016, 18.140705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.158495, 18.227953, 17.980675>,  <17.070759, 18.512846, 17.713957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.158495, 18.227953, 17.980675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675858, -0.381976, -0.630325,
		0.703638, 0.588913, 0.397586,
		0.219338, -0.712233, 0.666795,
		17.224297, 18.014282, 18.180714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.708891, 18.406820, 17.701956>,  <17.070759, 18.512846, 17.713957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.708891, 18.406820, 17.701956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.615314, 18.073389, 17.902122>,  <17.559168, 17.873331, 18.022223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.615314, 18.073389, 17.902122>,  <17.708891, 18.406820, 17.701956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.615314, 18.073389, 17.902122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765369, -0.475300, -0.433935,
		0.599568, 0.281490, 0.749187,
		-0.233941, -0.833578, 0.500419,
		17.545132, 17.823315, 18.052248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.302595, 18.196392, 18.000944>,  <17.708891, 18.406820, 17.701956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.302595, 18.196392, 18.000944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.071175, 17.870230, 17.993027>,  <17.932322, 17.674532, 17.988276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.071175, 17.870230, 17.993027>,  <18.302595, 18.196392, 18.000944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.071175, 17.870230, 17.993027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711055, -0.492323, -0.502015,
		0.399600, -0.304517, 0.864632,
		-0.578550, -0.815406, -0.019796,
		17.897610, 17.625608, 17.987087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.637119, 17.708454, 18.275518>,  <18.302595, 18.196392, 18.000944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.637119, 17.708454, 18.275518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.399220, 17.471657, 18.057962>,  <18.256479, 17.329578, 17.927429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.399220, 17.471657, 18.057962>,  <18.637119, 17.708454, 18.275518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.399220, 17.471657, 18.057962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776794, -0.248960, -0.578455,
		0.207036, -0.766525, 0.607927,
		-0.594750, -0.591995, -0.543888,
		18.220795, 17.294058, 17.894796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.990007, 17.037853, 18.180658>,  <18.637119, 17.708454, 18.275518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.990007, 17.037853, 18.180658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.707209, 17.060188, 17.898655>,  <18.537529, 17.073589, 17.729452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.707209, 17.060188, 17.898655>,  <18.990007, 17.037853, 18.180658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.707209, 17.060188, 17.898655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624869, -0.417537, -0.659698,
		-0.331203, -0.906943, 0.260307,
		-0.706996, 0.055836, -0.705010,
		18.495110, 17.076939, 17.687151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.826269, 16.349894, 18.071724>,  <18.990007, 17.037853, 18.180658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.826269, 16.349894, 18.071724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.755390, 16.583906, 17.755157>,  <18.712862, 16.724314, 17.565218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.755390, 16.583906, 17.755157>,  <18.826269, 16.349894, 18.071724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.755390, 16.583906, 17.755157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624967, -0.554310, -0.549688,
		-0.760275, -0.592013, -0.267402,
		-0.177199, 0.585031, -0.791416,
		18.702230, 16.759415, 17.517733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.623962, 15.930907, 17.559542>,  <18.826269, 16.349894, 18.071724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.623962, 15.930907, 17.559542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.793234, 16.256273, 17.399902>,  <18.894796, 16.451492, 17.304119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.793234, 16.256273, 17.399902>,  <18.623962, 15.930907, 17.559542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.793234, 16.256273, 17.399902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568030, -0.581346, -0.582562,
		-0.705877, 0.019828, -0.708056,
		0.423177, 0.813414, -0.399096,
		18.920187, 16.500298, 17.280174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.906471, 15.248514, 17.646664>,  <18.623962, 15.930907, 17.559542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.906471, 15.248514, 17.646664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.964451, 14.874731, 17.776756>,  <18.999239, 14.650461, 17.854813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.964451, 14.874731, 17.776756>,  <18.906471, 15.248514, 17.646664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.964451, 14.874731, 17.776756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225424, 0.288871, 0.930450,
		-0.963418, -0.208183, -0.168778,
		0.144949, -0.934459, 0.325233,
		19.007935, 14.594394, 17.874327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.468330, 15.368915, 18.160320>,  <18.906471, 15.248514, 17.646664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.468330, 15.368915, 18.160320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.653502, 15.149124, 18.438536>,  <19.764605, 15.017250, 18.605465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.653502, 15.149124, 18.438536>,  <19.468330, 15.368915, 18.160320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.653502, 15.149124, 18.438536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805587, 0.588143, -0.071540,
		-0.369765, 0.593434, 0.714919,
		0.462929, -0.549476, 0.695538,
		19.792379, 14.984282, 18.647198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.535778, 15.664054, 18.881317>,  <19.468330, 15.368915, 18.160320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.535778, 15.664054, 18.881317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.828331, 15.426788, 18.746714>,  <20.003862, 15.284429, 18.665951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.828331, 15.426788, 18.746714>,  <19.535778, 15.664054, 18.881317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.828331, 15.426788, 18.746714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604150, 0.792454, -0.083779,
		0.316363, -0.142027, 0.937946,
		0.731380, -0.593165, -0.336509,
		20.047745, 15.248838, 18.645761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.088850, 15.889873, 19.223070>,  <19.535778, 15.664054, 18.881317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.088850, 15.889873, 19.223070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.212725, 15.690942, 18.898907>,  <20.287048, 15.571583, 18.704409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.212725, 15.690942, 18.898907>,  <20.088850, 15.889873, 19.223070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.212725, 15.690942, 18.898907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390910, 0.843540, -0.368279,
		0.866767, -0.202746, 0.455642,
		0.309685, -0.497327, -0.810408,
		20.305630, 15.541743, 18.655785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.811531, 15.892422, 19.124870>,  <20.088850, 15.889873, 19.223070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.811531, 15.892422, 19.124870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.665539, 15.850627, 18.754818>,  <20.577944, 15.825550, 18.532785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.665539, 15.850627, 18.754818>,  <20.811531, 15.892422, 19.124870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.665539, 15.850627, 18.754818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594967, 0.738127, -0.318091,
		0.716102, -0.666521, -0.207237,
		-0.364982, -0.104487, -0.925133,
		20.556044, 15.819281, 18.477278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.274420, 15.624619, 18.561356>,  <20.811531, 15.892422, 19.124870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.274420, 15.624619, 18.561356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.028387, 15.902718, 18.412600>,  <20.880768, 16.069576, 18.323345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.028387, 15.902718, 18.412600>,  <21.274420, 15.624619, 18.561356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.028387, 15.902718, 18.412600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785812, 0.579185, -0.216899,
		0.064595, -0.425647, -0.902581,
		-0.615083, 0.695248, -0.371891,
		20.843863, 16.111292, 18.301033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.614058, 15.845773, 17.931101>,  <21.274420, 15.624619, 18.561356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.614058, 15.845773, 17.931101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.363646, 16.124741, 18.070639>,  <21.213398, 16.292122, 18.154362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.363646, 16.124741, 18.070639>,  <21.614058, 15.845773, 17.931101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.363646, 16.124741, 18.070639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710033, 0.694753, -0.114763,
		-0.322400, 0.175847, -0.930127,
		-0.626028, 0.697421, 0.348846,
		21.175837, 16.333967, 18.175293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.547617, 15.242984, 17.452356>,  <21.614058, 15.845773, 17.931101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.547617, 15.242984, 17.452356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.514688, 15.005766, 17.131977>,  <21.494932, 14.863435, 16.939749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.514688, 15.005766, 17.131977>,  <21.547617, 15.242984, 17.452356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.514688, 15.005766, 17.131977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027039, 0.802053, -0.596641,
		0.996239, -0.070772, -0.049990,
		-0.082320, -0.593045, -0.800950,
		21.489992, 14.827852, 16.891691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.926994, 15.526345, 16.952921>,  <21.547617, 15.242984, 17.452356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.926994, 15.526345, 16.952921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.686653, 15.289900, 16.737677>,  <21.542448, 15.148032, 16.608530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.686653, 15.289900, 16.737677>,  <21.926994, 15.526345, 16.952921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.686653, 15.289900, 16.737677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044490, 0.647402, -0.760849,
		0.798122, -0.481098, -0.362693,
		-0.600851, -0.591114, -0.538110,
		21.506397, 15.112566, 16.576244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.339310, 15.513818, 16.273872>,  <21.926994, 15.526345, 16.952921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.339310, 15.513818, 16.273872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.977051, 15.366622, 16.189604>,  <21.759695, 15.278305, 16.139042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.977051, 15.366622, 16.189604>,  <22.339310, 15.513818, 16.273872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.977051, 15.366622, 16.189604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038681, 0.566466, -0.823177,
		0.422258, -0.737361, -0.527254,
		-0.905650, -0.367988, -0.210673,
		21.705357, 15.256226, 16.126402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.343945, 15.427647, 15.514264>,  <22.339310, 15.513818, 16.273872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.343945, 15.427647, 15.514264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.957260, 15.452293, 15.613599>,  <21.725248, 15.467081, 15.673200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.957260, 15.452293, 15.613599>,  <22.343945, 15.427647, 15.514264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.957260, 15.452293, 15.613599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199913, 0.423875, -0.883383,
		-0.159695, -0.903622, -0.397447,
		-0.966712, 0.061617, 0.248336,
		21.667246, 15.470778, 15.688100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.996395, 15.096576, 14.986430>,  <22.343945, 15.427647, 15.514264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.996395, 15.096576, 14.986430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.704990, 15.317017, 15.149184>,  <21.530148, 15.449281, 15.246837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.704990, 15.317017, 15.149184>,  <21.996395, 15.096576, 14.986430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.704990, 15.317017, 15.149184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253080, 0.335418, -0.907439,
		-0.636568, -0.764055, -0.104883,
		-0.728513, 0.551103, 0.406884,
		21.486437, 15.482347, 15.271250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.410810, 14.974565, 14.509873>,  <21.996395, 15.096576, 14.986430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.410810, 14.974565, 14.509873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.339424, 15.297996, 14.734142>,  <21.296593, 15.492054, 14.868704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.339424, 15.297996, 14.734142>,  <21.410810, 14.974565, 14.509873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.339424, 15.297996, 14.734142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270608, 0.507511, -0.818049,
		-0.946003, -0.297716, 0.128234,
		-0.178466, 0.808578, 0.560671,
		21.285885, 15.540568, 14.902344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.793428, 15.249698, 14.195794>,  <21.410810, 14.974565, 14.509873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.793428, 15.249698, 14.195794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.946743, 15.566467, 14.385930>,  <21.038731, 15.756529, 14.500011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.946743, 15.566467, 14.385930>,  <20.793428, 15.249698, 14.195794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.946743, 15.566467, 14.385930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138983, 0.558235, -0.817959,
		-0.913114, 0.247447, 0.324027,
		0.383284, 0.791924, 0.475341,
		21.061728, 15.804045, 14.528532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.370829, 15.913605, 14.104694>,  <20.793428, 15.249698, 14.195794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.370829, 15.913605, 14.104694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.729368, 16.058229, 14.207329>,  <20.944492, 16.145004, 14.268909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.729368, 16.058229, 14.207329>,  <20.370829, 15.913605, 14.104694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.729368, 16.058229, 14.207329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138504, 0.778133, -0.612639,
		-0.421164, 0.513599, 0.747554,
		0.896347, 0.361561, 0.256586,
		20.998272, 16.166698, 14.284305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.304228, 16.655413, 14.205136>,  <20.370829, 15.913605, 14.104694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.304228, 16.655413, 14.205136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.691589, 16.591131, 14.128860>,  <20.924007, 16.552563, 14.083094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.691589, 16.591131, 14.128860>,  <20.304228, 16.655413, 14.205136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.691589, 16.591131, 14.128860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028301, 0.688906, -0.724298,
		0.247768, 0.706811, 0.662593,
		0.968406, -0.160705, -0.190692,
		20.982111, 16.542919, 14.071651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.614492, 17.338196, 14.159790>,  <20.304228, 16.655413, 14.205136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.614492, 17.338196, 14.159790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.861822, 17.080311, 13.980003>,  <21.010220, 16.925579, 13.872131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.861822, 17.080311, 13.980003>,  <20.614492, 17.338196, 14.159790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.861822, 17.080311, 13.980003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118701, 0.641945, -0.757507,
		0.776907, 0.415033, 0.473458,
		0.618325, -0.644712, -0.449467,
		21.047319, 16.886896, 13.845163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.223818, 17.788834, 13.928947>,  <20.614492, 17.338196, 14.159790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.223818, 17.788834, 13.928947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.260483, 17.457256, 13.708239>,  <21.282482, 17.258310, 13.575813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.260483, 17.457256, 13.708239>,  <21.223818, 17.788834, 13.928947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.260483, 17.457256, 13.708239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258838, 0.554893, -0.790630,
		0.961562, -0.070348, 0.265425,
		0.091663, -0.828942, -0.551773,
		21.287981, 17.208574, 13.542706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.885139, 17.761806, 13.583356>,  <21.223818, 17.788834, 13.928947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.885139, 17.761806, 13.583356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.682272, 17.487497, 13.374552>,  <21.560551, 17.322912, 13.249269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.682272, 17.487497, 13.374552>,  <21.885139, 17.761806, 13.583356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.682272, 17.487497, 13.374552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418081, 0.333884, -0.844825,
		0.753650, -0.646711, 0.117374,
		-0.507168, -0.685775, -0.522010,
		21.530121, 17.281765, 13.217949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.272339, 17.733070, 13.018490>,  <21.885139, 17.761806, 13.583356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.272339, 17.733070, 13.018490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.930614, 17.564087, 12.897372>,  <21.725580, 17.462698, 12.824701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.930614, 17.564087, 12.897372>,  <22.272339, 17.733070, 13.018490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.930614, 17.564087, 12.897372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119605, 0.407144, -0.905499,
		0.505817, -0.809792, -0.297299,
		-0.854309, -0.422458, -0.302795,
		21.674322, 17.437349, 12.806534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.472080, 17.224710, 12.360379>,  <22.272339, 17.733070, 13.018490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.472080, 17.224710, 12.360379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.092457, 17.350710, 12.363588>,  <21.864683, 17.426310, 12.365514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.092457, 17.350710, 12.363588>,  <22.472080, 17.224710, 12.360379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.092457, 17.350710, 12.363588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164181, 0.516077, -0.840660,
		-0.268946, -0.796518, -0.541504,
		-0.949059, 0.314997, 0.008024,
		21.807739, 17.445210, 12.365995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.437998, 17.120586, 11.685320>,  <22.472080, 17.224710, 12.360379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.437998, 17.120586, 11.685320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.100538, 17.311674, 11.783331>,  <21.898062, 17.426327, 11.842137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.100538, 17.311674, 11.783331>,  <22.437998, 17.120586, 11.685320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.100538, 17.311674, 11.783331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057435, 0.373458, -0.925867,
		-0.533813, -0.795181, -0.287630,
		-0.843650, 0.477720, 0.245028,
		21.847443, 17.454990, 11.856839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.876085, 17.019241, 11.150888>,  <22.437998, 17.120586, 11.685320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.876085, 17.019241, 11.150888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.789989, 17.360043, 11.341786>,  <21.738333, 17.564524, 11.456326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.789989, 17.360043, 11.341786>,  <21.876085, 17.019241, 11.150888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.789989, 17.360043, 11.341786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106117, 0.465401, -0.878716,
		-0.970779, -0.239777, -0.009760,
		-0.215238, 0.852003, 0.477245,
		21.725418, 17.615643, 11.484960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.141127, 17.326906, 10.927077>,  <21.876085, 17.019241, 11.150888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.141127, 17.326906, 10.927077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.397604, 17.604174, 11.058766>,  <21.551491, 17.770535, 11.137779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.397604, 17.604174, 11.058766>,  <21.141127, 17.326906, 10.927077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.397604, 17.604174, 11.058766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045969, 0.462948, -0.885193,
		-0.766000, 0.552447, 0.328704,
		0.641195, 0.693168, 0.329222,
		21.589962, 17.812124, 11.157533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.954092, 17.952820, 10.621594>,  <21.141127, 17.326906, 10.927077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.954092, 17.952820, 10.621594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.293722, 18.085060, 10.786407>,  <21.497501, 18.164404, 10.885295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.293722, 18.085060, 10.786407>,  <20.954092, 17.952820, 10.621594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.293722, 18.085060, 10.786407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098760, 0.666876, -0.738596,
		-0.518955, 0.667817, 0.533579,
		0.849077, 0.330601, 0.412032,
		21.548445, 18.184240, 10.910017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.921640, 18.628736, 10.543643>,  <20.954092, 17.952820, 10.621594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.921640, 18.628736, 10.543643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.308025, 18.552561, 10.613667>,  <21.539856, 18.506855, 10.655682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.308025, 18.552561, 10.613667>,  <20.921640, 18.628736, 10.543643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.308025, 18.552561, 10.613667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250525, 0.857279, -0.449789,
		-0.064419, 0.478337, 0.875810,
		0.965965, -0.190437, 0.175061,
		21.597815, 18.495430, 10.666185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.228273, 19.243586, 10.650560>,  <20.921640, 18.628736, 10.543643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.228273, 19.243586, 10.650560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.530836, 19.003056, 10.547596>,  <21.712374, 18.858738, 10.485817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.530836, 19.003056, 10.547596>,  <21.228273, 19.243586, 10.650560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.530836, 19.003056, 10.547596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381839, 0.725451, -0.572642,
		0.531083, 0.334860, 0.778344,
		0.756406, -0.601323, -0.257412,
		21.757757, 18.822659, 10.470372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.701290, 19.663794, 10.597267>,  <21.228273, 19.243586, 10.650560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.701290, 19.663794, 10.597267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.811068, 19.350183, 10.374563>,  <21.876934, 19.162018, 10.240941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.811068, 19.350183, 10.374563>,  <21.701290, 19.663794, 10.597267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.811068, 19.350183, 10.374563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388151, 0.620049, -0.681820,
		0.879784, -0.028987, 0.474489,
		0.274442, -0.784027, -0.556761,
		21.893400, 19.114975, 10.207535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.337849, 19.938337, 10.293898>,  <21.701290, 19.663794, 10.597267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.337849, 19.938337, 10.293898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.198343, 19.642036, 10.064236>,  <22.114641, 19.464256, 9.926438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.198343, 19.642036, 10.064236>,  <22.337849, 19.938337, 10.293898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.198343, 19.642036, 10.064236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262010, 0.511129, -0.818594,
		0.899842, -0.435929, 0.015822,
		-0.348762, -0.740751, -0.574154,
		22.093714, 19.419811, 9.891990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.834063, 19.633295, 10.798247>,  <22.337849, 19.938337, 10.293898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.834063, 19.633295, 10.798247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.840260, 20.030874, 10.754745>,  <22.843979, 20.269423, 10.728643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.840260, 20.030874, 10.754745>,  <22.834063, 19.633295, 10.798247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.840260, 20.030874, 10.754745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883143, 0.037399, 0.467611,
		0.468848, -0.103292, -0.877218,
		0.015494, 0.993948, -0.108756,
		22.844908, 20.329058, 10.722117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.248911, 19.847193, 10.258457>,  <22.834063, 19.633295, 10.798247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.248911, 19.847193, 10.258457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.229961, 20.110304, 10.559145>,  <23.218592, 20.268171, 10.739557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.229961, 20.110304, 10.559145>,  <23.248911, 19.847193, 10.258457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.229961, 20.110304, 10.559145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965748, -0.162047, 0.202662,
		0.255120, 0.735573, -0.627572,
		-0.047376, 0.657779, 0.751719,
		23.215748, 20.307638, 10.784660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.815493, 20.347359, 10.160930>,  <23.248911, 19.847193, 10.258457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.815493, 20.347359, 10.160930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.721106, 20.298487, 10.546549>,  <23.664473, 20.269163, 10.777921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.721106, 20.298487, 10.546549>,  <23.815493, 20.347359, 10.160930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.721106, 20.298487, 10.546549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960406, -0.180532, 0.212198,
		0.148115, 0.975951, 0.159942,
		-0.235970, -0.122180, 0.964049,
		23.650314, 20.261833, 10.835764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.367289, 20.617432, 10.643867>,  <23.815493, 20.347359, 10.160930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.367289, 20.617432, 10.643867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.163528, 20.301449, 10.780385>,  <24.041273, 20.111858, 10.862295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.163528, 20.301449, 10.780385>,  <24.367289, 20.617432, 10.643867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.163528, 20.301449, 10.780385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832722, -0.352500, 0.426986,
		-0.216995, 0.501708, 0.837378,
		-0.509398, -0.789957, 0.341293,
		24.010710, 20.064461, 10.882772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.291904, 20.598249, 11.337153>,  <24.367289, 20.617432, 10.643867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.291904, 20.598249, 11.337153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.293859, 20.237219, 11.164952>,  <24.295033, 20.020601, 11.061631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.293859, 20.237219, 11.164952>,  <24.291904, 20.598249, 11.337153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.293859, 20.237219, 11.164952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731165, -0.290462, 0.617276,
		-0.682184, -0.317786, 0.658512,
		0.004889, -0.902576, -0.430503,
		24.295326, 19.966446, 11.035801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.139584, 20.110302, 11.831349>,  <24.291904, 20.598249, 11.337153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.139584, 20.110302, 11.831349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.386057, 19.955881, 11.556749>,  <24.533941, 19.863228, 11.391990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.386057, 19.955881, 11.556749>,  <24.139584, 20.110302, 11.831349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.386057, 19.955881, 11.556749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640765, -0.261113, 0.721970,
		-0.457973, -0.884750, 0.086476,
		0.616183, -0.386053, -0.686500,
		24.570911, 19.840065, 11.350800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.184982, 19.413685, 11.763766>,  <24.139584, 20.110302, 11.831349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.184982, 19.413685, 11.763766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.541563, 19.565714, 11.665090>,  <24.755512, 19.656931, 11.605884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.541563, 19.565714, 11.665090>,  <24.184982, 19.413685, 11.763766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.541563, 19.565714, 11.665090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377164, -0.320684, 0.868855,
		0.251119, -0.867586, -0.429225,
		0.891452, 0.380074, -0.246692,
		24.808998, 19.679735, 11.591082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.675760, 18.931503, 11.761953>,  <24.184982, 19.413685, 11.763766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.675760, 18.931503, 11.761953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.838850, 19.288704, 11.838170>,  <24.936705, 19.503025, 11.883900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.838850, 19.288704, 11.838170>,  <24.675760, 18.931503, 11.761953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.838850, 19.288704, 11.838170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039175, -0.225590, 0.973434,
		0.912264, -0.389429, -0.126962,
		0.407725, 0.893003, 0.190542,
		24.961168, 19.556604, 11.895332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.167429, 18.669689, 12.135493>,  <24.675760, 18.931503, 11.761953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.167429, 18.669689, 12.135493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.111269, 19.047504, 12.254244>,  <25.077574, 19.274193, 12.325494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.111269, 19.047504, 12.254244>,  <25.167429, 18.669689, 12.135493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.111269, 19.047504, 12.254244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048803, -0.292880, 0.954903,
		0.988891, 0.148555, -0.004976,
		-0.140398, 0.944538, 0.296877,
		25.069149, 19.330866, 12.343307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.592081, 18.744274, 12.827888>,  <25.167429, 18.669689, 12.135493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.592081, 18.744274, 12.827888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.309736, 19.026606, 12.804003>,  <25.140329, 19.196005, 12.789672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.309736, 19.026606, 12.804003>,  <25.592081, 18.744274, 12.827888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.309736, 19.026606, 12.804003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308963, -0.230924, 0.922614,
		0.637417, 0.669687, 0.381075,
		-0.705862, 0.705828, -0.059713,
		25.097979, 19.238354, 12.786089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.637119, 19.040678, 13.407927>,  <25.592081, 18.744274, 12.827888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.637119, 19.040678, 13.407927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.271658, 19.119791, 13.265872>,  <25.052382, 19.167259, 13.180639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.271658, 19.119791, 13.265872>,  <25.637119, 19.040678, 13.407927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.271658, 19.119791, 13.265872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406496, -0.441628, 0.799828,
		0.001354, 0.875126, 0.483893,
		-0.913651, 0.197784, -0.355137,
		24.997562, 19.179127, 13.159330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.302959, 19.282234, 14.037173>,  <25.637119, 19.040678, 13.407927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.302959, 19.282234, 14.037173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.024965, 19.190126, 13.764711>,  <24.858170, 19.134863, 13.601234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.024965, 19.190126, 13.764711>,  <25.302959, 19.282234, 14.037173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.024965, 19.190126, 13.764711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557664, -0.425377, 0.712787,
		-0.453880, 0.875232, 0.167219,
		-0.694985, -0.230268, -0.681156,
		24.816469, 19.121046, 13.560365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.563156, 19.451794, 14.345077>,  <25.302959, 19.282234, 14.037173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.563156, 19.451794, 14.345077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.538918, 19.164270, 14.068052>,  <24.524374, 18.991756, 13.901837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.538918, 19.164270, 14.068052>,  <24.563156, 19.451794, 14.345077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.538918, 19.164270, 14.068052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521328, -0.568890, 0.636067,
		-0.851202, 0.399596, -0.340262,
		-0.060598, -0.718810, -0.692561,
		24.520739, 18.948627, 13.860284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.040091, 19.181999, 14.648186>,  <24.563156, 19.451794, 14.345077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.040091, 19.181999, 14.648186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.151901, 18.923882, 14.363803>,  <24.218987, 18.769011, 14.193173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.151901, 18.923882, 14.363803>,  <24.040091, 19.181999, 14.648186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.151901, 18.923882, 14.363803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485751, -0.733763, 0.475013,
		-0.828198, 0.212570, -0.518558,
		0.279525, -0.645294, -0.710957,
		24.235760, 18.730293, 14.150516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.485203, 18.599087, 14.660875>,  <24.040091, 19.181999, 14.648186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.485203, 18.599087, 14.660875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.812113, 18.454304, 14.481522>,  <24.008259, 18.367434, 14.373910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.812113, 18.454304, 14.481522>,  <23.485203, 18.599087, 14.660875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.812113, 18.454304, 14.481522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158369, -0.889231, 0.429171,
		-0.554058, -0.279741, -0.784070,
		0.817276, -0.361957, -0.448383,
		24.057295, 18.345716, 14.347007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.295780, 17.946859, 14.611826>,  <23.485203, 18.599087, 14.660875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.295780, 17.946859, 14.611826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.694395, 17.917921, 14.595428>,  <23.933563, 17.900558, 14.585588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.694395, 17.917921, 14.595428>,  <23.295780, 17.946859, 14.611826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.694395, 17.917921, 14.595428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031879, -0.787742, 0.615180,
		-0.076798, -0.611743, -0.787320,
		0.996537, -0.072344, -0.040995,
		23.993357, 17.896217, 14.583129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.461851, 17.240122, 14.560075>,  <23.295780, 17.946859, 14.611826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.461851, 17.240122, 14.560075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.819780, 17.393255, 14.651930>,  <24.034538, 17.485136, 14.707043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.819780, 17.393255, 14.651930>,  <23.461851, 17.240122, 14.560075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.819780, 17.393255, 14.651930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135689, -0.723292, 0.677080,
		0.425304, -0.574706, -0.699163,
		0.894821, 0.382834, 0.229638,
		24.088226, 17.508106, 14.720821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.881321, 16.667048, 14.509171>,  <23.461851, 17.240122, 14.560075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.881321, 16.667048, 14.509171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.081228, 16.926893, 14.738337>,  <24.201174, 17.082802, 14.875836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.081228, 16.926893, 14.738337>,  <23.881321, 16.667048, 14.509171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.081228, 16.926893, 14.738337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213332, -0.733385, 0.645474,
		0.839476, -0.200368, -0.505107,
		0.499770, 0.649615, 0.572914,
		24.231159, 17.121778, 14.910211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.549582, 16.416759, 14.654194>,  <23.881321, 16.667048, 14.509171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.549582, 16.416759, 14.654194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.435740, 16.661720, 14.949209>,  <24.367434, 16.808697, 15.126219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.435740, 16.661720, 14.949209>,  <24.549582, 16.416759, 14.654194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.435740, 16.661720, 14.949209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052657, -0.758207, 0.649884,
		0.957198, 0.223797, 0.183542,
		-0.284605, 0.612403, 0.737538,
		24.350359, 16.845442, 15.170470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.035196, 16.311930, 15.120789>,  <24.549582, 16.416759, 14.654194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.035196, 16.311930, 15.120789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.745115, 16.488827, 15.331882>,  <24.571066, 16.594965, 15.458539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.745115, 16.488827, 15.331882>,  <25.035196, 16.311930, 15.120789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.745115, 16.488827, 15.331882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077305, -0.709318, 0.700637,
		0.684183, 0.548900, 0.480211,
		-0.725202, 0.442241, 0.527736,
		24.527555, 16.621500, 15.490203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.271961, 16.413137, 15.836653>,  <25.035196, 16.311930, 15.120789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.271961, 16.413137, 15.836653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.872227, 16.424894, 15.845268>,  <24.632385, 16.431948, 15.850437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.872227, 16.424894, 15.845268>,  <25.271961, 16.413137, 15.836653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.872227, 16.424894, 15.845268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010649, -0.800882, 0.598728,
		0.034847, 0.598101, 0.800663,
		-0.999336, 0.029390, 0.021539,
		24.572426, 16.433712, 15.851730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.115583, 16.349771, 16.490889>,  <25.271961, 16.413137, 15.836653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.115583, 16.349771, 16.490889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.733122, 16.271732, 16.403517>,  <24.503645, 16.224909, 16.351093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.733122, 16.271732, 16.403517>,  <25.115583, 16.349771, 16.490889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.733122, 16.271732, 16.403517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014529, -0.713301, 0.700708,
		-0.292510, 0.673157, 0.679190,
		-0.956152, -0.195096, -0.218428,
		24.446276, 16.213203, 16.337988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.855984, 16.623041, 16.520397>,  <25.115583, 16.349771, 16.490889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.855984, 16.623041, 16.520397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.106537, 16.529230, 16.817757>,  <26.256868, 16.472942, 16.996172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.106537, 16.529230, 16.817757>,  <25.855984, 16.623041, 16.520397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.106537, 16.529230, 16.817757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558789, -0.800024, 0.218439,
		0.543506, -0.552230, -0.632174,
		0.626383, -0.234529, 0.743398,
		26.294453, 16.458872, 17.040775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.170683, 15.854214, 16.534594>,  <25.855984, 16.623041, 16.520397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.170683, 15.854214, 16.534594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.168642, 15.982525, 16.913450>,  <26.167418, 16.059511, 17.140764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.168642, 15.982525, 16.913450>,  <26.170683, 15.854214, 16.534594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.168642, 15.982525, 16.913450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600373, -0.758434, 0.253634,
		0.799704, -0.567344, 0.196455,
		-0.005101, 0.320778, 0.947141,
		26.167112, 16.078758, 17.197592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.388815, 15.249531, 16.936098>,  <26.170683, 15.854214, 16.534594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.388815, 15.249531, 16.936098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.183647, 15.529621, 17.134731>,  <26.060547, 15.697676, 17.253912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.183647, 15.529621, 17.134731>,  <26.388815, 15.249531, 16.936098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.183647, 15.529621, 17.134731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534365, -0.713174, 0.453692,
		0.671837, -0.032648, 0.739979,
		-0.512922, 0.700226, 0.496583,
		26.029770, 15.739689, 17.283707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.614189, 15.428077, 16.830643>,  <26.388815, 15.249531, 16.936098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.614189, 15.428077, 16.830643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.788694, 15.514054, 16.481134>,  <25.893396, 15.565641, 16.271429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.788694, 15.514054, 16.481134>,  <25.614189, 15.428077, 16.830643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.788694, 15.514054, 16.481134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726994, -0.656412, 0.201503,
		-0.530241, -0.723134, -0.442631,
		0.436262, 0.214945, -0.873770,
		25.919573, 15.578538, 16.219004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.835745, 14.727171, 16.686235>,  <25.614189, 15.428077, 16.830643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.835745, 14.727171, 16.686235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.038860, 14.977500, 16.449425>,  <26.160730, 15.127698, 16.307339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.038860, 14.977500, 16.449425>,  <25.835745, 14.727171, 16.686235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.038860, 14.977500, 16.449425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784204, -0.620272, 0.016941,
		-0.356616, -0.472872, -0.805740,
		0.507788, 0.625823, -0.592027,
		26.191196, 15.165247, 16.271816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.048540, 14.389169, 16.042652>,  <25.835745, 14.727171, 16.686235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.048540, 14.389169, 16.042652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.295298, 14.670705, 16.183535>,  <26.443352, 14.839626, 16.268064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.295298, 14.670705, 16.183535>,  <26.048540, 14.389169, 16.042652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.295298, 14.670705, 16.183535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724696, -0.682537, 0.094647,
		0.307010, 0.196855, -0.931125,
		0.616895, 0.703840, 0.352206,
		26.480366, 14.881857, 16.289196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.717091, 14.377533, 15.697032>,  <26.048540, 14.389169, 16.042652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.717091, 14.377533, 15.697032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.794605, 14.589512, 16.027269>,  <26.841114, 14.716700, 16.225412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.794605, 14.589512, 16.027269>,  <26.717091, 14.377533, 15.697032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.794605, 14.589512, 16.027269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787157, -0.586252, 0.191552,
		0.585518, 0.612752, -0.530758,
		0.193784, 0.529947, 0.825593,
		26.852741, 14.748496, 16.274948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.905573, 13.996620, 15.082931>,  <26.717091, 14.377533, 15.697032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.905573, 13.996620, 15.082931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.505840, 13.982588, 15.078732>,  <26.266001, 13.974169, 15.076214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.505840, 13.982588, 15.078732>,  <26.905573, 13.996620, 15.082931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.505840, 13.982588, 15.078732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031343, 0.967703, -0.250138,
		0.018932, -0.249641, -0.968153,
		-0.999329, -0.035080, -0.010496,
		26.206041, 13.972064, 15.075583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.619270, 14.235667, 14.409438>,  <26.905573, 13.996620, 15.082931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.619270, 14.235667, 14.409438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.386763, 14.308633, 14.726638>,  <26.247257, 14.352412, 14.916958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.386763, 14.308633, 14.726638>,  <26.619270, 14.235667, 14.409438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.386763, 14.308633, 14.726638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262005, 0.880691, -0.394636,
		-0.770375, -0.437160, -0.464127,
		-0.581271, 0.182414, 0.793000,
		26.212381, 14.363357, 14.964538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.758835, 15.063439, 14.316326>,  <26.619270, 14.235667, 14.409438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.758835, 15.063439, 14.316326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.468971, 14.898415, 14.537111>,  <26.295053, 14.799400, 14.669582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.468971, 14.898415, 14.537111>,  <26.758835, 15.063439, 14.316326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.468971, 14.898415, 14.537111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680745, -0.304178, 0.666380,
		-0.107028, 0.858644, 0.501274,
		-0.724659, -0.412561, 0.551962,
		26.251574, 14.774646, 14.702700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.691092, 15.357625, 15.066963>,  <26.758835, 15.063439, 14.316326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.691092, 15.357625, 15.066963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.575865, 14.975181, 15.045540>,  <26.506729, 14.745714, 15.032686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.575865, 14.975181, 15.045540>,  <26.691092, 15.357625, 15.066963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.575865, 14.975181, 15.045540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641411, -0.234175, 0.730584,
		-0.711062, 0.176104, 0.680719,
		-0.288066, -0.956112, -0.053558,
		26.489445, 14.688347, 15.029472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<14.953351, 23.265486, 21.805887> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.564528, 23.308393, 21.722363>,  <14.331235, 23.334137, 21.672249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.564528, 23.308393, 21.722363>,  <14.953351, 23.265486, 21.805887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.564528, 23.308393, 21.722363> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072739, -0.708086, -0.702369,
		-0.223197, -0.697931, 0.680497,
		-0.972055, 0.107268, -0.208810,
		14.272912, 23.340574, 21.659719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.743222, 22.585447, 21.708492>,  <14.953351, 23.265486, 21.805887>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.743222, 22.585447, 21.708492> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.490298, 22.826880, 21.514225>,  <14.338544, 22.971739, 21.397665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.490298, 22.826880, 21.514225>,  <14.743222, 22.585447, 21.708492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.490298, 22.826880, 21.514225> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000516, -0.626573, -0.779362,
		-0.774715, -0.493050, 0.395877,
		-0.632311, 0.603579, -0.485670,
		14.300605, 23.007954, 21.368525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.177560, 22.000134, 21.481997>,  <14.743222, 22.585447, 21.708492>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.177560, 22.000134, 21.481997> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.143849, 22.343143, 21.278999>,  <14.123623, 22.548950, 21.157202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.143849, 22.343143, 21.278999>,  <14.177560, 22.000134, 21.481997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.143849, 22.343143, 21.278999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099747, -0.514007, -0.851967,
		-0.991437, -0.021180, 0.128854,
		-0.084276, 0.857525, -0.507493,
		14.118567, 22.600401, 21.126751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.663000, 21.832708, 21.016172>,  <14.177560, 22.000134, 21.481997>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.663000, 21.832708, 21.016172> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.816833, 22.167688, 20.860853>,  <13.909133, 22.368675, 20.767662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.816833, 22.167688, 20.860853>,  <13.663000, 21.832708, 21.016172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.816833, 22.167688, 20.860853> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194653, -0.337619, -0.920936,
		-0.902334, 0.429760, 0.033170,
		0.384582, 0.837449, -0.388299,
		13.932208, 22.418922, 20.744364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.152193, 22.087605, 20.531830>,  <13.663000, 21.832708, 21.016172>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.152193, 22.087605, 20.531830> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.513318, 22.244820, 20.462029>,  <13.729993, 22.339148, 20.420147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.513318, 22.244820, 20.462029>,  <13.152193, 22.087605, 20.531830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.513318, 22.244820, 20.462029> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082160, -0.240669, -0.967124,
		-0.422112, 0.887469, -0.184987,
		0.902813, 0.393036, -0.174504,
		13.784162, 22.362730, 20.409678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.046124, 22.466782, 19.979443>,  <13.152193, 22.087605, 20.531830>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.046124, 22.466782, 19.979443> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.440337, 22.399673, 19.989092>,  <13.676865, 22.359409, 19.994883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.440337, 22.399673, 19.989092>,  <13.046124, 22.466782, 19.979443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.440337, 22.399673, 19.989092> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032880, -0.328864, -0.943805,
		0.166275, 0.929356, -0.329622,
		0.985531, -0.167769, 0.024125,
		13.735996, 22.349342, 19.996328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.334957, 22.748461, 19.418999>,  <13.046124, 22.466782, 19.979443>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.334957, 22.748461, 19.418999> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.586053, 22.452600, 19.516041>,  <13.736711, 22.275084, 19.574266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.586053, 22.452600, 19.516041>,  <13.334957, 22.748461, 19.418999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.586053, 22.452600, 19.516041> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065732, -0.260183, -0.963319,
		0.775643, 0.620661, -0.114709,
		0.627740, -0.739652, 0.242606,
		13.774375, 22.230705, 19.588823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.894278, 22.907324, 18.947906>,  <13.334957, 22.748461, 19.418999>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.894278, 22.907324, 18.947906> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.952416, 22.542202, 19.100569>,  <13.987300, 22.323130, 19.192165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.952416, 22.542202, 19.100569>,  <13.894278, 22.907324, 18.947906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.952416, 22.542202, 19.100569> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208584, -0.348811, -0.913687,
		0.967144, 0.212409, 0.139698,
		0.145347, -0.912805, 0.381655,
		13.996020, 22.268360, 19.215065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.378443, 22.709681, 18.541897>,  <13.894278, 22.907324, 18.947906>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.378443, 22.709681, 18.541897> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.253177, 22.355675, 18.679695>,  <14.178017, 22.143270, 18.762375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.253177, 22.355675, 18.679695>,  <14.378443, 22.709681, 18.541897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.253177, 22.355675, 18.679695> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125836, -0.398213, -0.908621,
		0.941325, -0.241198, 0.236073,
		-0.313165, -0.885014, 0.344497,
		14.159227, 22.090170, 18.783045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.787520, 22.274702, 18.219282>,  <14.378443, 22.709681, 18.541897>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.787520, 22.274702, 18.219282> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.468444, 22.066591, 18.341267>,  <14.276998, 21.941725, 18.414457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.468444, 22.066591, 18.341267>,  <14.787520, 22.274702, 18.219282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.468444, 22.066591, 18.341267> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047214, -0.450252, -0.891652,
		0.601215, -0.725662, 0.334598,
		-0.797691, -0.520277, 0.304959,
		14.229136, 21.910507, 18.432755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.990548, 21.544102, 18.250643>,  <14.787520, 22.274702, 18.219282>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.990548, 21.544102, 18.250643> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.593707, 21.565420, 18.205223>,  <14.355602, 21.578211, 18.177971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.593707, 21.565420, 18.205223>,  <14.990548, 21.544102, 18.250643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.593707, 21.565420, 18.205223> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065661, -0.550670, -0.832137,
		-0.106878, -0.833020, 0.542821,
		-0.992102, 0.053295, -0.113551,
		14.296077, 21.581409, 18.171158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.768705, 20.899244, 18.452131>,  <14.990548, 21.544102, 18.250643>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.768705, 20.899244, 18.452131> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.480865, 21.053556, 18.221186>,  <14.308162, 21.146145, 18.082619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.480865, 21.053556, 18.221186>,  <14.768705, 20.899244, 18.452131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.480865, 21.053556, 18.221186> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243899, -0.638071, -0.730328,
		-0.650155, -0.666358, 0.365057,
		-0.719592, 0.385790, -0.577368,
		14.264986, 21.169291, 18.047977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.447370, 20.400524, 18.270470>,  <14.768705, 20.899244, 18.452131>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.447370, 20.400524, 18.270470> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.346087, 20.668268, 17.991087>,  <14.285318, 20.828915, 17.823458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.346087, 20.668268, 17.991087>,  <14.447370, 20.400524, 18.270470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.346087, 20.668268, 17.991087> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020603, -0.718091, -0.695644,
		-0.967193, -0.190531, 0.168033,
		-0.253205, 0.669360, -0.698458,
		14.270126, 20.869076, 17.781549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.089164, 20.067471, 17.833385>,  <14.447370, 20.400524, 18.270470>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.089164, 20.067471, 17.833385> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.180525, 20.362072, 17.578703>,  <14.235342, 20.538832, 17.425894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.180525, 20.362072, 17.578703>,  <14.089164, 20.067471, 17.833385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.180525, 20.362072, 17.578703> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141809, -0.672188, -0.726673,
		-0.963183, 0.075684, -0.257972,
		0.228404, 0.736503, -0.636707,
		14.249046, 20.583023, 17.387691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.625615, 19.962950, 17.223436>,  <14.089164, 20.067471, 17.833385>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.625615, 19.962950, 17.223436> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.943531, 20.185566, 17.126631>,  <14.134281, 20.319136, 17.068546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.943531, 20.185566, 17.126631>,  <13.625615, 19.962950, 17.223436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.943531, 20.185566, 17.126631> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073568, -0.484196, -0.871861,
		-0.602408, 0.675142, -0.425778,
		0.794791, 0.556540, -0.242015,
		14.181968, 20.352528, 17.054026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.599094, 19.878523, 16.608130>,  <13.625615, 19.962950, 17.223436>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.599094, 19.878523, 16.608130> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.955664, 20.059566, 16.617155>,  <14.169605, 20.168192, 16.622570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.955664, 20.059566, 16.617155>,  <13.599094, 19.878523, 16.608130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.955664, 20.059566, 16.617155> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254824, -0.459467, -0.850855,
		-0.374737, 0.764223, -0.524915,
		0.891424, 0.452608, 0.022563,
		14.223091, 20.195349, 16.623924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.620888, 20.315802, 16.018549>,  <13.599094, 19.878523, 16.608130>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.620888, 20.315802, 16.018549> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.976430, 20.181734, 16.143511>,  <14.189755, 20.101294, 16.218489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.976430, 20.181734, 16.143511>,  <13.620888, 20.315802, 16.018549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.976430, 20.181734, 16.143511> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207556, -0.313321, -0.926688,
		0.408482, 0.888533, -0.208930,
		0.888855, -0.335171, 0.312406,
		14.243087, 20.081182, 16.237232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.126101, 20.472210, 15.483476>,  <13.620888, 20.315802, 16.018549>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.126101, 20.472210, 15.483476> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.326363, 20.212748, 15.712768>,  <14.446520, 20.057070, 15.850343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.326363, 20.212748, 15.712768>,  <14.126101, 20.472210, 15.483476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.326363, 20.212748, 15.712768> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233616, -0.536383, -0.810998,
		0.833528, 0.539945, -0.117007,
		0.500655, -0.648654, 0.573229,
		14.476559, 20.018150, 15.884736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.675611, 20.467010, 15.210663>,  <14.126101, 20.472210, 15.483476>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.675611, 20.467010, 15.210663> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.670490, 20.125879, 15.419477>,  <14.667418, 19.921200, 15.544766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.670490, 20.125879, 15.419477>,  <14.675611, 20.467010, 15.210663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.670490, 20.125879, 15.419477> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175314, -0.515906, -0.838514,
		0.984429, 0.080786, 0.156117,
		-0.012802, -0.852827, 0.522036,
		14.666650, 19.870031, 15.576088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.234081, 20.231838, 15.115272>,  <14.675611, 20.467010, 15.210663>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.234081, 20.231838, 15.115272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.013891, 19.910898, 15.207540>,  <14.881777, 19.718334, 15.262900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.013891, 19.910898, 15.207540>,  <15.234081, 20.231838, 15.115272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.013891, 19.910898, 15.207540> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417662, -0.503911, -0.756064,
		0.722866, -0.319852, 0.612502,
		-0.550475, -0.802352, 0.230670,
		14.848748, 19.670193, 15.276740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.649241, 19.668074, 15.005211>,  <15.234081, 20.231838, 15.115272>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.649241, 19.668074, 15.005211> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.288021, 19.496347, 15.010653>,  <15.071289, 19.393311, 15.013919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.288021, 19.496347, 15.010653>,  <15.649241, 19.668074, 15.005211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.288021, 19.496347, 15.010653> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289645, -0.632039, -0.718772,
		0.317182, -0.645146, 0.695113,
		-0.903051, -0.429317, 0.013607,
		15.017106, 19.367552, 15.014735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.769581, 19.002468, 14.868073>,  <15.649241, 19.668074, 15.005211>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.769581, 19.002468, 14.868073> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.382565, 19.047918, 14.777781>,  <15.150355, 19.075190, 14.723604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.382565, 19.047918, 14.777781>,  <15.769581, 19.002468, 14.868073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.382565, 19.047918, 14.777781> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113548, -0.602524, -0.789982,
		-0.225773, -0.789971, 0.570063,
		-0.967540, 0.113627, -0.225733,
		15.092302, 19.082006, 14.710061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.550425, 19.047417, 14.973707>,  <15.769581, 19.002468, 14.868073>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.550425, 19.047417, 14.973707> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.358339, 18.928980, 14.643441>,  <16.243088, 18.857918, 14.445281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.358339, 18.928980, 14.643441>,  <16.550425, 19.047417, 14.973707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.358339, 18.928980, 14.643441> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772464, 0.588711, 0.238155,
		0.415563, 0.752163, -0.511428,
		-0.480215, -0.296091, -0.825666,
		16.214275, 18.840153, 14.395741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.917883, 18.551655, 15.409234>,  <16.550425, 19.047417, 14.973707>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.917883, 18.551655, 15.409234> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.283659, 18.703201, 15.466167>,  <17.503124, 18.794128, 15.500328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.283659, 18.703201, 15.466167>,  <16.917883, 18.551655, 15.409234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.283659, 18.703201, 15.466167> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396109, 0.765642, 0.506844,
		0.083049, -0.519859, 0.850206,
		0.914440, 0.378866, 0.142335,
		17.557991, 18.816862, 15.508868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.059500, 18.593456, 16.107317>,  <16.917883, 18.551655, 15.409234>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.059500, 18.593456, 16.107317> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.287214, 18.867233, 15.925127>,  <17.423843, 19.031500, 15.815814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.287214, 18.867233, 15.925127>,  <17.059500, 18.593456, 16.107317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.287214, 18.867233, 15.925127> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313373, 0.692833, 0.649446,
		0.760074, -0.226987, 0.608904,
		0.569285, 0.684441, -0.455473,
		17.458000, 19.072565, 15.788486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.348867, 18.930000, 16.654236>,  <17.059500, 18.593456, 16.107317>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.348867, 18.930000, 16.654236> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.484560, 19.175133, 16.368757>,  <17.565975, 19.322212, 16.197470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.484560, 19.175133, 16.368757>,  <17.348867, 18.930000, 16.654236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.484560, 19.175133, 16.368757> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055680, 0.770433, 0.635085,
		0.939054, -0.175702, 0.295477,
		0.339231, 0.612831, -0.713695,
		17.586330, 19.358982, 16.154650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.880720, 19.346035, 16.967428>,  <17.348867, 18.930000, 16.654236>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.880720, 19.346035, 16.967428> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.752638, 19.543877, 16.644236>,  <17.675789, 19.662580, 16.450319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.752638, 19.543877, 16.644236>,  <17.880720, 19.346035, 16.967428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.752638, 19.543877, 16.644236> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030284, 0.857798, 0.513095,
		0.946863, 0.139828, -0.289652,
		-0.320208, 0.494602, -0.807982,
		17.656576, 19.692257, 16.401840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.439281, 19.915209, 16.732471>,  <17.880720, 19.346035, 16.967428>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.439281, 19.915209, 16.732471> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.069212, 20.003834, 16.609207>,  <17.847170, 20.057009, 16.535248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.069212, 20.003834, 16.609207>,  <18.439281, 19.915209, 16.732471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.069212, 20.003834, 16.609207> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026450, 0.847590, 0.529992,
		0.378622, 0.482183, -0.790029,
		-0.925174, 0.221562, -0.308162,
		17.791660, 20.070303, 16.516758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.482990, 20.753344, 16.482395>,  <18.439281, 19.915209, 16.732471>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.482990, 20.753344, 16.482395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.117571, 20.616343, 16.570143>,  <17.898319, 20.534142, 16.622791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.117571, 20.616343, 16.570143>,  <18.482990, 20.753344, 16.482395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.117571, 20.616343, 16.570143> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239099, 0.888541, 0.391569,
		-0.329032, 0.305266, -0.893617,
		-0.913548, -0.342502, 0.219370,
		17.843506, 20.513592, 16.635954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.110779, 21.361645, 16.412201>,  <18.482990, 20.753344, 16.482395>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.110779, 21.361645, 16.412201> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.870649, 21.114027, 16.614744>,  <17.726572, 20.965456, 16.736271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.870649, 21.114027, 16.614744>,  <18.110779, 21.361645, 16.412201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.870649, 21.114027, 16.614744> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436894, 0.784161, 0.440699,
		-0.669879, 0.043336, -0.741205,
		-0.600322, -0.619043, 0.506360,
		17.690554, 20.928314, 16.766651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.485973, 21.656284, 16.323425>,  <18.110779, 21.361645, 16.412201>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.485973, 21.656284, 16.323425> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.436617, 21.411102, 16.635595>,  <17.407003, 21.263992, 16.822897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.436617, 21.411102, 16.635595>,  <17.485973, 21.656284, 16.323425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.436617, 21.411102, 16.635595> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400105, 0.750409, 0.526121,
		-0.908125, -0.247333, -0.337840,
		-0.123391, -0.612955, 0.780424,
		17.399599, 21.227217, 16.869722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.748238, 21.767664, 16.559584>,  <17.485973, 21.656284, 16.323425>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.748238, 21.767664, 16.559584> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.950678, 21.623974, 16.873226>,  <17.072142, 21.537760, 17.061411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.950678, 21.623974, 16.873226>,  <16.748238, 21.767664, 16.559584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.950678, 21.623974, 16.873226> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413596, 0.696696, 0.586134,
		-0.756836, -0.620945, 0.204024,
		0.506100, -0.359223, 0.784106,
		17.102509, 21.516207, 17.108458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.265177, 21.817009, 17.025061>,  <16.748238, 21.767664, 16.559584>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.265177, 21.817009, 17.025061> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.588589, 21.771240, 17.255951>,  <16.782635, 21.743778, 17.394485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.588589, 21.771240, 17.255951>,  <16.265177, 21.817009, 17.025061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.588589, 21.771240, 17.255951> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362582, 0.675724, 0.641820,
		-0.463483, -0.728221, 0.504855,
		0.808529, -0.114422, 0.577226,
		16.831148, 21.736914, 17.429119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.020020, 21.724970, 17.596601>,  <16.265177, 21.817009, 17.025061>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.020020, 21.724970, 17.596601> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.385283, 21.841757, 17.710371>,  <16.604441, 21.911829, 17.778633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.385283, 21.841757, 17.710371>,  <16.020020, 21.724970, 17.596601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.385283, 21.841757, 17.710371> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387476, 0.405214, 0.828048,
		0.126509, -0.866347, 0.483154,
		0.913158, 0.291966, 0.284426,
		16.659229, 21.929346, 17.795698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.181698, 21.584040, 18.254337>,  <16.020020, 21.724970, 17.596601>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.181698, 21.584040, 18.254337> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.452129, 21.874012, 18.201586>,  <16.614389, 22.047995, 18.169935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.452129, 21.874012, 18.201586>,  <16.181698, 21.584040, 18.254337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.452129, 21.874012, 18.201586> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065211, 0.237150, 0.969282,
		0.733936, -0.646713, 0.207606,
		0.676080, 0.724929, -0.131880,
		16.654953, 22.091492, 18.162022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.699123, 21.474873, 18.805731>,  <16.181698, 21.584040, 18.254337>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.699123, 21.474873, 18.805731> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.737570, 21.850801, 18.674583>,  <16.760637, 22.076359, 18.595896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.737570, 21.850801, 18.674583>,  <16.699123, 21.474873, 18.805731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.737570, 21.850801, 18.674583> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119406, 0.337902, 0.933576,
		0.988182, -0.050583, 0.144699,
		0.096117, 0.939821, -0.327869,
		16.766405, 22.132748, 18.576223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.322821, 21.692526, 19.261974>,  <16.699123, 21.474873, 18.805731>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.322821, 21.692526, 19.261974> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.139460, 22.027424, 19.142717>,  <17.029442, 22.228363, 19.071163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.139460, 22.027424, 19.142717>,  <17.322821, 21.692526, 19.261974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.139460, 22.027424, 19.142717> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059084, 0.306012, 0.950193,
		0.886777, 0.453188, -0.090810,
		-0.458405, 0.837244, -0.298140,
		17.001938, 22.278597, 19.053276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.622566, 22.131014, 19.629799>,  <17.322821, 21.692526, 19.261974>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.622566, 22.131014, 19.629799> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.279640, 22.303251, 19.516949>,  <17.073885, 22.406593, 19.449238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.279640, 22.303251, 19.516949>,  <17.622566, 22.131014, 19.629799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.279640, 22.303251, 19.516949> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169536, 0.281307, 0.944523,
		0.486071, 0.857586, -0.168168,
		-0.857317, 0.430595, -0.282127,
		17.022446, 22.432430, 19.432310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.647930, 22.883730, 19.913086>,  <17.622566, 22.131014, 19.629799>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.647930, 22.883730, 19.913086> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.276230, 22.749088, 19.852175>,  <17.053209, 22.668303, 19.815628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.276230, 22.749088, 19.852175>,  <17.647930, 22.883730, 19.913086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.276230, 22.749088, 19.852175> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223996, 0.185536, 0.956766,
		-0.293798, 0.923187, -0.247807,
		-0.929251, -0.336604, -0.152280,
		16.997454, 22.648108, 19.806490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.266476, 23.372805, 20.306318>,  <17.647930, 22.883730, 19.913086>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.266476, 23.372805, 20.306318> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.052322, 23.039066, 20.253805>,  <16.923830, 22.838823, 20.222298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.052322, 23.039066, 20.253805>,  <17.266476, 23.372805, 20.306318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.052322, 23.039066, 20.253805> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394037, 0.109253, 0.912578,
		-0.747061, 0.540310, -0.387254,
		-0.535383, -0.834344, -0.131283,
		16.891706, 22.788763, 20.214420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<16.472309, 23.499249, 20.660191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.464283, 23.105293, 20.591377>,  <16.459467, 22.868921, 20.550089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.464283, 23.105293, 20.591377>,  <16.472309, 23.499249, 20.660191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.464283, 23.105293, 20.591377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492687, -0.139983, 0.858874,
		-0.869975, 0.101992, -0.482432,
		-0.020066, -0.984887, -0.172032,
		16.458263, 22.809828, 20.539768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.784758, 23.250500, 20.794098>,  <16.472309, 23.499249, 20.660191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.784758, 23.250500, 20.794098> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.039835, 22.946836, 20.846296>,  <16.192881, 22.764639, 20.877615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.039835, 22.946836, 20.846296>,  <15.784758, 23.250500, 20.794098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.039835, 22.946836, 20.846296> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281776, -0.072232, 0.956758,
		-0.716903, -0.646887, -0.259974,
		0.637693, -0.759157, 0.130494,
		16.231142, 22.719090, 20.885445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.443795, 22.745613, 21.321827>,  <15.784758, 23.250500, 20.794098>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.443795, 22.745613, 21.321827> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.834765, 22.661180, 21.318163>,  <16.069347, 22.610521, 21.315966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.834765, 22.661180, 21.318163>,  <15.443795, 22.745613, 21.321827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.834765, 22.661180, 21.318163> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007396, -0.009134, 0.999931,
		-0.211152, -0.977425, -0.007366,
		0.977425, -0.211083, -0.009158,
		16.127993, 22.597857, 21.315416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.469762, 22.295187, 21.883402>,  <15.443795, 22.745613, 21.321827>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.469762, 22.295187, 21.883402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.835289, 22.446402, 21.824039>,  <16.054605, 22.537130, 21.788422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.835289, 22.446402, 21.824039>,  <15.469762, 22.295187, 21.883402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.835289, 22.446402, 21.824039> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125027, 0.085810, 0.988435,
		0.386400, -0.921805, 0.031150,
		0.913818, 0.378037, -0.148408,
		16.109434, 22.559813, 21.779516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.831344, 22.033901, 22.480841>,  <15.469762, 22.295187, 21.883402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.831344, 22.033901, 22.480841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.058018, 22.336435, 22.350105>,  <16.194023, 22.517956, 22.271664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.058018, 22.336435, 22.350105>,  <15.831344, 22.033901, 22.480841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.058018, 22.336435, 22.350105> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115825, 0.319613, 0.940442,
		0.815752, -0.570791, 0.093517,
		0.566686, 0.756336, -0.326837,
		16.228024, 22.563335, 22.252054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.310692, 22.028408, 22.913191>,  <15.831344, 22.033901, 22.480841>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.310692, 22.028408, 22.913191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.319628, 22.400784, 22.767393>,  <16.324989, 22.624208, 22.679914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.319628, 22.400784, 22.767393>,  <16.310692, 22.028408, 22.913191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.319628, 22.400784, 22.767393> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106198, 0.360315, 0.926766,
		0.994094, -0.059413, -0.090814,
		0.022340, 0.930937, -0.364497,
		16.326330, 22.680065, 22.658045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.745205, 22.269844, 23.318619>,  <16.310692, 22.028408, 22.913191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.745205, 22.269844, 23.318619> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.607708, 22.614828, 23.170027>,  <16.525209, 22.821819, 23.080872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.607708, 22.614828, 23.170027>,  <16.745205, 22.269844, 23.318619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.607708, 22.614828, 23.170027> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127012, 0.434652, 0.891597,
		0.930434, 0.259299, -0.258952,
		-0.343744, 0.862462, -0.371481,
		16.504585, 22.873568, 23.058582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.082060, 22.843853, 23.631718>,  <16.745205, 22.269844, 23.318619>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.082060, 22.843853, 23.631718> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.780609, 23.065355, 23.490067>,  <16.599739, 23.198256, 23.405077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.780609, 23.065355, 23.490067>,  <17.082060, 22.843853, 23.631718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.780609, 23.065355, 23.490067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088085, 0.618979, 0.780453,
		0.651376, 0.556976, -0.515255,
		-0.753625, 0.553755, -0.354127,
		16.554522, 23.231482, 23.383829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.325205, 23.559061, 23.494133>,  <17.082060, 22.843853, 23.631718>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.325205, 23.559061, 23.494133> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.935532, 23.584999, 23.580633>,  <16.701729, 23.600561, 23.632534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.935532, 23.584999, 23.580633>,  <17.325205, 23.559061, 23.494133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.935532, 23.584999, 23.580633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213191, 0.579429, 0.786646,
		-0.074293, 0.812439, -0.578293,
		-0.974182, 0.064845, 0.216253,
		16.643276, 23.604452, 23.645510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.262495, 24.237431, 23.648067>,  <17.325205, 23.559061, 23.494133>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.262495, 24.237431, 23.648067> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.896976, 24.119467, 23.759783>,  <16.677666, 24.048689, 23.826811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.896976, 24.119467, 23.759783>,  <17.262495, 24.237431, 23.648067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.896976, 24.119467, 23.759783> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039978, 0.618969, 0.784397,
		-0.404197, 0.727946, -0.553823,
		-0.913798, -0.294910, 0.279287,
		16.622837, 24.030994, 23.843569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.849831, 24.858948, 23.937759>,  <17.262495, 24.237431, 23.648067>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.849831, 24.858948, 23.937759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.657600, 24.533033, 24.067478>,  <16.542263, 24.337484, 24.145309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.657600, 24.533033, 24.067478>,  <16.849831, 24.858948, 23.937759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.657600, 24.533033, 24.067478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127701, 0.430876, 0.893330,
		-0.867606, 0.387900, -0.311118,
		-0.480575, -0.814788, 0.324296,
		16.513428, 24.288597, 24.164766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.244326, 25.105776, 24.219030>,  <16.849831, 24.858948, 23.937759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.244326, 25.105776, 24.219030> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.305180, 24.744089, 24.378654>,  <16.341692, 24.527077, 24.474430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.305180, 24.744089, 24.378654>,  <16.244326, 25.105776, 24.219030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.305180, 24.744089, 24.378654> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027587, 0.407489, 0.912793,
		-0.987975, -0.127858, 0.086937,
		0.152133, -0.904215, 0.399062,
		16.350821, 24.472824, 24.498373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.631303, 24.897644, 24.565466>,  <16.244326, 25.105776, 24.219030>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.631303, 24.897644, 24.565466> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.913516, 24.661472, 24.722240>,  <16.082844, 24.519770, 24.816305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.913516, 24.661472, 24.722240>,  <15.631303, 24.897644, 24.565466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.913516, 24.661472, 24.722240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277256, 0.279003, 0.919395,
		-0.652190, -0.757330, 0.033146,
		0.705533, -0.590430, 0.391937,
		16.125175, 24.484343, 24.839821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.368507, 24.694384, 25.220619>,  <15.631303, 24.897644, 24.565466>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.368507, 24.694384, 25.220619> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.760633, 24.615746, 25.227953>,  <15.995908, 24.568562, 25.232353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.760633, 24.615746, 25.227953>,  <15.368507, 24.694384, 25.220619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.760633, 24.615746, 25.227953> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013065, 0.157243, 0.987473,
		-0.197017, -0.967793, 0.156716,
		0.980313, -0.196597, 0.018335,
		16.054726, 24.556767, 25.233454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.452567, 24.163010, 25.733191>,  <15.368507, 24.694384, 25.220619>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.452567, 24.163010, 25.733191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.805564, 24.349007, 25.704924>,  <16.017363, 24.460604, 25.687963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.805564, 24.349007, 25.704924>,  <15.452567, 24.163010, 25.733191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.805564, 24.349007, 25.704924> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006705, 0.162669, 0.986658,
		0.470282, -0.870243, 0.146672,
		0.882491, 0.464991, -0.070665,
		16.070311, 24.488504, 25.683723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.893028, 24.048931, 26.393806>,  <15.452567, 24.163010, 25.733191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.893028, 24.048931, 26.393806> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.050508, 24.377813, 26.229382>,  <16.144997, 24.575144, 26.130726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.050508, 24.377813, 26.229382>,  <15.893028, 24.048931, 26.393806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.050508, 24.377813, 26.229382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306977, 0.303910, 0.901889,
		0.866467, -0.481262, -0.132749,
		0.393701, 0.822208, -0.411064,
		16.168619, 24.624475, 26.106062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.666254, 24.108459, 26.658358>,  <15.893028, 24.048931, 26.393806>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.666254, 24.108459, 26.658358> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.534731, 24.468967, 26.545506>,  <16.455816, 24.685272, 26.477795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.534731, 24.468967, 26.545506>,  <16.666254, 24.108459, 26.658358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.534731, 24.468967, 26.545506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266213, 0.375079, 0.887945,
		0.906099, 0.216858, -0.363259,
		-0.328809, 0.901271, -0.282129,
		16.436089, 24.739349, 26.460867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.112360, 24.534451, 26.945164>,  <16.666254, 24.108459, 26.658358>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.112360, 24.534451, 26.945164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.827261, 24.800476, 26.856010>,  <16.656202, 24.960093, 26.802519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.827261, 24.800476, 26.856010>,  <17.112360, 24.534451, 26.945164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.827261, 24.800476, 26.856010> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149440, 0.454449, 0.878148,
		0.685316, 0.592591, -0.423295,
		-0.712748, 0.665066, -0.222884,
		16.613436, 24.999996, 26.789145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.321896, 25.159678, 27.180677>,  <17.112360, 24.534451, 26.945164>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.321896, 25.159678, 27.180677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.922821, 25.186375, 27.175446>,  <16.683376, 25.202393, 27.172306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.922821, 25.186375, 27.175446>,  <17.321896, 25.159678, 27.180677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.922821, 25.186375, 27.175446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025074, 0.539715, 0.841474,
		0.063224, 0.839198, -0.540139,
		-0.997684, 0.066745, -0.013081,
		16.623516, 25.206398, 27.171522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.174540, 25.600933, 27.632992>,  <17.321896, 25.159678, 27.180677>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.174540, 25.600933, 27.632992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.786484, 25.534389, 27.562395>,  <16.553650, 25.494463, 27.520037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.786484, 25.534389, 27.562395>,  <17.174540, 25.600933, 27.632992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.786484, 25.534389, 27.562395> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237147, 0.498047, 0.834093,
		-0.050860, 0.851042, -0.522628,
		-0.970142, -0.166361, -0.176491,
		16.495441, 25.484482, 27.509447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.739922, 26.320343, 27.634871>,  <17.174540, 25.600933, 27.632992>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.739922, 26.320343, 27.634871> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.489256, 26.018909, 27.714273>,  <16.338856, 25.838049, 27.761915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.489256, 26.018909, 27.714273>,  <16.739922, 26.320343, 27.634871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.489256, 26.018909, 27.714273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215520, 0.412385, 0.885150,
		-0.748895, 0.511909, -0.420839,
		-0.626664, -0.753583, 0.198506,
		16.301256, 25.792835, 27.773825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.922295, 26.630991, 27.768547>,  <16.739922, 26.320343, 27.634871>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.922295, 26.630991, 27.768547> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.014090, 26.290941, 27.958124>,  <16.069166, 26.086910, 28.071871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.014090, 26.290941, 27.958124>,  <15.922295, 26.630991, 27.768547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.014090, 26.290941, 27.958124> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357434, 0.379304, 0.853445,
		-0.905305, -0.365257, -0.216819,
		0.229487, -0.850127, 0.473941,
		16.082935, 26.035904, 28.100307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.438667, 26.642845, 28.293646>,  <15.922295, 26.630991, 27.768547>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.438667, 26.642845, 28.293646> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.685845, 26.358788, 28.428606>,  <15.834152, 26.188353, 28.509583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.685845, 26.358788, 28.428606>,  <15.438667, 26.642845, 28.293646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.685845, 26.358788, 28.428606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379432, 0.106497, 0.919070,
		-0.688605, -0.695955, -0.203642,
		0.617944, -0.710144, 0.337402,
		15.871228, 26.145744, 28.529827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.814106, 27.079798, 28.685593>,  <15.438667, 26.642845, 28.293646>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.814106, 27.079798, 28.685593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.459130, 26.920336, 28.778135>,  <14.246145, 26.824659, 28.833662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.459130, 26.920336, 28.778135>,  <14.814106, 27.079798, 28.685593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.459130, 26.920336, 28.778135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130395, -0.264302, -0.955584,
		0.442098, -0.878190, 0.182569,
		-0.887439, -0.398656, 0.231359,
		14.192899, 26.800739, 28.847544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.737391, 26.467800, 28.330507>,  <14.814106, 27.079798, 28.685593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.737391, 26.467800, 28.330507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.367591, 26.590977, 28.420370>,  <14.145711, 26.664883, 28.474289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.367591, 26.590977, 28.420370>,  <14.737391, 26.467800, 28.330507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.367591, 26.590977, 28.420370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285362, -0.168372, -0.943515,
		-0.252722, -0.936388, 0.243534,
		-0.924500, 0.307942, 0.224658,
		14.090240, 26.683359, 28.487768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.192276, 25.890009, 28.036850>,  <14.737391, 26.467800, 28.330507>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.192276, 25.890009, 28.036850> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.971774, 26.218031, 28.098333>,  <13.839473, 26.414845, 28.135223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.971774, 26.218031, 28.098333>,  <14.192276, 25.890009, 28.036850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.971774, 26.218031, 28.098333> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514132, -0.188785, -0.836677,
		-0.657106, -0.540247, 0.525686,
		-0.551254, 0.820057, 0.153706,
		13.806397, 26.464048, 28.144445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.487486, 25.700119, 28.027555>,  <14.192276, 25.890009, 28.036850>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.487486, 25.700119, 28.027555> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.482597, 26.093584, 27.955708>,  <13.479664, 26.329662, 27.912600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.482597, 26.093584, 27.955708>,  <13.487486, 25.700119, 28.027555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.482597, 26.093584, 27.955708> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515586, -0.160110, -0.841746,
		-0.856751, 0.082321, 0.509118,
		-0.012221, 0.983661, -0.179618,
		13.478930, 26.388681, 27.901823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.685656, 26.000668, 28.036215>,  <13.487486, 25.700119, 28.027555>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.685656, 26.000668, 28.036215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.960095, 26.210651, 27.834745>,  <13.124760, 26.336641, 27.713863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.960095, 26.210651, 27.834745>,  <12.685656, 26.000668, 28.036215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.960095, 26.210651, 27.834745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419522, -0.280133, -0.863439,
		-0.594364, 0.803707, 0.028032,
		0.686099, 0.524957, -0.503674,
		13.165925, 26.368139, 27.683643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.340781, 26.146601, 27.362865>,  <12.685656, 26.000668, 28.036215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.340781, 26.146601, 27.362865> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.732129, 26.190180, 27.292526>,  <12.966938, 26.216328, 27.250322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.732129, 26.190180, 27.292526>,  <12.340781, 26.146601, 27.362865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.732129, 26.190180, 27.292526> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117317, -0.407929, -0.905445,
		-0.170382, 0.906490, -0.386324,
		0.978369, 0.108949, -0.175850,
		13.025640, 26.222864, 27.239771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.308954, 26.419691, 26.768255>,  <12.340781, 26.146601, 27.362865>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.308954, 26.419691, 26.768255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.689939, 26.300413, 26.793228>,  <12.918530, 26.228846, 26.808212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.689939, 26.300413, 26.793228>,  <12.308954, 26.419691, 26.768255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.689939, 26.300413, 26.793228> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055150, -0.370290, -0.927278,
		0.299627, 0.879753, -0.369132,
		0.952461, -0.298195, 0.062431,
		12.975677, 26.210955, 26.811958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.658010, 26.606451, 26.118961>,  <12.308954, 26.419691, 26.768255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.658010, 26.606451, 26.118961> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.873953, 26.318405, 26.293312>,  <13.003519, 26.145578, 26.397923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.873953, 26.318405, 26.293312>,  <12.658010, 26.606451, 26.118961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.873953, 26.318405, 26.293312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096959, -0.461176, -0.881995,
		0.836153, 0.518415, -0.179149,
		0.539859, -0.720113, 0.435878,
		13.035911, 26.102371, 26.424076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.170813, 26.520077, 25.659525>,  <12.658010, 26.606451, 26.118961>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.170813, 26.520077, 25.659525> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.246945, 26.194727, 25.879414>,  <13.292625, 25.999517, 26.011347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.246945, 26.194727, 25.879414>,  <13.170813, 26.520077, 25.659525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.246945, 26.194727, 25.879414> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285310, -0.489959, -0.823734,
		0.939346, 0.313625, 0.138809,
		0.190332, -0.813376, 0.549721,
		13.304045, 25.950714, 26.044331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.784242, 26.303335, 25.442507>,  <13.170813, 26.520077, 25.659525>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.784242, 26.303335, 25.442507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.572621, 25.998747, 25.592316>,  <13.445649, 25.815994, 25.682201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.572621, 25.998747, 25.592316>,  <13.784242, 26.303335, 25.442507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.572621, 25.998747, 25.592316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195064, -0.538655, -0.819635,
		0.825867, -0.360572, 0.433512,
		-0.529051, -0.761471, 0.374522,
		13.413906, 25.770306, 25.704672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.167444, 25.724495, 25.199917>,  <13.784242, 26.303335, 25.442507>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.167444, 25.724495, 25.199917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.816525, 25.561384, 25.301159>,  <13.605972, 25.463518, 25.361904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.816525, 25.561384, 25.301159>,  <14.167444, 25.724495, 25.199917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.816525, 25.561384, 25.301159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095071, -0.664568, -0.741155,
		0.470434, -0.626151, 0.621793,
		-0.877299, -0.407779, 0.253107,
		13.553335, 25.439051, 25.377090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.289431, 25.100859, 25.360588>,  <14.167444, 25.724495, 25.199917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.289431, 25.100859, 25.360588> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.904281, 25.090033, 25.253153>,  <13.673191, 25.083536, 25.188692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.904281, 25.090033, 25.253153>,  <14.289431, 25.100859, 25.360588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.904281, 25.090033, 25.253153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229476, -0.606080, -0.761583,
		-0.142171, -0.794943, 0.589790,
		-0.962875, -0.027067, -0.268588,
		13.615418, 25.081913, 25.172577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.133174, 24.402651, 25.180603>,  <14.289431, 25.100859, 25.360588>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.133174, 24.402651, 25.180603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.848860, 24.627775, 25.011829>,  <13.678271, 24.762850, 24.910564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.848860, 24.627775, 25.011829>,  <14.133174, 24.402651, 25.180603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.848860, 24.627775, 25.011829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045988, -0.561378, -0.826281,
		-0.701905, -0.606712, 0.373137,
		-0.710785, 0.562810, -0.421935,
		13.635624, 24.796618, 24.885248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.775964, 23.908953, 24.978046>,  <14.133174, 24.402651, 25.180603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.775964, 23.908953, 24.978046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.619159, 24.221773, 24.784252>,  <13.525076, 24.409466, 24.667976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.619159, 24.221773, 24.784252>,  <13.775964, 23.908953, 24.978046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.619159, 24.221773, 24.784252> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042376, -0.541427, -0.839679,
		-0.918984, -0.308633, 0.245386,
		-0.392011, 0.782050, -0.484484,
		13.501555, 24.456388, 24.638906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.081910, 23.676468, 24.751020>,  <13.775964, 23.908953, 24.978046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.081910, 23.676468, 24.751020> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.281464, 23.951668, 24.540205>,  <13.401196, 24.116789, 24.413715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.281464, 23.951668, 24.540205>,  <13.081910, 23.676468, 24.751020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.281464, 23.951668, 24.540205> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028310, -0.620732, -0.783511,
		-0.866207, 0.375960, -0.329150,
		0.498884, 0.688001, -0.527039,
		13.431129, 24.158068, 24.382093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.799299, 23.684519, 23.984428>,  <13.081910, 23.676468, 24.751020>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.799299, 23.684519, 23.984428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.130097, 23.904652, 23.938446>,  <13.328576, 24.036732, 23.910856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.130097, 23.904652, 23.938446>,  <12.799299, 23.684519, 23.984428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.130097, 23.904652, 23.938446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035716, -0.255486, -0.966153,
		-0.561075, 0.794897, -0.230941,
		0.826994, 0.550332, -0.114956,
		13.378196, 24.069752, 23.903959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.811727, 23.993162, 23.261507>,  <12.799299, 23.684519, 23.984428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.811727, 23.993162, 23.261507> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.195964, 24.048107, 23.358166>,  <13.426506, 24.081074, 23.416161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.195964, 24.048107, 23.358166>,  <12.811727, 23.993162, 23.261507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.195964, 24.048107, 23.358166> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253359, -0.075100, -0.964453,
		-0.114333, 0.987670, -0.106943,
		0.960592, 0.137363, 0.241649,
		13.484141, 24.089315, 23.430660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.095730, 24.496246, 22.833704>,  <12.811727, 23.993162, 23.261507>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.095730, 24.496246, 22.833704> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.410381, 24.284178, 22.960278>,  <13.599173, 24.156937, 23.036222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.410381, 24.284178, 22.960278>,  <13.095730, 24.496246, 22.833704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.410381, 24.284178, 22.960278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237135, -0.213773, -0.947664,
		0.570071, 0.820499, -0.042438,
		0.786630, -0.530172, 0.316435,
		13.646370, 24.125126, 23.055208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.560063, 24.716362, 22.408758>,  <13.095730, 24.496246, 22.833704>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.560063, 24.716362, 22.408758> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.702693, 24.375095, 22.561054>,  <13.788271, 24.170336, 22.652431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.702693, 24.375095, 22.561054>,  <13.560063, 24.716362, 22.408758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.702693, 24.375095, 22.561054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218121, -0.320245, -0.921882,
		0.908449, 0.411766, 0.071902,
		0.356574, -0.853166, 0.380741,
		13.809665, 24.119146, 22.675276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.194241, 24.523447, 21.983393>,  <13.560063, 24.716362, 22.408758>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.194241, 24.523447, 21.983393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.107741, 24.174425, 22.158611>,  <14.055841, 23.965012, 22.263742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.107741, 24.174425, 22.158611>,  <14.194241, 24.523447, 21.983393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.107741, 24.174425, 22.158611> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139364, -0.471653, -0.870701,
		0.966341, -0.127240, 0.223597,
		-0.216248, -0.872556, 0.438045,
		14.042867, 23.912659, 22.290026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.770589, 24.052467, 21.821777>,  <14.194241, 24.523447, 21.983393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.770589, 24.052467, 21.821777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.428955, 23.860418, 21.901798>,  <14.223974, 23.745190, 21.949810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.428955, 23.860418, 21.901798>,  <14.770589, 24.052467, 21.821777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.428955, 23.860418, 21.901798> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036208, -0.328802, -0.943705,
		0.518871, -0.813248, 0.263441,
		-0.854086, -0.480122, 0.200052,
		14.172729, 23.716381, 21.961813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<21.354370, 21.668013, 10.069152> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.214748, 21.647997, 9.694845>,  <21.130976, 21.635988, 9.470262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.214748, 21.647997, 9.694845>,  <21.354370, 21.668013, 10.069152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.214748, 21.647997, 9.694845> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387777, -0.901355, 0.192844,
		-0.853106, 0.430182, 0.295218,
		-0.349054, -0.050038, -0.935766,
		21.110031, 21.632986, 9.414116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.531754, 21.526245, 9.978640>,  <21.354370, 21.668013, 10.069152>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.531754, 21.526245, 9.978640> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.748465, 21.388941, 9.671745>,  <20.878490, 21.306559, 9.487609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.748465, 21.388941, 9.671745>,  <20.531754, 21.526245, 9.978640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.748465, 21.388941, 9.671745> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534937, -0.844892, 0.000266,
		-0.648322, 0.410278, -0.641366,
		0.541776, -0.343263, -0.767235,
		20.910997, 21.285961, 9.441575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.157230, 21.089470, 9.626328>,  <20.531754, 21.526245, 9.978640>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.157230, 21.089470, 9.626328> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.524952, 20.961912, 9.534081>,  <20.745584, 20.885378, 9.478732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.524952, 20.961912, 9.534081>,  <20.157230, 21.089470, 9.626328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.524952, 20.961912, 9.534081> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349199, -0.931222, -0.104333,
		-0.181487, 0.176446, -0.967435,
		0.919306, -0.318893, -0.230619,
		20.800743, 20.866245, 9.464895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.231491, 20.739773, 8.951092>,  <20.157230, 21.089470, 9.626328>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.231491, 20.739773, 8.951092> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.511253, 20.589226, 9.194132>,  <20.679111, 20.498898, 9.339956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.511253, 20.589226, 9.194132>,  <20.231491, 20.739773, 8.951092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.511253, 20.589226, 9.194132> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334537, -0.923634, -0.187043,
		0.631598, -0.072446, -0.771904,
		0.699406, -0.376366, 0.607601,
		20.721075, 20.476316, 9.376412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.621315, 20.073353, 8.635779>,  <20.231491, 20.739773, 8.951092>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.621315, 20.073353, 8.635779> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.620653, 20.073280, 9.035779>,  <20.620256, 20.073236, 9.275779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.620653, 20.073280, 9.035779>,  <20.621315, 20.073353, 8.635779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.620653, 20.073280, 9.035779> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244531, -0.969641, -0.000583,
		0.969641, -0.244530, -0.000748,
		0.000583, -0.000748, 1.000000,
		20.620157, 20.073225, 9.335778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.822853, 19.406157, 8.826835>,  <20.621315, 20.073353, 8.635779>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.822853, 19.406157, 8.826835> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.670309, 19.539202, 9.171841>,  <20.578783, 19.619028, 9.378844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.670309, 19.539202, 9.171841>,  <20.822853, 19.406157, 8.826835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.670309, 19.539202, 9.171841> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197078, -0.940831, 0.275676,
		0.903174, -0.064851, 0.424347,
		-0.381361, 0.332613, 0.862515,
		20.555901, 19.638987, 9.430595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.141935, 18.936653, 9.309074>,  <20.822853, 19.406157, 8.826835>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.141935, 18.936653, 9.309074> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.796999, 19.092398, 9.438542>,  <20.590036, 19.185844, 9.516223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.796999, 19.092398, 9.438542>,  <21.141935, 18.936653, 9.309074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.796999, 19.092398, 9.438542> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313853, -0.912683, 0.261737,
		0.397318, 0.124122, 0.909248,
		-0.862343, 0.389363, 0.323669,
		20.538296, 19.209206, 9.535644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.556580, 18.935120, 8.768565>,  <21.141935, 18.936653, 9.309074>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.556580, 18.935120, 8.768565> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.845961, 19.048622, 9.020311>,  <22.019588, 19.116724, 9.171359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.845961, 19.048622, 9.020311>,  <21.556580, 18.935120, 8.768565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.845961, 19.048622, 9.020311> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276528, -0.716201, 0.640772,
		0.632574, -0.637605, -0.439671,
		0.723451, 0.283754, 0.629366,
		22.062996, 19.133749, 9.209121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.843588, 18.430407, 9.162856>,  <21.556580, 18.935120, 8.768565>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.843588, 18.430407, 9.162856> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.019394, 18.701374, 9.398799>,  <22.124878, 18.863955, 9.540364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.019394, 18.701374, 9.398799>,  <21.843588, 18.430407, 9.162856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.019394, 18.701374, 9.398799> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259745, -0.532778, 0.805407,
		0.859860, -0.507200, -0.058207,
		0.439514, 0.677418, 0.589857,
		22.151249, 18.904600, 9.575756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.436638, 18.178534, 9.563110>,  <21.843588, 18.430407, 9.162856>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.436638, 18.178534, 9.563110> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.252256, 18.471239, 9.763926>,  <22.141628, 18.646862, 9.884415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.252256, 18.471239, 9.763926>,  <22.436638, 18.178534, 9.563110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.252256, 18.471239, 9.763926> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138407, -0.618083, 0.773833,
		0.876565, 0.287215, 0.386188,
		-0.460953, 0.731766, 0.502037,
		22.113970, 18.690769, 9.914536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.877415, 18.278051, 10.201663>,  <22.436638, 18.178534, 9.563110>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.877415, 18.278051, 10.201663> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.504471, 18.408833, 10.263379>,  <22.280704, 18.487301, 10.300408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.504471, 18.408833, 10.263379>,  <22.877415, 18.278051, 10.201663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.504471, 18.408833, 10.263379> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086924, -0.616984, 0.782161,
		0.350924, 0.715844, 0.603672,
		-0.932361, 0.326953, 0.154290,
		22.224762, 18.506918, 10.309666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.829657, 18.045216, 10.747931>,  <22.877415, 18.278051, 10.201663>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.829657, 18.045216, 10.747931> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.458576, 18.194431, 10.742113>,  <22.235928, 18.283960, 10.738623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.458576, 18.194431, 10.742113>,  <22.829657, 18.045216, 10.747931>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.458576, 18.194431, 10.742113> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164678, -0.373948, 0.912713,
		0.335039, 0.849120, 0.408343,
		-0.927702, 0.373039, -0.014544,
		22.180265, 18.306343, 10.737750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.716261, 18.528889, 11.401651>,  <22.829657, 18.045216, 10.747931>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.716261, 18.528889, 11.401651> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.378933, 18.391232, 11.236543>,  <22.176537, 18.308638, 11.137478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.378933, 18.391232, 11.236543>,  <22.716261, 18.528889, 11.401651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.378933, 18.391232, 11.236543> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322031, -0.291303, 0.900799,
		-0.430243, 0.892586, 0.134837,
		-0.843319, -0.344141, -0.412771,
		22.125937, 18.287989, 11.112711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.169199, 18.749853, 11.862643>,  <22.716261, 18.528889, 11.401651>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.169199, 18.749853, 11.862643> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.014870, 18.454546, 11.641336>,  <21.922272, 18.277363, 11.508553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.014870, 18.454546, 11.641336>,  <22.169199, 18.749853, 11.862643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.014870, 18.454546, 11.641336> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398201, -0.407703, 0.821714,
		-0.832213, 0.537347, -0.136678,
		-0.385821, -0.738266, -0.553268,
		21.899124, 18.233067, 11.475356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.478071, 18.699696, 12.134226>,  <22.169199, 18.749853, 11.862643>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.478071, 18.699696, 12.134226> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.545797, 18.349741, 11.952720>,  <21.586433, 18.139769, 11.843816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.545797, 18.349741, 11.952720>,  <21.478071, 18.699696, 12.134226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.545797, 18.349741, 11.952720> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299498, -0.484314, 0.822035,
		-0.938954, -0.003279, -0.344028,
		0.169313, -0.874889, -0.453766,
		21.596592, 18.087275, 11.816590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.868402, 18.326048, 12.272958>,  <21.478071, 18.699696, 12.134226>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.868402, 18.326048, 12.272958> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.173395, 18.087994, 12.171420>,  <21.356390, 17.945162, 12.110497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.173395, 18.087994, 12.171420>,  <20.868402, 18.326048, 12.272958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.173395, 18.087994, 12.171420> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204642, -0.594019, 0.777987,
		-0.613802, -0.541248, -0.574715,
		0.762475, -0.595141, -0.253848,
		21.402140, 17.909452, 12.095267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.556660, 17.682871, 12.353571>,  <20.868402, 18.326048, 12.272958>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.556660, 17.682871, 12.353571> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.952343, 17.624586, 12.347421>,  <21.189753, 17.589615, 12.343731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.952343, 17.624586, 12.347421>,  <20.556660, 17.682871, 12.353571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.952343, 17.624586, 12.347421> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090575, -0.690607, 0.717537,
		-0.115172, -0.708400, -0.696351,
		0.989208, -0.145712, -0.015375,
		21.249105, 17.580872, 12.342808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.528856, 17.027224, 12.302794>,  <20.556660, 17.682871, 12.353571>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.528856, 17.027224, 12.302794> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.893312, 17.127810, 12.433385>,  <21.111986, 17.188160, 12.511740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.893312, 17.127810, 12.433385>,  <20.528856, 17.027224, 12.302794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.893312, 17.127810, 12.433385> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004275, -0.786432, 0.617662,
		0.412073, -0.564173, -0.715475,
		0.911141, 0.251463, 0.326479,
		21.166655, 17.203249, 12.531328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.932976, 16.469620, 12.411148>,  <20.528856, 17.027224, 12.302794>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.932976, 16.469620, 12.411148> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.102179, 16.727261, 12.666083>,  <21.203701, 16.881845, 12.819044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.102179, 16.727261, 12.666083>,  <20.932976, 16.469620, 12.411148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.102179, 16.727261, 12.666083> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073162, -0.725346, 0.684485,
		0.903168, -0.242913, -0.353950,
		0.423007, 0.644101, 0.637338,
		21.229080, 16.920490, 12.857285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.396378, 16.145382, 12.824204>,  <20.932976, 16.469620, 12.411148>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.396378, 16.145382, 12.824204> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.357231, 16.477230, 13.044079>,  <21.333744, 16.676338, 13.176003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.357231, 16.477230, 13.044079>,  <21.396378, 16.145382, 12.824204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.357231, 16.477230, 13.044079> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185193, -0.527508, 0.829119,
		0.977817, 0.182940, -0.102015,
		-0.097866, 0.829619, 0.549685,
		21.327871, 16.726116, 13.208984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.018049, 16.125772, 13.239527>,  <21.396378, 16.145382, 12.824204>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.018049, 16.125772, 13.239527> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.744858, 16.360992, 13.412840>,  <21.580942, 16.502125, 13.516828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.744858, 16.360992, 13.412840>,  <22.018049, 16.125772, 13.239527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.744858, 16.360992, 13.412840> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046584, -0.556909, 0.829266,
		0.728949, 0.586557, 0.352965,
		-0.682981, 0.588051, 0.433283,
		21.539963, 16.537407, 13.542825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.272066, 16.220287, 13.892146>,  <22.018049, 16.125772, 13.239527>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.272066, 16.220287, 13.892146> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.878817, 16.288048, 13.919778>,  <21.642866, 16.328705, 13.936357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.878817, 16.288048, 13.919778>,  <22.272066, 16.220287, 13.892146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.878817, 16.288048, 13.919778> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019563, -0.472777, 0.880965,
		0.181896, 0.864746, 0.468112,
		-0.983123, 0.169401, 0.069080,
		21.583879, 16.338869, 13.940502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.185131, 16.591085, 14.593767>,  <22.272066, 16.220287, 13.892146>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.185131, 16.591085, 14.593767> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.816355, 16.463167, 14.506356>,  <21.595089, 16.386415, 14.453910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.816355, 16.463167, 14.506356>,  <22.185131, 16.591085, 14.593767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.816355, 16.463167, 14.506356> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044416, -0.647753, 0.760555,
		-0.384775, 0.691481, 0.611394,
		-0.921941, -0.319798, -0.218527,
		21.539772, 16.367228, 14.440798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.670605, 16.794897, 15.137654>,  <22.185131, 16.591085, 14.593767>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.670605, 16.794897, 15.137654> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.506638, 16.477152, 14.958342>,  <21.408257, 16.286505, 14.850754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.506638, 16.477152, 14.958342>,  <21.670605, 16.794897, 15.137654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.506638, 16.477152, 14.958342> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133558, -0.433902, 0.891006,
		-0.902291, 0.425112, 0.071772,
		-0.409919, -0.794361, -0.448282,
		21.383661, 16.238844, 14.823857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.084595, 16.623873, 15.564315>,  <21.670605, 16.794897, 15.137654>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.084595, 16.623873, 15.564315> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.142614, 16.288643, 15.353948>,  <21.177425, 16.087505, 15.227728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.142614, 16.288643, 15.353948>,  <21.084595, 16.623873, 15.564315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.142614, 16.288643, 15.353948> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061550, -0.538152, 0.840598,
		-0.987508, -0.089558, -0.129642,
		0.145049, -0.838076, -0.525917,
		21.186129, 16.037220, 15.196173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.576715, 16.222965, 15.862654>,  <21.084595, 16.623873, 15.564315>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.576715, 16.222965, 15.862654> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.867823, 16.014669, 15.684132>,  <21.042486, 15.889692, 15.577019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.867823, 16.014669, 15.684132>,  <20.576715, 16.222965, 15.862654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.867823, 16.014669, 15.684132> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019652, -0.634655, 0.772546,
		-0.685546, -0.571002, -0.451646,
		0.727764, -0.520740, -0.446307,
		21.086153, 15.858448, 15.550241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.406342, 15.498471, 15.967490>,  <20.576715, 16.222965, 15.862654>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.406342, 15.498471, 15.967490> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.798923, 15.501498, 15.890869>,  <21.034472, 15.503314, 15.844896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.798923, 15.501498, 15.890869>,  <20.406342, 15.498471, 15.967490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.798923, 15.501498, 15.890869> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146297, -0.675283, 0.722904,
		-0.123882, -0.737520, -0.663865,
		0.981453, 0.007566, -0.191552,
		21.093359, 15.503768, 15.833404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.501883, 14.798639, 15.915645>,  <20.406342, 15.498471, 15.967490>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.501883, 14.798639, 15.915645> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.877615, 14.930400, 15.953905>,  <21.103054, 15.009457, 15.976861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.877615, 14.930400, 15.953905>,  <20.501883, 14.798639, 15.915645>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.877615, 14.930400, 15.953905> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199795, -0.752106, 0.628028,
		0.278813, -0.570817, -0.772290,
		0.939332, 0.329402, 0.095651,
		21.159414, 15.029221, 15.982600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.830164, 14.214030, 16.032106>,  <20.501883, 14.798639, 15.915645>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.830164, 14.214030, 16.032106> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.054779, 14.511781, 16.176651>,  <21.189548, 14.690431, 16.263378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.054779, 14.511781, 16.176651>,  <20.830164, 14.214030, 16.032106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.054779, 14.511781, 16.176651> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377437, -0.619060, 0.688699,
		0.736353, -0.250340, -0.628581,
		0.561538, 0.744375, 0.361359,
		21.223240, 14.735093, 16.285059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.418457, 13.896810, 16.016577>,  <20.830164, 14.214030, 16.032106>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.418457, 13.896810, 16.016577> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.426003, 14.207820, 16.268003>,  <21.430531, 14.394426, 16.418859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.426003, 14.207820, 16.268003>,  <21.418457, 13.896810, 16.016577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.426003, 14.207820, 16.268003> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312650, -0.601740, 0.734955,
		0.949681, 0.182657, -0.254446,
		0.018866, 0.777525, 0.628569,
		21.431662, 14.441077, 16.456573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.174343, 13.938555, 16.239779>,  <21.418457, 13.896810, 16.016577>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.174343, 13.938555, 16.239779> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.879669, 14.065286, 16.478748>,  <21.702866, 14.141324, 16.622131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.879669, 14.065286, 16.478748>,  <22.174343, 13.938555, 16.239779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.879669, 14.065286, 16.478748> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373391, -0.545995, 0.749979,
		0.563805, 0.775571, 0.283926,
		-0.736684, 0.316827, 0.597426,
		21.658665, 14.160334, 16.657976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.473255, 14.198253, 16.926762>,  <22.174343, 13.938555, 16.239779>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.473255, 14.198253, 16.926762> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.088228, 14.118430, 17.000134>,  <21.857212, 14.070537, 17.044157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.088228, 14.118430, 17.000134>,  <22.473255, 14.198253, 16.926762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.088228, 14.118430, 17.000134> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248720, -0.381305, 0.890362,
		-0.107734, 0.902654, 0.416665,
		-0.962565, -0.199556, 0.183429,
		21.799459, 14.058563, 17.055162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.891020, 14.321045, 17.603342>,  <22.473255, 14.198253, 16.926762>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.891020, 14.321045, 17.603342> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.013006, 14.272708, 17.225475>,  <23.086197, 14.243706, 16.998755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.013006, 14.272708, 17.225475>,  <22.891020, 14.321045, 17.603342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.013006, 14.272708, 17.225475> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053873, -0.992518, 0.109571,
		-0.950839, 0.017477, -0.309192,
		0.304964, -0.120842, -0.944666,
		23.104496, 14.236455, 16.942076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.304008, 15.014274, 17.320946>,  <22.891020, 14.321045, 17.603342>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.304008, 15.014274, 17.320946> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.476175, 14.677495, 17.190796>,  <23.579475, 14.475428, 17.112707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.476175, 14.677495, 17.190796>,  <23.304008, 15.014274, 17.320946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.476175, 14.677495, 17.190796> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563141, 0.532193, -0.632173,
		0.705417, 0.088867, 0.703199,
		0.430417, -0.841946, -0.325373,
		23.605301, 14.424911, 17.093184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.152052, 15.096598, 17.356934>,  <23.304008, 15.014274, 17.320946>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.152052, 15.096598, 17.356934> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.956339, 14.874001, 17.088333>,  <23.838911, 14.740442, 16.927172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.956339, 14.874001, 17.088333>,  <24.152052, 15.096598, 17.356934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.956339, 14.874001, 17.088333> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213643, 0.670022, -0.710934,
		0.845552, -0.491310, -0.208940,
		-0.489284, -0.556493, -0.671504,
		23.809553, 14.707053, 16.886883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.620354, 15.131552, 16.758991>,  <24.152052, 15.096598, 17.356934>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.620354, 15.131552, 16.758991> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.221098, 15.107589, 16.754515>,  <23.981544, 15.093211, 16.751829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.221098, 15.107589, 16.754515>,  <24.620354, 15.131552, 16.758991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.221098, 15.107589, 16.754515> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041855, 0.807313, -0.588638,
		0.044297, -0.587076, -0.808319,
		-0.998141, -0.059907, -0.011190,
		23.921656, 15.089617, 16.751158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.283234, 15.008536, 16.137800>,  <24.620354, 15.131552, 16.758991>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.283234, 15.008536, 16.137800> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.082083, 15.239433, 16.395142>,  <23.961391, 15.377972, 16.549547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.082083, 15.239433, 16.395142>,  <24.283234, 15.008536, 16.137800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.082083, 15.239433, 16.395142> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106947, 0.780149, -0.616385,
		-0.857716, -0.241161, -0.454054,
		-0.502878, 0.577243, 0.643355,
		23.931219, 15.412606, 16.588148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.721899, 15.249247, 15.820817>,  <24.283234, 15.008536, 16.137800>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.721899, 15.249247, 15.820817> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.885241, 15.484220, 16.100294>,  <23.983246, 15.625203, 16.267981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.885241, 15.484220, 16.100294>,  <23.721899, 15.249247, 15.820817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.885241, 15.484220, 16.100294> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032973, 0.774411, -0.631823,
		-0.912229, 0.234968, 0.335602,
		0.408352, 0.587433, 0.698692,
		24.007746, 15.660450, 16.309902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.348772, 15.846701, 15.838003>,  <23.721899, 15.249247, 15.820817>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.348772, 15.846701, 15.838003> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.686974, 15.965276, 16.015656>,  <23.889894, 16.036421, 16.122248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.686974, 15.965276, 16.015656>,  <23.348772, 15.846701, 15.838003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.686974, 15.965276, 16.015656> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000052, 0.831793, -0.555085,
		-0.533973, 0.469302, 0.703298,
		0.845502, 0.296437, 0.444131,
		23.940624, 16.054207, 16.148895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.286526, 16.564249, 16.042534>,  <23.348772, 15.846701, 15.838003>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.286526, 16.564249, 16.042534> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.679369, 16.518087, 15.983006>,  <23.915075, 16.490391, 15.947290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.679369, 16.518087, 15.983006>,  <23.286526, 16.564249, 16.042534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.679369, 16.518087, 15.983006> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039679, 0.899298, -0.435533,
		0.184095, 0.421835, 0.887786,
		0.982107, -0.115406, -0.148818,
		23.974001, 16.483465, 15.938361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.626410, 17.168461, 16.278244>,  <23.286526, 16.564249, 16.042534>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.626410, 17.168461, 16.278244> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.858278, 16.996861, 16.001133>,  <23.997400, 16.893900, 15.834867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.858278, 16.996861, 16.001133>,  <23.626410, 17.168461, 16.278244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.858278, 16.996861, 16.001133> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133090, 0.888617, -0.438915,
		0.803908, 0.162225, 0.572202,
		0.579672, -0.429002, -0.692776,
		24.032179, 16.868160, 15.793301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.162722, 17.764391, 16.167793>,  <23.626410, 17.168461, 16.278244>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.162722, 17.764391, 16.167793> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.198528, 17.495308, 15.874003>,  <24.220013, 17.333858, 15.697730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.198528, 17.495308, 15.874003>,  <24.162722, 17.764391, 16.167793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.198528, 17.495308, 15.874003> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312290, 0.719205, -0.620660,
		0.945760, -0.173808, 0.274461,
		0.089518, -0.672707, -0.734474,
		24.225384, 17.293495, 15.653661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.734957, 17.981855, 15.794166>,  <24.162722, 17.764391, 16.167793>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.734957, 17.981855, 15.794166> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.576370, 17.722261, 15.534432>,  <24.481218, 17.566505, 15.378592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.576370, 17.722261, 15.534432>,  <24.734957, 17.981855, 15.794166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.576370, 17.722261, 15.534432> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063226, 0.686315, -0.724551,
		0.915870, -0.328314, -0.231067,
		-0.396465, -0.648986, -0.649333,
		24.457430, 17.527565, 15.339633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.106310, 18.101770, 15.212295>,  <24.734957, 17.981855, 15.794166>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.106310, 18.101770, 15.212295> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.787287, 17.908575, 15.067725>,  <24.595873, 17.792658, 14.980984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.787287, 17.908575, 15.067725>,  <25.106310, 18.101770, 15.212295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.787287, 17.908575, 15.067725> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036746, 0.559121, -0.828271,
		0.602125, -0.673873, -0.428182,
		-0.797556, -0.482989, -0.361423,
		24.548019, 17.763680, 14.959298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.283684, 17.936218, 14.596663>,  <25.106310, 18.101770, 15.212295>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.283684, 17.936218, 14.596663> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.884520, 17.926790, 14.572603>,  <24.645021, 17.921133, 14.558167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.884520, 17.926790, 14.572603>,  <25.283684, 17.936218, 14.596663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.884520, 17.926790, 14.572603> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028637, 0.673213, -0.738894,
		0.057911, -0.739073, -0.671131,
		-0.997911, -0.023571, -0.060151,
		24.585146, 17.919720, 14.554558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.076172, 17.734423, 13.849133>,  <25.283684, 17.936218, 14.596663>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.076172, 17.734423, 13.849133> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.775095, 17.948040, 14.003149>,  <24.594448, 18.076210, 14.095558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.775095, 17.948040, 14.003149>,  <25.076172, 17.734423, 13.849133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.775095, 17.948040, 14.003149> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067391, 0.644258, -0.761834,
		-0.654915, -0.547478, -0.520917,
		-0.752692, 0.534042, 0.385039,
		24.549288, 18.108252, 14.118661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.642456, 17.843376, 13.298054>,  <25.076172, 17.734423, 13.849133>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.642456, 17.843376, 13.298054> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.524767, 18.116146, 13.565908>,  <24.454153, 18.279808, 13.726621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.524767, 18.116146, 13.565908>,  <24.642456, 17.843376, 13.298054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.524767, 18.116146, 13.565908> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076381, 0.715186, -0.694748,
		-0.952679, -0.153264, -0.262511,
		-0.294225, 0.681923, 0.669636,
		24.436499, 18.320723, 13.766799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.130537, 18.067160, 12.979496>,  <24.642456, 17.843376, 13.298054>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.130537, 18.067160, 12.979496> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.282402, 18.338131, 13.231510>,  <24.373522, 18.500713, 13.382718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.282402, 18.338131, 13.231510>,  <24.130537, 18.067160, 12.979496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.282402, 18.338131, 13.231510> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068785, 0.699813, -0.711007,
		-0.922564, 0.226606, 0.312291,
		0.379664, 0.677430, 0.630035,
		24.396301, 18.541361, 13.420521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.831198, 18.724058, 12.856798>,  <24.130537, 18.067160, 12.979496>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.831198, 18.724058, 12.856798> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.140377, 18.858944, 13.071774>,  <24.325884, 18.939875, 13.200759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.140377, 18.858944, 13.071774>,  <23.831198, 18.724058, 12.856798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.140377, 18.858944, 13.071774> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125656, 0.748925, -0.650631,
		-0.621903, 0.570436, 0.536506,
		0.772947, 0.337215, 0.537438,
		24.372261, 18.960108, 13.233005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.796265, 19.484093, 12.761326>,  <23.831198, 18.724058, 12.856798>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.796265, 19.484093, 12.761326> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.162073, 19.401081, 12.900225>,  <24.381559, 19.351274, 12.983564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.162073, 19.401081, 12.900225>,  <23.796265, 19.484093, 12.761326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.162073, 19.401081, 12.900225> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383303, 0.718974, -0.579789,
		-0.129338, 0.663331, 0.737065,
		0.914522, -0.207530, 0.347247,
		24.436430, 19.338821, 13.004398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.180666, 20.159723, 12.897050>,  <23.796265, 19.484093, 12.761326>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.180666, 20.159723, 12.897050> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.471407, 19.888094, 12.855976>,  <24.645851, 19.725117, 12.831332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.471407, 19.888094, 12.855976>,  <24.180666, 20.159723, 12.897050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.471407, 19.888094, 12.855976> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439843, 0.575095, -0.689786,
		0.527468, 0.456208, 0.716695,
		0.726854, -0.679073, -0.102684,
		24.689463, 19.684372, 12.825171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.864534, 20.559067, 12.815448>,  <24.180666, 20.159723, 12.897050>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.864534, 20.559067, 12.815448> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.923494, 20.199507, 12.650403>,  <24.958870, 19.983770, 12.551376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.923494, 20.199507, 12.650403>,  <24.864534, 20.559067, 12.815448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.923494, 20.199507, 12.650403> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584309, 0.415732, -0.696958,
		0.798032, -0.138360, 0.586516,
		0.147402, -0.898901, -0.412613,
		24.967714, 19.929836, 12.526619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<17.844305, 22.311152, 17.940825> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.468655, 22.174994, 17.922159>,  <17.243265, 22.093300, 17.910959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.468655, 22.174994, 17.922159>,  <17.844305, 22.311152, 17.940825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.468655, 22.174994, 17.922159> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302765, -0.755697, -0.580737,
		0.162414, -0.559513, 0.812753,
		-0.939125, -0.340393, -0.046665,
		17.186916, 22.072876, 17.908159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.890467, 21.607754, 18.142099>,  <17.844305, 22.311152, 17.940825>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.890467, 21.607754, 18.142099> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.564964, 21.648623, 17.913237>,  <17.369663, 21.673143, 17.775919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.564964, 21.648623, 17.913237>,  <17.890467, 21.607754, 18.142099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.564964, 21.648623, 17.913237> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321268, -0.741294, -0.589296,
		-0.484346, -0.663358, 0.570408,
		-0.813754, 0.102170, -0.572158,
		17.320839, 21.679274, 17.741589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.761150, 20.986893, 18.072857>,  <17.890467, 21.607754, 18.142099>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.761150, 20.986893, 18.072857> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.552389, 21.168545, 17.784029>,  <17.427134, 21.277536, 17.610731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.552389, 21.168545, 17.784029>,  <17.761150, 20.986893, 18.072857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.552389, 21.168545, 17.784029> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108295, -0.804377, -0.584167,
		-0.846104, -0.383073, 0.370624,
		-0.521900, 0.454129, -0.722072,
		17.395819, 21.304783, 17.567408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.275164, 20.490673, 17.910507>,  <17.761150, 20.986893, 18.072857>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.275164, 20.490673, 17.910507> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.281008, 20.722357, 17.584488>,  <17.284515, 20.861366, 17.388876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.281008, 20.722357, 17.584488>,  <17.275164, 20.490673, 17.910507>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.281008, 20.722357, 17.584488> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003550, -0.815160, -0.579225,
		-0.999887, 0.005570, -0.013968,
		0.014612, 0.579210, -0.815048,
		17.285391, 20.896120, 17.339973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.815144, 20.181566, 17.354700>,  <17.275164, 20.490673, 17.910507>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.815144, 20.181566, 17.354700> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.088556, 20.405262, 17.167068>,  <17.252604, 20.539478, 17.054489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.088556, 20.405262, 17.167068>,  <16.815144, 20.181566, 17.354700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.088556, 20.405262, 17.167068> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124985, -0.722829, -0.679631,
		-0.719139, 0.405922, -0.563973,
		0.683533, 0.559237, -0.469081,
		17.293615, 20.573032, 17.026344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.661606, 20.093943, 16.691080>,  <16.815144, 20.181566, 17.354700>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.661606, 20.093943, 16.691080> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.034204, 20.239445, 16.691298>,  <17.257763, 20.326746, 16.691427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.034204, 20.239445, 16.691298>,  <16.661606, 20.093943, 16.691080>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.034204, 20.239445, 16.691298> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223957, -0.572329, -0.788849,
		-0.286638, 0.734929, -0.614587,
		0.931495, 0.363755, 0.000541,
		17.313652, 20.348572, 16.691460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.624975, 20.414900, 16.060791>,  <16.661606, 20.093943, 16.691080>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.624975, 20.414900, 16.060791> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.001616, 20.332396, 16.167257>,  <17.227600, 20.282892, 16.231136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.001616, 20.332396, 16.167257>,  <16.624975, 20.414900, 16.060791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.001616, 20.332396, 16.167257> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052202, -0.691468, -0.720518,
		0.332660, 0.692335, -0.640320,
		0.941601, -0.206262, 0.266165,
		17.284096, 20.270517, 16.247107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.041393, 20.357386, 15.497901>,  <16.624975, 20.414900, 16.060791>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.041393, 20.357386, 15.497901> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.234833, 20.151043, 15.780749>,  <17.350897, 20.027237, 15.950459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.234833, 20.151043, 15.780749>,  <17.041393, 20.357386, 15.497901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.234833, 20.151043, 15.780749> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227876, -0.705812, -0.670748,
		0.845106, 0.485509, -0.223779,
		0.483600, -0.515859, 0.707122,
		17.379913, 19.996284, 15.992886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.650297, 20.223072, 15.178848>,  <17.041393, 20.357386, 15.497901>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.650297, 20.223072, 15.178848> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.607056, 19.951223, 15.469069>,  <17.581110, 19.788115, 15.643203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.607056, 19.951223, 15.469069>,  <17.650297, 20.223072, 15.178848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.607056, 19.951223, 15.469069> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531803, -0.656161, -0.535386,
		0.839940, 0.327974, 0.432358,
		-0.108104, -0.679621, 0.725554,
		17.574625, 19.747337, 15.686735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.280716, 19.908083, 15.264505>,  <17.650297, 20.223072, 15.178848>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.280716, 19.908083, 15.264505> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.030062, 19.648869, 15.437652>,  <17.879669, 19.493340, 15.541539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.030062, 19.648869, 15.437652>,  <18.280716, 19.908083, 15.264505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.030062, 19.648869, 15.437652> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471295, -0.757492, -0.451760,
		0.620650, -0.079083, 0.780090,
		-0.626638, -0.648037, 0.432865,
		17.842070, 19.454458, 15.567512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.730585, 19.416670, 15.552257>,  <18.280716, 19.908083, 15.264505>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.730585, 19.416670, 15.552257> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.370478, 19.249229, 15.504448>,  <18.154413, 19.148766, 15.475762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.370478, 19.249229, 15.504448>,  <18.730585, 19.416670, 15.552257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.370478, 19.249229, 15.504448> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422207, -0.772664, -0.474059,
		0.106093, -0.477244, 0.872343,
		-0.900270, -0.418603, -0.119522,
		18.100397, 19.123648, 15.468592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.797653, 18.619450, 15.757633>,  <18.730585, 19.416670, 15.552257>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.797653, 18.619450, 15.757633> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.496786, 18.689487, 15.503521>,  <18.316265, 18.731510, 15.351053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.496786, 18.689487, 15.503521>,  <18.797653, 18.619450, 15.757633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.496786, 18.689487, 15.503521> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229846, -0.833799, -0.501946,
		-0.617585, -0.523565, 0.586914,
		-0.752171, 0.175095, -0.635281,
		18.271135, 18.742016, 15.312937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.921494, 18.430119, 16.543653>,  <18.797653, 18.619450, 15.757633>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.921494, 18.430119, 16.543653> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.107471, 18.161528, 16.312849>,  <19.219057, 18.000372, 16.174366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.107471, 18.161528, 16.312849>,  <18.921494, 18.430119, 16.543653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.107471, 18.161528, 16.312849> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397689, -0.740688, 0.541503,
		-0.790994, -0.022297, -0.611417,
		0.464943, -0.671479, -0.577012,
		19.246954, 17.960083, 16.139746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.487183, 17.978775, 16.147833>,  <18.921494, 18.430119, 16.543653>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.487183, 17.978775, 16.147833> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.817087, 17.819838, 16.308775>,  <19.015030, 17.724476, 16.405340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.817087, 17.819838, 16.308775>,  <18.487183, 17.978775, 16.147833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.817087, 17.819838, 16.308775> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564102, -0.528435, 0.634465,
		-0.039481, -0.750250, -0.659974,
		0.824761, -0.397342, 0.402354,
		19.064516, 17.700634, 16.429482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.224165, 17.331358, 16.482241>,  <18.487183, 17.978775, 16.147833>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.224165, 17.331358, 16.482241> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.373358, 17.154783, 16.808681>,  <18.462873, 17.048840, 17.004545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.373358, 17.154783, 16.808681>,  <18.224165, 17.331358, 16.482241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.373358, 17.154783, 16.808681> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792574, 0.305726, 0.527596,
		-0.482403, -0.843604, -0.235840,
		0.372980, -0.441435, 0.816102,
		18.485252, 17.022352, 17.053513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.630108, 17.125231, 16.762651>,  <18.224165, 17.331358, 16.482241>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.630108, 17.125231, 16.762651> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.902710, 17.100512, 17.054331>,  <18.066271, 17.085680, 17.229338>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.902710, 17.100512, 17.054331>,  <17.630108, 17.125231, 16.762651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.902710, 17.100512, 17.054331> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710770, 0.181332, 0.679650,
		-0.174229, -0.981478, 0.079653,
		0.681505, -0.061800, 0.729199,
		18.107162, 17.081972, 17.273090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.403664, 16.655848, 17.211803>,  <17.630108, 17.125231, 16.762651>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.403664, 16.655848, 17.211803> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.643715, 16.896139, 17.423073>,  <17.787746, 17.040314, 17.549835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.643715, 16.896139, 17.423073>,  <17.403664, 16.655848, 17.211803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.643715, 16.896139, 17.423073> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716893, 0.111021, 0.688286,
		0.354837, -0.791705, 0.497287,
		0.600129, 0.600732, 0.528174,
		17.823753, 17.076359, 17.581526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.247486, 16.528038, 17.926641>,  <17.403664, 16.655848, 17.211803>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.247486, 16.528038, 17.926641> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.451330, 16.870935, 17.956116>,  <17.573637, 17.076674, 17.973801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.451330, 16.870935, 17.956116>,  <17.247486, 16.528038, 17.926641>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.451330, 16.870935, 17.956116> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639814, 0.320303, 0.698602,
		0.575271, -0.403158, 0.711707,
		0.509609, 0.857245, 0.073685,
		17.604214, 17.128109, 17.978222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.161425, 16.708651, 18.639942>,  <17.247486, 16.528038, 17.926641>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.161425, 16.708651, 18.639942> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.293442, 17.045561, 18.469461>,  <17.372652, 17.247707, 18.367174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.293442, 17.045561, 18.469461>,  <17.161425, 16.708651, 18.639942>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.293442, 17.045561, 18.469461> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336530, 0.526819, 0.780519,
		0.881942, -0.114174, 0.457322,
		0.330040, 0.842274, -0.426201,
		17.392454, 17.298243, 18.341600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.591133, 17.078371, 19.062597>,  <17.161425, 16.708651, 18.639942>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.591133, 17.078371, 19.062597> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.490763, 17.369831, 18.807692>,  <17.430540, 17.544706, 18.654749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.490763, 17.369831, 18.807692>,  <17.591133, 17.078371, 19.062597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.490763, 17.369831, 18.807692> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227206, 0.595603, 0.770477,
		0.940964, 0.338125, 0.016100,
		-0.250928, 0.728649, -0.637265,
		17.415483, 17.588427, 18.616512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.782265, 17.781527, 19.287914>,  <17.591133, 17.078371, 19.062597>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.782265, 17.781527, 19.287914> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.490877, 17.850395, 19.022676>,  <17.316046, 17.891716, 18.863533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.490877, 17.850395, 19.022676>,  <17.782265, 17.781527, 19.287914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.490877, 17.850395, 19.022676> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524994, 0.481542, 0.701782,
		0.440133, 0.859345, -0.260400,
		-0.728467, 0.172169, -0.663094,
		17.272337, 17.902046, 18.823748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.638283, 18.576099, 19.369818>,  <17.782265, 17.781527, 19.287914>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.638283, 18.576099, 19.369818> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.315973, 18.438892, 19.176710>,  <17.122587, 18.356567, 19.060844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.315973, 18.438892, 19.176710>,  <17.638283, 18.576099, 19.369818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.315973, 18.438892, 19.176710> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557673, 0.713843, 0.423590,
		0.199324, 0.610546, -0.766488,
		-0.805773, -0.343019, -0.482771,
		17.074242, 18.335987, 19.031879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.177786, 19.225641, 19.275635>,  <17.638283, 18.576099, 19.369818>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.177786, 19.225641, 19.275635> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.922251, 18.924646, 19.211575>,  <16.768930, 18.744049, 19.173138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.922251, 18.924646, 19.211575>,  <17.177786, 19.225641, 19.275635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.922251, 18.924646, 19.211575> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715972, 0.505314, 0.481708,
		-0.281554, 0.422396, -0.861574,
		-0.638836, -0.752489, -0.160151,
		16.730600, 18.698900, 19.163528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.628237, 19.460409, 18.944376>,  <17.177786, 19.225641, 19.275635>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.628237, 19.460409, 18.944376> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.503944, 19.127254, 19.127567>,  <16.429369, 18.927362, 19.237482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.503944, 19.127254, 19.127567>,  <16.628237, 19.460409, 18.944376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.503944, 19.127254, 19.127567> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686193, 0.529980, 0.498258,
		-0.657712, -0.159437, -0.736203,
		-0.310733, -0.832887, 0.457978,
		16.410725, 18.877388, 19.264961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.904303, 19.323061, 18.729532>,  <16.628237, 19.460409, 18.944376>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.904303, 19.323061, 18.729532> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.995907, 19.167547, 19.086498>,  <16.050869, 19.074240, 19.300678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.995907, 19.167547, 19.086498>,  <15.904303, 19.323061, 18.729532>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.995907, 19.167547, 19.086498> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742716, 0.522821, 0.418366,
		-0.629227, -0.758620, -0.169025,
		0.229011, -0.388785, 0.892413,
		16.064610, 19.050911, 19.354221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.249963, 19.164402, 19.126184>,  <15.904303, 19.323061, 18.729532>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.249963, 19.164402, 19.126184> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.529818, 19.145723, 19.411373>,  <15.697730, 19.134516, 19.582485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.529818, 19.145723, 19.411373>,  <15.249963, 19.164402, 19.126184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.529818, 19.145723, 19.411373> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625350, 0.442653, 0.642647,
		-0.345608, -0.895476, 0.280495,
		0.699637, -0.046696, 0.712971,
		15.739709, 19.131714, 19.625265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.806592, 19.146341, 19.751629>,  <15.249963, 19.164402, 19.126184>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.806592, 19.146341, 19.751629> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.170255, 19.183662, 19.913975>,  <15.388453, 19.206055, 20.011383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.170255, 19.183662, 19.913975>,  <14.806592, 19.146341, 19.751629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.170255, 19.183662, 19.913975> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403918, 0.434867, 0.804824,
		-0.101405, -0.895648, 0.433049,
		0.909157, 0.093303, 0.405866,
		15.443002, 19.211653, 20.035734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.735761, 18.855862, 20.405293>,  <14.806592, 19.146341, 19.751629>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.735761, 18.855862, 20.405293> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.045713, 19.108690, 20.408058>,  <15.231685, 19.260387, 20.409718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.045713, 19.108690, 20.408058>,  <14.735761, 18.855862, 20.405293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.045713, 19.108690, 20.408058> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304045, 0.363107, 0.880744,
		0.554182, -0.684573, 0.473542,
		0.774880, 0.632070, 0.006914,
		15.278177, 19.298311, 20.410133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.397935, 18.142328, 20.614786>,  <14.735761, 18.855862, 20.405293>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.397935, 18.142328, 20.614786> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.015476, 18.103558, 20.725342>,  <13.786001, 18.080296, 20.791676>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.015476, 18.103558, 20.725342>,  <14.397935, 18.142328, 20.614786>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.015476, 18.103558, 20.725342> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212273, -0.420859, -0.881940,
		0.201805, -0.901933, 0.381827,
		-0.956146, -0.096929, 0.276387,
		13.728633, 18.074478, 20.808258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.237190, 17.525711, 20.385288>,  <14.397935, 18.142328, 20.614786>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.237190, 17.525711, 20.385288> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.880980, 17.701086, 20.433842>,  <13.667253, 17.806311, 20.462975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.880980, 17.701086, 20.433842>,  <14.237190, 17.525711, 20.385288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.880980, 17.701086, 20.433842> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302935, -0.372436, -0.877224,
		-0.339399, -0.817963, 0.464483,
		-0.890527, 0.438437, 0.121385,
		13.613821, 17.832617, 20.470257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.816774, 17.014515, 20.043703>,  <14.237190, 17.525711, 20.385288>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.816774, 17.014515, 20.043703> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.646057, 17.375719, 20.063383>,  <13.543627, 17.592442, 20.075191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.646057, 17.375719, 20.063383>,  <13.816774, 17.014515, 20.043703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.646057, 17.375719, 20.063383> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442908, -0.161279, -0.881942,
		-0.788467, -0.398198, 0.468783,
		-0.426793, 0.903010, 0.049202,
		13.518020, 17.646622, 20.078144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.055608, 16.858347, 20.025970>,  <13.816774, 17.014515, 20.043703>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.055608, 16.858347, 20.025970> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.127896, 17.235222, 19.913103>,  <13.171269, 17.461348, 19.845383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.127896, 17.235222, 19.913103>,  <13.055608, 16.858347, 20.025970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.127896, 17.235222, 19.913103> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533467, -0.147121, -0.832927,
		-0.826288, 0.301056, 0.476039,
		0.180722, 0.942189, -0.282168,
		13.182113, 17.517879, 19.828453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.420974, 17.041473, 19.757803>,  <13.055608, 16.858347, 20.025970>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.420974, 17.041473, 19.757803> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.685108, 17.312679, 19.628653>,  <12.843589, 17.475403, 19.551163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.685108, 17.312679, 19.628653>,  <12.420974, 17.041473, 19.757803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.685108, 17.312679, 19.628653> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484783, 0.056504, -0.872807,
		-0.573533, 0.732873, 0.366001,
		0.660337, 0.678015, -0.322877,
		12.883209, 17.516085, 19.531790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.016848, 17.492676, 19.349939>,  <12.420974, 17.041473, 19.757803>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.016848, 17.492676, 19.349939> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.392466, 17.556692, 19.228230>,  <12.617836, 17.595102, 19.155205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.392466, 17.556692, 19.228230>,  <12.016848, 17.492676, 19.349939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.392466, 17.556692, 19.228230> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299976, -0.050949, -0.952585,
		-0.167956, 0.985795, 0.000166,
		0.939045, 0.160042, -0.304272,
		12.674179, 17.604704, 19.136948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.953234, 18.076447, 18.841776>,  <12.016848, 17.492676, 19.349939>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.953234, 18.076447, 18.841776> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.286535, 17.862265, 18.786673>,  <12.486516, 17.733755, 18.753611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.286535, 17.862265, 18.786673>,  <11.953234, 18.076447, 18.841776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.286535, 17.862265, 18.786673> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221118, -0.094365, -0.970671,
		0.506749, 0.839277, -0.197028,
		0.833254, -0.535453, -0.137759,
		12.536511, 17.701630, 18.745344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.339840, 18.464552, 18.301914>,  <11.953234, 18.076447, 18.841776>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.339840, 18.464552, 18.301914> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.444319, 18.078438, 18.301680>,  <12.507006, 17.846769, 18.301538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.444319, 18.078438, 18.301680>,  <12.339840, 18.464552, 18.301914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.444319, 18.078438, 18.301680> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221819, -0.059429, -0.973275,
		0.939454, 0.254346, -0.229641,
		0.261196, -0.965285, -0.000588,
		12.522677, 17.788853, 18.301502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.858068, 18.304668, 17.792463>,  <12.339840, 18.464552, 18.301914>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.858068, 18.304668, 17.792463> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.694385, 17.944645, 17.852386>,  <12.596174, 17.728632, 17.888340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.694385, 17.944645, 17.852386>,  <12.858068, 18.304668, 17.792463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.694385, 17.944645, 17.852386> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186309, -0.078305, -0.979366,
		0.893216, -0.428678, -0.135645,
		-0.409211, -0.900058, 0.149810,
		12.571621, 17.674627, 17.897329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.146751, 17.787579, 17.276423>,  <12.858068, 18.304668, 17.792463>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.146751, 17.787579, 17.276423> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.793076, 17.658222, 17.411257>,  <12.580870, 17.580608, 17.492157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.793076, 17.658222, 17.411257>,  <13.146751, 17.787579, 17.276423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.793076, 17.658222, 17.411257> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312158, -0.127792, -0.941396,
		0.347515, -0.937597, 0.012044,
		-0.884189, -0.323390, 0.337088,
		12.527819, 17.561205, 17.512383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.875935, 17.671001, 16.499346>,  <13.146751, 17.787579, 17.276423>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.875935, 17.671001, 16.499346> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.944784, 17.399693, 16.785091>,  <12.986094, 17.236906, 16.956539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.944784, 17.399693, 16.785091>,  <12.875935, 17.671001, 16.499346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.944784, 17.399693, 16.785091> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140548, 0.734678, 0.663697,
		-0.974997, -0.013836, 0.221786,
		0.172124, -0.678274, 0.714365,
		12.996422, 17.196211, 16.999401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.627088, 17.796804, 15.871576>,  <12.875935, 17.671001, 16.499346>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.627088, 17.796804, 15.871576> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.019481, 17.724634, 15.842957>,  <13.254916, 17.681332, 15.825785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.019481, 17.724634, 15.842957>,  <12.627088, 17.796804, 15.871576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.019481, 17.724634, 15.842957> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142459, -0.418929, -0.896774,
		0.131827, 0.889913, -0.436665,
		0.980983, -0.180426, -0.071550,
		13.313776, 17.670507, 15.821491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<13.478926, 19.732830, 26.099684> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.562675, 19.352589, 26.191353>,  <13.612926, 19.124445, 26.246353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.562675, 19.352589, 26.191353>,  <13.478926, 19.732830, 26.099684>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.562675, 19.352589, 26.191353> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012329, -0.231781, -0.972690,
		0.977758, 0.206482, -0.036809,
		0.209375, -0.950601, 0.229171,
		13.625488, 19.067408, 26.260103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.767280, 19.604101, 25.551363>,  <13.478926, 19.732830, 26.099684>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.767280, 19.604101, 25.551363> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.734804, 19.241550, 25.717199>,  <13.715319, 19.024019, 25.816702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.734804, 19.241550, 25.717199>,  <13.767280, 19.604101, 25.551363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.734804, 19.241550, 25.717199> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160376, -0.422425, -0.892097,
		0.983711, -0.005937, 0.179657,
		-0.081188, -0.906379, 0.414592,
		13.710447, 18.969637, 25.841578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.257785, 19.204727, 25.152508>,  <13.767280, 19.604101, 25.551363>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.257785, 19.204727, 25.152508> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.027524, 18.911711, 25.297838>,  <13.889367, 18.735901, 25.385036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.027524, 18.911711, 25.297838>,  <14.257785, 19.204727, 25.152508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.027524, 18.911711, 25.297838> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155564, -0.534324, -0.830841,
		0.802760, -0.421756, 0.421543,
		-0.575652, -0.732543, 0.363324,
		13.854828, 18.691948, 25.406836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.574990, 18.570606, 24.950420>,  <14.257785, 19.204727, 25.152508>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.574990, 18.570606, 24.950420> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.208764, 18.448627, 25.055300>,  <13.989028, 18.375441, 25.118227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.208764, 18.448627, 25.055300>,  <14.574990, 18.570606, 24.950420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.208764, 18.448627, 25.055300> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066559, -0.528073, -0.846587,
		0.396623, -0.792557, 0.463188,
		-0.915566, -0.304947, 0.262198,
		13.934094, 18.357143, 25.133959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.513689, 17.810904, 24.917250>,  <14.574990, 18.570606, 24.950420>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.513689, 17.810904, 24.917250> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.144855, 17.963699, 24.892462>,  <13.923553, 18.055376, 24.877590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.144855, 17.963699, 24.892462>,  <14.513689, 17.810904, 24.917250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.144855, 17.963699, 24.892462> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112497, -0.417813, -0.901541,
		-0.370265, -0.824330, 0.428233,
		-0.922089, 0.381984, -0.061967,
		13.868228, 18.078295, 24.873871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.066514, 17.232067, 24.693697>,  <14.513689, 17.810904, 24.917250>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.066514, 17.232067, 24.693697> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.878512, 17.569447, 24.589626>,  <13.765711, 17.771873, 24.527184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.878512, 17.569447, 24.589626>,  <14.066514, 17.232067, 24.693697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.878512, 17.569447, 24.589626> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078179, -0.333382, -0.939545,
		-0.879195, -0.421250, 0.222631,
		-0.470004, 0.843448, -0.260175,
		13.737511, 17.822481, 24.511574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.511999, 16.987713, 24.283442>,  <14.066514, 17.232067, 24.693697>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.511999, 16.987713, 24.283442> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.561403, 17.375725, 24.199739>,  <13.591046, 17.608532, 24.149519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.561403, 17.375725, 24.199739>,  <13.511999, 16.987713, 24.283442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.561403, 17.375725, 24.199739> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031591, -0.206920, -0.977848,
		-0.991840, 0.127386, 0.005088,
		0.123511, 0.970029, -0.209255,
		13.598456, 17.666733, 24.136963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.073479, 17.108030, 23.759825>,  <13.511999, 16.987713, 24.283442>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.073479, 17.108030, 23.759825> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.343975, 17.402473, 23.748196>,  <13.506273, 17.579140, 23.741219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.343975, 17.402473, 23.748196>,  <13.073479, 17.108030, 23.759825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.343975, 17.402473, 23.748196> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021741, -0.019504, -0.999573,
		-0.736360, 0.676584, 0.002814,
		0.676241, 0.736107, -0.029071,
		13.546847, 17.623306, 23.739473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.830794, 17.487783, 23.135769>,  <13.073479, 17.108030, 23.759825>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.830794, 17.487783, 23.135769> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.177551, 17.679056, 23.192114>,  <13.385605, 17.793819, 23.225922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.177551, 17.679056, 23.192114>,  <12.830794, 17.487783, 23.135769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.177551, 17.679056, 23.192114> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040894, 0.349840, -0.935917,
		-0.496816, 0.805578, 0.322828,
		0.866892, 0.478180, 0.140863,
		13.437619, 17.822510, 23.234373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.721733, 18.204575, 22.988905>,  <12.830794, 17.487783, 23.135769>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.721733, 18.204575, 22.988905> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.104727, 18.100159, 22.939785>,  <13.334523, 18.037508, 22.910313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.104727, 18.100159, 22.939785>,  <12.721733, 18.204575, 22.988905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.104727, 18.100159, 22.939785> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020942, 0.361650, -0.932078,
		0.287721, 0.895023, 0.340808,
		0.957485, -0.261041, -0.122798,
		13.391973, 18.021847, 22.902945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.030163, 18.718788, 22.587290>,  <12.721733, 18.204575, 22.988905>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.030163, 18.718788, 22.587290> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.274991, 18.406950, 22.534225>,  <13.421887, 18.219847, 22.502386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.274991, 18.406950, 22.534225>,  <13.030163, 18.718788, 22.587290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.274991, 18.406950, 22.534225> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097930, 0.241186, -0.965525,
		0.784717, 0.577977, 0.223968,
		0.612070, -0.779597, -0.132661,
		13.458611, 18.173071, 22.494427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.475419, 18.980627, 22.169588>,  <13.030163, 18.718788, 22.587290>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.475419, 18.980627, 22.169588> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.551324, 18.590712, 22.122631>,  <13.596867, 18.356762, 22.094458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.551324, 18.590712, 22.122631>,  <13.475419, 18.980627, 22.169588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.551324, 18.590712, 22.122631> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020512, 0.123473, -0.992136,
		0.981616, 0.185863, 0.043426,
		0.189763, -0.974787, -0.117391,
		13.608253, 18.298275, 22.087414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.853688, 18.970284, 21.543812>,  <13.475419, 18.980627, 22.169588>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.853688, 18.970284, 21.543812> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.753908, 18.586983, 21.599710>,  <13.694040, 18.357002, 21.633249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.753908, 18.586983, 21.599710>,  <13.853688, 18.970284, 21.543812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.753908, 18.586983, 21.599710> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130346, -0.109772, -0.985373,
		0.959575, -0.264017, -0.097522,
		-0.249450, -0.958251, 0.139748,
		13.679073, 18.299507, 21.641634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.339992, 18.618610, 21.231199>,  <13.853688, 18.970284, 21.543812>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.339992, 18.618610, 21.231199> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.994692, 18.417370, 21.247650>,  <13.787512, 18.296625, 21.257521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.994692, 18.417370, 21.247650>,  <14.339992, 18.618610, 21.231199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.994692, 18.417370, 21.247650> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011852, -0.101658, -0.994749,
		0.504639, -0.858229, 0.093719,
		-0.863249, -0.503100, 0.041128,
		13.735717, 18.266439, 21.259989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.117090, 18.824810, 21.140587>,  <14.339992, 18.618610, 21.231199>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.117090, 18.824810, 21.140587> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.197933, 19.170874, 20.957001>,  <15.246439, 19.378511, 20.846849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.197933, 19.170874, 20.957001>,  <15.117090, 18.824810, 21.140587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.197933, 19.170874, 20.957001> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132966, 0.488538, 0.862352,
		0.970295, -0.113261, 0.213774,
		0.202108, 0.865160, -0.458966,
		15.258566, 19.430422, 20.819311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.550125, 19.113199, 21.537403>,  <15.117090, 18.824810, 21.140587>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.550125, 19.113199, 21.537403> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.443510, 19.451902, 21.353249>,  <15.379541, 19.655125, 21.242756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.443510, 19.451902, 21.353249>,  <15.550125, 19.113199, 21.537403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.443510, 19.451902, 21.353249> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166595, 0.430002, 0.887325,
		0.949318, 0.313203, 0.026454,
		-0.266537, 0.846760, -0.460386,
		15.363549, 19.705931, 21.215134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.897717, 19.659018, 21.832075>,  <15.550125, 19.113199, 21.537403>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.897717, 19.659018, 21.832075> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.571812, 19.825899, 21.671030>,  <15.376268, 19.926029, 21.574402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.571812, 19.825899, 21.671030>,  <15.897717, 19.659018, 21.832075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.571812, 19.825899, 21.671030> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137607, 0.535420, 0.833300,
		0.563226, 0.734346, -0.378831,
		-0.814764, 0.417206, -0.402614,
		15.327382, 19.951061, 21.550245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.901868, 20.327433, 22.001301>,  <15.897717, 19.659018, 21.832075>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.901868, 20.327433, 22.001301> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.520055, 20.245604, 21.914568>,  <15.290967, 20.196507, 21.862528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.520055, 20.245604, 21.914568>,  <15.901868, 20.327433, 22.001301>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.520055, 20.245604, 21.914568> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285739, 0.420558, 0.861095,
		-0.084965, 0.883901, -0.459891,
		-0.954534, -0.204571, -0.216832,
		15.233695, 20.184233, 21.849518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.658550, 21.045645, 21.913036>,  <15.901868, 20.327433, 22.001301>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.658550, 21.045645, 21.913036> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.360533, 20.795033, 22.004574>,  <15.181723, 20.644665, 22.059496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.360533, 20.795033, 22.004574>,  <15.658550, 21.045645, 21.913036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.360533, 20.795033, 22.004574> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141995, 0.484201, 0.863358,
		-0.651726, 0.610745, -0.449715,
		-0.745044, -0.626530, 0.228844,
		15.137019, 20.607073, 22.073227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.350475, 21.514578, 22.339449>,  <15.658550, 21.045645, 21.913036>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.350475, 21.514578, 22.339449> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.178185, 21.159622, 22.405197>,  <15.074812, 20.946650, 22.444647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.178185, 21.159622, 22.405197>,  <15.350475, 21.514578, 22.339449>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.178185, 21.159622, 22.405197> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161757, 0.255093, 0.953290,
		-0.887869, 0.384018, -0.253416,
		-0.430725, -0.887388, 0.164371,
		15.048968, 20.893406, 22.454508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.787706, 21.710674, 22.683558>,  <15.350475, 21.514578, 22.339449>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.787706, 21.710674, 22.683558> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.841926, 21.322783, 22.764801>,  <14.874457, 21.090048, 22.813547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.841926, 21.322783, 22.764801>,  <14.787706, 21.710674, 22.683558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.841926, 21.322783, 22.764801> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112157, 0.188666, 0.975616,
		-0.984402, -0.155022, -0.083189,
		0.135547, -0.969728, 0.203110,
		14.882589, 21.031864, 22.825733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.202077, 21.390862, 23.142088>,  <14.787706, 21.710674, 22.683558>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.202077, 21.390862, 23.142088> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.530619, 21.168762, 23.194357>,  <14.727744, 21.035503, 23.225718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.530619, 21.168762, 23.194357>,  <14.202077, 21.390862, 23.142088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.530619, 21.168762, 23.194357> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150390, 0.010186, 0.988574,
		-0.550236, -0.831622, -0.075137,
		0.821355, -0.555249, 0.130672,
		14.777025, 21.002188, 23.233559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.025539, 20.938940, 23.693029>,  <14.202077, 21.390862, 23.142088>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.025539, 20.938940, 23.693029> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.424869, 20.916578, 23.699068>,  <14.664466, 20.903162, 23.702692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.424869, 20.916578, 23.699068>,  <14.025539, 20.938940, 23.693029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.424869, 20.916578, 23.699068> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013904, 0.021654, 0.999669,
		-0.056217, -0.998201, 0.020840,
		0.998322, -0.055909, 0.015097,
		14.724365, 20.899807, 23.703596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.170511, 20.542027, 24.253761>,  <14.025539, 20.938940, 23.693029>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.170511, 20.542027, 24.253761> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.503232, 20.745260, 24.164356>,  <14.702865, 20.867201, 24.110714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.503232, 20.745260, 24.164356>,  <14.170511, 20.542027, 24.253761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.503232, 20.745260, 24.164356> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191576, 0.115148, 0.974700,
		0.520965, -0.853577, -0.001556,
		0.831802, 0.508083, -0.223513,
		14.752772, 20.897684, 24.097301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.601857, 20.318085, 24.695105>,  <14.170511, 20.542027, 24.253761>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.601857, 20.318085, 24.695105> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.762853, 20.664585, 24.576708>,  <14.859450, 20.872486, 24.505671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.762853, 20.664585, 24.576708>,  <14.601857, 20.318085, 24.695105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.762853, 20.664585, 24.576708> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156619, 0.253407, 0.954597,
		0.901928, -0.430572, -0.033678,
		0.402489, 0.866252, -0.295990,
		14.883599, 20.924461, 24.487911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.209060, 20.354750, 24.927351>,  <14.601857, 20.318085, 24.695105>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.209060, 20.354750, 24.927351> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.128582, 20.738894, 24.850170>,  <15.080296, 20.969379, 24.803862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.128582, 20.738894, 24.850170>,  <15.209060, 20.354750, 24.927351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.128582, 20.738894, 24.850170> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264286, 0.242895, 0.933357,
		0.943225, 0.136792, -0.302679,
		-0.201195, 0.960359, -0.192952,
		15.068223, 21.027000, 24.792284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.634933, 20.628828, 25.369368>,  <15.209060, 20.354750, 24.927351>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.634933, 20.628828, 25.369368> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.381188, 20.918875, 25.262192>,  <15.228942, 21.092903, 25.197886>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.381188, 20.918875, 25.262192>,  <15.634933, 20.628828, 25.369368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.381188, 20.918875, 25.262192> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005717, 0.342197, 0.939611,
		0.773015, 0.597585, -0.212931,
		-0.634361, 0.725116, -0.267940,
		15.190880, 21.136410, 25.181810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.950109, 21.204035, 25.474039>,  <15.634933, 20.628828, 25.369368>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.950109, 21.204035, 25.474039> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.562947, 21.302727, 25.493158>,  <15.330650, 21.361942, 25.504629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.562947, 21.302727, 25.493158>,  <15.950109, 21.204035, 25.474039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.562947, 21.302727, 25.493158> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088611, 0.157061, 0.983606,
		0.235179, 0.956272, -0.173883,
		-0.967904, 0.246731, 0.047798,
		15.272576, 21.376745, 25.507498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<11.034148, 23.338087, 23.523262> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.220166, 23.011137, 23.659281>,  <11.331777, 22.814966, 23.740892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.220166, 23.011137, 23.659281>,  <11.034148, 23.338087, 23.523262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.220166, 23.011137, 23.659281> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051377, -0.358542, -0.932099,
		0.883795, 0.450938, -0.124744,
		0.465045, -0.817375, 0.340045,
		11.359680, 22.765924, 23.761293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.565801, 23.222221, 23.088844>,  <11.034148, 23.338087, 23.523262>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.565801, 23.222221, 23.088844> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.548742, 22.864315, 23.266644>,  <11.538507, 22.649572, 23.373323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.548742, 22.864315, 23.266644>,  <11.565801, 23.222221, 23.088844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.548742, 22.864315, 23.266644> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173360, -0.444782, -0.878701,
		0.983935, 0.039585, 0.174084,
		-0.042646, -0.894764, 0.444499,
		11.535949, 22.595886, 23.399994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.227902, 22.796787, 22.893637>,  <11.565801, 23.222221, 23.088844>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.227902, 22.796787, 22.893637> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.952112, 22.531868, 23.010929>,  <11.786638, 22.372915, 23.081305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.952112, 22.531868, 23.010929>,  <12.227902, 22.796787, 22.893637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.952112, 22.531868, 23.010929> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043384, -0.441876, -0.896026,
		0.723009, -0.605066, 0.333396,
		-0.689475, -0.662300, 0.293231,
		11.745270, 22.333178, 23.098898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.482846, 22.209919, 22.765301>,  <12.227902, 22.796787, 22.893637>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.482846, 22.209919, 22.765301> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.093596, 22.117958, 22.770519>,  <11.860045, 22.062782, 22.773649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.093596, 22.117958, 22.770519>,  <12.482846, 22.209919, 22.765301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.093596, 22.117958, 22.770519> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099460, -0.470741, -0.876648,
		0.207683, -0.851792, 0.480956,
		-0.973127, -0.229900, 0.013045,
		11.801658, 22.048988, 22.774433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.523072, 21.554461, 22.618624>,  <12.482846, 22.209919, 22.765301>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.523072, 21.554461, 22.618624> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.152967, 21.672009, 22.522682>,  <11.930904, 21.742538, 22.465117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.152967, 21.672009, 22.522682>,  <12.523072, 21.554461, 22.618624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.152967, 21.672009, 22.522682> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032189, -0.569207, -0.821564,
		-0.377962, -0.767882, 0.517206,
		-0.925261, 0.293871, -0.239856,
		11.875389, 21.760170, 22.450726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.226472, 20.995832, 22.348486>,  <12.523072, 21.554461, 22.618624>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.226472, 20.995832, 22.348486> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.995582, 21.296595, 22.221083>,  <11.857047, 21.477053, 22.144642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.995582, 21.296595, 22.221083>,  <12.226472, 20.995832, 22.348486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.995582, 21.296595, 22.221083> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053798, -0.424217, -0.903962,
		-0.814810, -0.504655, 0.285320,
		-0.577226, 0.751907, -0.318507,
		11.822413, 21.522167, 22.125530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.709506, 20.662058, 22.018833>,  <12.226472, 20.995832, 22.348486>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.709506, 20.662058, 22.018833> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.693023, 21.032869, 21.869743>,  <11.683133, 21.255356, 21.780289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.693023, 21.032869, 21.869743>,  <11.709506, 20.662058, 22.018833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.693023, 21.032869, 21.869743> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210932, -0.372705, -0.903659,
		-0.976632, 0.041382, 0.210898,
		-0.041208, 0.927027, -0.372724,
		11.680660, 21.310978, 21.757927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.065098, 20.709545, 21.552485>,  <11.709506, 20.662058, 22.018833>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.065098, 20.709545, 21.552485> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.308413, 21.008221, 21.444822>,  <11.454401, 21.187426, 21.380226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.308413, 21.008221, 21.444822>,  <11.065098, 20.709545, 21.552485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.308413, 21.008221, 21.444822> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109098, -0.257231, -0.960172,
		-0.786184, 0.613424, -0.075008,
		0.608286, 0.746688, -0.269154,
		11.490898, 21.232227, 21.364077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.780026, 20.975143, 20.994370>,  <11.065098, 20.709545, 21.552485>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.780026, 20.975143, 20.994370> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.141648, 21.133446, 20.929794>,  <11.358622, 21.228428, 20.891048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.141648, 21.133446, 20.929794>,  <10.780026, 20.975143, 20.994370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.141648, 21.133446, 20.929794> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167449, -0.019568, -0.985686,
		-0.393251, 0.918147, 0.048578,
		0.904055, 0.395756, -0.161438,
		11.412865, 21.252172, 20.881363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.709649, 21.611031, 20.569662>,  <10.780026, 20.975143, 20.994370>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.709649, 21.611031, 20.569662> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.073163, 21.449188, 20.528864>,  <11.291271, 21.352083, 20.504385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.073163, 21.449188, 20.528864>,  <10.709649, 21.611031, 20.569662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.073163, 21.449188, 20.528864> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023268, 0.194916, -0.980544,
		0.416615, 0.893477, 0.167723,
		0.908785, -0.404606, -0.101994,
		11.345798, 21.327806, 20.498266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.951557, 21.973215, 19.943171>,  <10.709649, 21.611031, 20.569662>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.951557, 21.973215, 19.943171> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.199816, 21.664431, 19.998129>,  <11.348771, 21.479160, 20.031103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.199816, 21.664431, 19.998129>,  <10.951557, 21.973215, 19.943171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.199816, 21.664431, 19.998129> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059028, -0.128729, -0.989922,
		0.781866, 0.622501, -0.034328,
		0.620646, -0.771960, 0.137394,
		11.386009, 21.432842, 20.039347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.427432, 22.059738, 19.410852>,  <10.951557, 21.973215, 19.943171>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.427432, 22.059738, 19.410852> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.477279, 21.675291, 19.509417>,  <11.507187, 21.444622, 19.568556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.477279, 21.675291, 19.509417>,  <11.427432, 22.059738, 19.410852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.477279, 21.675291, 19.509417> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268848, -0.206349, -0.940819,
		0.955087, 0.183489, 0.232680,
		0.124617, -0.961120, 0.246412,
		11.514664, 21.386955, 19.583340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.039248, 21.863115, 19.130842>,  <11.427432, 22.059738, 19.410852>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.039248, 21.863115, 19.130842> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.839148, 21.519718, 19.175999>,  <11.719088, 21.313681, 19.203093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.839148, 21.519718, 19.175999>,  <12.039248, 21.863115, 19.130842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.839148, 21.519718, 19.175999> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169874, -0.225148, -0.959401,
		0.849055, -0.460762, 0.258466,
		-0.500249, -0.858491, 0.112892,
		11.689073, 21.262171, 19.209866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.532079, 21.353321, 18.907810>,  <12.039248, 21.863115, 19.130842>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.532079, 21.353321, 18.907810> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.173834, 21.176039, 18.892593>,  <11.958887, 21.069670, 18.883463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.173834, 21.176039, 18.892593>,  <12.532079, 21.353321, 18.907810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.173834, 21.176039, 18.892593> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137701, -0.194913, -0.971106,
		0.422984, -0.874974, 0.235596,
		-0.895613, -0.443205, -0.038040,
		11.905149, 21.043077, 18.881182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.175379, 21.249783, 18.764277>,  <12.532079, 21.353321, 18.907810>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.175379, 21.249783, 18.764277> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.521823, 21.426260, 18.670296>,  <13.729690, 21.532146, 18.613907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.521823, 21.426260, 18.670296>,  <13.175379, 21.249783, 18.764277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.521823, 21.426260, 18.670296> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139478, 0.238055, 0.961184,
		0.480001, -0.865261, 0.144645,
		0.866109, 0.441195, -0.234951,
		13.781655, 21.558619, 18.599810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.632987, 20.999590, 19.177694>,  <13.175379, 21.249783, 18.764277>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.632987, 20.999590, 19.177694> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.801364, 21.346685, 19.071987>,  <13.902390, 21.554943, 19.008562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.801364, 21.346685, 19.071987>,  <13.632987, 20.999590, 19.177694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.801364, 21.346685, 19.071987> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092471, 0.248770, 0.964138,
		0.902362, -0.430284, 0.024478,
		0.420942, 0.867738, -0.264269,
		13.927647, 21.607006, 18.992706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.024265, 21.042400, 19.779118>,  <13.632987, 20.999590, 19.177694>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.024265, 21.042400, 19.779118> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.066008, 21.394941, 19.594803>,  <14.091053, 21.606466, 19.484215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.066008, 21.394941, 19.594803>,  <14.024265, 21.042400, 19.779118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.066008, 21.394941, 19.594803> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266138, 0.421671, 0.866812,
		0.958269, -0.213090, -0.190558,
		0.104357, 0.881355, -0.460786,
		14.097315, 21.659348, 19.456568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.654658, 21.452322, 19.941153>,  <14.024265, 21.042400, 19.779118>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.654658, 21.452322, 19.941153> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.352346, 21.693193, 19.838255>,  <14.170959, 21.837717, 19.776516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.352346, 21.693193, 19.838255>,  <14.654658, 21.452322, 19.941153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.352346, 21.693193, 19.838255> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199083, 0.585551, 0.785809,
		0.623828, 0.542686, -0.562432,
		-0.755780, 0.602181, -0.257244,
		14.125612, 21.873848, 19.761082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.024825, 22.129532, 19.938406>,  <14.654658, 21.452322, 19.941153>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.024825, 22.129532, 19.938406> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.629220, 22.185621, 19.957129>,  <14.391857, 22.219275, 19.968361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.629220, 22.185621, 19.957129>,  <15.024825, 22.129532, 19.938406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.629220, 22.185621, 19.957129> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111459, 0.499348, 0.859202,
		0.097107, 0.854979, -0.509491,
		-0.989013, 0.140222, 0.046805,
		14.332516, 22.227688, 19.971170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.943827, 22.839863, 20.064415>,  <15.024825, 22.129532, 19.938406>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.943827, 22.839863, 20.064415> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.599757, 22.675833, 20.185701>,  <14.393315, 22.577415, 20.258474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.599757, 22.675833, 20.185701>,  <14.943827, 22.839863, 20.064415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.599757, 22.675833, 20.185701> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097306, 0.715582, 0.691719,
		-0.500632, 0.565493, -0.655427,
		-0.860174, -0.410074, 0.303217,
		14.341705, 22.552811, 20.276667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.562301, 23.387375, 20.196440>,  <14.943827, 22.839863, 20.064415>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.562301, 23.387375, 20.196440> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.354157, 23.091095, 20.366425>,  <14.229271, 22.913328, 20.468416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.354157, 23.091095, 20.366425>,  <14.562301, 23.387375, 20.196440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.354157, 23.091095, 20.366425> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092327, 0.543527, 0.834298,
		-0.848942, 0.394899, -0.351215,
		-0.520359, -0.740698, 0.424964,
		14.198050, 22.868885, 20.493914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.923084, 23.652237, 20.395767>,  <14.562301, 23.387375, 20.196440>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.923084, 23.652237, 20.395767> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.986171, 23.326183, 20.618723>,  <14.024023, 23.130550, 20.752497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.986171, 23.326183, 20.618723>,  <13.923084, 23.652237, 20.395767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.986171, 23.326183, 20.618723> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135902, 0.541165, 0.829862,
		-0.978088, -0.206634, -0.025428,
		0.157717, -0.815134, 0.557388,
		14.033486, 23.081644, 20.785940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.290387, 23.638605, 20.857513>,  <13.923084, 23.652237, 20.395767>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.290387, 23.638605, 20.857513> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.589475, 23.433865, 21.026712>,  <13.768928, 23.311020, 21.128231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.589475, 23.433865, 21.026712>,  <13.290387, 23.638605, 20.857513>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.589475, 23.433865, 21.026712> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134122, 0.507477, 0.851163,
		-0.650329, -0.693164, 0.310799,
		0.747719, -0.511851, 0.422995,
		13.813790, 23.280310, 21.153610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.005559, 23.433319, 21.568951>,  <13.290387, 23.638605, 20.857513>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.005559, 23.433319, 21.568951> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.404586, 23.409386, 21.583265>,  <13.644002, 23.395025, 21.591854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.404586, 23.409386, 21.583265>,  <13.005559, 23.433319, 21.568951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.404586, 23.409386, 21.583265> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015586, 0.308928, 0.950958,
		-0.067954, -0.949202, 0.307244,
		0.997567, -0.059833, 0.035788,
		13.703856, 23.391436, 21.594002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.156598, 22.970144, 22.214310>,  <13.005559, 23.433319, 21.568951>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.156598, 22.970144, 22.214310> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.460244, 23.214178, 22.123503>,  <13.642432, 23.360600, 22.069017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.460244, 23.214178, 22.123503>,  <13.156598, 22.970144, 22.214310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.460244, 23.214178, 22.123503> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058562, 0.411339, 0.909599,
		0.648317, -0.677196, 0.347982,
		0.759115, 0.610087, -0.227020,
		13.687979, 23.397203, 22.055397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.635554, 22.871510, 22.831268>,  <13.156598, 22.970144, 22.214310>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.635554, 22.871510, 22.831268> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.760694, 23.205694, 22.650543>,  <13.835777, 23.406204, 22.542109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.760694, 23.205694, 22.650543>,  <13.635554, 22.871510, 22.831268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.760694, 23.205694, 22.650543> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113730, 0.439315, 0.891105,
		0.942970, -0.330164, 0.042422,
		0.312847, 0.835460, -0.451811,
		13.854548, 23.456333, 22.514999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.321388, 23.012083, 23.119211>,  <13.635554, 22.871510, 22.831268>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.321388, 23.012083, 23.119211> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.144919, 23.339947, 22.973047>,  <14.039038, 23.536665, 22.885349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.144919, 23.339947, 22.973047>,  <14.321388, 23.012083, 23.119211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.144919, 23.339947, 22.973047> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059225, 0.432882, 0.899503,
		0.895466, 0.375194, -0.239520,
		-0.441172, 0.819660, -0.365411,
		14.012568, 23.585844, 22.863424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.715204, 23.458012, 23.368694>,  <14.321388, 23.012083, 23.119211>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.715204, 23.458012, 23.368694> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.398602, 23.681417, 23.269434>,  <14.208641, 23.815462, 23.209877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.398602, 23.681417, 23.269434>,  <14.715204, 23.458012, 23.368694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.398602, 23.681417, 23.269434> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008413, 0.415950, 0.909349,
		0.611105, 0.717666, -0.333925,
		-0.791505, 0.558517, -0.248152,
		14.161151, 23.848972, 23.194988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.429204, 23.645401, 23.006712>,  <14.715204, 23.458012, 23.368694>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.429204, 23.645401, 23.006712> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.792949, 23.525394, 23.121988>,  <16.011196, 23.453390, 23.191154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.792949, 23.525394, 23.121988>,  <15.429204, 23.645401, 23.006712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.792949, 23.525394, 23.121988> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056161, -0.597875, -0.799619,
		0.412199, 0.743328, -0.526835,
		0.909361, -0.300015, 0.288190,
		16.065758, 23.435390, 23.208445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.874914, 23.907352, 22.518456>,  <15.429204, 23.645401, 23.006712>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.874914, 23.907352, 22.518456> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.062021, 23.601103, 22.695097>,  <16.174286, 23.417353, 22.801083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.062021, 23.601103, 22.695097>,  <15.874914, 23.907352, 22.518456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.062021, 23.601103, 22.695097> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121391, -0.439251, -0.890125,
		0.875476, 0.469979, -0.112528,
		0.467768, -0.765623, 0.441605,
		16.202353, 23.371416, 22.827578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.480402, 23.871042, 22.197365>,  <15.874914, 23.907352, 22.518456>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.480402, 23.871042, 22.197365> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.431784, 23.497341, 22.331467>,  <16.402613, 23.273121, 22.411928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.431784, 23.497341, 22.331467>,  <16.480402, 23.871042, 22.197365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.431784, 23.497341, 22.331467> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064705, -0.344498, -0.936554,
		0.990474, -0.092142, 0.102323,
		-0.121546, -0.934254, 0.335255,
		16.395319, 23.217066, 22.432043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.029545, 23.558907, 21.872429>,  <16.480402, 23.871042, 22.197365>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.029545, 23.558907, 21.872429> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.750574, 23.296410, 21.987629>,  <16.583191, 23.138912, 22.056749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.750574, 23.296410, 21.987629>,  <17.029545, 23.558907, 21.872429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.750574, 23.296410, 21.987629> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088467, -0.319954, -0.943294,
		0.711174, -0.683357, 0.165089,
		-0.697427, -0.656241, 0.287998,
		16.541346, 23.099537, 22.074028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.276567, 22.975969, 21.619253>,  <17.029545, 23.558907, 21.872429>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.276567, 22.975969, 21.619253> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.894505, 22.863464, 21.656269>,  <16.665266, 22.795961, 21.678478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.894505, 22.863464, 21.656269>,  <17.276567, 22.975969, 21.619253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.894505, 22.863464, 21.656269> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038059, -0.426556, -0.903660,
		0.293641, -0.859616, 0.418133,
		-0.955158, -0.281265, 0.092538,
		16.607958, 22.779085, 21.684031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.357471, 22.322350, 21.364019>,  <17.276567, 22.975969, 21.619253>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.357471, 22.322350, 21.364019> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.969894, 22.417688, 21.337673>,  <16.737349, 22.474892, 21.321865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.969894, 22.417688, 21.337673>,  <17.357471, 22.322350, 21.364019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.969894, 22.417688, 21.337673> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024028, -0.174357, -0.984389,
		-0.246112, -0.955401, 0.163215,
		-0.968944, 0.238348, -0.065868,
		16.679211, 22.489193, 21.317913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.051601, 21.729849, 21.094574>,  <17.357471, 22.322350, 21.364019>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.051601, 21.729849, 21.094574> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.808584, 22.041580, 21.033199>,  <16.662773, 22.228619, 20.996374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.808584, 22.041580, 21.033199>,  <17.051601, 21.729849, 21.094574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.808584, 22.041580, 21.033199> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184429, -0.049482, -0.981599,
		-0.772578, -0.624662, -0.113668,
		-0.607543, 0.779326, -0.153435,
		16.626322, 22.275377, 20.987169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.711218, 21.534533, 20.496855>,  <17.051601, 21.729849, 21.094574>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.711218, 21.534533, 20.496855> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.664288, 21.931067, 20.520481>,  <16.636129, 22.168987, 20.534657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.664288, 21.931067, 20.520481>,  <16.711218, 21.534533, 20.496855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.664288, 21.931067, 20.520481> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221092, 0.084060, -0.971624,
		-0.968170, -0.100939, -0.229038,
		-0.117328, 0.991335, 0.059068,
		16.629089, 22.228468, 20.538202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.127737, 21.730846, 20.006197>,  <16.711218, 21.534533, 20.496855>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.127737, 21.730846, 20.006197> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.366129, 22.045111, 20.072588>,  <16.509163, 22.233669, 20.112423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.366129, 22.045111, 20.072588>,  <16.127737, 21.730846, 20.006197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.366129, 22.045111, 20.072588> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206719, 0.049621, -0.977141,
		-0.775936, 0.616666, -0.132838,
		0.595978, 0.785660, 0.165980,
		16.544922, 22.280809, 20.122381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.806591, 22.208620, 19.527945>,  <16.127737, 21.730846, 20.006197>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.806591, 22.208620, 19.527945> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.166948, 22.350149, 19.628504>,  <16.383163, 22.435066, 19.688839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.166948, 22.350149, 19.628504>,  <15.806591, 22.208620, 19.527945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.166948, 22.350149, 19.628504> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208888, 0.154279, -0.965693,
		-0.380472, 0.922500, 0.065079,
		0.900892, 0.353825, 0.251398,
		16.437216, 22.456297, 19.703922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.906722, 22.943272, 19.110506>,  <15.806591, 22.208620, 19.527945>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.906722, 22.943272, 19.110506> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.255136, 22.789291, 19.232561>,  <16.464186, 22.696903, 19.305794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.255136, 22.789291, 19.232561>,  <15.906722, 22.943272, 19.110506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.255136, 22.789291, 19.232561> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352194, 0.056382, -0.934227,
		0.342427, 0.921214, 0.184688,
		0.871036, -0.384950, 0.305139,
		16.516447, 22.673807, 19.324102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.300545, 23.243057, 18.555555>,  <15.906722, 22.943272, 19.110506>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.300545, 23.243057, 18.555555> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.499844, 22.932442, 18.709822>,  <16.619423, 22.746073, 18.802382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.499844, 22.932442, 18.709822>,  <16.300545, 23.243057, 18.555555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.499844, 22.932442, 18.709822> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352368, -0.225064, -0.908396,
		0.792202, 0.588504, 0.161489,
		0.498249, -0.776537, 0.385667,
		16.649319, 22.699480, 18.825521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.977764, 23.348291, 18.223877>,  <16.300545, 23.243057, 18.555555>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.977764, 23.348291, 18.223877> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.925537, 22.969234, 18.340446>,  <16.894201, 22.741800, 18.410387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.925537, 22.969234, 18.340446>,  <16.977764, 23.348291, 18.223877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.925537, 22.969234, 18.340446> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363871, -0.319230, -0.875037,
		0.922253, -0.008214, 0.386501,
		-0.130570, -0.947642, 0.291422,
		16.886366, 22.684942, 18.427874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.618414, 22.965834, 18.192814>,  <16.977764, 23.348291, 18.223877>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.618414, 22.965834, 18.192814> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.287575, 22.750498, 18.128195>,  <17.089071, 22.621296, 18.089424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.287575, 22.750498, 18.128195>,  <17.618414, 22.965834, 18.192814>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.287575, 22.750498, 18.128195> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350682, -0.269657, -0.896832,
		0.439239, -0.798420, 0.411819,
		-0.827098, -0.538341, -0.161548,
		17.039446, 22.588995, 18.079731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<14.033670, 9.392455, 16.660295> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.384460, 9.469202, 16.484068>,  <14.594934, 9.515250, 16.378330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.384460, 9.469202, 16.484068>,  <14.033670, 9.392455, 16.660295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.384460, 9.469202, 16.484068> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104476, 0.971029, 0.214914,
		0.469041, -0.142445, 0.871613,
		0.876975, 0.191866, -0.440570,
		14.647552, 9.526762, 16.351896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.456690, 9.798063, 17.091513>,  <14.033670, 9.392455, 16.660295>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.456690, 9.798063, 17.091513> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.587073, 9.878928, 16.722107>,  <14.665303, 9.927447, 16.500463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.587073, 9.878928, 16.722107>,  <14.456690, 9.798063, 17.091513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.587073, 9.878928, 16.722107> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150600, 0.975498, 0.160388,
		0.933312, 0.086801, 0.348418,
		0.325959, 0.202163, -0.923515,
		14.684861, 9.939577, 16.445053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.120363, 10.092994, 17.732443>,  <14.456690, 9.798063, 17.091513>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.120363, 10.092994, 17.732443> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.878056, 10.131096, 17.416475>,  <13.732671, 10.153957, 17.226894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.878056, 10.131096, 17.416475>,  <14.120363, 10.092994, 17.732443>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.878056, 10.131096, 17.416475> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794800, -0.118072, 0.595275,
		-0.036565, 0.988426, 0.147233,
		-0.605769, 0.095254, -0.789918,
		13.696324, 10.159672, 17.179501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.568654, 10.164686, 18.106657>,  <14.120363, 10.092994, 17.732443>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.568654, 10.164686, 18.106657> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.455407, 10.142139, 17.723686>,  <13.387459, 10.128612, 17.493904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.455407, 10.142139, 17.723686>,  <13.568654, 10.164686, 18.106657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.455407, 10.142139, 17.723686> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.932087, -0.219021, 0.288519,
		-0.225960, 0.974090, 0.009470,
		-0.283118, -0.056367, -0.957427,
		13.370472, 10.125229, 17.436459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.778835, 10.406645, 17.992228>,  <13.568654, 10.164686, 18.106657>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.778835, 10.406645, 17.992228> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.863793, 10.158812, 17.689968>,  <12.914768, 10.010112, 17.508612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.863793, 10.158812, 17.689968>,  <12.778835, 10.406645, 17.992228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.863793, 10.158812, 17.689968> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962397, -0.266647, -0.051875,
		-0.169351, 0.738251, -0.652921,
		0.212396, -0.619584, -0.755648,
		12.927512, 9.972937, 17.463274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.500248, 10.564300, 17.392813>,  <12.778835, 10.406645, 17.992228>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.500248, 10.564300, 17.392813> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.520634, 10.165518, 17.369196>,  <12.532865, 9.926249, 17.355026>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.520634, 10.165518, 17.369196>,  <12.500248, 10.564300, 17.392813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.520634, 10.165518, 17.369196> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.998594, -0.051731, 0.011548,
		-0.014567, 0.058370, -0.998189,
		0.050963, -0.996954, -0.059041,
		12.535923, 9.866431, 17.351484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.051382, 10.801303, 16.875425>,  <12.500248, 10.564300, 17.392813>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.051382, 10.801303, 16.875425> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.056183, 11.163711, 16.706198>,  <13.059063, 11.381155, 16.604662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.056183, 11.163711, 16.706198>,  <13.051382, 10.801303, 16.875425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.056183, 11.163711, 16.706198> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906077, -0.169105, -0.387850,
		-0.422942, 0.387987, 0.818893,
		0.012002, 0.906019, -0.423068,
		13.059783, 11.435516, 16.579277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.488245, 11.414301, 17.132589>,  <13.051382, 10.801303, 16.875425>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.488245, 11.414301, 17.132589> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.599658, 11.428050, 16.748665>,  <12.666506, 11.436299, 16.518311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.599658, 11.428050, 16.748665>,  <12.488245, 11.414301, 17.132589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.599658, 11.428050, 16.748665> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.929046, -0.243732, -0.278333,
		-0.243504, 0.969233, -0.035953,
		0.278532, 0.034373, -0.959812,
		12.683218, 11.438362, 16.460722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.945858, 11.288443, 16.611832>,  <12.488245, 11.414301, 17.132589>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.945858, 11.288443, 16.611832> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.179919, 11.327254, 16.289793>,  <12.320356, 11.350541, 16.096569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.179919, 11.327254, 16.289793>,  <11.945858, 11.288443, 16.611832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.179919, 11.327254, 16.289793> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810073, 0.024506, -0.585817,
		-0.037111, 0.994980, 0.092940,
		0.585154, 0.097029, -0.805096,
		12.355466, 11.356363, 16.048264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.851895, 11.918809, 16.169275>,  <11.945858, 11.288443, 16.611832>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.851895, 11.918809, 16.169275> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.973094, 11.602523, 15.956498>,  <12.045813, 11.412751, 15.828832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.973094, 11.602523, 15.956498>,  <11.851895, 11.918809, 16.169275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.973094, 11.602523, 15.956498> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795158, 0.097898, -0.598447,
		0.525278, 0.604305, -0.599081,
		0.302996, -0.790715, -0.531942,
		12.063993, 11.365308, 15.796915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.810520, 12.046062, 15.397460>,  <11.851895, 11.918809, 16.169275>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.810520, 12.046062, 15.397460> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.715737, 11.688506, 15.549679>,  <11.658868, 11.473973, 15.641010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.715737, 11.688506, 15.549679>,  <11.810520, 12.046062, 15.397460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.715737, 11.688506, 15.549679> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917961, 0.077742, -0.388978,
		0.318118, -0.441498, -0.838976,
		-0.236957, -0.893888, 0.380547,
		11.644650, 11.420340, 15.663843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.368520, 11.690945, 14.878951>,  <11.810520, 12.046062, 15.397460>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.368520, 11.690945, 14.878951> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.299981, 11.536919, 15.241689>,  <11.258858, 11.444503, 15.459332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.299981, 11.536919, 15.241689>,  <11.368520, 11.690945, 14.878951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.299981, 11.536919, 15.241689> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.984208, 0.108418, -0.139927,
		-0.044437, -0.916499, -0.397561,
		-0.171346, -0.385065, 0.906844,
		11.248577, 11.421399, 15.513741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.866479, 11.231107, 14.779322>,  <11.368520, 11.690945, 14.878951>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.866479, 11.231107, 14.779322> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.834251, 11.266457, 15.176451>,  <10.814915, 11.287666, 15.414728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.834251, 11.266457, 15.176451>,  <10.866479, 11.231107, 14.779322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.834251, 11.266457, 15.176451> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.995147, 0.049323, -0.085148,
		-0.056494, -0.994865, 0.083974,
		-0.080569, 0.088377, 0.992823,
		10.810081, 11.292970, 15.474298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.323206, 10.792224, 14.941341>,  <10.866479, 11.231107, 14.779322>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.323206, 10.792224, 14.941341> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.371491, 11.064507, 15.230358>,  <10.400462, 11.227876, 15.403769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.371491, 11.064507, 15.230358>,  <10.323206, 10.792224, 14.941341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.371491, 11.064507, 15.230358> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.983269, 0.182015, -0.007204,
		-0.136418, -0.709585, 0.691288,
		0.120713, 0.680705, 0.722543,
		10.407705, 11.268718, 15.447121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.708946, 10.594786, 15.305731>,  <10.323206, 10.792224, 14.941341>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.708946, 10.594786, 15.305731> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.817171, 10.963307, 15.417441>,  <9.882106, 11.184421, 15.484468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.817171, 10.963307, 15.417441>,  <9.708946, 10.594786, 15.305731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.817171, 10.963307, 15.417441> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.944918, 0.309646, -0.106058,
		-0.184189, -0.235198, 0.954336,
		0.270562, 0.921304, 0.279277,
		9.898339, 11.239698, 15.501225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.128956, 10.797506, 15.640687>,  <9.708946, 10.594786, 15.305731>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.128956, 10.797506, 15.640687> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.328044, 11.123815, 15.522842>,  <9.447496, 11.319599, 15.452136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.328044, 11.123815, 15.522842>,  <9.128956, 10.797506, 15.640687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.328044, 11.123815, 15.522842> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859846, 0.419535, -0.290954,
		-0.113752, 0.398134, 0.910247,
		0.497720, 0.815770, -0.294611,
		9.477360, 11.368546, 15.434459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.772346, 11.340796, 15.964739>,  <9.128956, 10.797506, 15.640687>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.772346, 11.340796, 15.964739> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.988353, 11.533962, 15.689006>,  <9.117956, 11.649861, 15.523566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.988353, 11.533962, 15.689006>,  <8.772346, 11.340796, 15.964739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.988353, 11.533962, 15.689006> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841523, 0.324363, -0.432005,
		0.014972, 0.813377, 0.581544,
		0.540015, 0.482915, -0.689331,
		9.150357, 11.678837, 15.482206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.726150, 12.037103, 16.081366>,  <8.772346, 11.340796, 15.964739>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.726150, 12.037103, 16.081366> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.824909, 12.010868, 15.694638>,  <8.884165, 11.995127, 15.462602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.824909, 12.010868, 15.694638>,  <8.726150, 12.037103, 16.081366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.824909, 12.010868, 15.694638> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849821, 0.464786, -0.248552,
		0.465666, 0.882990, 0.059018,
		0.246900, -0.065587, -0.966819,
		8.898979, 11.991192, 15.404593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.537725, 12.738397, 15.703171>,  <8.726150, 12.037103, 16.081366>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.537725, 12.738397, 15.703171> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.526092, 12.460585, 15.415620>,  <8.519112, 12.293898, 15.243090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.526092, 12.460585, 15.415620>,  <8.537725, 12.738397, 15.703171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.526092, 12.460585, 15.415620> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771612, 0.472781, -0.425551,
		0.635428, 0.542317, -0.549657,
		-0.029084, -0.694529, -0.718876,
		8.517366, 12.252226, 15.199957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.413489, 13.149923, 15.145448>,  <8.537725, 12.738397, 15.703171>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.413489, 13.149923, 15.145448> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.318301, 12.783817, 15.015427>,  <8.261189, 12.564154, 14.937414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.318301, 12.783817, 15.015427>,  <8.413489, 13.149923, 15.145448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.318301, 12.783817, 15.015427> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775091, 0.380635, -0.504332,
		0.585324, 0.131929, -0.799994,
		-0.237970, -0.915266, -0.325052,
		8.246910, 12.509237, 14.917911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.398707, 13.272676, 14.461047>,  <8.413489, 13.149923, 15.145448>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.398707, 13.272676, 14.461047> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.203571, 12.935461, 14.551644>,  <8.086490, 12.733132, 14.606003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.203571, 12.935461, 14.551644>,  <8.398707, 13.272676, 14.461047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.203571, 12.935461, 14.551644> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788507, 0.314246, -0.528684,
		0.374526, -0.436504, -0.818043,
		-0.487839, -0.843039, 0.226493,
		8.057220, 12.682549, 14.619593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.061357, 13.051068, 13.806330>,  <8.398707, 13.272676, 14.461047>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.061357, 13.051068, 13.806330> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.878103, 12.852205, 14.101068>,  <7.768150, 12.732887, 14.277912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.878103, 12.852205, 14.101068>,  <8.061357, 13.051068, 13.806330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.878103, 12.852205, 14.101068> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888796, 0.244762, -0.387470,
		0.012281, -0.832422, -0.554006,
		-0.458138, -0.497157, 0.736848,
		7.740662, 12.703058, 14.322123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.514273, 12.646949, 13.475120>,  <8.061357, 13.051068, 13.806330>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.514273, 12.646949, 13.475120> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.414570, 12.684731, 13.860647>,  <7.354748, 12.707399, 14.091964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.414570, 12.684731, 13.860647>,  <7.514273, 12.646949, 13.475120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.414570, 12.684731, 13.860647> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841654, 0.471177, -0.263839,
		-0.479051, -0.876966, -0.037946,
		-0.249257, 0.094455, 0.963820,
		7.339793, 12.713067, 14.149794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.830725, 12.509875, 13.456069>,  <7.514273, 12.646949, 13.475120>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.830725, 12.509875, 13.456069> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.856751, 12.687633, 13.813456>,  <6.872367, 12.794287, 14.027887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.856751, 12.687633, 13.813456>,  <6.830725, 12.509875, 13.456069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.856751, 12.687633, 13.813456> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656533, 0.693346, -0.297047,
		-0.751486, -0.567262, 0.336872,
		0.065065, 0.444394, 0.893466,
		6.876271, 12.820951, 14.081495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.194697, 12.824306, 13.565420>,  <6.830725, 12.509875, 13.456069>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.194697, 12.824306, 13.565420> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.369248, 12.994227, 13.882688>,  <6.473979, 13.096181, 14.073048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.369248, 12.994227, 13.882688>,  <6.194697, 12.824306, 13.565420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.369248, 12.994227, 13.882688> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677807, 0.734948, -0.020713,
		-0.591736, -0.528576, 0.608651,
		0.436379, 0.424804, 0.793168,
		6.500162, 13.121669, 14.120638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.578781, 13.084952, 14.048405>,  <6.194697, 12.824306, 13.565420>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.578781, 13.084952, 14.048405> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.913005, 13.295785, 14.110402>,  <6.113539, 13.422285, 14.147600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.913005, 13.295785, 14.110402>,  <5.578781, 13.084952, 14.048405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.913005, 13.295785, 14.110402> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528580, 0.848170, -0.034805,
		-0.149806, -0.052845, 0.987302,
		0.835561, 0.527082, 0.154994,
		6.163673, 13.453910, 14.156900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.367118, 13.656508, 14.421000>,  <5.578781, 13.084952, 14.048405>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.367118, 13.656508, 14.421000> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.719528, 13.789729, 14.286615>,  <5.930974, 13.869661, 14.205985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.719528, 13.789729, 14.286615>,  <5.367118, 13.656508, 14.421000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.719528, 13.789729, 14.286615> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414853, 0.885244, -0.210333,
		0.227355, 0.324683, 0.918091,
		0.881026, 0.333052, -0.335960,
		5.983836, 13.889645, 14.185827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.414203, 14.258463, 14.761602>,  <5.367118, 13.656508, 14.421000>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.414203, 14.258463, 14.761602> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.681675, 14.312430, 14.469120>,  <5.842159, 14.344811, 14.293631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.681675, 14.312430, 14.469120>,  <5.414203, 14.258463, 14.761602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.681675, 14.312430, 14.469120> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428647, 0.873489, -0.230821,
		0.607558, 0.467775, 0.641919,
		0.668682, 0.134920, -0.731205,
		5.882280, 14.352906, 14.249759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.700938, 14.929516, 14.929557>,  <5.414203, 14.258463, 14.761602>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.700938, 14.929516, 14.929557> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.763273, 14.856304, 14.541286>,  <5.800674, 14.812377, 14.308323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.763273, 14.856304, 14.541286>,  <5.700938, 14.929516, 14.929557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.763273, 14.856304, 14.541286> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277175, 0.935100, -0.220821,
		0.948097, 0.303460, 0.094993,
		0.155838, -0.183030, -0.970677,
		5.810025, 14.801395, 14.250082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.995686, 15.410174, 14.727960>,  <5.700938, 14.929516, 14.929557>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.995686, 15.410174, 14.727960> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.890976, 15.289507, 14.361251>,  <5.828151, 15.217106, 14.141226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.890976, 15.289507, 14.361251>,  <5.995686, 15.410174, 14.727960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.890976, 15.289507, 14.361251> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116751, 0.952817, -0.280194,
		0.958041, 0.033687, -0.284643,
		-0.261774, -0.301669, -0.916771,
		5.812445, 15.199006, 14.086219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.235773, 15.892759, 14.290064>,  <5.995686, 15.410174, 14.727960>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.235773, 15.892759, 14.290064> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.958025, 15.705936, 14.071082>,  <5.791376, 15.593843, 13.939692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.958025, 15.705936, 14.071082>,  <6.235773, 15.892759, 14.290064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.958025, 15.705936, 14.071082> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310178, 0.880713, -0.357957,
		0.649337, -0.078746, -0.756413,
		-0.694371, -0.467058, -0.547455,
		5.749713, 15.565819, 13.906846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.751992, 16.184376, 13.934743>,  <6.235773, 15.892759, 14.290064>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.751992, 16.184376, 13.934743> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.884330, 16.475056, 14.175557>,  <6.963733, 16.649464, 14.320045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.884330, 16.475056, 14.175557>,  <6.751992, 16.184376, 13.934743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.884330, 16.475056, 14.175557> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928207, -0.365666, -0.068706,
		0.170215, 0.581545, -0.795508,
		0.330845, 0.726701, 0.602036,
		6.983583, 16.693066, 14.356168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.417357, 16.296173, 13.706930>,  <6.751992, 16.184376, 13.934743>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.417357, 16.296173, 13.706930> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.417591, 16.449154, 14.076520>,  <7.417731, 16.540943, 14.298274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.417591, 16.449154, 14.076520>,  <7.417357, 16.296173, 13.706930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.417591, 16.449154, 14.076520> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992081, -0.116269, 0.047500,
		0.125596, 0.916631, -0.379492,
		0.000583, 0.382452, 0.923975,
		7.417766, 16.563890, 14.353712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.895182, 16.833147, 13.684321>,  <7.417357, 16.296173, 13.706930>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.895182, 16.833147, 13.684321> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.844777, 16.721706, 14.065164>,  <7.814535, 16.654842, 14.293669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.844777, 16.721706, 14.065164>,  <7.895182, 16.833147, 13.684321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.844777, 16.721706, 14.065164> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991710, -0.059698, 0.113784,
		0.025139, 0.958550, 0.283814,
		-0.126011, -0.278600, 0.952105,
		7.806974, 16.638126, 14.350795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.524027, 17.015604, 14.087669>,  <7.895182, 16.833147, 13.684321>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.524027, 17.015604, 14.087669> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.327817, 16.773384, 14.338330>,  <8.210091, 16.628052, 14.488727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.327817, 16.773384, 14.338330>,  <8.524027, 17.015604, 14.087669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.327817, 16.773384, 14.338330> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854857, -0.194813, 0.480903,
		-0.169132, 0.771592, 0.613221,
		-0.490525, -0.605552, 0.626652,
		8.180659, 16.591719, 14.526326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.679898, 17.310415, 14.749461>,  <8.524027, 17.015604, 14.087669>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.679898, 17.310415, 14.749461> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.557856, 16.929533, 14.755266>,  <8.484630, 16.701004, 14.758749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.557856, 16.929533, 14.755266>,  <8.679898, 17.310415, 14.749461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.557856, 16.929533, 14.755266> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792053, -0.245270, 0.559013,
		-0.528737, 0.182054, 0.829032,
		-0.305108, -0.952207, 0.014513,
		8.466323, 16.643871, 14.759620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.724084, 17.053776, 15.527469>,  <8.679898, 17.310415, 14.749461>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.724084, 17.053776, 15.527469> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.722514, 16.742601, 15.276135>,  <8.721572, 16.555897, 15.125336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.722514, 16.742601, 15.276135>,  <8.724084, 17.053776, 15.527469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.722514, 16.742601, 15.276135> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800285, -0.379202, 0.464490,
		-0.599608, -0.501022, 0.624057,
		-0.003924, -0.777935, -0.628333,
		8.721337, 16.509220, 15.087636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.050450, 16.611212, 15.946320>,  <8.724084, 17.053776, 15.527469>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.050450, 16.611212, 15.946320> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.057727, 16.434650, 15.587470>,  <9.062093, 16.328712, 15.372160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.057727, 16.434650, 15.587470>,  <9.050450, 16.611212, 15.946320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.057727, 16.434650, 15.587470> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723976, -0.613034, 0.316307,
		-0.689586, -0.655250, 0.308414,
		0.018192, -0.441405, -0.897124,
		9.063185, 16.302229, 15.318333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.003455, 15.954526, 16.150738>,  <9.050450, 16.611212, 15.946320>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.003455, 15.954526, 16.150738> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.160696, 15.943738, 15.783097>,  <9.255041, 15.937265, 15.562513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.160696, 15.943738, 15.783097>,  <9.003455, 15.954526, 16.150738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.160696, 15.943738, 15.783097> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769698, -0.537180, 0.344967,
		-0.503026, -0.843037, -0.190408,
		0.393103, -0.026971, -0.919099,
		9.278626, 15.935647, 15.507368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.187901, 15.293553, 16.099274>,  <9.003455, 15.954526, 16.150738>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.187901, 15.293553, 16.099274> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.398748, 15.498598, 15.828164>,  <9.525257, 15.621625, 15.665499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.398748, 15.498598, 15.828164>,  <9.187901, 15.293553, 16.099274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.398748, 15.498598, 15.828164> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841671, -0.424931, 0.333202,
		-0.117204, -0.746099, -0.655439,
		0.527118, 0.512611, -0.677773,
		9.556884, 15.652381, 15.624832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.548629, 14.752762, 15.820879>,  <9.187901, 15.293553, 16.099274>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.548629, 14.752762, 15.820879> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.740188, 15.095264, 15.743438>,  <9.855123, 15.300766, 15.696973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.740188, 15.095264, 15.743438>,  <9.548629, 14.752762, 15.820879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.740188, 15.095264, 15.743438> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871424, -0.436995, 0.222833,
		0.106199, -0.275424, -0.955439,
		0.478896, 0.856257, -0.193603,
		9.883857, 15.352141, 15.685357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.126672, 14.522833, 15.483728>,  <9.548629, 14.752762, 15.820879>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.126672, 14.522833, 15.483728> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.227064, 14.905995, 15.539474>,  <10.287299, 15.135893, 15.572921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.227064, 14.905995, 15.539474>,  <10.126672, 14.522833, 15.483728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.227064, 14.905995, 15.539474> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956670, -0.267417, 0.115196,
		0.147615, 0.104412, -0.983518,
		0.250981, 0.957907, 0.139362,
		10.302359, 15.193368, 15.581283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.653922, 14.749132, 15.009766>,  <10.126672, 14.522833, 15.483728>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.653922, 14.749132, 15.009766> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.673126, 14.965231, 15.345819>,  <10.684649, 15.094891, 15.547452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.673126, 14.965231, 15.345819>,  <10.653922, 14.749132, 15.009766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.673126, 14.965231, 15.345819> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927943, -0.335369, 0.162631,
		0.369617, 0.771791, -0.517420,
		0.048009, 0.540247, 0.840136,
		10.687529, 15.127305, 15.597860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.345534, 14.911718, 15.155293>,  <10.653922, 14.749132, 15.009766>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.345534, 14.911718, 15.155293> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.195248, 14.986048, 15.518459>,  <11.105076, 15.030645, 15.736359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.195248, 14.986048, 15.518459>,  <11.345534, 14.911718, 15.155293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.195248, 14.986048, 15.518459> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827366, -0.374095, 0.418949,
		0.417497, 0.908583, -0.013190,
		-0.375716, 0.185823, 0.907914,
		11.082533, 15.041795, 15.790833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.898836, 15.222809, 15.478904>,  <11.345534, 14.911718, 15.155293>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.898836, 15.222809, 15.478904> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.665546, 15.057513, 15.758641>,  <11.525573, 14.958336, 15.926484>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.665546, 15.057513, 15.758641>,  <11.898836, 15.222809, 15.478904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.665546, 15.057513, 15.758641> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790655, -0.486258, 0.372045,
		0.186319, 0.769926, 0.610327,
		-0.583224, -0.413239, 0.699345,
		11.490580, 14.933541, 15.968445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.293132, 15.163139, 15.965583>,  <11.898836, 15.222809, 15.478904>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.293132, 15.163139, 15.965583> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.002939, 14.910335, 16.074570>,  <11.828824, 14.758652, 16.139961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.002939, 14.910335, 16.074570>,  <12.293132, 15.163139, 15.965583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.002939, 14.910335, 16.074570> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686799, -0.639196, 0.346027,
		-0.044533, 0.438167, 0.897790,
		-0.725482, -0.632011, 0.272467,
		11.785295, 14.720732, 16.156309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.577228, 15.080128, 16.640211>,  <12.293132, 15.163139, 15.965583>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.577228, 15.080128, 16.640211> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.283814, 14.812713, 16.591240>,  <12.107767, 14.652264, 16.561857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.283814, 14.812713, 16.591240>,  <12.577228, 15.080128, 16.640211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.283814, 14.812713, 16.591240> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497656, -0.651002, 0.573179,
		-0.462892, 0.359519, 0.810233,
		-0.733532, -0.668537, -0.122426,
		12.063755, 14.612151, 16.554512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.566497, 14.691569, 17.314682>,  <12.577228, 15.080128, 16.640211>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.566497, 14.691569, 17.314682> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.431427, 14.492750, 16.994953>,  <12.350386, 14.373459, 16.803116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.431427, 14.492750, 16.994953>,  <12.566497, 14.691569, 17.314682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.431427, 14.492750, 16.994953> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583911, -0.776669, 0.236288,
		-0.738257, -0.386947, 0.552493,
		-0.337673, -0.497048, -0.799325,
		12.330125, 14.343636, 16.755156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.658748, 13.880056, 17.551083>,  <12.566497, 14.691569, 17.314682>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.658748, 13.880056, 17.551083> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.637721, 13.885608, 17.151674>,  <12.625105, 13.888939, 16.912029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.637721, 13.885608, 17.151674>,  <12.658748, 13.880056, 17.551083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.637721, 13.885608, 17.151674> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745024, -0.665274, -0.048467,
		-0.664963, -0.746470, 0.024629,
		-0.052564, 0.013880, -0.998521,
		12.621951, 13.889771, 16.852118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.718671, 13.171491, 17.404982>,  <12.658748, 13.880056, 17.551083>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.718671, 13.171491, 17.404982> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.806982, 13.393641, 17.084278>,  <12.859968, 13.526931, 16.891855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.806982, 13.393641, 17.084278>,  <12.718671, 13.171491, 17.404982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.806982, 13.393641, 17.084278> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732846, -0.636896, -0.239374,
		-0.643579, -0.534717, -0.547616,
		0.220777, 0.555375, -0.801758,
		12.873215, 13.560253, 16.843750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.673820, 12.701368, 16.871107>,  <12.718671, 13.171491, 17.404982>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.673820, 12.701368, 16.871107> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.904213, 12.998587, 16.734797>,  <13.042448, 13.176918, 16.653011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.904213, 12.998587, 16.734797>,  <12.673820, 12.701368, 16.871107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.904213, 12.998587, 16.734797> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666156, -0.668256, -0.331165,
		-0.473796, -0.036264, -0.879888,
		0.575981, 0.743047, -0.340774,
		13.077007, 13.221500, 16.632565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.845552, 12.437275, 16.292782>,  <12.673820, 12.701368, 16.871107>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.845552, 12.437275, 16.292782> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.114847, 12.719181, 16.382278>,  <13.276423, 12.888325, 16.435976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.114847, 12.719181, 16.382278>,  <12.845552, 12.437275, 16.292782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.114847, 12.719181, 16.382278> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738916, -0.652489, -0.168113,
		0.027509, 0.278506, -0.960040,
		0.673236, 0.704764, 0.223742,
		13.316818, 12.930611, 16.449402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<15.957979, 21.969147, 25.734327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.578878, 21.847305, 25.772234>,  <15.351418, 21.774200, 25.794979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.578878, 21.847305, 25.772234>,  <15.957979, 21.969147, 25.734327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.578878, 21.847305, 25.772234> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044079, 0.419272, 0.906790,
		-0.315945, 0.855236, -0.410793,
		-0.947753, -0.304603, 0.094769,
		15.294553, 21.755924, 25.800665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.665289, 22.434977, 26.120798>,  <15.957979, 21.969147, 25.734327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.665289, 22.434977, 26.120798> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.426576, 22.119015, 26.177225>,  <15.283348, 21.929438, 26.211081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.426576, 22.119015, 26.177225>,  <15.665289, 22.434977, 26.120798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.426576, 22.119015, 26.177225> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129348, 0.268209, 0.954638,
		-0.791909, 0.551465, -0.262235,
		-0.596783, -0.789905, 0.141066,
		15.247540, 21.882044, 26.219545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.109876, 22.733171, 26.352953>,  <15.665289, 22.434977, 26.120798>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.109876, 22.733171, 26.352953> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.103146, 22.348886, 26.463768>,  <15.099108, 22.118315, 26.530256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.103146, 22.348886, 26.463768>,  <15.109876, 22.733171, 26.352953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.103146, 22.348886, 26.463768> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212725, 0.274172, 0.937858,
		-0.976967, -0.043153, -0.208980,
		-0.016825, -0.960713, 0.277036,
		15.098098, 22.060673, 26.546879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.529512, 22.635452, 26.819702>,  <15.109876, 22.733171, 26.352953>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.529512, 22.635452, 26.819702> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.761441, 22.321178, 26.905962>,  <14.900599, 22.132614, 26.957718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.761441, 22.321178, 26.905962>,  <14.529512, 22.635452, 26.819702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.761441, 22.321178, 26.905962> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254887, 0.076475, 0.963942,
		-0.773848, -0.613881, -0.155919,
		0.579821, -0.785686, 0.215650,
		14.935388, 22.085472, 26.970657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.081536, 22.193731, 27.247753>,  <14.529512, 22.635452, 26.819702>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.081536, 22.193731, 27.247753> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.462686, 22.084446, 27.300499>,  <14.691375, 22.018875, 27.332148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.462686, 22.084446, 27.300499>,  <14.081536, 22.193731, 27.247753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.462686, 22.084446, 27.300499> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092086, 0.153679, 0.983821,
		-0.289059, -0.949598, 0.121278,
		0.952873, -0.273214, 0.131867,
		14.748548, 22.002481, 27.340059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.136751, 21.893143, 27.970476>,  <14.081536, 22.193731, 27.247753>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.136751, 21.893143, 27.970476> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.527908, 21.956154, 27.915468>,  <14.762603, 21.993959, 27.882463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.527908, 21.956154, 27.915468>,  <14.136751, 21.893143, 27.970476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.527908, 21.956154, 27.915468> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111836, 0.161706, 0.980482,
		0.176696, -0.974184, 0.140513,
		0.977891, 0.157532, -0.137521,
		14.821276, 22.003412, 27.874212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.525592, 21.459738, 28.510017>,  <14.136751, 21.893143, 27.970476>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.525592, 21.459738, 28.510017> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.742322, 21.767138, 28.373882>,  <14.872360, 21.951578, 28.292200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.742322, 21.767138, 28.373882>,  <14.525592, 21.459738, 28.510017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.742322, 21.767138, 28.373882> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016721, 0.394993, 0.918532,
		0.840325, -0.503374, 0.201167,
		0.541825, 0.768501, -0.340340,
		14.904869, 21.997688, 28.271780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.112066, 21.536673, 28.926662>,  <14.525592, 21.459738, 28.510017>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.112066, 21.536673, 28.926662> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.076481, 21.898848, 28.760639>,  <15.055129, 22.116152, 28.661026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.076481, 21.898848, 28.760639>,  <15.112066, 21.536673, 28.926662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.076481, 21.898848, 28.760639> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142734, 0.423997, 0.894346,
		0.985755, 0.020322, -0.166957,
		-0.088965, 0.905436, -0.415056,
		15.049791, 22.170479, 28.636122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.726062, 21.886848, 29.161745>,  <15.112066, 21.536673, 28.926662>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.726062, 21.886848, 29.161745> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.454443, 22.164759, 29.066931>,  <15.291471, 22.331505, 29.010042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.454443, 22.164759, 29.066931>,  <15.726062, 21.886848, 29.161745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.454443, 22.164759, 29.066931> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164097, 0.458383, 0.873474,
		0.715519, 0.554233, -0.425274,
		-0.679047, 0.694773, -0.237034,
		15.250729, 22.373190, 28.995821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.867767, 22.403097, 29.676342>,  <15.726062, 21.886848, 29.161745>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.867767, 22.403097, 29.676342> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.539927, 22.570320, 29.519634>,  <15.343224, 22.670654, 29.425610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.539927, 22.570320, 29.519634>,  <15.867767, 22.403097, 29.676342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.539927, 22.570320, 29.519634> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037759, 0.721720, 0.691155,
		0.571690, 0.551678, -0.607307,
		-0.819600, 0.418058, -0.391769,
		15.294047, 22.695738, 29.402103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.979943, 23.187017, 29.494038>,  <15.867767, 22.403097, 29.676342>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.979943, 23.187017, 29.494038> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.588728, 23.120121, 29.543795>,  <15.353999, 23.079983, 29.573648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.588728, 23.120121, 29.543795>,  <15.979943, 23.187017, 29.494038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.588728, 23.120121, 29.543795> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027527, 0.695226, 0.718264,
		-0.206603, 0.699065, -0.684561,
		-0.978038, -0.167239, 0.124392,
		15.295317, 23.069950, 29.581112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.639856, 23.832954, 29.621746>,  <15.979943, 23.187017, 29.494038>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.639856, 23.832954, 29.621746> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.370091, 23.570927, 29.758011>,  <15.208233, 23.413710, 29.839769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.370091, 23.570927, 29.758011>,  <15.639856, 23.832954, 29.621746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.370091, 23.570927, 29.758011> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291358, 0.660047, 0.692422,
		-0.678438, 0.367723, -0.636004,
		-0.674413, -0.655070, 0.340662,
		15.167768, 23.374405, 29.860209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.243467, 24.081108, 29.411392>,  <15.639856, 23.832954, 29.621746>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.243467, 24.081108, 29.411392> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.254784, 24.424473, 29.616262>,  <16.261574, 24.630491, 29.739185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.254784, 24.424473, 29.616262>,  <16.243467, 24.081108, 29.411392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.254784, 24.424473, 29.616262> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991027, -0.091049, 0.097857,
		0.130635, 0.504812, -0.853287,
		0.028292, 0.858414, 0.512177,
		16.263271, 24.681997, 29.769915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.762129, 24.508831, 28.997383>,  <16.243467, 24.081108, 29.411392>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.762129, 24.508831, 28.997383> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.737059, 24.618000, 29.381380>,  <16.722015, 24.683502, 29.611778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.737059, 24.618000, 29.381380>,  <16.762129, 24.508831, 28.997383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.737059, 24.618000, 29.381380> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980117, 0.198275, 0.007623,
		-0.188262, 0.941383, -0.279922,
		-0.062677, 0.272922, 0.959992,
		16.718256, 24.699877, 29.669378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.096737, 24.864824, 28.649132>,  <16.762129, 24.508831, 28.997383>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.096737, 24.864824, 28.649132> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.066122, 25.218956, 28.465683>,  <16.047752, 25.431435, 28.355614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.066122, 25.218956, 28.465683>,  <16.096737, 24.864824, 28.649132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.066122, 25.218956, 28.465683> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294781, -0.419316, -0.858649,
		-0.952495, -0.200912, -0.228885,
		-0.076538, 0.885330, -0.458621,
		16.043161, 25.484554, 28.328096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.680273, 24.707117, 28.102934>,  <16.096737, 24.864824, 28.649132>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.680273, 24.707117, 28.102934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.859052, 25.050865, 28.003561>,  <15.966319, 25.257114, 27.943937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.859052, 25.050865, 28.003561>,  <15.680273, 24.707117, 28.102934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.859052, 25.050865, 28.003561> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052786, -0.302565, -0.951666,
		-0.893001, 0.412231, -0.180593,
		0.446947, 0.859372, -0.248431,
		15.993135, 25.308678, 27.929031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.332108, 24.956764, 27.534172>,  <15.680273, 24.707117, 28.102934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.332108, 24.956764, 27.534172> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.693723, 25.127123, 27.519560>,  <15.910691, 25.229338, 27.510792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.693723, 25.127123, 27.519560>,  <15.332108, 24.956764, 27.534172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.693723, 25.127123, 27.519560> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064130, -0.219628, -0.973474,
		-0.422621, 0.877711, -0.225864,
		0.904035, 0.425895, -0.036532,
		15.964933, 25.254892, 27.508600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.308553, 25.323767, 26.926411>,  <15.332108, 24.956764, 27.534172>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.308553, 25.323767, 26.926411> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.703903, 25.303638, 26.983791>,  <15.941113, 25.291561, 27.018219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.703903, 25.303638, 26.983791>,  <15.308553, 25.323767, 26.926411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.703903, 25.303638, 26.983791> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135828, -0.131471, -0.981971,
		0.068275, 0.990042, -0.123107,
		0.988377, -0.050323, 0.143451,
		16.000416, 25.288542, 27.026827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.631441, 25.770329, 26.493650>,  <15.308553, 25.323767, 26.926411>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.631441, 25.770329, 26.493650> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.923222, 25.515064, 26.592161>,  <16.098289, 25.361906, 26.651268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.923222, 25.515064, 26.592161>,  <15.631441, 25.770329, 26.493650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.923222, 25.515064, 26.592161> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120970, -0.234011, -0.964679,
		0.673250, 0.733479, -0.093502,
		0.729452, -0.638159, 0.246277,
		16.142057, 25.323616, 26.666044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.064409, 25.929434, 26.031380>,  <15.631441, 25.770329, 26.493650>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.064409, 25.929434, 26.031380> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.146088, 25.565386, 26.175592>,  <16.195095, 25.346956, 26.262121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.146088, 25.565386, 26.175592>,  <16.064409, 25.929434, 26.031380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.146088, 25.565386, 26.175592> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120596, -0.342101, -0.931893,
		0.971474, 0.233767, 0.039901,
		0.204195, -0.910121, 0.360533,
		16.207346, 25.292349, 26.283752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.784077, 25.664703, 25.763536>,  <16.064409, 25.929434, 26.031380>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.784077, 25.664703, 25.763536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.585800, 25.334354, 25.871037>,  <16.466835, 25.136145, 25.935537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.585800, 25.334354, 25.871037>,  <16.784077, 25.664703, 25.763536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.585800, 25.334354, 25.871037> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361765, -0.477661, -0.800604,
		0.789568, -0.299626, 0.535543,
		-0.495690, -0.825872, 0.268752,
		16.437094, 25.086594, 25.951662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.203106, 25.097393, 25.532866>,  <16.784077, 25.664703, 25.763536>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.203106, 25.097393, 25.532866> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.864592, 24.890518, 25.583965>,  <16.661484, 24.766394, 25.614626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.864592, 24.890518, 25.583965>,  <17.203106, 25.097393, 25.532866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.864592, 24.890518, 25.583965> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265061, -0.616796, -0.741152,
		0.462109, -0.593364, 0.659071,
		-0.846285, -0.517187, 0.127749,
		16.610706, 24.735363, 25.622290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.340540, 24.291132, 25.529188>,  <17.203106, 25.097393, 25.532866>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.340540, 24.291132, 25.529188> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.965296, 24.366285, 25.412807>,  <16.740150, 24.411377, 25.342979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.965296, 24.366285, 25.412807>,  <17.340540, 24.291132, 25.529188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.965296, 24.366285, 25.412807> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118832, -0.614466, -0.779942,
		-0.325315, -0.766246, 0.554110,
		-0.938109, 0.187881, -0.290950,
		16.683863, 24.422649, 25.325523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.122889, 23.708193, 25.171944>,  <17.340540, 24.291132, 25.529188>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.122889, 23.708193, 25.171944> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.814739, 23.950348, 25.091909>,  <16.629850, 24.095640, 25.043890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.814739, 23.950348, 25.091909>,  <17.122889, 23.708193, 25.171944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.814739, 23.950348, 25.091909> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146830, -0.473821, -0.868294,
		-0.620460, -0.639530, 0.453907,
		-0.770371, 0.605388, -0.200085,
		16.583628, 24.131964, 25.031883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.532545, 23.300020, 24.987429>,  <17.122889, 23.708193, 25.171944>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.532545, 23.300020, 24.987429> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.457970, 23.667688, 24.848654>,  <16.413225, 23.888288, 24.765388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.457970, 23.667688, 24.848654>,  <16.532545, 23.300020, 24.987429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.457970, 23.667688, 24.848654> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310659, -0.390165, -0.866754,
		-0.932058, -0.053816, 0.358290,
		-0.186438, 0.919171, -0.346938,
		16.402039, 23.943439, 24.744572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.000896, 23.231169, 24.688967>,  <16.532545, 23.300020, 24.987429>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.000896, 23.231169, 24.688967> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.109348, 23.574974, 24.515657>,  <16.174419, 23.781258, 24.411671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.109348, 23.574974, 24.515657>,  <16.000896, 23.231169, 24.688967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.109348, 23.574974, 24.515657> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375905, -0.319840, -0.869711,
		-0.886107, 0.398673, 0.236377,
		0.271128, 0.859513, -0.433276,
		16.190687, 23.832829, 24.385675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.500749, 23.455563, 24.268543>,  <16.000896, 23.231169, 24.688967>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.500749, 23.455563, 24.268543> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.835915, 23.628649, 24.135485>,  <16.037014, 23.732500, 24.055649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.835915, 23.628649, 24.135485>,  <15.500749, 23.455563, 24.268543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.835915, 23.628649, 24.135485> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249286, -0.238775, -0.938533,
		-0.485546, 0.869335, -0.092203,
		0.837915, 0.432716, -0.332649,
		16.087290, 23.758463, 24.035690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.338881, 23.782734, 23.747715>,  <15.500749, 23.455563, 24.268543>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.338881, 23.782734, 23.747715> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.725797, 23.705133, 23.682339>,  <15.957947, 23.658573, 23.643112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.725797, 23.705133, 23.682339>,  <15.338881, 23.782734, 23.747715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.725797, 23.705133, 23.682339> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220548, -0.324839, -0.919694,
		0.125328, 0.925658, -0.357000,
		0.967291, -0.193999, -0.163441,
		16.015984, 23.646935, 23.633307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.749384, 24.113485, 23.836828>,  <15.338881, 23.782734, 23.747715>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.749384, 24.113485, 23.836828> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.374107, 24.105768, 23.698597>,  <14.148941, 24.101137, 23.615658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.374107, 24.105768, 23.698597>,  <14.749384, 24.113485, 23.836828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.374107, 24.105768, 23.698597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290443, 0.586931, 0.755748,
		0.188249, 0.809407, -0.556258,
		-0.938192, -0.019292, -0.345576,
		14.092649, 24.099981, 23.594925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.436754, 24.829922, 23.685835>,  <14.749384, 24.113485, 23.836828>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.436754, 24.829922, 23.685835> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.125808, 24.593325, 23.771475>,  <13.939240, 24.451366, 23.822859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.125808, 24.593325, 23.771475>,  <14.436754, 24.829922, 23.685835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.125808, 24.593325, 23.771475> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319392, 0.664356, 0.675736,
		-0.541931, 0.456913, -0.705366,
		-0.777367, -0.591490, 0.214101,
		13.892597, 24.415878, 23.835705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.741803, 25.290203, 23.694544>,  <14.436754, 24.829922, 23.685835>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.741803, 25.290203, 23.694544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.665562, 24.950531, 23.891544>,  <13.619817, 24.746727, 24.009745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.665562, 24.950531, 23.891544>,  <13.741803, 25.290203, 23.694544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.665562, 24.950531, 23.891544> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480389, 0.518210, 0.707591,
		-0.856093, -0.101724, -0.506711,
		-0.190604, -0.849182, 0.492503,
		13.608380, 24.695776, 24.039295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.202202, 25.508259, 23.939838>,  <13.741803, 25.290203, 23.694544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.202202, 25.508259, 23.939838> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.270539, 25.176062, 24.151911>,  <13.311542, 24.976744, 24.279154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.270539, 25.176062, 24.151911>,  <13.202202, 25.508259, 23.939838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.270539, 25.176062, 24.151911> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451805, 0.412154, 0.791202,
		-0.875605, -0.374710, -0.304807,
		0.170844, -0.830494, 0.530180,
		13.321793, 24.926914, 24.310965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.631443, 25.448971, 24.369585>,  <13.202202, 25.508259, 23.939838>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.631443, 25.448971, 24.369585> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.936639, 25.256079, 24.541771>,  <13.119757, 25.140343, 24.645082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.936639, 25.256079, 24.541771>,  <12.631443, 25.448971, 24.369585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.936639, 25.256079, 24.541771> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225984, 0.424920, 0.876570,
		-0.605622, -0.766092, 0.215233,
		0.762990, -0.482231, 0.430466,
		13.165536, 25.111410, 24.670910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.348177, 25.182438, 25.027098>,  <12.631443, 25.448971, 24.369585>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.348177, 25.182438, 25.027098> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.742482, 25.129007, 25.067949>,  <12.979065, 25.096949, 25.092461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.742482, 25.129007, 25.067949>,  <12.348177, 25.182438, 25.027098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.742482, 25.129007, 25.067949> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040885, 0.398743, 0.916151,
		-0.163100, -0.907282, 0.387604,
		0.985762, -0.133577, 0.102129,
		13.038211, 25.088934, 25.098587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.369104, 24.914846, 25.652006>,  <12.348177, 25.182438, 25.027098>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.369104, 24.914846, 25.652006> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.732061, 25.064457, 25.575335>,  <12.949836, 25.154224, 25.529331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.732061, 25.064457, 25.575335>,  <12.369104, 24.914846, 25.652006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.732061, 25.064457, 25.575335> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052021, 0.552515, 0.831878,
		0.417050, -0.744870, 0.520806,
		0.907394, 0.374027, -0.191677,
		13.004279, 25.176664, 25.517832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.467646, 24.235731, 25.876493>,  <12.369104, 24.914846, 25.652006>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.467646, 24.235731, 25.876493> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.107614, 24.117830, 26.004854>,  <11.891594, 24.047091, 26.081871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.107614, 24.117830, 26.004854>,  <12.467646, 24.235731, 25.876493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.107614, 24.117830, 26.004854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136074, -0.509493, -0.849647,
		0.413931, -0.808417, 0.418477,
		-0.900081, -0.294751, 0.320900,
		11.837589, 24.029406, 26.101124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.431736, 23.528397, 25.900795>,  <12.467646, 24.235731, 25.876493>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.431736, 23.528397, 25.900795> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.050591, 23.646332, 25.872171>,  <11.821903, 23.717093, 25.854998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.050591, 23.646332, 25.872171>,  <12.431736, 23.528397, 25.900795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.050591, 23.646332, 25.872171> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127617, -0.603474, -0.787104,
		-0.275251, -0.740871, 0.612655,
		-0.952864, 0.294836, -0.071559,
		11.764731, 23.734783, 25.850704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.151600, 22.908806, 25.856071>,  <12.431736, 23.528397, 25.900795>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.151600, 22.908806, 25.856071> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.867868, 23.141005, 25.696133>,  <11.697630, 23.280325, 25.600170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.867868, 23.141005, 25.696133>,  <12.151600, 22.908806, 25.856071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.867868, 23.141005, 25.696133> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245224, -0.735046, -0.632117,
		-0.660846, -0.350328, 0.663741,
		-0.709329, 0.580498, -0.399844,
		11.655070, 23.315153, 25.576180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.566480, 22.467455, 25.774227>,  <12.151600, 22.908806, 25.856071>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.566480, 22.467455, 25.774227> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.511698, 22.782778, 25.534288>,  <11.478828, 22.971972, 25.390326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.511698, 22.782778, 25.534288>,  <11.566480, 22.467455, 25.774227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.511698, 22.782778, 25.534288> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388071, -0.599847, -0.699704,
		-0.911397, 0.136955, 0.388071,
		-0.136955, 0.788307, -0.599847,
		11.470612, 23.019270, 25.354334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.975513, 22.240322, 25.346910>,  <11.566480, 22.467455, 25.774227>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.975513, 22.240322, 25.346910> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.138680, 22.556435, 25.164017>,  <11.236579, 22.746101, 25.054281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.138680, 22.556435, 25.164017>,  <10.975513, 22.240322, 25.346910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.138680, 22.556435, 25.164017> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202805, -0.409856, -0.889319,
		-0.890211, 0.455496, -0.006914,
		0.407915, 0.790279, -0.457235,
		11.261054, 22.793518, 25.026846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.434163, 22.366005, 24.779905>,  <10.975513, 22.240322, 25.346910>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.434163, 22.366005, 24.779905> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.777471, 22.542927, 24.675798>,  <10.983456, 22.649080, 24.613335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.777471, 22.542927, 24.675798>,  <10.434163, 22.366005, 24.779905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.777471, 22.542927, 24.675798> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103273, -0.347915, -0.931821,
		-0.502701, 0.826632, -0.252926,
		0.858269, 0.442307, -0.260266,
		11.034951, 22.675619, 24.597719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.370189, 22.735289, 24.114941>,  <10.434163, 22.366005, 24.779905>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.370189, 22.735289, 24.114941> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.746718, 22.600542, 24.123243>,  <10.972636, 22.519695, 24.128225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<10.746718, 22.600542, 24.123243>,  <10.370189, 22.735289, 24.114941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<10.746718, 22.600542, 24.123243> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085985, -0.298833, -0.950424,
		0.326367, 0.892872, -0.310264,
		0.941324, -0.336865, 0.020756,
		11.029116, 22.499483, 24.129471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<18.050583, 19.455723, 26.796484> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.888861, 19.806297, 26.901096>,  <17.791828, 20.016642, 26.963863>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.888861, 19.806297, 26.901096>,  <18.050583, 19.455723, 26.796484>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.888861, 19.806297, 26.901096> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800121, -0.477453, 0.363105,
		0.443107, -0.062452, 0.894291,
		-0.404305, 0.876435, 0.261532,
		17.767569, 20.069227, 26.979555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.939709, 19.570667, 27.595005>,  <18.050583, 19.455723, 26.796484>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.939709, 19.570667, 27.595005> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.678175, 19.747959, 27.349714>,  <17.521254, 19.854334, 27.202539>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.678175, 19.747959, 27.349714>,  <17.939709, 19.570667, 27.595005>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.678175, 19.747959, 27.349714> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750363, -0.483981, 0.450242,
		-0.097229, 0.754526, 0.649027,
		-0.653836, 0.443229, -0.613226,
		17.482023, 19.880928, 27.165747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.476313, 19.876379, 28.074766>,  <17.939709, 19.570667, 27.595005>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.476313, 19.876379, 28.074766> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.266478, 19.811174, 27.740524>,  <17.140575, 19.772051, 27.539980>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.266478, 19.811174, 27.740524>,  <17.476313, 19.876379, 28.074766>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.266478, 19.811174, 27.740524> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683820, -0.503990, 0.527621,
		-0.507145, 0.848187, 0.152916,
		-0.524590, -0.163014, -0.835603,
		17.109100, 19.762270, 27.489843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.808020, 20.114161, 28.191320>,  <17.476313, 19.876379, 28.074766>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.808020, 20.114161, 28.191320> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.778971, 19.819834, 27.922010>,  <16.761541, 19.643238, 27.760424>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.778971, 19.819834, 27.922010>,  <16.808020, 20.114161, 28.191320>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.778971, 19.819834, 27.922010> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765816, -0.391328, 0.510283,
		-0.638946, 0.552662, -0.535082,
		-0.072622, -0.735817, -0.673275,
		16.757185, 19.599089, 27.720028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.080204, 20.052490, 27.739130>,  <16.808020, 20.114161, 28.191320>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.080204, 20.052490, 27.739130> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.304478, 19.742424, 27.855581>,  <16.439041, 19.556385, 27.925451>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.304478, 19.742424, 27.855581>,  <16.080204, 20.052490, 27.739130>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.304478, 19.742424, 27.855581> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695725, -0.250366, 0.673263,
		-0.449002, -0.580031, -0.679677,
		0.560682, -0.775165, 0.291128,
		16.472683, 19.509874, 27.942921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.688242, 19.462402, 27.724010>,  <16.080204, 20.052490, 27.739130>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.688242, 19.462402, 27.724010> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.956492, 19.353292, 27.999939>,  <16.117443, 19.287827, 28.165497>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.956492, 19.353292, 27.999939>,  <15.688242, 19.462402, 27.724010>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.956492, 19.353292, 27.999939> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735617, -0.124776, 0.665806,
		-0.095540, -0.953953, -0.284334,
		0.670626, -0.272772, 0.689823,
		16.157681, 19.271461, 28.206886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.234499, 18.892027, 28.071840>,  <15.688242, 19.462402, 27.724010>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.234499, 18.892027, 28.071840> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.515834, 19.061747, 28.299976>,  <15.684635, 19.163578, 28.436857>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.515834, 19.061747, 28.299976>,  <15.234499, 18.892027, 28.071840>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.515834, 19.061747, 28.299976> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660781, 0.094437, 0.744614,
		0.262077, -0.900585, 0.346790,
		0.703337, 0.424298, 0.570339,
		15.726835, 19.189035, 28.471079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.702789, 18.473038, 28.306562>,  <15.234499, 18.892027, 28.071840>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.702789, 18.473038, 28.306562> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.430519, 18.762184, 28.354134>,  <14.267157, 18.935673, 28.382675>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.430519, 18.762184, 28.354134>,  <14.702789, 18.473038, 28.306562>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.430519, 18.762184, 28.354134> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415604, -0.247348, -0.875267,
		-0.603286, -0.645198, 0.468791,
		-0.680675, 0.722868, 0.118925,
		14.226316, 18.979044, 28.389811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.085459, 18.139883, 28.140566>,  <14.702789, 18.473038, 28.306562>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.085459, 18.139883, 28.140566> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.007689, 18.529865, 28.097374>,  <13.961028, 18.763855, 28.071459>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.007689, 18.529865, 28.097374>,  <14.085459, 18.139883, 28.140566>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.007689, 18.529865, 28.097374> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416402, -0.181700, -0.890839,
		-0.888149, -0.128238, 0.441300,
		-0.194424, 0.974956, -0.107979,
		13.949363, 18.822351, 28.064980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.389030, 18.201439, 28.085972>,  <14.085459, 18.139883, 28.140566>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.389030, 18.201439, 28.085972> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.572118, 18.512667, 27.913879>,  <13.681971, 18.699404, 27.810623>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.572118, 18.512667, 27.913879>,  <13.389030, 18.201439, 28.085972>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.572118, 18.512667, 27.913879> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489124, -0.183728, -0.852644,
		-0.742463, 0.600709, 0.296477,
		0.457719, 0.778070, -0.430232,
		13.709434, 18.746088, 27.784809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.896500, 18.553579, 27.760792>,  <13.389030, 18.201439, 28.085972>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.896500, 18.553579, 27.760792> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.237775, 18.647163, 27.574316>,  <13.442540, 18.703314, 27.462431>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.237775, 18.647163, 27.574316>,  <12.896500, 18.553579, 27.760792>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.237775, 18.647163, 27.574316> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495066, 0.081771, -0.864999,
		-0.164253, 0.968802, 0.185590,
		0.853188, 0.233958, -0.466190,
		13.493731, 18.717350, 27.434460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.609850, 18.870804, 27.165304>,  <12.896500, 18.553579, 27.760792>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.609850, 18.870804, 27.165304> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.987166, 18.828527, 27.039429>,  <13.213556, 18.803162, 26.963903>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.987166, 18.828527, 27.039429>,  <12.609850, 18.870804, 27.165304>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.987166, 18.828527, 27.039429> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304174, 0.104486, -0.946869,
		0.132958, 0.988894, 0.066411,
		0.943292, -0.105693, -0.314688,
		13.270154, 18.796820, 26.945023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.113069, 18.941095, 26.546127>,  <12.609850, 18.870804, 27.165304>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.113069, 18.941095, 26.546127> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.715684, 18.920517, 26.586893>,  <11.477253, 18.908171, 26.611353>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.715684, 18.920517, 26.586893>,  <12.113069, 18.941095, 26.546127>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.715684, 18.920517, 26.586893> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060124, 0.523100, 0.850148,
		-0.097045, 0.850718, -0.516587,
		-0.993462, -0.051444, 0.101913,
		11.417645, 18.905085, 26.617466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.920676, 19.601549, 26.688112>,  <12.113069, 18.941095, 26.546127>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.920676, 19.601549, 26.688112> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.595884, 19.410694, 26.822592>,  <11.401010, 19.296181, 26.903280>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.595884, 19.410694, 26.822592>,  <11.920676, 19.601549, 26.688112>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.595884, 19.410694, 26.822592> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022463, 0.601110, 0.798850,
		-0.583254, 0.641098, -0.498807,
		-0.811979, -0.477137, 0.336199,
		11.352290, 19.267553, 26.923450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.376315, 20.007013, 26.883963>,  <11.920676, 19.601549, 26.688112>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.376315, 20.007013, 26.883963> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.311457, 19.677179, 27.100765>,  <11.272542, 19.479279, 27.230846>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.311457, 19.677179, 27.100765>,  <11.376315, 20.007013, 26.883963>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.311457, 19.677179, 27.100765> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019003, 0.551781, 0.833773,
		-0.986584, 0.124893, -0.105139,
		-0.162146, -0.824585, 0.542005,
		11.262813, 19.429804, 27.263367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.898527, 20.214109, 27.318939>,  <11.376315, 20.007013, 26.883963>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.898527, 20.214109, 27.318939> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.061090, 19.886169, 27.480272>,  <11.158627, 19.689405, 27.577072>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.061090, 19.886169, 27.480272>,  <10.898527, 20.214109, 27.318939>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.061090, 19.886169, 27.480272> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013628, 0.435946, 0.899870,
		-0.913591, -0.371208, 0.165998,
		0.406405, -0.819851, 0.403335,
		11.183011, 19.640215, 27.601273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.454877, 20.113855, 27.897623>,  <10.898527, 20.214109, 27.318939>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.454877, 20.113855, 27.897623> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.805986, 19.927364, 27.941706>,  <11.016652, 19.815470, 27.968155>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.805986, 19.927364, 27.941706>,  <10.454877, 20.113855, 27.897623>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.805986, 19.927364, 27.941706> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135199, 0.461764, 0.876638,
		-0.459602, -0.754590, 0.468358,
		0.877774, -0.466226, 0.110208,
		11.069319, 19.787497, 27.974768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.450961, 19.846865, 28.619911>,  <10.454877, 20.113855, 27.897623>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.450961, 19.846865, 28.619911> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.829906, 19.881130, 28.496515>,  <11.057274, 19.901690, 28.422478>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<10.829906, 19.881130, 28.496515>,  <10.450961, 19.846865, 28.619911>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<10.829906, 19.881130, 28.496515> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241708, 0.440494, 0.864605,
		0.209953, -0.893659, 0.396602,
		0.947363, 0.085665, -0.308488,
		11.114116, 19.906830, 28.403969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.798770, 19.918491, 29.284529>,  <10.450961, 19.846865, 28.619911>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.798770, 19.918491, 29.284529> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.063990, 20.027868, 29.005791>,  <11.223122, 20.093494, 28.838547>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.063990, 20.027868, 29.005791>,  <10.798770, 19.918491, 29.284529>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.063990, 20.027868, 29.005791> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390976, 0.667338, 0.633875,
		0.638358, -0.692742, 0.335572,
		0.663052, 0.273439, -0.696845,
		11.262905, 20.109901, 28.796738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.276971, 20.051306, 29.698885>,  <10.798770, 19.918491, 29.284529>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.276971, 20.051306, 29.698885> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.435254, 20.226782, 29.376156>,  <11.530224, 20.332067, 29.182518>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.435254, 20.226782, 29.376156>,  <11.276971, 20.051306, 29.698885>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.435254, 20.226782, 29.376156> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466900, 0.660428, 0.588081,
		0.790835, -0.609415, 0.056513,
		0.395708, 0.438690, -0.806825,
		11.553967, 20.358389, 29.134108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.089816, 20.266010, 29.817116>,  <11.276971, 20.051306, 29.698885>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.089816, 20.266010, 29.817116> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.944244, 20.483809, 29.514835>,  <11.856901, 20.614487, 29.333467>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.944244, 20.483809, 29.514835>,  <12.089816, 20.266010, 29.817116>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.944244, 20.483809, 29.514835> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569919, 0.771903, 0.281708,
		0.736715, -0.328165, -0.591236,
		-0.363929, 0.544495, -0.755699,
		11.835066, 20.647158, 29.288126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.682577, 20.709951, 29.387589>,  <12.089816, 20.266010, 29.817116>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.682577, 20.709951, 29.387589> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.333993, 20.902136, 29.348167>,  <12.124843, 21.017447, 29.324514>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.333993, 20.902136, 29.348167>,  <12.682577, 20.709951, 29.387589>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.333993, 20.902136, 29.348167> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428960, 0.844056, 0.321811,
		0.237804, 0.238170, -0.941661,
		-0.871460, 0.480463, -0.098555,
		12.072555, 21.046274, 29.318602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.854833, 21.291109, 28.963316>,  <12.682577, 20.709951, 29.387589>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.854833, 21.291109, 28.963316> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.516687, 21.352028, 29.168125>,  <12.313801, 21.388578, 29.291012>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.516687, 21.352028, 29.168125>,  <12.854833, 21.291109, 28.963316>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.516687, 21.352028, 29.168125> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293844, 0.933031, 0.207625,
		-0.446115, 0.325973, -0.833500,
		-0.845362, 0.152295, 0.512025,
		12.263079, 21.397717, 29.321732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.780415, 21.972031, 28.968370>,  <12.854833, 21.291109, 28.963316>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.780415, 21.972031, 28.968370> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.501280, 21.900187, 29.245720>,  <12.333799, 21.857080, 29.412128>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.501280, 21.900187, 29.245720>,  <12.780415, 21.972031, 28.968370>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.501280, 21.900187, 29.245720> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039405, 0.956955, 0.287549,
		-0.715172, 0.227985, -0.660720,
		-0.697836, -0.179612, 0.693371,
		12.291929, 21.846304, 29.453732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.284642, 22.447161, 28.877361>,  <12.780415, 21.972031, 28.968370>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.284642, 22.447161, 28.877361> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.229218, 22.347212, 29.260687>,  <12.195963, 22.287243, 29.490683>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.229218, 22.347212, 29.260687>,  <12.284642, 22.447161, 28.877361>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.229218, 22.347212, 29.260687> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121752, 0.964606, 0.233907,
		-0.982841, -0.084266, -0.164080,
		-0.138563, -0.249870, 0.958314,
		12.187649, 22.272251, 29.548182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.624177, 22.768038, 29.140471>,  <12.284642, 22.447161, 28.877361>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.624177, 22.768038, 29.140471> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.901840, 22.704607, 29.421326>,  <12.068439, 22.666548, 29.589838>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.901840, 22.704607, 29.421326>,  <11.624177, 22.768038, 29.140471>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.901840, 22.704607, 29.421326> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068061, 0.956603, 0.283335,
		-0.716597, -0.244467, 0.653242,
		0.694159, -0.158577, 0.702137,
		12.110088, 22.657034, 29.631968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.307734, 23.429873, 29.140232>,  <11.624177, 22.768038, 29.140471>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.307734, 23.429873, 29.140232> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.282271, 23.816759, 29.041891>,  <11.266994, 24.048891, 28.982887>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.282271, 23.816759, 29.041891>,  <11.307734, 23.429873, 29.140232>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.282271, 23.816759, 29.041891> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322984, -0.213126, -0.922095,
		-0.944261, -0.138104, -0.298828,
		-0.063657, 0.967215, -0.245852,
		11.263174, 24.106924, 28.968136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.888010, 23.505562, 28.629515>,  <11.307734, 23.429873, 29.140232>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.888010, 23.505562, 28.629515> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.117540, 23.830046, 28.584511>,  <11.255259, 24.024736, 28.557508>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.117540, 23.830046, 28.584511>,  <10.888010, 23.505562, 28.629515>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.117540, 23.830046, 28.584511> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054365, -0.174805, -0.983101,
		-0.817170, 0.558013, -0.144410,
		0.573827, 0.811212, -0.112509,
		11.289688, 24.073410, 28.550758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.629803, 23.962475, 28.127619>,  <10.888010, 23.505562, 28.629515>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.629803, 23.962475, 28.127619> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.007429, 24.091925, 28.152941>,  <11.234005, 24.169594, 28.168135>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.007429, 24.091925, 28.152941>,  <10.629803, 23.962475, 28.127619>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.007429, 24.091925, 28.152941> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086660, -0.058258, -0.994533,
		-0.318165, 0.944391, -0.083045,
		0.944066, 0.323622, 0.063305,
		11.290649, 24.189011, 28.171932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.686781, 24.443998, 27.718039>,  <10.629803, 23.962475, 28.127619>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.686781, 24.443998, 27.718039> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.076482, 24.353889, 27.721762>,  <11.310302, 24.299824, 27.723995>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.076482, 24.353889, 27.721762>,  <10.686781, 24.443998, 27.718039>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.076482, 24.353889, 27.721762> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022891, -0.139893, -0.989902,
		0.224299, 0.964201, -0.141447,
		0.974252, -0.225272, 0.009306,
		11.368757, 24.286308, 27.724554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.979466, 24.905447, 27.161747>,  <10.686781, 24.443998, 27.718039>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.979466, 24.905447, 27.161747> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.238509, 24.611458, 27.242165>,  <11.393935, 24.435064, 27.290415>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.238509, 24.611458, 27.242165>,  <10.979466, 24.905447, 27.161747>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.238509, 24.611458, 27.242165> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146200, -0.139091, -0.979428,
		0.747817, 0.663678, 0.017377,
		0.647607, -0.734973, 0.201044,
		11.432792, 24.390966, 27.302479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.628323, 25.031412, 26.753622>,  <10.979466, 24.905447, 27.161747>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.628323, 25.031412, 26.753622> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.655459, 24.644665, 26.852057>,  <11.671741, 24.412617, 26.911118>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.655459, 24.644665, 26.852057>,  <11.628323, 25.031412, 26.753622>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.655459, 24.644665, 26.852057> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323672, -0.211985, -0.922116,
		0.943734, 0.142209, 0.298568,
		0.067841, -0.966871, 0.246086,
		11.675812, 24.354603, 26.925882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.273883, 24.699833, 26.498610>,  <11.628323, 25.031412, 26.753622>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.273883, 24.699833, 26.498610> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.994265, 24.416716, 26.539328>,  <11.826494, 24.246845, 26.563759>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.994265, 24.416716, 26.539328>,  <12.273883, 24.699833, 26.498610>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.994265, 24.416716, 26.539328> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127553, -0.263496, -0.956190,
		0.703610, -0.655435, 0.274477,
		-0.699044, -0.707795, 0.101796,
		11.784552, 24.204376, 26.569866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.908467, 24.738688, 26.312321>,  <12.273883, 24.699833, 26.498610>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.908467, 24.738688, 26.312321> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.068702, 25.053669, 26.124939>,  <13.164843, 25.242657, 26.012510>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.068702, 25.053669, 26.124939>,  <12.908467, 24.738688, 26.312321>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.068702, 25.053669, 26.124939> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060012, 0.532720, 0.844161,
		0.914292, -0.310046, 0.260656,
		0.400585, 0.787452, -0.468455,
		13.188877, 25.289906, 25.984402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.512741, 24.900919, 26.744112>,  <12.908467, 24.738688, 26.312321>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.512741, 24.900919, 26.744112> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.421825, 25.223331, 26.525515>,  <13.367276, 25.416779, 26.394356>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.421825, 25.223331, 26.525515>,  <13.512741, 24.900919, 26.744112>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.421825, 25.223331, 26.525515> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133289, 0.581647, 0.802446,
		0.964662, 0.109546, -0.239637,
		-0.227289, 0.806031, -0.546492,
		13.353639, 25.465141, 26.361567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.056232, 25.398907, 26.873455>,  <13.512741, 24.900919, 26.744112>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.056232, 25.398907, 26.873455> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.740108, 25.590452, 26.720564>,  <13.550434, 25.705379, 26.628830>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.740108, 25.590452, 26.720564>,  <14.056232, 25.398907, 26.873455>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.740108, 25.590452, 26.720564> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129626, 0.740392, 0.659558,
		0.598837, 0.471709, -0.647213,
		-0.790311, 0.478863, -0.382228,
		13.503016, 25.734112, 26.605896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.281782, 26.104237, 26.716839>,  <14.056232, 25.398907, 26.873455>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.281782, 26.104237, 26.716839> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.884024, 26.121304, 26.755529>,  <13.645369, 26.131544, 26.778744>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.884024, 26.121304, 26.755529>,  <14.281782, 26.104237, 26.716839>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.884024, 26.121304, 26.755529> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102687, 0.607315, 0.787797,
		-0.025131, 0.793315, -0.608293,
		-0.994396, 0.042666, 0.096726,
		13.585705, 26.134104, 26.784548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.175489, 26.795864, 26.855324>,  <14.281782, 26.104237, 26.716839>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.175489, 26.795864, 26.855324> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.846161, 26.616232, 26.994160>,  <13.648564, 26.508453, 27.077461>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.846161, 26.616232, 26.994160>,  <14.175489, 26.795864, 26.855324>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.846161, 26.616232, 26.994160> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000303, 0.611183, 0.791489,
		-0.567577, 0.651754, -0.503063,
		-0.823320, -0.449079, 0.347091,
		13.599165, 26.481508, 27.098288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.828961, 27.308121, 27.187273>,  <14.175489, 26.795864, 26.855324>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.828961, 27.308121, 27.187273> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.642234, 26.986214, 27.333931>,  <13.530197, 26.793070, 27.421926>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.642234, 26.986214, 27.333931>,  <13.828961, 27.308121, 27.187273>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.642234, 26.986214, 27.333931> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059560, 0.385039, 0.920977,
		-0.882345, 0.451767, -0.131812,
		-0.466819, -0.804768, 0.366644,
		13.502188, 26.744783, 27.443924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.374085, 27.639225, 27.643770>,  <13.828961, 27.308121, 27.187273>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.374085, 27.639225, 27.643770> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.431180, 27.252850, 27.730110>,  <13.465437, 27.021025, 27.781914>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.431180, 27.252850, 27.730110>,  <13.374085, 27.639225, 27.643770>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.431180, 27.252850, 27.730110> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123581, 0.233771, 0.964406,
		-0.982016, -0.110979, 0.152739,
		0.142735, -0.965937, 0.215852,
		13.474001, 26.963068, 27.794867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.046289, 27.492044, 28.367146>,  <13.374085, 27.639225, 27.643770>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.046289, 27.492044, 28.367146> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.296193, 27.186373, 28.303013>,  <13.446136, 27.002970, 28.264534>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.296193, 27.186373, 28.303013>,  <13.046289, 27.492044, 28.367146>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.296193, 27.186373, 28.303013> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389242, 0.126807, 0.912365,
		-0.676880, -0.632415, 0.376675,
		0.624759, -0.764180, -0.160329,
		13.483621, 26.957119, 28.254913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.864914, 26.957613, 28.847363>,  <13.046289, 27.492044, 28.367146>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.864914, 26.957613, 28.847363> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.245131, 26.903946, 28.735315>,  <13.473262, 26.871746, 28.668087>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.245131, 26.903946, 28.735315>,  <12.864914, 26.957613, 28.847363>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.245131, 26.903946, 28.735315> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255113, -0.177159, 0.950543,
		-0.177159, -0.974994, -0.134169,
		-0.950543, 0.134169, 0.280119,
		13.530294, 26.863695, 28.651279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<13.884160, 19.328953, 14.376751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.243529, 19.195162, 14.490564>,  <14.459151, 19.114887, 14.558852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.243529, 19.195162, 14.490564>,  <13.884160, 19.328953, 14.376751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.243529, 19.195162, 14.490564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220511, 0.216696, 0.951009,
		-0.379750, -0.917151, 0.120928,
		0.898423, -0.334480, 0.284532,
		14.513057, 19.094818, 14.575924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.862250, 18.778902, 15.003968>,  <13.884160, 19.328953, 14.376751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.862250, 18.778902, 15.003968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.226667, 18.943754, 15.008875>,  <14.445317, 19.042665, 15.011819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.226667, 18.943754, 15.008875>,  <13.862250, 18.778902, 15.003968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.226667, 18.943754, 15.008875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141064, 0.283601, 0.948510,
		0.387433, -0.865862, 0.316509,
		0.911041, 0.412132, 0.012266,
		14.499980, 19.067394, 15.012555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.159737, 18.647184, 15.656208>,  <13.862250, 18.778902, 15.003968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.159737, 18.647184, 15.656208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.366772, 18.963774, 15.526180>,  <14.490993, 19.153728, 15.448164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.366772, 18.963774, 15.526180>,  <14.159737, 18.647184, 15.656208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.366772, 18.963774, 15.526180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100844, 0.433698, 0.895397,
		0.849667, -0.430665, 0.304292,
		0.517587, 0.791476, -0.325069,
		14.522048, 19.201216, 15.428659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.576815, 18.838343, 16.295727>,  <14.159737, 18.647184, 15.656208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.576815, 18.838343, 16.295727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.600577, 19.162382, 16.062416>,  <14.614835, 19.356806, 15.922429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.600577, 19.162382, 16.062416>,  <14.576815, 18.838343, 16.295727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.600577, 19.162382, 16.062416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180970, 0.583367, 0.791790,
		0.981693, 0.058518, 0.181259,
		0.059407, 0.810098, -0.583277,
		14.618400, 19.405411, 15.887433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.172141, 19.174931, 16.555653>,  <14.576815, 18.838343, 16.295727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.172141, 19.174931, 16.555653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.947778, 19.440987, 16.358484>,  <14.813160, 19.600620, 16.240183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.947778, 19.440987, 16.358484>,  <15.172141, 19.174931, 16.555653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.947778, 19.440987, 16.358484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096699, 0.643966, 0.758919,
		0.822212, 0.378018, -0.425523,
		-0.560908, 0.665140, -0.492922,
		14.779506, 19.640528, 16.210608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.495639, 19.856222, 16.765738>,  <15.172141, 19.174931, 16.555653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.495639, 19.856222, 16.765738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.144857, 19.940145, 16.592796>,  <14.934388, 19.990499, 16.489031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.144857, 19.940145, 16.592796>,  <15.495639, 19.856222, 16.765738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.144857, 19.940145, 16.592796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140503, 0.748420, 0.648171,
		0.459576, 0.629164, -0.626852,
		-0.876955, 0.209809, -0.432355,
		14.881771, 20.003088, 16.463089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.445131, 20.628845, 16.845480>,  <15.495639, 19.856222, 16.765738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.445131, 20.628845, 16.845480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.076562, 20.511520, 16.743540>,  <14.855420, 20.441126, 16.682377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.076562, 20.511520, 16.743540>,  <15.445131, 20.628845, 16.845480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.076562, 20.511520, 16.743540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386424, 0.760427, 0.521945,
		0.040702, 0.579412, -0.814018,
		-0.921423, -0.293312, -0.254850,
		14.800135, 20.423527, 16.667086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.123348, 21.203928, 16.619278>,  <15.445131, 20.628845, 16.845480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.123348, 21.203928, 16.619278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.820965, 20.971766, 16.740377>,  <14.639535, 20.832468, 16.813038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.820965, 20.971766, 16.740377>,  <15.123348, 21.203928, 16.619278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.820965, 20.971766, 16.740377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248819, 0.682531, 0.687198,
		-0.605488, 0.444164, -0.660381,
		-0.755959, -0.580405, 0.302748,
		14.594177, 20.797644, 16.831202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.517067, 21.629108, 16.687300>,  <15.123348, 21.203928, 16.619278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.517067, 21.629108, 16.687300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.407423, 21.307581, 16.898483>,  <14.341637, 21.114664, 17.025192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.407423, 21.307581, 16.898483>,  <14.517067, 21.629108, 16.687300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.407423, 21.307581, 16.898483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511066, 0.586804, 0.628071,
		-0.814662, -0.097660, -0.571653,
		-0.274111, -0.803818, 0.527958,
		14.325190, 21.066435, 17.056871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.779110, 21.650105, 16.820143>,  <14.517067, 21.629108, 16.687300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.779110, 21.650105, 16.820143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.929370, 21.423906, 17.113838>,  <14.019526, 21.288187, 17.290054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.929370, 21.423906, 17.113838>,  <13.779110, 21.650105, 16.820143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.929370, 21.423906, 17.113838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498039, 0.544957, 0.674521,
		-0.781565, -0.619062, -0.076925,
		0.375650, -0.565494, 0.734237,
		14.042065, 21.254257, 17.334108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.292389, 21.564980, 17.355860>,  <13.779110, 21.650105, 16.820143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.292389, 21.564980, 17.355860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.613787, 21.462313, 17.570715>,  <13.806625, 21.400711, 17.699629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.613787, 21.462313, 17.570715>,  <13.292389, 21.564980, 17.355860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.613787, 21.462313, 17.570715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356088, 0.515853, 0.779164,
		-0.477072, -0.817323, 0.323088,
		0.803495, -0.256670, 0.537138,
		13.854836, 21.385311, 17.731855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.979913, 21.492252, 18.068325>,  <13.292389, 21.564980, 17.355860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.979913, 21.492252, 18.068325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.377098, 21.529688, 18.097353>,  <13.615409, 21.552149, 18.114769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.377098, 21.529688, 18.097353>,  <12.979913, 21.492252, 18.068325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.377098, 21.529688, 18.097353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102968, 0.379566, 0.919417,
		0.058501, -0.920419, 0.386531,
		0.992963, 0.093587, 0.072569,
		13.674987, 21.557764, 18.119123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.585435, 20.869421, 18.377007>,  <12.979913, 21.492252, 18.068325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.585435, 20.869421, 18.377007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.187060, 20.871878, 18.412951>,  <11.948036, 20.873352, 18.434517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.187060, 20.871878, 18.412951>,  <12.585435, 20.869421, 18.377007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.187060, 20.871878, 18.412951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088811, -0.233086, -0.968392,
		0.015000, -0.972437, 0.232684,
		-0.995936, 0.006139, 0.089860,
		11.888280, 20.873720, 18.439909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.408665, 20.291910, 18.044384>,  <12.585435, 20.869421, 18.377007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.408665, 20.291910, 18.044384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.046249, 20.460918, 18.034842>,  <11.828800, 20.562323, 18.029116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.046249, 20.460918, 18.034842>,  <12.408665, 20.291910, 18.044384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.046249, 20.460918, 18.034842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215832, -0.509843, -0.832752,
		-0.364018, -0.749357, 0.553132,
		-0.906039, 0.422521, -0.023857,
		11.774438, 20.587675, 18.027685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.931237, 19.781719, 17.931387>,  <12.408665, 20.291910, 18.044384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.931237, 19.781719, 17.931387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.726508, 20.105606, 17.816570>,  <11.603671, 20.299938, 17.747681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.726508, 20.105606, 17.816570>,  <11.931237, 19.781719, 17.931387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.726508, 20.105606, 17.816570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318420, -0.489128, -0.812011,
		-0.797902, -0.324205, 0.508177,
		-0.511821, 0.809719, -0.287043,
		11.572962, 20.348522, 17.730457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.163568, 19.614012, 17.804758>,  <11.931237, 19.781719, 17.931387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.163568, 19.614012, 17.804758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.261275, 19.936216, 17.588800>,  <11.319900, 20.129539, 17.459227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.261275, 19.936216, 17.588800>,  <11.163568, 19.614012, 17.804758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.261275, 19.936216, 17.588800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395880, -0.425415, -0.813819,
		-0.885219, 0.412522, 0.214971,
		0.244267, 0.805511, -0.539895,
		11.334556, 20.177870, 17.426832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.652443, 19.596018, 17.358536>,  <11.163568, 19.614012, 17.804758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.652443, 19.596018, 17.358536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.922703, 19.849669, 17.208134>,  <11.084859, 20.001858, 17.117891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.922703, 19.849669, 17.208134>,  <10.652443, 19.596018, 17.358536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.922703, 19.849669, 17.208134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300707, -0.228621, -0.925909,
		-0.673106, 0.738659, 0.036218,
		0.675650, 0.634126, -0.376007,
		11.125398, 20.039906, 17.095331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.266153, 20.123055, 17.103245>,  <10.652443, 19.596018, 17.358536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.266153, 20.123055, 17.103245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.600200, 20.143667, 16.884182>,  <10.800628, 20.156034, 16.752745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.600200, 20.143667, 16.884182>,  <10.266153, 20.123055, 17.103245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.600200, 20.143667, 16.884182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539612, -0.116515, -0.833812,
		-0.106779, 0.991851, -0.069496,
		0.835115, 0.051533, -0.547656,
		10.850734, 20.159126, 16.719885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.120014, 20.484825, 16.505617>,  <10.266153, 20.123055, 17.103245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.120014, 20.484825, 16.505617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.458122, 20.300909, 16.396723>,  <10.660987, 20.190559, 16.331387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.458122, 20.300909, 16.396723>,  <10.120014, 20.484825, 16.505617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.458122, 20.300909, 16.396723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392548, -0.188671, -0.900172,
		0.362526, 0.867754, -0.339967,
		0.845270, -0.459789, -0.272237,
		10.711703, 20.162971, 16.315052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.402170, 20.803970, 15.918730>,  <10.120014, 20.484825, 16.505617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.402170, 20.803970, 15.918730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.526595, 20.424604, 15.943215>,  <10.601251, 20.196985, 15.957907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.526595, 20.424604, 15.943215>,  <10.402170, 20.803970, 15.918730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.526595, 20.424604, 15.943215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560657, -0.235131, -0.793963,
		0.767401, 0.212652, -0.604876,
		0.311063, -0.948416, 0.061215,
		10.619914, 20.140079, 15.961579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.683248, 20.653133, 15.287740>,  <10.402170, 20.803970, 15.918730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.683248, 20.653133, 15.287740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.605684, 20.291494, 15.440060>,  <10.559147, 20.074511, 15.531451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.605684, 20.291494, 15.440060>,  <10.683248, 20.653133, 15.287740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.605684, 20.291494, 15.440060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504579, -0.240973, -0.829055,
		0.841308, -0.352904, -0.409462,
		-0.193907, -0.904097, 0.380800,
		10.547512, 20.020266, 15.554299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.498874, 20.091820, 14.684113>,  <10.683248, 20.653133, 15.287740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.498874, 20.091820, 14.684113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.371836, 19.881046, 14.999447>,  <10.295613, 19.754581, 15.188647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.371836, 19.881046, 14.999447>,  <10.498874, 20.091820, 14.684113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.371836, 19.881046, 14.999447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830184, -0.247199, -0.499686,
		0.458178, -0.813161, -0.358944,
		-0.317595, -0.526935, 0.788336,
		10.276557, 19.722965, 15.235948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.163664, 19.544956, 14.397317>,  <10.498874, 20.091820, 14.684113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.163664, 19.544956, 14.397317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.016540, 19.552849, 14.769194>,  <9.928266, 19.557585, 14.992320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.016540, 19.552849, 14.769194>,  <10.163664, 19.544956, 14.397317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.016540, 19.552849, 14.769194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914289, -0.190103, -0.357682,
		0.169679, -0.981566, 0.087963,
		-0.367810, 0.019733, 0.929692,
		9.906197, 19.558769, 15.048101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.652599, 18.856310, 14.375926>,  <10.163664, 19.544956, 14.397317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.652599, 18.856310, 14.375926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.549774, 19.088848, 14.684719>,  <9.488079, 19.228371, 14.869995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.549774, 19.088848, 14.684719>,  <9.652599, 18.856310, 14.375926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.549774, 19.088848, 14.684719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.957770, -0.259742, -0.123328,
		0.128820, -0.771085, 0.623565,
		-0.257063, 0.581345, 0.771983,
		9.472655, 19.263252, 14.916314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.232151, 18.410421, 14.742393>,  <9.652599, 18.856310, 14.375926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.232151, 18.410421, 14.742393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.169894, 18.802256, 14.793292>,  <9.132540, 19.037355, 14.823832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.169894, 18.802256, 14.793292>,  <9.232151, 18.410421, 14.742393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.169894, 18.802256, 14.793292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.987782, -0.155362, -0.012185,
		0.007833, -0.127588, 0.991796,
		-0.155642, 0.979584, 0.127246,
		9.123201, 19.096130, 14.831466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.716416, 18.456387, 15.211790>,  <9.232151, 18.410421, 14.742393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.716416, 18.456387, 15.211790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.722698, 18.796091, 15.000695>,  <8.726467, 18.999914, 14.874038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.722698, 18.796091, 15.000695>,  <8.716416, 18.456387, 15.211790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.722698, 18.796091, 15.000695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.993781, -0.044935, -0.101886,
		-0.110241, 0.526056, 0.843274,
		0.015705, 0.849262, -0.527738,
		8.727409, 19.050869, 14.842374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.284550, 18.272709, 15.603107>,  <8.716416, 18.456387, 15.211790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.284550, 18.272709, 15.603107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.583907, 18.172960, 15.848945>,  <9.763521, 18.113111, 15.996447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.583907, 18.172960, 15.848945>,  <9.284550, 18.272709, 15.603107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.583907, 18.172960, 15.848945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642100, 0.504574, -0.577159,
		-0.166182, 0.826571, 0.537740,
		0.748393, -0.249369, 0.614592,
		9.808425, 18.098150, 16.033321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.980625, 18.328896, 16.331785>,  <9.284550, 18.272709, 15.603107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.980625, 18.328896, 16.331785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.353572, 18.193684, 16.383055>,  <9.577340, 18.112556, 16.413816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.353572, 18.193684, 16.383055>,  <8.980625, 18.328896, 16.331785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.353572, 18.193684, 16.383055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215113, -0.233800, 0.948190,
		-0.290552, -0.911631, -0.290702,
		0.932365, -0.338033, 0.128173,
		9.633282, 18.092274, 16.421507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.969775, 17.734776, 16.702877>,  <8.980625, 18.328896, 16.331785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.969775, 17.734776, 16.702877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.357306, 17.810957, 16.766245>,  <9.589826, 17.856667, 16.804266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.357306, 17.810957, 16.766245>,  <8.969775, 17.734776, 16.702877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.357306, 17.810957, 16.766245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105759, -0.260302, 0.959718,
		0.224020, -0.946557, -0.232046,
		0.968829, 0.190455, 0.158419,
		9.647955, 17.868093, 16.813770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.181403, 17.180017, 17.048168>,  <8.969775, 17.734776, 16.702877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.181403, 17.180017, 17.048168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.450943, 17.468504, 17.112391>,  <9.612667, 17.641596, 17.150923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.450943, 17.468504, 17.112391>,  <9.181403, 17.180017, 17.048168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.450943, 17.468504, 17.112391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046049, -0.257868, 0.965082,
		0.737433, -0.642926, -0.206975,
		0.673848, 0.721214, 0.160555,
		9.653097, 17.684868, 17.160557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.759837, 16.888512, 17.498806>,  <9.181403, 17.180017, 17.048168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.759837, 16.888512, 17.498806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.762714, 17.286749, 17.536205>,  <9.764441, 17.525692, 17.558645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.762714, 17.286749, 17.536205>,  <9.759837, 16.888512, 17.498806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.762714, 17.286749, 17.536205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027151, -0.093660, 0.995234,
		0.999605, -0.004620, -0.027705,
		0.007193, 0.995594, 0.093498,
		9.764873, 17.585426, 17.564255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.200994, 16.924667, 17.932329>,  <9.759837, 16.888512, 17.498806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.200994, 16.924667, 17.932329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.046420, 17.292168, 17.964737>,  <9.953676, 17.512669, 17.984180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.046420, 17.292168, 17.964737>,  <10.200994, 16.924667, 17.932329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.046420, 17.292168, 17.964737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144981, -0.026240, 0.989086,
		0.910851, 0.393963, -0.123062,
		-0.386434, 0.918752, 0.081017,
		9.930490, 17.567793, 17.989042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.659590, 17.250710, 18.330473>,  <10.200994, 16.924667, 17.932329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.659590, 17.250710, 18.330473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.321732, 17.462727, 18.360483>,  <10.119017, 17.589937, 18.378490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.321732, 17.462727, 18.360483>,  <10.659590, 17.250710, 18.330473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.321732, 17.462727, 18.360483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169319, 0.131562, 0.976741,
		0.507842, 0.837704, -0.200869,
		-0.844646, 0.530041, 0.075027,
		10.068337, 17.621738, 18.382992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.752958, 17.685532, 18.809456>,  <10.659590, 17.250710, 18.330473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.752958, 17.685532, 18.809456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.355774, 17.730579, 18.824120>,  <10.117463, 17.757608, 18.832918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.355774, 17.730579, 18.824120>,  <10.752958, 17.685532, 18.809456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.355774, 17.730579, 18.824120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045187, 0.074109, 0.996226,
		0.109477, 0.990871, -0.078677,
		-0.992962, 0.112619, 0.036661,
		10.057885, 17.764364, 18.835117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.560511, 18.302042, 19.248953>,  <10.752958, 17.685532, 18.809456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.560511, 18.302042, 19.248953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.246410, 18.054438, 19.254696>,  <10.057950, 17.905874, 19.258142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.246410, 18.054438, 19.254696>,  <10.560511, 18.302042, 19.248953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.246410, 18.054438, 19.254696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004872, 0.017011, 0.999843,
		-0.619158, 0.785198, -0.010342,
		-0.785251, -0.619011, 0.014358,
		10.010835, 17.868734, 19.259003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.209453, 18.563782, 19.794937>,  <10.560511, 18.302042, 19.248953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.209453, 18.563782, 19.794937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.078506, 18.190859, 19.733438>,  <9.999937, 17.967106, 19.696539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.078506, 18.190859, 19.733438>,  <10.209453, 18.563782, 19.794937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.078506, 18.190859, 19.733438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077539, -0.135657, 0.987717,
		-0.941710, 0.335268, -0.027880,
		-0.327367, -0.932305, -0.153746,
		9.980295, 17.911167, 19.687315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.750443, 18.522705, 20.305262>,  <10.209453, 18.563782, 19.794937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.750443, 18.522705, 20.305262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.807894, 18.139870, 20.204582>,  <9.842364, 17.910168, 20.144175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.807894, 18.139870, 20.204582>,  <9.750443, 18.522705, 20.305262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.807894, 18.139870, 20.204582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250647, -0.281226, 0.926331,
		-0.957364, -0.069960, -0.280283,
		0.143629, -0.957088, -0.251700,
		9.850983, 17.852743, 20.129072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.191447, 18.154823, 20.596394>,  <9.750443, 18.522705, 20.305262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.191447, 18.154823, 20.596394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.487864, 17.891575, 20.543121>,  <9.665713, 17.733625, 20.511158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.487864, 17.891575, 20.543121>,  <9.191447, 18.154823, 20.596394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.487864, 17.891575, 20.543121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062123, -0.264691, 0.962330,
		-0.668580, -0.704852, -0.237031,
		0.741041, -0.658120, -0.133180,
		9.710176, 17.694139, 20.503168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.020030, 17.629637, 20.983025>,  <9.191447, 18.154823, 20.596394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.020030, 17.629637, 20.983025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.404018, 17.543716, 20.911118>,  <9.634412, 17.492165, 20.867973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.404018, 17.543716, 20.911118>,  <9.020030, 17.629637, 20.983025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.404018, 17.543716, 20.911118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111021, -0.297437, 0.948264,
		-0.257152, -0.930266, -0.261685,
		0.959972, -0.214795, -0.179766,
		9.692010, 17.479277, 20.857187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.220997, 16.913162, 21.328917>,  <9.020030, 17.629637, 20.983025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.220997, 16.913162, 21.328917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.570968, 17.097651, 21.269886>,  <9.780951, 17.208344, 21.234467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.570968, 17.097651, 21.269886>,  <9.220997, 16.913162, 21.328917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.570968, 17.097651, 21.269886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326462, -0.336690, 0.883211,
		0.357666, -0.820924, -0.445150,
		0.874928, 0.461219, -0.147578,
		9.833446, 17.236015, 21.225613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.683306, 16.433931, 21.680752>,  <9.220997, 16.913162, 21.328917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.683306, 16.433931, 21.680752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.882618, 16.778170, 21.638617>,  <10.002205, 16.984713, 21.613335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.882618, 16.778170, 21.638617>,  <9.683306, 16.433931, 21.680752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.882618, 16.778170, 21.638617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430477, -0.140101, 0.891662,
		0.752601, -0.489643, -0.440275,
		0.498279, 0.860594, -0.105339,
		10.032102, 17.036348, 21.607016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.312219, 16.266451, 21.999779>,  <9.683306, 16.433931, 21.680752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.312219, 16.266451, 21.999779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.302864, 16.666288, 22.006317>,  <10.297252, 16.906191, 22.010241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.302864, 16.666288, 22.006317>,  <10.312219, 16.266451, 21.999779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.302864, 16.666288, 22.006317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194367, -0.011494, 0.980862,
		0.980650, 0.026116, -0.194019,
		-0.023386, 0.999593, 0.016348,
		10.295848, 16.966166, 22.011221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.984158, 16.490572, 22.206341>,  <10.312219, 16.266451, 21.999779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.984158, 16.490572, 22.206341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.730188, 16.779453, 22.316099>,  <10.577806, 16.952782, 22.381954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.730188, 16.779453, 22.316099>,  <10.984158, 16.490572, 22.206341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.730188, 16.779453, 22.316099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434303, 0.039911, 0.899882,
		0.638947, 0.690528, -0.338996,
		-0.634923, 0.722204, 0.274398,
		10.539711, 16.996115, 22.398418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.357127, 16.956009, 22.632231>,  <10.984158, 16.490572, 22.206341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.357127, 16.956009, 22.632231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.978747, 17.039097, 22.731855>,  <10.751719, 17.088949, 22.791630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.978747, 17.039097, 22.731855>,  <11.357127, 16.956009, 22.632231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.978747, 17.039097, 22.731855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309327, 0.347113, 0.885341,
		0.097452, 0.914530, -0.392605,
		-0.945949, 0.207722, 0.249062,
		10.694963, 17.101414, 22.806574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.464761, 17.551998, 23.006454>,  <11.357127, 16.956009, 22.632231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.464761, 17.551998, 23.006454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.087846, 17.446873, 23.089422>,  <10.861696, 17.383797, 23.139202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.087846, 17.446873, 23.089422>,  <11.464761, 17.551998, 23.006454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.087846, 17.446873, 23.089422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068283, 0.455644, 0.887539,
		-0.327766, 0.850481, -0.411402,
		-0.942288, -0.262814, 0.207418,
		10.805160, 17.368029, 23.151648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.206973, 18.160007, 23.323484>,  <11.464761, 17.551998, 23.006454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.206973, 18.160007, 23.323484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.960732, 17.863972, 23.431784>,  <10.812988, 17.686350, 23.496763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.960732, 17.863972, 23.431784>,  <11.206973, 18.160007, 23.323484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.960732, 17.863972, 23.431784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106362, 0.418449, 0.901991,
		-0.780847, 0.526470, -0.336315,
		-0.615601, -0.740088, 0.270749,
		10.776052, 17.641945, 23.513008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.733801, 18.444553, 23.659319>,  <11.206973, 18.160007, 23.323484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.733801, 18.444553, 23.659319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.694263, 18.066170, 23.782860>,  <10.670541, 17.839140, 23.856985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.694263, 18.066170, 23.782860>,  <10.733801, 18.444553, 23.659319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.694263, 18.066170, 23.782860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108084, 0.318742, 0.941659,
		-0.989216, 0.059695, -0.133749,
		-0.098844, -0.945960, 0.308852,
		10.664610, 17.782381, 23.875515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.201794, 18.399792, 24.213133>,  <10.733801, 18.444553, 23.659319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.201794, 18.399792, 24.213133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.436523, 18.081581, 24.273502>,  <10.577361, 17.890656, 24.309723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.436523, 18.081581, 24.273502>,  <10.201794, 18.399792, 24.213133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.436523, 18.081581, 24.273502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018763, 0.199698, 0.979678,
		-0.809497, -0.572066, 0.132114,
		0.586824, -0.795525, 0.150921,
		10.612571, 17.842924, 24.318779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.931769, 18.040796, 24.729141>,  <10.201794, 18.399792, 24.213133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.931769, 18.040796, 24.729141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.310914, 17.913441, 24.723707>,  <10.538401, 17.837027, 24.720446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.310914, 17.913441, 24.723707>,  <9.931769, 18.040796, 24.729141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.310914, 17.913441, 24.723707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128742, 0.343571, 0.930260,
		-0.291518, -0.883508, 0.366649,
		0.947862, -0.318391, -0.013587,
		10.595273, 17.817923, 24.719631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.001506, 17.599546, 25.365248>,  <9.931769, 18.040796, 24.729141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.001506, 17.599546, 25.365248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.368087, 17.719128, 25.258860>,  <10.588036, 17.790876, 25.195026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.368087, 17.719128, 25.258860>,  <10.001506, 17.599546, 25.365248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.368087, 17.719128, 25.258860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235652, 0.133967, 0.962560,
		0.323393, -0.944817, 0.052325,
		0.916453, 0.298955, -0.265972,
		10.643023, 17.808813, 25.179068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.356906, 17.317163, 25.899353>,  <10.001506, 17.599546, 25.365248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.356906, 17.317163, 25.899353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.575312, 17.606245, 25.729851>,  <10.706355, 17.779694, 25.628149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.575312, 17.606245, 25.729851>,  <10.356906, 17.317163, 25.899353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.575312, 17.606245, 25.729851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426514, 0.195558, 0.883087,
		0.721078, -0.662917, -0.201465,
		0.546015, 0.722702, -0.423756,
		10.739116, 17.823055, 25.602724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.925161, 17.346685, 26.258524>,  <10.356906, 17.317163, 25.899353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.925161, 17.346685, 26.258524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.935108, 17.695621, 26.063217>,  <10.941076, 17.904984, 25.946033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.935108, 17.695621, 26.063217>,  <10.925161, 17.346685, 26.258524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.935108, 17.695621, 26.063217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422421, 0.433501, 0.796013,
		0.906059, -0.226048, -0.357715,
		0.024867, 0.872341, -0.488265,
		10.942569, 17.957323, 25.916739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.580603, 17.614489, 26.500862>,  <10.925161, 17.346685, 26.258524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.580603, 17.614489, 26.500862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.366904, 17.911844, 26.339886>,  <11.238686, 18.090258, 26.243299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.366904, 17.911844, 26.339886>,  <11.580603, 17.614489, 26.500862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.366904, 17.911844, 26.339886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248805, 0.593266, 0.765592,
		0.807885, 0.308885, -0.501909,
		-0.534245, 0.743387, -0.402439,
		11.206631, 18.134861, 26.219154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.008624, 18.209995, 26.511110>,  <11.580603, 17.614489, 26.500862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.008624, 18.209995, 26.511110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.629056, 18.335217, 26.495367>,  <11.401315, 18.410349, 26.485922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.629056, 18.335217, 26.495367>,  <12.008624, 18.209995, 26.511110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.629056, 18.335217, 26.495367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166753, 0.603488, 0.779741,
		0.267851, 0.733349, -0.624864,
		-0.948920, 0.313052, -0.039357,
		11.344380, 18.429132, 26.483561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
