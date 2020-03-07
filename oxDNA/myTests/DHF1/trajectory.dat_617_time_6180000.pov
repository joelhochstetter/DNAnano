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
	sky <-0, 1, 0>
	up <-0, 1, 0>
	right 1.6 * <1, 0, 0>
	location <2.5, 2.5, 11.1562>
	look_at <2.5, 2.5, 2.5>
	direction <0, 0, -8.6562>
	angle 67.0682
}


# declare cpy_camera_pos = <2.5, 2.5, 11.1562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 4
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1, 1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1, -1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<2.681986, 1.382317, -0.249056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.497234, 1.696632, -0.084519>,  <2.386383, 1.885222, 0.014203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.497234, 1.696632, -0.084519>,  <2.681986, 1.382317, -0.249056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.497234, 1.696632, -0.084519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638587, -0.027232, 0.769067,
		0.615527, 0.617894, -0.489217,
		-0.461880, 0.785790, 0.411342,
		2.358670, 1.932369, 0.038883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.200628, 1.871823, -0.005020>,  <2.681986, 1.382317, -0.249056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.200628, 1.871823, -0.005020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.868904, 1.894739, 0.217319>,  <2.669870, 1.908489, 0.350722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.868904, 1.894739, 0.217319>,  <3.200628, 1.871823, -0.005020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.868904, 1.894739, 0.217319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552414, 0.233909, 0.800079,
		-0.084180, 0.970569, -0.225631,
		-0.829309, 0.057291, 0.555846,
		2.620111, 1.911926, 0.384072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.167755, 2.505833, 0.318967>,  <3.200628, 1.871823, -0.005020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.167755, 2.505833, 0.318967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.960957, 2.227484, 0.518356>,  <2.836877, 2.060474, 0.637990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.960957, 2.227484, 0.518356>,  <3.167755, 2.505833, 0.318967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.960957, 2.227484, 0.518356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480286, 0.246212, 0.841846,
		-0.708548, 0.674642, 0.206927,
		-0.516997, -0.695872, 0.498474,
		2.805858, 2.018722, 0.667899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.955813, 2.616124, 0.371433>,  <3.167755, 2.505833, 0.318967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.955813, 2.616124, 0.371433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.197666, 2.338900, 0.528449>,  <4.342778, 2.172565, 0.622659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.197666, 2.338900, 0.528449>,  <3.955813, 2.616124, 0.371433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.197666, 2.338900, 0.528449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475618, -0.081164, -0.875899,
		0.638911, 0.716296, 0.280557,
		0.604632, -0.693060, 0.392540,
		4.379056, 2.130981, 0.646211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.618590, 2.785081, 0.086215>,  <3.955813, 2.616124, 0.371433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.618590, 2.785081, 0.086215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.679073, 2.418287, 0.233877>,  <4.715363, 2.198211, 0.322474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.679073, 2.418287, 0.233877>,  <4.618590, 2.785081, 0.086215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.679073, 2.418287, 0.233877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555139, -0.230222, -0.799262,
		0.817898, 0.325786, 0.474242,
		0.151208, -0.916985, 0.369155,
		4.724435, 2.143192, 0.344624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.278745, 2.577325, 0.106359>,  <4.618590, 2.785081, 0.086215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.278745, 2.577325, 0.106359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.098896, 2.221186, 0.077740>,  <4.990986, 2.007502, 0.060568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.098896, 2.221186, 0.077740>,  <5.278745, 2.577325, 0.106359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.098896, 2.221186, 0.077740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302265, -0.076289, -0.950166,
		0.840521, -0.448843, 0.303422,
		-0.449623, -0.890348, -0.071547,
		4.964009, 1.954081, 0.056276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.764871, 2.106488, -0.203332>,  <5.278745, 2.577325, 0.106359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.764871, 2.106488, -0.203332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.411348, 1.933661, -0.275115>,  <5.199235, 1.829964, -0.318185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.411348, 1.933661, -0.275115>,  <5.764871, 2.106488, -0.203332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.411348, 1.933661, -0.275115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209317, -0.022123, -0.977598,
		0.418419, -0.901569, 0.109992,
		-0.883805, -0.432069, -0.179457,
		5.146207, 1.804040, -0.328952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.876681, 1.460496, -0.454530>,  <5.764871, 2.106488, -0.203332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.876681, 1.460496, -0.454530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.524519, 1.576002, -0.604996>,  <5.313221, 1.645306, -0.695275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.524519, 1.576002, -0.604996>,  <5.876681, 1.460496, -0.454530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.524519, 1.576002, -0.604996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386027, -0.024333, -0.922167,
		-0.275444, -0.957090, -0.090049,
		-0.880406, 0.288767, -0.376165,
		5.260397, 1.662632, -0.717845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<5.579375, 2.116516, 2.812086> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.317993, 1.818357, 2.864813>,  <5.161164, 1.639461, 2.896449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.317993, 1.818357, 2.864813>,  <5.579375, 2.116516, 2.812086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.317993, 1.818357, 2.864813> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260209, 0.384722, 0.885596,
		-0.710836, 0.544397, -0.445359,
		-0.653455, -0.745399, 0.131818,
		5.121957, 1.594737, 2.904358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.116239, 2.486499, 3.199743>,  <5.579375, 2.116516, 2.812086>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.116239, 2.486499, 3.199743> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.025734, 2.101817, 3.261618>,  <4.971431, 1.871008, 3.298742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.025734, 2.101817, 3.261618>,  <5.116239, 2.486499, 3.199743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.025734, 2.101817, 3.261618> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230089, 0.207079, 0.950883,
		-0.946501, 0.179557, -0.268132,
		-0.226262, -0.961706, 0.154686,
		4.957855, 1.813305, 3.308023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.373347, 2.316573, 3.476025>,  <5.116239, 2.486499, 3.199743>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.373347, 2.316573, 3.476025> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.643250, 2.056404, 3.615541>,  <4.805191, 1.900303, 3.699251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.643250, 2.056404, 3.615541>,  <4.373347, 2.316573, 3.476025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.643250, 2.056404, 3.615541> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310074, 0.179027, 0.933704,
		-0.669745, -0.738173, -0.080879,
		0.674756, -0.650423, 0.348790,
		4.845676, 1.861277, 3.720179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.046655, 1.848371, 3.898880>,  <4.373347, 2.316573, 3.476025>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.046655, 1.848371, 3.898880> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.428596, 1.832354, 4.016624>,  <4.657762, 1.822743, 4.087271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.428596, 1.832354, 4.016624>,  <4.046655, 1.848371, 3.898880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.428596, 1.832354, 4.016624> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296510, -0.067514, 0.952640,
		-0.018268, -0.996915, -0.076337,
		0.954854, -0.040037, 0.294362,
		4.715053, 1.820340, 4.104933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.001474, 1.288737, 4.364152>,  <4.046655, 1.848371, 3.898880>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.001474, 1.288737, 4.364152> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.355209, 1.456872, 4.445406>,  <4.567451, 1.557753, 4.494158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.355209, 1.456872, 4.445406>,  <4.001474, 1.288737, 4.364152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.355209, 1.456872, 4.445406> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150425, -0.155355, 0.976339,
		0.441949, -0.893969, -0.074157,
		0.884337, 0.420337, 0.203135,
		4.620511, 1.582973, 4.506346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.280840, 0.877476, 5.017952>,  <4.001474, 1.288737, 4.364152>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.280840, 0.877476, 5.017952> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.502388, 1.210380, 5.027523>,  <4.635317, 1.410122, 5.033266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.502388, 1.210380, 5.027523>,  <4.280840, 0.877476, 5.017952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.502388, 1.210380, 5.027523> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162483, 0.079857, 0.983475,
		0.816595, -0.548605, 0.179458,
		0.553870, 0.832259, 0.023928,
		4.668549, 1.460057, 5.034701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.692888, 0.835440, 5.595521>,  <4.280840, 0.877476, 5.017952>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.692888, 0.835440, 5.595521> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.669876, 1.225173, 5.508467>,  <4.656069, 1.459013, 5.456234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.669876, 1.225173, 5.508467>,  <4.692888, 0.835440, 5.595521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.669876, 1.225173, 5.508467> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317553, 0.188816, 0.929252,
		0.946494, 0.122570, 0.298539,
		-0.057530, 0.974333, -0.217636,
		4.652617, 1.517473, 5.443176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.015758, 1.164933, 6.146658>,  <4.692888, 0.835440, 5.595521>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.015758, 1.164933, 6.146658> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.775459, 1.433786, 5.973528>,  <4.631280, 1.595099, 5.869650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.775459, 1.433786, 5.973528>,  <5.015758, 1.164933, 6.146658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.775459, 1.433786, 5.973528> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342867, 0.272468, 0.899001,
		0.722181, 0.688474, 0.066768,
		-0.600747, 0.672134, -0.432826,
		4.595235, 1.635427, 5.843680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
