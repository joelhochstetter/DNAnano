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
	<40.169266, 34.931278, 50.269093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.154579, 35.189335, 49.963821>,  <40.145767, 35.344170, 49.780659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.154579, 35.189335, 49.963821>,  <40.169266, 34.931278, 50.269093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.154579, 35.189335, 49.963821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976326, -0.139741, -0.165105,
		-0.213164, -0.751172, -0.624742,
		-0.036720, 0.645146, -0.763176,
		40.143562, 35.382877, 49.734867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.502232, 34.588501, 49.703625>,  <40.169266, 34.931278, 50.269093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.502232, 34.588501, 49.703625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.543873, 34.976738, 49.616795>,  <40.568859, 35.209679, 49.564697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.543873, 34.976738, 49.616795>,  <40.502232, 34.588501, 49.703625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.543873, 34.976738, 49.616795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959865, -0.155200, -0.233606,
		-0.260424, -0.184039, -0.947791,
		0.104104, 0.970589, -0.217071,
		40.575104, 35.267914, 49.551674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.854218, 34.550980, 49.083393>,  <40.502232, 34.588501, 49.703625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.854218, 34.550980, 49.083393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.921345, 34.900219, 49.266491>,  <40.961620, 35.109764, 49.376350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.921345, 34.900219, 49.266491>,  <40.854218, 34.550980, 49.083393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.921345, 34.900219, 49.266491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972171, -0.223567, 0.070018,
		0.163469, 0.433255, -0.886323,
		0.167816, 0.873103, 0.457744,
		40.971691, 35.162151, 49.403812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.328339, 34.881702, 48.608940>,  <40.854218, 34.550980, 49.083393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.328339, 34.881702, 48.608940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.354607, 35.053963, 48.968990>,  <41.370365, 35.157318, 49.185020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.354607, 35.053963, 48.968990>,  <41.328339, 34.881702, 48.608940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.354607, 35.053963, 48.968990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993450, 0.056318, -0.099421,
		-0.093509, 0.900760, -0.424131,
		0.065668, 0.430650, 0.900127,
		41.374306, 35.183159, 49.239029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.819099, 35.470364, 48.602772>,  <41.328339, 34.881702, 48.608940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.819099, 35.470364, 48.602772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.785172, 35.393986, 48.993942>,  <41.764816, 35.348160, 49.228645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.785172, 35.393986, 48.993942>,  <41.819099, 35.470364, 48.602772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.785172, 35.393986, 48.993942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990386, 0.091478, 0.103762,
		-0.109271, 0.977330, 0.181345,
		-0.084821, -0.190940, 0.977930,
		41.759724, 35.336704, 49.287323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.431969, 35.749748, 48.837799>,  <41.819099, 35.470364, 48.602772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.431969, 35.749748, 48.837799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.323307, 35.566208, 49.176186>,  <42.258110, 35.456085, 49.379219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.323307, 35.566208, 49.176186>,  <42.431969, 35.749748, 48.837799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.323307, 35.566208, 49.176186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962224, -0.146072, 0.229757,
		0.018148, 0.876424, 0.481198,
		-0.271654, -0.458851, 0.845967,
		42.241810, 35.428555, 49.429977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.621628, 36.131943, 49.470924>,  <42.431969, 35.749748, 48.837799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.621628, 36.131943, 49.470924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.611282, 35.742096, 49.559879>,  <42.605076, 35.508186, 49.613251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.611282, 35.742096, 49.559879>,  <42.621628, 36.131943, 49.470924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.611282, 35.742096, 49.559879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935369, 0.054901, 0.349385,
		-0.352725, 0.217047, 0.910206,
		-0.025862, -0.974616, 0.222384,
		42.603523, 35.449711, 49.626595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.886677, 36.067966, 50.102219>,  <42.621628, 36.131943, 49.470924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.886677, 36.067966, 50.102219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.935215, 35.701073, 49.950451>,  <42.964336, 35.480938, 49.859390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.935215, 35.701073, 49.950451>,  <42.886677, 36.067966, 50.102219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.935215, 35.701073, 49.950451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938496, -0.018470, 0.344794,
		-0.323265, -0.397921, 0.858579,
		0.121343, -0.917234, -0.379418,
		42.971619, 35.425903, 49.836624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.475655, 35.765415, 50.634979>,  <42.886677, 36.067966, 50.102219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.475655, 35.765415, 50.634979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.434456, 35.502972, 50.335938>,  <43.409737, 35.345505, 50.156513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.434456, 35.502972, 50.335938>,  <43.475655, 35.765415, 50.634979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.434456, 35.502972, 50.335938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781119, -0.518682, 0.347593,
		-0.615829, -0.548170, 0.565919,
		-0.102992, -0.656109, -0.747606,
		43.403557, 35.306141, 50.111656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.614307, 35.092308, 50.889801>,  <43.475655, 35.765415, 50.634979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.614307, 35.092308, 50.889801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.702362, 35.089584, 50.499622>,  <43.755196, 35.087952, 50.265514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.702362, 35.089584, 50.499622>,  <43.614307, 35.092308, 50.889801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.702362, 35.089584, 50.499622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843419, -0.501071, 0.193835,
		-0.490087, -0.865379, -0.104559,
		0.220132, -0.006809, -0.975447,
		43.768402, 35.087543, 50.206989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.875683, 34.499630, 50.808365>,  <43.614307, 35.092308, 50.889801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.875683, 34.499630, 50.808365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.012798, 34.691227, 50.485115>,  <44.095066, 34.806183, 50.291164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.012798, 34.691227, 50.485115>,  <43.875683, 34.499630, 50.808365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.012798, 34.691227, 50.485115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857517, -0.510830, 0.060965,
		-0.383613, -0.713879, -0.585848,
		0.342790, 0.478988, -0.808125,
		44.115635, 34.834923, 50.242676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.223644, 33.970825, 50.478168>,  <43.875683, 34.499630, 50.808365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.223644, 33.970825, 50.478168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.369198, 34.304699, 50.312813>,  <44.456532, 34.505024, 50.213600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.369198, 34.304699, 50.312813>,  <44.223644, 33.970825, 50.478168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.369198, 34.304699, 50.312813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908467, -0.416010, -0.040289,
		-0.205603, -0.360890, -0.909662,
		0.363889, 0.834682, -0.413390,
		44.478363, 34.555103, 50.188797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.766785, 33.803139, 50.008888>,  <44.223644, 33.970825, 50.478168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.766785, 33.803139, 50.008888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.822468, 34.195217, 50.065216>,  <44.855877, 34.430466, 50.099014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.822468, 34.195217, 50.065216>,  <44.766785, 33.803139, 50.008888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.822468, 34.195217, 50.065216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977791, -0.158559, 0.137056,
		0.156670, 0.118613, -0.980503,
		0.139211, 0.980199, 0.140821,
		44.864231, 34.489277, 50.107464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.432663, 33.971767, 49.587524>,  <44.766785, 33.803139, 50.008888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.432663, 33.971767, 49.587524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.382751, 34.256302, 49.864201>,  <45.352806, 34.427021, 50.030209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.382751, 34.256302, 49.864201>,  <45.432663, 33.971767, 49.587524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.382751, 34.256302, 49.864201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985418, 0.007561, 0.169984,
		0.115686, 0.702816, -0.701902,
		-0.124775, 0.711332, 0.691692,
		45.345318, 34.469700, 50.071709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.029705, 34.472214, 49.579220>,  <45.432663, 33.971767, 49.587524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.029705, 34.472214, 49.579220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.848251, 34.564907, 49.923435>,  <45.739380, 34.620522, 50.129963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.848251, 34.564907, 49.923435>,  <46.029705, 34.472214, 49.579220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.848251, 34.564907, 49.923435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889827, 0.171162, 0.422980,
		-0.049273, 0.957603, -0.283846,
		-0.453630, 0.231732, 0.860535,
		45.712162, 34.634426, 50.181595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.272049, 35.131546, 49.834652>,  <46.029705, 34.472214, 49.579220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.272049, 35.131546, 49.834652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.133102, 34.943199, 50.159027>,  <46.049736, 34.830189, 50.353653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.133102, 34.943199, 50.159027>,  <46.272049, 35.131546, 49.834652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.133102, 34.943199, 50.159027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910329, 0.038198, 0.412119,
		-0.225031, 0.881375, 0.415379,
		-0.347364, -0.470871, 0.810937,
		46.028893, 34.801937, 50.402309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.410103, 35.603176, 50.338577>,  <46.272049, 35.131546, 49.834652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.410103, 35.603176, 50.338577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.352840, 35.256096, 50.528988>,  <46.318485, 35.047848, 50.643234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.352840, 35.256096, 50.528988>,  <46.410103, 35.603176, 50.338577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.352840, 35.256096, 50.528988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759997, 0.211724, 0.614473,
		-0.633965, 0.449744, 0.629141,
		-0.143152, -0.867700, 0.476030,
		46.309895, 34.995785, 50.671799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.433590, 35.814896, 50.999619>,  <46.410103, 35.603176, 50.338577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.433590, 35.814896, 50.999619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.523357, 35.425106, 51.001732>,  <46.577217, 35.191231, 51.003002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.523357, 35.425106, 51.001732>,  <46.433590, 35.814896, 50.999619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.523357, 35.425106, 51.001732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919598, 0.213572, 0.329737,
		-0.322451, -0.069139, 0.944058,
		0.224422, -0.974478, 0.005286,
		46.590683, 35.132763, 51.003319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.750179, 35.667400, 51.660023>,  <46.433590, 35.814896, 50.999619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.750179, 35.667400, 51.660023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.865139, 35.383305, 51.402973>,  <46.934113, 35.212849, 51.248745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.865139, 35.383305, 51.402973>,  <46.750179, 35.667400, 51.660023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.865139, 35.383305, 51.402973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954210, 0.154186, 0.256339,
		-0.082979, -0.686867, 0.722031,
		0.287397, -0.710240, -0.642621,
		46.951359, 35.170231, 51.210186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.335377, 35.535526, 51.970432>,  <46.750179, 35.667400, 51.660023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.335377, 35.535526, 51.970432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.361664, 35.317791, 51.635918>,  <47.377438, 35.187149, 51.435207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.361664, 35.317791, 51.635918>,  <47.335377, 35.535526, 51.970432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.361664, 35.317791, 51.635918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997743, 0.024284, 0.062600,
		-0.013767, -0.838516, 0.544703,
		0.065719, -0.544336, -0.836289,
		47.381378, 35.154491, 51.385033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.715122, 34.941727, 52.077568>,  <47.335377, 35.535526, 51.970432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.715122, 34.941727, 52.077568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.741570, 35.014618, 51.685154>,  <47.757439, 35.058353, 51.449707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.741570, 35.014618, 51.685154>,  <47.715122, 34.941727, 52.077568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.741570, 35.014618, 51.685154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992552, -0.112824, 0.045940,
		-0.102312, -0.976763, -0.188327,
		0.066120, 0.182225, -0.981031,
		47.761406, 35.069286, 51.390846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<24.332952, 34.867496, 51.714809> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.431499, 35.243259, 51.810146>,  <24.490627, 35.468719, 51.867348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.431499, 35.243259, 51.810146>,  <24.332952, 34.867496, 51.714809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.431499, 35.243259, 51.810146> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967205, -0.222641, -0.122253,
		-0.061781, 0.260649, -0.963455,
		0.246369, 0.939411, 0.238346,
		24.505411, 35.525082, 51.881649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.796831, 35.194336, 51.156269>,  <24.332952, 34.867496, 51.714809>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.796831, 35.194336, 51.156269> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.855034, 35.373962, 51.508896>,  <24.889956, 35.481739, 51.720474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.855034, 35.373962, 51.508896>,  <24.796831, 35.194336, 51.156269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.855034, 35.373962, 51.508896> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958407, -0.285109, -0.012955,
		0.245526, 0.846788, -0.471877,
		0.145507, 0.449069, 0.881569,
		24.898685, 35.508682, 51.773365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.519642, 35.399578, 51.045452>,  <24.796831, 35.194336, 51.156269>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.519642, 35.399578, 51.045452> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.443123, 35.425179, 51.437229>,  <25.397211, 35.440536, 51.672295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.443123, 35.425179, 51.437229>,  <25.519642, 35.399578, 51.045452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.443123, 35.425179, 51.437229> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952047, -0.230647, 0.201019,
		0.238770, 0.970931, -0.016808,
		-0.191299, 0.063999, 0.979443,
		25.385733, 35.444378, 51.731064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.092243, 35.768532, 51.385197>,  <25.519642, 35.399578, 51.045452>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.092243, 35.768532, 51.385197> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.918865, 35.546207, 51.668941>,  <25.814838, 35.412811, 51.839188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.918865, 35.546207, 51.668941>,  <26.092243, 35.768532, 51.385197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.918865, 35.546207, 51.668941> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894374, -0.361867, 0.262957,
		0.110540, 0.748414, 0.653956,
		-0.433446, -0.555814, 0.709363,
		25.788832, 35.379463, 51.881752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.472286, 35.909885, 52.012127>,  <26.092243, 35.768532, 51.385197>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.472286, 35.909885, 52.012127> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.303076, 35.556751, 52.093761>,  <26.201550, 35.344872, 52.142742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.303076, 35.556751, 52.093761>,  <26.472286, 35.909885, 52.012127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.303076, 35.556751, 52.093761> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830970, -0.288169, 0.475865,
		-0.361299, 0.370893, 0.855512,
		-0.423027, -0.882835, 0.204086,
		26.176168, 35.291901, 52.154987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.629719, 35.763359, 52.708618>,  <26.472286, 35.909885, 52.012127>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.629719, 35.763359, 52.708618> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.531582, 35.399796, 52.573742>,  <26.472700, 35.181656, 52.492817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.531582, 35.399796, 52.573742>,  <26.629719, 35.763359, 52.708618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.531582, 35.399796, 52.573742> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912528, -0.333936, 0.236179,
		-0.327264, -0.249748, 0.911331,
		-0.245341, -0.908907, -0.337187,
		26.457979, 35.127125, 52.472588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.901688, 35.277027, 53.188107>,  <26.629719, 35.763359, 52.708618>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.901688, 35.277027, 53.188107> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.853445, 35.103798, 52.830807>,  <26.824499, 34.999859, 52.616425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.853445, 35.103798, 52.830807>,  <26.901688, 35.277027, 53.188107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.853445, 35.103798, 52.830807> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915795, -0.395805, 0.068249,
		-0.383111, -0.809806, 0.444344,
		-0.120605, -0.433074, -0.893253,
		26.817263, 34.973877, 52.562832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.080246, 34.567039, 53.288895>,  <26.901688, 35.277027, 53.188107>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.080246, 34.567039, 53.288895> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.123457, 34.633194, 52.896778>,  <27.149384, 34.672886, 52.661507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.123457, 34.633194, 52.896778>,  <27.080246, 34.567039, 53.288895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.123457, 34.633194, 52.896778> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888677, -0.458069, 0.020651,
		-0.445628, -0.873396, -0.196458,
		0.108028, 0.165385, -0.980295,
		27.155865, 34.682808, 52.602688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.397875, 33.933887, 53.111000>,  <27.080246, 34.567039, 53.288895>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.397875, 33.933887, 53.111000> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.472067, 34.182262, 52.806358>,  <27.516582, 34.331287, 52.623573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.472067, 34.182262, 52.806358>,  <27.397875, 33.933887, 53.111000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.472067, 34.182262, 52.806358> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923013, -0.375984, -0.081748,
		-0.337111, -0.687807, -0.642867,
		0.185481, 0.620933, -0.761603,
		27.527712, 34.368542, 52.577877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.894547, 33.567570, 52.675453>,  <27.397875, 33.933887, 53.111000>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.894547, 33.567570, 52.675453> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.932529, 33.953896, 52.578968>,  <27.955318, 34.185692, 52.521076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.932529, 33.953896, 52.578968>,  <27.894547, 33.567570, 52.675453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.932529, 33.953896, 52.578968> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979703, -0.133636, -0.149413,
		-0.176541, -0.222130, -0.958901,
		0.094955, 0.965816, -0.241213,
		27.961016, 34.243641, 52.506603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.211035, 33.613777, 52.055351>,  <27.894547, 33.567570, 52.675453>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.211035, 33.613777, 52.055351> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.277351, 33.969379, 52.226082>,  <28.317142, 34.182739, 52.328522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.277351, 33.969379, 52.226082>,  <28.211035, 33.613777, 52.055351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.277351, 33.969379, 52.226082> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956176, -0.038997, -0.290182,
		-0.241328, 0.456235, -0.856511,
		0.165793, 0.889005, 0.426830,
		28.327089, 34.236080, 52.354130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.757133, 33.795681, 51.573864>,  <28.211035, 33.613777, 52.055351>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.757133, 33.795681, 51.573864> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.745180, 34.100269, 51.832870>,  <28.738008, 34.283020, 51.988274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.745180, 34.100269, 51.832870>,  <28.757133, 33.795681, 51.573864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.745180, 34.100269, 51.832870> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905962, 0.294324, -0.304313,
		-0.422303, 0.577529, -0.698656,
		-0.029882, 0.761468, 0.647513,
		28.736216, 34.328709, 52.027122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.891996, 34.455784, 51.155811>,  <28.757133, 33.795681, 51.573864>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.891996, 34.455784, 51.155811> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.997931, 34.523167, 51.535599>,  <29.061491, 34.563595, 51.763470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.997931, 34.523167, 51.535599>,  <28.891996, 34.455784, 51.155811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.997931, 34.523167, 51.535599> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853017, 0.418247, -0.312141,
		-0.449694, 0.892576, -0.032929,
		0.264837, 0.168457, 0.949465,
		29.077381, 34.573704, 51.820438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.158649, 35.154556, 51.126503>,  <28.891996, 34.455784, 51.155811>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.158649, 35.154556, 51.126503> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.298840, 34.939926, 51.433556>,  <29.382954, 34.811146, 51.617786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.298840, 34.939926, 51.433556>,  <29.158649, 35.154556, 51.126503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.298840, 34.939926, 51.433556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931791, 0.117059, -0.343603,
		0.094512, 0.835692, 0.541004,
		0.350476, -0.536577, 0.767627,
		29.403982, 34.778954, 51.663845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.659094, 35.585991, 51.374489>,  <29.158649, 35.154556, 51.126503>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.659094, 35.585991, 51.374489> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.736835, 35.205105, 51.468735>,  <29.783480, 34.976574, 51.525284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.736835, 35.205105, 51.468735>,  <29.659094, 35.585991, 51.374489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.736835, 35.205105, 51.468735> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941463, 0.113623, -0.317393,
		0.275454, 0.283510, 0.918557,
		0.194353, -0.952214, 0.235616,
		29.795141, 34.919441, 51.539421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.252956, 35.570335, 51.686077>,  <29.659094, 35.585991, 51.374489>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.252956, 35.570335, 51.686077> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.218685, 35.188919, 51.570545>,  <30.198122, 34.960068, 51.501225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.218685, 35.188919, 51.570545>,  <30.252956, 35.570335, 51.686077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.218685, 35.188919, 51.570545> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982977, -0.033608, -0.180630,
		0.162531, -0.299389, 0.940186,
		-0.085676, -0.953539, -0.288830,
		30.192982, 34.902859, 51.483898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.796648, 35.253826, 52.008419>,  <30.252956, 35.570335, 51.686077>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.796648, 35.253826, 52.008419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.699146, 34.986446, 51.727348>,  <30.640646, 34.826019, 51.558704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.699146, 34.986446, 51.727348>,  <30.796648, 35.253826, 52.008419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.699146, 34.986446, 51.727348> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969164, -0.140902, -0.202157,
		0.036124, -0.730285, 0.682187,
		-0.243754, -0.668454, -0.702676,
		30.626020, 34.785912, 51.516544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.256308, 34.607185, 52.221523>,  <30.796648, 35.253826, 52.008419>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.256308, 34.607185, 52.221523> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.152290, 34.581657, 51.836128>,  <31.089880, 34.566341, 51.604893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.152290, 34.581657, 51.836128>,  <31.256308, 34.607185, 52.221523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.152290, 34.581657, 51.836128> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867795, -0.453025, -0.204207,
		-0.423449, -0.889211, 0.173191,
		-0.260043, -0.063823, -0.963485,
		31.074278, 34.562511, 51.547081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.543007, 33.968773, 52.039925>,  <31.256308, 34.607185, 52.221523>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.543007, 33.968773, 52.039925> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.465458, 34.105572, 51.672131>,  <31.418928, 34.187649, 51.451454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.465458, 34.105572, 51.672131>,  <31.543007, 33.968773, 52.039925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.465458, 34.105572, 51.672131> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901254, -0.308125, -0.304632,
		-0.387500, -0.887749, -0.248488,
		-0.193871, 0.341996, -0.919485,
		31.407297, 34.208172, 51.396286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.704790, 33.397377, 51.532013>,  <31.543007, 33.968773, 52.039925>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.704790, 33.397377, 51.532013> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.706045, 33.742092, 51.329113>,  <31.706799, 33.948921, 51.207371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.706045, 33.742092, 51.329113>,  <31.704790, 33.397377, 51.532013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.706045, 33.742092, 51.329113> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949629, -0.161523, -0.268542,
		-0.313361, -0.480861, -0.818888,
		0.003138, 0.861791, -0.507254,
		31.706985, 34.000629, 51.176937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.042103, 33.242813, 50.979263>,  <31.704790, 33.397377, 51.532013>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.042103, 33.242813, 50.979263> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.078327, 33.640980, 50.991547>,  <32.100063, 33.879879, 50.998917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.078327, 33.640980, 50.991547>,  <32.042103, 33.242813, 50.979263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.078327, 33.640980, 50.991547> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896314, -0.068028, -0.438170,
		-0.434073, 0.067207, -0.898367,
		0.090562, 0.995417, 0.030710,
		32.105495, 33.939606, 51.000759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<24.218157, 34.559124, 35.187069> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.220879, 34.958378, 35.162804>,  <24.222511, 35.197929, 35.148247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.220879, 34.958378, 35.162804>,  <24.218157, 34.559124, 35.187069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.220879, 34.958378, 35.162804> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191166, 0.058243, 0.979828,
		0.981534, -0.018261, -0.190413,
		0.006803, 0.998135, -0.060658,
		24.222919, 35.257820, 35.144608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.880953, 35.005192, 35.261894>,  <24.218157, 34.559124, 35.187069>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.880953, 35.005192, 35.261894> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.543785, 35.162205, 35.409081>,  <24.341484, 35.256413, 35.497391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.543785, 35.162205, 35.409081>,  <24.880953, 35.005192, 35.261894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.543785, 35.162205, 35.409081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335106, -0.152037, 0.929833,
		0.420938, 0.907083, -0.003386,
		-0.842920, 0.392537, 0.367967,
		24.290909, 35.279964, 35.519470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.039238, 35.410019, 35.898914>,  <24.880953, 35.005192, 35.261894>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.039238, 35.410019, 35.898914> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.651979, 35.314022, 35.927486>,  <24.419624, 35.256424, 35.944630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.651979, 35.314022, 35.927486>,  <25.039238, 35.410019, 35.898914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.651979, 35.314022, 35.927486> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104184, -0.126688, 0.986456,
		-0.227688, 0.962474, 0.147655,
		-0.968145, -0.239988, 0.071429,
		24.361536, 35.242027, 35.948914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.882353, 35.749813, 36.584595>,  <25.039238, 35.410019, 35.898914>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.882353, 35.749813, 36.584595> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.681644, 35.418793, 36.483887>,  <24.561218, 35.220181, 36.423462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.681644, 35.418793, 36.483887>,  <24.882353, 35.749813, 36.584595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.681644, 35.418793, 36.483887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340257, -0.456431, 0.822129,
		-0.795267, 0.326854, 0.510603,
		-0.501772, -0.827549, -0.251771,
		24.531113, 35.170528, 36.408356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.841455, 35.455727, 37.184368>,  <24.882353, 35.749813, 36.584595>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.841455, 35.455727, 37.184368> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.709206, 35.172733, 36.934517>,  <24.629856, 35.002937, 36.784607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.709206, 35.172733, 36.934517>,  <24.841455, 35.455727, 37.184368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.709206, 35.172733, 36.934517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303422, -0.706394, 0.639487,
		-0.893656, 0.021906, 0.448218,
		-0.330627, -0.707480, -0.624626,
		24.610018, 34.960487, 36.747128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.400364, 34.986385, 37.430489>,  <24.841455, 35.455727, 37.184368>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.400364, 34.986385, 37.430489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.524809, 34.740311, 37.140728>,  <24.599476, 34.592667, 36.966873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.524809, 34.740311, 37.140728>,  <24.400364, 34.986385, 37.430489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.524809, 34.740311, 37.140728> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181786, -0.709632, 0.680717,
		-0.932825, -0.343465, -0.108943,
		0.311112, -0.615186, -0.724400,
		24.618143, 34.555756, 36.923409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.123682, 34.376465, 37.736603>,  <24.400364, 34.986385, 37.430489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.123682, 34.376465, 37.736603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.390121, 34.283527, 37.453102>,  <24.549986, 34.227764, 37.283001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.390121, 34.283527, 37.453102>,  <24.123682, 34.376465, 37.736603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.390121, 34.283527, 37.453102> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195155, -0.862850, 0.466267,
		-0.719879, -0.448896, -0.529402,
		0.666100, -0.232340, -0.708752,
		24.589951, 34.213825, 37.240475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.991940, 33.673309, 37.373554>,  <24.123682, 34.376465, 37.736603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.991940, 33.673309, 37.373554> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.383642, 33.752399, 37.391277>,  <24.618664, 33.799854, 37.401913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.383642, 33.752399, 37.391277>,  <23.991940, 33.673309, 37.373554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.383642, 33.752399, 37.391277> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157459, -0.880167, 0.447787,
		0.127540, -0.431520, -0.893042,
		0.979255, 0.197728, 0.044310,
		24.677418, 33.811718, 37.404572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.415773, 33.031776, 37.153603>,  <23.991940, 33.673309, 37.373554>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.415773, 33.031776, 37.153603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.606880, 33.268787, 37.413033>,  <24.721544, 33.410995, 37.568691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.606880, 33.268787, 37.413033>,  <24.415773, 33.031776, 37.153603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.606880, 33.268787, 37.413033> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178623, -0.788387, 0.588676,
		0.860136, -0.165398, -0.482503,
		0.477765, 0.592528, 0.648576,
		24.750210, 33.446545, 37.607605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.129690, 32.934196, 37.121368>,  <24.415773, 33.031776, 37.153603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.129690, 32.934196, 37.121368> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.975933, 32.991558, 37.486153>,  <24.883678, 33.025974, 37.705025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.975933, 32.991558, 37.486153>,  <25.129690, 32.934196, 37.121368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.975933, 32.991558, 37.486153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160037, -0.962552, 0.218818,
		0.909192, 0.230060, 0.347048,
		-0.384393, 0.143407, 0.911963,
		24.860615, 33.034580, 37.759743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.889280, 32.756233, 37.440239>,  <25.129690, 32.934196, 37.121368>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.889280, 32.756233, 37.440239> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.948669, 32.390339, 37.590557>,  <25.984303, 32.170803, 37.680748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.948669, 32.390339, 37.590557>,  <25.889280, 32.756233, 37.440239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.948669, 32.390339, 37.590557> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545877, 0.392677, 0.740151,
		-0.824605, 0.095244, 0.557633,
		0.148475, -0.914731, 0.375795,
		25.993212, 32.115921, 37.703297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.687298, 32.712143, 38.224415>,  <25.889280, 32.756233, 37.440239>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.687298, 32.712143, 38.224415> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.986717, 32.456512, 38.153698>,  <26.166368, 32.303135, 38.111267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.986717, 32.456512, 38.153698>,  <25.687298, 32.712143, 38.224415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.986717, 32.456512, 38.153698> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529052, 0.414889, 0.740251,
		-0.399727, -0.647647, 0.648669,
		0.748547, -0.639078, -0.176796,
		26.211281, 32.264790, 38.100658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.002787, 32.568901, 38.880070>,  <25.687298, 32.712143, 38.224415>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.002787, 32.568901, 38.880070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.279118, 32.552361, 38.591335>,  <26.444916, 32.542435, 38.418095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.279118, 32.552361, 38.591335>,  <26.002787, 32.568901, 38.880070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.279118, 32.552361, 38.591335> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606913, 0.575763, 0.547862,
		0.392951, -0.816570, 0.422851,
		0.690830, -0.041351, -0.721834,
		26.486366, 32.539955, 38.374786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.606947, 32.686543, 39.260952>,  <26.002787, 32.568901, 38.880070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.606947, 32.686543, 39.260952> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.732775, 32.761250, 38.888680>,  <26.808271, 32.806076, 38.665318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.732775, 32.761250, 38.888680>,  <26.606947, 32.686543, 39.260952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.732775, 32.761250, 38.888680> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545473, 0.766836, 0.338262,
		0.776856, -0.614067, 0.139342,
		0.314568, 0.186774, -0.930678,
		26.827147, 32.817280, 38.609478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.338995, 32.864872, 39.256783>,  <26.606947, 32.686543, 39.260952>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.338995, 32.864872, 39.256783> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.209496, 33.005268, 38.905331>,  <27.131796, 33.089504, 38.694458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.209496, 33.005268, 38.905331>,  <27.338995, 32.864872, 39.256783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.209496, 33.005268, 38.905331> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516095, 0.843836, 0.146924,
		0.792989, -0.405890, -0.454337,
		-0.323751, 0.350990, -0.878630,
		27.112370, 33.110565, 38.641743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.741877, 32.586868, 39.793293>,  <27.338995, 32.864872, 39.256783>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.741877, 32.586868, 39.793293> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.490160, 32.399342, 40.041229>,  <27.339130, 32.286827, 40.189991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.490160, 32.399342, 40.041229>,  <27.741877, 32.586868, 39.793293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.490160, 32.399342, 40.041229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583176, 0.242334, 0.775358,
		-0.513710, 0.849402, 0.120904,
		-0.629292, -0.468818, 0.619840,
		27.301373, 32.258698, 40.227180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.573420, 33.032021, 40.345779>,  <27.741877, 32.586868, 39.793293>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.573420, 33.032021, 40.345779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.578968, 32.643242, 40.439701>,  <27.582298, 32.409977, 40.496056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.578968, 32.643242, 40.439701>,  <27.573420, 33.032021, 40.345779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.578968, 32.643242, 40.439701> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691527, 0.178942, 0.699836,
		-0.722218, 0.152667, 0.674607,
		0.013873, -0.971943, 0.234809,
		27.583130, 32.351658, 40.510143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.577820, 33.060093, 41.136955>,  <27.573420, 33.032021, 40.345779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.577820, 33.060093, 41.136955> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.710539, 32.727566, 40.958599>,  <27.790171, 32.528049, 40.851585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.710539, 32.727566, 40.958599>,  <27.577820, 33.060093, 41.136955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.710539, 32.727566, 40.958599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758485, -0.045948, 0.650069,
		-0.560903, -0.553891, 0.615299,
		0.331796, -0.831320, -0.445891,
		27.810078, 32.478168, 40.824833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.599941, 32.488960, 41.575356>,  <27.577820, 33.060093, 41.136955>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.599941, 32.488960, 41.575356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.865816, 32.402702, 41.289227>,  <28.025341, 32.350948, 41.117550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.865816, 32.402702, 41.289227>,  <27.599941, 32.488960, 41.575356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.865816, 32.402702, 41.289227> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710405, -0.114023, 0.694495,
		-0.231330, -0.969791, 0.077408,
		0.664689, -0.215648, -0.715321,
		28.065224, 32.338009, 41.074631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.123375, 32.122299, 41.920631>,  <27.599941, 32.488960, 41.575356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.123375, 32.122299, 41.920631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.307909, 32.224525, 41.580784>,  <28.418629, 32.285862, 41.376873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.307909, 32.224525, 41.580784>,  <28.123375, 32.122299, 41.920631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.307909, 32.224525, 41.580784> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843834, 0.169425, 0.509155,
		0.274069, -0.951831, -0.137492,
		0.461335, 0.255564, -0.849621,
		28.446310, 32.301193, 41.325897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.689419, 31.684067, 41.818253>,  <28.123375, 32.122299, 41.920631>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.689419, 31.684067, 41.818253> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.741556, 32.050182, 41.665802>,  <28.772839, 32.269852, 41.574333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.741556, 32.050182, 41.665802>,  <28.689419, 31.684067, 41.818253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.741556, 32.050182, 41.665802> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897568, 0.054361, 0.437513,
		0.421169, -0.399111, -0.814449,
		0.130342, 0.915290, -0.381124,
		28.780659, 32.324768, 41.551464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.406378, 31.691690, 41.570164>,  <28.689419, 31.684067, 41.818253>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.406378, 31.691690, 41.570164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.265749, 32.058472, 41.645626>,  <29.181372, 32.278542, 41.690903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.265749, 32.058472, 41.645626>,  <29.406378, 31.691690, 41.570164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.265749, 32.058472, 41.645626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785313, 0.179176, 0.592604,
		0.509589, 0.356495, -0.783090,
		-0.351572, 0.916955, 0.188654,
		29.160278, 32.333557, 41.702221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.853661, 32.089073, 42.006111>,  <29.406378, 31.691690, 41.570164>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.853661, 32.089073, 42.006111> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.870647, 32.390945, 42.267998>,  <29.880838, 32.572071, 42.425129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.870647, 32.390945, 42.267998>,  <29.853661, 32.089073, 42.006111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.870647, 32.390945, 42.267998> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772562, -0.440326, 0.457451,
		0.633518, 0.486380, -0.601739,
		0.042466, 0.754684, 0.654713,
		29.883387, 32.617352, 42.464413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.522652, 32.386414, 42.028706>,  <29.853661, 32.089073, 42.006111>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.522652, 32.386414, 42.028706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.366693, 32.476910, 42.385757>,  <30.273119, 32.531208, 42.599991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.366693, 32.476910, 42.385757>,  <30.522652, 32.386414, 42.028706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.366693, 32.476910, 42.385757> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840632, -0.308272, 0.445315,
		0.375924, 0.924003, -0.069994,
		-0.389895, 0.226244, 0.892634,
		30.249725, 32.544785, 42.653549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.828444, 32.753750, 42.589588>,  <30.522652, 32.386414, 42.028706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.828444, 32.753750, 42.589588> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.493416, 32.830082, 42.794357>,  <30.292400, 32.875881, 42.917217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.493416, 32.830082, 42.794357>,  <30.828444, 32.753750, 42.589588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.493416, 32.830082, 42.794357> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456540, -0.270200, 0.847681,
		0.300086, 0.943703, 0.139188,
		-0.837568, 0.190832, 0.511921,
		30.242146, 32.887333, 42.947933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.909725, 33.098572, 43.135574>,  <30.828444, 32.753750, 42.589588>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.909725, 33.098572, 43.135574> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.577913, 32.997066, 43.334564>,  <30.378826, 32.936165, 43.453960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.577913, 32.997066, 43.334564>,  <30.909725, 33.098572, 43.135574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.577913, 32.997066, 43.334564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534786, -0.104340, 0.838521,
		-0.160878, 0.961623, 0.222261,
		-0.829531, -0.253762, 0.497477,
		30.329054, 32.920937, 43.483807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.807957, 33.543301, 43.661118>,  <30.909725, 33.098572, 43.135574>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.807957, 33.543301, 43.661118> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.629671, 33.201725, 43.768547>,  <30.522699, 32.996780, 43.833004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.629671, 33.201725, 43.768547>,  <30.807957, 33.543301, 43.661118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.629671, 33.201725, 43.768547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498321, 0.012555, 0.866902,
		-0.743650, 0.520227, 0.419938,
		-0.445713, -0.853936, 0.268577,
		30.495956, 32.945545, 43.849121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.327780, 33.627216, 44.260639>,  <30.807957, 33.543301, 43.661118>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.327780, 33.627216, 44.260639> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.534693, 33.288765, 44.209290>,  <30.658840, 33.085693, 44.178482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.534693, 33.288765, 44.209290>,  <30.327780, 33.627216, 44.260639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.534693, 33.288765, 44.209290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586150, 0.240989, 0.773532,
		-0.623574, -0.475380, 0.620620,
		0.517284, -0.846131, -0.128369,
		30.689878, 33.034927, 44.170780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.014269, 33.795555, 44.469971>,  <30.327780, 33.627216, 44.260639>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.014269, 33.795555, 44.469971> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.775875, 33.904053, 44.772289>,  <30.632839, 33.969151, 44.953682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.775875, 33.904053, 44.772289>,  <31.014269, 33.795555, 44.469971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.775875, 33.904053, 44.772289> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768572, -0.079939, 0.634750,
		0.232590, 0.959185, -0.160829,
		-0.595986, 0.271244, 0.755796,
		30.597080, 33.985428, 44.999027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.167873, 34.365730, 44.736851>,  <31.014269, 33.795555, 44.469971>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.167873, 34.365730, 44.736851> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.990936, 34.140842, 45.016350>,  <30.884775, 34.005913, 45.184048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.990936, 34.140842, 45.016350>,  <31.167873, 34.365730, 44.736851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.990936, 34.140842, 45.016350> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885641, -0.151054, 0.439115,
		-0.141328, 0.813079, 0.564738,
		-0.442341, -0.562215, 0.698748,
		30.858234, 33.972179, 45.225975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.195301, 34.726921, 45.481483>,  <31.167873, 34.365730, 44.736851>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.195301, 34.726921, 45.481483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.185684, 34.330051, 45.432484>,  <31.179914, 34.091930, 45.403084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.185684, 34.330051, 45.432484>,  <31.195301, 34.726921, 45.481483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.185684, 34.330051, 45.432484> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912048, -0.071945, 0.403724,
		-0.409379, -0.102018, 0.906643,
		-0.024041, -0.992178, -0.122498,
		31.178473, 34.032398, 45.395733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.419840, 34.550037, 46.070293>,  <31.195301, 34.726921, 45.481483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.419840, 34.550037, 46.070293> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.488400, 34.261845, 45.801510>,  <31.529535, 34.088928, 45.640240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.488400, 34.261845, 45.801510>,  <31.419840, 34.550037, 46.070293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.488400, 34.261845, 45.801510> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950208, -0.059272, 0.305926,
		-0.260242, -0.690938, 0.674447,
		0.171400, -0.720480, -0.671960,
		31.539820, 34.045700, 45.599922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.545153, 33.993889, 46.553562>,  <31.419840, 34.550037, 46.070293>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.545153, 33.993889, 46.553562> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.729696, 34.009323, 46.199013>,  <31.840424, 34.018585, 45.986282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.729696, 34.009323, 46.199013>,  <31.545153, 33.993889, 46.553562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.729696, 34.009323, 46.199013> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885069, 0.049391, 0.462832,
		0.061640, -0.998034, -0.011369,
		0.461360, 0.038591, -0.886373,
		31.868105, 34.020901, 45.933102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.991808, 33.522064, 47.010998>,  <31.545153, 33.993889, 46.553562>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.991808, 33.522064, 47.010998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.377094, 33.511028, 47.117920>,  <32.608265, 33.504406, 47.182072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.377094, 33.511028, 47.117920>,  <31.991808, 33.522064, 47.010998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.377094, 33.511028, 47.117920> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145064, 0.783947, 0.603642,
		-0.226203, -0.620215, 0.751110,
		0.963218, -0.027587, 0.267302,
		32.666061, 33.502754, 47.198109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.998301, 33.419201, 47.780891>,  <31.991808, 33.522064, 47.010998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.998301, 33.419201, 47.780891> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.316330, 33.612991, 47.634937>,  <32.507149, 33.729263, 47.547363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.316330, 33.612991, 47.634937>,  <31.998301, 33.419201, 47.780891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.316330, 33.612991, 47.634937> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170468, 0.755867, 0.632144,
		0.582062, -0.440401, 0.683558,
		0.795076, 0.484471, -0.364887,
		32.554852, 33.758331, 47.525471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.450119, 33.667267, 48.346519>,  <31.998301, 33.419201, 47.780891>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.450119, 33.667267, 48.346519> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.453365, 33.896111, 48.018467>,  <32.455315, 34.033417, 47.821636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.453365, 33.896111, 48.018467>,  <32.450119, 33.667267, 48.346519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.453365, 33.896111, 48.018467> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221596, 0.800799, 0.556432,
		0.975105, 0.177222, 0.133279,
		0.008118, 0.572114, -0.820134,
		32.455799, 34.067745, 47.772427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.961018, 33.109493, 48.627728>,  <32.450119, 33.667267, 48.346519>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.961018, 33.109493, 48.627728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.227230, 33.340256, 48.817146>,  <33.386955, 33.478714, 48.930798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.227230, 33.340256, 48.817146>,  <32.961018, 33.109493, 48.627728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.227230, 33.340256, 48.817146> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692774, 0.241388, 0.679556,
		0.277736, -0.780323, 0.560320,
		0.665527, 0.576912, 0.473546,
		33.426888, 33.513329, 48.959209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.990650, 32.928741, 49.412804>,  <32.961018, 33.109493, 48.627728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.990650, 32.928741, 49.412804> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.071274, 33.300678, 49.289669>,  <33.119648, 33.523842, 49.215786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.071274, 33.300678, 49.289669>,  <32.990650, 32.928741, 49.412804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.071274, 33.300678, 49.289669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755539, 0.347610, 0.555273,
		0.623325, 0.120663, 0.772597,
		0.201562, 0.929843, -0.307839,
		33.131741, 33.579632, 49.197319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.005825, 33.424004, 50.003677>,  <32.990650, 32.928741, 49.412804>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.005825, 33.424004, 50.003677> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.909409, 33.588955, 49.652260>,  <32.851559, 33.687927, 49.441410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.909409, 33.588955, 49.652260>,  <33.005825, 33.424004, 50.003677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.909409, 33.588955, 49.652260> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729758, 0.519760, 0.444187,
		0.639807, 0.748193, 0.175655,
		-0.241039, 0.412379, -0.878546,
		32.837097, 33.712669, 49.388695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.358795, 33.754299, 50.051285>,  <33.005825, 33.424004, 50.003677>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.358795, 33.754299, 50.051285> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.425560, 34.015778, 50.346535>,  <32.465618, 34.172665, 50.523682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.425560, 34.015778, 50.346535>,  <32.358795, 33.754299, 50.051285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.425560, 34.015778, 50.346535> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937001, 0.127831, -0.325096,
		-0.306869, 0.745882, -0.591178,
		0.166913, 0.653696, 0.738120,
		32.475636, 34.211887, 50.567970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.661568, 34.327473, 49.777615>,  <32.358795, 33.754299, 50.051285>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.661568, 34.327473, 49.777615> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.740936, 34.387455, 50.165047>,  <32.788559, 34.423443, 50.397507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.740936, 34.387455, 50.165047>,  <32.661568, 34.327473, 49.777615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.740936, 34.387455, 50.165047> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930062, 0.282963, -0.234341,
		-0.309213, 0.947336, -0.083322,
		0.198423, 0.149955, 0.968577,
		32.800465, 34.432442, 50.455620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.971077, 34.952721, 49.823921>,  <32.661568, 34.327473, 49.777615>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.971077, 34.952721, 49.823921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.097553, 34.770832, 50.156967>,  <33.173439, 34.661697, 50.356796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.097553, 34.770832, 50.156967>,  <32.971077, 34.952721, 49.823921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.097553, 34.770832, 50.156967> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946713, 0.207949, -0.245952,
		-0.061301, 0.866015, 0.496247,
		0.316192, -0.454726, 0.832615,
		33.192410, 34.634415, 50.406750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.450886, 35.373688, 50.039898>,  <32.971077, 34.952721, 49.823921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.450886, 35.373688, 50.039898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.537178, 35.020897, 50.207504>,  <33.588955, 34.809223, 50.308067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.537178, 35.020897, 50.207504>,  <33.450886, 35.373688, 50.039898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.537178, 35.020897, 50.207504> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948905, 0.088153, -0.303000,
		0.230302, 0.462972, 0.855931,
		0.215733, -0.881979, 0.419014,
		33.601898, 34.756302, 50.333210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.062637, 35.474274, 50.396816>,  <33.450886, 35.373688, 50.039898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.062637, 35.474274, 50.396816> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.057579, 35.079315, 50.333717>,  <34.054546, 34.842339, 50.295856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.057579, 35.079315, 50.333717>,  <34.062637, 35.474274, 50.396816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.057579, 35.079315, 50.333717> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993536, 0.005396, -0.113392,
		0.112814, -0.158160, 0.980948,
		-0.012641, -0.987399, -0.157747,
		34.053787, 34.783096, 50.286392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.715073, 35.270710, 50.596565>,  <34.062637, 35.474274, 50.396816>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.715073, 35.270710, 50.596565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.612225, 34.952419, 50.377216>,  <34.550518, 34.761444, 50.245609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.612225, 34.952419, 50.377216>,  <34.715073, 35.270710, 50.596565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.612225, 34.952419, 50.377216> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950371, -0.105343, -0.292742,
		0.175176, -0.596423, 0.783322,
		-0.257115, -0.795727, -0.548370,
		34.535091, 34.713699, 50.212704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.396778, 34.901684, 50.495750>,  <34.715073, 35.270710, 50.596565>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.396778, 34.901684, 50.495750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.175213, 34.708538, 50.224449>,  <35.042274, 34.592651, 50.061668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.175213, 34.708538, 50.224449>,  <35.396778, 34.901684, 50.495750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.175213, 34.708538, 50.224449> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826665, -0.415858, -0.379059,
		-0.099020, -0.770650, 0.629518,
		-0.553913, -0.482866, -0.678248,
		35.009041, 34.563679, 50.020973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.557789, 34.078468, 50.427952>,  <35.396778, 34.901684, 50.495750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.557789, 34.078468, 50.427952> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.412178, 34.200520, 50.075954>,  <35.324814, 34.273750, 49.864758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.412178, 34.200520, 50.075954>,  <35.557789, 34.078468, 50.427952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.412178, 34.200520, 50.075954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777637, -0.420432, -0.467459,
		-0.512609, -0.854481, -0.084229,
		-0.364022, 0.305123, -0.879993,
		35.302971, 34.292057, 49.811958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.505711, 33.494167, 50.002930>,  <35.557789, 34.078468, 50.427952>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.505711, 33.494167, 50.002930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.531002, 33.807373, 49.755413>,  <35.546177, 33.995296, 49.606903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.531002, 33.807373, 49.755413>,  <35.505711, 33.494167, 50.002930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.531002, 33.807373, 49.755413> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701824, -0.475700, -0.530239,
		-0.709539, -0.400754, -0.579612,
		0.063226, 0.783010, -0.618787,
		35.549969, 34.042274, 49.569778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.567589, 33.217800, 49.327908>,  <35.505711, 33.494167, 50.002930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.567589, 33.217800, 49.327908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.687145, 33.595142, 49.270294>,  <35.758881, 33.821548, 49.235725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.687145, 33.595142, 49.270294>,  <35.567589, 33.217800, 49.327908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.687145, 33.595142, 49.270294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777568, -0.328249, -0.536322,
		-0.553219, 0.048309, -0.831634,
		0.298892, 0.943355, -0.144030,
		35.776814, 33.878147, 49.227085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.817356, 33.203011, 48.662235>,  <35.567589, 33.217800, 49.327908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.817356, 33.203011, 48.662235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.972378, 33.535900, 48.820831>,  <36.065392, 33.735634, 48.915989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.972378, 33.535900, 48.820831>,  <35.817356, 33.203011, 48.662235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.972378, 33.535900, 48.820831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867409, -0.183606, -0.462484,
		-0.312090, 0.523160, -0.793034,
		0.387559, 0.832221, 0.396492,
		36.088646, 33.785568, 48.939777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.288116, 33.538170, 48.116631>,  <35.817356, 33.203011, 48.662235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.288116, 33.538170, 48.116631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.394653, 33.712082, 48.460728>,  <36.458576, 33.816429, 48.667187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.394653, 33.712082, 48.460728>,  <36.288116, 33.538170, 48.116631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.394653, 33.712082, 48.460728> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961388, -0.183942, -0.204693,
		0.069239, 0.881549, -0.466987,
		0.266345, 0.434783, 0.860247,
		36.474556, 33.842518, 48.718803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.719875, 34.007122, 47.919510>,  <36.288116, 33.538170, 48.116631>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.719875, 34.007122, 47.919510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.796795, 33.962696, 48.309521>,  <36.842945, 33.936043, 48.543530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.796795, 33.962696, 48.309521>,  <36.719875, 34.007122, 47.919510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.796795, 33.962696, 48.309521> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979197, -0.043855, -0.198117,
		0.064763, 0.992845, 0.100318,
		0.192300, -0.111062, 0.975031,
		36.854485, 33.929379, 48.602032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.196129, 34.515961, 48.040321>,  <36.719875, 34.007122, 47.919510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.196129, 34.515961, 48.040321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.240780, 34.245911, 48.332005>,  <37.267570, 34.083881, 48.507015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.240780, 34.245911, 48.332005>,  <37.196129, 34.515961, 48.040321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.240780, 34.245911, 48.332005> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992794, 0.043581, -0.111626,
		0.043581, 0.736418, 0.675122,
		0.111626, -0.675122, 0.729212,
		37.274269, 34.043373, 48.550770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.855480, 34.672909, 48.430092>,  <37.196129, 34.515961, 48.040321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.855480, 34.672909, 48.430092> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.764088, 34.287930, 48.488743>,  <37.709251, 34.056942, 48.523933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.764088, 34.287930, 48.488743>,  <37.855480, 34.672909, 48.430092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.764088, 34.287930, 48.488743> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971400, -0.235375, -0.031309,
		0.064646, 0.135279, 0.988696,
		-0.228479, -0.962444, 0.146626,
		37.695545, 33.999195, 48.532730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.088779, 34.972095, 47.815578>,  <37.855480, 34.672909, 48.430092>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.088779, 34.972095, 47.815578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.124603, 34.966396, 47.417225>,  <38.146095, 34.962978, 47.178215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.124603, 34.966396, 47.417225>,  <38.088779, 34.972095, 47.815578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.124603, 34.966396, 47.417225> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837864, 0.541678, 0.067598,
		0.538483, -0.840465, 0.060448,
		0.089557, -0.014247, -0.995880,
		38.151470, 34.962124, 47.118462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.793205, 34.614185, 47.564320>,  <38.088779, 34.972095, 47.815578>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.793205, 34.614185, 47.564320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.647358, 34.906631, 47.333656>,  <38.559849, 35.082100, 47.195259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.647358, 34.906631, 47.333656>,  <38.793205, 34.614185, 47.564320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.647358, 34.906631, 47.333656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884999, 0.464656, 0.029535,
		0.289540, -0.499571, -0.816453,
		-0.364615, 0.731111, -0.576656,
		38.537975, 35.125965, 47.160660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.200481, 34.114220, 47.887344>,  <38.793205, 34.614185, 47.564320>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.200481, 34.114220, 47.887344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.247295, 34.494755, 48.001366>,  <39.275383, 34.723076, 48.069778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.247295, 34.494755, 48.001366>,  <39.200481, 34.114220, 47.887344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.247295, 34.494755, 48.001366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688928, -0.284505, 0.666660,
		0.715320, 0.118362, -0.688700,
		0.117031, 0.951340, 0.285055,
		39.282406, 34.780155, 48.086884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.643055, 33.851444, 48.496246>,  <39.200481, 34.114220, 47.887344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.643055, 33.851444, 48.496246> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.692692, 34.245293, 48.447044>,  <39.722473, 34.481602, 48.417522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.692692, 34.245293, 48.447044>,  <39.643055, 33.851444, 48.496246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.692692, 34.245293, 48.447044> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723991, -0.005075, 0.689791,
		0.678555, -0.174653, -0.713484,
		0.124094, 0.984617, -0.123004,
		39.729919, 34.540676, 48.410145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.860260, 33.905071, 49.195850>,  <39.643055, 33.851444, 48.496246>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.860260, 33.905071, 49.195850> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.186867, 33.859432, 49.422222>,  <40.382832, 33.832050, 49.558044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.186867, 33.859432, 49.422222>,  <39.860260, 33.905071, 49.195850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.186867, 33.859432, 49.422222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450059, -0.488162, -0.747759,
		0.361580, 0.865263, -0.347246,
		0.816521, -0.114093, 0.565929,
		40.431824, 33.825203, 49.592003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.792633, 33.915886, 50.043289>,  <39.860260, 33.905071, 49.195850>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.792633, 33.915886, 50.043289> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.653069, 34.290592, 50.054134>,  <39.569328, 34.515415, 50.060642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.653069, 34.290592, 50.054134>,  <39.792633, 33.915886, 50.043289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.653069, 34.290592, 50.054134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638408, -0.258771, 0.724895,
		0.686071, 0.235616, 0.688326,
		-0.348916, 0.936762, 0.027116,
		39.548393, 34.571621, 50.062271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.783470, 34.224098, 50.727299>,  <39.792633, 33.915886, 50.043289>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.783470, 34.224098, 50.727299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.504395, 34.437260, 50.535782>,  <39.336948, 34.565155, 50.420872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.504395, 34.437260, 50.535782>,  <39.783470, 34.224098, 50.727299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.504395, 34.437260, 50.535782> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574208, -0.016342, 0.818546,
		0.428383, 0.846018, 0.317400,
		-0.697691, 0.532905, -0.478790,
		39.295086, 34.597130, 50.392143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.422886, 34.681889, 51.223637>,  <39.783470, 34.224098, 50.727299>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.422886, 34.681889, 51.223637> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.174004, 34.685001, 50.910511>,  <39.024673, 34.686867, 50.722637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.174004, 34.685001, 50.910511>,  <39.422886, 34.681889, 51.223637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.174004, 34.685001, 50.910511> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778633, 0.097532, 0.619854,
		0.081172, 0.995202, -0.054627,
		-0.622207, 0.007780, -0.782814,
		38.987343, 34.687336, 50.675667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.089561, 35.246403, 51.209797>,  <39.422886, 34.681889, 51.223637>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.089561, 35.246403, 51.209797> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.858963, 34.983150, 51.016090>,  <38.720604, 34.825199, 50.899864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.858963, 34.983150, 51.016090>,  <39.089561, 35.246403, 51.209797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.858963, 34.983150, 51.016090> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663114, 0.030543, 0.747895,
		-0.477418, 0.752288, -0.454021,
		-0.576499, -0.658126, -0.484271,
		38.686012, 34.785713, 50.870808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429024, 35.532963, 51.030552>,  <39.089561, 35.246403, 51.209797>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.429024, 35.532963, 51.030552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.371090, 35.139076, 51.069252>,  <38.336330, 34.902744, 51.092472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.371090, 35.139076, 51.069252>,  <38.429024, 35.532963, 51.030552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.371090, 35.139076, 51.069252> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731427, 0.172404, 0.659766,
		-0.666362, 0.024786, -0.745217,
		-0.144831, -0.984715, 0.096754,
		38.327641, 34.843662, 51.098278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.718842, 35.583538, 51.100040>,  <38.429024, 35.532963, 51.030552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.718842, 35.583538, 51.100040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.838234, 35.213779, 51.195034>,  <37.909870, 34.991924, 51.252029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.838234, 35.213779, 51.195034>,  <37.718842, 35.583538, 51.100040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.838234, 35.213779, 51.195034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760826, -0.080228, 0.643978,
		-0.576239, -0.372899, -0.727252,
		0.298485, -0.924397, 0.237481,
		37.927780, 34.936459, 51.266277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.112198, 35.179268, 51.130039>,  <37.718842, 35.583538, 51.100040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.112198, 35.179268, 51.130039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.383030, 34.952927, 51.318245>,  <37.545528, 34.817123, 51.431168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.383030, 34.952927, 51.318245>,  <37.112198, 35.179268, 51.130039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.383030, 34.952927, 51.318245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658988, -0.181602, 0.729901,
		-0.327572, -0.804258, -0.495849,
		0.677076, -0.565853, 0.470509,
		37.586151, 34.783173, 51.459396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.652828, 34.674828, 51.380016>,  <37.112198, 35.179268, 51.130039>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.652828, 34.674828, 51.380016> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.988853, 34.657497, 51.596321>,  <37.190468, 34.647099, 51.726105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.988853, 34.657497, 51.596321>,  <36.652828, 34.674828, 51.380016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.988853, 34.657497, 51.596321> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511940, -0.393112, 0.763794,
		0.179487, -0.918469, -0.352418,
		0.840061, -0.043326, 0.540759,
		37.240871, 34.644501, 51.758549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.602570, 34.074863, 51.851627>,  <36.652828, 34.674828, 51.380016>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.602570, 34.074863, 51.851627> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.897373, 34.290073, 52.015263>,  <37.074257, 34.419197, 52.113445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.897373, 34.290073, 52.015263>,  <36.602570, 34.074863, 51.851627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.897373, 34.290073, 52.015263> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443119, -0.072401, 0.893534,
		0.510358, -0.839817, 0.185047,
		0.737008, 0.538021, 0.409089,
		37.118477, 34.451481, 52.137989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457832, 33.927933, 52.490112>,  <36.602570, 34.074863, 51.851627>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.457832, 33.927933, 52.490112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.693127, 34.248142, 52.535950>,  <36.834305, 34.440269, 52.563454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.693127, 34.248142, 52.535950>,  <36.457832, 33.927933, 52.490112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.693127, 34.248142, 52.535950> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455808, 0.211159, 0.864668,
		0.667992, -0.560866, 0.489098,
		0.588240, 0.800526, 0.114595,
		36.869598, 34.488300, 52.570328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.673080, 33.977364, 53.125744>,  <36.457832, 33.927933, 52.490112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.673080, 33.977364, 53.125744> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.726322, 34.361633, 53.028263>,  <36.758266, 34.592194, 52.969776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.726322, 34.361633, 53.028263>,  <36.673080, 33.977364, 53.125744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.726322, 34.361633, 53.028263> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490822, 0.277514, 0.825881,
		0.861032, 0.009684, 0.508458,
		0.133106, 0.960673, -0.243702,
		36.766254, 34.649834, 52.955154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.021473, 34.355110, 53.784611>,  <36.673080, 33.977364, 53.125744>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.021473, 34.355110, 53.784611> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.809292, 34.588203, 53.538342>,  <36.681984, 34.728058, 53.390579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.809292, 34.588203, 53.538342>,  <37.021473, 34.355110, 53.784611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.809292, 34.588203, 53.538342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597202, 0.258570, 0.759271,
		0.601643, 0.770434, 0.210849,
		-0.530449, 0.582729, -0.615671,
		36.650158, 34.763023, 53.353642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.873814, 34.937336, 54.211872>,  <37.021473, 34.355110, 53.784611>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.873814, 34.937336, 54.211872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.623886, 34.995079, 53.904949>,  <36.473930, 35.029724, 53.720795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.623886, 34.995079, 53.904949>,  <36.873814, 34.937336, 54.211872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.623886, 34.995079, 53.904949> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682850, 0.375483, 0.626681,
		0.378577, 0.915518, -0.136034,
		-0.624816, 0.144357, -0.767311,
		36.436440, 35.038387, 53.674755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.604816, 35.640896, 54.265404>,  <36.873814, 34.937336, 54.211872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.604816, 35.640896, 54.265404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.331165, 35.504890, 54.007301>,  <36.166973, 35.423286, 53.852440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.331165, 35.504890, 54.007301>,  <36.604816, 35.640896, 54.265404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.331165, 35.504890, 54.007301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728199, 0.368362, 0.577958,
		0.041173, 0.865273, -0.499606,
		-0.684127, -0.340017, -0.645258,
		36.125927, 35.402885, 53.813725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128407, 36.209938, 53.986889>,  <36.604816, 35.640896, 54.265404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.128407, 36.209938, 53.986889> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.920139, 35.868847, 53.970154>,  <35.795177, 35.664192, 53.960114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.920139, 35.868847, 53.970154>,  <36.128407, 36.209938, 53.986889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.920139, 35.868847, 53.970154> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757643, 0.438910, 0.483047,
		-0.393546, 0.283206, -0.874594,
		-0.520670, -0.852732, -0.041838,
		35.763939, 35.613026, 53.957603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.506985, 36.288280, 53.621616>,  <36.128407, 36.209938, 53.986889>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.506985, 36.288280, 53.621616> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.414005, 35.976418, 53.854202>,  <35.358219, 35.789299, 53.993755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.414005, 35.976418, 53.854202>,  <35.506985, 36.288280, 53.621616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.414005, 35.976418, 53.854202> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851359, 0.452169, 0.265952,
		-0.470271, -0.433215, -0.768875,
		-0.232447, -0.779659, 0.581464,
		35.344273, 35.742519, 54.028641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.779537, 36.216034, 53.554077>,  <35.506985, 36.288280, 53.621616>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.779537, 36.216034, 53.554077> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.876957, 36.035294, 53.897358>,  <34.935410, 35.926849, 54.103329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.876957, 36.035294, 53.897358>,  <34.779537, 36.216034, 53.554077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.876957, 36.035294, 53.897358> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729815, 0.497405, 0.468997,
		-0.638791, -0.740556, -0.208622,
		0.243549, -0.451847, 0.858206,
		34.950020, 35.899738, 54.154819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.207924, 36.055977, 53.863087>,  <34.779537, 36.216034, 53.554077>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.207924, 36.055977, 53.863087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.484367, 36.083897, 54.150833>,  <34.650234, 36.100647, 54.323483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.484367, 36.083897, 54.150833>,  <34.207924, 36.055977, 53.863087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.484367, 36.083897, 54.150833> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595722, 0.618595, 0.512304,
		-0.409242, -0.782604, 0.469097,
		0.691112, 0.069795, 0.719370,
		34.691700, 36.104836, 54.366646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.727779, 36.283382, 54.318180>,  <34.207924, 36.055977, 53.863087>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.727779, 36.283382, 54.318180> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.063698, 36.300095, 54.534695>,  <34.265247, 36.310123, 54.664604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.063698, 36.300095, 54.534695>,  <33.727779, 36.283382, 54.318180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.063698, 36.300095, 54.534695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376418, 0.763277, 0.525088,
		-0.391215, -0.644719, 0.656725,
		0.839797, 0.041781, 0.541290,
		34.315636, 36.312630, 54.697083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.523563, 36.311180, 54.983852>,  <33.727779, 36.283382, 54.318180>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.523563, 36.311180, 54.983852> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.894463, 36.460964, 54.983932>,  <34.117001, 36.550835, 54.983982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.894463, 36.460964, 54.983932>,  <33.523563, 36.311180, 54.983852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.894463, 36.460964, 54.983932> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294991, 0.730136, 0.616346,
		0.230649, -0.571562, 0.787476,
		0.927244, 0.374458, 0.000201,
		34.172634, 36.573303, 54.983994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.702755, 36.269867, 55.641895>,  <33.523563, 36.311180, 54.983852>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.702755, 36.269867, 55.641895> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.942757, 36.543575, 55.476116>,  <34.086758, 36.707798, 55.376648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.942757, 36.543575, 55.476116>,  <33.702755, 36.269867, 55.641895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.942757, 36.543575, 55.476116> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330964, 0.683972, 0.650112,
		0.728323, -0.252904, 0.636856,
		0.600007, 0.684268, -0.414450,
		34.122757, 36.748856, 55.351780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.905064, 36.663559, 56.116749>,  <33.702755, 36.269867, 55.641895>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.905064, 36.663559, 56.116749> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.957184, 36.922657, 55.816498>,  <33.988457, 37.078117, 55.636349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.957184, 36.922657, 55.816498>,  <33.905064, 36.663559, 56.116749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.957184, 36.922657, 55.816498> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490114, 0.700195, 0.519149,
		0.861864, 0.300246, 0.408708,
		0.130303, 0.647749, -0.750628,
		33.996273, 37.116982, 55.591309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.111771, 37.229527, 56.451698>,  <33.905064, 36.663559, 56.116749>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.111771, 37.229527, 56.451698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.995785, 37.377625, 56.098690>,  <33.926193, 37.466484, 55.886887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.995785, 37.377625, 56.098690>,  <34.111771, 37.229527, 56.451698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.995785, 37.377625, 56.098690> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510920, 0.719852, 0.469866,
		0.809248, 0.587141, -0.019565,
		-0.289962, 0.370242, -0.882521,
		33.908794, 37.488697, 55.833935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.230885, 37.959587, 56.501526>,  <34.111771, 37.229527, 56.451698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.230885, 37.959587, 56.501526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.976231, 37.911289, 56.196865>,  <33.823441, 37.882309, 56.014069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.976231, 37.911289, 56.196865>,  <34.230885, 37.959587, 56.501526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.976231, 37.911289, 56.196865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470231, 0.843589, 0.259306,
		0.611215, 0.523237, -0.593834,
		-0.636631, -0.120747, -0.761657,
		33.785240, 37.875065, 55.968369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.087166, 38.577526, 56.246204>,  <34.230885, 37.959587, 56.501526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.087166, 38.577526, 56.246204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.783943, 38.380695, 56.074989>,  <33.602009, 38.262596, 55.972260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.783943, 38.380695, 56.074989>,  <34.087166, 38.577526, 56.246204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.783943, 38.380695, 56.074989> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602737, 0.779275, 0.171576,
		0.249126, 0.388055, -0.887327,
		-0.758053, -0.492081, -0.428033,
		33.556526, 38.233070, 55.946579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.676964, 38.989780, 55.776402>,  <34.087166, 38.577526, 56.246204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.676964, 38.989780, 55.776402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.437237, 38.686592, 55.879402>,  <33.293400, 38.504681, 55.941200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.437237, 38.686592, 55.879402>,  <33.676964, 38.989780, 55.776402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.437237, 38.686592, 55.879402> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743105, 0.646387, 0.173143,
		-0.297680, -0.087580, -0.950640,
		-0.599318, -0.757967, 0.257498,
		33.257442, 38.459202, 55.956650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.105160, 39.108189, 55.383171>,  <33.676964, 38.989780, 55.776402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.105160, 39.108189, 55.383171> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.979267, 38.886864, 55.691662>,  <32.903732, 38.754070, 55.876755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.979267, 38.886864, 55.691662>,  <33.105160, 39.108189, 55.383171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.979267, 38.886864, 55.691662> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706024, 0.679535, 0.199406,
		-0.634408, -0.481743, -0.604525,
		-0.314733, -0.553314, 0.771224,
		32.884846, 38.720871, 55.923031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.314266, 39.071980, 55.256847>,  <33.105160, 39.108189, 55.383171>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.314266, 39.071980, 55.256847> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.392979, 38.959549, 55.632565>,  <32.440205, 38.892090, 55.857994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.392979, 38.959549, 55.632565>,  <32.314266, 39.071980, 55.256847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.392979, 38.959549, 55.632565> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803040, 0.503429, 0.318881,
		-0.562498, -0.817040, -0.126651,
		0.196779, -0.281076, 0.939295,
		32.452011, 38.875225, 55.914352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.712709, 38.794216, 55.567101>,  <32.314266, 39.071980, 55.256847>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.712709, 38.794216, 55.567101> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.930752, 38.921074, 55.877525>,  <32.061577, 38.997189, 56.063782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.930752, 38.921074, 55.877525>,  <31.712709, 38.794216, 55.567101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.930752, 38.921074, 55.877525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796376, 0.485168, 0.361104,
		-0.262000, -0.814881, 0.517035,
		0.545106, 0.317145, 0.776066,
		32.094284, 39.016216, 56.110344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.311138, 38.710922, 56.125904>,  <31.712709, 38.794216, 55.567101>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.311138, 38.710922, 56.125904> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.566166, 38.984890, 56.266983>,  <31.719183, 39.149269, 56.351631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.566166, 38.984890, 56.266983>,  <31.311138, 38.710922, 56.125904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.566166, 38.984890, 56.266983> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728109, 0.386128, 0.566359,
		0.251721, -0.617897, 0.744876,
		0.637569, 0.684915, 0.352700,
		31.757437, 39.190365, 56.372791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.120411, 38.719360, 56.866901>,  <31.311138, 38.710922, 56.125904>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.120411, 38.719360, 56.866901> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.348261, 39.044880, 56.820858>,  <31.484972, 39.240192, 56.793232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.348261, 39.044880, 56.820858>,  <31.120411, 38.719360, 56.866901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.348261, 39.044880, 56.820858> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639727, 0.526923, 0.559555,
		0.516022, -0.245098, 0.820761,
		0.569624, 0.813805, -0.115108,
		31.519150, 39.289021, 56.786327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.216858, 39.064407, 57.631359>,  <31.120411, 38.719360, 56.866901>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.216858, 39.064407, 57.631359> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.273500, 39.340935, 57.347946>,  <31.307486, 39.506851, 57.177898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.273500, 39.340935, 57.347946>,  <31.216858, 39.064407, 57.631359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.273500, 39.340935, 57.347946> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467824, 0.677513, 0.567553,
		0.872404, 0.251101, 0.419357,
		0.141607, 0.691320, -0.708536,
		31.315983, 39.548332, 57.135384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.441551, 39.735920, 57.972382>,  <31.216858, 39.064407, 57.631359>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.441551, 39.735920, 57.972382> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.295633, 39.820812, 57.609749>,  <31.208082, 39.871746, 57.392170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.295633, 39.820812, 57.609749>,  <31.441551, 39.735920, 57.972382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.295633, 39.820812, 57.609749> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610418, 0.680721, 0.404980,
		0.703074, 0.701127, -0.118777,
		-0.364796, 0.212227, -0.906578,
		31.186195, 39.884480, 57.337776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.388208, 40.513424, 57.973179>,  <31.441551, 39.735920, 57.972382>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.388208, 40.513424, 57.973179> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.163240, 40.413582, 57.657867>,  <31.028259, 40.353676, 57.468681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.163240, 40.413582, 57.657867>,  <31.388208, 40.513424, 57.973179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.163240, 40.413582, 57.657867> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474690, 0.878062, 0.060641,
		0.677020, 0.408293, -0.612325,
		-0.562418, -0.249610, -0.788277,
		30.994514, 40.338699, 57.421383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.371927, 41.040871, 57.397476>,  <31.388208, 40.513424, 57.973179>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.371927, 41.040871, 57.397476> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.033928, 40.834686, 57.340511>,  <30.831129, 40.710976, 57.306332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.033928, 40.834686, 57.340511>,  <31.371927, 41.040871, 57.397476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.033928, 40.834686, 57.340511> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532611, 0.835108, 0.137552,
		0.048024, 0.192080, -0.980204,
		-0.844997, -0.515461, -0.142409,
		30.780430, 40.680046, 57.297787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.742647, 41.282032, 57.685993>,  <31.371927, 41.040871, 57.397476>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.742647, 41.282032, 57.685993> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.876055, 41.507919, 57.987949>,  <30.956099, 41.643452, 58.169125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.876055, 41.507919, 57.987949>,  <30.742647, 41.282032, 57.685993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.876055, 41.507919, 57.987949> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.942638, 0.187754, 0.276011,
		0.014134, -0.803644, 0.594942,
		0.333517, 0.564716, 0.754892,
		30.976110, 41.677334, 58.214417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.766165, 41.549053, 57.009590>,  <30.742647, 41.282032, 57.685993>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.766165, 41.549053, 57.009590> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.579304, 41.243637, 57.187927>,  <30.467188, 41.060387, 57.294930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.579304, 41.243637, 57.187927>,  <30.766165, 41.549053, 57.009590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.579304, 41.243637, 57.187927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719823, 0.621243, 0.309697,
		-0.513442, -0.176252, -0.839829,
		-0.467153, -0.763540, 0.445843,
		30.439157, 41.014576, 57.321678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.112072, 41.554241, 56.746723>,  <30.766165, 41.549053, 57.009590>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.112072, 41.554241, 56.746723> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.116879, 41.399208, 57.115425>,  <30.119762, 41.306187, 57.336647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.116879, 41.399208, 57.115425>,  <30.112072, 41.554241, 56.746723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.116879, 41.399208, 57.115425> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532308, 0.777869, 0.334019,
		-0.846466, -0.494671, -0.196967,
		0.012015, -0.387582, 0.921757,
		30.120483, 41.282932, 57.391953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.397924, 41.580982, 56.936966>,  <30.112072, 41.554241, 56.746723>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.397924, 41.580982, 56.936966> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.631517, 41.571960, 57.261547>,  <29.771673, 41.566547, 57.456295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.631517, 41.571960, 57.261547>,  <29.397924, 41.580982, 56.936966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.631517, 41.571960, 57.261547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480467, 0.796114, 0.367905,
		-0.654306, -0.604726, 0.454081,
		0.583982, -0.022552, 0.811454,
		29.806711, 41.565193, 57.504982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.865709, 41.602745, 57.487911>,  <29.397924, 41.580982, 56.936966>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.865709, 41.602745, 57.487911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.211313, 41.689674, 57.669571>,  <29.418676, 41.741833, 57.778568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.211313, 41.689674, 57.669571>,  <28.865709, 41.602745, 57.487911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.211313, 41.689674, 57.669571> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465035, 0.690164, 0.554451,
		-0.192946, -0.690249, 0.697372,
		0.864011, 0.217324, 0.454154,
		29.470516, 41.754871, 57.805817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.571638, 41.807549, 58.091118>,  <28.865709, 41.602745, 57.487911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.571638, 41.807549, 58.091118> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.946312, 41.947605, 58.089199>,  <29.171116, 42.031639, 58.088047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.946312, 41.947605, 58.089199>,  <28.571638, 41.807549, 58.091118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.946312, 41.947605, 58.089199> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299670, 0.808601, 0.506323,
		0.181159, -0.472829, 0.862331,
		0.936685, 0.350139, -0.004792,
		29.227318, 42.052647, 58.087761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.741663, 42.069683, 58.836555>,  <28.571638, 41.807549, 58.091118>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.741663, 42.069683, 58.836555> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.969440, 42.285645, 58.588612>,  <29.106108, 42.415222, 58.439846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.969440, 42.285645, 58.588612>,  <28.741663, 42.069683, 58.836555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.969440, 42.285645, 58.588612> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224846, 0.827611, 0.514300,
		0.790678, -0.153494, 0.592678,
		0.569449, 0.539907, -0.619861,
		29.140274, 42.447617, 58.402653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.006168, 42.636677, 59.184410>,  <28.741663, 42.069683, 58.836555>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.006168, 42.636677, 59.184410> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.034609, 42.764641, 58.806499>,  <29.051674, 42.841419, 58.579754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.034609, 42.764641, 58.806499>,  <29.006168, 42.636677, 59.184410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.034609, 42.764641, 58.806499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122665, 0.942789, 0.310003,
		0.989898, 0.093850, 0.106275,
		0.071101, 0.319908, -0.944777,
		29.055939, 42.860615, 58.523067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.115244, 43.335903, 59.286503>,  <29.006168, 42.636677, 59.184410>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.115244, 43.335903, 59.286503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.018518, 43.307667, 58.899403>,  <28.960484, 43.290726, 58.667141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.018518, 43.307667, 58.899403>,  <29.115244, 43.335903, 59.286503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.018518, 43.307667, 58.899403> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408135, 0.912233, 0.035444,
		0.880314, 0.403545, -0.249398,
		-0.241813, -0.070587, -0.967752,
		28.945974, 43.286491, 58.609077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.568235, 43.860481, 58.869411>,  <29.115244, 43.335903, 59.286503>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.568235, 43.860481, 58.869411> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.200666, 43.802818, 58.722549>,  <28.980125, 43.768219, 58.634434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.200666, 43.802818, 58.722549>,  <29.568235, 43.860481, 58.869411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.200666, 43.802818, 58.722549> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152714, 0.988253, -0.005813,
		0.363680, 0.050728, -0.930142,
		-0.918921, -0.144160, -0.367155,
		28.924990, 43.759571, 58.612404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.503849, 44.394482, 58.279602>,  <29.568235, 43.860481, 58.869411>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.503849, 44.394482, 58.279602> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.208136, 44.276154, 58.521576>,  <29.030708, 44.205154, 58.666759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.208136, 44.276154, 58.521576>,  <29.503849, 44.394482, 58.279602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.208136, 44.276154, 58.521576> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253946, 0.954488, 0.156413,
		-0.623677, -0.037989, -0.780759,
		-0.739283, -0.295822, 0.604939,
		28.986351, 44.187408, 58.703056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.761908, 44.681332, 58.107529>,  <29.503849, 44.394482, 58.279602>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.761908, 44.681332, 58.107529> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.816641, 44.606075, 58.496555>,  <28.849482, 44.560921, 58.729969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.816641, 44.606075, 58.496555>,  <28.761908, 44.681332, 58.107529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.816641, 44.606075, 58.496555> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082536, 0.976219, 0.200459,
		-0.987150, -0.107701, 0.118052,
		0.136834, -0.188139, 0.972563,
		28.857691, 44.549633, 58.788326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.279215, 44.754719, 58.624313>,  <28.761908, 44.681332, 58.107529>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.279215, 44.754719, 58.624313> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.905451, 44.868618, 58.538715>,  <27.681192, 44.936958, 58.487358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.905451, 44.868618, 58.538715>,  <28.279215, 44.754719, 58.624313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.905451, 44.868618, 58.538715> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099455, -0.368312, -0.924367,
		-0.342022, -0.885024, 0.315837,
		-0.934414, 0.284743, -0.213991,
		27.625128, 44.954044, 58.474518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.826128, 44.208099, 58.436794>,  <28.279215, 44.754719, 58.624313>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.826128, 44.208099, 58.436794> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.724730, 44.553879, 58.263142>,  <27.663891, 44.761345, 58.158951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.724730, 44.553879, 58.263142>,  <27.826128, 44.208099, 58.436794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.724730, 44.553879, 58.263142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204380, -0.390796, -0.897501,
		-0.945499, -0.316240, -0.077611,
		-0.253495, 0.864448, -0.434130,
		27.648682, 44.813213, 58.132904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.545586, 44.141674, 57.756329>,  <27.826128, 44.208099, 58.436794>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.545586, 44.141674, 57.756329> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.691244, 44.513344, 57.781715>,  <27.778639, 44.736347, 57.796947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.691244, 44.513344, 57.781715>,  <27.545586, 44.141674, 57.756329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.691244, 44.513344, 57.781715> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433927, -0.108967, -0.894334,
		-0.824078, 0.353210, -0.442874,
		0.364147, 0.929177, 0.063470,
		27.800488, 44.792095, 57.800755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.436388, 44.460049, 57.117229>,  <27.545586, 44.141674, 57.756329>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.436388, 44.460049, 57.117229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.755640, 44.630539, 57.287556>,  <27.947191, 44.732834, 57.389751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.755640, 44.630539, 57.287556>,  <27.436388, 44.460049, 57.117229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.755640, 44.630539, 57.287556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503370, -0.083384, -0.860038,
		-0.331065, 0.900765, -0.281101,
		0.798132, 0.426227, 0.425812,
		27.995079, 44.758408, 57.415298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.615526, 45.005943, 56.747395>,  <27.436388, 44.460049, 57.117229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.615526, 45.005943, 56.747395> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.990549, 44.968502, 56.881397>,  <28.215563, 44.946037, 56.961800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.990549, 44.968502, 56.881397>,  <27.615526, 45.005943, 56.747395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.990549, 44.968502, 56.881397> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323088, -0.122416, -0.938418,
		0.128850, 0.988055, -0.084529,
		0.937556, -0.093605, 0.335002,
		28.271816, 44.940422, 56.981899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.083231, 45.311745, 56.323082>,  <27.615526, 45.005943, 56.747395>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.083231, 45.311745, 56.323082> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.328800, 45.058487, 56.511646>,  <28.476143, 44.906532, 56.624783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.328800, 45.058487, 56.511646>,  <28.083231, 45.311745, 56.323082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.328800, 45.058487, 56.511646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503413, -0.145947, -0.851630,
		0.608006, 0.760148, 0.229133,
		0.613924, -0.633146, 0.471406,
		28.512978, 44.868542, 56.653069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.669930, 45.385750, 55.978245>,  <28.083231, 45.311745, 56.323082>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.669930, 45.385750, 55.978245> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.710171, 45.033756, 56.163933>,  <28.734316, 44.822559, 56.275345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.710171, 45.033756, 56.163933>,  <28.669930, 45.385750, 55.978245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.710171, 45.033756, 56.163933> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436566, -0.380229, -0.815375,
		0.894030, 0.284692, 0.345920,
		0.100602, -0.879987, 0.464223,
		28.740351, 44.769760, 56.303200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.405689, 45.137653, 55.902565>,  <28.669930, 45.385750, 55.978245>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.405689, 45.137653, 55.902565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.199015, 44.802807, 55.974422>,  <29.075010, 44.601898, 56.017536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.199015, 44.802807, 55.974422>,  <29.405689, 45.137653, 55.902565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.199015, 44.802807, 55.974422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486819, -0.459851, -0.742661,
		0.704302, -0.296269, 0.645123,
		-0.516687, -0.837115, 0.179645,
		29.044008, 44.551674, 56.028316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.847363, 44.673756, 55.805611>,  <29.405689, 45.137653, 55.902565>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.847363, 44.673756, 55.805611> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.520918, 44.442726, 55.813267>,  <29.325050, 44.304108, 55.817860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.520918, 44.442726, 55.813267>,  <29.847363, 44.673756, 55.805611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.520918, 44.442726, 55.813267> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451326, -0.657701, -0.603104,
		0.360927, -0.483562, 0.797433,
		-0.816111, -0.577578, 0.019138,
		29.276085, 44.269451, 55.819008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.085423, 43.933620, 55.765762>,  <29.847363, 44.673756, 55.805611>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.085423, 43.933620, 55.765762> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.701160, 43.901005, 55.659561>,  <29.470604, 43.881435, 55.595840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.701160, 43.901005, 55.659561>,  <30.085423, 43.933620, 55.765762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.701160, 43.901005, 55.659561> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256834, -0.624679, -0.737436,
		-0.105721, -0.776612, 0.621045,
		-0.960656, -0.081543, -0.265502,
		29.412964, 43.876541, 55.579910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.819935, 43.269665, 55.850883>,  <30.085423, 43.933620, 55.765762>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.819935, 43.269665, 55.850883> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.573999, 43.425079, 55.576363>,  <29.426437, 43.518326, 55.411648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.573999, 43.425079, 55.576363>,  <29.819935, 43.269665, 55.850883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.573999, 43.425079, 55.576363> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062331, -0.843563, -0.533401,
		-0.786183, -0.370735, 0.494441,
		-0.614843, 0.388532, -0.686303,
		29.389547, 43.541637, 55.370472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.468334, 42.584915, 55.649933>,  <29.819935, 43.269665, 55.850883>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.468334, 42.584915, 55.649933> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.423048, 42.882710, 55.386745>,  <29.395876, 43.061386, 55.228832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.423048, 42.882710, 55.386745>,  <29.468334, 42.584915, 55.649933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.423048, 42.882710, 55.386745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108221, -0.649046, -0.753012,
		-0.987659, -0.156456, -0.007089,
		-0.113213, 0.744487, -0.657968,
		29.389084, 43.106056, 55.189354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.149466, 42.217773, 55.205444>,  <29.468334, 42.584915, 55.649933>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.149466, 42.217773, 55.205444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.247635, 42.539955, 54.989662>,  <29.306538, 42.733265, 54.860191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.247635, 42.539955, 54.989662>,  <29.149466, 42.217773, 55.205444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.247635, 42.539955, 54.989662> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102003, -0.574845, -0.811880,
		-0.964034, 0.144230, -0.223240,
		0.245425, 0.805451, -0.539458,
		29.321262, 42.781590, 54.827824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.811214, 42.094971, 54.568874>,  <29.149466, 42.217773, 55.205444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.811214, 42.094971, 54.568874> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.062521, 42.399784, 54.506149>,  <29.213305, 42.582672, 54.468513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.062521, 42.399784, 54.506149>,  <28.811214, 42.094971, 54.568874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.062521, 42.399784, 54.506149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410198, -0.495726, -0.765502,
		-0.661072, 0.416615, -0.624032,
		0.628268, 0.762029, -0.156816,
		29.251001, 42.628391, 54.459103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.678589, 42.355137, 53.790020>,  <28.811214, 42.094971, 54.568874>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.678589, 42.355137, 53.790020> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.047815, 42.396168, 53.938305>,  <29.269350, 42.420788, 54.027275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.047815, 42.396168, 53.938305>,  <28.678589, 42.355137, 53.790020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.047815, 42.396168, 53.938305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372747, -0.476426, -0.796290,
		0.094936, 0.873210, -0.478008,
		0.923064, 0.102579, 0.370716,
		29.324734, 42.426941, 54.049519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.144939, 42.636177, 53.166607>,  <28.678589, 42.355137, 53.790020>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.144939, 42.636177, 53.166607> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.356049, 42.447399, 53.449089>,  <29.482714, 42.334133, 53.618580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.356049, 42.447399, 53.449089>,  <29.144939, 42.636177, 53.166607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.356049, 42.447399, 53.449089> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491187, -0.508730, -0.707057,
		0.692957, 0.720045, -0.036683,
		0.527775, -0.471942, 0.706205,
		29.514381, 42.305817, 53.660950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.848759, 42.663708, 52.798241>,  <29.144939, 42.636177, 53.166607>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.848759, 42.663708, 52.798241> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.883329, 42.407497, 53.103466>,  <29.904072, 42.253773, 53.286602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.883329, 42.407497, 53.103466>,  <29.848759, 42.663708, 52.798241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.883329, 42.407497, 53.103466> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613053, -0.569548, -0.547523,
		0.785300, 0.515118, 0.343449,
		0.086428, -0.640522, 0.763060,
		29.909258, 42.215340, 53.332386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.616877, 42.693081, 52.997925>,  <29.848759, 42.663708, 52.798241>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.616877, 42.693081, 52.997925> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.423176, 42.357166, 53.096119>,  <30.306955, 42.155617, 53.155037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.423176, 42.357166, 53.096119>,  <30.616877, 42.693081, 52.997925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.423176, 42.357166, 53.096119> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653916, -0.533803, -0.536141,
		0.581285, -0.099098, 0.807643,
		-0.484253, -0.839782, 0.245490,
		30.277901, 42.105232, 53.169765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.178179, 42.199707, 52.990185>,  <30.616877, 42.693081, 52.997925>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.178179, 42.199707, 52.990185> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.866886, 41.948849, 53.003090>,  <30.680111, 41.798332, 53.010834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.866886, 41.948849, 53.003090>,  <31.178179, 42.199707, 52.990185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.866886, 41.948849, 53.003090> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544734, -0.699744, -0.462193,
		0.312437, -0.342120, 0.886192,
		-0.778234, -0.627146, 0.032261,
		30.633415, 41.760704, 53.012768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.409428, 41.620777, 53.336884>,  <31.178179, 42.199707, 52.990185>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.409428, 41.620777, 53.336884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.113401, 41.508125, 53.092594>,  <30.935785, 41.440533, 52.946018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.113401, 41.508125, 53.092594>,  <31.409428, 41.620777, 53.336884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.113401, 41.508125, 53.092594> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580162, -0.726659, -0.367938,
		-0.340167, -0.626618, 0.701168,
		-0.740067, -0.281630, -0.610726,
		30.891382, 41.423637, 52.909378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.489763, 40.854969, 53.305637>,  <31.409428, 41.620777, 53.336884>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.489763, 40.854969, 53.305637> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.272091, 40.970970, 52.990738>,  <31.141487, 41.040569, 52.801796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.272091, 40.970970, 52.990738>,  <31.489763, 40.854969, 53.305637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.272091, 40.970970, 52.990738> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416189, -0.721447, -0.553445,
		-0.728460, -0.628821, 0.271903,
		-0.544181, 0.289999, -0.787253,
		31.108837, 41.057968, 52.754562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.161167, 40.196575, 53.056923>,  <31.489763, 40.854969, 53.305637>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.161167, 40.196575, 53.056923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.184330, 40.453098, 52.750885>,  <31.198227, 40.607014, 52.567261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.184330, 40.453098, 52.750885>,  <31.161167, 40.196575, 53.056923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.184330, 40.453098, 52.750885> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422346, -0.710156, -0.563296,
		-0.904583, -0.290516, -0.311976,
		0.057905, 0.641310, -0.765094,
		31.201702, 40.645493, 52.521358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.101973, 39.787086, 52.390648>,  <31.161167, 40.196575, 53.056923>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.101973, 39.787086, 52.390648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.248053, 40.133057, 52.252934>,  <31.335701, 40.340637, 52.170303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.248053, 40.133057, 52.252934>,  <31.101973, 39.787086, 52.390648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.248053, 40.133057, 52.252934> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552868, -0.499058, -0.667292,
		-0.748977, 0.053348, -0.660445,
		0.365199, 0.864925, -0.344288,
		31.357613, 40.392532, 52.149647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.099503, 39.619255, 51.797798>,  <31.101973, 39.787086, 52.390648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.099503, 39.619255, 51.797798> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.360806, 39.921158, 51.773819>,  <31.517588, 40.102299, 51.759430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.360806, 39.921158, 51.773819>,  <31.099503, 39.619255, 51.797798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.360806, 39.921158, 51.773819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554256, -0.530656, -0.641252,
		-0.515804, 0.385675, -0.764984,
		0.653258, 0.754758, -0.059952,
		31.556784, 40.147587, 51.755833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.188700, 39.583401, 51.078342>,  <31.099503, 39.619255, 51.797798>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.188700, 39.583401, 51.078342> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.516991, 39.742886, 51.242020>,  <31.713964, 39.838577, 51.340225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.516991, 39.742886, 51.242020>,  <31.188700, 39.583401, 51.078342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.516991, 39.742886, 51.242020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567699, -0.488621, -0.662546,
		-0.064223, 0.776067, -0.627371,
		0.820727, 0.398709, 0.409192,
		31.763208, 39.862499, 51.364777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.613243, 39.799000, 50.446781>,  <31.188700, 39.583401, 51.078342>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.613243, 39.799000, 50.446781> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.875433, 39.837669, 50.746384>,  <32.032745, 39.860870, 50.926144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.875433, 39.837669, 50.746384>,  <31.613243, 39.799000, 50.446781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.875433, 39.837669, 50.746384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740535, -0.276878, -0.612329,
		0.148186, 0.956030, -0.253077,
		0.655476, 0.096674, 0.749003,
		32.072075, 39.866673, 50.971085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.211823, 40.138729, 50.251629>,  <31.613243, 39.799000, 50.446781>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.211823, 40.138729, 50.251629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.330875, 39.892345, 50.543385>,  <32.402306, 39.744514, 50.718437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.330875, 39.892345, 50.543385>,  <32.211823, 40.138729, 50.251629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.330875, 39.892345, 50.543385> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835759, -0.201172, -0.510918,
		0.461438, 0.761659, 0.454919,
		0.297628, -0.615959, 0.729391,
		32.420162, 39.707558, 50.762203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.946480, 40.394321, 50.406647>,  <32.211823, 40.138729, 50.251629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.946480, 40.394321, 50.406647> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.938328, 40.013035, 50.527290>,  <32.933437, 39.784264, 50.599678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.938328, 40.013035, 50.527290>,  <32.946480, 40.394321, 50.406647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.938328, 40.013035, 50.527290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809287, -0.192864, -0.554849,
		0.587060, 0.232785, 0.775353,
		-0.020377, -0.953213, 0.301612,
		32.932213, 39.727070, 50.617775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.683578, 40.299973, 50.526451>,  <32.946480, 40.394321, 50.406647>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.683578, 40.299973, 50.526451> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.513870, 39.937759, 50.525906>,  <33.412045, 39.720432, 50.525578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.513870, 39.937759, 50.525906>,  <33.683578, 40.299973, 50.526451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.513870, 39.937759, 50.525906> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746115, -0.348725, -0.567189,
		0.513132, -0.241662, 0.823587,
		-0.424273, -0.905533, -0.001366,
		33.386589, 39.666100, 50.525497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.184177, 39.729836, 50.697716>,  <33.683578, 40.299973, 50.526451>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.184177, 39.729836, 50.697716> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.884747, 39.581341, 50.477962>,  <33.705090, 39.492245, 50.346111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.884747, 39.581341, 50.477962>,  <34.184177, 39.729836, 50.697716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.884747, 39.581341, 50.477962> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635972, -0.167631, -0.753286,
		0.187555, -0.913281, 0.361580,
		-0.748574, -0.371237, -0.549381,
		33.660175, 39.469971, 50.313148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.329460, 38.970245, 50.778637>,  <34.184177, 39.729836, 50.697716>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.329460, 38.970245, 50.778637> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.076847, 38.992500, 50.469299>,  <33.925278, 39.005856, 50.283695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.076847, 38.992500, 50.469299>,  <34.329460, 38.970245, 50.778637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.076847, 38.992500, 50.469299> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641964, -0.521800, -0.561789,
		-0.434790, -0.851251, 0.293818,
		-0.631538, 0.055640, -0.773346,
		33.887386, 39.009193, 50.237297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.276680, 38.292850, 50.542526>,  <34.329460, 38.970245, 50.778637>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.276680, 38.292850, 50.542526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.132118, 38.509670, 50.239059>,  <34.045383, 38.639763, 50.056980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.132118, 38.509670, 50.239059>,  <34.276680, 38.292850, 50.542526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.132118, 38.509670, 50.239059> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416271, -0.634272, -0.651473,
		-0.834331, -0.551252, 0.003587,
		-0.361401, 0.542051, -0.758663,
		34.023697, 38.672287, 50.011459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.943314, 37.768375, 50.088295>,  <34.276680, 38.292850, 50.542526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.943314, 37.768375, 50.088295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.029549, 38.086891, 49.862217>,  <34.081291, 38.278000, 49.726570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.029549, 38.086891, 49.862217>,  <33.943314, 37.768375, 50.088295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.029549, 38.086891, 49.862217> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407215, -0.599394, -0.689132,
		-0.887523, -0.081586, -0.453483,
		0.215592, 0.796286, -0.565199,
		34.094227, 38.325775, 49.692657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.715561, 37.578938, 49.394245>,  <33.943314, 37.768375, 50.088295>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.715561, 37.578938, 49.394245> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.983234, 37.875374, 49.372387>,  <34.143837, 38.053234, 49.359272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.983234, 37.875374, 49.372387>,  <33.715561, 37.578938, 49.394245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.983234, 37.875374, 49.372387> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475517, -0.483565, -0.734880,
		-0.571035, 0.465782, -0.675993,
		0.669180, 0.741088, -0.054645,
		34.183987, 38.097702, 49.355995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.824078, 37.703468, 48.665131>,  <33.715561, 37.578938, 49.394245>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.824078, 37.703468, 48.665131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.138458, 37.853130, 48.862022>,  <34.327087, 37.942928, 48.980156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.138458, 37.853130, 48.862022>,  <33.824078, 37.703468, 48.665131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.138458, 37.853130, 48.862022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617698, -0.440490, -0.651473,
		-0.026929, 0.816075, -0.577318,
		0.785954, 0.374152, 0.492226,
		34.374245, 37.965378, 49.009689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.332977, 37.631329, 48.209526>,  <33.824078, 37.703468, 48.665131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.332977, 37.631329, 48.209526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.580036, 37.741039, 48.504356>,  <34.728271, 37.806866, 48.681255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.580036, 37.741039, 48.504356>,  <34.332977, 37.631329, 48.209526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.580036, 37.741039, 48.504356> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764359, -0.429945, -0.480523,
		0.185108, 0.860187, -0.475198,
		0.617649, 0.274274, 0.737078,
		34.765331, 37.823322, 48.725479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.905025, 38.015644, 47.936306>,  <34.332977, 37.631329, 48.209526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.905025, 38.015644, 47.936306> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.035587, 37.846962, 48.274685>,  <35.113926, 37.745750, 48.477711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.035587, 37.846962, 48.274685>,  <34.905025, 38.015644, 47.936306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.035587, 37.846962, 48.274685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778859, -0.387098, -0.493492,
		0.535572, 0.819950, 0.202100,
		0.326406, -0.421708, 0.845944,
		35.133511, 37.720451, 48.528469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.620094, 38.248009, 47.985645>,  <34.905025, 38.015644, 47.936306>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.620094, 38.248009, 47.985645> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.587223, 37.930485, 48.226681>,  <35.567501, 37.739971, 48.371300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.587223, 37.930485, 48.226681>,  <35.620094, 38.248009, 47.985645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.587223, 37.930485, 48.226681> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806805, -0.407945, -0.427371,
		0.585074, 0.451047, 0.673977,
		-0.082181, -0.793812, 0.602586,
		35.562569, 37.692341, 48.407455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.295918, 38.034714, 48.155727>,  <35.620094, 38.248009, 47.985645>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.295918, 38.034714, 48.155727> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.074421, 37.704132, 48.196407>,  <35.941521, 37.505783, 48.220818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.074421, 37.704132, 48.196407>,  <36.295918, 38.034714, 48.155727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.074421, 37.704132, 48.196407> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793706, -0.560804, -0.235648,
		0.251787, -0.049767, 0.966502,
		-0.553746, -0.826451, 0.101703,
		35.908298, 37.456196, 48.226917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.854271, 37.638615, 48.382385>,  <36.295918, 38.034714, 48.155727>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.854271, 37.638615, 48.382385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.544868, 37.412289, 48.268169>,  <36.359226, 37.276493, 48.199642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.544868, 37.412289, 48.268169>,  <36.854271, 37.638615, 48.382385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.544868, 37.412289, 48.268169> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624047, -0.758619, -0.187246,
		-0.110667, -0.323025, 0.939897,
		-0.773510, -0.565819, -0.285537,
		36.312817, 37.242542, 48.182507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.029404, 36.985317, 48.660824>,  <36.854271, 37.638615, 48.382385>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.029404, 36.985317, 48.660824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.784222, 36.930511, 48.349564>,  <36.637112, 36.897629, 48.162807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.784222, 36.930511, 48.349564>,  <37.029404, 36.985317, 48.660824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.784222, 36.930511, 48.349564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487627, -0.840518, -0.236114,
		-0.621695, -0.524172, 0.582013,
		-0.612957, -0.137014, -0.778146,
		36.600334, 36.889408, 48.116119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.031849, 36.269508, 48.517147>,  <37.029404, 36.985317, 48.660824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.031849, 36.269508, 48.517147> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.863449, 36.414703, 48.184643>,  <36.762409, 36.501820, 47.985142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.863449, 36.414703, 48.184643>,  <37.031849, 36.269508, 48.517147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.863449, 36.414703, 48.184643> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231253, -0.843198, -0.485324,
		-0.877087, -0.396553, 0.271043,
		-0.421000, 0.362991, -0.831262,
		36.737148, 36.523602, 47.935265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.724941, 35.693615, 48.231556>,  <37.031849, 36.269508, 48.517147>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.724941, 35.693615, 48.231556> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.753704, 35.955467, 47.930550>,  <36.770962, 36.112579, 47.749947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.753704, 35.955467, 47.930550>,  <36.724941, 35.693615, 48.231556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.753704, 35.955467, 47.930550> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244307, -0.743050, -0.623050,
		-0.967028, -0.139046, -0.213359,
		0.071904, 0.654632, -0.752520,
		36.775276, 36.151855, 47.704792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.477165, 35.317036, 47.613911>,  <36.724941, 35.693615, 48.231556>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.477165, 35.317036, 47.613911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.721489, 35.612953, 47.501045>,  <36.868084, 35.790504, 47.433327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.721489, 35.612953, 47.501045>,  <36.477165, 35.317036, 47.613911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.721489, 35.612953, 47.501045> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584385, -0.661672, -0.469771,
		-0.534232, 0.122051, -0.836480,
		0.610811, 0.739793, -0.282162,
		36.904732, 35.834892, 47.416397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.561676, 35.388035, 46.829094>,  <36.477165, 35.317036, 47.613911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.561676, 35.388035, 46.829094> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.884731, 35.533470, 47.014790>,  <37.078564, 35.620731, 47.126205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.884731, 35.533470, 47.014790>,  <36.561676, 35.388035, 46.829094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.884731, 35.533470, 47.014790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576788, -0.650797, -0.493740,
		0.122605, 0.666532, -0.735325,
		0.807640, 0.363592, 0.464239,
		37.127022, 35.642548, 47.154060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047836, 35.689495, 46.471817>,  <36.561676, 35.388035, 46.829094>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.047836, 35.689495, 46.471817> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.850521, 35.655338, 46.125549>,  <35.732132, 35.634842, 45.917789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.850521, 35.655338, 46.125549>,  <36.047836, 35.689495, 46.471817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.850521, 35.655338, 46.125549> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869411, 0.080653, 0.487462,
		0.028191, 0.993077, -0.114029,
		-0.493285, -0.085396, -0.865666,
		35.702538, 35.629719, 45.865849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.449978, 36.218941, 46.330048>,  <36.047836, 35.689495, 46.471817>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.449978, 36.218941, 46.330048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.323101, 35.925774, 46.089310>,  <35.246975, 35.749874, 45.944866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.323101, 35.925774, 46.089310>,  <35.449978, 36.218941, 46.330048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.323101, 35.925774, 46.089310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881979, -0.005279, 0.471258,
		-0.348571, 0.680296, -0.644744,
		-0.317192, -0.732919, -0.601847,
		35.227943, 35.705898, 45.908756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.872204, 36.462044, 46.131264>,  <35.449978, 36.218941, 46.330048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.872204, 36.462044, 46.131264> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.833481, 36.076450, 46.032169>,  <34.810249, 35.845097, 45.972713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.833481, 36.076450, 46.032169>,  <34.872204, 36.462044, 46.131264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.833481, 36.076450, 46.032169> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.980059, 0.048924, 0.192593,
		-0.173535, 0.261436, -0.949493,
		-0.096804, -0.963980, -0.247733,
		34.804440, 35.787258, 45.957848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.281784, 36.411179, 45.739178>,  <34.872204, 36.462044, 46.131264>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.281784, 36.411179, 45.739178> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.333691, 36.059490, 45.922539>,  <34.364834, 35.848476, 46.032555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.333691, 36.059490, 45.922539>,  <34.281784, 36.411179, 45.739178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.333691, 36.059490, 45.922539> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.954404, 0.014592, 0.298162,
		-0.268839, -0.476195, -0.837236,
		0.129766, -0.879219, 0.458405,
		34.372620, 35.795723, 46.060059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.654324, 36.140541, 45.589355>,  <34.281784, 36.411179, 45.739178>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.654324, 36.140541, 45.589355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.831852, 35.963066, 45.900780>,  <33.938370, 35.856583, 46.087635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.831852, 35.963066, 45.900780>,  <33.654324, 36.140541, 45.589355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.831852, 35.963066, 45.900780> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834500, 0.111958, 0.539513,
		-0.326540, -0.889163, -0.320565,
		0.443826, -0.443684, 0.778565,
		33.965000, 35.829960, 46.134350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.117466, 35.711575, 45.782551>,  <33.654324, 36.140541, 45.589355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.117466, 35.711575, 45.782551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.357483, 35.735691, 46.101627>,  <33.501495, 35.750160, 46.293072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.357483, 35.735691, 46.101627>,  <33.117466, 35.711575, 45.782551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.357483, 35.735691, 46.101627> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791803, 0.186852, 0.581493,
		-0.113995, -0.980537, 0.159853,
		0.600044, 0.060285, 0.797692,
		33.537495, 35.753777, 46.340935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.678051, 35.390694, 46.307529>,  <33.117466, 35.711575, 45.782551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.678051, 35.390694, 46.307529> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.974438, 35.567341, 46.509895>,  <33.152267, 35.673328, 46.631313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.974438, 35.567341, 46.509895>,  <32.678051, 35.390694, 46.307529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.974438, 35.567341, 46.509895> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619970, 0.160315, 0.768073,
		0.258096, -0.882760, 0.392582,
		0.740961, 0.441626, 0.505909,
		33.196728, 35.699825, 46.661667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.740223, 35.059002, 46.995293>,  <32.678051, 35.390694, 46.307529>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.740223, 35.059002, 46.995293> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.882721, 35.432735, 46.999348>,  <32.968220, 35.656975, 47.001781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.882721, 35.432735, 46.999348>,  <32.740223, 35.059002, 46.995293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.882721, 35.432735, 46.999348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601436, 0.220985, 0.767750,
		0.715098, -0.279603, 0.640670,
		0.356243, 0.934338, 0.010137,
		32.989594, 35.713036, 47.002388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.815475, 35.197571, 47.763897>,  <32.740223, 35.059002, 46.995293>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.815475, 35.197571, 47.763897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.800346, 35.558926, 47.593033>,  <32.791271, 35.775738, 47.490513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.800346, 35.558926, 47.593033>,  <32.815475, 35.197571, 47.763897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.800346, 35.558926, 47.593033> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491514, 0.355367, 0.795065,
		0.870048, 0.240025, 0.430586,
		-0.037820, 0.903384, -0.427162,
		32.789001, 35.829941, 47.464886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.787491, 35.567944, 48.288330>,  <32.815475, 35.197571, 47.763897>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.787491, 35.567944, 48.288330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.696033, 35.851849, 48.021809>,  <32.641159, 36.022190, 47.861897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.696033, 35.851849, 48.021809>,  <32.787491, 35.567944, 48.288330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.696033, 35.851849, 48.021809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623274, 0.419045, 0.660251,
		0.747832, 0.566249, 0.346567,
		-0.228640, 0.709763, -0.666304,
		32.627441, 36.064777, 47.821918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.622620, 36.151272, 48.721142>,  <32.787491, 35.567944, 48.288330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.622620, 36.151272, 48.721142> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.453205, 36.207943, 48.363251>,  <32.351555, 36.241943, 48.148514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.453205, 36.207943, 48.363251>,  <32.622620, 36.151272, 48.721142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.453205, 36.207943, 48.363251> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748144, 0.502207, 0.433669,
		0.510780, 0.853063, -0.106711,
		-0.423538, 0.141674, -0.894731,
		32.326145, 36.250446, 48.094830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.413670, 36.842789, 48.736908>,  <32.622620, 36.151272, 48.721142>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.413670, 36.842789, 48.736908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.180946, 36.679756, 48.455376>,  <32.041313, 36.581936, 48.286457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.180946, 36.679756, 48.455376>,  <32.413670, 36.842789, 48.736908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.180946, 36.679756, 48.455376> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749025, 0.605746, 0.268392,
		0.316952, 0.683339, -0.657715,
		-0.581811, -0.407577, -0.703830,
		32.006405, 36.557484, 48.244228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.189621, 37.358131, 48.213051>,  <32.413670, 36.842789, 48.736908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.189621, 37.358131, 48.213051> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.920908, 37.061932, 48.205326>,  <31.759680, 36.884212, 48.200691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.920908, 37.061932, 48.205326>,  <32.189621, 37.358131, 48.213051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.920908, 37.061932, 48.205326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730347, 0.657773, 0.184194,
		-0.123693, 0.137842, -0.982700,
		-0.671783, -0.740496, -0.019310,
		31.719374, 36.839783, 48.199532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.683908, 37.574524, 47.775700>,  <32.189621, 37.358131, 48.213051>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.683908, 37.574524, 47.775700> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.513147, 37.265228, 47.963253>,  <31.410690, 37.079651, 48.075787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.513147, 37.265228, 47.963253>,  <31.683908, 37.574524, 47.775700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.513147, 37.265228, 47.963253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694101, 0.612537, 0.378182,
		-0.579635, -0.164006, -0.798202,
		-0.426904, -0.773240, 0.468884,
		31.385077, 37.033257, 48.103920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.866308, 37.477959, 47.531891>,  <31.683908, 37.574524, 47.775700>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.866308, 37.477959, 47.531891> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.899115, 37.302380, 47.889797>,  <30.918798, 37.197033, 48.104542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.899115, 37.302380, 47.889797>,  <30.866308, 37.477959, 47.531891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.899115, 37.302380, 47.889797> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767963, 0.544387, 0.337455,
		-0.635222, -0.714821, -0.292446,
		0.082016, -0.438946, 0.894763,
		30.923719, 37.170696, 48.158226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.211681, 37.556870, 47.783428>,  <30.866308, 37.477959, 47.531891>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.211681, 37.556870, 47.783428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.437048, 37.468021, 48.101730>,  <30.572268, 37.414711, 48.292713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.437048, 37.468021, 48.101730>,  <30.211681, 37.556870, 47.783428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.437048, 37.468021, 48.101730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568646, 0.594466, 0.568552,
		-0.599336, -0.772834, 0.208623,
		0.563416, -0.222121, 0.795754,
		30.606073, 37.401386, 48.340458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.847219, 37.240673, 48.353966>,  <30.211681, 37.556870, 47.783428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.847219, 37.240673, 48.353966> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.175350, 37.402855, 48.515293>,  <30.372229, 37.500164, 48.612091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.175350, 37.402855, 48.515293>,  <29.847219, 37.240673, 48.353966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.175350, 37.402855, 48.515293> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568881, 0.506231, 0.648155,
		0.058626, -0.761140, 0.645932,
		0.820327, 0.405458, 0.403320,
		30.421448, 37.524494, 48.636288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.699739, 37.272358, 48.991428>,  <29.847219, 37.240673, 48.353966>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.699739, 37.272358, 48.991428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.011309, 37.522995, 49.001755>,  <30.198250, 37.673378, 49.007950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.011309, 37.522995, 49.001755>,  <29.699739, 37.272358, 48.991428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.011309, 37.522995, 49.001755> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489046, 0.581143, 0.650467,
		0.392576, -0.519286, 0.759096,
		0.778921, 0.626591, 0.025812,
		30.244986, 37.710972, 49.009499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.799797, 37.374153, 49.686779>,  <29.699739, 37.272358, 48.991428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.799797, 37.374153, 49.686779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.005638, 37.687206, 49.546684>,  <30.129143, 37.875038, 49.462627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.005638, 37.687206, 49.546684>,  <29.799797, 37.374153, 49.686779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.005638, 37.687206, 49.546684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306644, 0.549442, 0.777228,
		0.800721, -0.292565, 0.522734,
		0.514602, 0.782636, -0.350236,
		30.160019, 37.921997, 49.441612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.309910, 37.707943, 50.204300>,  <29.799797, 37.374153, 49.686779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.309910, 37.707943, 50.204300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.201559, 37.984543, 49.936432>,  <30.136549, 38.150501, 49.775711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.201559, 37.984543, 49.936432>,  <30.309910, 37.707943, 50.204300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.201559, 37.984543, 49.936432> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264259, 0.615529, 0.742490,
		0.925631, 0.378089, 0.016003,
		-0.270876, 0.691500, -0.669666,
		30.120296, 38.191994, 49.735531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.307367, 38.250824, 50.603603>,  <30.309910, 37.707943, 50.204300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.307367, 38.250824, 50.603603> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.142826, 38.412285, 50.276714>,  <30.044102, 38.509159, 50.080582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.142826, 38.412285, 50.276714>,  <30.307367, 38.250824, 50.603603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.142826, 38.412285, 50.276714> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459318, 0.682629, 0.568370,
		0.787283, 0.609167, -0.095400,
		-0.411355, 0.403649, -0.817224,
		30.019419, 38.533379, 50.031548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.439598, 39.036140, 50.578743>,  <30.307367, 38.250824, 50.603603>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.439598, 39.036140, 50.578743> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.115362, 38.976036, 50.352341>,  <29.920820, 38.939976, 50.216499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.115362, 38.976036, 50.352341>,  <30.439598, 39.036140, 50.578743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.115362, 38.976036, 50.352341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406927, 0.839580, 0.359884,
		0.421135, 0.522043, -0.741698,
		-0.810590, -0.150257, -0.566010,
		29.872185, 38.930958, 50.182537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.297621, 39.688042, 50.360107>,  <30.439598, 39.036140, 50.578743>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.297621, 39.688042, 50.360107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.967848, 39.468437, 50.305119>,  <29.769983, 39.336674, 50.272125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.967848, 39.468437, 50.305119>,  <30.297621, 39.688042, 50.360107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.967848, 39.468437, 50.305119> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552821, 0.729146, 0.403404,
		-0.121239, 0.408575, -0.904637,
		-0.824433, -0.549010, -0.137467,
		29.720518, 39.303734, 50.263878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.868259, 40.174290, 50.224335>,  <30.297621, 39.688042, 50.360107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.868259, 40.174290, 50.224335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.648762, 39.858955, 50.335621>,  <29.517063, 39.669754, 50.402393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.648762, 39.858955, 50.335621>,  <29.868259, 40.174290, 50.224335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.648762, 39.858955, 50.335621> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646810, 0.611209, 0.456137,
		-0.529637, 0.070351, -0.845302,
		-0.548746, -0.788337, 0.278215,
		29.484138, 39.622456, 50.419086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.200891, 40.356197, 50.202595>,  <29.868259, 40.174290, 50.224335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.200891, 40.356197, 50.202595> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.161396, 40.059933, 50.468430>,  <29.137699, 39.882175, 50.627930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.161396, 40.059933, 50.468430>,  <29.200891, 40.356197, 50.202595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.161396, 40.059933, 50.468430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733332, 0.505603, 0.454522,
		-0.672663, -0.442485, -0.593070,
		-0.098739, -0.740657, 0.664588,
		29.131775, 39.837734, 50.667805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.541578, 40.418549, 50.377186>,  <29.200891, 40.356197, 50.202595>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.541578, 40.418549, 50.377186> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.681585, 40.160915, 50.649258>,  <28.765591, 40.006336, 50.812500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.681585, 40.160915, 50.649258>,  <28.541578, 40.418549, 50.377186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.681585, 40.160915, 50.649258> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529326, 0.463080, 0.710895,
		-0.772852, -0.608863, -0.178843,
		0.350020, -0.644083, 0.680179,
		28.786591, 39.967690, 50.853310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.965010, 40.088135, 50.674110>,  <28.541578, 40.418549, 50.377186>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.965010, 40.088135, 50.674110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.270788, 40.069092, 50.931282>,  <28.454256, 40.057667, 51.085583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.270788, 40.069092, 50.931282>,  <27.965010, 40.088135, 50.674110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.270788, 40.069092, 50.931282> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575326, 0.399610, 0.713661,
		-0.290894, -0.915448, 0.278091,
		0.764448, -0.047606, 0.642925,
		28.500122, 40.054810, 51.124161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.593744, 39.964512, 51.315071>,  <27.965010, 40.088135, 50.674110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.593744, 39.964512, 51.315071> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.954323, 40.097805, 51.425598>,  <28.170670, 40.177780, 51.491913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.954323, 40.097805, 51.425598>,  <27.593744, 39.964512, 51.315071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.954323, 40.097805, 51.425598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427330, 0.583040, 0.690980,
		0.069152, -0.740961, 0.667979,
		0.901447, 0.333230, 0.276316,
		28.224756, 40.197773, 51.508492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.701002, 39.840282, 52.148727>,  <27.593744, 39.964512, 51.315071>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.701002, 39.840282, 52.148727> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.936636, 40.129143, 52.003689>,  <28.078016, 40.302460, 51.916668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.936636, 40.129143, 52.003689>,  <27.701002, 39.840282, 52.148727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.936636, 40.129143, 52.003689> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246796, 0.588059, 0.770246,
		0.769461, -0.364254, 0.524641,
		0.589085, 0.722153, -0.362592,
		28.113361, 40.345787, 51.894913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.127386, 39.995403, 52.728828>,  <27.701002, 39.840282, 52.148727>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.127386, 39.995403, 52.728828> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.097452, 40.306759, 52.479507>,  <28.079493, 40.493572, 52.329914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.097452, 40.306759, 52.479507>,  <28.127386, 39.995403, 52.728828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.097452, 40.306759, 52.479507> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157424, 0.607994, 0.778179,
		0.984692, 0.156357, 0.077039,
		-0.074834, 0.778394, -0.623300,
		28.075003, 40.540276, 52.292519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.368309, 40.432125, 53.135609>,  <28.127386, 39.995403, 52.728828>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.368309, 40.432125, 53.135609> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.237625, 40.649727, 52.826462>,  <28.159214, 40.780289, 52.640976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.237625, 40.649727, 52.826462>,  <28.368309, 40.432125, 53.135609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.237625, 40.649727, 52.826462> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189363, 0.763478, 0.617448,
		0.925959, 0.348080, -0.146423,
		-0.326712, 0.544005, -0.772864,
		28.139612, 40.812927, 52.594604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.623558, 41.197285, 53.260410>,  <28.368309, 40.432125, 53.135609>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.623558, 41.197285, 53.260410> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.309853, 41.249229, 53.017735>,  <28.121630, 41.280396, 52.872131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.309853, 41.249229, 53.017735>,  <28.623558, 41.197285, 53.260410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.309853, 41.249229, 53.017735> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283518, 0.794769, 0.536618,
		0.551860, 0.592856, -0.586491,
		-0.784262, 0.129857, -0.606687,
		28.074574, 41.288185, 52.835728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.525019, 42.007004, 53.157276>,  <28.623558, 41.197285, 53.260410>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.525019, 42.007004, 53.157276> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.166788, 41.849735, 53.073982>,  <27.951849, 41.755375, 53.024006>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.166788, 41.849735, 53.073982>,  <28.525019, 42.007004, 53.157276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.166788, 41.849735, 53.073982> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439611, 0.710007, 0.550120,
		-0.068441, 0.584218, -0.808706,
		-0.895577, -0.393167, -0.208235,
		27.898115, 41.731785, 53.011513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.082933, 42.648659, 53.012161>,  <28.525019, 42.007004, 53.157276>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.082933, 42.648659, 53.012161> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.855038, 42.330231, 53.093811>,  <27.718300, 42.139172, 53.142799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.855038, 42.330231, 53.093811>,  <28.082933, 42.648659, 53.012161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.855038, 42.330231, 53.093811> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556469, 0.556462, 0.617003,
		-0.604765, 0.237944, -0.760028,
		-0.569739, -0.796073, 0.204120,
		27.684116, 42.091408, 53.155048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.463430, 42.856052, 52.825405>,  <28.082933, 42.648659, 53.012161>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.463430, 42.856052, 52.825405> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.406204, 42.557934, 53.085888>,  <27.371868, 42.379063, 53.242176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.406204, 42.557934, 53.085888>,  <27.463430, 42.856052, 52.825405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.406204, 42.557934, 53.085888> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612901, 0.583341, 0.532977,
		-0.777100, -0.322871, -0.540250,
		-0.143067, -0.745297, 0.651203,
		27.363283, 42.334343, 53.281250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.728842, 42.837303, 52.874405>,  <27.463430, 42.856052, 52.825405>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.728842, 42.837303, 52.874405> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.876001, 42.653080, 53.197525>,  <26.964296, 42.542545, 53.391396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.876001, 42.653080, 53.197525>,  <26.728842, 42.837303, 52.874405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.876001, 42.653080, 53.197525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687950, 0.449652, 0.569682,
		-0.625600, -0.765309, -0.151415,
		0.367899, -0.460559, 0.807797,
		26.986372, 42.514912, 53.439865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.131622, 42.519039, 53.175018>,  <26.728842, 42.837303, 52.874405>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.131622, 42.519039, 53.175018> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.385427, 42.505302, 53.483879>,  <26.537710, 42.497059, 53.669193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.385427, 42.505302, 53.483879>,  <26.131622, 42.519039, 53.175018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.385427, 42.505302, 53.483879> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753488, 0.195062, 0.627858,
		-0.172181, -0.980189, 0.097890,
		0.634515, -0.034347, 0.772147,
		26.575783, 42.494999, 53.715523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.660357, 42.372192, 53.790199>,  <26.131622, 42.519039, 53.175018>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.660357, 42.372192, 53.790199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.996548, 42.525623, 53.943283>,  <26.198263, 42.617680, 54.035133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.996548, 42.525623, 53.943283>,  <25.660357, 42.372192, 53.790199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.996548, 42.525623, 53.943283> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500950, 0.280888, 0.818627,
		0.206503, -0.879759, 0.428230,
		0.840479, 0.383571, 0.382711,
		26.248692, 42.640697, 54.058098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.759279, 42.112591, 54.447681>,  <25.660357, 42.372192, 53.790199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.759279, 42.112591, 54.447681> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.987944, 42.440762, 54.451771>,  <26.125143, 42.637665, 54.454224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.987944, 42.440762, 54.451771>,  <25.759279, 42.112591, 54.447681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.987944, 42.440762, 54.451771> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458173, 0.308860, 0.833476,
		0.680646, -0.481153, 0.552460,
		0.571662, 0.820425, 0.010227,
		26.159443, 42.686890, 54.454838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.459412, 41.476765, 54.763306>,  <25.759279, 42.112591, 54.447681>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.459412, 41.476765, 54.763306> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.202272, 41.184341, 54.854782>,  <25.047989, 41.008888, 54.909668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.202272, 41.184341, 54.854782>,  <25.459412, 41.476765, 54.763306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.202272, 41.184341, 54.854782> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268426, -0.494620, -0.826619,
		0.717422, -0.470004, 0.514200,
		-0.642847, -0.731059, 0.228690,
		25.009418, 40.965023, 54.923389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.802025, 40.826805, 54.597431>,  <25.459412, 41.476765, 54.763306>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.802025, 40.826805, 54.597431> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.423389, 40.702377, 54.631382>,  <25.196207, 40.627720, 54.651752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.423389, 40.702377, 54.631382>,  <25.802025, 40.826805, 54.597431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.423389, 40.702377, 54.631382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191446, -0.754016, -0.628338,
		0.259455, -0.578529, 0.773297,
		-0.946590, -0.311070, 0.084876,
		25.139412, 40.609055, 54.656845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.829115, 40.153389, 54.718414>,  <25.802025, 40.826805, 54.597431>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.829115, 40.153389, 54.718414> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.473179, 40.236084, 54.555714>,  <25.259617, 40.285702, 54.458096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.473179, 40.236084, 54.555714>,  <25.829115, 40.153389, 54.718414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.473179, 40.236084, 54.555714> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110006, -0.767954, -0.630988,
		-0.442813, -0.606223, 0.660613,
		-0.889840, 0.206738, -0.406748,
		25.206226, 40.298107, 54.433689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.619644, 39.479839, 54.633472>,  <25.829115, 40.153389, 54.718414>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.619644, 39.479839, 54.633472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.355320, 39.692768, 54.421829>,  <25.196726, 39.820526, 54.294842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.355320, 39.692768, 54.421829>,  <25.619644, 39.479839, 54.633472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.355320, 39.692768, 54.421829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154639, -0.593275, -0.790007,
		-0.734450, -0.603866, 0.309723,
		-0.660810, 0.532326, -0.529112,
		25.157078, 39.852467, 54.263096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.005661, 39.019058, 54.368790>,  <25.619644, 39.479839, 54.633472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.005661, 39.019058, 54.368790> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.040611, 39.340004, 54.132626>,  <25.061581, 39.532570, 53.990929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.040611, 39.340004, 54.132626>,  <25.005661, 39.019058, 54.368790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.040611, 39.340004, 54.132626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145617, -0.596595, -0.789221,
		-0.985475, -0.017015, -0.168966,
		0.087376, 0.802362, -0.590407,
		25.066824, 39.580711, 53.955505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.548962, 38.873394, 53.793503>,  <25.005661, 39.019058, 54.368790>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.548962, 38.873394, 53.793503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.827307, 39.131516, 53.667423>,  <24.994314, 39.286388, 53.591774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.827307, 39.131516, 53.667423>,  <24.548962, 38.873394, 53.793503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.827307, 39.131516, 53.667423> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083063, -0.508261, -0.857188,
		-0.713354, 0.570305, -0.407282,
		0.695864, 0.645308, -0.315199,
		25.036066, 39.325108, 53.572865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.520903, 38.863224, 53.069607>,  <24.548962, 38.873394, 53.793503>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.520903, 38.863224, 53.069607> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.871609, 39.051727, 53.107979>,  <25.082031, 39.164829, 53.131001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.871609, 39.051727, 53.107979>,  <24.520903, 38.863224, 53.069607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.871609, 39.051727, 53.107979> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333321, -0.451670, -0.827581,
		-0.346675, 0.757568, -0.553088,
		0.876763, 0.471258, 0.095930,
		25.134638, 39.193104, 53.136757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.606308, 39.023026, 52.429108>,  <24.520903, 38.863224, 53.069607>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.606308, 39.023026, 52.429108> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.961863, 39.075947, 52.604553>,  <25.175196, 39.107700, 52.709820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.961863, 39.075947, 52.604553>,  <24.606308, 39.023026, 52.429108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.961863, 39.075947, 52.604553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415413, -0.636465, -0.649881,
		0.193177, 0.759873, -0.620705,
		0.888884, 0.132307, 0.438611,
		25.228527, 39.115639, 52.736137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.998566, 39.218487, 51.961094>,  <24.606308, 39.023026, 52.429108>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.998566, 39.218487, 51.961094> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.262177, 39.055828, 52.214180>,  <25.420343, 38.958233, 52.366032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.262177, 39.055828, 52.214180>,  <24.998566, 39.218487, 51.961094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.262177, 39.055828, 52.214180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436462, -0.478333, -0.762036,
		0.612524, 0.778357, -0.137750,
		0.659026, -0.406642, 0.632714,
		25.459885, 38.933834, 52.403996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.694607, 39.151775, 51.637234>,  <24.998566, 39.218487, 51.961094>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.694607, 39.151775, 51.637234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.712610, 38.890770, 51.939812>,  <25.723412, 38.734169, 52.121357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.712610, 38.890770, 51.939812>,  <25.694607, 39.151775, 51.637234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.712610, 38.890770, 51.939812> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444460, -0.665060, -0.600126,
		0.894667, 0.363218, 0.260082,
		0.045007, -0.652509, 0.756443,
		25.726112, 38.695019, 52.166744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.390884, 39.030838, 51.801395>,  <25.694607, 39.151775, 51.637234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.390884, 39.030838, 51.801395> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.205513, 38.705101, 51.941158>,  <26.094290, 38.509659, 52.025017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.205513, 38.705101, 51.941158>,  <26.390884, 39.030838, 51.801395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.205513, 38.705101, 51.941158> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649831, -0.580388, -0.490784,
		0.602456, -0.000389, 0.798152,
		-0.463429, -0.814340, 0.349405,
		26.066484, 38.460800, 52.045979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.935223, 38.452168, 51.862347>,  <26.390884, 39.030838, 51.801395>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.935223, 38.452168, 51.862347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.584112, 38.260643, 51.868603>,  <26.373446, 38.145729, 51.872356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.584112, 38.260643, 51.868603>,  <26.935223, 38.452168, 51.862347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.584112, 38.260643, 51.868603> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373352, -0.704171, -0.603947,
		0.300192, -0.524291, 0.796871,
		-0.877777, -0.478814, 0.015641,
		26.320780, 38.117001, 51.873295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.047565, 37.829117, 52.222713>,  <26.935223, 38.452168, 51.862347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.047565, 37.829117, 52.222713> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.738644, 37.815720, 51.968967>,  <26.553289, 37.807682, 51.816719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.738644, 37.815720, 51.968967>,  <27.047565, 37.829117, 52.222713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.738644, 37.815720, 51.968967> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538277, -0.564802, -0.625505,
		-0.337344, -0.824547, 0.454226,
		-0.772306, -0.033489, -0.634367,
		26.506952, 37.805672, 51.778656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.786589, 37.105362, 52.177505>,  <27.047565, 37.829117, 52.222713>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.786589, 37.105362, 52.177505> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.705603, 37.323948, 51.852448>,  <26.657011, 37.455097, 51.657413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.705603, 37.323948, 51.852448>,  <26.786589, 37.105362, 52.177505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.705603, 37.323948, 51.852448> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477659, -0.669315, -0.569087,
		-0.854897, -0.503387, -0.125508,
		-0.202466, 0.546461, -0.812643,
		26.644863, 37.487885, 51.608654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.811777, 36.575592, 51.666458>,  <26.786589, 37.105362, 52.177505>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.811777, 36.575592, 51.666458> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.815134, 36.919342, 51.461948>,  <26.817148, 37.125591, 51.339241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.815134, 36.919342, 51.461948>,  <26.811777, 36.575592, 51.666458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.815134, 36.919342, 51.461948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570064, -0.424184, -0.703630,
		-0.821558, -0.285557, -0.493457,
		0.008390, 0.859375, -0.511278,
		26.817652, 37.177155, 51.308563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.690340, 36.337189, 50.973915>,  <26.811777, 36.575592, 51.666458>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.690340, 36.337189, 50.973915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.860735, 36.697296, 50.938004>,  <26.962971, 36.913361, 50.916458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.860735, 36.697296, 50.938004>,  <26.690340, 36.337189, 50.973915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.860735, 36.697296, 50.938004> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635701, -0.368447, -0.678329,
		-0.643755, 0.231885, -0.729253,
		0.425985, 0.900264, -0.089780,
		26.988531, 36.967377, 50.911068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.635836, 36.498146, 50.251465>,  <26.690340, 36.337189, 50.973915>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.635836, 36.498146, 50.251465> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.949118, 36.676743, 50.424549>,  <27.137087, 36.783901, 50.528400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.949118, 36.676743, 50.424549>,  <26.635836, 36.498146, 50.251465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.949118, 36.676743, 50.424549> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600753, -0.364028, -0.711744,
		-0.160270, 0.817391, -0.553340,
		0.783204, 0.446492, 0.432708,
		27.184078, 36.810692, 50.554363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.081137, 36.697979, 49.633827>,  <26.635836, 36.498146, 50.251465>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.081137, 36.697979, 49.633827> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.338379, 36.743820, 49.936687>,  <27.492723, 36.771324, 50.118404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.338379, 36.743820, 49.936687>,  <27.081137, 36.697979, 49.633827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.338379, 36.743820, 49.936687> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739324, -0.350554, -0.574901,
		0.199539, 0.929504, -0.310172,
		0.643105, 0.114602, 0.757154,
		27.531311, 36.778202, 50.163834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.591007, 37.025864, 49.384430>,  <27.081137, 36.697979, 49.633827>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.591007, 37.025864, 49.384430> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.747972, 36.868149, 49.716827>,  <27.842152, 36.773518, 49.916264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.747972, 36.868149, 49.716827>,  <27.591007, 37.025864, 49.384430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.747972, 36.868149, 49.716827> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836712, -0.222192, -0.500544,
		0.381999, 0.891720, 0.242717,
		0.392415, -0.394291, 0.830990,
		27.865698, 36.749863, 49.966125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.216627, 37.309555, 49.447113>,  <27.591007, 37.025864, 49.384430>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.216627, 37.309555, 49.447113> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.220541, 36.968349, 49.655834>,  <28.222889, 36.763626, 49.781067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.220541, 36.968349, 49.655834>,  <28.216627, 37.309555, 49.447113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.220541, 36.968349, 49.655834> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812295, -0.297545, -0.501642,
		0.583165, 0.428767, 0.689983,
		0.009787, -0.853010, 0.521803,
		28.223476, 36.712448, 49.812374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.852636, 36.953255, 49.180012>,  <28.216627, 37.309555, 49.447113>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.852636, 36.953255, 49.180012> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.731340, 36.647617, 49.407768>,  <28.658564, 36.464233, 49.544422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.731340, 36.647617, 49.407768>,  <28.852636, 36.953255, 49.180012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.731340, 36.647617, 49.407768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709379, -0.579977, -0.400509,
		0.636261, 0.282464, 0.717904,
		-0.303239, -0.764094, 0.569391,
		28.640369, 36.418388, 49.578587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.381405, 36.650787, 49.622940>,  <28.852636, 36.953255, 49.180012>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.381405, 36.650787, 49.622940> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.116322, 36.353565, 49.585648>,  <28.957272, 36.175232, 49.563271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.116322, 36.353565, 49.585648>,  <29.381405, 36.650787, 49.622940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.116322, 36.353565, 49.585648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728013, -0.610046, -0.312797,
		0.175548, -0.275167, 0.945233,
		-0.662707, -0.743053, -0.093233,
		28.917509, 36.130650, 49.557678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.636850, 36.095383, 49.905510>,  <29.381405, 36.650787, 49.622940>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.636850, 36.095383, 49.905510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.355869, 35.961903, 49.654049>,  <29.187281, 35.881813, 49.503174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.355869, 35.961903, 49.654049>,  <29.636850, 36.095383, 49.905510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.355869, 35.961903, 49.654049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670106, -0.607723, -0.426181,
		-0.239827, -0.720635, 0.650514,
		-0.702454, -0.333703, -0.628650,
		29.145134, 35.861790, 49.465454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.727140, 35.362267, 49.842022>,  <29.636850, 36.095383, 49.905510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.727140, 35.362267, 49.842022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.485840, 35.449448, 49.535145>,  <29.341061, 35.501755, 49.351017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.485840, 35.449448, 49.535145>,  <29.727140, 35.362267, 49.842022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.485840, 35.449448, 49.535145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492371, -0.654971, -0.573222,
		-0.627421, -0.723542, 0.287803,
		-0.603253, 0.217946, -0.767193,
		29.304865, 35.514832, 49.304985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.500443, 34.760750, 49.689301>,  <29.727140, 35.362267, 49.842022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.500443, 34.760750, 49.689301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.452147, 34.971519, 49.352783>,  <29.423170, 35.097980, 49.150875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.452147, 34.971519, 49.352783>,  <29.500443, 34.760750, 49.689301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.452147, 34.971519, 49.352783> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562428, -0.662031, -0.495369,
		-0.817984, -0.532975, -0.216426,
		-0.120738, 0.526928, -0.841290,
		29.415924, 35.129597, 49.100395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.149107, 34.335258, 49.232338>,  <29.500443, 34.760750, 49.689301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.149107, 34.335258, 49.232338> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.351772, 34.615627, 49.031536>,  <29.473372, 34.783848, 48.911057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.351772, 34.615627, 49.031536>,  <29.149107, 34.335258, 49.232338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.351772, 34.615627, 49.031536> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560661, -0.710206, -0.425754,
		-0.654945, -0.065742, -0.752811,
		0.506661, 0.700917, -0.502005,
		29.503771, 34.825901, 48.880936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.126764, 34.117306, 48.535015>,  <29.149107, 34.335258, 49.232338>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.126764, 34.117306, 48.535015> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.444036, 34.358147, 48.571537>,  <29.634399, 34.502651, 48.593452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.444036, 34.358147, 48.571537>,  <29.126764, 34.117306, 48.535015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.444036, 34.358147, 48.571537> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567186, -0.675800, -0.470738,
		-0.221726, 0.425170, -0.877535,
		0.793182, 0.602101, 0.091308,
		29.681992, 34.538776, 48.598930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.402729, 34.057762, 47.845371>,  <29.126764, 34.117306, 48.535015>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.402729, 34.057762, 47.845371> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.687790, 34.183235, 48.096363>,  <29.858826, 34.258518, 48.246960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.687790, 34.183235, 48.096363>,  <29.402729, 34.057762, 47.845371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.687790, 34.183235, 48.096363> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631147, -0.677159, -0.378299,
		0.306242, 0.665629, -0.680554,
		0.712650, 0.313679, 0.627484,
		29.901585, 34.277340, 48.284607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.058374, 34.114830, 47.444981>,  <29.402729, 34.057762, 47.845371>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.058374, 34.114830, 47.444981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.169653, 34.092548, 47.828545>,  <30.236420, 34.079182, 48.058681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.169653, 34.092548, 47.828545>,  <30.058374, 34.114830, 47.444981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.169653, 34.092548, 47.828545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653744, -0.720431, -0.231511,
		0.703723, 0.691285, -0.164005,
		0.278195, -0.055702, 0.958908,
		30.253111, 34.075836, 48.116219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.803249, 34.150436, 47.427826>,  <30.058374, 34.114830, 47.444981>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.803249, 34.150436, 47.427826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.680960, 34.018250, 47.784996>,  <30.607586, 33.938938, 47.999298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.680960, 34.018250, 47.784996>,  <30.803249, 34.150436, 47.427826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.680960, 34.018250, 47.784996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594218, -0.798995, -0.092258,
		0.743935, 0.502389, 0.440642,
		-0.305722, -0.330472, 0.892929,
		30.589243, 33.919109, 48.052876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.448036, 33.974743, 47.682270>,  <30.803249, 34.150436, 47.427826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.448036, 33.974743, 47.682270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.196783, 33.786659, 47.930252>,  <31.046030, 33.673809, 48.079041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.196783, 33.786659, 47.930252>,  <31.448036, 33.974743, 47.682270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.196783, 33.786659, 47.930252> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701389, -0.687132, 0.189480,
		0.336897, 0.553851, 0.761413,
		-0.628135, -0.470212, 0.619957,
		31.008343, 33.645596, 48.116238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.785881, 33.905125, 48.292484>,  <31.448036, 33.974743, 47.682270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.785881, 33.905125, 48.292484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.491652, 33.635666, 48.263832>,  <31.315113, 33.473991, 48.246639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.491652, 33.635666, 48.263832>,  <31.785881, 33.905125, 48.292484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.491652, 33.635666, 48.263832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659964, -0.736445, 0.148647,
		-0.152887, 0.062068, 0.986292,
		-0.735576, -0.673644, -0.071631,
		31.270979, 33.433571, 48.242344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.824230, 33.417366, 48.847366>,  <31.785881, 33.905125, 48.292484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.824230, 33.417366, 48.847366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.576830, 33.199581, 48.620731>,  <31.428389, 33.068913, 48.484753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.576830, 33.199581, 48.620731>,  <31.824230, 33.417366, 48.847366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.576830, 33.199581, 48.620731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641496, -0.766277, 0.036075,
		-0.453802, -0.341150, 0.823213,
		-0.618503, -0.544459, -0.566585,
		31.391279, 33.036243, 48.450756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.841236, 32.686699, 49.094196>,  <31.824230, 33.417366, 48.847366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.841236, 32.686699, 49.094196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.721067, 32.676094, 48.712822>,  <31.648966, 32.669731, 48.483997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.721067, 32.676094, 48.712822>,  <31.841236, 32.686699, 49.094196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.721067, 32.676094, 48.712822> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699553, -0.685624, -0.201360,
		-0.648362, -0.727473, 0.224519,
		-0.300419, -0.026509, -0.953439,
		31.630941, 32.668140, 48.426792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.830690, 31.915888, 49.048203>,  <31.841236, 32.686699, 49.094196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.830690, 31.915888, 49.048203> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.827448, 32.075733, 48.681545>,  <31.825502, 32.171642, 48.461552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.827448, 32.075733, 48.681545>,  <31.830690, 31.915888, 49.048203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.827448, 32.075733, 48.681545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681827, -0.668334, -0.297392,
		-0.731469, -0.627405, -0.267051,
		-0.008106, 0.399615, -0.916647,
		31.825016, 32.195618, 48.406551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.788578, 31.319069, 48.529907>,  <31.830690, 31.915888, 49.048203>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.788578, 31.319069, 48.529907> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.943348, 31.637001, 48.342918>,  <32.036209, 31.827761, 48.230724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.943348, 31.637001, 48.342918>,  <31.788578, 31.319069, 48.529907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.943348, 31.637001, 48.342918> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792962, -0.545554, -0.271261,
		-0.470638, -0.265730, -0.841360,
		0.386925, 0.794832, -0.467472,
		32.059425, 31.875450, 48.202675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.895874, 31.022999, 47.973953>,  <31.788578, 31.319069, 48.529907>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.895874, 31.022999, 47.973953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.116169, 31.356789, 47.981319>,  <32.248344, 31.557062, 47.985737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.116169, 31.356789, 47.981319>,  <31.895874, 31.022999, 47.973953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.116169, 31.356789, 47.981319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818548, -0.535644, -0.207519,
		-0.163307, 0.129360, -0.978058,
		0.550735, 0.834477, 0.018413,
		32.281391, 31.607132, 47.986843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.353825, 30.867918, 47.487103>,  <31.895874, 31.022999, 47.973953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.353825, 30.867918, 47.487103> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.534054, 31.178288, 47.663708>,  <32.642189, 31.364510, 47.769669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.534054, 31.178288, 47.663708>,  <32.353825, 30.867918, 47.487103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.534054, 31.178288, 47.663708> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891199, -0.419995, -0.171372,
		0.052461, 0.470687, -0.880739,
		0.450569, 0.775924, 0.441509,
		32.669224, 31.411064, 47.796162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.839039, 31.131708, 47.018246>,  <32.353825, 30.867918, 47.487103>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.839039, 31.131708, 47.018246> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.947716, 31.221283, 47.392632>,  <33.012924, 31.275028, 47.617264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.947716, 31.221283, 47.392632>,  <32.839039, 31.131708, 47.018246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.947716, 31.221283, 47.392632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860665, -0.491712, -0.132189,
		0.430624, 0.841470, -0.326330,
		0.271694, 0.223937, 0.935967,
		33.029224, 31.288464, 47.673420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.610813, 31.269428, 46.950661>,  <32.839039, 31.131708, 47.018246>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.610813, 31.269428, 46.950661> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.538033, 31.227623, 47.341755>,  <33.494366, 31.202539, 47.576412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.538033, 31.227623, 47.341755>,  <33.610813, 31.269428, 46.950661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.538033, 31.227623, 47.341755> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863985, -0.491750, 0.108219,
		0.469492, 0.864442, 0.179771,
		-0.181951, -0.104511, 0.977738,
		33.483448, 31.196270, 47.635075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.220924, 31.489096, 47.307140>,  <33.610813, 31.269428, 46.950661>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.220924, 31.489096, 47.307140> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.027786, 31.204554, 47.511425>,  <33.911903, 31.033829, 47.633995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.027786, 31.204554, 47.511425>,  <34.220924, 31.489096, 47.307140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.027786, 31.204554, 47.511425> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871797, -0.445509, 0.203697,
		0.082625, 0.543593, 0.835273,
		-0.482850, -0.711357, 0.510712,
		33.882931, 30.991146, 47.664639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.285522, 31.542955, 48.136829>,  <34.220924, 31.489096, 47.307140>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.285522, 31.542955, 48.136829> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.253548, 31.185419, 47.960350>,  <34.234364, 30.970898, 47.854462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.253548, 31.185419, 47.960350>,  <34.285522, 31.542955, 48.136829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.253548, 31.185419, 47.960350> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926037, -0.230385, 0.298962,
		-0.368870, -0.384665, 0.846148,
		-0.079939, -0.893843, -0.441197,
		34.229565, 30.917267, 47.827991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.553638, 31.001551, 48.633575>,  <34.285522, 31.542955, 48.136829>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.553638, 31.001551, 48.633575> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.592869, 30.884241, 48.253181>,  <34.616405, 30.813856, 48.024944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.592869, 30.884241, 48.253181>,  <34.553638, 31.001551, 48.633575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.592869, 30.884241, 48.253181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935147, -0.299715, 0.188867,
		-0.340414, -0.907834, 0.244861,
		0.098072, -0.293274, -0.950985,
		34.622292, 30.796259, 47.967888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.685791, 30.305363, 48.595783>,  <34.553638, 31.001551, 48.633575>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.685791, 30.305363, 48.595783> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.859692, 30.438898, 48.261227>,  <34.964031, 30.519020, 48.060493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.859692, 30.438898, 48.261227>,  <34.685791, 30.305363, 48.595783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.859692, 30.438898, 48.261227> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889236, -0.305912, 0.340115,
		-0.142318, -0.891611, -0.429855,
		0.434748, 0.333838, -0.836389,
		34.990116, 30.539049, 48.010311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.285076, 29.815166, 48.516422>,  <34.685791, 30.305363, 48.595783>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.285076, 29.815166, 48.516422> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.339176, 30.155006, 48.312504>,  <35.371635, 30.358910, 48.190155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.339176, 30.155006, 48.312504>,  <35.285076, 29.815166, 48.516422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.339176, 30.155006, 48.312504> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908521, 0.098953, 0.405952,
		0.395342, -0.518063, -0.758496,
		0.135253, 0.849599, -0.509791,
		35.379753, 30.409885, 48.159565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.877380, 30.067045, 48.808167>,  <35.285076, 29.815166, 48.516422>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.877380, 30.067045, 48.808167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.827122, 30.286039, 48.477234>,  <35.796967, 30.417437, 48.278675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.827122, 30.286039, 48.477234>,  <35.877380, 30.067045, 48.808167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.827122, 30.286039, 48.477234> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883151, 0.441633, 0.158128,
		0.451948, -0.710788, -0.539003,
		-0.125646, 0.547486, -0.827328,
		35.789429, 30.450285, 48.229034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.490833, 30.048555, 48.419548>,  <35.877380, 30.067045, 48.808167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.490833, 30.048555, 48.419548> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.267120, 30.373331, 48.352669>,  <36.132893, 30.568195, 48.312542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.267120, 30.373331, 48.352669>,  <36.490833, 30.048555, 48.419548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.267120, 30.373331, 48.352669> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828208, 0.555955, -0.070608,
		0.035626, -0.177966, -0.983392,
		-0.559287, 0.811938, -0.167200,
		36.099335, 30.616913, 48.302509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.565838, 30.418730, 47.719078>,  <36.490833, 30.048555, 48.419548>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.565838, 30.418730, 47.719078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.504536, 30.680744, 48.015034>,  <36.467754, 30.837954, 48.192608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.504536, 30.680744, 48.015034>,  <36.565838, 30.418730, 47.719078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.504536, 30.680744, 48.015034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648951, 0.631370, -0.424539,
		-0.745235, 0.415091, -0.521848,
		-0.153257, 0.655035, 0.739893,
		36.458557, 30.877254, 48.237003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.346138, 31.022045, 47.395683>,  <36.565838, 30.418730, 47.719078>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.346138, 31.022045, 47.395683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.558266, 31.056231, 47.733074>,  <36.685543, 31.076742, 47.935509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.558266, 31.056231, 47.733074>,  <36.346138, 31.022045, 47.395683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.558266, 31.056231, 47.733074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732501, 0.454734, -0.506616,
		-0.426855, 0.886517, 0.178553,
		0.530318, 0.085461, 0.843480,
		36.717361, 31.081869, 47.986118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.616978, 31.756054, 47.413277>,  <36.346138, 31.022045, 47.395683>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.616978, 31.756054, 47.413277> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.856812, 31.610224, 47.698257>,  <37.000713, 31.522726, 47.869244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.856812, 31.610224, 47.698257>,  <36.616978, 31.756054, 47.413277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.856812, 31.610224, 47.698257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693850, 0.680440, -0.235740,
		-0.398834, 0.635679, 0.660942,
		0.599586, -0.364574, 0.712448,
		37.036686, 31.500851, 47.911991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899891, 32.310043, 47.696064>,  <36.616978, 31.756054, 47.413277>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.899891, 32.310043, 47.696064> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.138878, 32.010139, 47.809834>,  <37.282269, 31.830196, 47.878094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.138878, 32.010139, 47.809834>,  <36.899891, 32.310043, 47.696064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.138878, 32.010139, 47.809834> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801895, 0.558564, -0.212065,
		0.000131, 0.354777, 0.934951,
		0.597465, -0.749760, 0.284421,
		37.318119, 31.785212, 47.895161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.424694, 32.582836, 48.268970>,  <36.899891, 32.310043, 47.696064>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.424694, 32.582836, 48.268970> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.589104, 32.279446, 48.066673>,  <37.687752, 32.097412, 47.945297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.589104, 32.279446, 48.066673>,  <37.424694, 32.582836, 48.268970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.589104, 32.279446, 48.066673> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811033, 0.557564, -0.177054,
		0.416273, -0.337397, 0.844323,
		0.411026, -0.758476, -0.505739,
		37.712410, 32.051903, 47.914951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.175468, 32.496918, 48.579639>,  <37.424694, 32.582836, 48.268970>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.175468, 32.496918, 48.579639> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.151100, 32.301353, 48.231560>,  <38.136478, 32.184013, 48.022713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.151100, 32.301353, 48.231560>,  <38.175468, 32.496918, 48.579639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.151100, 32.301353, 48.231560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833115, 0.455256, -0.314106,
		0.549735, -0.744116, 0.379583,
		-0.060923, -0.488911, -0.870203,
		38.132824, 32.154678, 47.970497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.830418, 32.216885, 48.346836>,  <38.175468, 32.496918, 48.579639>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.830418, 32.216885, 48.346836> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.650581, 32.256046, 47.991695>,  <38.542679, 32.279541, 47.778610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.650581, 32.256046, 47.991695>,  <38.830418, 32.216885, 48.346836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.650581, 32.256046, 47.991695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778573, 0.530158, -0.335794,
		0.437828, -0.842228, -0.314578,
		-0.449591, 0.097902, -0.887853,
		38.515705, 32.285416, 47.725338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.396439, 32.189270, 47.887493>,  <38.830418, 32.216885, 48.346836>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.396439, 32.189270, 47.887493> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.084660, 32.372936, 47.717018>,  <38.897594, 32.483135, 47.614735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.084660, 32.372936, 47.717018>,  <39.396439, 32.189270, 47.887493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.084660, 32.372936, 47.717018> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610868, 0.707945, -0.354479,
		0.138954, -0.536641, -0.832291,
		-0.779444, 0.459163, -0.426189,
		38.850826, 32.510685, 47.589161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.613373, 32.377834, 47.128777>,  <39.396439, 32.189270, 47.887493>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.613373, 32.377834, 47.128777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.313721, 32.627888, 47.216423>,  <39.133930, 32.777920, 47.269012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.313721, 32.627888, 47.216423>,  <39.613373, 32.377834, 47.128777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.313721, 32.627888, 47.216423> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485452, 0.743159, -0.460491,
		-0.450706, -0.238597, -0.860195,
		-0.749133, 0.625130, 0.219119,
		39.088982, 32.815426, 47.282158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.309959, 32.599850, 46.485210>,  <39.613373, 32.377834, 47.128777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.309959, 32.599850, 46.485210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.305573, 32.847626, 46.799198>,  <39.302940, 32.996292, 46.987591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.305573, 32.847626, 46.799198>,  <39.309959, 32.599850, 46.485210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.305573, 32.847626, 46.799198> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381125, 0.728348, -0.569431,
		-0.924458, 0.292926, -0.244072,
		-0.010968, 0.619438, 0.784969,
		39.302280, 33.033459, 47.034687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.688549, 32.787071, 45.777184>,  <39.309959, 32.599850, 46.485210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.688549, 32.787071, 45.777184> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.499481, 32.678902, 45.441696>,  <39.386040, 32.613998, 45.240402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.499481, 32.678902, 45.441696>,  <39.688549, 32.787071, 45.777184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.499481, 32.678902, 45.441696> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406830, 0.911222, -0.064526,
		0.781710, 0.310717, -0.540726,
		-0.472672, -0.270424, -0.838720,
		39.357681, 32.597775, 45.190079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.011795, 33.164280, 45.104450>,  <39.688549, 32.787071, 45.777184>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.011795, 33.164280, 45.104450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.623627, 33.068333, 45.093464>,  <39.390728, 33.010765, 45.086872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.623627, 33.068333, 45.093464>,  <40.011795, 33.164280, 45.104450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.623627, 33.068333, 45.093464> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236720, 0.967663, -0.087136,
		0.047475, -0.078057, -0.995818,
		-0.970417, -0.239867, -0.027462,
		39.332500, 32.996372, 45.085224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.622166, 33.586464, 44.604965>,  <40.011795, 33.164280, 45.104450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.622166, 33.586464, 44.604965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.331642, 33.492672, 44.863422>,  <39.157330, 33.436398, 45.018497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.331642, 33.492672, 44.863422>,  <39.622166, 33.586464, 44.604965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.331642, 33.492672, 44.863422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288125, 0.957304, 0.023531,
		-0.624070, -0.169079, -0.762856,
		-0.726306, -0.234483, 0.646140,
		39.113750, 33.422325, 45.057266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.591129, 33.898575, 43.987129>,  <39.622166, 33.586464, 44.604965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.591129, 33.898575, 43.987129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.530956, 33.733624, 43.627728>,  <39.494854, 33.634651, 43.412086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.530956, 33.733624, 43.627728>,  <39.591129, 33.898575, 43.987129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.530956, 33.733624, 43.627728> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104526, -0.910387, 0.400336,
		-0.983079, -0.033695, 0.180055,
		-0.150430, -0.412383, -0.898505,
		39.485828, 33.609909, 43.358177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.892368, 33.457287, 43.872971>,  <39.591129, 33.898575, 43.987129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.892368, 33.457287, 43.872971> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.231659, 33.349457, 43.690609>,  <39.435234, 33.284760, 43.581192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.231659, 33.349457, 43.690609>,  <38.892368, 33.457287, 43.872971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.231659, 33.349457, 43.690609> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002594, -0.862887, 0.505391,
		-0.529631, -0.427502, -0.732620,
		0.848224, -0.269571, -0.455903,
		39.486126, 33.268585, 43.553837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.866096, 32.755077, 43.745609>,  <38.892368, 33.457287, 43.872971>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.866096, 32.755077, 43.745609> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.259361, 32.825851, 43.727329>,  <39.495319, 32.868317, 43.716362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.259361, 32.825851, 43.727329>,  <38.866096, 32.755077, 43.745609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.259361, 32.825851, 43.727329> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176755, -0.857224, 0.483658,
		0.046400, -0.483592, -0.874063,
		0.983161, 0.176937, -0.045702,
		39.554310, 32.878933, 43.713619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.590092, 32.033047, 43.775455>,  <38.866096, 32.755077, 43.745609>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.590092, 32.033047, 43.775455> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.680920, 31.979244, 43.389637>,  <38.735416, 31.946962, 43.158146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.680920, 31.979244, 43.389637>,  <38.590092, 32.033047, 43.775455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.680920, 31.979244, 43.389637> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755248, -0.600969, 0.261603,
		-0.614849, -0.787873, -0.034875,
		0.227069, -0.134507, -0.964545,
		38.749039, 31.938892, 43.100273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.674725, 31.334818, 43.581165>,  <38.590092, 32.033047, 43.775455>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.674725, 31.334818, 43.581165> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.878582, 31.525379, 43.294586>,  <39.000896, 31.639717, 43.122639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.878582, 31.525379, 43.294586>,  <38.674725, 31.334818, 43.581165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.878582, 31.525379, 43.294586> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803418, -0.561474, 0.198159,
		-0.307863, -0.676598, -0.668906,
		0.509647, 0.476405, -0.716448,
		39.031475, 31.668301, 43.079651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.026234, 30.893208, 43.140259>,  <38.674725, 31.334818, 43.581165>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.026234, 30.893208, 43.140259> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.239281, 31.231745, 43.142097>,  <39.367111, 31.434866, 43.143200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.239281, 31.231745, 43.142097>,  <39.026234, 30.893208, 43.140259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.239281, 31.231745, 43.142097> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830456, -0.523656, 0.190071,
		0.163273, -0.097417, -0.981760,
		0.532620, 0.846342, 0.004599,
		39.399067, 31.485647, 43.143478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.476303, 31.106020, 42.616589>,  <39.026234, 30.893208, 43.140259>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.476303, 31.106020, 42.616589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.365124, 31.484827, 42.552212>,  <39.298416, 31.712111, 42.513584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.365124, 31.484827, 42.552212>,  <39.476303, 31.106020, 42.616589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.365124, 31.484827, 42.552212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781531, 0.125527, -0.611107,
		-0.558526, -0.295639, -0.775014,
		-0.277953, 0.947016, -0.160941,
		39.281738, 31.768932, 42.503929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.221554, 31.274054, 41.904446>,  <39.476303, 31.106020, 42.616589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.221554, 31.274054, 41.904446> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.392273, 31.593834, 42.073547>,  <39.494705, 31.785702, 42.175011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.392273, 31.593834, 42.073547>,  <39.221554, 31.274054, 41.904446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.392273, 31.593834, 42.073547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709507, -0.006142, -0.704671,
		-0.560753, 0.600701, -0.569837,
		0.426797, 0.799450, 0.422757,
		39.520313, 31.833670, 42.200375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.463924, 31.682161, 41.350983>,  <39.221554, 31.274054, 41.904446>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.463924, 31.682161, 41.350983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.727768, 31.758450, 41.641785>,  <39.886074, 31.804222, 41.816265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.727768, 31.758450, 41.641785>,  <39.463924, 31.682161, 41.350983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.727768, 31.758450, 41.641785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750503, -0.114701, -0.650837,
		-0.040738, 0.974921, -0.218793,
		0.659610, 0.190719, 0.727008,
		39.925652, 31.815664, 41.859886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.005737, 32.056152, 41.144714>,  <39.463924, 31.682161, 41.350983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.005737, 32.056152, 41.144714> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.169418, 31.859549, 41.452213>,  <40.267628, 31.741587, 41.636715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.169418, 31.859549, 41.452213>,  <40.005737, 32.056152, 41.144714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.169418, 31.859549, 41.452213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831865, -0.145221, -0.535642,
		0.374910, 0.858681, 0.349441,
		0.409199, -0.491505, 0.768751,
		40.292179, 31.712097, 41.682838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.104748, 32.532280, 40.609138>,  <40.005737, 32.056152, 41.144714>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.104748, 32.532280, 40.609138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.357887, 32.227623, 40.553429>,  <40.509773, 32.044830, 40.520004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.357887, 32.227623, 40.553429>,  <40.104748, 32.532280, 40.609138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.357887, 32.227623, 40.553429> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709475, 0.498399, 0.498240,
		-0.310069, -0.414122, 0.855781,
		0.632852, -0.761644, -0.139271,
		40.547745, 31.999130, 40.511646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.620388, 32.627747, 41.219231>,  <40.104748, 32.532280, 40.609138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.620388, 32.627747, 41.219231> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.751369, 32.403156, 40.915253>,  <40.829960, 32.268402, 40.732864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.751369, 32.403156, 40.915253>,  <40.620388, 32.627747, 41.219231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.751369, 32.403156, 40.915253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912135, 0.397707, 0.099192,
		0.246541, -0.725653, 0.642374,
		0.327455, -0.561477, -0.759945,
		40.849606, 32.234715, 40.687267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.211216, 32.374115, 41.475796>,  <40.620388, 32.627747, 41.219231>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.211216, 32.374115, 41.475796> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.178917, 32.423809, 41.080212>,  <41.159538, 32.453625, 40.842861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.178917, 32.423809, 41.080212>,  <41.211216, 32.374115, 41.475796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.178917, 32.423809, 41.080212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956711, 0.288001, -0.041939,
		0.279611, -0.949538, -0.142112,
		-0.080751, 0.124233, -0.988962,
		41.154690, 32.461079, 40.783524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.768879, 31.989670, 41.214664>,  <41.211216, 32.374115, 41.475796>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.768879, 31.989670, 41.214664> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.656231, 32.316330, 41.013161>,  <41.588642, 32.512325, 40.892258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.656231, 32.316330, 41.013161>,  <41.768879, 31.989670, 41.214664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.656231, 32.316330, 41.013161> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873816, 0.435169, 0.216965,
		0.396404, -0.379089, -0.836156,
		-0.281620, 0.816652, -0.503756,
		41.571743, 32.561325, 40.862034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.366692, 32.270161, 40.721371>,  <41.768879, 31.989670, 41.214664>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.366692, 32.270161, 40.721371> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.115776, 32.554966, 40.847572>,  <41.965229, 32.725849, 40.923294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.115776, 32.554966, 40.847572>,  <42.366692, 32.270161, 40.721371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.115776, 32.554966, 40.847572> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778781, 0.571754, 0.258065,
		0.003357, 0.407588, -0.913160,
		-0.627287, 0.712018, 0.315502,
		41.927589, 32.768570, 40.942223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.406296, 32.812939, 40.159554>,  <42.366692, 32.270161, 40.721371>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.406296, 32.812939, 40.159554> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.308903, 33.149097, 39.965874>,  <42.250465, 33.350792, 39.849667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.308903, 33.149097, 39.965874>,  <42.406296, 32.812939, 40.159554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.308903, 33.149097, 39.965874> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931990, 0.064506, -0.356699,
		-0.268534, -0.538122, -0.798946,
		-0.243484, 0.840395, -0.484202,
		42.235859, 33.401215, 39.820614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.953503, 32.290539, 39.854183>,  <42.406296, 32.812939, 40.159554>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.953503, 32.290539, 39.854183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.063393, 32.136921, 40.206783>,  <43.129326, 32.044750, 40.418343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.063393, 32.136921, 40.206783>,  <42.953503, 32.290539, 39.854183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.063393, 32.136921, 40.206783> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856910, 0.513647, -0.043278,
		-0.436158, 0.767254, 0.470199,
		0.274721, -0.384042, 0.881499,
		43.145809, 32.021709, 40.471233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.065804, 32.807083, 40.576057>,  <42.953503, 32.290539, 39.854183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.065804, 32.807083, 40.576057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.273006, 32.472633, 40.503880>,  <43.397327, 32.271965, 40.460571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.273006, 32.472633, 40.503880>,  <43.065804, 32.807083, 40.576057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.273006, 32.472633, 40.503880> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834391, 0.540371, -0.108587,
		0.188302, -0.094315, 0.977572,
		0.518010, -0.836124, -0.180449,
		43.428410, 32.221798, 40.449745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.684853, 32.645576, 41.094360>,  <43.065804, 32.807083, 40.576057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.684853, 32.645576, 41.094360> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.756645, 32.518715, 40.721867>,  <43.799721, 32.442596, 40.498371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.756645, 32.518715, 40.721867>,  <43.684853, 32.645576, 41.094360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.756645, 32.518715, 40.721867> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762269, 0.643226, -0.072147,
		0.621876, -0.696902, 0.357207,
		0.179486, -0.317155, -0.931235,
		43.810490, 32.423569, 40.442497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.406002, 32.606869, 41.127605>,  <43.684853, 32.645576, 41.094360>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.406002, 32.606869, 41.127605> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.258636, 32.665707, 40.760426>,  <44.170216, 32.701008, 40.540115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.258636, 32.665707, 40.760426>,  <44.406002, 32.606869, 41.127605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.258636, 32.665707, 40.760426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639421, 0.756850, -0.135349,
		0.674843, -0.636822, -0.372888,
		-0.368413, 0.147093, -0.917952,
		44.148113, 32.709835, 40.485039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.899597, 32.753986, 40.616920>,  <44.406002, 32.606869, 41.127605>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.899597, 32.753986, 40.616920> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.635052, 32.835972, 40.328312>,  <44.476326, 32.885162, 40.155148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.635052, 32.835972, 40.328312>,  <44.899597, 32.753986, 40.616920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.635052, 32.835972, 40.328312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620291, 0.690284, -0.372487,
		0.421706, -0.693901, -0.583666,
		-0.661364, 0.204962, -0.721517,
		44.436642, 32.897461, 40.111858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.035168, 32.609543, 39.771526>,  <44.899597, 32.753986, 40.616920>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.035168, 32.609543, 39.771526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.833954, 32.927441, 39.907372>,  <44.713226, 33.118179, 39.988880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.833954, 32.927441, 39.907372>,  <45.035168, 32.609543, 39.771526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.833954, 32.927441, 39.907372> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660053, 0.606940, -0.442667,
		-0.557933, 0.001487, -0.829885,
		-0.503032, 0.794746, 0.339613,
		44.683044, 33.165863, 40.009254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.930962, 33.066730, 39.197319>,  <45.035168, 32.609543, 39.771526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.930962, 33.066730, 39.197319> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.960068, 33.304615, 39.517574>,  <44.977531, 33.447346, 39.709728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.960068, 33.304615, 39.517574>,  <44.930962, 33.066730, 39.197319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.960068, 33.304615, 39.517574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705311, 0.536896, -0.462904,
		-0.705154, 0.598386, -0.380385,
		0.072768, 0.594708, 0.800642,
		44.981899, 33.483028, 39.757767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.315891, 33.612904, 38.880119>,  <44.930962, 33.066730, 39.197319>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.315891, 33.612904, 38.880119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.315899, 33.700813, 39.270340>,  <45.315903, 33.753559, 39.504471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.315899, 33.700813, 39.270340>,  <45.315891, 33.612904, 38.880119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.315899, 33.700813, 39.270340> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745732, 0.649954, -0.146436,
		-0.666246, 0.727502, -0.163884,
		0.000016, 0.219776, 0.975550,
		45.315903, 33.766747, 39.563004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.347740, 34.322617, 39.028107>,  <45.315891, 33.612904, 38.880119>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.347740, 34.322617, 39.028107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.503616, 34.151634, 39.354401>,  <45.597141, 34.049046, 39.550179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.503616, 34.151634, 39.354401>,  <45.347740, 34.322617, 39.028107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.503616, 34.151634, 39.354401> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786630, 0.615106, -0.053460,
		-0.478911, 0.662514, 0.575950,
		0.389688, -0.427457, 0.815735,
		45.620522, 34.023396, 39.599121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.492573, 34.909466, 39.443172>,  <45.347740, 34.322617, 39.028107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.492573, 34.909466, 39.443172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.759937, 34.620846, 39.515385>,  <45.920357, 34.447674, 39.558712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.759937, 34.620846, 39.515385>,  <45.492573, 34.909466, 39.443172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.759937, 34.620846, 39.515385> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717717, 0.689393, 0.098081,
		-0.195228, 0.064014, 0.978667,
		0.668407, -0.721554, 0.180533,
		45.960461, 34.404381, 39.569546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.263222, 35.153206, 39.441776>,  <45.492573, 34.909466, 39.443172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.263222, 35.153206, 39.441776> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.383831, 35.003006, 39.091213>,  <46.456196, 34.912888, 38.880875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.383831, 35.003006, 39.091213>,  <46.263222, 35.153206, 39.441776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.383831, 35.003006, 39.091213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527277, 0.831508, -0.174856,
		0.794395, -0.409384, 0.448710,
		0.301523, -0.375499, -0.876404,
		46.474289, 34.890358, 38.828293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.983868, 35.158669, 39.385201>,  <46.263222, 35.153206, 39.441776>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.983868, 35.158669, 39.385201> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.809105, 35.187088, 39.026520>,  <46.704247, 35.204140, 38.811314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.809105, 35.187088, 39.026520>,  <46.983868, 35.158669, 39.385201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.809105, 35.187088, 39.026520> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516003, 0.836337, -0.185152,
		0.736787, -0.543593, -0.402059,
		-0.436904, 0.071046, -0.896698,
		46.678032, 35.208401, 38.757511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.304955, 34.545872, 39.236259>,  <46.983868, 35.158669, 39.385201>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.304955, 34.545872, 39.236259> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.400276, 34.363121, 38.893456>,  <47.457470, 34.253471, 38.687771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.400276, 34.363121, 38.893456>,  <47.304955, 34.545872, 39.236259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.400276, 34.363121, 38.893456> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443451, 0.733888, -0.514548,
		0.864039, 0.502661, -0.027717,
		0.238303, -0.456880, -0.857013,
		47.471767, 34.226055, 38.636353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.536201, 35.032246, 38.737179>,  <47.304955, 34.545872, 39.236259>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.536201, 35.032246, 38.737179> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.339821, 34.727493, 38.568180>,  <47.221992, 34.544643, 38.466782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.339821, 34.727493, 38.568180>,  <47.536201, 35.032246, 38.737179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.339821, 34.727493, 38.568180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680752, 0.638129, -0.359678,
		0.543637, 0.111028, -0.831945,
		-0.490954, -0.761882, -0.422493,
		47.192535, 34.498928, 38.441433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.362144, 35.086769, 37.977058>,  <47.536201, 35.032246, 38.737179>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.362144, 35.086769, 37.977058> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.053280, 34.883503, 38.129658>,  <46.867962, 34.761543, 38.221218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.053280, 34.883503, 38.129658>,  <47.362144, 35.086769, 37.977058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.053280, 34.883503, 38.129658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631539, 0.680057, -0.372399,
		-0.070203, -0.528483, -0.846036,
		-0.772160, -0.508161, 0.381500,
		46.821632, 34.731056, 38.244106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.569485, 35.394543, 37.324780>,  <47.362144, 35.086769, 37.977058>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.569485, 35.394543, 37.324780> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.944885, 35.323483, 37.206356>,  <48.170128, 35.280846, 37.135303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.944885, 35.323483, 37.206356>,  <47.569485, 35.394543, 37.324780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.944885, 35.323483, 37.206356> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262460, -0.924197, -0.277444,
		-0.224328, 0.338086, -0.913988,
		0.938505, -0.177647, -0.296058,
		48.226437, 35.270187, 37.117538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.440178, 35.076763, 36.746311>,  <47.569485, 35.394543, 37.324780>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.440178, 35.076763, 36.746311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.804234, 34.965546, 36.869175>,  <48.022667, 34.898815, 36.942894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.804234, 34.965546, 36.869175>,  <47.440178, 35.076763, 36.746311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.804234, 34.965546, 36.869175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210746, -0.948982, -0.234563,
		0.356708, 0.148751, -0.922297,
		0.910135, -0.278042, 0.307160,
		48.077274, 34.882133, 36.961323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.845711, 34.721935, 36.197422>,  <47.440178, 35.076763, 36.746311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.845711, 34.721935, 36.197422> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.959393, 34.573418, 36.551003>,  <48.027603, 34.484306, 36.763149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.959393, 34.573418, 36.551003>,  <47.845711, 34.721935, 36.197422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.959393, 34.573418, 36.551003> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424936, -0.875250, -0.231015,
		0.859451, -0.309965, -0.406529,
		0.284207, -0.371295, 0.883950,
		48.044655, 34.462029, 36.816189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.341381, 34.031063, 36.228817>,  <47.845711, 34.721935, 36.197422>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.341381, 34.031063, 36.228817> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.068268, 34.095882, 36.513786>,  <47.904400, 34.134773, 36.684769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.068268, 34.095882, 36.513786>,  <48.341381, 34.031063, 36.228817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.068268, 34.095882, 36.513786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347257, -0.929891, -0.121302,
		0.642821, -0.330217, 0.691186,
		-0.682784, 0.162044, 0.712424,
		47.863434, 34.144497, 36.727512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.390274, 33.402233, 36.722019>,  <48.341381, 34.031063, 36.228817>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.390274, 33.402233, 36.722019> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.036369, 33.586922, 36.696690>,  <47.824028, 33.697735, 36.681492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.036369, 33.586922, 36.696690>,  <48.390274, 33.402233, 36.722019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.036369, 33.586922, 36.696690> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445582, -0.877892, -0.175392,
		-0.136570, -0.126967, 0.982460,
		-0.884763, 0.461720, -0.063320,
		47.770939, 33.725437, 36.677692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.723801, 33.220493, 36.121887>,  <48.390274, 33.402233, 36.722019>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.723801, 33.220493, 36.121887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<49.000378, 33.508598, 36.144241>,  <49.166325, 33.681461, 36.157654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<49.000378, 33.508598, 36.144241>,  <48.723801, 33.220493, 36.121887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<49.000378, 33.508598, 36.144241> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499254, -0.420502, -0.757578,
		-0.522157, 0.551724, -0.650349,
		0.691446, 0.720263, 0.055882,
		49.207813, 33.724678, 36.161007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.609081, 33.668926, 35.507072>,  <48.723801, 33.220493, 36.121887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.609081, 33.668926, 35.507072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.975761, 33.634636, 35.663177>,  <49.195770, 33.614063, 35.756840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.975761, 33.634636, 35.663177>,  <48.609081, 33.668926, 35.507072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.975761, 33.634636, 35.663177> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277970, -0.564812, -0.776994,
		0.287033, 0.820755, -0.493937,
		0.916703, -0.085723, 0.390265,
		49.250771, 33.608917, 35.780258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.456951, 34.377270, 35.219704>,  <48.609081, 33.668926, 35.507072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.456951, 34.377270, 35.219704> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.138302, 34.585197, 35.343109>,  <47.947113, 34.709953, 35.417152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<48.138302, 34.585197, 35.343109>,  <48.456951, 34.377270, 35.219704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<48.138302, 34.585197, 35.343109> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243647, 0.743214, -0.623112,
		-0.553195, -0.421218, -0.718714,
		-0.796625, 0.519815, 0.308514,
		47.899315, 34.741142, 35.435665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.030354, 34.663410, 34.635895>,  <48.456951, 34.377270, 35.219704>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.030354, 34.663410, 34.635895> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.991405, 34.870464, 34.975910>,  <47.968037, 34.994698, 35.179920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.991405, 34.870464, 34.975910>,  <48.030354, 34.663410, 34.635895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.991405, 34.870464, 34.975910> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100389, 0.854853, -0.509067,
		-0.990172, 0.035768, -0.135201,
		-0.097369, 0.517637, 0.850042,
		47.962196, 35.025757, 35.230923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<31.121969, 34.609764, 56.831238> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.397209, 34.897945, 56.865799>,  <31.562353, 35.070854, 56.886536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.397209, 34.897945, 56.865799>,  <31.121969, 34.609764, 56.831238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.397209, 34.897945, 56.865799> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682995, -0.602870, -0.412389,
		-0.245017, 0.342778, -0.906901,
		0.688102, 0.720451, 0.086403,
		31.603640, 35.114082, 56.891720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.424582, 34.570679, 56.215584>,  <31.121969, 34.609764, 56.831238>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.424582, 34.570679, 56.215584> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.683550, 34.774727, 56.442078>,  <31.838930, 34.897156, 56.577976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.683550, 34.774727, 56.442078>,  <31.424582, 34.570679, 56.215584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.683550, 34.774727, 56.442078> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761450, -0.401501, -0.508911,
		-0.032261, 0.760641, -0.648371,
		0.647421, 0.510120, 0.566237,
		31.877775, 34.927761, 56.611950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.929588, 35.006794, 55.775650>,  <31.424582, 34.570679, 56.215584>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.929588, 35.006794, 55.775650> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.104683, 34.927170, 56.126366>,  <32.209740, 34.879395, 56.336796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.104683, 34.927170, 56.126366>,  <31.929588, 35.006794, 55.775650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.104683, 34.927170, 56.126366> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833591, -0.275575, -0.478732,
		0.336917, 0.940444, 0.045303,
		0.437736, -0.199057, 0.876792,
		32.236004, 34.867455, 56.389404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.502865, 35.336514, 55.727924>,  <31.929588, 35.006794, 55.775650>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.502865, 35.336514, 55.727924> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.598835, 35.067375, 56.007839>,  <32.656418, 34.905891, 56.175789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.598835, 35.067375, 56.007839>,  <32.502865, 35.336514, 55.727924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.598835, 35.067375, 56.007839> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759300, -0.319091, -0.567138,
		0.604895, 0.667424, 0.434335,
		0.239929, -0.672849, 0.699791,
		32.670815, 34.865520, 56.217777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.143665, 35.271732, 55.691566>,  <32.502865, 35.336514, 55.727924>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.143665, 35.271732, 55.691566> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.091805, 34.955841, 55.931408>,  <33.060688, 34.766308, 56.075314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.091805, 34.955841, 55.931408>,  <33.143665, 35.271732, 55.691566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.091805, 34.955841, 55.931408> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880845, -0.369403, -0.296064,
		0.455305, 0.489773, 0.743519,
		-0.129654, -0.789724, 0.599605,
		33.052910, 34.718925, 56.111290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.764732, 35.126484, 55.847897>,  <33.143665, 35.271732, 55.691566>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.764732, 35.126484, 55.847897> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.550869, 34.797470, 55.925434>,  <33.422550, 34.600063, 55.971958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.550869, 34.797470, 55.925434>,  <33.764732, 35.126484, 55.847897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.550869, 34.797470, 55.925434> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738366, -0.566267, -0.366275,
		0.411042, -0.052704, 0.910092,
		-0.534659, -0.822535, 0.193845,
		33.390472, 34.550709, 55.983589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.222519, 34.798878, 56.220375>,  <33.764732, 35.126484, 55.847897>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.222519, 34.798878, 56.220375> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.978607, 34.522110, 56.065758>,  <33.832260, 34.356049, 55.972988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.978607, 34.522110, 56.065758>,  <34.222519, 34.798878, 56.220375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.978607, 34.522110, 56.065758> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789455, -0.487015, -0.373599,
		0.070247, -0.532973, 0.843211,
		-0.609775, -0.691922, -0.386547,
		33.795673, 34.314533, 55.949795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.516850, 34.089069, 56.415878>,  <34.222519, 34.798878, 56.220375>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.516850, 34.089069, 56.415878> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.277916, 34.067303, 56.095821>,  <34.134556, 34.054241, 55.903786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.277916, 34.067303, 56.095821>,  <34.516850, 34.089069, 56.415878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.277916, 34.067303, 56.095821> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690593, -0.542169, -0.478680,
		-0.407763, -0.838506, 0.361439,
		-0.597337, -0.054419, -0.800142,
		34.098717, 34.050976, 55.855778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.626984, 33.434166, 56.167774>,  <34.516850, 34.089069, 56.415878>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.626984, 33.434166, 56.167774> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.423241, 33.587261, 55.859470>,  <34.300995, 33.679119, 55.674488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.423241, 33.587261, 55.859470>,  <34.626984, 33.434166, 56.167774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.423241, 33.587261, 55.859470> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427054, -0.665163, -0.612522,
		-0.747112, -0.641150, 0.175360,
		-0.509361, 0.382734, -0.770756,
		34.270432, 33.702080, 55.628242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.464893, 32.845707, 55.772484>,  <34.626984, 33.434166, 56.167774>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.464893, 32.845707, 55.772484> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.401680, 33.146912, 55.516983>,  <34.363750, 33.327633, 55.363682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.401680, 33.146912, 55.516983>,  <34.464893, 32.845707, 55.772484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.401680, 33.146912, 55.516983> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106258, -0.630154, -0.769166,
		-0.981700, -0.189427, 0.019573,
		-0.158035, 0.753010, -0.638750,
		34.354271, 33.372814, 55.325359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.843010, 32.691830, 55.277199>,  <34.464893, 32.845707, 55.772484>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.843010, 32.691830, 55.277199> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.111736, 32.940594, 55.116253>,  <34.272972, 33.089851, 55.019684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.111736, 32.940594, 55.116253>,  <33.843010, 32.691830, 55.277199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.111736, 32.940594, 55.116253> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071941, -0.595420, -0.800187,
		-0.737220, 0.508628, -0.444751,
		0.671812, 0.621910, -0.402364,
		34.313278, 33.127167, 54.995544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.700665, 32.802979, 54.572124>,  <33.843010, 32.691830, 55.277199>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.700665, 32.802979, 54.572124> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.086052, 32.909996, 54.567356>,  <34.317284, 32.974209, 54.564495>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.086052, 32.909996, 54.567356>,  <33.700665, 32.802979, 54.572124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.086052, 32.909996, 54.567356> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128296, -0.500183, -0.856363,
		-0.235083, 0.823551, -0.516237,
		0.963471, 0.267547, -0.011926,
		34.375092, 32.990261, 54.563778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.835327, 32.964756, 53.834248>,  <33.700665, 32.802979, 54.572124>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.835327, 32.964756, 53.834248> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.208084, 32.936348, 53.976536>,  <34.431736, 32.919304, 54.061909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.208084, 32.936348, 53.976536>,  <33.835327, 32.964756, 53.834248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.208084, 32.936348, 53.976536> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262131, -0.545995, -0.795724,
		0.250733, 0.834773, -0.490191,
		0.931891, -0.071021, 0.355719,
		34.487652, 32.915043, 54.083252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.338707, 33.221535, 53.348190>,  <33.835327, 32.964756, 53.834248>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.338707, 33.221535, 53.348190> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.529350, 32.949650, 53.571205>,  <34.643734, 32.786518, 53.705013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.529350, 32.949650, 53.571205>,  <34.338707, 33.221535, 53.348190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.529350, 32.949650, 53.571205> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122726, -0.576544, -0.807796,
		0.870508, 0.453425, -0.191367,
		0.476606, -0.679708, 0.557534,
		34.672333, 32.745739, 53.738464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.958698, 33.096764, 53.011665>,  <34.338707, 33.221535, 53.348190>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.958698, 33.096764, 53.011665> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.915707, 32.780304, 53.252506>,  <34.889912, 32.590427, 53.397011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.915707, 32.780304, 53.252506>,  <34.958698, 33.096764, 53.011665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.915707, 32.780304, 53.252506> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328854, -0.599815, -0.729436,
		0.938244, 0.119604, 0.324642,
		-0.107482, -0.791149, 0.602105,
		34.883461, 32.542961, 53.433136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.644867, 32.745037, 53.009506>,  <34.958698, 33.096764, 53.011665>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.644867, 32.745037, 53.009506> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.353931, 32.497646, 53.128475>,  <35.179371, 32.349213, 53.199856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.353931, 32.497646, 53.128475>,  <35.644867, 32.745037, 53.009506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.353931, 32.497646, 53.128475> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262090, -0.650866, -0.712518,
		0.634256, -0.440295, 0.635499,
		-0.727343, -0.618477, 0.297419,
		35.135727, 32.312103, 53.217701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.824211, 32.039177, 52.771446>,  <35.644867, 32.745037, 53.009506>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.824211, 32.039177, 52.771446> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.446754, 31.964798, 52.880966>,  <35.220280, 31.920172, 52.946678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.446754, 31.964798, 52.880966>,  <35.824211, 32.039177, 52.771446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.446754, 31.964798, 52.880966> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002327, -0.823515, -0.567289,
		0.330964, -0.535954, 0.776670,
		-0.943640, -0.185945, 0.273800,
		35.163662, 31.909014, 52.963108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.800137, 31.250299, 52.952213>,  <35.824211, 32.039177, 52.771446>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.800137, 31.250299, 52.952213> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.435478, 31.393045, 52.870678>,  <35.216682, 31.478693, 52.821758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.435478, 31.393045, 52.870678>,  <35.800137, 31.250299, 52.952213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.435478, 31.393045, 52.870678> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125483, -0.713993, -0.688816,
		-0.391352, -0.602378, 0.695690,
		-0.911645, 0.356867, -0.203834,
		35.161983, 31.500105, 52.809528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.440136, 30.687353, 52.739250>,  <35.800137, 31.250299, 52.952213>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.440136, 30.687353, 52.739250> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.214535, 30.976440, 52.579460>,  <35.079174, 31.149893, 52.483585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.214535, 30.976440, 52.579460>,  <35.440136, 30.687353, 52.739250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.214535, 30.976440, 52.579460> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132483, -0.556682, -0.820094,
		-0.815076, -0.409613, 0.409718,
		-0.564003, 0.722719, -0.399471,
		35.045334, 31.193256, 52.459618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.940151, 30.334274, 52.245564>,  <35.440136, 30.687353, 52.739250>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.940151, 30.334274, 52.245564> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.949966, 30.721277, 52.144905>,  <34.955856, 30.953480, 52.084511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.949966, 30.721277, 52.144905>,  <34.940151, 30.334274, 52.245564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.949966, 30.721277, 52.144905> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009614, -0.251940, -0.967695,
		-0.999653, 0.021326, -0.015484,
		0.024538, 0.967508, -0.251647,
		34.957329, 31.011530, 52.069412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.352615, 30.371916, 51.813465>,  <34.940151, 30.334274, 52.245564>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.352615, 30.371916, 51.813465> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.567974, 30.691099, 51.705101>,  <34.697189, 30.882608, 51.640083>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.567974, 30.691099, 51.705101>,  <34.352615, 30.371916, 51.813465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.567974, 30.691099, 51.705101> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080641, -0.271222, -0.959133,
		-0.838825, 0.538240, -0.081676,
		0.538396, 0.797958, -0.270912,
		34.729492, 30.930487, 51.623829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.051495, 30.678301, 51.157967>,  <34.352615, 30.371916, 51.813465>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.051495, 30.678301, 51.157967> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.421593, 30.827955, 51.183060>,  <34.643654, 30.917747, 51.198116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.421593, 30.827955, 51.183060>,  <34.051495, 30.678301, 51.157967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.421593, 30.827955, 51.183060> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120385, -0.132766, -0.983809,
		-0.359751, 0.917821, -0.167882,
		0.925250, 0.374136, 0.062729,
		34.699169, 30.940197, 51.201878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.256672, 31.159622, 50.538242>,  <34.051495, 30.678301, 51.157967>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.256672, 31.159622, 50.538242> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.594536, 31.000656, 50.681690>,  <34.797256, 30.905277, 50.767757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.594536, 31.000656, 50.681690>,  <34.256672, 31.159622, 50.538242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.594536, 31.000656, 50.681690> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262750, -0.275872, -0.924585,
		0.466374, 0.875190, -0.128599,
		0.844664, -0.397413, 0.358616,
		34.847935, 30.881432, 50.789276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.570641, 30.986752, 50.275860>,  <34.256672, 31.159622, 50.538242>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.570641, 30.986752, 50.275860> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.455769, 30.623165, 50.154991>,  <33.386845, 30.405012, 50.082470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.455769, 30.623165, 50.154991>,  <33.570641, 30.986752, 50.275860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.455769, 30.623165, 50.154991> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832133, 0.080500, 0.548702,
		-0.474428, 0.409020, -0.779500,
		-0.287180, -0.908968, -0.302168,
		33.369614, 30.350475, 50.064342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.861244, 30.973429, 49.932697>,  <33.570641, 30.986752, 50.275860>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.861244, 30.973429, 49.932697> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.909092, 30.605919, 50.083191>,  <32.937801, 30.385414, 50.173485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.909092, 30.605919, 50.083191>,  <32.861244, 30.973429, 49.932697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.909092, 30.605919, 50.083191> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905727, 0.054223, 0.420379,
		-0.406633, -0.391046, -0.825671,
		0.119618, -0.918773, 0.376230,
		32.944977, 30.330288, 50.196060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.158878, 30.686871, 49.846333>,  <32.861244, 30.973429, 49.932697>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.158878, 30.686871, 49.846333> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.376595, 30.474911, 50.106476>,  <32.507225, 30.347734, 50.262562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.376595, 30.474911, 50.106476>,  <32.158878, 30.686871, 49.846333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.376595, 30.474911, 50.106476> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720532, 0.101743, 0.685917,
		-0.429636, -0.841936, -0.326432,
		0.544286, -0.529899, 0.650354,
		32.539879, 30.315941, 50.301582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.661871, 30.170214, 50.089371>,  <32.158878, 30.686871, 49.846333>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.661871, 30.170214, 50.089371> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.965204, 30.181866, 50.349857>,  <32.147205, 30.188856, 50.506149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.965204, 30.181866, 50.349857>,  <31.661871, 30.170214, 50.089371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.965204, 30.181866, 50.349857> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647807, 0.145011, 0.747876,
		-0.072650, -0.989001, 0.128835,
		0.758333, 0.029128, 0.651217,
		32.192703, 30.190605, 50.545223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.434896, 29.791418, 50.791996>,  <31.661871, 30.170214, 50.089371>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.434896, 29.791418, 50.791996> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.736753, 30.035566, 50.888298>,  <31.917868, 30.182056, 50.946079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.736753, 30.035566, 50.888298>,  <31.434896, 29.791418, 50.791996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.736753, 30.035566, 50.888298> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477956, 0.259980, 0.839029,
		0.449529, -0.748235, 0.487922,
		0.754640, 0.610373, 0.240755,
		31.963146, 30.218678, 50.960526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.656874, 29.578434, 51.450058>,  <31.434896, 29.791418, 50.791996>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.656874, 29.578434, 51.450058> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.753544, 29.961170, 51.385502>,  <31.811546, 30.190813, 51.346767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.753544, 29.961170, 51.385502>,  <31.656874, 29.578434, 51.450058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.753544, 29.961170, 51.385502> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497167, 0.264931, 0.826218,
		0.833318, -0.119436, 0.539737,
		0.241673, 0.956842, -0.161392,
		31.826046, 30.248222, 51.337086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.660446, 29.923090, 52.158463>,  <31.656874, 29.578434, 51.450058>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.660446, 29.923090, 52.158463> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.664827, 30.258204, 51.940105>,  <31.667456, 30.459272, 51.809090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.664827, 30.258204, 51.940105>,  <31.660446, 29.923090, 52.158463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.664827, 30.258204, 51.940105> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743277, 0.372009, 0.556012,
		0.668894, 0.399660, 0.626779,
		0.010952, 0.837784, -0.545893,
		31.668114, 30.509539, 51.776337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.871979, 30.512228, 52.586124>,  <31.660446, 29.923090, 52.158463>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.871979, 30.512228, 52.586124> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.665121, 30.662668, 52.278587>,  <31.541006, 30.752932, 52.094067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.665121, 30.662668, 52.278587>,  <31.871979, 30.512228, 52.586124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.665121, 30.662668, 52.278587> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709491, 0.314069, 0.630859,
		0.478734, 0.871729, 0.104419,
		-0.517143, 0.376098, -0.768839,
		31.509977, 30.775497, 52.047935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.827534, 31.163540, 52.705936>,  <31.871979, 30.512228, 52.586124>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.827534, 31.163540, 52.705936> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.538486, 31.137133, 52.430702>,  <31.365057, 31.121288, 52.265560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.538486, 31.137133, 52.430702>,  <31.827534, 31.163540, 52.705936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.538486, 31.137133, 52.430702> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579880, 0.599708, 0.551443,
		0.376245, 0.797491, -0.471644,
		-0.722620, -0.066019, -0.688086,
		31.321701, 31.117327, 52.224277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.618668, 31.885702, 52.424313>,  <31.827534, 31.163540, 52.705936>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.618668, 31.885702, 52.424313> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.297665, 31.657131, 52.355663>,  <31.105062, 31.519989, 52.314472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.297665, 31.657131, 52.355663>,  <31.618668, 31.885702, 52.424313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.297665, 31.657131, 52.355663> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594445, 0.741082, 0.312141,
		-0.051180, 0.352515, -0.934405,
		-0.802506, -0.571428, -0.171622,
		31.056913, 31.485703, 52.304176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.153454, 32.306915, 52.296597>,  <31.618668, 31.885702, 52.424313>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.153454, 32.306915, 52.296597> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.896093, 32.005890, 52.352711>,  <30.741678, 31.825274, 52.386379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.896093, 32.005890, 52.352711>,  <31.153454, 32.306915, 52.296597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.896093, 32.005890, 52.352711> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603664, 0.611462, 0.511570,
		-0.470772, 0.244456, -0.847712,
		-0.643399, -0.752566, 0.140290,
		30.703074, 31.780121, 52.394798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.618477, 32.601124, 52.358009>,  <31.153454, 32.306915, 52.296597>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.618477, 32.601124, 52.358009> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.515057, 32.263195, 52.545383>,  <30.453005, 32.060440, 52.657806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.515057, 32.263195, 52.545383>,  <30.618477, 32.601124, 52.358009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.515057, 32.263195, 52.545383> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621977, 0.516623, 0.588426,
		-0.739118, -0.139218, -0.659032,
		-0.258551, -0.844819, 0.468435,
		30.437490, 32.009750, 52.685913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.928150, 32.652676, 52.280521>,  <30.618477, 32.601124, 52.358009>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.928150, 32.652676, 52.280521> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.020271, 32.384914, 52.563042>,  <30.075544, 32.224258, 52.732552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.020271, 32.384914, 52.563042>,  <29.928150, 32.652676, 52.280521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.020271, 32.384914, 52.563042> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413772, 0.589566, 0.693689,
		-0.880768, -0.452007, -0.141201,
		0.230304, -0.669404, 0.706299,
		30.089363, 32.184093, 52.774933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.320454, 32.407009, 52.558636>,  <29.928150, 32.652676, 52.280521>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.320454, 32.407009, 52.558636> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.606806, 32.335926, 52.828728>,  <29.778618, 32.293274, 52.990784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.606806, 32.335926, 52.828728>,  <29.320454, 32.407009, 52.558636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.606806, 32.335926, 52.828728> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471789, 0.589783, 0.655417,
		-0.514713, -0.787766, 0.338373,
		0.715881, -0.177710, 0.675228,
		29.821569, 32.282612, 53.031296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.005257, 32.209812, 53.165470>,  <29.320454, 32.407009, 52.558636>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.005257, 32.209812, 53.165470> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.362370, 32.342724, 53.287144>,  <29.576637, 32.422470, 53.360149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.362370, 32.342724, 53.287144>,  <29.005257, 32.209812, 53.165470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.362370, 32.342724, 53.287144> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445445, 0.550413, 0.706133,
		0.067204, -0.765923, 0.639411,
		0.892783, 0.332277, 0.304187,
		29.630205, 32.442406, 53.378399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.957438, 32.361942, 53.851536>,  <29.005257, 32.209812, 53.165470>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.957438, 32.361942, 53.851536> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.313812, 32.536030, 53.799675>,  <29.527637, 32.640484, 53.768559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.313812, 32.536030, 53.799675>,  <28.957438, 32.361942, 53.851536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.313812, 32.536030, 53.799675> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196160, 0.626325, 0.754479,
		0.409571, -0.646761, 0.643391,
		0.890939, 0.435221, -0.129656,
		29.581095, 32.666595, 53.760777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.330929, 32.280064, 54.471432>,  <28.957438, 32.361942, 53.851536>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.330929, 32.280064, 54.471432> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.499229, 32.594120, 54.289650>,  <29.600210, 32.782555, 54.180580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.499229, 32.594120, 54.289650>,  <29.330929, 32.280064, 54.471432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.499229, 32.594120, 54.289650> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206281, 0.570633, 0.794875,
		0.883411, -0.240702, 0.402055,
		0.420754, 0.785137, -0.454451,
		29.625456, 32.829662, 54.153313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<29.816048, 32.626213, 55.011642> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.757010, 32.906601, 54.732544>,  <29.721586, 33.074833, 54.565083>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.757010, 32.906601, 54.732544>,  <29.816048, 32.626213, 55.011642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.757010, 32.906601, 54.732544> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115519, 0.712866, 0.691721,
		0.982279, 0.021491, -0.186190,
		-0.147594, 0.700971, -0.697750,
		29.712732, 33.116894, 54.523220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.352661, 33.109432, 55.081371>,  <29.816048, 32.626213, 55.011642>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.352661, 33.109432, 55.081371> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.051252, 33.298645, 54.898750>,  <29.870407, 33.412174, 54.789177>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.051252, 33.298645, 54.898750>,  <30.352661, 33.109432, 55.081371>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.051252, 33.298645, 54.898750> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087219, 0.760253, 0.643746,
		0.651613, 0.445256, -0.614124,
		-0.753521, 0.473036, -0.456556,
		29.825195, 33.440556, 54.761784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.604685, 33.721577, 55.161449>,  <30.352661, 33.109432, 55.081371>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.604685, 33.721577, 55.161449> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.218773, 33.788593, 55.080330>,  <29.987225, 33.828804, 55.031658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.218773, 33.788593, 55.080330>,  <30.604685, 33.721577, 55.161449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.218773, 33.788593, 55.080330> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037406, 0.850474, 0.524686,
		0.260380, 0.498622, -0.826788,
		-0.964781, 0.167545, -0.202795,
		29.929338, 33.838856, 55.019493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.520983, 34.478687, 54.982315>,  <30.604685, 33.721577, 55.161449>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.520983, 34.478687, 54.982315> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.146925, 34.378185, 55.082214>,  <29.922489, 34.317886, 55.142155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.146925, 34.378185, 55.082214>,  <30.520983, 34.478687, 54.982315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.146925, 34.378185, 55.082214> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063353, 0.812226, 0.579892,
		-0.348554, 0.526461, -0.775467,
		-0.935145, -0.251252, 0.249752,
		29.866381, 34.302811, 55.157139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.200895, 35.133144, 54.998009>,  <30.520983, 34.478687, 54.982315>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.200895, 35.133144, 54.998009> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.951626, 34.884068, 55.187286>,  <29.802065, 34.734623, 55.300854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.951626, 34.884068, 55.187286>,  <30.200895, 35.133144, 54.998009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.951626, 34.884068, 55.187286> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366607, 0.767030, 0.526559,
		-0.690836, 0.154662, -0.706276,
		-0.623173, -0.622692, 0.473192,
		29.764673, 34.697262, 55.329243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.580511, 35.493717, 54.889671>,  <30.200895, 35.133144, 54.998009>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.580511, 35.493717, 54.889671> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.512880, 35.235718, 55.187771>,  <29.472301, 35.080917, 55.366631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.512880, 35.235718, 55.187771>,  <29.580511, 35.493717, 54.889671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.512880, 35.235718, 55.187771> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697059, 0.612818, 0.372240,
		-0.696794, -0.456543, -0.553216,
		-0.169077, -0.644999, 0.745245,
		29.462158, 35.042217, 55.411343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.901876, 35.360268, 54.922127>,  <29.580511, 35.493717, 54.889671>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.901876, 35.360268, 54.922127> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.037901, 35.286961, 55.291077>,  <29.119514, 35.242977, 55.512447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.037901, 35.286961, 55.291077>,  <28.901876, 35.360268, 54.922127>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.037901, 35.286961, 55.291077> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729505, 0.567550, 0.381719,
		-0.593449, -0.802683, 0.059306,
		0.340059, -0.183266, 0.922374,
		29.139919, 35.231979, 55.567787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.328142, 35.291275, 55.242359>,  <28.901876, 35.360268, 54.922127>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.328142, 35.291275, 55.242359> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.586355, 35.358223, 55.540428>,  <28.741283, 35.398392, 55.719269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.586355, 35.358223, 55.540428>,  <28.328142, 35.291275, 55.242359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.586355, 35.358223, 55.540428> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707384, 0.498857, 0.500749,
		-0.287920, -0.850369, 0.440425,
		0.645530, 0.167374, 0.745169,
		28.780014, 35.408436, 55.763977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.079845, 34.978378, 55.874153>,  <28.328142, 35.291275, 55.242359>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.079845, 34.978378, 55.874153> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.319166, 35.284561, 55.968903>,  <28.462759, 35.468269, 56.025753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.319166, 35.284561, 55.968903>,  <28.079845, 34.978378, 55.874153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.319166, 35.284561, 55.968903> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748147, 0.427819, 0.507195,
		0.286894, -0.480677, 0.828638,
		0.598305, 0.765454, 0.236878,
		28.498657, 35.514198, 56.039967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.931326, 35.110394, 56.671574>,  <28.079845, 34.978378, 55.874153>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.931326, 35.110394, 56.671574> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.095001, 35.454056, 56.548664>,  <28.193207, 35.660252, 56.474918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.095001, 35.454056, 56.548664>,  <27.931326, 35.110394, 56.671574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.095001, 35.454056, 56.548664> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764907, 0.506587, 0.397854,
		0.497476, 0.072233, 0.864465,
		0.409188, 0.859158, -0.307266,
		28.217758, 35.711803, 56.456482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.709600, 35.654388, 57.215099>,  <27.931326, 35.110394, 56.671574>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.709600, 35.654388, 57.215099> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.839828, 35.869949, 56.904335>,  <27.917965, 35.999287, 56.717876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.839828, 35.869949, 56.904335>,  <27.709600, 35.654388, 57.215099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.839828, 35.869949, 56.904335> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600609, 0.752478, 0.270267,
		0.730255, 0.378628, 0.568655,
		0.325570, 0.538903, -0.776908,
		27.937500, 36.031620, 56.671261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.486029, 36.246552, 57.450512>,  <27.709600, 35.654388, 57.215099>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.486029, 36.246552, 57.450512> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.574669, 36.303295, 57.064606>,  <27.627853, 36.337341, 56.833061>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.574669, 36.303295, 57.064606>,  <27.486029, 36.246552, 57.450512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.574669, 36.303295, 57.064606> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497826, 0.867177, 0.013161,
		0.838488, 0.477367, 0.262789,
		0.221602, 0.141858, -0.964763,
		27.641150, 36.345852, 56.775177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.692068, 36.956879, 57.396294>,  <27.486029, 36.246552, 57.450512>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.692068, 36.956879, 57.396294> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.582071, 36.877888, 57.019913>,  <27.516073, 36.830494, 56.794086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.582071, 36.877888, 57.019913>,  <27.692068, 36.956879, 57.396294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.582071, 36.877888, 57.019913> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651503, 0.757999, 0.031324,
		0.707052, 0.621644, -0.337098,
		-0.274992, -0.197473, -0.940948,
		27.499573, 36.818645, 56.737629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.821568, 37.559681, 56.894283>,  <27.692068, 36.956879, 57.396294>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.821568, 37.559681, 56.894283> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.526257, 37.324745, 56.761631>,  <27.349070, 37.183784, 56.682041>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.526257, 37.324745, 56.761631>,  <27.821568, 37.559681, 56.894283>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.526257, 37.324745, 56.761631> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575671, 0.804906, -0.143975,
		0.351493, 0.084617, -0.932358,
		-0.738278, -0.587338, -0.331630,
		27.304773, 37.148544, 56.662144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.435324, 37.980415, 56.690998>,  <27.821568, 37.559681, 56.894283>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.435324, 37.980415, 56.690998> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.183825, 37.670876, 56.660454>,  <27.032925, 37.485149, 56.642128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.183825, 37.670876, 56.660454>,  <27.435324, 37.980415, 56.690998>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.183825, 37.670876, 56.660454> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777390, 0.627867, 0.038047,
		0.018503, 0.083286, -0.996354,
		-0.628746, -0.773852, -0.076364,
		26.995201, 37.438721, 56.637547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.188940, 38.040649, 56.071369>,  <27.435324, 37.980415, 56.690998>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.188940, 38.040649, 56.071369> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.922907, 37.827583, 56.280724>,  <26.763287, 37.699745, 56.406338>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.922907, 37.827583, 56.280724>,  <27.188940, 38.040649, 56.071369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.922907, 37.827583, 56.280724> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652704, 0.755164, -0.060865,
		-0.362825, -0.382099, -0.849917,
		-0.665083, -0.532661, 0.523390,
		26.723383, 37.667786, 56.437740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.598808, 38.054646, 55.702972>,  <27.188940, 38.040649, 56.071369>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.598808, 38.054646, 55.702972> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.407461, 37.971523, 56.044258>,  <26.292654, 37.921650, 56.249031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.407461, 37.971523, 56.044258>,  <26.598808, 38.054646, 55.702972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.407461, 37.971523, 56.044258> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695231, 0.683191, -0.223392,
		-0.536488, -0.700047, -0.471290,
		-0.478366, -0.207808, 0.853219,
		26.263952, 37.909180, 56.300224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.773054, 38.166458, 55.599491>,  <26.598808, 38.054646, 55.702972>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.773054, 38.166458, 55.599491> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.827021, 38.156021, 55.995697>,  <25.859402, 38.149757, 56.233421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.827021, 38.156021, 55.995697>,  <25.773054, 38.166458, 55.599491>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.827021, 38.156021, 55.995697> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539182, 0.836759, 0.095483,
		-0.831312, -0.546949, 0.098825,
		0.134917, -0.026092, 0.990513,
		25.867496, 38.148193, 56.292850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.089186, 38.244728, 55.925827>,  <25.773054, 38.166458, 55.599491>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.089186, 38.244728, 55.925827> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.382515, 38.374516, 56.164810>,  <25.558514, 38.452389, 56.308201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.382515, 38.374516, 56.164810>,  <25.089186, 38.244728, 55.925827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.382515, 38.374516, 56.164810> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470446, 0.876586, 0.101377,
		-0.490831, -0.355415, 0.795465,
		0.733325, 0.324464, 0.597459,
		25.602512, 38.471855, 56.344048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.746700, 38.450020, 56.535957>,  <25.089186, 38.244728, 55.925827>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.746700, 38.450020, 56.535957> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.095833, 38.643444, 56.509613>,  <25.305311, 38.759499, 56.493805>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.095833, 38.643444, 56.509613>,  <24.746700, 38.450020, 56.535957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.095833, 38.643444, 56.509613> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458473, 0.858724, 0.228898,
		0.167243, -0.169593, 0.971220,
		0.872830, 0.483560, -0.065862,
		25.357681, 38.788513, 56.489853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.787231, 38.874596, 57.107681>,  <24.746700, 38.450020, 56.535957>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.787231, 38.874596, 57.107681> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.059164, 39.054379, 56.875885>,  <25.222324, 39.162251, 56.736805>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.059164, 39.054379, 56.875885>,  <24.787231, 38.874596, 57.107681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.059164, 39.054379, 56.875885> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261038, 0.886736, 0.381522,
		0.685337, -0.108101, 0.720158,
		0.679833, 0.449460, -0.579494,
		25.263113, 39.189217, 56.702038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.092945, 39.521999, 57.489609>,  <24.787231, 38.874596, 57.107681>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.092945, 39.521999, 57.489609> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.165659, 39.555702, 57.097721>,  <25.209288, 39.575924, 56.862587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.165659, 39.555702, 57.097721>,  <25.092945, 39.521999, 57.489609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.165659, 39.555702, 57.097721> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123843, 0.990351, 0.062188,
		0.975508, 0.110027, 0.190467,
		0.181787, 0.084253, -0.979722,
		25.220194, 39.580978, 56.803806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.058374, 40.163872, 57.426159>,  <25.092945, 39.521999, 57.489609>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.058374, 40.163872, 57.426159> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.085293, 40.099163, 57.032345>,  <25.101444, 40.060337, 56.796059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.085293, 40.099163, 57.032345>,  <25.058374, 40.163872, 57.426159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.085293, 40.099163, 57.032345> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061055, 0.985586, -0.157772,
		0.995863, -0.049493, 0.076201,
		0.067295, -0.161772, -0.984531,
		25.105480, 40.050632, 56.736984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.042597, 40.963318, 57.247143>,  <25.058374, 40.163872, 57.426159>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.042597, 40.963318, 57.247143> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.330370, 41.231300, 57.320435>,  <25.503033, 41.392090, 57.364410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.330370, 41.231300, 57.320435>,  <25.042597, 40.963318, 57.247143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.330370, 41.231300, 57.320435> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689681, -0.657843, -0.302627,
		-0.082211, 0.344089, -0.935331,
		0.719432, 0.669959, 0.183230,
		25.546200, 41.432289, 57.375404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.647703, 40.901932, 56.733803>,  <25.042597, 40.963318, 57.247143>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.647703, 40.901932, 56.733803> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.808475, 41.072365, 57.058002>,  <25.904938, 41.174625, 57.252522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.808475, 41.072365, 57.058002>,  <25.647703, 40.901932, 56.733803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.808475, 41.072365, 57.058002> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738040, -0.674662, -0.011327,
		0.541987, 0.602735, -0.585629,
		0.401928, 0.426078, 0.810500,
		25.929054, 41.200188, 57.301151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.418962, 41.023151, 56.564407>,  <25.647703, 40.901932, 56.733803>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.418962, 41.023151, 56.564407> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.385370, 41.014923, 56.962910>,  <26.365215, 41.009987, 57.202011>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.385370, 41.014923, 56.962910>,  <26.418962, 41.023151, 56.564407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.385370, 41.014923, 56.962910> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819426, -0.570314, 0.057297,
		0.567000, 0.821169, 0.064750,
		-0.083978, -0.020571, 0.996255,
		26.360176, 41.008751, 57.261787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.019796, 41.313148, 56.725929>,  <26.418962, 41.023151, 56.564407>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.019796, 41.313148, 56.725929> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.888256, 41.095341, 57.034565>,  <26.809332, 40.964657, 57.219746>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.888256, 41.095341, 57.034565>,  <27.019796, 41.313148, 56.725929>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.888256, 41.095341, 57.034565> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940184, -0.265723, 0.213181,
		0.088949, 0.795544, 0.599331,
		-0.328851, -0.544519, 0.771593,
		26.789600, 40.931984, 57.266045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.357779, 41.502480, 57.299950>,  <27.019796, 41.313148, 56.725929>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.357779, 41.502480, 57.299950> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.225344, 41.146378, 57.425056>,  <27.145882, 40.932716, 57.500118>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.225344, 41.146378, 57.425056>,  <27.357779, 41.502480, 57.299950>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.225344, 41.146378, 57.425056> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925005, -0.240737, 0.293959,
		-0.186406, 0.386633, 0.903198,
		-0.331088, -0.890258, 0.312763,
		27.126017, 40.879299, 57.518887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.568373, 41.439884, 58.072102>,  <27.357779, 41.502480, 57.299950>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.568373, 41.439884, 58.072102> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.490015, 41.071312, 57.937885>,  <27.443001, 40.850170, 57.857353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.490015, 41.071312, 57.937885>,  <27.568373, 41.439884, 58.072102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.490015, 41.071312, 57.937885> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805632, -0.346309, 0.480653,
		-0.559090, -0.176167, 0.810175,
		-0.195895, -0.921431, -0.335544,
		27.431246, 40.794884, 57.837223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.585295, 40.921112, 58.654301>,  <27.568373, 41.439884, 58.072102>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.585295, 40.921112, 58.654301> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.659758, 40.689880, 58.336517>,  <27.704435, 40.551140, 58.145847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.659758, 40.689880, 58.336517>,  <27.585295, 40.921112, 58.654301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.659758, 40.689880, 58.336517> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793073, -0.388906, 0.468814,
		-0.579984, -0.717337, 0.386065,
		0.186155, -0.578082, -0.794460,
		27.715605, 40.516457, 58.098179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.744804, 40.261059, 58.843479>,  <27.585295, 40.921112, 58.654301>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.744804, 40.261059, 58.843479> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.919796, 40.255379, 58.483833>,  <28.024792, 40.251968, 58.268047>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.919796, 40.255379, 58.483833>,  <27.744804, 40.261059, 58.843479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.919796, 40.255379, 58.483833> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838456, -0.354893, 0.413572,
		-0.324963, -0.934799, -0.143352,
		0.437481, -0.014201, -0.899115,
		28.051041, 40.251118, 58.214100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.089827, 39.649643, 58.936028>,  <27.744804, 40.261059, 58.843479>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.089827, 39.649643, 58.936028> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.250629, 39.783718, 58.595196>,  <28.347111, 39.864162, 58.390697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.250629, 39.783718, 58.595196>,  <28.089827, 39.649643, 58.936028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.250629, 39.783718, 58.595196> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821227, -0.543540, 0.173640,
		-0.404938, -0.769556, -0.493770,
		0.402009, 0.335184, -0.852080,
		28.371233, 39.884274, 58.339573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.301611, 39.098991, 58.566185>,  <28.089827, 39.649643, 58.936028>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.301611, 39.098991, 58.566185> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.524336, 39.404999, 58.436749>,  <28.657970, 39.588604, 58.359089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.524336, 39.404999, 58.436749>,  <28.301611, 39.098991, 58.566185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.524336, 39.404999, 58.436749> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821548, -0.564689, 0.078646,
		-0.122561, -0.309634, -0.942924,
		0.556811, 0.765018, -0.323588,
		28.691380, 39.634502, 58.339672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.217257, 38.366840, 58.562096>,  <28.301611, 39.098991, 58.566185>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.217257, 38.366840, 58.562096> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.581730, 38.492641, 58.455643>,  <28.800415, 38.568123, 58.391769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.581730, 38.492641, 58.455643>,  <28.217257, 38.366840, 58.562096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.581730, 38.492641, 58.455643> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321958, -0.946613, -0.016355,
		-0.257069, -0.070782, -0.963797,
		0.911185, 0.314507, -0.266133,
		28.855085, 38.586994, 58.375801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.412935, 37.936218, 57.996361>,  <28.217257, 38.366840, 58.562096>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.412935, 37.936218, 57.996361> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.750961, 38.089119, 58.145889>,  <28.953777, 38.180859, 58.235607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.750961, 38.089119, 58.145889>,  <28.412935, 37.936218, 57.996361>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.750961, 38.089119, 58.145889> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491938, -0.829765, -0.263602,
		0.209425, 0.406661, -0.889251,
		0.845067, 0.382252, 0.373826,
		29.004482, 38.203796, 58.258038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.854191, 37.814583, 57.432388>,  <28.412935, 37.936218, 57.996361>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.854191, 37.814583, 57.432388> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.104710, 37.892273, 57.734390>,  <29.255022, 37.938885, 57.915592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.104710, 37.892273, 57.734390>,  <28.854191, 37.814583, 57.432388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.104710, 37.892273, 57.734390> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602609, -0.735029, -0.310798,
		0.494584, 0.649623, -0.577388,
		0.626299, 0.194223, 0.755002,
		29.292599, 37.950539, 57.960892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.486496, 37.902557, 57.137829>,  <28.854191, 37.814583, 57.432388>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.486496, 37.902557, 57.137829> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.574774, 37.820324, 57.519199>,  <29.627741, 37.770985, 57.748024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.574774, 37.820324, 57.519199>,  <29.486496, 37.902557, 57.137829>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.574774, 37.820324, 57.519199> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661134, -0.687153, -0.301203,
		0.717075, 0.696819, -0.015731,
		0.220694, -0.205585, 0.953430,
		29.640982, 37.758648, 57.805229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.168890, 37.982498, 57.089043>,  <29.486496, 37.902557, 57.137829>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.168890, 37.982498, 57.089043> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.042076, 37.759449, 57.395908>,  <29.965988, 37.625618, 57.580029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.042076, 37.759449, 57.395908>,  <30.168890, 37.982498, 57.089043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.042076, 37.759449, 57.395908> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527197, -0.776024, -0.346193,
		0.788385, 0.294692, 0.540005,
		-0.317037, -0.557622, 0.767167,
		29.946964, 37.592163, 57.626057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.694010, 37.735256, 57.305546>,  <30.168890, 37.982498, 57.089043>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.694010, 37.735256, 57.305546> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.421768, 37.472645, 57.435619>,  <30.258423, 37.315079, 57.513664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.421768, 37.472645, 57.435619>,  <30.694010, 37.735256, 57.305546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.421768, 37.472645, 57.435619> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645314, -0.747350, -0.158231,
		0.346912, 0.102155, 0.932318,
		-0.680604, -0.656530, 0.325187,
		30.217587, 37.275684, 57.533176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.050915, 37.273251, 57.788754>,  <30.694010, 37.735256, 57.305546>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.050915, 37.273251, 57.788754> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.738598, 37.039753, 57.699661>,  <30.551207, 36.899654, 57.646206>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.738598, 37.039753, 57.699661>,  <31.050915, 37.273251, 57.788754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.738598, 37.039753, 57.699661> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619430, -0.769830, -0.153844,
		-0.081659, -0.258086, 0.962665,
		-0.780794, -0.583740, -0.222730,
		30.504360, 36.864632, 57.632843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.199371, 36.686363, 58.191895>,  <31.050915, 37.273251, 57.788754>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.199371, 36.686363, 58.191895> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.947838, 36.558968, 57.908165>,  <30.796919, 36.482529, 57.737926>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.947838, 36.558968, 57.908165>,  <31.199371, 36.686363, 58.191895>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.947838, 36.558968, 57.908165> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584596, -0.795142, -0.161235,
		-0.512658, -0.516055, 0.686199,
		-0.628832, -0.318491, -0.709319,
		30.759188, 36.463421, 57.695370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.201662, 35.980297, 58.277107>,  <31.199371, 36.686363, 58.191895>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.201662, 35.980297, 58.277107> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.081514, 36.035282, 57.899563>,  <31.009426, 36.068275, 57.673035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.081514, 36.035282, 57.899563>,  <31.201662, 35.980297, 58.277107>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.081514, 36.035282, 57.899563> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532523, -0.796807, -0.285513,
		-0.791326, -0.588390, 0.166134,
		-0.300370, 0.137464, -0.943865,
		30.991404, 36.076523, 57.616402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.945662, 35.301842, 58.045456>,  <31.201662, 35.980297, 58.277107>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.945662, 35.301842, 58.045456> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.046240, 35.515598, 57.722668>,  <31.106586, 35.643852, 57.528996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.046240, 35.515598, 57.722668>,  <30.945662, 35.301842, 58.045456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.046240, 35.515598, 57.722668> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612289, -0.733546, -0.294980,
		-0.749585, -0.419928, -0.511647,
		0.251446, 0.534388, -0.806972,
		31.121674, 35.675915, 57.480576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.110922, 34.779388, 57.521656>,  <30.945662, 35.301842, 58.045456>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.110922, 34.779388, 57.521656> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.255297, 35.102417, 57.335087>,  <31.341921, 35.296234, 57.223145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.255297, 35.102417, 57.335087>,  <31.110922, 34.779388, 57.521656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.255297, 35.102417, 57.335087> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726702, -0.557006, -0.402056,
		-0.584491, -0.193836, -0.787908,
		0.360936, 0.807572, -0.466426,
		31.363577, 35.344688, 57.195160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<47.812229, 35.340515, 50.115051> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.787231, 35.252121, 50.504360>,  <47.772232, 35.199085, 50.737946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.787231, 35.252121, 50.504360>,  <47.812229, 35.340515, 50.115051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.787231, 35.252121, 50.504360> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913657, -0.379785, -0.144895,
		0.401654, -0.898292, -0.178173,
		-0.062490, -0.220986, 0.973273,
		47.768486, 35.185825, 50.796341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.487930, 34.668343, 50.181648>,  <47.812229, 35.340515, 50.115051>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.487930, 34.668343, 50.181648> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.433849, 34.837597, 50.540016>,  <47.401402, 34.939148, 50.755039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.433849, 34.837597, 50.540016>,  <47.487930, 34.668343, 50.181648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.433849, 34.837597, 50.540016> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883146, -0.461399, 0.084639,
		0.449192, -0.779788, 0.436071,
		-0.135202, 0.423133, 0.895923,
		47.393288, 34.964539, 50.808792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.332993, 34.086647, 50.558136>,  <47.487930, 34.668343, 50.181648>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.332993, 34.086647, 50.558136> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.200615, 34.419796, 50.735584>,  <47.121189, 34.619686, 50.842052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.200615, 34.419796, 50.735584>,  <47.332993, 34.086647, 50.558136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.200615, 34.419796, 50.735584> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848760, -0.468179, 0.245795,
		0.412411, -0.295185, 0.861848,
		-0.330945, 0.832870, 0.443624,
		47.101330, 34.669659, 50.868671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.853130, 33.866970, 51.038025>,  <47.332993, 34.086647, 50.558136>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.853130, 33.866970, 51.038025> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.778179, 34.257370, 50.993622>,  <46.733208, 34.491608, 50.966980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.778179, 34.257370, 50.993622>,  <46.853130, 33.866970, 51.038025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.778179, 34.257370, 50.993622> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.973957, -0.199285, -0.108134,
		-0.127660, 0.087852, 0.987919,
		-0.187378, 0.975996, -0.111005,
		46.721966, 34.550167, 50.960320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.199898, 33.997444, 51.432964>,  <46.853130, 33.866970, 51.038025>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.199898, 33.997444, 51.432964> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.249908, 34.303051, 51.179775>,  <46.279915, 34.486416, 51.027863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.249908, 34.303051, 51.179775>,  <46.199898, 33.997444, 51.432964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.249908, 34.303051, 51.179775> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.972486, -0.032032, -0.230750,
		-0.196571, 0.644406, 0.738986,
		0.125025, 0.764012, -0.632972,
		46.287415, 34.532253, 50.989883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.588348, 34.332344, 51.510979>,  <46.199898, 33.997444, 51.432964>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.588348, 34.332344, 51.510979> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.733585, 34.450176, 51.157394>,  <45.820728, 34.520878, 50.945244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.733585, 34.450176, 51.157394>,  <45.588348, 34.332344, 51.510979>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.733585, 34.450176, 51.157394> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.930428, 0.064006, -0.360844,
		-0.049720, 0.953480, 0.297329,
		0.363088, 0.294584, -0.883961,
		45.842510, 34.538551, 50.892204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.099728, 34.740402, 51.307247>,  <45.588348, 34.332344, 51.510979>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.099728, 34.740402, 51.307247> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.290203, 34.659885, 50.964848>,  <45.404488, 34.611576, 50.759407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.290203, 34.659885, 50.964848>,  <45.099728, 34.740402, 51.307247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.290203, 34.659885, 50.964848> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835831, 0.198815, -0.511722,
		0.273189, 0.959143, -0.073572,
		0.476188, -0.201290, -0.855995,
		45.433060, 34.599499, 50.708050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.023029, 35.400940, 50.882126>,  <45.099728, 34.740402, 51.307247>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.023029, 35.400940, 50.882126> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.122944, 35.106941, 50.629974>,  <45.182892, 34.930542, 50.478683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.122944, 35.106941, 50.629974>,  <45.023029, 35.400940, 50.882126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.122944, 35.106941, 50.629974> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724996, 0.289581, -0.624918,
		0.641862, 0.613120, -0.460540,
		0.249786, -0.735001, -0.630381,
		45.197880, 34.886440, 50.440861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.032940, 35.744236, 50.219002>,  <45.023029, 35.400940, 50.882126>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.032940, 35.744236, 50.219002> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.971928, 35.349861, 50.191681>,  <44.935318, 35.113235, 50.175289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.971928, 35.349861, 50.191681>,  <45.032940, 35.744236, 50.219002>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.971928, 35.349861, 50.191681> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769947, 0.161875, -0.617234,
		0.619609, -0.041561, -0.783809,
		-0.152532, -0.985936, -0.068299,
		44.926167, 35.054081, 50.171192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.782806, 35.675354, 49.568260>,  <45.032940, 35.744236, 50.219002>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.782806, 35.675354, 49.568260> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.692169, 35.328140, 49.744972>,  <44.637787, 35.119812, 49.850998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.692169, 35.328140, 49.744972>,  <44.782806, 35.675354, 49.568260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.692169, 35.328140, 49.744972> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902913, 0.017120, -0.429481,
		0.365242, -0.496208, -0.787640,
		-0.226597, -0.868035, 0.441779,
		44.624191, 35.067730, 49.877506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.558701, 35.300709, 49.104446>,  <44.782806, 35.675354, 49.568260>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.558701, 35.300709, 49.104446> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.405788, 35.161308, 49.446770>,  <44.314041, 35.077667, 49.652164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.405788, 35.161308, 49.446770>,  <44.558701, 35.300709, 49.104446>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.405788, 35.161308, 49.446770> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914296, 0.008471, -0.404959,
		0.133882, -0.937267, -0.321878,
		-0.382281, -0.348509, 0.855805,
		44.291103, 35.056755, 49.703510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.947567, 34.960213, 48.895340>,  <44.558701, 35.300709, 49.104446>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.947567, 34.960213, 48.895340> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.876686, 34.976269, 49.288681>,  <43.834156, 34.985901, 49.524685>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.876686, 34.976269, 49.288681>,  <43.947567, 34.960213, 48.895340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.876686, 34.976269, 49.288681> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.982260, 0.055074, -0.179253,
		-0.061352, -0.997675, 0.029668,
		-0.177203, 0.040139, 0.983355,
		43.823524, 34.988312, 49.583687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.442532, 34.509274, 49.098194>,  <43.947567, 34.960213, 48.895340>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.442532, 34.509274, 49.098194> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.442703, 34.749474, 49.418041>,  <43.442806, 34.893593, 49.609951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.442703, 34.749474, 49.418041>,  <43.442532, 34.509274, 49.098194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.442703, 34.749474, 49.418041> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-1.000000, 0.000143, 0.000427,
		0.000143, -0.799621, 0.600505,
		-0.000427, -0.600505, -0.799621,
		43.442833, 34.929626, 49.657928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.913742, 34.215675, 49.517120>,  <43.442532, 34.509274, 49.098194>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.913742, 34.215675, 49.517120> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.952831, 34.592911, 49.644264>,  <42.976284, 34.819252, 49.720551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.952831, 34.592911, 49.644264>,  <42.913742, 34.215675, 49.517120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.952831, 34.592911, 49.644264> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.994588, 0.081227, 0.064783,
		0.035278, -0.322465, 0.945924,
		0.097725, 0.943090, 0.317854,
		42.982147, 34.875839, 49.739620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.476929, 34.213264, 50.005638>,  <42.913742, 34.215675, 49.517120>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.476929, 34.213264, 50.005638> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.507637, 34.604218, 49.926826>,  <42.526062, 34.838791, 49.879539>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.507637, 34.604218, 49.926826>,  <42.476929, 34.213264, 50.005638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.507637, 34.604218, 49.926826> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.990463, 0.052080, -0.127558,
		-0.114412, 0.204944, 0.972064,
		0.076768, 0.977387, -0.197031,
		42.530666, 34.897434, 49.867718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.880051, 34.633644, 50.414177>,  <42.476929, 34.213264, 50.005638>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.880051, 34.633644, 50.414177> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.988491, 34.890671, 50.127510>,  <42.053555, 35.044888, 49.955509>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.988491, 34.890671, 50.127510>,  <41.880051, 34.633644, 50.414177>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.988491, 34.890671, 50.127510> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.955794, 0.267770, -0.121476,
		0.113845, 0.717917, 0.686757,
		0.271102, 0.642569, -0.716665,
		42.069820, 35.083443, 49.912510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.500832, 35.201710, 50.576630>,  <41.880051, 34.633644, 50.414177>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.500832, 35.201710, 50.576630> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.621147, 35.256622, 50.199127>,  <41.693336, 35.289570, 49.972626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.621147, 35.256622, 50.199127>,  <41.500832, 35.201710, 50.576630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.621147, 35.256622, 50.199127> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.939299, 0.213916, -0.268248,
		0.165058, 0.967157, 0.193296,
		0.300787, 0.137286, -0.943758,
		41.711384, 35.297810, 49.916000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.341095, 35.874313, 50.362259>,  <41.500832, 35.201710, 50.576630>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.341095, 35.874313, 50.362259> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.361099, 35.663635, 50.022823>,  <41.373100, 35.537228, 49.819164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.361099, 35.663635, 50.022823>,  <41.341095, 35.874313, 50.362259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.361099, 35.663635, 50.022823> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.936984, 0.269412, -0.222437,
		0.345774, 0.806235, -0.480027,
		0.050012, -0.526691, -0.848584,
		41.376102, 35.505627, 49.768250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.211220, 36.324722, 49.862755>,  <41.341095, 35.874313, 50.362259>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.211220, 36.324722, 49.862755> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.134140, 35.956818, 49.725994>,  <41.087891, 35.736073, 49.643936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.134140, 35.956818, 49.725994>,  <41.211220, 36.324722, 49.862755>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.134140, 35.956818, 49.725994> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.953423, 0.257904, -0.156427,
		0.232055, 0.295835, -0.926624,
		-0.192703, -0.919765, -0.341904,
		41.076328, 35.680889, 49.623421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.814259, 36.506855, 49.281456>,  <41.211220, 36.324722, 49.862755>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.814259, 36.506855, 49.281456> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.724182, 36.126678, 49.367195>,  <40.670135, 35.898571, 49.418636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.724182, 36.126678, 49.367195>,  <40.814259, 36.506855, 49.281456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.724182, 36.126678, 49.367195> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960750, 0.180031, -0.211064,
		0.162016, -0.253463, -0.953681,
		-0.225189, -0.950445, 0.214347,
		40.656624, 35.841545, 49.431499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.278992, 36.325432, 48.705616>,  <40.814259, 36.506855, 49.281456>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.278992, 36.325432, 48.705616> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.246796, 36.054062, 48.997715>,  <40.227478, 35.891239, 49.172974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.246796, 36.054062, 48.997715>,  <40.278992, 36.325432, 48.705616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.246796, 36.054062, 48.997715> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.980002, 0.187623, 0.066291,
		-0.181984, -0.710305, -0.679962,
		-0.080490, -0.678427, 0.730244,
		40.222649, 35.850533, 49.216789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.948483, 35.642624, 48.343868>,  <40.278992, 36.325432, 48.705616>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.948483, 35.642624, 48.343868> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.827446, 35.722565, 48.716640>,  <39.754826, 35.770531, 48.940304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.827446, 35.722565, 48.716640>,  <39.948483, 35.642624, 48.343868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.827446, 35.722565, 48.716640> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.903891, -0.370349, -0.214063,
		0.302358, -0.907138, 0.292712,
		-0.302590, 0.199856, 0.931932,
		39.736668, 35.782520, 48.996220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.473263, 35.118401, 48.551079>,  <39.948483, 35.642624, 48.343868>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.473263, 35.118401, 48.551079> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.406788, 35.428089, 48.795364>,  <39.366905, 35.613903, 48.941936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.406788, 35.428089, 48.795364>,  <39.473263, 35.118401, 48.551079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.406788, 35.428089, 48.795364> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.966841, -0.249718, 0.053483,
		0.193913, -0.581573, 0.790045,
		-0.166184, 0.774218, 0.610712,
		39.356934, 35.660355, 48.978577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.994427, 34.833965, 48.856083>,  <39.473263, 35.118401, 48.551079>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.994427, 34.833965, 48.856083> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.190472, 34.561344, 49.073441>,  <39.308098, 34.397770, 49.203854>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.190472, 34.561344, 49.073441>,  <38.994427, 34.833965, 48.856083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.190472, 34.561344, 49.073441> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869254, -0.428435, 0.246659,
		0.064695, -0.593235, -0.802426,
		0.490113, -0.681554, 0.543389,
		39.337505, 34.356876, 49.236458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.939312, 34.061096, 48.642944>,  <38.994427, 34.833965, 48.856083>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.939312, 34.061096, 48.642944> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.968502, 34.154964, 49.030678>,  <38.986015, 34.211285, 49.263317>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.968502, 34.154964, 49.030678>,  <38.939312, 34.061096, 48.642944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.968502, 34.154964, 49.030678> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.993752, -0.065193, 0.090592,
		0.084453, -0.969886, 0.228448,
		0.072971, 0.234671, 0.969332,
		38.990395, 34.225365, 49.321476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.651199, 33.553154, 48.097752>,  <38.939312, 34.061096, 48.642944>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.651199, 33.553154, 48.097752> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.771652, 33.524143, 47.717422>,  <38.843925, 33.506737, 47.489227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.771652, 33.524143, 47.717422>,  <38.651199, 33.553154, 48.097752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.771652, 33.524143, 47.717422> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474844, -0.876094, -0.083560,
		-0.826946, 0.476654, -0.298264,
		0.301136, -0.072529, -0.950819,
		38.861992, 33.502384, 47.432178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.067207, 33.569908, 47.553246>,  <38.651199, 33.553154, 48.097752>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.067207, 33.569908, 47.553246> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.384109, 33.340088, 47.471054>,  <38.574253, 33.202194, 47.421741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.384109, 33.340088, 47.471054>,  <38.067207, 33.569908, 47.553246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.384109, 33.340088, 47.471054> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556113, -0.818469, 0.144384,
		-0.251132, -0.000121, -0.967953,
		0.792257, -0.574550, -0.205476,
		38.621788, 33.167725, 47.409412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.860645, 33.066898, 47.006805>,  <38.067207, 33.569908, 47.553246>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.860645, 33.066898, 47.006805> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.168907, 32.864643, 47.161942>,  <38.353863, 32.743290, 47.255024>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.168907, 32.864643, 47.161942>,  <37.860645, 33.066898, 47.006805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.168907, 32.864643, 47.161942> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601245, -0.778627, 0.179570,
		0.211186, -0.371575, -0.904065,
		0.770652, -0.505641, 0.387843,
		38.400105, 32.712952, 47.278294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.014980, 32.353184, 46.600510>,  <37.860645, 33.066898, 47.006805>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.014980, 32.353184, 46.600510> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.175930, 32.325092, 46.965622>,  <38.272499, 32.308239, 47.184689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.175930, 32.325092, 46.965622>,  <38.014980, 32.353184, 46.600510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.175930, 32.325092, 46.965622> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473465, -0.869319, 0.141831,
		0.783535, -0.489237, -0.383040,
		0.402373, -0.070227, 0.912778,
		38.296642, 32.304024, 47.239456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.063400, 31.571344, 46.749939>,  <38.014980, 32.353184, 46.600510>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.063400, 31.571344, 46.749939> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.093300, 31.743565, 47.109726>,  <38.111240, 31.846897, 47.325596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.093300, 31.743565, 47.109726>,  <38.063400, 31.571344, 46.749939>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.093300, 31.743565, 47.109726> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535930, -0.743307, 0.400343,
		0.840947, -0.511976, 0.175183,
		0.074751, 0.430553, 0.899464,
		38.115726, 31.872730, 47.379566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.174828, 31.005850, 47.332314>,  <38.063400, 31.571344, 46.749939>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.174828, 31.005850, 47.332314> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.039085, 31.324169, 47.532932>,  <37.957642, 31.515160, 47.653305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.039085, 31.324169, 47.532932>,  <38.174828, 31.005850, 47.332314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.039085, 31.324169, 47.532932> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644093, -0.585165, 0.492672,
		0.685553, -0.155852, 0.711145,
		-0.339353, 0.795796, 0.501545,
		37.937279, 31.562908, 47.683395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198460, 30.862148, 48.085991>,  <38.174828, 31.005850, 47.332314>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198460, 30.862148, 48.085991> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.925430, 31.147800, 48.023876>,  <37.761612, 31.319191, 47.986607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.925430, 31.147800, 48.023876>,  <38.198460, 30.862148, 48.085991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.925430, 31.147800, 48.023876> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698241, -0.574522, 0.427064,
		0.215767, 0.399927, 0.890788,
		-0.682572, 0.714131, -0.155282,
		37.720657, 31.362040, 47.977291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.862537, 30.877125, 48.725960>,  <38.198460, 30.862148, 48.085991>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.862537, 30.877125, 48.725960> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.614174, 31.055056, 48.467781>,  <37.465157, 31.161814, 48.312874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.614174, 31.055056, 48.467781>,  <37.862537, 30.877125, 48.725960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.614174, 31.055056, 48.467781> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775433, -0.469139, 0.422626,
		-0.114810, 0.762913, 0.636225,
		-0.620905, 0.444828, -0.645449,
		37.427902, 31.188503, 48.274147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382042, 31.277752, 49.087940>,  <37.862537, 30.877125, 48.725960>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.382042, 31.277752, 49.087940> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.181095, 31.206600, 48.749477>,  <37.060528, 31.163910, 48.546398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.181095, 31.206600, 48.749477>,  <37.382042, 31.277752, 49.087940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.181095, 31.206600, 48.749477> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784573, -0.317534, 0.532558,
		-0.363415, 0.931414, 0.019960,
		-0.502370, -0.177879, -0.846158,
		37.030384, 31.153236, 48.495628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.898972, 31.713755, 49.093475>,  <37.382042, 31.277752, 49.087940>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.898972, 31.713755, 49.093475> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.768997, 31.412930, 48.864105>,  <36.691013, 31.232435, 48.726482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.768997, 31.412930, 48.864105>,  <36.898972, 31.713755, 49.093475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.768997, 31.412930, 48.864105> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808478, -0.093696, 0.581020,
		-0.490691, 0.652399, -0.577580,
		-0.324940, -0.752062, -0.573426,
		36.671516, 31.187311, 48.692078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<29.911421, 30.808374, 52.612186> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.175491, 31.106165, 52.572338>,  <30.333933, 31.284840, 52.548428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.175491, 31.106165, 52.572338>,  <29.911421, 30.808374, 52.612186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.175491, 31.106165, 52.572338> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472234, -0.514535, -0.715715,
		-0.584090, 0.425454, -0.691251,
		0.660176, 0.744475, -0.099621,
		30.373545, 31.329508, 52.542450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.946533, 30.897673, 51.879005>,  <29.911421, 30.808374, 52.612186>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.946533, 30.897673, 51.879005> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.288206, 31.042469, 52.028313>,  <30.493210, 31.129347, 52.117897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.288206, 31.042469, 52.028313>,  <29.946533, 30.897673, 51.879005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.288206, 31.042469, 52.028313> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508258, -0.429755, -0.746314,
		-0.109743, 0.827208, -0.551075,
		0.854184, 0.361991, 0.373272,
		30.544462, 31.151066, 52.140293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.357363, 31.059193, 51.311211>,  <29.946533, 30.897673, 51.879005>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.357363, 31.059193, 51.311211> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.645769, 31.070795, 51.588135>,  <30.818813, 31.077757, 51.754288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.645769, 31.070795, 51.588135>,  <30.357363, 31.059193, 51.311211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.645769, 31.070795, 51.588135> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671867, -0.273660, -0.688263,
		0.169494, 0.961389, -0.216802,
		0.721018, 0.029006, 0.692309,
		30.862074, 31.079496, 51.795826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.950630, 31.405127, 51.008244>,  <30.357363, 31.059193, 51.311211>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.950630, 31.405127, 51.008244> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.113585, 31.203125, 51.312614>,  <31.211357, 31.081924, 51.495235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.113585, 31.203125, 51.312614>,  <30.950630, 31.405127, 51.008244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.113585, 31.203125, 51.312614> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734726, -0.313635, -0.601506,
		0.542416, 0.804118, 0.243269,
		0.407384, -0.505003, 0.760927,
		31.235800, 31.051624, 51.540894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.644711, 31.534349, 50.954430>,  <30.950630, 31.405127, 51.008244>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.644711, 31.534349, 50.954430> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.660067, 31.225546, 51.208210>,  <31.669281, 31.040264, 51.360477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.660067, 31.225546, 51.208210>,  <31.644711, 31.534349, 50.954430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.660067, 31.225546, 51.208210> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809873, -0.347884, -0.472317,
		0.585348, 0.531958, 0.611872,
		0.038392, -0.772009, 0.634452,
		31.671585, 30.993944, 51.398544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.274948, 31.432104, 51.088200>,  <31.644711, 31.534349, 50.954430>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.274948, 31.432104, 51.088200> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.113609, 31.072906, 51.158535>,  <32.016808, 30.857388, 51.200737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.113609, 31.072906, 51.158535>,  <32.274948, 31.432104, 51.088200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.113609, 31.072906, 51.158535> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712017, -0.428703, -0.556098,
		0.574757, -0.099096, 0.812302,
		-0.403344, -0.897994, 0.175841,
		31.992607, 30.803509, 51.211288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.875381, 31.078516, 51.285408>,  <32.274948, 31.432104, 51.088200>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.875381, 31.078516, 51.285408> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.612701, 30.797068, 51.176842>,  <32.455093, 30.628199, 51.111702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.612701, 30.797068, 51.176842>,  <32.875381, 31.078516, 51.285408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.612701, 30.797068, 51.176842> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684678, -0.405362, -0.605721,
		0.316174, -0.583610, 0.747953,
		-0.656696, -0.703620, -0.271420,
		32.415691, 30.585981, 51.095417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.156460, 30.357553, 51.432148>,  <32.875381, 31.078516, 51.285408>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.156460, 30.357553, 51.432148> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.867809, 30.321661, 51.157574>,  <32.694618, 30.300125, 50.992828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.867809, 30.321661, 51.157574>,  <33.156460, 30.357553, 51.432148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.867809, 30.321661, 51.157574> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661725, -0.380736, -0.645879,
		-0.203398, -0.920320, 0.334127,
		-0.721629, -0.089730, -0.686440,
		32.651321, 30.294743, 50.951641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.108997, 29.647554, 51.193600>,  <33.156460, 30.357553, 51.432148>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.108997, 29.647554, 51.193600> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.953037, 29.871262, 50.900970>,  <32.859463, 30.005486, 50.725391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.953037, 29.871262, 50.900970>,  <33.108997, 29.647554, 51.193600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.953037, 29.871262, 50.900970> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679069, -0.361965, -0.638628,
		-0.621968, -0.745789, -0.238652,
		-0.389898, 0.559268, -0.731573,
		32.836067, 30.039042, 50.681499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.977657, 29.167757, 50.777187>,  <33.108997, 29.647554, 51.193600>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.977657, 29.167757, 50.777187> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.008713, 29.526653, 50.603321>,  <33.027344, 29.741991, 50.499001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.008713, 29.526653, 50.603321>,  <32.977657, 29.167757, 50.777187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.008713, 29.526653, 50.603321> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658774, -0.373407, -0.653133,
		-0.748324, -0.235637, -0.620070,
		0.077637, 0.897241, -0.434661,
		33.032005, 29.795826, 50.472923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.020882, 29.017294, 50.059456>,  <32.977657, 29.167757, 50.777187>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.020882, 29.017294, 50.059456> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.149525, 29.395285, 50.083408>,  <33.226711, 29.622080, 50.097782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.149525, 29.395285, 50.083408>,  <33.020882, 29.017294, 50.059456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.149525, 29.395285, 50.083408> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507216, -0.118529, -0.853629,
		-0.799562, 0.304908, -0.517428,
		0.321609, 0.944977, 0.059883,
		33.246006, 29.678778, 50.101372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.818783, 29.406679, 49.496685>,  <33.020882, 29.017294, 50.059456>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.818783, 29.406679, 49.496685> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.167542, 29.570984, 49.603329>,  <33.376797, 29.669567, 49.667313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.167542, 29.570984, 49.603329>,  <32.818783, 29.406679, 49.496685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.167542, 29.570984, 49.603329> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372175, -0.201998, -0.905915,
		-0.318260, 0.889085, -0.328995,
		0.871892, 0.410761, 0.266607,
		33.429108, 29.694212, 49.683311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.947109, 29.959656, 49.007145>,  <32.818783, 29.406679, 49.496685>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.947109, 29.959656, 49.007145> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.256058, 29.780638, 49.187431>,  <33.441425, 29.673227, 49.295605>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.256058, 29.780638, 49.187431>,  <32.947109, 29.959656, 49.007145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.256058, 29.780638, 49.187431> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343256, -0.302950, -0.889043,
		0.534433, 0.841381, -0.080367,
		0.772371, -0.447547, 0.450715,
		33.487770, 29.646374, 49.322647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.024166, 30.349298, 48.365650>,  <32.947109, 29.959656, 49.007145>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.024166, 30.349298, 48.365650> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.327141, 30.596329, 48.280903>,  <33.508926, 30.744547, 48.230053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.327141, 30.596329, 48.280903>,  <33.024166, 30.349298, 48.365650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.327141, 30.596329, 48.280903> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644842, 0.758446, -0.094541,
		0.102307, 0.208233, 0.972714,
		0.757438, 0.617575, -0.211872,
		33.554371, 30.781601, 48.217342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.050774, 30.984604, 48.916782>,  <33.024166, 30.349298, 48.365650>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.050774, 30.984604, 48.916782> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.185291, 31.059444, 48.547588>,  <33.266003, 31.104349, 48.326073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.185291, 31.059444, 48.547588>,  <33.050774, 30.984604, 48.916782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.185291, 31.059444, 48.547588> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667419, 0.738800, -0.093413,
		0.664424, 0.647432, 0.373326,
		0.336292, 0.187100, -0.922985,
		33.286179, 31.115574, 48.270691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.305447, 31.697458, 48.868298>,  <33.050774, 30.984604, 48.916782>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.305447, 31.697458, 48.868298> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.218121, 31.561016, 48.502567>,  <33.165726, 31.479151, 48.283131>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.218121, 31.561016, 48.502567>,  <33.305447, 31.697458, 48.868298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.218121, 31.561016, 48.502567> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726819, 0.682048, -0.080902,
		0.651207, 0.646885, -0.396824,
		-0.218319, -0.341103, -0.914322,
		33.152626, 31.458685, 48.228271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.196686, 32.330635, 48.488495>,  <33.305447, 31.697458, 48.868298>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.196686, 32.330635, 48.488495> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.029388, 32.051903, 48.255428>,  <32.929008, 31.884663, 48.115589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.029388, 32.051903, 48.255428>,  <33.196686, 32.330635, 48.488495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.029388, 32.051903, 48.255428> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844512, 0.534516, -0.033049,
		0.334473, 0.478243, -0.812041,
		-0.418244, -0.696832, -0.582664,
		32.903915, 31.842854, 48.080627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.086704, 32.632385, 47.770481>,  <33.196686, 32.330635, 48.488495>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.086704, 32.632385, 47.770481> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.840801, 32.333054, 47.870148>,  <32.693260, 32.153454, 47.929947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.840801, 32.333054, 47.870148>,  <33.086704, 32.632385, 47.770481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.840801, 32.333054, 47.870148> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768636, 0.639256, 0.023463,
		-0.176836, -0.177091, -0.968178,
		-0.614758, -0.748326, 0.249162,
		32.656372, 32.108555, 47.944897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.487106, 32.877522, 47.486122>,  <33.086704, 32.632385, 47.770481>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.487106, 32.877522, 47.486122> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.364487, 32.564938, 47.703506>,  <32.290916, 32.377388, 47.833939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.364487, 32.564938, 47.703506>,  <32.487106, 32.877522, 47.486122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.364487, 32.564938, 47.703506> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.911406, 0.405647, 0.069200,
		-0.274530, -0.474101, -0.836577,
		-0.306548, -0.781459, 0.543461,
		32.272522, 32.330502, 47.866547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.902407, 32.711647, 47.166267>,  <32.487106, 32.877522, 47.486122>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.902407, 32.711647, 47.166267> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.875385, 32.546257, 47.529469>,  <31.859173, 32.447021, 47.747391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.875385, 32.546257, 47.529469>,  <31.902407, 32.711647, 47.166267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.875385, 32.546257, 47.529469> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.934909, 0.344031, 0.087106,
		-0.348399, -0.843018, -0.409803,
		-0.067553, -0.413476, 0.908006,
		31.855120, 32.422215, 47.801868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.216843, 32.371994, 47.261150>,  <31.902407, 32.711647, 47.166267>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.216843, 32.371994, 47.261150> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.345369, 32.448090, 47.632217>,  <31.422485, 32.493748, 47.854858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.345369, 32.448090, 47.632217>,  <31.216843, 32.371994, 47.261150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.345369, 32.448090, 47.632217> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.877267, 0.428681, 0.215950,
		-0.356591, -0.883200, 0.304632,
		0.321317, 0.190238, 0.927666,
		31.441765, 32.505161, 47.910519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.635221, 32.385216, 47.654118>,  <31.216843, 32.371994, 47.261150>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.635221, 32.385216, 47.654118> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.878870, 32.584888, 47.900627>,  <31.025059, 32.704693, 48.048531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.878870, 32.584888, 47.900627>,  <30.635221, 32.385216, 47.654118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.878870, 32.584888, 47.900627> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706808, 0.694140, 0.136353,
		-0.359713, -0.518640, 0.775641,
		0.609122, 0.499181, 0.616271,
		31.061607, 32.734642, 48.085506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.291435, 32.540325, 48.284973>,  <30.635221, 32.385216, 47.654118>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.291435, 32.540325, 48.284973> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.585526, 32.810394, 48.261021>,  <30.761980, 32.972435, 48.246647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.585526, 32.810394, 48.261021>,  <30.291435, 32.540325, 48.284973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.585526, 32.810394, 48.261021> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651874, 0.728522, 0.210512,
		0.185759, -0.115737, 0.975756,
		0.735224, 0.675174, -0.059884,
		30.806093, 33.012947, 48.243057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.178585, 33.005997, 48.853287>,  <30.291435, 32.540325, 48.284973>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.178585, 33.005997, 48.853287> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.438999, 33.208916, 48.627438>,  <30.595247, 33.330666, 48.491928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.438999, 33.208916, 48.627438>,  <30.178585, 33.005997, 48.853287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.438999, 33.208916, 48.627438> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590314, 0.806000, 0.043514,
		0.477163, 0.304978, 0.824199,
		0.651034, 0.507299, -0.564626,
		30.634310, 33.361107, 48.458050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.312004, 33.526993, 49.277317>,  <30.178585, 33.005997, 48.853287>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.312004, 33.526993, 49.277317> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.397139, 33.629066, 48.900047>,  <30.448219, 33.690311, 48.673683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.397139, 33.629066, 48.900047>,  <30.312004, 33.526993, 49.277317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.397139, 33.629066, 48.900047> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476289, 0.869939, 0.127890,
		0.853141, 0.422005, 0.306696,
		0.212836, 0.255184, -0.943176,
		30.460989, 33.705620, 48.617096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.791931, 34.119999, 49.277565>,  <30.312004, 33.526993, 49.277317>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.791931, 34.119999, 49.277565> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.641682, 34.104435, 48.907185>,  <30.551533, 34.095097, 48.684956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.641682, 34.104435, 48.907185>,  <30.791931, 34.119999, 49.277565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.641682, 34.104435, 48.907185> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395158, 0.910471, 0.122039,
		0.838307, 0.411739, -0.357369,
		-0.375622, -0.038911, -0.925956,
		30.528996, 34.092762, 48.629398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.905413, 34.706207, 49.020390>,  <30.791931, 34.119999, 49.277565>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.905413, 34.706207, 49.020390> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.603113, 34.572403, 48.795197>,  <30.421734, 34.492119, 48.660080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.603113, 34.572403, 48.795197>,  <30.905413, 34.706207, 49.020390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.603113, 34.572403, 48.795197> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461396, 0.882064, 0.095271,
		0.464713, 0.331757, -0.820962,
		-0.755748, -0.334515, -0.562978,
		30.376389, 34.472050, 48.626305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.749695, 35.269493, 48.578152>,  <30.905413, 34.706207, 49.020390>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.749695, 35.269493, 48.578152> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.416061, 35.048958, 48.585442>,  <30.215881, 34.916637, 48.589817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.416061, 35.048958, 48.585442>,  <30.749695, 35.269493, 48.578152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.416061, 35.048958, 48.585442> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532304, 0.813077, 0.235710,
		-0.144774, 0.186901, -0.971653,
		-0.834082, -0.551339, 0.018224,
		30.165836, 34.883556, 48.590908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.976360, 35.799980, 48.026176>,  <30.749695, 35.269493, 48.578152>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.976360, 35.799980, 48.026176> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.206593, 36.123798, 48.072395>,  <31.344732, 36.318089, 48.100128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.206593, 36.123798, 48.072395>,  <30.976360, 35.799980, 48.026176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.206593, 36.123798, 48.072395> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695177, -0.409988, -0.590457,
		-0.430625, 0.420182, -0.798755,
		0.575579, 0.809541, 0.115550,
		31.379267, 36.366661, 48.107059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.294811, 35.993820, 47.369865>,  <30.976360, 35.799980, 48.026176>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.294811, 35.993820, 47.369865> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.517521, 36.184822, 47.641747>,  <31.651146, 36.299423, 47.804874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.517521, 36.184822, 47.641747>,  <31.294811, 35.993820, 47.369865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.517521, 36.184822, 47.641747> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830158, -0.291303, -0.475374,
		-0.028994, 0.828934, -0.558594,
		0.556774, 0.477504, 0.679700,
		31.684553, 36.328072, 47.845657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.641077, 36.539623, 47.041473>,  <31.294811, 35.993820, 47.369865>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.641077, 36.539623, 47.041473> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.859936, 36.472546, 47.369499>,  <31.991251, 36.432297, 47.566315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.859936, 36.472546, 47.369499>,  <31.641077, 36.539623, 47.041473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.859936, 36.472546, 47.369499> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836304, 0.150529, -0.527197,
		-0.035034, 0.974279, 0.222606,
		0.547145, -0.167697, 0.820067,
		32.024078, 36.422237, 47.615520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.189186, 36.903618, 46.940273>,  <31.641077, 36.539623, 47.041473>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.189186, 36.903618, 46.940273> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.328938, 36.648632, 47.214958>,  <32.412788, 36.495640, 47.379768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.328938, 36.648632, 47.214958>,  <32.189186, 36.903618, 46.940273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.328938, 36.648632, 47.214958> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922804, 0.107086, -0.370088,
		0.162379, 0.763004, 0.625666,
		0.349379, -0.637461, 0.686715,
		32.433750, 36.457394, 47.420971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.872658, 36.996685, 46.899429>,  <32.189186, 36.903618, 46.940273>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.872658, 36.996685, 46.899429> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.863033, 36.655365, 47.107777>,  <32.857258, 36.450573, 47.232784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.863033, 36.655365, 47.107777>,  <32.872658, 36.996685, 46.899429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.863033, 36.655365, 47.107777> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852742, -0.289451, -0.434798,
		0.521778, 0.433702, 0.734609,
		-0.024060, -0.853300, 0.520865,
		32.855816, 36.399376, 47.264038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.528522, 36.895203, 47.074795>,  <32.872658, 36.996685, 46.899429>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.528522, 36.895203, 47.074795> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.367382, 36.529133, 47.079849>,  <33.270699, 36.309490, 47.082882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.367382, 36.529133, 47.079849>,  <33.528522, 36.895203, 47.074795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.367382, 36.529133, 47.079849> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827911, -0.370252, -0.421279,
		0.390223, -0.159253, 0.906843,
		-0.402851, -0.915178, 0.012634,
		33.246529, 36.254578, 47.083641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.993717, 36.403008, 47.377987>,  <33.528522, 36.895203, 47.074795>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.993717, 36.403008, 47.377987> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.761215, 36.185482, 47.135860>,  <33.621716, 36.054966, 46.990585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.761215, 36.185482, 47.135860>,  <33.993717, 36.403008, 47.377987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.761215, 36.185482, 47.135860> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806266, -0.284425, -0.518688,
		0.109900, -0.789539, 0.603780,
		-0.581254, -0.543811, -0.605320,
		33.586838, 36.022339, 46.954266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.200863, 35.614609, 47.371529>,  <33.993717, 36.403008, 47.377987>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.200863, 35.614609, 47.371529> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.995316, 35.680199, 47.034710>,  <33.871986, 35.719555, 46.832619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.995316, 35.680199, 47.034710>,  <34.200863, 35.614609, 47.371529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.995316, 35.680199, 47.034710> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764427, -0.357954, -0.536209,
		-0.389342, -0.919228, 0.058592,
		-0.513871, 0.163979, -0.842050,
		33.841156, 35.729393, 46.782097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.480396, 35.087303, 46.975151>,  <34.200863, 35.614609, 47.371529>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.480396, 35.087303, 46.975151> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.295208, 35.305119, 46.695396>,  <34.184097, 35.435806, 46.527542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.295208, 35.305119, 46.695396>,  <34.480396, 35.087303, 46.975151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.295208, 35.305119, 46.695396> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797493, -0.088488, -0.596804,
		-0.386868, -0.834057, -0.393295,
		-0.462967, 0.544535, -0.699388,
		34.156319, 35.468479, 46.485580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.563274, 34.661110, 46.548210>,  <34.480396, 35.087303, 46.975151>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.563274, 34.661110, 46.548210> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.490307, 35.008545, 46.363914>,  <34.446526, 35.217007, 46.253338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.490307, 35.008545, 46.363914>,  <34.563274, 34.661110, 46.548210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.490307, 35.008545, 46.363914> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800900, -0.140550, -0.582070,
		-0.570335, -0.475185, -0.670013,
		-0.182420, 0.868588, -0.460736,
		34.435581, 35.269123, 46.225693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.781876, 34.486977, 45.820667>,  <34.563274, 34.661110, 46.548210>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.781876, 34.486977, 45.820667> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.762985, 34.885403, 45.850643>,  <34.751652, 35.124458, 45.868629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.762985, 34.885403, 45.850643>,  <34.781876, 34.486977, 45.820667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.762985, 34.885403, 45.850643> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849200, 0.079540, -0.522046,
		-0.525955, 0.038985, -0.849619,
		-0.047227, 0.996069, 0.074940,
		34.748817, 35.184223, 45.873127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.739079, 34.776657, 45.131943>,  <34.781876, 34.486977, 45.820667>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.739079, 34.776657, 45.131943> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.900944, 35.041115, 45.384655>,  <34.998062, 35.199787, 45.536282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.900944, 35.041115, 45.384655>,  <34.739079, 34.776657, 45.131943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.900944, 35.041115, 45.384655> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786792, 0.100384, -0.609001,
		-0.466055, 0.743517, -0.479557,
		0.404662, 0.661140, 0.631777,
		35.022343, 35.239456, 45.574188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.514654, 40.036625, 51.919685> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.207653, 40.055660, 51.663975>,  <29.023453, 40.067081, 51.510548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.207653, 40.055660, 51.663975>,  <29.514654, 40.036625, 51.919685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.207653, 40.055660, 51.663975> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452088, -0.666833, -0.592410,
		-0.454481, -0.743686, 0.490283,
		-0.767504, 0.047588, -0.639275,
		28.977402, 40.069939, 51.472191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.295902, 39.296886, 51.900612>,  <29.514654, 40.036625, 51.919685>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.295902, 39.296886, 51.900612> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.124851, 39.484489, 51.591507>,  <29.022221, 39.597054, 51.406044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.124851, 39.484489, 51.591507>,  <29.295902, 39.296886, 51.900612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.124851, 39.484489, 51.591507> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269979, -0.749587, -0.604343,
		-0.862697, -0.467063, 0.193921,
		-0.427627, 0.469011, -0.772764,
		28.996563, 39.625195, 51.359676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.022722, 38.746891, 51.399612>,  <29.295902, 39.296886, 51.900612>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.022722, 38.746891, 51.399612> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.073296, 39.091057, 51.202148>,  <29.103640, 39.297558, 51.083672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.073296, 39.091057, 51.202148>,  <29.022722, 38.746891, 51.399612>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.073296, 39.091057, 51.202148> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465896, -0.490858, -0.736206,
		-0.875760, -0.136913, -0.462925,
		0.126434, 0.860415, -0.493661,
		29.111225, 39.349182, 51.054050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.767796, 38.540455, 50.779495>,  <29.022722, 38.746891, 51.399612>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.767796, 38.540455, 50.779495> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.988232, 38.861546, 50.688339>,  <29.120493, 39.054199, 50.633644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.988232, 38.861546, 50.688339>,  <28.767796, 38.540455, 50.779495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.988232, 38.861546, 50.688339> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383189, -0.486053, -0.785442,
		-0.741258, 0.345526, -0.575454,
		0.551092, 0.802723, -0.227889,
		29.153559, 39.102364, 50.619972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.558159, 38.694939, 50.078461>,  <28.767796, 38.540455, 50.779495>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.558159, 38.694939, 50.078461> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.910334, 38.879314, 50.122932>,  <29.121639, 38.989941, 50.149616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.910334, 38.879314, 50.122932>,  <28.558159, 38.694939, 50.078461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.910334, 38.879314, 50.122932> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334749, -0.438188, -0.834226,
		-0.335815, 0.771701, -0.540098,
		0.880438, 0.460943, 0.111176,
		29.174465, 39.017597, 50.156284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.819952, 38.775700, 49.440189>,  <28.558159, 38.694939, 50.078461>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.819952, 38.775700, 49.440189> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.154285, 38.827248, 49.653645>,  <29.354885, 38.858177, 49.781719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.154285, 38.827248, 49.653645>,  <28.819952, 38.775700, 49.440189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.154285, 38.827248, 49.653645> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499869, -0.580526, -0.642745,
		0.226962, 0.803979, -0.549642,
		0.835835, 0.128870, 0.533641,
		29.405035, 38.865910, 49.813736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.332390, 38.877747, 48.931675>,  <28.819952, 38.775700, 49.440189>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.332390, 38.877747, 48.931675> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.530054, 38.779892, 49.265373>,  <29.648653, 38.721180, 49.465591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.530054, 38.779892, 49.265373>,  <29.332390, 38.877747, 48.931675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.530054, 38.779892, 49.265373> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616089, -0.578498, -0.534579,
		0.613384, 0.778135, -0.135153,
		0.494160, -0.244636, 0.834242,
		29.678303, 38.706501, 49.515644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.985739, 39.026585, 48.787045>,  <29.332390, 38.877747, 48.931675>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.985739, 39.026585, 48.787045> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.022659, 38.789219, 49.106880>,  <30.044811, 38.646801, 49.298782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.022659, 38.789219, 49.106880>,  <29.985739, 39.026585, 48.787045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.022659, 38.789219, 49.106880> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766013, -0.470723, -0.437772,
		0.636164, 0.652903, 0.411112,
		0.092303, -0.593412, 0.799589,
		30.050350, 38.611195, 49.346756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.761587, 38.971638, 48.759457>,  <29.985739, 39.026585, 48.787045>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.761587, 38.971638, 48.759457> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.583879, 38.684826, 48.974300>,  <30.477255, 38.512737, 49.103207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.583879, 38.684826, 48.974300>,  <30.761587, 38.971638, 48.759457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.583879, 38.684826, 48.974300> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653999, -0.669314, -0.352569,
		0.612300, 0.194635, 0.766294,
		-0.444269, -0.717033, 0.537111,
		30.450600, 38.469715, 49.135433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.196449, 38.556469, 49.070652>,  <30.761587, 38.971638, 48.759457>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.196449, 38.556469, 49.070652> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.895699, 38.295155, 49.035103>,  <30.715248, 38.138367, 49.013775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.895699, 38.295155, 49.035103>,  <31.196449, 38.556469, 49.070652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.895699, 38.295155, 49.035103> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607643, -0.634333, -0.477903,
		0.255836, -0.413324, 0.873905,
		-0.751876, -0.653288, -0.088869,
		30.670135, 38.099167, 49.008442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.500099, 37.921814, 49.209145>,  <31.196449, 38.556469, 49.070652>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.500099, 37.921814, 49.209145> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.162340, 37.793736, 49.037346>,  <30.959684, 37.716888, 48.934265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.162340, 37.793736, 49.037346>,  <31.500099, 37.921814, 49.209145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.162340, 37.793736, 49.037346> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473470, -0.821137, -0.318686,
		-0.250632, -0.472451, 0.844970,
		-0.844399, -0.320195, -0.429495,
		30.909021, 37.697678, 48.908497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.457592, 37.176983, 49.382408>,  <31.500099, 37.921814, 49.209145>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.457592, 37.176983, 49.382408> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.190886, 37.220741, 49.087528>,  <31.030863, 37.246994, 48.910603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.190886, 37.220741, 49.087528>,  <31.457592, 37.176983, 49.382408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.190886, 37.220741, 49.087528> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372512, -0.807820, -0.456795,
		-0.645492, -0.579189, 0.497876,
		-0.666765, 0.109393, -0.737196,
		30.990856, 37.253559, 48.866371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.059885, 36.481792, 49.248619>,  <31.457592, 37.176983, 49.382408>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.059885, 36.481792, 49.248619> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.022690, 36.699646, 48.915218>,  <31.000372, 36.830357, 48.715176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.022690, 36.699646, 48.915218>,  <31.059885, 36.481792, 49.248619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.022690, 36.699646, 48.915218> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463206, -0.717360, -0.520418,
		-0.881359, -0.434477, -0.185571,
		-0.092988, 0.544633, -0.833504,
		30.994793, 36.863037, 48.665169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.712238, 36.075943, 48.735947>,  <31.059885, 36.481792, 49.248619>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.712238, 36.075943, 48.735947> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.943272, 36.350342, 48.558949>,  <31.081892, 36.514980, 48.452751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.943272, 36.350342, 48.558949>,  <30.712238, 36.075943, 48.735947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.943272, 36.350342, 48.558949> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599055, -0.724413, -0.341114,
		-0.554553, -0.068057, -0.829361,
		0.577584, 0.685999, -0.442495,
		31.116547, 36.556141, 48.426201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.188671, 35.711994, 48.243710>,  <30.712238, 36.075943, 48.735947>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.188671, 35.711994, 48.243710> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.975037, 35.441364, 48.446487>,  <29.846855, 35.278988, 48.568153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.975037, 35.441364, 48.446487>,  <30.188671, 35.711994, 48.243710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.975037, 35.441364, 48.446487> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624719, 0.719852, 0.302557,
		-0.569629, -0.155108, -0.807133,
		-0.534087, -0.676576, 0.506947,
		29.814810, 35.238392, 48.598572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.399853, 35.754208, 48.000935>,  <30.188671, 35.711994, 48.243710>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.399853, 35.754208, 48.000935> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.424545, 35.596504, 48.367702>,  <29.439362, 35.501881, 48.587765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.424545, 35.596504, 48.367702>,  <29.399853, 35.754208, 48.000935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.424545, 35.596504, 48.367702> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692897, 0.644299, 0.323686,
		-0.718389, -0.655316, -0.233407,
		0.061733, -0.394260, 0.916924,
		29.443066, 35.478226, 48.642780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.729221, 35.834743, 48.202461>,  <29.399853, 35.754208, 48.000935>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.729221, 35.834743, 48.202461> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.899523, 35.703751, 48.539860>,  <29.001703, 35.625156, 48.742298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.899523, 35.703751, 48.539860>,  <28.729221, 35.834743, 48.202461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.899523, 35.703751, 48.539860> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631891, 0.559632, 0.536214,
		-0.647649, -0.761295, 0.031333,
		0.425752, -0.327479, 0.843500,
		29.027248, 35.605507, 48.792912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.245970, 35.446754, 48.638515>,  <28.729221, 35.834743, 48.202461>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.245970, 35.446754, 48.638515> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.536665, 35.568867, 48.884655>,  <28.711082, 35.642136, 49.032341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.536665, 35.568867, 48.884655>,  <28.245970, 35.446754, 48.638515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.536665, 35.568867, 48.884655> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678752, 0.456852, 0.574963,
		-0.105597, -0.835517, 0.539223,
		0.726736, 0.305284, 0.615351,
		28.754686, 35.660454, 49.069260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.024042, 35.295303, 49.333057>,  <28.245970, 35.446754, 48.638515>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.024042, 35.295303, 49.333057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.306618, 35.571960, 49.393158>,  <28.476164, 35.737953, 49.429218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.306618, 35.571960, 49.393158>,  <28.024042, 35.295303, 49.333057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.306618, 35.571960, 49.393158> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538124, 0.386973, 0.748782,
		0.459748, -0.609820, 0.645562,
		0.706438, 0.691644, 0.150249,
		28.518549, 35.779453, 49.438232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.971428, 35.399754, 50.067844>,  <28.024042, 35.295303, 49.333057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.971428, 35.399754, 50.067844> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.175043, 35.704479, 49.907589>,  <28.297213, 35.887314, 49.811436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.175043, 35.704479, 49.907589>,  <27.971428, 35.399754, 50.067844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.175043, 35.704479, 49.907589> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508932, 0.641769, 0.573690,
		0.694168, -0.088129, 0.714397,
		0.509037, 0.761818, -0.400644,
		28.327755, 35.933025, 49.787395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.244904, 35.721973, 50.635124>,  <27.971428, 35.399754, 50.067844>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.244904, 35.721973, 50.635124> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.252968, 36.023281, 50.372162>,  <28.257807, 36.204063, 50.214382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.252968, 36.023281, 50.372162>,  <28.244904, 35.721973, 50.635124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.252968, 36.023281, 50.372162> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316211, 0.628592, 0.710551,
		0.948475, 0.193556, 0.250862,
		0.020158, 0.753265, -0.657408,
		28.259016, 36.249260, 50.174938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.361923, 36.364330, 51.091572>,  <28.244904, 35.721973, 50.635124>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.361923, 36.364330, 51.091572> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.172934, 36.450836, 50.749813>,  <28.059540, 36.502739, 50.544758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.172934, 36.450836, 50.749813>,  <28.361923, 36.364330, 51.091572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.172934, 36.450836, 50.749813> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510484, 0.723106, 0.465321,
		0.718454, 0.656009, -0.231249,
		-0.472473, 0.216262, -0.854401,
		28.031193, 36.515717, 50.493492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.251505, 36.981560, 51.205647>,  <28.361923, 36.364330, 51.091572>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.251505, 36.981560, 51.205647> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.041512, 36.913906, 50.871990>,  <27.915516, 36.873314, 50.671799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.041512, 36.913906, 50.871990>,  <28.251505, 36.981560, 51.205647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.041512, 36.913906, 50.871990> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625182, 0.741656, 0.243090,
		0.577529, 0.649107, -0.495097,
		-0.524983, -0.169134, -0.834138,
		27.884016, 36.863167, 50.621750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.213696, 37.578564, 50.896038>,  <28.251505, 36.981560, 51.205647>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.213696, 37.578564, 50.896038> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.901388, 37.346512, 50.803215>,  <27.714003, 37.207283, 50.747520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.901388, 37.346512, 50.803215>,  <28.213696, 37.578564, 50.896038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.901388, 37.346512, 50.803215> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623093, 0.695333, 0.358142,
		-0.046409, 0.424222, -0.904368,
		-0.780769, -0.580127, -0.232061,
		27.667158, 37.172474, 50.733597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.659050, 38.019947, 50.725624>,  <28.213696, 37.578564, 50.896038>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.659050, 38.019947, 50.725624> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.456802, 37.681591, 50.793533>,  <27.335453, 37.478577, 50.834278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.456802, 37.681591, 50.793533>,  <27.659050, 38.019947, 50.725624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.456802, 37.681591, 50.793533> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737530, 0.525883, 0.423672,
		-0.447660, 0.089003, -0.889763,
		-0.505619, -0.845888, 0.169774,
		27.305117, 37.427826, 50.844467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.977976, 38.296257, 50.783508>,  <27.659050, 38.019947, 50.725624>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.977976, 38.296257, 50.783508> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.889435, 37.929379, 50.916027>,  <26.836309, 37.709251, 50.995541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.889435, 37.929379, 50.916027>,  <26.977976, 38.296257, 50.783508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.889435, 37.929379, 50.916027> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789570, 0.367949, 0.491114,
		-0.572347, -0.152874, -0.805635,
		-0.221355, -0.917193, 0.331299,
		26.823029, 37.654221, 51.015415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.270702, 38.167931, 50.576344>,  <26.977976, 38.296257, 50.783508>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.270702, 38.167931, 50.576344> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.379429, 37.937023, 50.884338>,  <26.444664, 37.798477, 51.069134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.379429, 37.937023, 50.884338>,  <26.270702, 38.167931, 50.576344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.379429, 37.937023, 50.884338> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794209, 0.317277, 0.518236,
		-0.543460, -0.752391, -0.372234,
		0.271815, -0.577272, 0.769983,
		26.460974, 37.763840, 51.115334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.654634, 37.978249, 50.834919>,  <26.270702, 38.167931, 50.576344>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.654634, 37.978249, 50.834919> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.944841, 37.992756, 51.109818>,  <26.118965, 38.001461, 51.274757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.944841, 37.992756, 51.109818>,  <25.654634, 37.978249, 50.834919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.944841, 37.992756, 51.109818> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630985, 0.433715, 0.643234,
		-0.274739, -0.900320, 0.337555,
		0.725518, 0.036271, 0.687246,
		26.162497, 38.003635, 51.315990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<32.776989, 39.248711, 57.155655> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.568642, 39.186222, 56.819965>,  <32.443634, 39.148727, 56.618553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.568642, 39.186222, 56.819965>,  <32.776989, 39.248711, 57.155655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.568642, 39.186222, 56.819965> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490446, -0.859423, -0.144415,
		-0.698684, -0.486813, 0.524265,
		-0.520868, -0.156223, -0.839221,
		32.412380, 39.139355, 56.568199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.774792, 38.539188, 57.108757>,  <32.776989, 39.248711, 57.155655>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.774792, 38.539188, 57.108757> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.653797, 38.641270, 56.741417>,  <32.581200, 38.702518, 56.521011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.653797, 38.641270, 56.741417>,  <32.774792, 38.539188, 57.108757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.653797, 38.641270, 56.741417> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427124, -0.825044, -0.369955,
		-0.852096, -0.504158, 0.140562,
		-0.302485, 0.255200, -0.918355,
		32.563049, 38.717831, 56.465912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.451351, 37.892406, 56.872036>,  <32.774792, 38.539188, 57.108757>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.451351, 37.892406, 56.872036> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.581402, 38.151611, 56.596539>,  <32.659431, 38.307137, 56.431240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.581402, 38.151611, 56.596539>,  <32.451351, 37.892406, 56.872036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.581402, 38.151611, 56.596539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564919, -0.717170, -0.408084,
		-0.758392, -0.256407, -0.599247,
		0.325126, 0.648014, -0.688746,
		32.678940, 38.346016, 56.389915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.359539, 37.596134, 56.267624>,  <32.451351, 37.892406, 56.872036>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.359539, 37.596134, 56.267624> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.641590, 37.863735, 56.173622>,  <32.810822, 38.024296, 56.117222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.641590, 37.863735, 56.173622>,  <32.359539, 37.596134, 56.267624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.641590, 37.863735, 56.173622> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486924, -0.697774, -0.525372,
		-0.515455, 0.256026, -0.817775,
		0.705132, 0.669000, -0.235006,
		32.853130, 38.064434, 56.103119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.566509, 37.481529, 55.598793>,  <32.359539, 37.596134, 56.267624>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.566509, 37.481529, 55.598793> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.864265, 37.720093, 55.718914>,  <33.042919, 37.863232, 55.790985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.864265, 37.720093, 55.718914>,  <32.566509, 37.481529, 55.598793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.864265, 37.720093, 55.718914> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653801, -0.559554, -0.509356,
		-0.135751, 0.575495, -0.806459,
		0.744390, 0.596410, 0.300299,
		33.087582, 37.899017, 55.809002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.959431, 37.618572, 54.966305>,  <32.566509, 37.481529, 55.598793>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.959431, 37.618572, 54.966305> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.211483, 37.674618, 55.271801>,  <33.362713, 37.708244, 55.455097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.211483, 37.674618, 55.271801>,  <32.959431, 37.618572, 54.966305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.211483, 37.674618, 55.271801> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718809, -0.477266, -0.505500,
		0.293679, 0.867516, -0.401458,
		0.630132, 0.140116, 0.763741,
		33.400524, 37.716652, 55.500923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.524479, 37.923153, 54.650608>,  <32.959431, 37.618572, 54.966305>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.524479, 37.923153, 54.650608> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.673794, 37.783100, 54.994251>,  <33.763382, 37.699070, 55.200436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.673794, 37.783100, 54.994251>,  <33.524479, 37.923153, 54.650608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.673794, 37.783100, 54.994251> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615699, -0.599204, -0.511733,
		0.693952, 0.719976, -0.008104,
		0.373291, -0.350128, 0.859107,
		33.785782, 37.678062, 55.251984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.239948, 38.004456, 54.640972>,  <33.524479, 37.923153, 54.650608>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.239948, 38.004456, 54.640972> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.149658, 37.726097, 54.913673>,  <34.095486, 37.559082, 55.077293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.149658, 37.726097, 54.913673>,  <34.239948, 38.004456, 54.640972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.149658, 37.726097, 54.913673> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614640, -0.644675, -0.454546,
		0.755822, 0.316430, 0.573241,
		-0.225722, -0.695893, 0.681750,
		34.081944, 37.517330, 55.118198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.805447, 37.584251, 54.594917>,  <34.239948, 38.004456, 54.640972>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.805447, 37.584251, 54.594917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.626686, 37.346733, 54.862553>,  <34.519428, 37.204220, 55.023132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.626686, 37.346733, 54.862553>,  <34.805447, 37.584251, 54.594917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.626686, 37.346733, 54.862553> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511615, -0.783196, -0.353346,
		0.733844, 0.184404, 0.653811,
		-0.446904, -0.593800, 0.669088,
		34.492615, 37.168594, 55.063278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.355354, 37.069267, 54.870686>,  <34.805447, 37.584251, 54.594917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.355354, 37.069267, 54.870686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.985081, 36.926250, 54.920120>,  <34.762917, 36.840439, 54.949783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.985081, 36.926250, 54.920120>,  <35.355354, 37.069267, 54.870686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.985081, 36.926250, 54.920120> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303048, -0.896405, -0.323449,
		0.226433, -0.261958, 0.938140,
		-0.925683, -0.357541, 0.123590,
		34.707375, 36.818989, 54.957199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.522541, 36.454540, 55.163292>,  <35.355354, 37.069267, 54.870686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.522541, 36.454540, 55.163292> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.139500, 36.410126, 55.056965>,  <34.909676, 36.383476, 54.993168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.139500, 36.410126, 55.056965>,  <35.522541, 36.454540, 55.163292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.139500, 36.410126, 55.056965> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188786, -0.938861, -0.287924,
		-0.217593, -0.325900, 0.920023,
		-0.957608, -0.111038, -0.265815,
		34.852219, 36.376816, 54.977219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.253094, 35.784206, 55.488117>,  <35.522541, 36.454540, 55.163292>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.253094, 35.784206, 55.488117> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.075817, 35.898144, 55.148132>,  <34.969452, 35.966507, 54.944141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.075817, 35.898144, 55.148132>,  <35.253094, 35.784206, 55.488117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.075817, 35.898144, 55.148132> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441987, -0.755473, -0.483641,
		-0.779889, -0.590021, 0.208922,
		-0.443193, 0.284845, -0.849967,
		34.942860, 35.983597, 54.893143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.330914, 35.162167, 55.192356>,  <35.253094, 35.784206, 55.488117>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.330914, 35.162167, 55.192356> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.234673, 35.404530, 54.889042>,  <35.176929, 35.549946, 54.707054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.234673, 35.404530, 54.889042>,  <35.330914, 35.162167, 55.192356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.234673, 35.404530, 54.889042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460626, -0.616379, -0.638671,
		-0.854363, -0.502948, -0.130796,
		-0.240598, 0.605905, -0.758282,
		35.162495, 35.586300, 54.661556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.164963, 34.665192, 54.635612>,  <35.330914, 35.162167, 55.192356>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.164963, 34.665192, 54.635612> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.206440, 35.020641, 54.456905>,  <35.231327, 35.233910, 54.349682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.206440, 35.020641, 54.456905>,  <35.164963, 34.665192, 54.635612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.206440, 35.020641, 54.456905> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578185, -0.419348, -0.699892,
		-0.809289, -0.185737, -0.557272,
		0.103695, 0.888622, -0.446764,
		35.237549, 35.287228, 54.322876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.494846, 34.341873, 54.449032>,  <35.164963, 34.665192, 54.635612>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.494846, 34.341873, 54.449032> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.414795, 34.041939, 54.701286>,  <34.366764, 33.861980, 54.852638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.414795, 34.041939, 54.701286>,  <34.494846, 34.341873, 54.449032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.414795, 34.041939, 54.701286> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473190, 0.637583, 0.607930,
		-0.857928, -0.176748, -0.482410,
		-0.200126, -0.749832, 0.630636,
		34.354755, 33.816990, 54.890476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.821075, 34.153137, 54.510380>,  <34.494846, 34.341873, 54.449032>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.821075, 34.153137, 54.510380> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.966640, 34.049816, 54.868340>,  <34.053982, 33.987823, 55.083115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.966640, 34.049816, 54.868340>,  <33.821075, 34.153137, 54.510380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.966640, 34.049816, 54.868340> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768364, 0.459817, 0.445180,
		-0.526482, -0.849616, -0.031138,
		0.363914, -0.258304, 0.894900,
		34.075813, 33.972324, 55.136810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.295761, 33.830105, 54.844856>,  <33.821075, 34.153137, 54.510380>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.295761, 33.830105, 54.844856> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.539989, 33.920670, 55.148418>,  <33.686527, 33.975010, 55.330555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.539989, 33.920670, 55.148418>,  <33.295761, 33.830105, 54.844856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.539989, 33.920670, 55.148418> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777404, 0.354241, 0.519765,
		-0.151154, -0.907331, 0.392304,
		0.610569, 0.226415, 0.758908,
		33.723160, 33.988594, 55.376091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.015835, 33.441875, 55.407299>,  <33.295761, 33.830105, 54.844856>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.015835, 33.441875, 55.407299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.244678, 33.733116, 55.558323>,  <33.381985, 33.907860, 55.648937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.244678, 33.733116, 55.558323>,  <33.015835, 33.441875, 55.407299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.244678, 33.733116, 55.558323> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687371, 0.174516, 0.705028,
		0.447446, -0.662877, 0.600322,
		0.572113, 0.728106, 0.377556,
		33.416313, 33.951550, 55.671589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.714859, 33.474239, 56.059265>,  <33.015835, 33.441875, 55.407299>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.714859, 33.474239, 56.059265> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.925182, 33.814480, 56.058552>,  <33.051376, 34.018623, 56.058125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.925182, 33.814480, 56.058552>,  <32.714859, 33.474239, 56.059265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.925182, 33.814480, 56.058552> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671208, 0.416201, 0.613398,
		0.522502, -0.321328, 0.789772,
		0.525806, 0.850603, -0.001788,
		33.082924, 34.069660, 56.058014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.687767, 33.595348, 56.675426>,  <32.714859, 33.474239, 56.059265>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.687767, 33.595348, 56.675426> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.810875, 33.936813, 56.507359>,  <32.884739, 34.141693, 56.406517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.810875, 33.936813, 56.507359>,  <32.687767, 33.595348, 56.675426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.810875, 33.936813, 56.507359> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667660, 0.508394, 0.543844,
		0.677870, 0.113153, 0.726422,
		0.307770, 0.853658, -0.420173,
		32.903206, 34.192909, 56.381306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.731647, 34.033615, 57.269211>,  <32.687767, 33.595348, 56.675426>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.731647, 34.033615, 57.269211> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.725105, 34.272652, 56.948555>,  <32.721180, 34.416073, 56.756161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.725105, 34.272652, 56.948555>,  <32.731647, 34.033615, 57.269211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.725105, 34.272652, 56.948555> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414273, 0.725638, 0.549388,
		0.910006, 0.341081, 0.235697,
		-0.016355, 0.597589, -0.801635,
		32.720200, 34.451927, 56.708065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.863079, 34.701744, 57.499691>,  <32.731647, 34.033615, 57.269211>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.863079, 34.701744, 57.499691> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.666409, 34.763638, 57.156921>,  <32.548409, 34.800774, 56.951260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.666409, 34.763638, 57.156921>,  <32.863079, 34.701744, 57.499691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.666409, 34.763638, 57.156921> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580486, 0.675285, 0.455002,
		0.649072, 0.721142, -0.242196,
		-0.491673, 0.154738, -0.856921,
		32.518906, 34.810059, 56.899845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.784325, 35.477535, 57.452663>,  <32.863079, 34.701744, 57.499691>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.784325, 35.477535, 57.452663> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.505352, 35.336521, 57.203083>,  <32.337967, 35.251915, 57.053337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.505352, 35.336521, 57.203083>,  <32.784325, 35.477535, 57.452663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.505352, 35.336521, 57.203083> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657264, 0.661670, 0.360827,
		0.285644, 0.661750, -0.693177,
		-0.697432, -0.352532, -0.623947,
		32.296124, 35.230762, 57.015900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.344208, 36.052673, 57.274605>,  <32.784325, 35.477535, 57.452663>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.344208, 36.052673, 57.274605> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.131004, 35.757698, 57.108669>,  <32.003082, 35.580711, 57.009109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.131004, 35.757698, 57.108669>,  <32.344208, 36.052673, 57.274605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.131004, 35.757698, 57.108669> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802737, 0.595696, -0.027551,
		0.267433, 0.318318, -0.909480,
		-0.533004, -0.737441, -0.414834,
		31.971104, 35.536465, 56.984219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.924728, 36.319580, 56.648705>,  <32.344208, 36.052673, 57.274605>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.924728, 36.319580, 56.648705> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.729805, 36.005833, 56.802223>,  <31.612852, 35.817585, 56.894333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.729805, 36.005833, 56.802223>,  <31.924728, 36.319580, 56.648705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.729805, 36.005833, 56.802223> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834104, 0.548192, 0.061285,
		-0.258463, -0.290259, -0.921383,
		-0.487306, -0.784369, 0.383794,
		31.583612, 35.770523, 56.917362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.285810, 36.271568, 56.344173>,  <31.924728, 36.319580, 56.648705>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.285810, 36.271568, 56.344173> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.233475, 36.084206, 56.693680>,  <31.202072, 35.971786, 56.903385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.233475, 36.084206, 56.693680>,  <31.285810, 36.271568, 56.344173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.233475, 36.084206, 56.693680> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797306, 0.573528, 0.188067,
		-0.589224, -0.672055, -0.448507,
		-0.130840, -0.468410, 0.873769,
		31.194223, 35.943684, 56.955811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.615639, 36.227329, 56.442654>,  <31.285810, 36.271568, 56.344173>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.615639, 36.227329, 56.442654> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.733232, 36.172821, 56.821072>,  <30.803789, 36.140118, 57.048122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.733232, 36.172821, 56.821072>,  <30.615639, 36.227329, 56.442654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.733232, 36.172821, 56.821072> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776379, 0.543276, 0.319511,
		-0.557503, -0.828422, 0.053919,
		0.293982, -0.136267, 0.946047,
		30.821426, 36.131943, 57.104885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.957302, 36.197029, 56.749790>,  <30.615639, 36.227329, 56.442654>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.957302, 36.197029, 56.749790> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.225731, 36.267723, 57.037796>,  <30.386789, 36.310139, 57.210602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.225731, 36.267723, 57.037796>,  <29.957302, 36.197029, 56.749790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.225731, 36.267723, 57.037796> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615982, 0.673369, 0.408828,
		-0.412585, -0.717872, 0.560744,
		0.671074, 0.176733, 0.720018,
		30.427053, 36.320744, 57.253799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.486275, 35.741539, 56.779076>,  <29.957302, 36.197029, 56.749790>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.486275, 35.741539, 56.779076> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.272734, 35.637844, 56.457130>,  <29.144609, 35.575626, 56.263966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.272734, 35.637844, 56.457130>,  <29.486275, 35.741539, 56.779076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.272734, 35.637844, 56.457130> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620832, -0.766395, -0.164943,
		-0.574081, -0.587738, 0.570082,
		-0.533852, -0.259235, -0.804860,
		29.112577, 35.560074, 56.215672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.577604, 34.986401, 56.752884>,  <29.486275, 35.741539, 56.779076>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.577604, 34.986401, 56.752884> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.443089, 35.075607, 56.386894>,  <29.362379, 35.129131, 56.167301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.443089, 35.075607, 56.386894>,  <29.577604, 34.986401, 56.752884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.443089, 35.075607, 56.386894> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313669, -0.889560, -0.332105,
		-0.887987, -0.398682, 0.229198,
		-0.336290, 0.223012, -0.914972,
		29.342201, 35.142509, 56.112404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.370489, 34.261738, 56.487080>,  <29.577604, 34.986401, 56.752884>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.370489, 34.261738, 56.487080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.371334, 34.496704, 56.163368>,  <29.371841, 34.637684, 55.969143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.371334, 34.496704, 56.163368>,  <29.370489, 34.261738, 56.487080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.371334, 34.496704, 56.163368> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332534, -0.763639, -0.553423,
		-0.943089, -0.267944, -0.196950,
		0.002113, 0.587420, -0.809279,
		29.371967, 34.672932, 55.920586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.102106, 33.821598, 56.081413>,  <29.370489, 34.261738, 56.487080>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.102106, 33.821598, 56.081413> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.285603, 34.088711, 55.846939>,  <29.395700, 34.248978, 55.706253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.285603, 34.088711, 55.846939>,  <29.102106, 33.821598, 56.081413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.285603, 34.088711, 55.846939> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134177, -0.704195, -0.697213,
		-0.878380, 0.241188, -0.412646,
		0.458743, 0.667785, -0.586189,
		29.423225, 34.289047, 55.671082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.667648, 33.905369, 55.475952>,  <29.102106, 33.821598, 56.081413>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.667648, 33.905369, 55.475952> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.041084, 34.016930, 55.385948>,  <29.265146, 34.083866, 55.331947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.041084, 34.016930, 55.385948>,  <28.667648, 33.905369, 55.475952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.041084, 34.016930, 55.385948> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022015, -0.671354, -0.740810,
		-0.357672, 0.686657, -0.632908,
		0.933588, 0.278900, -0.225008,
		29.321161, 34.100601, 55.318447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.643948, 34.083858, 54.745327>,  <28.667648, 33.905369, 55.475952>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.643948, 34.083858, 54.745327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.020145, 33.992260, 54.845749>,  <29.245865, 33.937302, 54.906002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.020145, 33.992260, 54.845749>,  <28.643948, 34.083858, 54.745327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.020145, 33.992260, 54.845749> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051350, -0.634564, -0.771162,
		0.335906, 0.738166, -0.585045,
		0.940495, -0.228996, 0.251059,
		29.302294, 33.923561, 54.921066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.854221, 33.968822, 54.145679>,  <28.643948, 34.083858, 54.745327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.854221, 33.968822, 54.145679> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.164661, 33.824257, 54.352386>,  <29.350925, 33.737518, 54.476410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.164661, 33.824257, 54.352386>,  <28.854221, 33.968822, 54.145679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.164661, 33.824257, 54.352386> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161743, -0.677976, -0.717069,
		0.609514, 0.640101, -0.467722,
		0.776101, -0.361412, 0.516768,
		29.397491, 33.715832, 54.507416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.478262, 34.022835, 53.641281>,  <28.854221, 33.968822, 54.145679>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.478262, 34.022835, 53.641281> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.540192, 33.736435, 53.913567>,  <29.577351, 33.564594, 54.076939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.540192, 33.736435, 53.913567>,  <29.478262, 34.022835, 53.641281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.540192, 33.736435, 53.913567> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317239, -0.616506, -0.720611,
		0.935622, 0.327520, 0.131691,
		0.154826, -0.715997, 0.680718,
		29.586639, 33.521637, 54.117783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.209301, 33.852097, 53.678921>,  <29.478262, 34.022835, 53.641281>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.209301, 33.852097, 53.678921> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.016394, 33.524921, 53.804394>,  <29.900648, 33.328617, 53.879677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.016394, 33.524921, 53.804394>,  <30.209301, 33.852097, 53.678921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.016394, 33.524921, 53.804394> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578412, -0.566240, -0.587206,
		0.657917, -0.101752, 0.746184,
		-0.482269, -0.817935, 0.313684,
		29.871714, 33.279541, 53.898499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.679499, 33.366299, 53.614040>,  <30.209301, 33.852097, 53.678921>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.679499, 33.366299, 53.614040> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.348291, 33.146214, 53.657211>,  <30.149567, 33.014164, 53.683113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.348291, 33.146214, 53.657211>,  <30.679499, 33.366299, 53.614040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.348291, 33.146214, 53.657211> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414343, -0.730134, -0.543345,
		0.377760, -0.405180, 0.832542,
		-0.828020, -0.550212, 0.107931,
		30.099886, 32.981152, 53.689590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.865995, 32.708961, 53.693890>,  <30.679499, 33.366299, 53.614040>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.865995, 32.708961, 53.693890> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.484407, 32.643452, 53.593399>,  <30.255455, 32.604145, 53.533104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.484407, 32.643452, 53.593399>,  <30.865995, 32.708961, 53.693890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.484407, 32.643452, 53.593399> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259856, -0.869603, -0.419839,
		-0.149711, -0.465798, 0.872134,
		-0.953971, -0.163775, -0.251230,
		30.198215, 32.594318, 53.518028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.725742, 32.084827, 53.928314>,  <30.865995, 32.708961, 53.693890>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.725742, 32.084827, 53.928314> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.470367, 32.147449, 53.626881>,  <30.317142, 32.185020, 53.446022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.470367, 32.147449, 53.626881>,  <30.725742, 32.084827, 53.928314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.470367, 32.147449, 53.626881> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281919, -0.863486, -0.418226,
		-0.716184, -0.479461, 0.507146,
		-0.638437, 0.156552, -0.753584,
		30.278837, 32.194416, 53.400806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.603575, 31.460939, 53.740265>,  <30.725742, 32.084827, 53.928314>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.603575, 31.460939, 53.740265> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.429089, 31.653790, 53.436352>,  <30.324398, 31.769501, 53.254005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.429089, 31.653790, 53.436352>,  <30.603575, 31.460939, 53.740265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.429089, 31.653790, 53.436352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256224, -0.742849, -0.618486,
		-0.862593, -0.464467, 0.200508,
		-0.436213, 0.482127, -0.759784,
		30.298225, 31.798428, 53.208416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.305294, 30.908388, 53.321232>,  <30.603575, 31.460939, 53.740265>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.305294, 30.908388, 53.321232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.351362, 31.251949, 53.121624>,  <30.379004, 31.458086, 53.001858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.351362, 31.251949, 53.121624>,  <30.305294, 30.908388, 53.321232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.351362, 31.251949, 53.121624> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361734, -0.504132, -0.784219,
		-0.925140, -0.090193, -0.368756,
		0.115170, 0.858904, -0.499018,
		30.385914, 31.509621, 52.971920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<25.245058, 37.447723, 52.036972> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.587437, 37.648376, 51.986824>,  <25.792864, 37.768768, 51.956734>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.587437, 37.648376, 51.986824>,  <25.245058, 37.447723, 52.036972>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.587437, 37.648376, 51.986824> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162339, 0.490919, 0.855946,
		0.490919, -0.712292, 0.501635,
		-0.855946, -0.501635, 0.125369,
		25.844221, 37.798866, 51.949215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.645741, 37.399254, 52.741409>,  <25.245058, 37.447723, 52.036972>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.645741, 37.399254, 52.741409> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.734640, 37.718407, 52.517269>,  <25.787979, 37.909897, 52.382786>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.734640, 37.718407, 52.517269>,  <25.645741, 37.399254, 52.741409>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.734640, 37.718407, 52.517269> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000524, 0.574818, 0.818281,
		0.974990, -0.181568, 0.128170,
		0.222248, 0.797883, -0.560347,
		25.801315, 37.957771, 52.349167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.842299, 37.890762, 53.213078>,  <25.645741, 37.399254, 52.741409>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.842299, 37.890762, 53.213078> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.824570, 38.134800, 52.896645>,  <25.813932, 38.281223, 52.706783>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.824570, 38.134800, 52.896645>,  <25.842299, 37.890762, 53.213078>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.824570, 38.134800, 52.896645> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032894, 0.790543, 0.611523,
		0.998476, 0.053126, -0.014970,
		-0.044322, 0.610098, -0.791086,
		25.811274, 38.317829, 52.659321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.364660, 38.404919, 53.194149>,  <25.842299, 37.890762, 53.213078>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.364660, 38.404919, 53.194149> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.066765, 38.561977, 52.978298>,  <25.888027, 38.656212, 52.848789>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.066765, 38.561977, 52.978298>,  <26.364660, 38.404919, 53.194149>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.066765, 38.561977, 52.978298> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022448, 0.793401, 0.608285,
		0.666979, 0.465127, -0.582062,
		-0.744738, 0.392648, -0.539623,
		25.843344, 38.679771, 52.816410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.379555, 39.073875, 53.349678>,  <26.364660, 38.404919, 53.194149>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.379555, 39.073875, 53.349678> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.039488, 39.109207, 53.142059>,  <25.835447, 39.130405, 53.017487>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.039488, 39.109207, 53.142059>,  <26.379555, 39.073875, 53.349678>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.039488, 39.109207, 53.142059> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232130, 0.821965, 0.520086,
		0.472579, 0.562648, -0.678304,
		-0.850167, 0.088327, -0.519051,
		25.784437, 39.135704, 52.986343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.270767, 39.830082, 53.078007>,  <26.379555, 39.073875, 53.349678>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.270767, 39.830082, 53.078007> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.916065, 39.645805, 53.093105>,  <25.703243, 39.535240, 53.102165>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.916065, 39.645805, 53.093105>,  <26.270767, 39.830082, 53.078007>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.916065, 39.645805, 53.093105> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330840, 0.689591, 0.644212,
		-0.322812, 0.558772, -0.763915,
		-0.886756, -0.460693, 0.037744,
		25.650038, 39.507599, 53.104427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.774265, 40.346951, 53.194641>,  <26.270767, 39.830082, 53.078007>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.774265, 40.346951, 53.194641> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.532913, 40.038830, 53.277168>,  <25.388102, 39.853958, 53.326687>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.532913, 40.038830, 53.277168>,  <25.774265, 40.346951, 53.194641>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.532913, 40.038830, 53.277168> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411811, 0.522538, 0.746569,
		-0.682893, 0.365500, -0.632508,
		-0.603381, -0.770301, 0.206320,
		25.351898, 39.807739, 53.339066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.155521, 40.601959, 53.214569>,  <25.774265, 40.346951, 53.194641>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.155521, 40.601959, 53.214569> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.125566, 40.278492, 53.447960>,  <25.107594, 40.084412, 53.587994>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.125566, 40.278492, 53.447960>,  <25.155521, 40.601959, 53.214569>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.125566, 40.278492, 53.447960> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313681, 0.574522, 0.755995,
		-0.946571, -0.126412, -0.296688,
		-0.074887, -0.808668, 0.583479,
		25.103100, 40.035892, 53.623005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.443783, 40.620701, 53.446236>,  <25.155521, 40.601959, 53.214569>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.443783, 40.620701, 53.446236> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.670000, 40.392822, 53.684765>,  <24.805731, 40.256096, 53.827885>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.670000, 40.392822, 53.684765>,  <24.443783, 40.620701, 53.446236>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.670000, 40.392822, 53.684765> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353726, 0.485625, 0.799404,
		-0.745009, -0.663034, 0.073125,
		0.565543, -0.569697, 0.596327,
		24.839663, 40.221912, 53.863663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.005926, 40.348335, 53.965946>,  <24.443783, 40.620701, 53.446236>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.005926, 40.348335, 53.965946> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.379187, 40.348408, 54.109737>,  <24.603144, 40.348450, 54.196011>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.379187, 40.348408, 54.109737>,  <24.005926, 40.348335, 53.965946>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.379187, 40.348408, 54.109737> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304035, 0.533952, 0.788960,
		-0.191802, -0.845515, 0.498313,
		0.933153, 0.000181, 0.359479,
		24.659132, 40.348461, 54.217583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.890615, 40.195656, 54.650848>,  <24.005926, 40.348335, 53.965946>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.890615, 40.195656, 54.650848> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.267128, 40.330460, 54.659000>,  <24.493036, 40.411343, 54.663891>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.267128, 40.330460, 54.659000>,  <23.890615, 40.195656, 54.650848>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.267128, 40.330460, 54.659000> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208259, 0.532037, 0.820710,
		0.265741, -0.776763, 0.570982,
		0.941281, 0.337009, 0.020384,
		24.549513, 40.431564, 54.665115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.095758, 40.105587, 55.325108>,  <23.890615, 40.195656, 54.650848>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.095758, 40.105587, 55.325108> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.364079, 40.366142, 55.183277>,  <24.525070, 40.522476, 55.098179>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.364079, 40.366142, 55.183277>,  <24.095758, 40.105587, 55.325108>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.364079, 40.366142, 55.183277> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006618, 0.483333, 0.875411,
		0.741610, -0.584878, 0.328530,
		0.670798, 0.651388, -0.354574,
		24.565317, 40.561558, 55.076904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.647461, 40.196739, 55.819038>,  <24.095758, 40.105587, 55.325108>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.647461, 40.196739, 55.819038> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.625116, 40.536991, 55.609921>,  <24.611710, 40.741142, 55.484451>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.625116, 40.536991, 55.609921>,  <24.647461, 40.196739, 55.819038>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.625116, 40.536991, 55.609921> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170409, 0.524052, 0.834464,
		0.983789, -0.042475, -0.174229,
		-0.055862, 0.850626, -0.522795,
		24.608358, 40.792179, 55.453083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.324688, 40.499485, 55.691296>,  <24.647461, 40.196739, 55.819038>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.324688, 40.499485, 55.691296> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.083160, 40.816879, 55.660881>,  <24.938244, 41.007317, 55.642632>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.083160, 40.816879, 55.660881>,  <25.324688, 40.499485, 55.691296>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.083160, 40.816879, 55.660881> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460285, 0.424954, 0.779456,
		0.650800, 0.435652, -0.621826,
		-0.603819, 0.793487, -0.076036,
		24.902016, 41.054924, 55.638069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.313738, 39.757519, 55.691437>,  <25.324688, 40.499485, 55.691296>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.313738, 39.757519, 55.691437> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.443563, 39.758907, 56.069778>,  <25.521458, 39.759739, 56.296783>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.443563, 39.758907, 56.069778>,  <25.313738, 39.757519, 55.691437>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.443563, 39.758907, 56.069778> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302936, -0.947700, -0.100474,
		0.896040, 0.319145, -0.308639,
		0.324563, 0.003469, 0.945858,
		25.540932, 39.759949, 56.353535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.142225, 39.696175, 55.919991>,  <25.313738, 39.757519, 55.691437>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.142225, 39.696175, 55.919991> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.866961, 39.539562, 56.164330>,  <25.701801, 39.445595, 56.310932>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.866961, 39.539562, 56.164330>,  <26.142225, 39.696175, 55.919991>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.866961, 39.539562, 56.164330> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468134, -0.882819, -0.038478,
		0.554334, 0.259480, 0.790812,
		-0.688160, -0.391536, 0.610848,
		25.660513, 39.422100, 56.347584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.520544, 39.216038, 56.390152>,  <26.142225, 39.696175, 55.919991>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.520544, 39.216038, 56.390152> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.143791, 39.109642, 56.472229>,  <25.917740, 39.045807, 56.521477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.143791, 39.109642, 56.472229>,  <26.520544, 39.216038, 56.390152>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.143791, 39.109642, 56.472229> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279531, -0.959321, 0.039572,
		0.186322, 0.094631, 0.977921,
		-0.941884, -0.265986, 0.205195,
		25.861225, 39.029846, 56.533787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.607908, 38.807190, 57.039555>,  <26.520544, 39.216038, 56.390152>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.607908, 38.807190, 57.039555> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.273544, 38.719582, 56.838245>,  <26.072926, 38.667015, 56.717461>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.273544, 38.719582, 56.838245>,  <26.607908, 38.807190, 57.039555>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.273544, 38.719582, 56.838245> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182763, -0.975676, 0.121048,
		-0.517542, 0.009206, 0.855608,
		-0.835911, -0.219021, -0.503271,
		26.022772, 38.653873, 56.687263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.226744, 38.323353, 57.496937>,  <26.607908, 38.807190, 57.039555>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.226744, 38.323353, 57.496937> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.090561, 38.269184, 57.124756>,  <26.008852, 38.236683, 56.901447>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.090561, 38.269184, 57.124756>,  <26.226744, 38.323353, 57.496937>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.090561, 38.269184, 57.124756> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372859, -0.927887, -0.001383,
		-0.863171, -0.347400, 0.366399,
		-0.340457, -0.135422, -0.930457,
		25.988424, 38.228558, 56.845619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.041582, 37.607124, 57.518471>,  <26.226744, 38.323353, 57.496937>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.041582, 37.607124, 57.518471> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.111124, 37.707897, 57.137672>,  <26.152849, 37.768360, 56.909191>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.111124, 37.707897, 57.137672>,  <26.041582, 37.607124, 57.518471>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.111124, 37.707897, 57.137672> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503087, -0.853774, -0.134066,
		-0.846569, -0.455631, -0.275176,
		0.173854, 0.251933, -0.952000,
		26.163280, 37.783478, 56.852074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.913578, 37.035675, 57.241375>,  <26.041582, 37.607124, 57.518471>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.913578, 37.035675, 57.241375> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.153250, 37.226421, 56.984135>,  <26.297052, 37.340870, 56.829788>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.153250, 37.226421, 56.984135>,  <25.913578, 37.035675, 57.241375>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.153250, 37.226421, 56.984135> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494344, -0.852213, -0.171340,
		-0.629768, -0.215251, -0.746365,
		0.599180, 0.476865, -0.643104,
		26.333004, 37.369480, 56.791203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.960079, 36.635983, 56.673538>,  <25.913578, 37.035675, 57.241375>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.960079, 36.635983, 56.673538> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.283655, 36.867840, 56.634296>,  <26.477800, 37.006954, 56.610752>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.283655, 36.867840, 56.634296>,  <25.960079, 36.635983, 56.673538>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.283655, 36.867840, 56.634296> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580493, -0.813951, -0.022630,
		-0.092967, -0.038641, -0.994919,
		0.808941, 0.579648, -0.098101,
		26.526337, 37.041733, 56.604866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.375477, 36.414497, 56.150124>,  <25.960079, 36.635983, 56.673538>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.375477, 36.414497, 56.150124> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.652790, 36.635181, 56.335583>,  <26.819178, 36.767593, 56.446857>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.652790, 36.635181, 56.335583>,  <26.375477, 36.414497, 56.150124>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.652790, 36.635181, 56.335583> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711998, -0.623844, -0.322301,
		0.111426, 0.553562, -0.825320,
		0.693284, 0.551714, 0.463647,
		26.860775, 36.800697, 56.474678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.961082, 36.415840, 55.622017>,  <26.375477, 36.414497, 56.150124>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.961082, 36.415840, 55.622017> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.133192, 36.534340, 55.963097>,  <27.236458, 36.605442, 56.167744>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.133192, 36.534340, 55.963097>,  <26.961082, 36.415840, 55.622017>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.133192, 36.534340, 55.963097> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841675, -0.473073, -0.260353,
		0.326259, 0.829720, -0.452902,
		0.430276, 0.296254, 0.852699,
		27.262276, 36.623215, 56.218906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.592583, 36.729382, 55.548359>,  <26.961082, 36.415840, 55.622017>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.592583, 36.729382, 55.548359> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.620195, 36.578735, 55.917877>,  <27.636763, 36.488350, 56.139587>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.620195, 36.578735, 55.917877>,  <27.592583, 36.729382, 55.548359>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.620195, 36.578735, 55.917877> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900128, -0.375734, -0.220442,
		0.430122, 0.846752, 0.313061,
		0.069032, -0.376611, 0.923796,
		27.640905, 36.465752, 56.195015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.275187, 36.697727, 55.651535>,  <27.592583, 36.729382, 55.548359>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.275187, 36.697727, 55.651535> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.192440, 36.507755, 55.993683>,  <28.142792, 36.393772, 56.198971>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.192440, 36.507755, 55.993683>,  <28.275187, 36.697727, 55.651535>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.192440, 36.507755, 55.993683> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857823, -0.508465, -0.074856,
		0.470475, 0.718267, 0.512588,
		-0.206867, -0.474928, 0.855365,
		28.130381, 36.365276, 56.250294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.805660, 36.797188, 56.083931>,  <28.275187, 36.697727, 55.651535>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.805660, 36.797188, 56.083931> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.649269, 36.452370, 56.212933>,  <28.555433, 36.245480, 56.290333>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.649269, 36.452370, 56.212933>,  <28.805660, 36.797188, 56.083931>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.649269, 36.452370, 56.212933> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882926, -0.450247, -0.133115,
		0.259957, 0.232699, 0.937162,
		-0.390979, -0.862049, 0.322501,
		28.531975, 36.193756, 56.309685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.267580, 36.439922, 56.621262>,  <28.805660, 36.797188, 56.083931>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.267580, 36.439922, 56.621262> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.037746, 36.165585, 56.442612>,  <28.899845, 36.000980, 56.335423>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.037746, 36.165585, 56.442612>,  <29.267580, 36.439922, 56.621262>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.037746, 36.165585, 56.442612> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794705, -0.598005, -0.104086,
		-0.195694, -0.414738, 0.888649,
		-0.574585, -0.685844, -0.446620,
		28.865372, 35.959831, 56.308624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.350492, 36.389702, 57.305801>,  <29.267580, 36.439922, 56.621262>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.350492, 36.389702, 57.305801> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.717237, 36.520630, 57.397217>,  <29.937284, 36.599186, 57.452065>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.717237, 36.520630, 57.397217>,  <29.350492, 36.389702, 57.305801>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.717237, 36.520630, 57.397217> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397718, 0.798373, 0.452129,
		-0.034464, -0.505432, 0.862178,
		0.916861, 0.327321, 0.228534,
		29.992296, 36.618828, 57.465778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.322353, 36.509785, 58.072163>,  <29.350492, 36.389702, 57.305801>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.322353, 36.509785, 58.072163> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.602175, 36.730892, 57.891022>,  <29.770067, 36.863556, 57.782337>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.602175, 36.730892, 57.891022>,  <29.322353, 36.509785, 58.072163>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.602175, 36.730892, 57.891022> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433800, 0.832103, 0.345575,
		0.567842, -0.045301, 0.821890,
		0.699552, 0.552768, -0.452852,
		29.812040, 36.896721, 57.755165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.642580, 36.798740, 58.662491>,  <29.322353, 36.509785, 58.072163>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.642580, 36.798740, 58.662491> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.742332, 37.042351, 58.361320>,  <29.802185, 37.188519, 58.180618>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.742332, 37.042351, 58.361320>,  <29.642580, 36.798740, 58.662491>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.742332, 37.042351, 58.361320> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230206, 0.792483, 0.564780,
		0.940645, 0.032482, 0.337833,
		0.249382, 0.609029, -0.752923,
		29.817146, 37.225060, 58.135445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.903660, 37.369759, 58.991241>,  <29.642580, 36.798740, 58.662491>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.903660, 37.369759, 58.991241> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.818411, 37.496689, 58.621620>,  <29.767262, 37.572849, 58.399845>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.818411, 37.496689, 58.621620>,  <29.903660, 37.369759, 58.991241>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.818411, 37.496689, 58.621620> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302034, 0.878061, 0.371194,
		0.929169, 0.358206, -0.091291,
		-0.213124, 0.317329, -0.924057,
		29.754475, 37.591888, 58.344402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.051765, 38.055901, 58.997925>,  <29.903660, 37.369759, 58.991241>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.051765, 38.055901, 58.997925> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.807541, 38.034607, 58.681854>,  <29.661007, 38.021832, 58.492210>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.807541, 38.034607, 58.681854>,  <30.051765, 38.055901, 58.997925>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.807541, 38.034607, 58.681854> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434952, 0.856337, 0.278394,
		0.661841, 0.513667, -0.545998,
		-0.610560, -0.053231, -0.790179,
		29.624372, 38.018639, 58.444801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.121145, 38.790802, 58.715153>,  <30.051765, 38.055901, 58.997925>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.121145, 38.790802, 58.715153> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.799314, 38.612556, 58.558136>,  <29.606216, 38.505608, 58.463924>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.799314, 38.612556, 58.558136>,  <30.121145, 38.790802, 58.715153>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.799314, 38.612556, 58.558136> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444880, 0.890142, -0.098637,
		0.393371, 0.095273, -0.914430,
		-0.804575, -0.445613, -0.392541,
		29.557941, 38.478874, 58.440372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.016939, 39.127178, 58.048328>,  <30.121145, 38.790802, 58.715153>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.016939, 39.127178, 58.048328> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.668180, 38.959251, 58.149162>,  <29.458925, 38.858494, 58.209663>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.668180, 38.959251, 58.149162>,  <30.016939, 39.127178, 58.048328>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.668180, 38.959251, 58.149162> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460715, 0.877714, -0.131757,
		-0.165947, -0.231019, -0.958693,
		-0.871897, -0.419819, 0.252088,
		29.406612, 38.833305, 58.224789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.516310, 39.527779, 57.622505>,  <30.016939, 39.127178, 58.048328>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.516310, 39.527779, 57.622505> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.300232, 39.357834, 57.913071>,  <29.170586, 39.255867, 58.087410>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.300232, 39.357834, 57.913071>,  <29.516310, 39.527779, 57.622505>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.300232, 39.357834, 57.913071> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682182, 0.726528, -0.082371,
		-0.492767, -0.540046, -0.682298,
		-0.540193, -0.424862, 0.726418,
		29.138174, 39.230373, 58.130997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.753895, 40.024311, 57.031281>,  <29.516310, 39.527779, 57.622505>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.753895, 40.024311, 57.031281> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.078558, 40.229244, 57.143509>,  <30.273355, 40.352203, 57.210846>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.078558, 40.229244, 57.143509>,  <29.753895, 40.024311, 57.031281>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.078558, 40.229244, 57.143509> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578776, -0.770263, -0.267793,
		0.078911, 0.379743, -0.921720,
		0.811660, 0.512337, 0.280569,
		30.322056, 40.382946, 57.227680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.180061, 40.012661, 56.468433>,  <29.753895, 40.024311, 57.031281>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.180061, 40.012661, 56.468433> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.429180, 40.086884, 56.772457>,  <30.578651, 40.131416, 56.954872>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.429180, 40.086884, 56.772457>,  <30.180061, 40.012661, 56.468433>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.429180, 40.086884, 56.772457> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697759, -0.571176, -0.432307,
		0.353913, 0.799580, -0.485199,
		0.622798, 0.185553, 0.760061,
		30.616020, 40.142551, 57.000477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.841616, 40.325283, 56.139404>,  <30.180061, 40.012661, 56.468433>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.841616, 40.325283, 56.139404> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.933840, 40.187126, 56.503284>,  <30.989174, 40.104233, 56.721611>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.933840, 40.187126, 56.503284>,  <30.841616, 40.325283, 56.139404>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.933840, 40.187126, 56.503284> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831740, -0.415261, -0.368467,
		0.505026, 0.841585, 0.191530,
		0.230561, -0.345388, 0.909697,
		31.003008, 40.083511, 56.776192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.463354, 40.563324, 56.364475>,  <30.841616, 40.325283, 56.139404>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.463354, 40.563324, 56.364475> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.424683, 40.230072, 56.582302>,  <31.401480, 40.030121, 56.712997>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.424683, 40.230072, 56.582302>,  <31.463354, 40.563324, 56.364475>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.424683, 40.230072, 56.582302> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941819, -0.253532, -0.220675,
		0.321915, 0.491549, 0.809166,
		-0.096676, -0.833127, 0.544566,
		31.395679, 39.980133, 56.745670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.160088, 40.375294, 56.519829>,  <31.463354, 40.563324, 56.364475>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.160088, 40.375294, 56.519829> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.976137, 40.036835, 56.627563>,  <31.865767, 39.833759, 56.692207>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.976137, 40.036835, 56.627563>,  <32.160088, 40.375294, 56.519829>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.976137, 40.036835, 56.627563> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835410, -0.515085, -0.191774,
		0.301003, 0.136818, 0.943757,
		-0.459877, -0.846149, 0.269342,
		31.838175, 39.782990, 56.708366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.673016, 39.970928, 56.877907>,  <32.160088, 40.375294, 56.519829>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.673016, 39.970928, 56.877907> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.386589, 39.730206, 56.736439>,  <32.214733, 39.585773, 56.651558>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.386589, 39.730206, 56.736439>,  <32.673016, 39.970928, 56.877907>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.386589, 39.730206, 56.736439> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691278, -0.681696, -0.239636,
		-0.096879, -0.416078, 0.904154,
		-0.716065, -0.601805, -0.353668,
		32.171768, 39.549664, 56.630337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<27.064398, 43.646927, 54.316174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.798090, 43.360390, 54.399693>,  <26.638306, 43.188465, 54.449802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.798090, 43.360390, 54.399693>,  <27.064398, 43.646927, 54.316174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.798090, 43.360390, 54.399693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429952, -0.597009, -0.677290,
		0.609830, -0.361146, 0.705465,
		-0.665770, -0.716348, 0.208798,
		26.598358, 43.145485, 54.462334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.385427, 43.130154, 54.560970>,  <27.064398, 43.646927, 54.316174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.385427, 43.130154, 54.560970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.045137, 42.961479, 54.435467>,  <26.840963, 42.860275, 54.360165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.045137, 42.961479, 54.435467>,  <27.385427, 43.130154, 54.560970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.045137, 42.961479, 54.435467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524608, -0.718048, -0.457377,
		-0.032423, -0.553702, 0.832083,
		-0.850726, -0.421688, -0.313758,
		26.789919, 42.834972, 54.341339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.450716, 42.433811, 54.714417>,  <27.385427, 43.130154, 54.560970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.450716, 42.433811, 54.714417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.173182, 42.470333, 54.428688>,  <27.006660, 42.492245, 54.257252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.173182, 42.470333, 54.428688>,  <27.450716, 42.433811, 54.714417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.173182, 42.470333, 54.428688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457692, -0.709905, -0.535306,
		-0.555975, -0.698355, 0.450769,
		-0.693836, 0.091304, -0.714321,
		26.965031, 42.497723, 54.214394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.453896, 41.852032, 54.480976>,  <27.450716, 42.433811, 54.714417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.453896, 41.852032, 54.480976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.300280, 42.054508, 54.172100>,  <27.208109, 42.175995, 53.986774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.300280, 42.054508, 54.172100>,  <27.453896, 41.852032, 54.480976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.300280, 42.054508, 54.172100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370591, -0.681496, -0.631051,
		-0.845680, -0.528516, 0.074131,
		-0.384041, 0.506195, -0.772191,
		27.185068, 42.206367, 53.940441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.191124, 41.339077, 54.117317>,  <27.453896, 41.852032, 54.480976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.191124, 41.339077, 54.117317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.244761, 41.644817, 53.865032>,  <27.276943, 41.828262, 53.713661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.244761, 41.644817, 53.865032>,  <27.191124, 41.339077, 54.117317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.244761, 41.644817, 53.865032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200828, -0.644211, -0.738011,
		-0.970406, -0.027702, -0.239886,
		0.134092, 0.764346, -0.630709,
		27.284988, 41.874123, 53.675819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.945370, 41.031384, 53.396553>,  <27.191124, 41.339077, 54.117317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.945370, 41.031384, 53.396553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.156513, 41.362297, 53.319649>,  <27.283199, 41.560844, 53.273506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.156513, 41.362297, 53.319649>,  <26.945370, 41.031384, 53.396553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.156513, 41.362297, 53.319649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556116, -0.507744, -0.657975,
		-0.641952, 0.240399, -0.728084,
		0.527857, 0.827287, -0.192258,
		27.314871, 41.610481, 53.261971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.771036, 41.234356, 52.676739>,  <26.945370, 41.031384, 53.396553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.771036, 41.234356, 52.676739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.126623, 41.378979, 52.789173>,  <27.339975, 41.465752, 52.856636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.126623, 41.378979, 52.789173>,  <26.771036, 41.234356, 52.676739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.126623, 41.378979, 52.789173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443893, -0.529259, -0.723080,
		-0.112663, 0.767570, -0.630986,
		0.888969, 0.361555, 0.281091,
		27.393314, 41.487446, 52.873501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.115631, 41.413059, 52.042305>,  <26.771036, 41.234356, 52.676739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.115631, 41.413059, 52.042305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.410839, 41.370182, 52.308788>,  <27.587963, 41.344456, 52.468678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.410839, 41.370182, 52.308788>,  <27.115631, 41.413059, 52.042305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.410839, 41.370182, 52.308788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519919, -0.539006, -0.662689,
		0.430129, 0.835453, -0.342065,
		0.738020, -0.107195, 0.666210,
		27.632246, 41.338024, 52.508652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.608433, 41.494823, 51.626476>,  <27.115631, 41.413059, 52.042305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.608433, 41.494823, 51.626476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.793190, 41.304970, 51.926178>,  <27.904045, 41.191059, 52.105999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.793190, 41.304970, 51.926178>,  <27.608433, 41.494823, 51.626476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.793190, 41.304970, 51.926178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523285, -0.536238, -0.662285,
		0.716120, 0.697977, 0.000684,
		0.461893, -0.474634, 0.749251,
		27.931757, 41.162579, 52.150955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.330620, 41.556595, 51.550800>,  <27.608433, 41.494823, 51.626476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.330620, 41.556595, 51.550800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.271332, 41.233891, 51.779594>,  <28.235758, 41.040268, 51.916870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.271332, 41.233891, 51.779594>,  <28.330620, 41.556595, 51.550800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.271332, 41.233891, 51.779594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590464, -0.536160, -0.603229,
		0.793337, 0.248322, 0.555835,
		-0.148221, -0.806764, 0.571981,
		28.226866, 40.991859, 51.951187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.982723, 41.308212, 51.760918>,  <28.330620, 41.556595, 51.550800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.982723, 41.308212, 51.760918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.716825, 41.011246, 51.794231>,  <28.557287, 40.833065, 51.814220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.716825, 41.011246, 51.794231>,  <28.982723, 41.308212, 51.760918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.716825, 41.011246, 51.794231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589208, -0.589548, -0.552509,
		0.459293, -0.318203, 0.829335,
		-0.664743, -0.742415, 0.083288,
		28.517403, 40.788521, 51.819218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.296066, 40.731575, 51.889786>,  <28.982723, 41.308212, 51.760918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.296066, 40.731575, 51.889786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.965351, 40.566902, 51.736458>,  <28.766922, 40.468098, 51.644459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.965351, 40.566902, 51.736458>,  <29.296066, 40.731575, 51.889786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.965351, 40.566902, 51.736458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561897, -0.636322, -0.528551,
		-0.026320, -0.652388, 0.757428,
		-0.826788, -0.411685, -0.383323,
		28.717314, 40.443398, 51.621460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.892721, 41.066410, 52.242756>,  <29.296066, 40.731575, 51.889786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.892721, 41.066410, 52.242756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.206501, 41.150024, 52.476318>,  <30.394770, 41.200195, 52.616455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.206501, 41.150024, 52.476318>,  <29.892721, 41.066410, 52.242756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.206501, 41.150024, 52.476318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606123, 0.457810, 0.650403,
		-0.131356, -0.864125, 0.485833,
		0.784449, 0.209040, 0.583902,
		30.441835, 41.212738, 52.651489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.712246, 40.888027, 52.819305>,  <29.892721, 41.066410, 52.242756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.712246, 40.888027, 52.819305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.976822, 41.180962, 52.884033>,  <30.135567, 41.356720, 52.922871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.976822, 41.180962, 52.884033>,  <29.712246, 40.888027, 52.819305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.976822, 41.180962, 52.884033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541173, 0.316655, 0.779013,
		0.519259, -0.602839, 0.605768,
		0.661439, 0.732335, 0.161814,
		30.175253, 41.400661, 52.932579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.815723, 40.945110, 53.595703>,  <29.712246, 40.888027, 52.819305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.815723, 40.945110, 53.595703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.959261, 41.302616, 53.488060>,  <30.045383, 41.517120, 53.423473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.959261, 41.302616, 53.488060>,  <29.815723, 40.945110, 53.595703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.959261, 41.302616, 53.488060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498582, 0.427274, 0.754224,
		0.789079, -0.136478, 0.598939,
		0.358846, 0.893762, -0.269107,
		30.066916, 41.570744, 53.407330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.990826, 41.275799, 54.205029>,  <29.815723, 40.945110, 53.595703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.990826, 41.275799, 54.205029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.977612, 41.576061, 53.941078>,  <29.969683, 41.756218, 53.782707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.977612, 41.576061, 53.941078>,  <29.990826, 41.275799, 54.205029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.977612, 41.576061, 53.941078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235019, 0.635885, 0.735130,
		0.971429, 0.179366, 0.155412,
		-0.033033, 0.750651, -0.659872,
		29.967701, 41.801258, 53.743118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.240116, 41.864014, 54.596729>,  <29.990826, 41.275799, 54.205029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.240116, 41.864014, 54.596729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.024462, 42.007313, 54.291840>,  <29.895069, 42.093292, 54.108906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.024462, 42.007313, 54.291840>,  <30.240116, 41.864014, 54.596729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.024462, 42.007313, 54.291840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112623, 0.866227, 0.486793,
		0.834655, 0.348291, -0.426666,
		-0.539135, 0.358251, -0.762226,
		29.862720, 42.114788, 54.063171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.501005, 42.621166, 54.464489>,  <30.240116, 41.864014, 54.596729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.501005, 42.621166, 54.464489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.132442, 42.585941, 54.313091>,  <29.911304, 42.564808, 54.222252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.132442, 42.585941, 54.313091>,  <30.501005, 42.621166, 54.464489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.132442, 42.585941, 54.313091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263425, 0.857585, 0.441764,
		0.285686, 0.506748, -0.813382,
		-0.921407, -0.088060, -0.378491,
		29.856020, 42.559525, 54.199543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.328865, 43.253220, 54.129795>,  <30.501005, 42.621166, 54.464489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.328865, 43.253220, 54.129795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.986897, 43.071163, 54.229359>,  <29.781715, 42.961929, 54.289097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.986897, 43.071163, 54.229359>,  <30.328865, 43.253220, 54.129795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.986897, 43.071163, 54.229359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257082, 0.788473, 0.558766,
		-0.450572, 0.413713, -0.791092,
		-0.854923, -0.455140, 0.248905,
		29.730419, 42.934620, 54.304031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.865440, 43.725620, 54.108799>,  <30.328865, 43.253220, 54.129795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.865440, 43.725620, 54.108799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.698105, 43.449150, 54.344517>,  <29.597704, 43.283268, 54.485947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.698105, 43.449150, 54.344517>,  <29.865440, 43.725620, 54.108799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.698105, 43.449150, 54.344517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537490, 0.711381, 0.452814,
		-0.732187, -0.127309, -0.669100,
		-0.418337, -0.691179, 0.589292,
		29.572603, 43.241795, 54.521305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.187082, 43.988911, 54.273636>,  <29.865440, 43.725620, 54.108799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.187082, 43.988911, 54.273636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.249273, 43.707893, 54.551414>,  <29.286589, 43.539284, 54.718082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.249273, 43.707893, 54.551414>,  <29.187082, 43.988911, 54.273636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.249273, 43.707893, 54.551414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461762, 0.569775, 0.679803,
		-0.873271, -0.426365, -0.235821,
		0.155479, -0.702545, 0.694446,
		29.295918, 43.497131, 54.759750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.450296, 43.801029, 54.570087>,  <29.187082, 43.988911, 54.273636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.450296, 43.801029, 54.570087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.757521, 43.753536, 54.821796>,  <28.941854, 43.725040, 54.972824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.757521, 43.753536, 54.821796>,  <28.450296, 43.801029, 54.570087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.757521, 43.753536, 54.821796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463223, 0.575492, 0.673968,
		-0.442165, -0.809142, 0.387013,
		0.768059, -0.118731, 0.629276,
		28.987938, 43.717918, 55.010578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.176651, 43.929596, 55.129601>,  <28.450296, 43.801029, 54.570087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.176651, 43.929596, 55.129601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.552450, 43.925648, 55.266563>,  <28.777929, 43.923279, 55.348743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.552450, 43.925648, 55.266563>,  <28.176651, 43.929596, 55.129601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.552450, 43.925648, 55.266563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316125, 0.360020, 0.877753,
		-0.131939, -0.932893, 0.335117,
		0.939498, -0.009871, 0.342411,
		28.834299, 43.922688, 55.369286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.179565, 43.615955, 55.761902>,  <28.176651, 43.929596, 55.129601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.179565, 43.615955, 55.761902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.519171, 43.826988, 55.750343>,  <28.722933, 43.953609, 55.743408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.519171, 43.826988, 55.750343>,  <28.179565, 43.615955, 55.761902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.519171, 43.826988, 55.750343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206702, 0.381977, 0.900760,
		0.486265, -0.758782, 0.433355,
		0.849011, 0.527583, -0.028900,
		28.773874, 43.985264, 55.741673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.388699, 43.518764, 56.381119>,  <28.179565, 43.615955, 55.761902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.388699, 43.518764, 56.381119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.599138, 43.841972, 56.275043>,  <28.725403, 44.035896, 56.211399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.599138, 43.841972, 56.275043>,  <28.388699, 43.518764, 56.381119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.599138, 43.841972, 56.275043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116271, 0.377243, 0.918786,
		0.842437, -0.452539, 0.292416,
		0.526099, 0.808020, -0.265187,
		28.756968, 44.084377, 56.195488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.845570, 43.633533, 56.924000>,  <28.388699, 43.518764, 56.381119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.845570, 43.633533, 56.924000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.801756, 43.983627, 56.735542>,  <28.775467, 44.193684, 56.622467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.801756, 43.983627, 56.735542>,  <28.845570, 43.633533, 56.924000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.801756, 43.983627, 56.735542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352423, 0.409002, 0.841733,
		0.929408, 0.258241, 0.263651,
		-0.109537, 0.875230, -0.471140,
		28.768894, 44.246197, 56.594200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.281841, 43.347565, 57.365871>,  <28.845570, 43.633533, 56.924000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.281841, 43.347565, 57.365871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.235704, 43.199860, 57.734730>,  <29.208023, 43.111237, 57.956043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.235704, 43.199860, 57.734730>,  <29.281841, 43.347565, 57.365871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.235704, 43.199860, 57.734730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555446, -0.793612, -0.248316,
		0.823515, 0.483558, 0.296639,
		-0.115341, -0.369259, 0.922141,
		29.201101, 43.089081, 58.011372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.916346, 43.143925, 57.623913>,  <29.281841, 43.347565, 57.365871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.916346, 43.143925, 57.623913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.686081, 42.927357, 57.869019>,  <29.547922, 42.797417, 58.016083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.686081, 42.927357, 57.869019>,  <29.916346, 43.143925, 57.623913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.686081, 42.927357, 57.869019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565222, -0.805001, -0.180271,
		0.590880, 0.242575, 0.769427,
		-0.575660, -0.541416, 0.612768,
		29.513384, 42.764931, 58.052849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.340685, 42.697529, 58.053471>,  <29.916346, 43.143925, 57.623913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.340685, 42.697529, 58.053471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.998714, 42.490036, 58.055195>,  <29.793531, 42.365540, 58.056229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.998714, 42.490036, 58.055195>,  <30.340685, 42.697529, 58.053471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.998714, 42.490036, 58.055195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499810, -0.825910, -0.260886,
		0.138887, -0.220886, 0.965360,
		-0.854927, -0.518731, 0.004307,
		29.742237, 42.334415, 58.056488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.564564, 42.133492, 58.427467>,  <30.340685, 42.697529, 58.053471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.564564, 42.133492, 58.427467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.225483, 42.000622, 58.262028>,  <30.022034, 41.920902, 58.162766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.225483, 42.000622, 58.262028>,  <30.564564, 42.133492, 58.427467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.225483, 42.000622, 58.262028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445360, -0.869228, -0.214703,
		-0.288192, -0.366204, 0.884782,
		-0.847703, -0.332171, -0.413597,
		29.971172, 41.900970, 58.137947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.578995, 41.439167, 58.545345>,  <30.564564, 42.133492, 58.427467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.578995, 41.439167, 58.545345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.313581, 41.469212, 58.247597>,  <30.154333, 41.487236, 58.068947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.313581, 41.469212, 58.247597>,  <30.578995, 41.439167, 58.545345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.313581, 41.469212, 58.247597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229304, -0.926647, -0.297901,
		-0.712141, -0.368353, 0.597638,
		-0.663532, 0.075107, -0.744368,
		30.114521, 41.491745, 58.024284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.288195, 40.809315, 58.546516>,  <30.578995, 41.439167, 58.545345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.288195, 40.809315, 58.546516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.229794, 40.959328, 58.180340>,  <30.194754, 41.049335, 57.960632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.229794, 40.959328, 58.180340>,  <30.288195, 40.809315, 58.546516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.229794, 40.959328, 58.180340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187014, -0.898212, -0.397795,
		-0.971447, -0.229279, 0.061004,
		-0.146000, 0.375028, -0.915444,
		30.185993, 41.071835, 57.905708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.822247, 40.313396, 58.180126>,  <30.288195, 40.809315, 58.546516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.822247, 40.313396, 58.180126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.041986, 40.517616, 57.915535>,  <30.173830, 40.640148, 57.756779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.041986, 40.517616, 57.915535>,  <29.822247, 40.313396, 58.180126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.041986, 40.517616, 57.915535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405027, -0.855112, -0.323630,
		-0.730869, -0.090131, -0.676541,
		0.549349, 0.510548, -0.661480,
		30.206791, 40.670780, 57.717091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.357828, 40.698650, 57.789539>,  <29.822247, 40.313396, 58.180126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.357828, 40.698650, 57.789539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.174055, 40.382549, 57.951733>,  <29.063791, 40.192886, 58.049049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.174055, 40.382549, 57.951733>,  <29.357828, 40.698650, 57.789539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.174055, 40.382549, 57.951733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815982, 0.195196, -0.544124,
		0.350850, -0.580854, -0.734515,
		-0.459431, -0.790257, 0.405482,
		29.036226, 40.145473, 58.073376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.939613, 40.448700, 57.241974>,  <29.357828, 40.698650, 57.789539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.939613, 40.448700, 57.241974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.791645, 40.289417, 57.577732>,  <28.702864, 40.193848, 57.779186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.791645, 40.289417, 57.577732>,  <28.939613, 40.448700, 57.241974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.791645, 40.289417, 57.577732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913397, -0.009337, -0.406963,
		0.169893, -0.917248, -0.360268,
		-0.369922, -0.398208, 0.839397,
		28.680668, 40.169956, 57.829552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.469694, 39.919506, 57.062420>,  <28.939613, 40.448700, 57.241974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.469694, 39.919506, 57.062420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.335840, 40.027908, 57.423435>,  <28.255527, 40.092949, 57.640045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.335840, 40.027908, 57.423435>,  <28.469694, 39.919506, 57.062420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.335840, 40.027908, 57.423435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.942316, -0.088234, -0.322887,
		-0.007868, -0.958527, 0.284894,
		-0.334633, 0.271001, 0.902540,
		28.235451, 40.109211, 57.694199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.798141, 39.674934, 57.112236>,  <28.469694, 39.919506, 57.062420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.798141, 39.674934, 57.112236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.769115, 39.932652, 57.416767>,  <27.751699, 40.087280, 57.599487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.769115, 39.932652, 57.416767>,  <27.798141, 39.674934, 57.112236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.769115, 39.932652, 57.416767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.990808, 0.040808, -0.128974,
		-0.114165, -0.763690, 0.635409,
		-0.072566, 0.644293, 0.761329,
		27.747345, 40.125938, 57.645164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.070845, 39.596516, 57.511299>,  <27.798141, 39.674934, 57.112236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.070845, 39.596516, 57.511299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.186617, 39.964695, 57.616375>,  <27.256081, 40.185604, 57.679420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.186617, 39.964695, 57.616375>,  <27.070845, 39.596516, 57.511299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.186617, 39.964695, 57.616375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931650, 0.333872, -0.143381,
		-0.219679, -0.203235, 0.954168,
		0.289430, 0.920448, 0.262688,
		27.273445, 40.240829, 57.695183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.600992, 39.788082, 57.981350>,  <27.070845, 39.596516, 57.511299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.600992, 39.788082, 57.981350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.769545, 40.120762, 57.836735>,  <26.870676, 40.320370, 57.749966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.769545, 40.120762, 57.836735>,  <26.600992, 39.788082, 57.981350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.769545, 40.120762, 57.836735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905798, 0.405487, -0.122928,
		0.044358, 0.379279, 0.924219,
		0.421383, 0.831702, -0.361537,
		26.895960, 40.370274, 57.728275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.298851, 40.380768, 58.304089>,  <26.600992, 39.788082, 57.981350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.298851, 40.380768, 58.304089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.476297, 40.563652, 57.995762>,  <26.582766, 40.673382, 57.810764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.476297, 40.563652, 57.995762>,  <26.298851, 40.380768, 58.304089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.476297, 40.563652, 57.995762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728292, 0.685149, -0.012742,
		0.522301, 0.567035, 0.636925,
		0.443614, 0.457212, -0.770820,
		26.609381, 40.700817, 57.764515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.438576, 41.124207, 58.527737>,  <26.298851, 40.380768, 58.304089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.438576, 41.124207, 58.527737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.388355, 41.088722, 58.132492>,  <26.358223, 41.067432, 57.895344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.388355, 41.088722, 58.132492>,  <26.438576, 41.124207, 58.527737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.388355, 41.088722, 58.132492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612683, 0.790298, 0.006893,
		0.780292, 0.606266, -0.153577,
		-0.125550, -0.088715, -0.988113,
		26.350691, 41.062107, 57.836060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.457514, 41.765545, 58.287495>,  <26.438576, 41.124207, 58.527737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.457514, 41.765545, 58.287495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.283911, 41.555882, 57.994400>,  <26.179749, 41.430084, 57.818542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.283911, 41.555882, 57.994400>,  <26.457514, 41.765545, 58.287495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.283911, 41.555882, 57.994400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640433, 0.751530, -0.158267,
		0.633627, 0.400577, -0.661857,
		-0.434007, -0.524158, -0.732732,
		26.153709, 41.398636, 57.774582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 11

// nucleotide -1

// particle -1
sphere {
	<37.316135, 33.165276, 49.546261> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.307121, 33.431183, 49.247578>,  <37.301712, 33.590729, 49.068367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.307121, 33.431183, 49.247578>,  <37.316135, 33.165276, 49.546261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.307121, 33.431183, 49.247578> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917312, 0.283243, 0.279843,
		0.397531, 0.691271, 0.603418,
		-0.022533, 0.664769, -0.746709,
		37.300362, 33.630615, 49.023563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.082504, 33.791351, 49.875046>,  <37.316135, 33.165276, 49.546261>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.082504, 33.791351, 49.875046> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.013924, 33.811440, 49.481480>,  <36.972775, 33.823494, 49.245342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.013924, 33.811440, 49.481480>,  <37.082504, 33.791351, 49.875046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.013924, 33.811440, 49.481480> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.916819, 0.357431, 0.178003,
		0.360620, 0.932588, -0.015236,
		-0.171450, 0.050223, -0.983912,
		36.962490, 33.826508, 49.186306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.824341, 34.448997, 49.842388>,  <37.082504, 33.791351, 49.875046>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.824341, 34.448997, 49.842388> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.711845, 34.283577, 49.496006>,  <36.644348, 34.184326, 49.288177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.711845, 34.283577, 49.496006>,  <36.824341, 34.448997, 49.842388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.711845, 34.283577, 49.496006> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.915028, 0.387494, 0.112122,
		0.289185, 0.823909, -0.487387,
		-0.281238, -0.413549, -0.865958,
		36.627476, 34.159512, 49.236217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.546864, 34.924461, 49.431679>,  <36.824341, 34.448997, 49.842388>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.546864, 34.924461, 49.431679> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.390358, 34.589581, 49.278835>,  <36.296455, 34.388653, 49.187130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.390358, 34.589581, 49.278835>,  <36.546864, 34.924461, 49.431679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.390358, 34.589581, 49.278835> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.920257, 0.353114, 0.168634,
		-0.006254, 0.417616, -0.908602,
		-0.391265, -0.837202, -0.382105,
		36.272980, 34.338421, 49.164204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.102043, 35.126526, 48.984344>,  <36.546864, 34.924461, 49.431679>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.102043, 35.126526, 48.984344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.988464, 34.748528, 49.049274>,  <35.920319, 34.521729, 49.088234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.988464, 34.748528, 49.049274>,  <36.102043, 35.126526, 48.984344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.988464, 34.748528, 49.049274> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838877, 0.326828, 0.435280,
		-0.464392, -0.012576, -0.885540,
		-0.283945, -0.945000, 0.162326,
		35.903282, 34.465027, 49.097973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.431843, 35.079292, 48.761688>,  <36.102043, 35.126526, 48.984344>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.431843, 35.079292, 48.761688> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.452606, 34.749332, 48.986843>,  <35.465065, 34.551357, 49.121937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.452606, 34.749332, 48.986843>,  <35.431843, 35.079292, 48.761688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.452606, 34.749332, 48.986843> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881244, 0.227327, 0.414405,
		-0.469803, -0.517556, -0.715137,
		0.051908, -0.824899, 0.562892,
		35.468178, 34.501862, 49.155712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.776897, 34.634010, 48.689934>,  <35.431843, 35.079292, 48.761688>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.776897, 34.634010, 48.689934> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.937988, 34.527336, 49.040176>,  <35.034645, 34.463333, 49.250324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.937988, 34.527336, 49.040176>,  <34.776897, 34.634010, 48.689934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.937988, 34.527336, 49.040176> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904859, 0.028216, 0.424776,
		-0.137988, -0.963371, -0.229949,
		0.402728, -0.266685, 0.875608,
		35.058807, 34.447330, 49.302860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.321758, 34.162052, 49.011906>,  <34.776897, 34.634010, 48.689934>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.321758, 34.162052, 49.011906> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.524994, 34.271873, 49.338455>,  <34.646935, 34.337765, 49.534386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.524994, 34.271873, 49.338455>,  <34.321758, 34.162052, 49.011906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.524994, 34.271873, 49.338455> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771176, -0.277099, 0.573152,
		0.383574, -0.920782, 0.070934,
		0.508093, 0.274549, 0.816373,
		34.677422, 34.354237, 49.583366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.220024, 33.667507, 49.536224>,  <34.321758, 34.162052, 49.011906>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.220024, 33.667507, 49.536224> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.330460, 33.987267, 49.749664>,  <34.396721, 34.179123, 49.877728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.330460, 33.987267, 49.749664>,  <34.220024, 33.667507, 49.536224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.330460, 33.987267, 49.749664> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802852, -0.113401, 0.585294,
		0.528396, -0.589997, 0.610493,
		0.276091, 0.799403, 0.533601,
		34.413288, 34.227089, 49.909744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.035435, 33.489361, 50.191204>,  <34.220024, 33.667507, 49.536224>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.035435, 33.489361, 50.191204> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.032467, 33.886345, 50.240143>,  <34.030685, 34.124535, 50.269505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.032467, 33.886345, 50.240143>,  <34.035435, 33.489361, 50.191204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.032467, 33.886345, 50.240143> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827859, -0.074725, 0.555936,
		0.560887, -0.097157, 0.822172,
		-0.007423, 0.992460, 0.122345,
		34.030239, 34.184082, 50.276848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.924805, 33.625397, 50.894100>,  <34.035435, 33.489361, 50.191204>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.924805, 33.625397, 50.894100> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.828625, 33.971409, 50.717964>,  <33.770916, 34.179016, 50.612282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.828625, 33.971409, 50.717964>,  <33.924805, 33.625397, 50.894100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.828625, 33.971409, 50.717964> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900010, -0.028781, 0.434918,
		0.363545, 0.500887, 0.785460,
		-0.240451, 0.865034, -0.440340,
		33.756489, 34.230919, 50.585861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.534176, 33.897671, 51.410488>,  <33.924805, 33.625397, 50.894100>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.534176, 33.897671, 51.410488> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.419308, 34.103020, 51.087013>,  <33.350388, 34.226227, 50.892929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.419308, 34.103020, 51.087013>,  <33.534176, 33.897671, 51.410488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.419308, 34.103020, 51.087013> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905129, 0.130864, 0.404495,
		0.313484, 0.848131, 0.427086,
		-0.287174, 0.513370, -0.808691,
		33.333157, 34.257030, 50.844406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.211269, 34.482986, 51.653622>,  <33.534176, 33.897671, 51.410488>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.211269, 34.482986, 51.653622> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.078812, 34.458267, 51.277000>,  <32.999336, 34.443436, 51.051029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.078812, 34.458267, 51.277000>,  <33.211269, 34.482986, 51.653622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.078812, 34.458267, 51.277000> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.922098, 0.232905, 0.309017,
		0.200197, 0.970534, -0.134106,
		-0.331145, -0.061795, -0.941554,
		32.979469, 34.439728, 50.994534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.627811, 34.948593, 51.678787>,  <33.211269, 34.482986, 51.653622>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.627811, 34.948593, 51.678787> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.573132, 34.734623, 51.345280>,  <32.540325, 34.606239, 51.145176>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.573132, 34.734623, 51.345280>,  <32.627811, 34.948593, 51.678787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.573132, 34.734623, 51.345280> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.977129, -0.065590, 0.202281,
		-0.162892, 0.842350, -0.513724,
		-0.136696, -0.534925, -0.833768,
		32.532124, 34.574146, 51.095150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.258553, 35.259254, 51.226765>,  <32.627811, 34.948593, 51.678787>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.258553, 35.259254, 51.226765> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.203251, 34.870056, 51.152832>,  <32.170071, 34.636536, 51.108471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.203251, 34.870056, 51.152832>,  <32.258553, 35.259254, 51.226765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.203251, 34.870056, 51.152832> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.990378, 0.134663, 0.031891,
		-0.006140, 0.187466, -0.982252,
		-0.138251, -0.972996, -0.184836,
		32.161774, 34.578156, 51.097382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.834345, 35.192398, 50.629101>,  <32.258553, 35.259254, 51.226765>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.834345, 35.192398, 50.629101> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.787100, 34.858574, 50.844341>,  <31.758753, 34.658279, 50.973484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.787100, 34.858574, 50.844341>,  <31.834345, 35.192398, 50.629101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.787100, 34.858574, 50.844341> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.989112, 0.146788, 0.010554,
		-0.087795, -0.530994, -0.842815,
		-0.118111, -0.834565, 0.538100,
		31.751667, 34.608204, 51.005772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.154898, 34.839417, 50.289425>,  <31.834345, 35.192398, 50.629101>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.154898, 34.839417, 50.289425> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.226261, 34.657722, 50.638561>,  <31.269079, 34.548706, 50.848042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.226261, 34.657722, 50.638561>,  <31.154898, 34.839417, 50.289425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.226261, 34.657722, 50.638561> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964946, 0.092760, 0.245508,
		-0.192482, -0.886041, -0.421761,
		0.178407, -0.454233, 0.872837,
		31.279783, 34.521454, 50.900414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.692490, 34.251202, 50.314960>,  <31.154898, 34.839417, 50.289425>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.692490, 34.251202, 50.314960> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.785534, 34.374622, 50.683891>,  <30.841360, 34.448677, 50.905251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.785534, 34.374622, 50.683891>,  <30.692490, 34.251202, 50.314960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.785534, 34.374622, 50.683891> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.961664, -0.068651, 0.265497,
		0.145240, -0.948725, 0.280761,
		0.232610, 0.308558, 0.922325,
		30.855316, 34.467190, 50.960590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.328270, 33.791302, 50.665798>,  <30.692490, 34.251202, 50.314960>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.328270, 33.791302, 50.665798> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.434099, 34.096050, 50.902290>,  <30.497597, 34.278900, 51.044186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.434099, 34.096050, 50.902290>,  <30.328270, 33.791302, 50.665798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.434099, 34.096050, 50.902290> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837705, -0.122162, 0.532285,
		0.477757, -0.636109, 0.605900,
		0.264573, 0.761867, 0.591235,
		30.513472, 34.324612, 51.079662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.897955, 33.696609, 51.212143>,  <30.328270, 33.791302, 50.665798>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.897955, 33.696609, 51.212143> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.021729, 34.053951, 51.342476>,  <30.095993, 34.268356, 51.420677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.021729, 34.053951, 51.342476>,  <29.897955, 33.696609, 51.212143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.021729, 34.053951, 51.342476> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766371, 0.031426, 0.641630,
		0.562964, -0.448250, 0.694366,
		0.309432, 0.893356, 0.325834,
		30.114557, 34.321957, 51.440228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.861244, 33.693371, 52.044109>,  <29.897955, 33.696609, 51.212143>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.861244, 33.693371, 52.044109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.875896, 34.066166, 51.899857>,  <29.884687, 34.289845, 51.813305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.875896, 34.066166, 51.899857>,  <29.861244, 33.693371, 52.044109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.875896, 34.066166, 51.899857> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684283, 0.286393, 0.670623,
		0.728296, 0.222209, 0.648235,
		0.036631, 0.931988, -0.360633,
		29.886887, 34.345764, 51.791668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.958469, 34.140545, 52.643158>,  <29.861244, 33.693371, 52.044109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.958469, 34.140545, 52.643158> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.777937, 34.320091, 52.334660>,  <29.669619, 34.427818, 52.149559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.777937, 34.320091, 52.334660>,  <29.958469, 34.140545, 52.643158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.777937, 34.320091, 52.334660> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800776, 0.177660, 0.572009,
		0.393776, 0.875759, 0.279259,
		-0.451329, 0.448868, -0.771246,
		29.642538, 34.454750, 52.103287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.614096, 34.728291, 52.958122>,  <29.958469, 34.140545, 52.643158>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.614096, 34.728291, 52.958122> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.412897, 34.667545, 52.617786>,  <29.292177, 34.631100, 52.413586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.412897, 34.667545, 52.617786>,  <29.614096, 34.728291, 52.958122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.412897, 34.667545, 52.617786> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854829, 0.232666, 0.463826,
		0.127524, 0.960627, -0.246848,
		-0.502997, -0.151863, -0.850842,
		29.261997, 34.621986, 52.362534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.002510, 35.137123, 52.954456>,  <29.614096, 34.728291, 52.958122>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.002510, 35.137123, 52.954456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.923859, 34.881813, 52.656746>,  <28.876667, 34.728626, 52.478119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.923859, 34.881813, 52.656746>,  <29.002510, 35.137123, 52.954456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.923859, 34.881813, 52.656746> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.974436, 0.043075, 0.220494,
		-0.108677, 0.768602, -0.630428,
		-0.196628, -0.638275, -0.744273,
		28.864870, 34.690331, 52.433464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.458570, 35.490498, 52.556778>,  <29.002510, 35.137123, 52.954456>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.458570, 35.490498, 52.556778> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.426176, 35.100040, 52.476196>,  <28.406738, 34.865765, 52.427849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.426176, 35.100040, 52.476196>,  <28.458570, 35.490498, 52.556778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.426176, 35.100040, 52.476196> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.995653, 0.069904, 0.061547,
		-0.045997, 0.205560, -0.977563,
		-0.080987, -0.976145, -0.201451,
		28.401880, 34.807198, 52.415760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.889009, 35.518711, 52.125721>,  <28.458570, 35.490498, 52.556778>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.889009, 35.518711, 52.125721> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.930426, 35.135162, 52.231438>,  <27.955275, 34.905033, 52.294868>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.930426, 35.135162, 52.231438>,  <27.889009, 35.518711, 52.125721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.930426, 35.135162, 52.231438> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.993499, -0.112349, -0.018393,
		0.047330, -0.260669, -0.964267,
		0.103540, -0.958869, 0.264292,
		27.961487, 34.847500, 52.310726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.656042, 35.183670, 51.527714>,  <27.889009, 35.518711, 52.125721>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.656042, 35.183670, 51.527714> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.619623, 34.943813, 51.845741>,  <27.597771, 34.799900, 52.036556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.619623, 34.943813, 51.845741>,  <27.656042, 35.183670, 51.527714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.619623, 34.943813, 51.845741> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.988477, -0.042530, -0.145274,
		0.120927, -0.799135, -0.588863,
		-0.091049, -0.599645, 0.795070,
		27.592308, 34.763920, 52.084263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.107302, 34.838680, 51.334370>,  <27.656042, 35.183670, 51.527714>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.107302, 34.838680, 51.334370> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.142818, 34.759007, 51.724743>,  <27.164129, 34.711205, 51.958965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.142818, 34.759007, 51.724743>,  <27.107302, 34.838680, 51.334370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.142818, 34.759007, 51.724743> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.969426, -0.242306, 0.038747,
		0.228757, -0.949533, -0.214608,
		0.088792, -0.199182, 0.975931,
		27.169456, 34.699253, 52.017521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.693970, 34.225571, 51.482616>,  <27.107302, 34.838680, 51.334370>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.693970, 34.225571, 51.482616> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.728653, 34.438900, 51.819199>,  <26.749462, 34.566898, 52.021149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.728653, 34.438900, 51.819199>,  <26.693970, 34.225571, 51.482616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.728653, 34.438900, 51.819199> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.989181, -0.054236, 0.136306,
		0.118332, -0.844170, 0.522853,
		0.086708, 0.533326, 0.841454,
		26.754665, 34.598896, 52.071636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.103003, 34.016949, 51.897148>,  <26.693970, 34.225571, 51.482616>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.103003, 34.016949, 51.897148> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.202164, 34.353104, 52.089935>,  <26.261660, 34.554798, 52.205608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.202164, 34.353104, 52.089935>,  <26.103003, 34.016949, 51.897148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.202164, 34.353104, 52.089935> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.967813, 0.237119, 0.084341,
		-0.043404, -0.487359, 0.872122,
		0.247901, 0.840390, 0.481964,
		26.276533, 34.605221, 52.234524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.591925, 34.139679, 52.505581>,  <26.103003, 34.016949, 51.897148>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.591925, 34.139679, 52.505581> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.771774, 34.478054, 52.390884>,  <25.879684, 34.681080, 52.322067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.771774, 34.478054, 52.390884>,  <25.591925, 34.139679, 52.505581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.771774, 34.478054, 52.390884> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887766, 0.458642, -0.038983,
		0.098534, 0.272088, 0.957214,
		0.449626, 0.845941, -0.286742,
		25.906662, 34.731834, 52.304863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.281130, 34.702579, 52.878380>,  <25.591925, 34.139679, 52.505581>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.281130, 34.702579, 52.878380> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.427784, 34.914406, 52.572403>,  <25.515776, 35.041504, 52.388817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.427784, 34.914406, 52.572403>,  <25.281130, 34.702579, 52.878380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.427784, 34.914406, 52.572403> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804310, 0.593664, 0.025488,
		0.467616, 0.605905, 0.643595,
		0.366636, 0.529568, -0.764942,
		25.537775, 35.073277, 52.342918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.975712, 35.368706, 53.025661>,  <25.281130, 34.702579, 52.878380>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.975712, 35.368706, 53.025661> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.114872, 35.381039, 52.650852>,  <25.198368, 35.388439, 52.425968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.114872, 35.381039, 52.650852>,  <24.975712, 35.368706, 53.025661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.114872, 35.381039, 52.650852> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712179, 0.658692, -0.242747,
		0.609726, 0.751781, 0.251117,
		0.347901, 0.030831, -0.937024,
		25.219242, 35.390289, 52.369743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.077131, 36.117287, 52.922459>,  <24.975712, 35.368706, 53.025661>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.077131, 36.117287, 52.922459> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.013348, 35.924145, 52.578033>,  <24.975077, 35.808262, 52.371380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.013348, 35.924145, 52.578033>,  <25.077131, 36.117287, 52.922459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.013348, 35.924145, 52.578033> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842650, 0.520978, -0.136094,
		0.514307, 0.703871, -0.489954,
		-0.159462, -0.482854, -0.861059,
		24.965509, 35.779289, 52.319714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.817247, 36.610180, 52.427685>,  <25.077131, 36.117287, 52.922459>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.817247, 36.610180, 52.427685> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.699400, 36.266766, 52.259819>,  <24.628693, 36.060719, 52.159100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.699400, 36.266766, 52.259819>,  <24.817247, 36.610180, 52.427685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.699400, 36.266766, 52.259819> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.934910, 0.349874, -0.059426,
		0.197849, 0.374842, -0.905731,
		-0.294617, -0.858535, -0.419665,
		24.611015, 36.009205, 52.133919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 12

// nucleotide -1

// particle -1
sphere {
	<35.918736, 31.399883, 51.151516> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.540737, 31.270073, 51.167870>,  <35.313938, 31.192186, 51.177681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.540737, 31.270073, 51.167870>,  <35.918736, 31.399883, 51.151516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.540737, 31.270073, 51.167870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147603, 0.534623, 0.832101,
		-0.291895, 0.780295, -0.553116,
		-0.944992, -0.324528, 0.040880,
		35.257240, 31.172714, 51.180134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.518757, 31.966145, 51.413731>,  <35.918736, 31.399883, 51.151516>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.518757, 31.966145, 51.413731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.293968, 31.641384, 51.476990>,  <35.159096, 31.446527, 51.514946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.293968, 31.641384, 51.476990>,  <35.518757, 31.966145, 51.413731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.293968, 31.641384, 51.476990> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318519, 0.388860, 0.864484,
		-0.763372, 0.435439, -0.477132,
		-0.561968, -0.811899, 0.158150,
		35.125378, 31.397814, 51.524433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.892860, 32.208118, 51.547825>,  <35.518757, 31.966145, 51.413731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.892860, 32.208118, 51.547825> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.897369, 31.843039, 51.711216>,  <34.900074, 31.623991, 51.809250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.897369, 31.843039, 51.711216>,  <34.892860, 32.208118, 51.547825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.897369, 31.843039, 51.711216> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264722, 0.391201, 0.881410,
		-0.964259, -0.118066, -0.237203,
		0.011270, -0.912700, 0.408474,
		34.900749, 31.569229, 51.833759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.356201, 32.140831, 51.963154>,  <34.892860, 32.208118, 51.547825>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.356201, 32.140831, 51.963154> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.593235, 31.857306, 52.116219>,  <34.735455, 31.687191, 52.208057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.593235, 31.857306, 52.116219>,  <34.356201, 32.140831, 51.963154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.593235, 31.857306, 52.116219> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243351, 0.295320, 0.923886,
		-0.767869, -0.640601, 0.002512,
		0.592585, -0.708813, 0.382659,
		34.771011, 31.644661, 52.231018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.001369, 32.076023, 52.523350>,  <34.356201, 32.140831, 51.963154>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.001369, 32.076023, 52.523350> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.338844, 31.878035, 52.606491>,  <34.541328, 31.759243, 52.656376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.338844, 31.878035, 52.606491>,  <34.001369, 32.076023, 52.523350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.338844, 31.878035, 52.606491> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031049, 0.341538, 0.939355,
		-0.535938, -0.798974, 0.272782,
		0.843686, -0.494967, 0.207851,
		34.591949, 31.729544, 52.668846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.892647, 31.834141, 53.202618>,  <34.001369, 32.076023, 52.523350>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.892647, 31.834141, 53.202618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.286751, 31.841183, 53.134556>,  <34.523212, 31.845407, 53.093719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.286751, 31.841183, 53.134556>,  <33.892647, 31.834141, 53.202618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.286751, 31.841183, 53.134556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147926, 0.411821, 0.899178,
		0.085902, -0.911095, 0.403146,
		0.985261, 0.017605, -0.170151,
		34.582329, 31.846464, 53.083511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.219387, 31.484339, 53.784607>,  <33.892647, 31.834141, 53.202618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.219387, 31.484339, 53.784607> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.473469, 31.729092, 53.596088>,  <34.625916, 31.875944, 53.482979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.473469, 31.729092, 53.596088>,  <34.219387, 31.484339, 53.784607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.473469, 31.729092, 53.596088> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279008, 0.387215, 0.878760,
		0.720192, -0.689683, 0.075238,
		0.635200, 0.611883, -0.471296,
		34.664028, 31.912657, 53.454700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.757931, 31.580620, 54.238892>,  <34.219387, 31.484339, 53.784607>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.757931, 31.580620, 54.238892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.821049, 31.872849, 53.973148>,  <34.858921, 32.048183, 53.813702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.821049, 31.872849, 53.973148>,  <34.757931, 31.580620, 54.238892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.821049, 31.872849, 53.973148> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076710, 0.661682, 0.745850,
		0.984488, -0.168655, 0.048370,
		0.157797, 0.730569, -0.664356,
		34.868389, 32.092018, 53.773842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.371883, 32.032955, 54.559750>,  <34.757931, 31.580620, 54.238892>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.371883, 32.032955, 54.559750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.151005, 32.251282, 54.307667>,  <35.018478, 32.382278, 54.156418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.151005, 32.251282, 54.307667>,  <35.371883, 32.032955, 54.559750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.151005, 32.251282, 54.307667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201970, 0.645815, 0.736295,
		0.808879, 0.533865, -0.246381,
		-0.552199, 0.545812, -0.630211,
		34.985344, 32.415024, 54.118603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.672134, 32.717953, 54.621899>,  <35.371883, 32.032955, 54.559750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.672134, 32.717953, 54.621899> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.305355, 32.772499, 54.471905>,  <35.085289, 32.805225, 54.381908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.305355, 32.772499, 54.471905>,  <35.672134, 32.717953, 54.621899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.305355, 32.772499, 54.471905> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156104, 0.742283, 0.651650,
		0.367204, 0.656065, -0.659348,
		-0.916948, 0.136361, -0.374984,
		35.030270, 32.813408, 54.359409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.607063, 33.501385, 54.435318>,  <35.672134, 32.717953, 54.621899>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.607063, 33.501385, 54.435318> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.240852, 33.344360, 54.470440>,  <35.021126, 33.250145, 54.491512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.240852, 33.344360, 54.470440>,  <35.607063, 33.501385, 54.435318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.240852, 33.344360, 54.470440> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320934, 0.844407, 0.428927,
		-0.242523, 0.364514, -0.899062,
		-0.915524, -0.392564, 0.087803,
		34.966194, 33.226593, 54.496780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.149162, 33.989483, 54.382336>,  <35.607063, 33.501385, 54.435318>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.149162, 33.989483, 54.382336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.894337, 33.730476, 54.549610>,  <34.741444, 33.575073, 54.649975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.894337, 33.730476, 54.549610>,  <35.149162, 33.989483, 54.382336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.894337, 33.730476, 54.549610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385842, 0.737539, 0.554222,
		-0.667294, 0.191721, -0.719696,
		-0.637060, -0.647518, 0.418182,
		34.703220, 33.536221, 54.675064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.137619, 34.549828, 53.794086>,  <35.149162, 33.989483, 54.382336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.137619, 34.549828, 53.794086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.334675, 34.887951, 53.876808>,  <35.452908, 35.090824, 53.926441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.334675, 34.887951, 53.876808>,  <35.137619, 34.549828, 53.794086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.334675, 34.887951, 53.876808> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521926, -0.096836, -0.847476,
		-0.696348, 0.525437, -0.488892,
		0.492638, 0.845304, 0.206807,
		35.482468, 35.141541, 53.938850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.246777, 34.791328, 53.133076>,  <35.137619, 34.549828, 53.794086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.246777, 34.791328, 53.133076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.532887, 34.952484, 53.361481>,  <35.704552, 35.049179, 53.498524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.532887, 34.952484, 53.361481>,  <35.246777, 34.791328, 53.133076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.532887, 34.952484, 53.361481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652285, -0.091652, -0.752413,
		-0.250804, 0.910648, -0.328355,
		0.715278, 0.402889, 0.571015,
		35.747471, 35.073349, 53.532784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.593544, 35.220482, 52.698273>,  <35.246777, 34.791328, 53.133076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.593544, 35.220482, 52.698273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.851105, 35.147663, 52.995525>,  <36.005642, 35.103970, 53.173878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.851105, 35.147663, 52.995525>,  <35.593544, 35.220482, 52.698273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.851105, 35.147663, 52.995525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735208, -0.121648, -0.666837,
		0.211798, 0.975735, 0.055515,
		0.643903, -0.182050, 0.743133,
		36.044277, 35.093048, 53.218464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.102417, 35.753681, 52.667889>,  <35.593544, 35.220482, 52.698273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.102417, 35.753681, 52.667889> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.257317, 35.441273, 52.863865>,  <36.350258, 35.253826, 52.981449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.257317, 35.441273, 52.863865>,  <36.102417, 35.753681, 52.667889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.257317, 35.441273, 52.863865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768119, -0.020610, -0.639976,
		0.509934, 0.624161, 0.591938,
		0.387249, -0.781024, 0.489939,
		36.373489, 35.206966, 53.010845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.779819, 35.907974, 52.742737>,  <36.102417, 35.753681, 52.667889>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.779819, 35.907974, 52.742737> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.770123, 35.510632, 52.787750>,  <36.764305, 35.272228, 52.814758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.770123, 35.510632, 52.787750>,  <36.779819, 35.907974, 52.742737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.770123, 35.510632, 52.787750> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638591, -0.101993, -0.762757,
		0.769164, 0.053376, 0.636818,
		-0.024238, -0.993352, 0.112535,
		36.762852, 35.212627, 52.821510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.519367, 35.682285, 52.608223>,  <36.779819, 35.907974, 52.742737>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.519367, 35.682285, 52.608223> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.349270, 35.320274, 52.604527>,  <37.247211, 35.103065, 52.602310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.349270, 35.320274, 52.604527>,  <37.519367, 35.682285, 52.608223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.349270, 35.320274, 52.604527> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701823, -0.323287, -0.634768,
		0.571497, -0.276416, 0.772648,
		-0.425247, -0.905030, -0.009238,
		37.221695, 35.048767, 52.601757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.061703, 35.146725, 52.638187>,  <37.519367, 35.682285, 52.608223>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.061703, 35.146725, 52.638187> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.763145, 34.945415, 52.464008>,  <37.584011, 34.824631, 52.359501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.763145, 34.945415, 52.464008>,  <38.061703, 35.146725, 52.638187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.763145, 34.945415, 52.464008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656157, -0.447243, -0.607809,
		0.111142, -0.739387, 0.664044,
		-0.746395, -0.503270, -0.435447,
		37.539227, 34.794434, 52.333374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.245697, 34.468723, 52.585960>,  <38.061703, 35.146725, 52.638187>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.245697, 34.468723, 52.585960> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.977379, 34.531834, 52.296093>,  <37.816387, 34.569698, 52.122173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.977379, 34.531834, 52.296093>,  <38.245697, 34.468723, 52.585960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.977379, 34.531834, 52.296093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634256, -0.384381, -0.670798,
		-0.384381, -0.909593, 0.157773,
		0.670798, -0.157773, 0.724664,
		37.776138, 34.579166, 52.078693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.390900, 34.002720, 52.099056>,  <38.245697, 34.468723, 52.585960>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.390900, 34.002720, 52.099056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.133286, 34.226135, 51.889965>,  <37.978718, 34.360184, 51.764511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.133286, 34.226135, 51.889965>,  <38.390900, 34.002720, 52.099056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.133286, 34.226135, 51.889965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495616, -0.215866, -0.841289,
		-0.582734, -0.800896, -0.137796,
		-0.644039, 0.558541, -0.522729,
		37.940075, 34.393696, 51.733147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.349304, 33.708477, 51.486275>,  <38.390900, 34.002720, 52.099056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.349304, 33.708477, 51.486275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.174500, 34.059727, 51.408390>,  <38.069618, 34.270477, 51.361660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.174500, 34.059727, 51.408390>,  <38.349304, 33.708477, 51.486275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.174500, 34.059727, 51.408390> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463328, 0.034229, -0.885525,
		-0.770941, -0.477198, -0.421820,
		-0.437010, 0.878129, -0.194710,
		38.043396, 34.323166, 51.349976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.077477, 33.638714, 50.808670>,  <38.349304, 33.708477, 51.486275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.077477, 33.638714, 50.808670> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.118675, 34.025612, 50.901466>,  <38.143394, 34.257751, 50.957146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.118675, 34.025612, 50.901466>,  <38.077477, 33.638714, 50.808670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.118675, 34.025612, 50.901466> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425088, 0.168057, -0.889414,
		-0.899273, 0.190227, -0.393856,
		0.103000, 0.967249, 0.231992,
		38.149574, 34.315788, 50.971066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.916729, 33.971104, 50.197536>,  <38.077477, 33.638714, 50.808670>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.916729, 33.971104, 50.197536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.155281, 34.227364, 50.390984>,  <38.298412, 34.381119, 50.507053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.155281, 34.227364, 50.390984>,  <37.916729, 33.971104, 50.197536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.155281, 34.227364, 50.390984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517982, 0.153106, -0.841578,
		-0.613206, 0.752410, -0.240537,
		0.596384, 0.640654, 0.483620,
		38.334198, 34.419559, 50.536068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.101555, 34.535641, 49.688843>,  <37.916729, 33.971104, 50.197536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.101555, 34.535641, 49.688843> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.360291, 34.592716, 49.988506>,  <38.515530, 34.626961, 50.168304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.360291, 34.592716, 49.988506>,  <38.101555, 34.535641, 49.688843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.360291, 34.592716, 49.988506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720141, 0.209033, -0.661591,
		-0.250999, 0.967443, 0.032457,
		0.646836, 0.142685, 0.749162,
		38.554340, 34.635521, 50.213257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.446125, 35.214802, 49.638649>,  <38.101555, 34.535641, 49.688843>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.446125, 35.214802, 49.638649> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.687340, 34.976330, 49.850655>,  <38.832069, 34.833248, 49.977856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.687340, 34.976330, 49.850655>,  <38.446125, 35.214802, 49.638649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.687340, 34.976330, 49.850655> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785184, 0.326330, -0.526303,
		0.140812, 0.733539, 0.664900,
		0.603041, -0.596179, 0.530012,
		38.868252, 34.797478, 50.009659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.054615, 35.370235, 49.091297>,  <38.446125, 35.214802, 49.638649>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.054615, 35.370235, 49.091297> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.116699, 35.236248, 48.719555>,  <38.153950, 35.155853, 48.496510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.116699, 35.236248, 48.719555>,  <38.054615, 35.370235, 49.091297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.116699, 35.236248, 48.719555> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612503, 0.705476, -0.356572,
		0.775080, 0.624578, -0.095672,
		0.155213, -0.334972, -0.929356,
		38.163261, 35.135757, 48.440746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.368233, 35.786472, 48.636749>,  <38.054615, 35.370235, 49.091297>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.368233, 35.786472, 48.636749> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.123573, 35.588474, 48.389893>,  <37.976776, 35.469677, 48.241779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.123573, 35.588474, 48.389893>,  <38.368233, 35.786472, 48.636749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.123573, 35.588474, 48.389893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508225, 0.843673, -0.172984,
		0.606293, 0.207842, -0.767601,
		-0.611650, -0.494993, -0.617143,
		37.940079, 35.439976, 48.204750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.396820, 36.001648, 47.888405>,  <38.368233, 35.786472, 48.636749>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.396820, 36.001648, 47.888405> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.035774, 35.880768, 48.011021>,  <37.819145, 35.808239, 48.084591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.035774, 35.880768, 48.011021>,  <38.396820, 36.001648, 47.888405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.035774, 35.880768, 48.011021> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355370, 0.924999, -0.134499,
		-0.242902, -0.230335, -0.942308,
		-0.902613, -0.302198, 0.306538,
		37.764992, 35.790108, 48.102982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.071350, 36.370766, 47.346088>,  <38.396820, 36.001648, 47.888405>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.071350, 36.370766, 47.346088> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.764744, 36.155762, 47.205498>,  <37.580780, 36.026760, 47.121143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.764744, 36.155762, 47.205498>,  <38.071350, 36.370766, 47.346088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.764744, 36.155762, 47.205498> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639430, 0.689743, 0.339681,
		0.059844, 0.485114, -0.872401,
		-0.766516, -0.537512, -0.351474,
		37.534790, 35.994507, 47.100056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.643841, 36.780563, 46.888165>,  <38.071350, 36.370766, 47.346088>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.643841, 36.780563, 46.888165> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.433613, 36.490673, 47.066402>,  <37.307476, 36.316742, 47.173344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.433613, 36.490673, 47.066402>,  <37.643841, 36.780563, 46.888165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.433613, 36.490673, 47.066402> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661270, 0.677530, 0.321985,
		-0.535251, -0.125430, -0.835328,
		-0.525573, -0.724721, 0.445592,
		37.275940, 36.273258, 47.200081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.982151, 37.020481, 46.787769>,  <37.643841, 36.780563, 46.888165>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.982151, 37.020481, 46.787769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.931965, 36.756241, 47.083839>,  <36.901855, 36.597698, 47.261482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.931965, 36.756241, 47.083839>,  <36.982151, 37.020481, 46.787769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.931965, 36.756241, 47.083839> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681125, 0.599812, 0.419874,
		-0.721338, -0.451477, -0.525206,
		-0.125461, -0.660602, 0.740179,
		36.894325, 36.558060, 47.305893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.202129, 36.929180, 46.841705>,  <36.982151, 37.020481, 46.787769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.202129, 36.929180, 46.841705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.363888, 36.821312, 47.191277>,  <36.460941, 36.756592, 47.401020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.363888, 36.821312, 47.191277>,  <36.202129, 36.929180, 46.841705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.363888, 36.821312, 47.191277> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797628, 0.363549, 0.481272,
		-0.447499, -0.891689, -0.068080,
		0.404395, -0.269671, 0.873924,
		36.485207, 36.740410, 47.453453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723053, 36.540268, 47.282177>,  <36.202129, 36.929180, 46.841705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.723053, 36.540268, 47.282177> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.000423, 36.683823, 47.532093>,  <36.166847, 36.769955, 47.682041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.000423, 36.683823, 47.532093>,  <35.723053, 36.540268, 47.282177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.000423, 36.683823, 47.532093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718447, 0.410234, 0.561731,
		-0.054711, -0.838396, 0.542309,
		0.693426, 0.358887, 0.624788,
		36.208450, 36.791489, 47.719528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.351574, 36.346153, 47.926640>,  <35.723053, 36.540268, 47.282177>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.351574, 36.346153, 47.926640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.624271, 36.633156, 47.983784>,  <35.787888, 36.805359, 48.018070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.624271, 36.633156, 47.983784>,  <35.351574, 36.346153, 47.926640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.624271, 36.633156, 47.983784> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575030, 0.404805, 0.710966,
		0.452296, -0.566842, 0.688562,
		0.681739, 0.717512, 0.142860,
		35.828793, 36.848408, 48.026642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.357063, 36.361629, 48.683170>,  <35.351574, 36.346153, 47.926640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.357063, 36.361629, 48.683170> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.511463, 36.696960, 48.529175>,  <35.604103, 36.898159, 48.436775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.511463, 36.696960, 48.529175>,  <35.357063, 36.361629, 48.683170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.511463, 36.696960, 48.529175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386193, 0.525852, 0.757848,
		0.837772, -0.143845, 0.526732,
		0.385996, 0.838324, -0.384993,
		35.627262, 36.948460, 48.413677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.464695, 36.714844, 49.256847>,  <35.357063, 36.361629, 48.683170>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.464695, 36.714844, 49.256847> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.493771, 37.024139, 49.004875>,  <35.511215, 37.209717, 48.853691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.493771, 37.024139, 49.004875>,  <35.464695, 36.714844, 49.256847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.493771, 37.024139, 49.004875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556438, 0.555608, 0.617800,
		0.827703, 0.305609, 0.470649,
		0.072691, 0.773242, -0.629931,
		35.515579, 37.256111, 48.815895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.580784, 37.260273, 49.655392>,  <35.464695, 36.714844, 49.256847>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.580784, 37.260273, 49.655392> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.438602, 37.410397, 49.312977>,  <35.353294, 37.500469, 49.107529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.438602, 37.410397, 49.312977>,  <35.580784, 37.260273, 49.655392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.438602, 37.410397, 49.312977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553360, 0.653605, 0.516326,
		0.753291, 0.657226, -0.024646,
		-0.355452, 0.375306, -0.856037,
		35.331966, 37.522987, 49.056168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.538296, 37.961922, 49.732533>,  <35.580784, 37.260273, 49.655392>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.538296, 37.961922, 49.732533> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.273792, 37.909233, 49.437130>,  <35.115089, 37.877621, 49.259888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.273792, 37.909233, 49.437130>,  <35.538296, 37.961922, 49.732533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.273792, 37.909233, 49.437130> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536744, 0.770832, 0.343109,
		0.524065, 0.623271, -0.580422,
		-0.661258, -0.131726, -0.738503,
		35.075417, 37.869717, 49.215580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.415627, 38.580887, 49.507717>,  <35.538296, 37.961922, 49.732533>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.415627, 38.580887, 49.507717> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.092297, 38.411217, 49.344410>,  <34.898300, 38.309414, 49.246426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.092297, 38.411217, 49.344410>,  <35.415627, 38.580887, 49.507717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.092297, 38.411217, 49.344410> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548034, 0.795491, 0.258559,
		0.215102, 0.432746, -0.875478,
		-0.808325, -0.424175, -0.408271,
		34.849800, 38.283962, 49.221928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.055901, 39.058857, 49.119015>,  <35.415627, 38.580887, 49.507717>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.055901, 39.058857, 49.119015> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.782635, 38.772373, 49.176064>,  <34.618675, 38.600483, 49.210293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.782635, 38.772373, 49.176064>,  <35.055901, 39.058857, 49.119015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.782635, 38.772373, 49.176064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672628, 0.693172, 0.259006,
		-0.284361, 0.081013, -0.955288,
		-0.683162, -0.716205, 0.142619,
		34.577686, 38.557510, 49.218849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.453964, 39.411667, 48.975670>,  <35.055901, 39.058857, 49.119015>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.453964, 39.411667, 48.975670> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.316586, 39.083603, 49.158703>,  <34.234158, 38.886765, 49.268524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.316586, 39.083603, 49.158703>,  <34.453964, 39.411667, 48.975670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.316586, 39.083603, 49.158703> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754364, 0.531135, 0.385787,
		-0.559445, -0.212686, -0.801116,
		-0.343449, -0.820159, 0.457583,
		34.213551, 38.837555, 49.295979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.755508, 39.391647, 48.986504>,  <34.453964, 39.411667, 48.975670>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.755508, 39.391647, 48.986504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.809818, 39.151299, 49.301598>,  <33.842403, 39.007092, 49.490654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.809818, 39.151299, 49.301598>,  <33.755508, 39.391647, 48.986504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.809818, 39.151299, 49.301598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763996, 0.442712, 0.469379,
		-0.630773, -0.665555, -0.398950,
		0.135778, -0.600868, 0.787732,
		33.850552, 38.971039, 49.537918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.078758, 39.090904, 49.209919>,  <33.755508, 39.391647, 48.986504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.078758, 39.090904, 49.209919> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.317429, 39.072521, 49.530384>,  <33.460632, 39.061493, 49.722664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.317429, 39.072521, 49.530384>,  <33.078758, 39.090904, 49.209919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.317429, 39.072521, 49.530384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765850, 0.265577, 0.585613,
		-0.239682, -0.962994, 0.123269,
		0.596679, -0.045955, 0.801163,
		33.496433, 39.058735, 49.770733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.652370, 38.859867, 49.769428>,  <33.078758, 39.090904, 49.209919>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.652370, 38.859867, 49.769428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.967819, 39.048660, 49.927067>,  <33.157089, 39.161938, 50.021648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.967819, 39.048660, 49.927067>,  <32.652370, 38.859867, 49.769428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.967819, 39.048660, 49.927067> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571465, 0.326030, 0.753081,
		0.226954, -0.819107, 0.526835,
		0.788619, 0.471983, 0.394098,
		33.204403, 39.190254, 50.045296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.731354, 38.483532, 50.414154>,  <32.652370, 38.859867, 49.769428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.731354, 38.483532, 50.414154> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.932949, 38.825508, 50.463268>,  <33.053905, 39.030693, 50.492737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.932949, 38.825508, 50.463268>,  <32.731354, 38.483532, 50.414154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.932949, 38.825508, 50.463268> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557274, 0.213263, 0.802474,
		0.659881, -0.472861, 0.583918,
		0.503987, 0.854939, 0.122785,
		33.084145, 39.081989, 50.500103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.911324, 38.508732, 51.099747>,  <32.731354, 38.483532, 50.414154>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.911324, 38.508732, 51.099747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.919312, 38.874611, 50.938290>,  <32.924103, 39.094139, 50.841415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.919312, 38.874611, 50.938290>,  <32.911324, 38.508732, 51.099747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.919312, 38.874611, 50.938290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565828, 0.343185, 0.749708,
		0.824281, 0.213424, 0.524415,
		0.019966, 0.914699, -0.403642,
		32.925301, 39.149021, 50.817196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.001068, 38.996899, 51.709602>,  <32.911324, 38.508732, 51.099747>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.001068, 38.996899, 51.709602> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.820290, 39.234299, 51.443218>,  <32.711823, 39.376740, 51.283390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.820290, 39.234299, 51.443218>,  <33.001068, 38.996899, 51.709602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.820290, 39.234299, 51.443218> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502921, 0.447069, 0.739730,
		0.736762, 0.669240, 0.096437,
		-0.451943, 0.593504, -0.665958,
		32.684708, 39.412350, 51.243431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.875557, 39.751781, 51.978561>,  <33.001068, 38.996899, 51.709602>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.875557, 39.751781, 51.978561> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.639332, 39.777008, 51.656750>,  <32.497597, 39.792145, 51.463665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.639332, 39.777008, 51.656750>,  <32.875557, 39.751781, 51.978561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.639332, 39.777008, 51.656750> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602324, 0.629039, 0.491442,
		0.537071, 0.774811, -0.333500,
		-0.590559, 0.063064, -0.804526,
		32.462166, 39.795929, 51.415390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.718105, 40.397232, 52.037476>,  <32.875557, 39.751781, 51.978561>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.718105, 40.397232, 52.037476> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.438568, 40.248589, 51.793011>,  <32.270847, 40.159401, 51.646332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.438568, 40.248589, 51.793011>,  <32.718105, 40.397232, 52.037476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.438568, 40.248589, 51.793011> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643554, 0.699593, 0.310497,
		0.312183, 0.610307, -0.728057,
		-0.698842, -0.371612, -0.611167,
		32.228916, 40.137104, 51.609661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.428127, 41.096119, 51.914974>,  <32.718105, 40.397232, 52.037476>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.428127, 41.096119, 51.914974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.171295, 40.800152, 51.834709>,  <32.017197, 40.622574, 51.786549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.171295, 40.800152, 51.834709>,  <32.428127, 41.096119, 51.914974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.171295, 40.800152, 51.834709> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755843, 0.567187, 0.327108,
		-0.128218, 0.361699, -0.923436,
		-0.642076, -0.739914, -0.200664,
		31.978672, 40.578178, 51.774509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.852468, 41.425846, 51.547619>,  <32.428127, 41.096119, 51.914974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.852468, 41.425846, 51.547619> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.722998, 41.100170, 51.740421>,  <31.645315, 40.904766, 51.856102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.722998, 41.100170, 51.740421>,  <31.852468, 41.425846, 51.547619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.722998, 41.100170, 51.740421> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703219, 0.547837, 0.453164,
		-0.633022, -0.192279, -0.749874,
		-0.323675, -0.814188, 0.482008,
		31.625895, 40.855915, 51.885025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.121107, 41.402176, 51.449440>,  <31.852468, 41.425846, 51.547619>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.121107, 41.402176, 51.449440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.154711, 41.197418, 51.791412>,  <31.174873, 41.074566, 51.996597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.154711, 41.197418, 51.791412>,  <31.121107, 41.402176, 51.449440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.154711, 41.197418, 51.791412> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717579, 0.564216, 0.408338,
		-0.691392, -0.647786, -0.319923,
		0.084009, -0.511892, 0.854932,
		31.179914, 41.043850, 52.047894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.449621, 41.358589, 51.713806>,  <31.121107, 41.402176, 51.449440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.449621, 41.358589, 51.713806> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.636122, 41.255741, 52.052391>,  <30.748022, 41.194031, 52.255543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.636122, 41.255741, 52.052391>,  <30.449621, 41.358589, 51.713806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.636122, 41.255741, 52.052391> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755107, 0.382827, 0.532220,
		-0.460894, -0.887317, -0.015662,
		0.466252, -0.257123, 0.846461,
		30.775997, 41.178604, 52.306328>
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
