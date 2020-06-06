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
	<24.221447, 34.699966, 35.320744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.341362, 34.728020, 34.940174>,  <24.413311, 34.744850, 34.711834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.341362, 34.728020, 34.940174>,  <24.221447, 34.699966, 35.320744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.341362, 34.728020, 34.940174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938233, 0.158925, 0.307345,
		0.172759, -0.984797, -0.018154,
		0.299787, 0.070130, -0.951425,
		24.431297, 34.749058, 34.654747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.676384, 34.242870, 35.229721>,  <24.221447, 34.699966, 35.320744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.676384, 34.242870, 35.229721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.748747, 34.515396, 34.946007>,  <24.792166, 34.678913, 34.775780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.748747, 34.515396, 34.946007>,  <24.676384, 34.242870, 35.229721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.748747, 34.515396, 34.946007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943904, 0.082297, 0.319803,
		0.276258, -0.727349, -0.628207,
		0.180908, 0.681315, -0.709283,
		24.803019, 34.719791, 34.733223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.239380, 33.977726, 34.787876>,  <24.676384, 34.242870, 35.229721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.239380, 33.977726, 34.787876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.242321, 34.377449, 34.802490>,  <25.244085, 34.617283, 34.811260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.242321, 34.377449, 34.802490>,  <25.239380, 33.977726, 34.787876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.242321, 34.377449, 34.802490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890383, -0.023172, 0.454623,
		0.455154, 0.029190, -0.889934,
		0.007351, 0.999305, 0.036537,
		25.244526, 34.677242, 34.813450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.998930, 34.269314, 34.572014>,  <25.239380, 33.977726, 34.787876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.998930, 34.269314, 34.572014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.791111, 34.469189, 34.849255>,  <25.666420, 34.589111, 35.015598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.791111, 34.469189, 34.849255>,  <25.998930, 34.269314, 34.572014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.791111, 34.469189, 34.849255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779647, -0.054663, 0.623829,
		0.349604, 0.864482, -0.361176,
		-0.519545, 0.499683, 0.693101,
		25.635248, 34.619095, 35.057186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.266903, 34.946060, 34.647820>,  <25.998930, 34.269314, 34.572014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.266903, 34.946060, 34.647820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.102297, 34.766895, 34.965317>,  <26.003532, 34.659397, 35.155815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.102297, 34.766895, 34.965317>,  <26.266903, 34.946060, 34.647820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.102297, 34.766895, 34.965317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851140, 0.122557, 0.510432,
		-0.325909, 0.885636, 0.330805,
		-0.411515, -0.447916, 0.793743,
		25.978842, 34.632519, 35.203438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.141737, 35.409595, 35.250740>,  <26.266903, 34.946060, 34.647820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.141737, 35.409595, 35.250740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.236441, 35.035973, 35.357685>,  <26.293262, 34.811798, 35.421852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.236441, 35.035973, 35.357685>,  <26.141737, 35.409595, 35.250740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.236441, 35.035973, 35.357685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711893, 0.354053, 0.606510,
		-0.661177, 0.046739, 0.748773,
		0.236758, -0.934056, 0.267365,
		26.307468, 34.755756, 35.437893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.084478, 35.488369, 35.931286>,  <26.141737, 35.409595, 35.250740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.084478, 35.488369, 35.931286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.340837, 35.201233, 35.822510>,  <26.494654, 35.028950, 35.757244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.340837, 35.201233, 35.822510>,  <26.084478, 35.488369, 35.931286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.340837, 35.201233, 35.822510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618097, 0.272512, 0.737355,
		-0.455196, -0.640658, 0.618348,
		0.640900, -0.717840, -0.271943,
		26.533108, 34.985882, 35.740929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.478901, 35.489082, 36.462914>,  <26.084478, 35.488369, 35.931286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.478901, 35.489082, 36.462914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.684175, 35.249493, 36.217030>,  <26.807341, 35.105740, 36.069500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.684175, 35.249493, 36.217030>,  <26.478901, 35.489082, 36.462914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.684175, 35.249493, 36.217030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800959, 0.076876, 0.593763,
		-0.308392, -0.797069, 0.519206,
		0.513184, -0.598975, -0.614712,
		26.838131, 35.069801, 36.032616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.670132, 34.915318, 36.805416>,  <26.478901, 35.489082, 36.462914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.670132, 34.915318, 36.805416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.938412, 34.975132, 36.514816>,  <27.099380, 35.011021, 36.340458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.938412, 34.975132, 36.514816>,  <26.670132, 34.915318, 36.805416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.938412, 34.975132, 36.514816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709967, 0.154123, 0.687163,
		0.214723, -0.976671, -0.002792,
		0.670701, 0.149532, -0.726498,
		27.139622, 35.019993, 36.296867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.387659, 34.437233, 36.874729>,  <26.670132, 34.915318, 36.805416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.387659, 34.437233, 36.874729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.427372, 34.794811, 36.699913>,  <27.451199, 35.009357, 36.595024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.427372, 34.794811, 36.699913>,  <27.387659, 34.437233, 36.874729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.427372, 34.794811, 36.699913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693732, 0.252685, 0.674452,
		0.713357, -0.370147, -0.595073,
		0.099280, 0.893947, -0.437038,
		27.457155, 35.062996, 36.568802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.087826, 34.575451, 36.865097>,  <27.387659, 34.437233, 36.874729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.087826, 34.575451, 36.865097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.888714, 34.922195, 36.854080>,  <27.769247, 35.130241, 36.847469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.888714, 34.922195, 36.854080>,  <28.087826, 34.575451, 36.865097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.888714, 34.922195, 36.854080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586916, 0.360066, 0.725177,
		0.638548, 0.344815, -0.688011,
		-0.497782, 0.866865, -0.027542,
		27.739380, 35.182255, 36.845818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.534931, 35.154449, 36.984741>,  <28.087826, 34.575451, 36.865097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.534931, 35.154449, 36.984741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.180571, 35.285030, 37.116562>,  <27.967955, 35.363380, 37.195656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.180571, 35.285030, 37.116562>,  <28.534931, 35.154449, 36.984741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.180571, 35.285030, 37.116562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431866, 0.321114, 0.842839,
		0.169324, 0.888996, -0.425460,
		-0.885901, 0.326455, 0.329555,
		27.914801, 35.382965, 37.215427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.610857, 35.930706, 37.294067>,  <28.534931, 35.154449, 36.984741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.610857, 35.930706, 37.294067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.331972, 35.700142, 37.464546>,  <28.164640, 35.561802, 37.566833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.331972, 35.700142, 37.464546>,  <28.610857, 35.930706, 37.294067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.331972, 35.700142, 37.464546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490630, 0.049783, 0.869945,
		-0.522663, 0.815643, 0.248095,
		-0.697213, -0.576410, 0.426199,
		28.122808, 35.527218, 37.592407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.226315, 36.180214, 37.897167>,  <28.610857, 35.930706, 37.294067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.226315, 36.180214, 37.897167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.195662, 35.785534, 37.954502>,  <28.177271, 35.548725, 37.988903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.195662, 35.785534, 37.954502>,  <28.226315, 36.180214, 37.897167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.195662, 35.785534, 37.954502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483796, 0.088904, 0.870653,
		-0.871819, 0.136064, 0.470550,
		-0.076631, -0.986703, 0.143335,
		28.172672, 35.489525, 37.997501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.021416, 36.045918, 38.536594>,  <28.226315, 36.180214, 37.897167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.021416, 36.045918, 38.536594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.229355, 35.725254, 38.418541>,  <28.354118, 35.532856, 38.347710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.229355, 35.725254, 38.418541>,  <28.021416, 36.045918, 38.536594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.229355, 35.725254, 38.418541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535162, 0.036324, 0.843968,
		-0.665852, -0.596680, 0.447899,
		0.519849, -0.801657, -0.295134,
		28.385309, 35.484756, 38.330002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.158304, 35.616573, 39.077950>,  <28.021416, 36.045918, 38.536594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.158304, 35.616573, 39.077950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.460175, 35.542583, 38.826157>,  <28.641296, 35.498188, 38.675079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.460175, 35.542583, 38.826157>,  <28.158304, 35.616573, 39.077950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.460175, 35.542583, 38.826157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637747, -0.018496, 0.770024,
		-0.154078, -0.982569, 0.104008,
		0.754678, -0.184975, -0.629480,
		28.686579, 35.487091, 38.637314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.601410, 35.325993, 39.451633>,  <28.158304, 35.616573, 39.077950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.601410, 35.325993, 39.451633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.859972, 35.357594, 39.148075>,  <29.015108, 35.376553, 38.965939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.859972, 35.357594, 39.148075>,  <28.601410, 35.325993, 39.451633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.859972, 35.357594, 39.148075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759177, -0.165981, 0.629365,
		-0.076241, -0.982959, -0.167268,
		0.646403, 0.079003, -0.758895,
		29.053892, 35.381294, 38.920406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.054670, 34.757229, 39.344948>,  <28.601410, 35.325993, 39.451633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.054670, 34.757229, 39.344948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.278852, 35.059940, 39.210384>,  <29.413363, 35.241566, 39.129646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.278852, 35.059940, 39.210384>,  <29.054670, 34.757229, 39.344948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.278852, 35.059940, 39.210384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783861, -0.353623, 0.510404,
		0.267301, -0.549759, -0.791401,
		0.560457, 0.756780, -0.336411,
		29.446989, 35.286976, 39.109463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.785826, 34.485104, 39.199505>,  <29.054670, 34.757229, 39.344948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.785826, 34.485104, 39.199505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.809973, 34.883739, 39.222019>,  <29.824461, 35.122921, 39.235527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.809973, 34.883739, 39.222019>,  <29.785826, 34.485104, 39.199505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.809973, 34.883739, 39.222019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945341, -0.075183, 0.317300,
		0.320449, 0.034054, -0.946654,
		0.060367, 0.996588, 0.056285,
		29.828083, 35.182716, 39.238903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.373539, 34.138130, 39.617584>,  <29.785826, 34.485104, 39.199505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.373539, 34.138130, 39.617584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.705265, 34.357559, 39.660118>,  <30.904301, 34.489216, 39.685638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.705265, 34.357559, 39.660118>,  <30.373539, 34.138130, 39.617584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.705265, 34.357559, 39.660118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227458, 0.157601, 0.960950,
		0.510393, -0.821116, 0.255478,
		0.829314, 0.548572, 0.106330,
		30.954060, 34.522129, 39.692017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.785877, 34.578770, 39.152477>,  <30.373539, 34.138130, 39.617584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.785877, 34.578770, 39.152477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.042383, 34.885517, 39.141975>,  <31.196287, 35.069565, 39.135674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.042383, 34.885517, 39.141975>,  <30.785877, 34.578770, 39.152477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.042383, 34.885517, 39.141975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368355, -0.337681, -0.866191,
		-0.673121, 0.545787, -0.499023,
		0.641267, 0.766869, -0.026257,
		31.234764, 35.115578, 39.134098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.595514, 35.045292, 38.597599>,  <30.785877, 34.578770, 39.152477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.595514, 35.045292, 38.597599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.986151, 35.051220, 38.683437>,  <31.220533, 35.054775, 38.734940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.986151, 35.051220, 38.683437>,  <30.595514, 35.045292, 38.597599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.986151, 35.051220, 38.683437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211177, -0.255814, -0.943379,
		0.040916, 0.966612, -0.252956,
		0.976591, 0.014819, 0.214593,
		31.279129, 35.055664, 38.747814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.953056, 35.444839, 38.090210>,  <30.595514, 35.045292, 38.597599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.953056, 35.444839, 38.090210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.246943, 35.231403, 38.257771>,  <31.423273, 35.103344, 38.358307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.246943, 35.231403, 38.257771>,  <30.953056, 35.444839, 38.090210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.246943, 35.231403, 38.257771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404242, -0.151527, -0.902013,
		0.544779, 0.832060, 0.104370,
		0.734714, -0.533588, 0.418902,
		31.467356, 35.071327, 38.383442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.584034, 35.502525, 37.779922>,  <30.953056, 35.444839, 38.090210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.584034, 35.502525, 37.779922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.786161, 35.157890, 37.760654>,  <31.907438, 34.951111, 37.749092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.786161, 35.157890, 37.760654>,  <31.584034, 35.502525, 37.779922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.786161, 35.157890, 37.760654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423737, 0.296372, -0.855927,
		0.751732, 0.412104, 0.514848,
		0.505317, -0.861588, -0.048169,
		31.937757, 34.899414, 37.746204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.398705, 35.433086, 37.901512>,  <31.584034, 35.502525, 37.779922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.398705, 35.433086, 37.901512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.239841, 35.179733, 37.635853>,  <32.144524, 35.027721, 37.476456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.239841, 35.179733, 37.635853>,  <32.398705, 35.433086, 37.901512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.239841, 35.179733, 37.635853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464780, 0.485195, -0.740652,
		0.791356, -0.602840, 0.101682,
		-0.397159, -0.633379, -0.664150,
		32.120693, 34.989719, 37.436607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.880672, 35.173851, 37.512226>,  <32.398705, 35.433086, 37.901512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.880672, 35.173851, 37.512226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.555889, 35.135624, 37.281887>,  <32.361019, 35.112690, 37.143684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.555889, 35.135624, 37.281887>,  <32.880672, 35.173851, 37.512226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.555889, 35.135624, 37.281887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520610, 0.327605, -0.788442,
		0.263996, -0.939969, -0.216249,
		-0.811955, -0.095564, -0.575844,
		32.312302, 35.106956, 37.109135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.151012, 34.772289, 36.983662>,  <32.880672, 35.173851, 37.512226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.151012, 34.772289, 36.983662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.819798, 34.967789, 36.873764>,  <32.621067, 35.085087, 36.807827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.819798, 34.967789, 36.873764>,  <33.151012, 34.772289, 36.983662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.819798, 34.967789, 36.873764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449627, 0.286102, -0.846157,
		-0.334949, -0.824181, -0.456656,
		-0.828037, 0.488744, -0.274744,
		32.571388, 35.114410, 36.791340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.689571, 34.597359, 36.424183>,  <33.151012, 34.772289, 36.983662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.689571, 34.597359, 36.424183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.516937, 34.893883, 36.218586>,  <33.413357, 35.071796, 36.095226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.516937, 34.893883, 36.218586>,  <33.689571, 34.597359, 36.424183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.516937, 34.893883, 36.218586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466277, 0.671098, 0.576379,
		0.772218, 0.009092, -0.635292,
		-0.431584, 0.741313, -0.513995,
		33.387463, 35.116276, 36.064388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.250923, 35.155525, 36.262077>,  <33.689571, 34.597359, 36.424183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.250923, 35.155525, 36.262077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.893723, 35.331753, 36.225323>,  <33.679401, 35.437489, 36.203270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.893723, 35.331753, 36.225323>,  <34.250923, 35.155525, 36.262077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.893723, 35.331753, 36.225323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364004, 0.827117, 0.428227,
		0.264661, 0.348963, -0.898988,
		-0.893004, 0.440570, -0.091882,
		33.625820, 35.463924, 36.197758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.785862, 35.583015, 35.997547>,  <34.250923, 35.155525, 36.262077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.785862, 35.583015, 35.997547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.413288, 35.667374, 35.878918>,  <34.189743, 35.717987, 35.807739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.413288, 35.667374, 35.878918>,  <34.785862, 35.583015, 35.997547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.413288, 35.667374, 35.878918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349175, -0.747495, 0.565091,
		-0.102514, 0.629901, 0.769880,
		-0.931433, 0.210893, -0.296575,
		34.133858, 35.730640, 35.789944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.053146, 36.009014, 36.492779>,  <34.785862, 35.583015, 35.997547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.053146, 36.009014, 36.492779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.077614, 36.314854, 36.749416>,  <35.092293, 36.498360, 36.903400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.077614, 36.314854, 36.749416>,  <35.053146, 36.009014, 36.492779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.077614, 36.314854, 36.749416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728386, -0.473681, 0.495056,
		0.682431, 0.437049, -0.585898,
		0.061165, 0.764601, 0.641595,
		35.095963, 36.544235, 36.941895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.721336, 36.228382, 36.525269>,  <35.053146, 36.009014, 36.492779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.721336, 36.228382, 36.525269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.515789, 36.276375, 36.865044>,  <35.392460, 36.305172, 37.068909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.515789, 36.276375, 36.865044>,  <35.721336, 36.228382, 36.525269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.515789, 36.276375, 36.865044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612873, -0.641503, 0.461368,
		0.600274, 0.757679, 0.256113,
		-0.513866, 0.119983, 0.849438,
		35.361629, 36.312370, 37.119877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.079388, 35.938404, 37.115917>,  <35.721336, 36.228382, 36.525269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.079388, 35.938404, 37.115917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.744301, 35.989510, 37.328297>,  <35.543247, 36.020172, 37.455723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.744301, 35.989510, 37.328297>,  <36.079388, 35.938404, 37.115917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.744301, 35.989510, 37.328297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416811, -0.478591, 0.772800,
		0.352839, 0.868693, 0.347674,
		-0.837719, 0.127760, 0.530946,
		35.492985, 36.027836, 37.487579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.202217, 36.381897, 37.751945>,  <36.079388, 35.938404, 37.115917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.202217, 36.381897, 37.751945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.923252, 36.100086, 37.804504>,  <35.755875, 35.931000, 37.836040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.923252, 36.100086, 37.804504>,  <36.202217, 36.381897, 37.751945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.923252, 36.100086, 37.804504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595736, -0.467978, 0.652759,
		-0.398396, 0.533516, 0.746084,
		-0.697409, -0.704526, 0.131394,
		35.714031, 35.888729, 37.843922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.866928, 36.569195, 37.904030>,  <36.202217, 36.381897, 37.751945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.866928, 36.569195, 37.904030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.733723, 36.192078, 37.897820>,  <36.653801, 35.965809, 37.894093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.733723, 36.192078, 37.897820>,  <36.866928, 36.569195, 37.904030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.733723, 36.192078, 37.897820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769451, -0.281226, 0.573461,
		-0.545021, 0.179027, 0.819086,
		-0.333013, -0.942794, -0.015522,
		36.633820, 35.909241, 37.893162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.517139, 36.486393, 37.684856>,  <36.866928, 36.569195, 37.904030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.517139, 36.486393, 37.684856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.873600, 36.525394, 37.507614>,  <38.087475, 36.548794, 37.401268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.873600, 36.525394, 37.507614>,  <37.517139, 36.486393, 37.684856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.873600, 36.525394, 37.507614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384384, -0.681106, 0.623172,
		-0.241043, -0.725664, -0.644446,
		0.891149, 0.097503, -0.443109,
		38.140945, 36.554646, 37.374680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.699036, 35.841740, 37.357567>,  <37.517139, 36.486393, 37.684856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.699036, 35.841740, 37.357567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.035431, 36.044041, 37.434464>,  <38.237267, 36.165421, 37.480602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.035431, 36.044041, 37.434464>,  <37.699036, 35.841740, 37.357567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.035431, 36.044041, 37.434464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383302, -0.807674, 0.448042,
		0.381864, -0.303112, -0.873100,
		0.840987, 0.505752, 0.192238,
		38.287727, 36.195766, 37.492134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.178825, 35.272575, 37.268990>,  <37.699036, 35.841740, 37.357567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.178825, 35.272575, 37.268990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.325859, 35.551369, 37.515274>,  <38.414078, 35.718643, 37.663044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.325859, 35.551369, 37.515274>,  <38.178825, 35.272575, 37.268990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.325859, 35.551369, 37.515274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438729, -0.713722, 0.546001,
		0.820001, 0.069432, -0.568135,
		0.367580, 0.696979, 0.615715,
		38.436134, 35.760464, 37.699989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.945930, 35.347130, 37.238285>,  <38.178825, 35.272575, 37.268990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.945930, 35.347130, 37.238285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.793770, 35.436356, 37.597294>,  <38.702473, 35.489891, 37.812698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.793770, 35.436356, 37.597294>,  <38.945930, 35.347130, 37.238285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.793770, 35.436356, 37.597294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451129, -0.802426, 0.390634,
		0.807328, 0.553494, 0.204613,
		-0.380400, 0.223063, 0.897518,
		38.679649, 35.503273, 37.866550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.010818, 35.519218, 36.529140>,  <38.945930, 35.347130, 37.238285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.010818, 35.519218, 36.529140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.720345, 35.617050, 36.272133>,  <38.546059, 35.675751, 36.117928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.720345, 35.617050, 36.272133>,  <39.010818, 35.519218, 36.529140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.720345, 35.617050, 36.272133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582805, -0.276746, -0.764035,
		-0.364686, -0.929296, 0.058424,
		-0.726184, 0.244583, -0.642524,
		38.502491, 35.690426, 36.079376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.137882, 35.102158, 35.962471>,  <39.010818, 35.519218, 36.529140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.137882, 35.102158, 35.962471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.932808, 35.410252, 35.810741>,  <38.809765, 35.595108, 35.719704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.932808, 35.410252, 35.810741>,  <39.137882, 35.102158, 35.962471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.932808, 35.410252, 35.810741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671713, 0.084664, -0.735957,
		-0.534747, -0.632112, -0.560785,
		-0.512686, 0.770238, -0.379324,
		38.779003, 35.641323, 35.696945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.966923, 35.025913, 35.205429>,  <39.137882, 35.102158, 35.962471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.966923, 35.025913, 35.205429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.988213, 35.420521, 35.267323>,  <39.000988, 35.657288, 35.304459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.988213, 35.420521, 35.267323>,  <38.966923, 35.025913, 35.205429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.988213, 35.420521, 35.267323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706077, 0.072390, -0.704426,
		-0.706132, 0.146746, -0.692707,
		0.053227, 0.986522, 0.154731,
		39.004181, 35.716476, 35.313744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.753059, 35.239567, 34.648438>,  <38.966923, 35.025913, 35.205429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.753059, 35.239567, 34.648438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.992519, 35.508564, 34.822506>,  <39.136196, 35.669964, 34.926949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.992519, 35.508564, 34.822506>,  <38.753059, 35.239567, 34.648438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.992519, 35.508564, 34.822506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658352, -0.103615, -0.745544,
		-0.456284, 0.732813, -0.504767,
		0.598646, 0.672494, 0.435172,
		39.172112, 35.710312, 34.953056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.812775, 35.891121, 34.227016>,  <38.753059, 35.239567, 34.648438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.812775, 35.891121, 34.227016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.130932, 35.763161, 34.432930>,  <39.321827, 35.686382, 34.556480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.130932, 35.763161, 34.432930>,  <38.812775, 35.891121, 34.227016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.130932, 35.763161, 34.432930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503877, -0.123002, -0.854973,
		0.336829, 0.939432, 0.063357,
		0.795396, -0.319904, 0.514788,
		39.369549, 35.667191, 34.587368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.369038, 36.335175, 34.120472>,  <38.812775, 35.891121, 34.227016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.369038, 36.335175, 34.120472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.514965, 35.965466, 34.165413>,  <39.602520, 35.743641, 34.192375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.514965, 35.965466, 34.165413>,  <39.369038, 36.335175, 34.120472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.514965, 35.965466, 34.165413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372873, 0.034467, -0.927242,
		0.853155, 0.380167, 0.357211,
		0.364819, -0.924275, 0.112348,
		39.624413, 35.688183, 34.199116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.980793, 36.747776, 34.121113>,  <39.369038, 36.335175, 34.120472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.980793, 36.747776, 34.121113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.326645, 36.549938, 34.085815>,  <40.534157, 36.431236, 34.064636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.326645, 36.549938, 34.085815>,  <39.980793, 36.747776, 34.121113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.326645, 36.549938, 34.085815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480875, -0.763838, -0.430477,
		0.145511, 0.414637, -0.898278,
		0.864630, -0.494599, -0.088242,
		40.586033, 36.401558, 34.059341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.483299, 37.285183, 34.206814>,  <39.980793, 36.747776, 34.121113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.483299, 37.285183, 34.206814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.800270, 37.503368, 34.097610>,  <39.990452, 37.634277, 34.032089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.800270, 37.503368, 34.097610>,  <39.483299, 37.285183, 34.206814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.800270, 37.503368, 34.097610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608942, 0.681496, -0.405898,
		-0.035347, 0.487890, 0.872189,
		0.792427, 0.545459, -0.273008,
		40.037998, 37.667007, 34.015709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.398201, 37.987465, 34.401176>,  <39.483299, 37.285183, 34.206814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.398201, 37.987465, 34.401176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.684547, 38.008297, 34.122662>,  <39.856354, 38.020798, 33.955551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.684547, 38.008297, 34.122662>,  <39.398201, 37.987465, 34.401176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.684547, 38.008297, 34.122662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456348, 0.789653, -0.410115,
		0.528469, 0.611339, 0.589054,
		0.715867, 0.052081, -0.696291,
		39.899307, 38.023922, 33.913773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.686111, 38.706646, 34.432205>,  <39.398201, 37.987465, 34.401176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.686111, 38.706646, 34.432205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.701595, 38.527275, 34.075012>,  <39.710884, 38.419651, 33.860695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.701595, 38.527275, 34.075012>,  <39.686111, 38.706646, 34.432205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.701595, 38.527275, 34.075012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459694, 0.785481, -0.414368,
		0.887234, 0.426537, -0.175736,
		0.038706, -0.448426, -0.892981,
		39.713207, 38.392746, 33.807117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.690704, 39.234592, 34.016548>,  <39.686111, 38.706646, 34.432205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.690704, 39.234592, 34.016548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.603271, 38.958946, 33.740189>,  <39.550812, 38.793560, 33.574371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.603271, 38.958946, 33.740189>,  <39.690704, 39.234592, 34.016548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.603271, 38.958946, 33.740189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623687, 0.643188, -0.444212,
		0.750491, 0.333808, -0.570382,
		-0.218582, -0.689117, -0.690898,
		39.537697, 38.752213, 33.532921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.782070, 39.499126, 33.319752>,  <39.690704, 39.234592, 34.016548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.782070, 39.499126, 33.319752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.529762, 39.190590, 33.285900>,  <39.378376, 39.005466, 33.265591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.529762, 39.190590, 33.285900>,  <39.782070, 39.499126, 33.319752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.529762, 39.190590, 33.285900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618301, 0.565507, -0.545807,
		0.468860, -0.291954, -0.833627,
		-0.630772, -0.771339, -0.084629,
		39.340530, 38.959187, 33.260509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.726116, 39.477177, 32.596832>,  <39.782070, 39.499126, 33.319752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.726116, 39.477177, 32.596832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.412701, 39.279327, 32.747257>,  <39.224651, 39.160618, 32.837513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.412701, 39.279327, 32.747257>,  <39.726116, 39.477177, 32.596832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.412701, 39.279327, 32.747257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594175, 0.419422, -0.686325,
		0.181742, -0.761206, -0.622524,
		-0.783535, -0.494622, 0.376062,
		39.177639, 39.130939, 32.860077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.325016, 39.072937, 32.037682>,  <39.726116, 39.477177, 32.596832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.325016, 39.072937, 32.037682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.065762, 39.181652, 32.322231>,  <38.910210, 39.246880, 32.492962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.065762, 39.181652, 32.322231>,  <39.325016, 39.072937, 32.037682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.065762, 39.181652, 32.322231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404523, 0.668578, -0.623991,
		-0.645203, -0.692197, -0.323383,
		-0.648132, 0.271785, 0.711378,
		38.871323, 39.263187, 32.535645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.746597, 39.395374, 31.673653>,  <39.325016, 39.072937, 32.037682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.746597, 39.395374, 31.673653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.704067, 39.550938, 32.039700>,  <38.678551, 39.644276, 32.259327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.704067, 39.550938, 32.039700>,  <38.746597, 39.395374, 31.673653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.704067, 39.550938, 32.039700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176966, 0.898242, -0.402299,
		-0.978457, -0.204718, -0.026679,
		-0.106322, 0.388911, 0.915120,
		38.672173, 39.667610, 32.314236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.096725, 39.766197, 31.804516>,  <38.746597, 39.395374, 31.673653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.096725, 39.766197, 31.804516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.373123, 39.934612, 32.039547>,  <38.538963, 40.035664, 32.180565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.373123, 39.934612, 32.039547>,  <38.096725, 39.766197, 31.804516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.373123, 39.934612, 32.039547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298382, 0.906510, -0.298678,
		-0.658402, 0.031062, 0.752025,
		0.690996, 0.421041, 0.587579,
		38.580421, 40.060925, 32.215820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.482883, 39.438702, 31.481033>,  <38.096725, 39.766197, 31.804516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.482883, 39.438702, 31.481033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.248974, 39.520248, 31.795099>,  <37.108627, 39.569176, 31.983538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.248974, 39.520248, 31.795099>,  <37.482883, 39.438702, 31.481033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.248974, 39.520248, 31.795099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504175, -0.849596, -0.154901,
		0.635493, -0.486441, 0.599603,
		-0.584771, 0.203866, 0.785164,
		37.073544, 39.581409, 32.030647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.554790, 38.835411, 31.943247>,  <37.482883, 39.438702, 31.481033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.554790, 38.835411, 31.943247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.198734, 39.015358, 31.972294>,  <36.985100, 39.123325, 31.989723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.198734, 39.015358, 31.972294>,  <37.554790, 38.835411, 31.943247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.198734, 39.015358, 31.972294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454737, -0.887217, -0.077842,
		0.029410, -0.102313, 0.994317,
		-0.890140, 0.449863, 0.072619,
		36.931694, 39.150318, 31.994080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.154598, 38.481422, 32.397846>,  <37.554790, 38.835411, 31.943247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.154598, 38.481422, 32.397846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.874912, 38.680820, 32.192867>,  <36.707100, 38.800461, 32.069881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.874912, 38.680820, 32.192867>,  <37.154598, 38.481422, 32.397846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.874912, 38.680820, 32.192867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456187, -0.863006, -0.217056,
		-0.550443, 0.082001, 0.830836,
		-0.699217, 0.498494, -0.512444,
		36.665146, 38.830368, 32.039135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.577290, 38.017384, 32.501656>,  <37.154598, 38.481422, 32.397846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.577290, 38.017384, 32.501656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.486160, 38.250851, 32.189907>,  <36.431480, 38.390930, 32.002857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.486160, 38.250851, 32.189907>,  <36.577290, 38.017384, 32.501656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.486160, 38.250851, 32.189907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701906, -0.653201, -0.284001,
		-0.674851, 0.482345, 0.558498,
		-0.227825, 0.583671, -0.779374,
		36.417812, 38.425953, 31.956095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.803829, 38.052349, 32.456707>,  <36.577290, 38.017384, 32.501656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.803829, 38.052349, 32.456707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.901878, 38.170250, 32.087265>,  <35.960709, 38.240990, 31.865601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.901878, 38.170250, 32.087265>,  <35.803829, 38.052349, 32.456707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.901878, 38.170250, 32.087265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570983, -0.726023, -0.383235,
		-0.783514, 0.621299, -0.009665,
		0.245121, 0.294751, -0.923600,
		35.975414, 38.258675, 31.810184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.259491, 38.278709, 32.060913>,  <35.803829, 38.052349, 32.456707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.259491, 38.278709, 32.060913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.511757, 38.182713, 31.765709>,  <35.663116, 38.125114, 31.588585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.511757, 38.182713, 31.765709>,  <35.259491, 38.278709, 32.060913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.511757, 38.182713, 31.765709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638891, -0.700408, -0.318192,
		-0.440547, 0.672183, -0.595053,
		0.630663, -0.239995, -0.738015,
		35.700954, 38.110714, 31.544304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.824085, 38.435581, 31.525181>,  <35.259491, 38.278709, 32.060913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.824085, 38.435581, 31.525181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.123066, 38.183819, 31.440176>,  <35.302456, 38.032761, 31.389174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.123066, 38.183819, 31.440176>,  <34.824085, 38.435581, 31.525181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.123066, 38.183819, 31.440176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637943, -0.590819, -0.493925,
		0.185326, 0.504754, -0.843135,
		0.747451, -0.629410, -0.212510,
		35.347301, 37.994995, 31.376423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.502357, 38.110756, 30.865959>,  <34.824085, 38.435581, 31.525181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.502357, 38.110756, 30.865959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.781715, 37.855907, 30.996391>,  <34.949329, 37.702999, 31.074650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.781715, 37.855907, 30.996391>,  <34.502357, 38.110756, 30.865959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.781715, 37.855907, 30.996391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454543, -0.746758, -0.485535,
		0.552846, 0.190877, -0.811127,
		0.698393, -0.637118, 0.326080,
		34.991234, 37.664772, 31.094215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.737068, 37.631908, 30.287800>,  <34.502357, 38.110756, 30.865959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.737068, 37.631908, 30.287800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.754219, 37.470261, 30.653280>,  <34.764507, 37.373272, 30.872568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.754219, 37.470261, 30.653280>,  <34.737068, 37.631908, 30.287800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.754219, 37.470261, 30.653280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663216, -0.695487, -0.276482,
		0.747199, -0.594128, -0.297834,
		0.042874, -0.404115, 0.913703,
		34.767082, 37.349026, 30.927391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.753120, 36.852699, 30.194706>,  <34.737068, 37.631908, 30.287800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.753120, 36.852699, 30.194706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.627872, 36.956593, 30.560108>,  <34.552723, 37.018929, 30.779350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.627872, 36.956593, 30.560108>,  <34.753120, 36.852699, 30.194706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.627872, 36.956593, 30.560108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789872, -0.605287, -0.098640,
		0.527314, -0.752440, 0.394682,
		-0.313116, 0.259734, 0.913508,
		34.533939, 37.034512, 30.834160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.279243, 36.747154, 29.674379>,  <34.753120, 36.852699, 30.194706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.279243, 36.747154, 29.674379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.670555, 36.689171, 29.615110>,  <35.905342, 36.654381, 29.579548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.670555, 36.689171, 29.615110>,  <35.279243, 36.747154, 29.674379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.670555, 36.689171, 29.615110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094968, 0.321960, -0.941978,
		0.184255, 0.935590, 0.301201,
		0.978280, -0.144960, -0.148174,
		35.964039, 36.645683, 29.570658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.531898, 37.319221, 29.386696>,  <35.279243, 36.747154, 29.674379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.531898, 37.319221, 29.386696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.777817, 37.020786, 29.284416>,  <35.925365, 36.841724, 29.223049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.777817, 37.020786, 29.284416>,  <35.531898, 37.319221, 29.386696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.777817, 37.020786, 29.284416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101515, 0.246651, -0.963773,
		0.782128, 0.618478, 0.075900,
		0.614793, -0.746088, -0.255698,
		35.962254, 36.796959, 29.207706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.680935, 37.606777, 28.809265>,  <35.531898, 37.319221, 29.386696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.680935, 37.606777, 28.809265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.814312, 37.231438, 28.772774>,  <35.894337, 37.006233, 28.750879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.814312, 37.231438, 28.772774>,  <35.680935, 37.606777, 28.809265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.814312, 37.231438, 28.772774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180454, 0.031455, -0.983080,
		0.925341, 0.344259, -0.158840,
		0.333438, -0.938347, -0.091230,
		35.914345, 36.949932, 28.745405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.132313, 37.674248, 28.333899>,  <35.680935, 37.606777, 28.809265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.132313, 37.674248, 28.333899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.007843, 37.294117, 28.336880>,  <35.933163, 37.066040, 28.338669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.007843, 37.294117, 28.336880>,  <36.132313, 37.674248, 28.333899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.007843, 37.294117, 28.336880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223095, 0.065420, -0.972599,
		0.923797, -0.304307, -0.232370,
		-0.311170, -0.950325, 0.007454,
		35.914494, 37.009018, 28.339115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.444466, 37.424450, 27.744125>,  <36.132313, 37.674248, 28.333899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.444466, 37.424450, 27.744125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.168625, 37.145527, 27.822313>,  <36.003120, 36.978172, 27.869226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.168625, 37.145527, 27.822313>,  <36.444466, 37.424450, 27.744125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.168625, 37.145527, 27.822313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279233, 0.006982, -0.960198,
		0.668189, -0.716738, -0.199526,
		-0.689603, -0.697308, 0.195472,
		35.961742, 36.936333, 27.880955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.438011, 36.863174, 27.175188>,  <36.444466, 37.424450, 27.744125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.438011, 36.863174, 27.175188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.081150, 36.803379, 27.345701>,  <35.867035, 36.767502, 27.448009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.081150, 36.803379, 27.345701>,  <36.438011, 36.863174, 27.175188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.081150, 36.803379, 27.345701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395222, -0.198710, -0.896836,
		0.218777, -0.968590, 0.118197,
		-0.892153, -0.149493, 0.426281,
		35.813503, 36.758530, 27.473585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.212009, 36.149231, 26.984938>,  <36.438011, 36.863174, 27.175188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.212009, 36.149231, 26.984938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.887123, 36.364395, 27.075241>,  <35.692192, 36.493492, 27.129423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.887123, 36.364395, 27.075241>,  <36.212009, 36.149231, 26.984938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.887123, 36.364395, 27.075241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378252, -0.190988, -0.905787,
		-0.444113, -0.821084, 0.358588,
		-0.812212, 0.537908, 0.225756,
		35.643459, 36.525768, 27.142967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.600502, 35.780918, 26.683067>,  <36.212009, 36.149231, 26.984938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.600502, 35.780918, 26.683067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.458992, 36.146618, 26.762053>,  <35.374084, 36.366039, 26.809444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.458992, 36.146618, 26.762053>,  <35.600502, 35.780918, 26.683067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.458992, 36.146618, 26.762053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565634, -0.040983, -0.823637,
		-0.744917, -0.403076, 0.531629,
		-0.353776, 0.914249, 0.197465,
		35.352859, 36.420891, 26.821293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.921112, 35.643055, 26.612255>,  <35.600502, 35.780918, 26.683067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.921112, 35.643055, 26.612255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.976181, 36.037506, 26.575157>,  <35.009224, 36.274178, 26.552898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.976181, 36.037506, 26.575157>,  <34.921112, 35.643055, 26.612255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.976181, 36.037506, 26.575157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656273, 0.020688, -0.754239,
		-0.741857, 0.164703, 0.650017,
		0.137673, 0.986126, -0.092743,
		35.017483, 36.333344, 26.547335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.220760, 36.000210, 26.525064>,  <34.921112, 35.643055, 26.612255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.220760, 36.000210, 26.525064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.501289, 36.226521, 26.351610>,  <34.669609, 36.362309, 26.247538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.501289, 36.226521, 26.351610>,  <34.220760, 36.000210, 26.525064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.501289, 36.226521, 26.351610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563396, 0.067252, -0.823446,
		-0.436723, 0.821812, 0.365922,
		0.701326, 0.565776, -0.433634,
		34.711689, 36.396252, 26.221519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.810478, 36.381203, 26.112183>,  <34.220760, 36.000210, 26.525064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.810478, 36.381203, 26.112183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.155003, 36.492359, 25.942041>,  <34.361717, 36.559052, 25.839956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.155003, 36.492359, 25.942041>,  <33.810478, 36.381203, 26.112183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.155003, 36.492359, 25.942041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460716, 0.074184, -0.884442,
		-0.214225, 0.957743, 0.191924,
		0.861306, 0.277892, -0.425355,
		34.413395, 36.575726, 25.814434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.614841, 36.916706, 25.718594>,  <33.810478, 36.381203, 26.112183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.614841, 36.916706, 25.718594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.972900, 36.816353, 25.571207>,  <34.187737, 36.756142, 25.482775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.972900, 36.816353, 25.571207>,  <33.614841, 36.916706, 25.718594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.972900, 36.816353, 25.571207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381508, -0.003632, -0.924358,
		0.230569, 0.968010, -0.098966,
		0.895148, -0.250884, -0.368466,
		34.241444, 36.741089, 25.460667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.651390, 37.268059, 25.101933>,  <33.614841, 36.916706, 25.718594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.651390, 37.268059, 25.101933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.952465, 37.010532, 25.046843>,  <34.133110, 36.856018, 25.013788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.952465, 37.010532, 25.046843>,  <33.651390, 37.268059, 25.101933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.952465, 37.010532, 25.046843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145425, 0.041444, -0.988501,
		0.642118, 0.764059, -0.062432,
		0.752686, -0.643814, -0.137725,
		34.178272, 36.817387, 25.005526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.018879, 37.506607, 24.561884>,  <33.651390, 37.268059, 25.101933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.018879, 37.506607, 24.561884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.079254, 37.111420, 24.575357>,  <34.115479, 36.874306, 24.583443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.079254, 37.111420, 24.575357>,  <34.018879, 37.506607, 24.561884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.079254, 37.111420, 24.575357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242976, -0.070108, -0.967496,
		0.958217, 0.137847, -0.250635,
		0.150938, -0.987969, 0.033686,
		34.124535, 36.815029, 24.585463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.205933, 37.348053, 23.896698>,  <34.018879, 37.506607, 24.561884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.205933, 37.348053, 23.896698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.096851, 36.997650, 24.055820>,  <34.031403, 36.787411, 24.151293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.096851, 36.997650, 24.055820>,  <34.205933, 37.348053, 23.896698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.096851, 36.997650, 24.055820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344069, -0.297331, -0.890624,
		0.898469, -0.379751, -0.220322,
		-0.272707, -0.876004, 0.397804,
		34.015038, 36.734848, 24.175161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.563328, 36.781040, 23.459944>,  <34.205933, 37.348053, 23.896698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.563328, 36.781040, 23.459944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.240093, 36.638252, 23.647377>,  <34.046154, 36.552578, 23.759836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.240093, 36.638252, 23.647377>,  <34.563328, 36.781040, 23.459944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.240093, 36.638252, 23.647377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366205, -0.318640, -0.874278,
		0.461400, -0.878089, 0.126764,
		-0.808086, -0.356971, 0.468581,
		33.997665, 36.531162, 23.787952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.503468, 36.171024, 23.130503>,  <34.563328, 36.781040, 23.459944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.503468, 36.171024, 23.130503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.144428, 36.218914, 23.300200>,  <33.929005, 36.247650, 23.402018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.144428, 36.218914, 23.300200>,  <34.503468, 36.171024, 23.130503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.144428, 36.218914, 23.300200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436362, -0.377716, -0.816651,
		0.062468, -0.918148, 0.391282,
		-0.897600, 0.119726, 0.424240,
		33.875149, 36.254833, 23.427471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.252167, 35.535686, 22.918808>,  <34.503468, 36.171024, 23.130503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.252167, 35.535686, 22.918808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.960495, 35.790863, 23.017860>,  <33.785492, 35.943970, 23.077291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.960495, 35.790863, 23.017860>,  <34.252167, 35.535686, 22.918808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.960495, 35.790863, 23.017860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503533, -0.255131, -0.825447,
		-0.463413, -0.726589, 0.507263,
		-0.729179, 0.637947, 0.247631,
		33.741741, 35.982246, 23.092150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.761715, 35.289322, 22.480375>,  <34.252167, 35.535686, 22.918808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.761715, 35.289322, 22.480375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.629883, 35.647953, 22.598711>,  <33.550781, 35.863132, 22.669712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.629883, 35.647953, 22.598711>,  <33.761715, 35.289322, 22.480375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.629883, 35.647953, 22.598711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555194, 0.069392, -0.828821,
		-0.763633, -0.437413, 0.474905,
		-0.329583, 0.896579, 0.295839,
		33.531010, 35.916927, 22.687464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.020123, 35.269489, 22.624949>,  <33.761715, 35.289322, 22.480375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.020123, 35.269489, 22.624949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.122520, 35.642380, 22.522644>,  <33.183960, 35.866116, 22.461262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.122520, 35.642380, 22.522644>,  <33.020123, 35.269489, 22.624949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.122520, 35.642380, 22.522644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384535, -0.144542, -0.911724,
		-0.886905, 0.331745, 0.321473,
		0.255993, 0.932230, -0.255762,
		33.199318, 35.922050, 22.445915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.482315, 35.534428, 22.232666>,  <33.020123, 35.269489, 22.624949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.482315, 35.534428, 22.232666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.764191, 35.804977, 22.146946>,  <32.933315, 35.967308, 22.095514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.764191, 35.804977, 22.146946>,  <32.482315, 35.534428, 22.232666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.764191, 35.804977, 22.146946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252242, -0.043480, -0.966687,
		-0.663164, 0.735270, 0.139971,
		0.704690, 0.676378, -0.214300,
		32.975597, 36.007893, 22.082657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.097488, 36.045990, 21.806665>,  <32.482315, 35.534428, 22.232666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.097488, 36.045990, 21.806665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.487053, 36.101192, 21.734613>,  <32.720791, 36.134315, 21.691381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.487053, 36.101192, 21.734613>,  <32.097488, 36.045990, 21.806665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.487053, 36.101192, 21.734613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203637, 0.181283, -0.962117,
		-0.100127, 0.973699, 0.204657,
		0.973913, 0.138009, -0.180130,
		32.779228, 36.142593, 21.680574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.144638, 36.734768, 21.496872>,  <32.097488, 36.045990, 21.806665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.144638, 36.734768, 21.496872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.454094, 36.505566, 21.388691>,  <32.639767, 36.368046, 21.323782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.454094, 36.505566, 21.388691>,  <32.144638, 36.734768, 21.496872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.454094, 36.505566, 21.388691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224057, 0.151861, -0.962672,
		0.592686, 0.805360, -0.010900,
		0.773642, -0.573004, -0.270452,
		32.686188, 36.333664, 21.307556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.461468, 37.075230, 20.899637>,  <32.144638, 36.734768, 21.496872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.461468, 37.075230, 20.899637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.620182, 36.710030, 20.861700>,  <32.715408, 36.490910, 20.838938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.620182, 36.710030, 20.861700>,  <32.461468, 37.075230, 20.899637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.620182, 36.710030, 20.861700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226473, 0.002757, -0.974014,
		0.889536, 0.407950, -0.205676,
		0.396782, -0.913000, -0.094842,
		32.739216, 36.436131, 20.833248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.683285, 37.059624, 20.291533>,  <32.461468, 37.075230, 20.899637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.683285, 37.059624, 20.291533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.725254, 36.663597, 20.328978>,  <32.750435, 36.425983, 20.351444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.725254, 36.663597, 20.328978>,  <32.683285, 37.059624, 20.291533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.725254, 36.663597, 20.328978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141031, -0.107994, -0.984097,
		0.984430, 0.090049, -0.150961,
		0.104920, -0.990065, 0.093613,
		32.756729, 36.366577, 20.357061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.323357, 36.779419, 19.877460>,  <32.683285, 37.059624, 20.291533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.323357, 36.779419, 19.877460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.046055, 36.495094, 19.925014>,  <32.879673, 36.324497, 19.953547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.046055, 36.495094, 19.925014>,  <33.323357, 36.779419, 19.877460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.046055, 36.495094, 19.925014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005165, -0.160059, -0.987094,
		0.720671, -0.684924, 0.107291,
		-0.693258, -0.710816, 0.118887,
		32.838078, 36.281849, 19.960680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.531239, 36.401577, 19.340490>,  <33.323357, 36.779419, 19.877460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.531239, 36.401577, 19.340490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.187588, 36.228020, 19.449038>,  <32.981396, 36.123886, 19.514166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.187588, 36.228020, 19.449038>,  <33.531239, 36.401577, 19.340490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.187588, 36.228020, 19.449038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101640, -0.375036, -0.921421,
		0.501570, -0.819199, 0.278103,
		-0.859126, -0.433891, 0.271370,
		32.929852, 36.097851, 19.530449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.497002, 35.744911, 19.020910>,  <33.531239, 36.401577, 19.340490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.497002, 35.744911, 19.020910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.116386, 35.839890, 19.099081>,  <32.888016, 35.896877, 19.145983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.116386, 35.839890, 19.099081>,  <33.497002, 35.744911, 19.020910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.116386, 35.839890, 19.099081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277839, -0.391376, -0.877286,
		-0.131822, -0.889070, 0.438381,
		-0.951540, 0.237445, 0.195426,
		32.830925, 35.911121, 19.157709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.120842, 35.186939, 18.882338>,  <33.497002, 35.744911, 19.020910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.120842, 35.186939, 18.882338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.862907, 35.492153, 18.864630>,  <32.708145, 35.675282, 18.854006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.862907, 35.492153, 18.864630>,  <33.120842, 35.186939, 18.882338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.862907, 35.492153, 18.864630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271400, -0.282734, -0.920002,
		-0.714512, -0.581236, 0.389406,
		-0.644836, 0.763037, -0.044270,
		32.669456, 35.721066, 18.851349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.624763, 34.888371, 18.486172>,  <33.120842, 35.186939, 18.882338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.624763, 34.888371, 18.486172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.567944, 35.284019, 18.501417>,  <32.533852, 35.521408, 18.510565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.567944, 35.284019, 18.501417>,  <32.624763, 34.888371, 18.486172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.567944, 35.284019, 18.501417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334189, -0.011679, -0.942434,
		-0.931740, -0.146612, 0.332213,
		-0.142052, 0.989125, 0.038114,
		32.525330, 35.580757, 18.512852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.955860, 34.941284, 18.276636>,  <32.624763, 34.888371, 18.486172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.955860, 34.941284, 18.276636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.120354, 35.297485, 18.198772>,  <32.219051, 35.511208, 18.152054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.120354, 35.297485, 18.198772>,  <31.955860, 34.941284, 18.276636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.120354, 35.297485, 18.198772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468698, 0.023416, -0.883048,
		-0.781798, 0.454376, 0.427006,
		0.411235, 0.890502, -0.194659,
		32.243725, 35.564636, 18.140375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.347206, 35.418335, 18.033039>,  <31.955860, 34.941284, 18.276636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.347206, 35.418335, 18.033039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.697823, 35.578590, 17.926332>,  <31.908192, 35.674744, 17.862309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.697823, 35.578590, 17.926332>,  <31.347206, 35.418335, 18.033039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.697823, 35.578590, 17.926332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374466, 0.219413, -0.900907,
		-0.302406, 0.889577, 0.342350,
		0.876542, 0.400638, -0.266765,
		31.960785, 35.698780, 17.846304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.127768, 36.056526, 17.733601>,  <31.347206, 35.418335, 18.033039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.127768, 36.056526, 17.733601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.505575, 35.985348, 17.623167>,  <31.732260, 35.942642, 17.556908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.505575, 35.985348, 17.623167>,  <31.127768, 36.056526, 17.733601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.505575, 35.985348, 17.623167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220962, 0.277687, -0.934915,
		0.243027, 0.944048, 0.222962,
		0.944518, -0.177943, -0.276084,
		31.788931, 35.931965, 17.540342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.435677, 36.675991, 17.269474>,  <31.127768, 36.056526, 17.733601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.435677, 36.675991, 17.269474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.657961, 36.348499, 17.211697>,  <31.791332, 36.152004, 17.177031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.657961, 36.348499, 17.211697>,  <31.435677, 36.675991, 17.269474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.657961, 36.348499, 17.211697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223218, 0.020424, -0.974555,
		0.800848, 0.573814, -0.171406,
		0.555712, -0.818731, -0.144442,
		31.824675, 36.102879, 17.168364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.993212, 36.947220, 16.861702>,  <31.435677, 36.675991, 17.269474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.993212, 36.947220, 16.861702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.917610, 36.556015, 16.826447>,  <31.872250, 36.321293, 16.805294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.917610, 36.556015, 16.826447>,  <31.993212, 36.947220, 16.861702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.917610, 36.556015, 16.826447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351718, 0.151222, -0.923811,
		0.916828, -0.143603, -0.372566,
		-0.189002, -0.978013, -0.088136,
		31.860910, 36.262611, 16.800005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.257980, 36.773937, 16.209076>,  <31.993212, 36.947220, 16.861702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.257980, 36.773937, 16.209076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.049629, 36.444538, 16.299002>,  <31.924618, 36.246899, 16.352957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.049629, 36.444538, 16.299002>,  <32.257980, 36.773937, 16.209076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.049629, 36.444538, 16.299002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307328, -0.064795, -0.949395,
		0.796390, -0.563610, -0.219333,
		-0.520877, -0.823496, 0.224815,
		31.893366, 36.197491, 16.366446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.441734, 36.259029, 15.766749>,  <32.257980, 36.773937, 16.209076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.441734, 36.259029, 15.766749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.069210, 36.172932, 15.884273>,  <31.845695, 36.121273, 15.954786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.069210, 36.172932, 15.884273>,  <32.441734, 36.259029, 15.766749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.069210, 36.172932, 15.884273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251135, -0.204749, -0.946049,
		0.263790, -0.954855, 0.136630,
		-0.931314, -0.215246, 0.293808,
		31.789816, 36.108356, 15.972415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.281799, 35.586773, 15.479909>,  <32.441734, 36.259029, 15.766749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.281799, 35.586773, 15.479909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.910727, 35.721634, 15.544086>,  <31.688084, 35.802551, 15.582593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.910727, 35.721634, 15.544086>,  <32.281799, 35.586773, 15.479909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.910727, 35.721634, 15.544086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225571, -0.163632, -0.960387,
		-0.297540, -0.927122, 0.227849,
		-0.927679, 0.337150, 0.160445,
		31.632423, 35.822777, 15.592220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.998432, 35.236916, 15.017242>,  <32.281799, 35.586773, 15.479909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.998432, 35.236916, 15.017242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.699791, 35.486530, 15.109467>,  <31.520605, 35.636299, 15.164801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.699791, 35.486530, 15.109467>,  <31.998432, 35.236916, 15.017242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.699791, 35.486530, 15.109467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274378, 0.026878, -0.961246,
		-0.606052, -0.780931, 0.151155,
		-0.746605, 0.624038, 0.230560,
		31.475809, 35.673740, 15.178635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.343868, 34.990349, 14.737841>,  <31.998432, 35.236916, 15.017242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.343868, 34.990349, 14.737841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.305641, 35.388409, 14.747229>,  <31.282705, 35.627243, 14.752862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.305641, 35.388409, 14.747229>,  <31.343868, 34.990349, 14.737841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.305641, 35.388409, 14.747229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273578, -0.003587, -0.961843,
		-0.957090, -0.098342, 0.272593,
		-0.095567, 0.995146, 0.023471,
		31.276972, 35.686951, 14.754270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.718380, 35.044506, 14.290493>,  <31.343868, 34.990349, 14.737841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.718380, 35.044506, 14.290493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.842295, 35.420967, 14.344547>,  <30.916643, 35.646843, 14.376980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.842295, 35.420967, 14.344547>,  <30.718380, 35.044506, 14.290493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.842295, 35.420967, 14.344547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363706, 0.248617, -0.897723,
		-0.878493, 0.228954, 0.419322,
		0.309788, 0.941153, 0.135136,
		30.935230, 35.703312, 14.385088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.133612, 35.511341, 14.076714>,  <30.718380, 35.044506, 14.290493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.133612, 35.511341, 14.076714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.472143, 35.724289, 14.069670>,  <30.675262, 35.852058, 14.065444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.472143, 35.724289, 14.069670>,  <30.133612, 35.511341, 14.076714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.472143, 35.724289, 14.069670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183138, 0.259779, -0.948143,
		-0.500191, 0.805664, 0.317356,
		0.846327, 0.532373, -0.017609,
		30.726042, 35.884003, 14.064387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.890497, 36.175819, 13.825450>,  <30.133612, 35.511341, 14.076714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.890497, 36.175819, 13.825450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.282509, 36.157257, 13.748101>,  <30.517715, 36.146118, 13.701693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.282509, 36.157257, 13.748101>,  <29.890497, 36.175819, 13.825450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.282509, 36.157257, 13.748101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185545, 0.136466, -0.973114,
		0.071546, 0.989557, 0.125130,
		0.980028, -0.046405, -0.193371,
		30.576517, 36.143337, 13.690090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.960955, 36.744461, 13.335107>,  <29.890497, 36.175819, 13.825450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.960955, 36.744461, 13.335107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.259312, 36.483658, 13.280662>,  <30.438326, 36.327175, 13.247994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.259312, 36.483658, 13.280662>,  <29.960955, 36.744461, 13.335107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.259312, 36.483658, 13.280662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101457, 0.090751, -0.990692,
		0.658293, 0.752760, 0.001540,
		0.745893, -0.652009, -0.136114,
		30.483080, 36.288055, 13.239827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.396286, 36.986546, 12.722144>,  <29.960955, 36.744461, 13.335107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.396286, 36.986546, 12.722144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.436316, 36.591743, 12.772425>,  <30.460333, 36.354862, 12.802593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.436316, 36.591743, 12.772425>,  <30.396286, 36.986546, 12.722144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.436316, 36.591743, 12.772425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456500, -0.157801, -0.875618,
		0.884077, 0.030244, -0.466361,
		0.100074, -0.987008, 0.125702,
		30.466337, 36.295643, 12.810135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.844875, 36.654331, 12.235476>,  <30.396286, 36.986546, 12.722144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.844875, 36.654331, 12.235476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.568474, 36.384247, 12.338703>,  <30.402634, 36.222195, 12.400640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.568474, 36.384247, 12.338703>,  <30.844875, 36.654331, 12.235476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.568474, 36.384247, 12.338703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450042, 0.122483, -0.884568,
		0.565663, -0.727382, -0.388511,
		-0.691004, -0.675214, 0.258069,
		30.361172, 36.181683, 12.416123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.924231, 36.163929, 11.680396>,  <30.844875, 36.654331, 12.235476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.924231, 36.163929, 11.680396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.568678, 36.161751, 11.863639>,  <30.355347, 36.160442, 11.973585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.568678, 36.161751, 11.863639>,  <30.924231, 36.163929, 11.680396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.568678, 36.161751, 11.863639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452027, -0.152372, -0.878894,
		0.074595, -0.988308, 0.132976,
		-0.888880, -0.005453, 0.458108,
		30.302013, 36.160114, 12.001071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.486794, 35.587788, 11.477307>,  <30.924231, 36.163929, 11.680396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.486794, 35.587788, 11.477307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.230446, 35.875607, 11.584294>,  <30.076637, 36.048298, 11.648487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.230446, 35.875607, 11.584294>,  <30.486794, 35.587788, 11.477307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.230446, 35.875607, 11.584294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605673, -0.259884, -0.752077,
		-0.471647, -0.643978, 0.602363,
		-0.640865, 0.719550, 0.267467,
		30.038185, 36.091473, 11.664535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.658665, 34.858532, 11.698304>,  <30.486794, 35.587788, 11.477307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.658665, 34.858532, 11.698304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.341385, 35.102116, 11.697301>,  <30.151018, 35.248264, 11.696699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.341385, 35.102116, 11.697301>,  <30.658665, 34.858532, 11.698304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.341385, 35.102116, 11.697301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148323, -0.197191, -0.969080,
		-0.590624, -0.768300, 0.246734,
		-0.793198, 0.608959, -0.002509,
		30.103426, 35.284801, 11.696548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.837725, 34.093586, 11.450821>,  <30.658665, 34.858532, 11.698304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.837725, 34.093586, 11.450821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.220612, 34.007660, 11.373267>,  <31.450344, 33.956104, 11.326735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.220612, 34.007660, 11.373267>,  <30.837725, 34.093586, 11.450821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.220612, 34.007660, 11.373267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084615, -0.432954, 0.897436,
		-0.276721, -0.875447, -0.396255,
		0.957218, -0.214811, -0.193883,
		31.507776, 33.943218, 11.315103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.584166, 33.839230, 12.103811>,  <30.837725, 34.093586, 11.450821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.584166, 33.839230, 12.103811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.724819, 33.511799, 12.285483>,  <30.809212, 33.315338, 12.394486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.724819, 33.511799, 12.285483>,  <30.584166, 33.839230, 12.103811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.724819, 33.511799, 12.285483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234895, 0.546795, 0.803641,
		-0.906188, -0.175903, 0.384552,
		0.351634, -0.818580, 0.454181,
		30.830309, 33.266224, 12.421738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.024149, 33.299217, 11.732178>,  <30.584166, 33.839230, 12.103811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.024149, 33.299217, 11.732178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.352823, 33.522026, 11.683912>,  <31.550028, 33.655712, 11.654953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.352823, 33.522026, 11.683912>,  <31.024149, 33.299217, 11.732178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.352823, 33.522026, 11.683912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364969, -0.351639, 0.862060,
		0.437754, -0.752383, -0.492232,
		0.821687, 0.557019, -0.120665,
		31.599329, 33.689133, 11.647713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.593845, 32.843403, 12.027846>,  <31.024149, 33.299217, 11.732178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.593845, 32.843403, 12.027846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.691132, 33.231251, 12.038373>,  <31.749502, 33.463959, 12.044689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.691132, 33.231251, 12.038373>,  <31.593845, 32.843403, 12.027846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.691132, 33.231251, 12.038373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463326, -0.139968, 0.875065,
		0.852160, -0.200635, -0.483290,
		0.243213, 0.969616, 0.026316,
		31.764095, 33.522137, 12.046268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.238243, 32.890629, 12.300286>,  <31.593845, 32.843403, 12.027846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.238243, 32.890629, 12.300286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.071838, 33.248112, 12.367476>,  <31.971996, 33.462601, 12.407789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.071838, 33.248112, 12.367476>,  <32.238243, 32.890629, 12.300286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.071838, 33.248112, 12.367476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412662, 0.020932, 0.910644,
		0.810337, 0.448153, -0.377508,
		-0.416010, 0.893712, 0.167974,
		31.947035, 33.516224, 12.417868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.495308, 33.561890, 12.068206>,  <32.238243, 32.890629, 12.300286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.495308, 33.561890, 12.068206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.328754, 33.731838, 11.746681>,  <32.228825, 33.833809, 11.553766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.328754, 33.731838, 11.746681>,  <32.495308, 33.561890, 12.068206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.328754, 33.731838, 11.746681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403119, -0.706171, -0.582080,
		-0.814938, -0.566398, 0.122761,
		-0.416379, 0.424872, -0.803811,
		32.203842, 33.859299, 11.505538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.760193, 33.252144, 12.661657>,  <32.495308, 33.561890, 12.068206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.760193, 33.252144, 12.661657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.431557, 33.467396, 12.736920>,  <32.234375, 33.596546, 12.782078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.431557, 33.467396, 12.736920>,  <32.760193, 33.252144, 12.661657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.431557, 33.467396, 12.736920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250195, 0.043802, 0.967204,
		0.512244, 0.841720, -0.170626,
		-0.821589, 0.538134, 0.188157,
		32.185081, 33.628838, 12.793367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.956924, 33.804337, 13.048518>,  <32.760193, 33.252144, 12.661657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.956924, 33.804337, 13.048518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.570168, 33.752441, 13.136407>,  <32.338112, 33.721302, 13.189140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.570168, 33.752441, 13.136407>,  <32.956924, 33.804337, 13.048518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.570168, 33.752441, 13.136407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215838, 0.043456, 0.975462,
		-0.136106, 0.990595, -0.014015,
		-0.966897, -0.129741, 0.219723,
		32.280098, 33.713520, 13.202324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.758762, 34.327206, 13.562866>,  <32.956924, 33.804337, 13.048518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.758762, 34.327206, 13.562866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.490704, 34.031654, 13.591061>,  <32.329868, 33.854324, 13.607977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.490704, 34.031654, 13.591061>,  <32.758762, 34.327206, 13.562866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.490704, 34.031654, 13.591061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114955, -0.009503, 0.993325,
		-0.733276, 0.673773, 0.091306,
		-0.670144, -0.738877, 0.070485,
		32.289661, 33.809990, 13.612206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.348763, 34.615646, 14.097513>,  <32.758762, 34.327206, 13.562866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.348763, 34.615646, 14.097513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.256687, 34.226410, 14.101524>,  <32.201443, 33.992867, 14.103931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.256687, 34.226410, 14.101524>,  <32.348763, 34.615646, 14.097513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.256687, 34.226410, 14.101524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031159, 0.017670, 0.999358,
		-0.972647, 0.229729, -0.034388,
		-0.230189, -0.973094, 0.010028,
		32.187630, 33.934483, 14.104533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.933596, 34.562943, 14.593534>,  <32.348763, 34.615646, 14.097513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.933596, 34.562943, 14.593534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.024319, 34.175533, 14.552507>,  <32.078754, 33.943089, 14.527891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.024319, 34.175533, 14.552507>,  <31.933596, 34.562943, 14.593534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.024319, 34.175533, 14.552507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039405, -0.096099, 0.994591,
		-0.973142, -0.229624, 0.016369,
		0.226809, -0.968523, -0.102567,
		32.092361, 33.884975, 14.521737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.606659, 34.213779, 15.140079>,  <31.933596, 34.562943, 14.593534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.606659, 34.213779, 15.140079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.892765, 33.956146, 15.031597>,  <32.064430, 33.801567, 14.966508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.892765, 33.956146, 15.031597>,  <31.606659, 34.213779, 15.140079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.892765, 33.956146, 15.031597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179648, -0.205573, 0.962012,
		-0.675369, -0.736814, -0.031330,
		0.715265, -0.644084, -0.271205,
		32.107346, 33.762920, 14.950235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.497070, 33.626606, 15.590851>,  <31.606659, 34.213779, 15.140079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.497070, 33.626606, 15.590851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.871580, 33.606369, 15.451806>,  <32.096287, 33.594227, 15.368380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.871580, 33.606369, 15.451806>,  <31.497070, 33.626606, 15.590851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.871580, 33.606369, 15.451806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340473, -0.112800, 0.933464,
		-0.086432, -0.992329, -0.088388,
		0.936273, -0.050587, -0.347611,
		32.152462, 33.591190, 15.347523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.816025, 33.039169, 15.886457>,  <31.497070, 33.626606, 15.590851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.816025, 33.039169, 15.886457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.138149, 33.259041, 15.797620>,  <32.331425, 33.390965, 15.744317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.138149, 33.259041, 15.797620>,  <31.816025, 33.039169, 15.886457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.138149, 33.259041, 15.797620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444686, -0.312304, 0.839477,
		0.392085, -0.774800, -0.495937,
		0.805310, 0.549682, -0.222093,
		32.379742, 33.423946, 15.730992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.443592, 32.553764, 16.091587>,  <31.816025, 33.039169, 15.886457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.443592, 32.553764, 16.091587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.586651, 32.924789, 16.048304>,  <32.672485, 33.147404, 16.022333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.586651, 32.924789, 16.048304>,  <32.443592, 32.553764, 16.091587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.586651, 32.924789, 16.048304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516696, -0.100031, 0.850305,
		0.777890, -0.360021, -0.515046,
		0.357648, 0.927566, -0.108208,
		32.693947, 33.203060, 16.015841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.231606, 32.514679, 16.239775>,  <32.443592, 32.553764, 16.091587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.231606, 32.514679, 16.239775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.128624, 32.896858, 16.297501>,  <33.066833, 33.126167, 16.332136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.128624, 32.896858, 16.297501>,  <33.231606, 32.514679, 16.239775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.128624, 32.896858, 16.297501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507397, 0.006573, 0.861687,
		0.822353, 0.295072, -0.486486,
		-0.257457, 0.955453, 0.144313,
		33.051388, 33.183495, 16.340794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.845028, 32.855717, 16.445105>,  <33.231606, 32.514679, 16.239775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.845028, 32.855717, 16.445105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.571796, 33.125084, 16.558176>,  <33.407856, 33.286705, 16.626019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.571796, 33.125084, 16.558176>,  <33.845028, 32.855717, 16.445105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.571796, 33.125084, 16.558176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567121, 0.245203, 0.786288,
		0.460189, 0.697411, -0.549404,
		-0.683081, 0.673420, 0.282677,
		33.366871, 33.327110, 16.642979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.228733, 33.385605, 16.615219>,  <33.845028, 32.855717, 16.445105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.228733, 33.385605, 16.615219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.896049, 33.450180, 16.827711>,  <33.696442, 33.488926, 16.955206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.896049, 33.450180, 16.827711>,  <34.228733, 33.385605, 16.615219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.896049, 33.450180, 16.827711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552194, 0.340254, 0.761123,
		-0.057878, 0.926372, -0.372136,
		-0.831704, 0.161439, 0.531230,
		33.646538, 33.498611, 16.987080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.261898, 34.085346, 16.978651>,  <34.228733, 33.385605, 16.615219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.261898, 34.085346, 16.978651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.977684, 33.887856, 17.179205>,  <33.807156, 33.769363, 17.299538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.977684, 33.887856, 17.179205>,  <34.261898, 34.085346, 16.978651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.977684, 33.887856, 17.179205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370481, 0.343294, 0.863072,
		-0.598239, 0.798992, -0.061006,
		-0.710530, -0.493722, 0.501383,
		33.764526, 33.739738, 17.329620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.127716, 34.421471, 17.614017>,  <34.261898, 34.085346, 16.978651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.127716, 34.421471, 17.614017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.000233, 34.053017, 17.703409>,  <33.923740, 33.831944, 17.757044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.000233, 34.053017, 17.703409>,  <34.127716, 34.421471, 17.614017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.000233, 34.053017, 17.703409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183695, 0.171278, 0.967946,
		-0.929881, 0.349547, 0.114620,
		-0.318711, -0.921130, 0.223478,
		33.904621, 33.776676, 17.770452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.870792, 34.505199, 18.280657>,  <34.127716, 34.421471, 17.614017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.870792, 34.505199, 18.280657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.949524, 34.114605, 18.245499>,  <33.996761, 33.880249, 18.224403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.949524, 34.114605, 18.245499>,  <33.870792, 34.505199, 18.280657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.949524, 34.114605, 18.245499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269862, -0.032227, 0.962360,
		-0.942567, -0.213138, 0.257175,
		0.196827, -0.976491, -0.087894,
		34.008572, 33.821659, 18.219130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.605804, 34.254326, 18.887426>,  <33.870792, 34.505199, 18.280657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.605804, 34.254326, 18.887426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.878319, 33.999249, 18.743650>,  <34.041828, 33.846203, 18.657385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.878319, 33.999249, 18.743650>,  <33.605804, 34.254326, 18.887426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.878319, 33.999249, 18.743650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328530, -0.172434, 0.928620,
		-0.654158, -0.750738, 0.092026,
		0.681282, -0.637698, -0.359439,
		34.082703, 33.807938, 18.635818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.577755, 33.711224, 19.392244>,  <33.605804, 34.254326, 18.887426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.577755, 33.711224, 19.392244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.917511, 33.666538, 19.185923>,  <34.121365, 33.639729, 19.062130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.917511, 33.666538, 19.185923>,  <33.577755, 33.711224, 19.392244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.917511, 33.666538, 19.185923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504500, -0.115091, 0.855706,
		-0.154965, -0.987052, -0.041393,
		0.849391, -0.111722, -0.515803,
		34.172329, 33.633022, 19.031181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.879631, 33.006355, 19.624104>,  <33.577755, 33.711224, 19.392244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.879631, 33.006355, 19.624104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.166847, 33.246964, 19.484056>,  <34.339176, 33.391331, 19.400028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.166847, 33.246964, 19.484056>,  <33.879631, 33.006355, 19.624104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.166847, 33.246964, 19.484056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380089, 0.082506, 0.921263,
		0.583048, -0.794583, -0.169390,
		0.718044, 0.601524, -0.350117,
		34.382259, 33.427422, 19.379021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.477295, 32.741585, 19.922857>,  <33.879631, 33.006355, 19.624104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.477295, 32.741585, 19.922857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.565655, 33.118977, 19.824022>,  <34.618671, 33.345413, 19.764721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.565655, 33.118977, 19.824022>,  <34.477295, 32.741585, 19.922857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.565655, 33.118977, 19.824022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345957, 0.161072, 0.924321,
		0.911876, -0.289662, -0.290822,
		0.220897, 0.943478, -0.247088,
		34.631924, 33.402020, 19.749895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.164036, 32.803570, 19.992737>,  <34.477295, 32.741585, 19.922857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.164036, 32.803570, 19.992737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.019234, 33.176258, 20.004393>,  <34.932354, 33.399872, 20.011387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.019234, 33.176258, 20.004393>,  <35.164036, 32.803570, 19.992737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.019234, 33.176258, 20.004393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383123, 0.120211, 0.915842,
		0.849807, 0.342700, -0.400481,
		-0.362001, 0.931722, 0.029141,
		34.910633, 33.455776, 20.013134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.685970, 33.133202, 20.397591>,  <35.164036, 32.803570, 19.992737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.685970, 33.133202, 20.397591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.399200, 33.411507, 20.415188>,  <35.227139, 33.578491, 20.425747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.399200, 33.411507, 20.415188>,  <35.685970, 33.133202, 20.397591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.399200, 33.411507, 20.415188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346753, 0.301131, 0.888303,
		0.604802, 0.652099, -0.457145,
		-0.716922, 0.695764, 0.043993,
		35.184124, 33.620235, 20.428385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.001842, 33.772518, 20.550423>,  <35.685970, 33.133202, 20.397591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.001842, 33.772518, 20.550423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.623295, 33.835011, 20.663544>,  <35.396168, 33.872505, 20.731417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.623295, 33.835011, 20.663544>,  <36.001842, 33.772518, 20.550423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.623295, 33.835011, 20.663544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313104, 0.227611, 0.922041,
		0.079679, 0.961138, -0.264320,
		-0.946370, 0.156227, 0.282801,
		35.339382, 33.881878, 20.748384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.996933, 34.412228, 20.891489>,  <36.001842, 33.772518, 20.550423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.996933, 34.412228, 20.891489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.670902, 34.223930, 21.026579>,  <35.475285, 34.110954, 21.107632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.670902, 34.223930, 21.026579>,  <35.996933, 34.412228, 20.891489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.670902, 34.223930, 21.026579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166141, 0.368527, 0.914650,
		-0.555023, 0.801618, -0.222168,
		-0.815074, -0.470741, 0.337723,
		35.426380, 34.082706, 21.127895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.594673, 34.907066, 21.249052>,  <35.996933, 34.412228, 20.891489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.594673, 34.907066, 21.249052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.521759, 34.543148, 21.398212>,  <35.478012, 34.324799, 21.487709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.521759, 34.543148, 21.398212>,  <35.594673, 34.907066, 21.249052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.521759, 34.543148, 21.398212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390290, 0.281146, 0.876716,
		-0.902467, 0.305348, 0.303835,
		-0.182282, -0.909791, 0.372899,
		35.467075, 34.270210, 21.510082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.371262, 35.121849, 21.849379>,  <35.594673, 34.907066, 21.249052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.371262, 35.121849, 21.849379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.446857, 34.732410, 21.900595>,  <35.492214, 34.498749, 21.931324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.446857, 34.732410, 21.900595>,  <35.371262, 35.121849, 21.849379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.446857, 34.732410, 21.900595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348040, 0.188337, 0.918367,
		-0.918232, -0.129001, 0.374444,
		0.188992, -0.973595, 0.128040,
		35.503555, 34.440331, 21.939007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.041409, 34.977810, 22.391954>,  <35.371262, 35.121849, 21.849379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.041409, 34.977810, 22.391954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.334091, 34.706295, 22.367111>,  <35.509701, 34.543388, 22.352205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.334091, 34.706295, 22.367111>,  <35.041409, 34.977810, 22.391954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.334091, 34.706295, 22.367111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303506, 0.242864, 0.921358,
		-0.610319, -0.693014, 0.383720,
		0.731706, -0.678784, -0.062109,
		35.553604, 34.502659, 22.348478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.074745, 34.902679, 23.060989>,  <35.041409, 34.977810, 22.391954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.074745, 34.902679, 23.060989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.387062, 34.709946, 22.901888>,  <35.574451, 34.594307, 22.806427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.387062, 34.709946, 22.901888>,  <35.074745, 34.902679, 23.060989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.387062, 34.709946, 22.901888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474030, 0.042113, 0.879501,
		-0.407020, -0.875252, 0.261283,
		0.780788, -0.481831, -0.397754,
		35.621300, 34.565395, 22.782562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.202702, 34.422421, 23.483843>,  <35.074745, 34.902679, 23.060989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.202702, 34.422421, 23.483843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.550198, 34.476868, 23.293365>,  <35.758694, 34.509537, 23.179079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.550198, 34.476868, 23.293365>,  <35.202702, 34.422421, 23.483843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.550198, 34.476868, 23.293365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486716, -0.056759, 0.871714,
		0.091628, -0.989065, -0.115560,
		0.868741, 0.136119, -0.476193,
		35.810822, 34.517704, 23.150507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.596802, 33.989845, 23.800903>,  <35.202702, 34.422421, 23.483843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.596802, 33.989845, 23.800903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.842415, 34.245705, 23.615942>,  <35.989784, 34.399220, 23.504965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.842415, 34.245705, 23.615942>,  <35.596802, 33.989845, 23.800903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.842415, 34.245705, 23.615942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498913, 0.139409, 0.855366,
		0.611593, -0.755924, -0.233524,
		0.614036, 0.639644, -0.462402,
		36.026627, 34.437599, 23.477222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.240028, 33.801014, 24.015680>,  <35.596802, 33.989845, 23.800903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.240028, 33.801014, 24.015680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.245480, 34.182537, 23.895636>,  <36.248749, 34.411449, 23.823608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.245480, 34.182537, 23.895636>,  <36.240028, 33.801014, 24.015680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.245480, 34.182537, 23.895636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525755, 0.248464, 0.813540,
		0.850527, -0.168870, -0.498083,
		0.013627, 0.953807, -0.300110,
		36.249569, 34.468678, 23.805603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.996189, 34.116386, 23.930784>,  <36.240028, 33.801014, 24.015680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.996189, 34.116386, 23.930784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.741188, 34.417931, 23.994390>,  <36.588188, 34.598858, 24.032555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.741188, 34.417931, 23.994390>,  <36.996189, 34.116386, 23.930784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.741188, 34.417931, 23.994390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292305, 0.045696, 0.955233,
		0.712846, 0.655443, -0.249489,
		-0.637501, 0.753861, 0.159015,
		36.549938, 34.644089, 24.042095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.229130, 34.474686, 24.486456>,  <36.996189, 34.116386, 23.930784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.229130, 34.474686, 24.486456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.875938, 34.661362, 24.466270>,  <36.664024, 34.773365, 24.454159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.875938, 34.661362, 24.466270>,  <37.229130, 34.474686, 24.486456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.875938, 34.661362, 24.466270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008912, 0.090818, 0.995828,
		0.469322, 0.879748, -0.076032,
		-0.882982, 0.466686, -0.050463,
		36.611042, 34.801369, 24.451132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.349857, 35.195755, 24.760622>,  <37.229130, 34.474686, 24.486456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.349857, 35.195755, 24.760622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.971752, 35.083477, 24.827177>,  <36.744888, 35.016109, 24.867109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.971752, 35.083477, 24.827177>,  <37.349857, 35.195755, 24.760622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.971752, 35.083477, 24.827177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123723, 0.163520, 0.978751,
		-0.301942, 0.945764, -0.119841,
		-0.945264, -0.280699, 0.166387,
		36.688171, 34.999268, 24.877092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.080650, 35.668827, 25.268873>,  <37.349857, 35.195755, 24.760622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.080650, 35.668827, 25.268873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.851685, 35.340923, 25.276146>,  <36.714306, 35.144180, 25.280510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.851685, 35.340923, 25.276146>,  <37.080650, 35.668827, 25.268873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.851685, 35.340923, 25.276146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047320, 0.055164, 0.997355,
		-0.818599, 0.570039, -0.070367,
		-0.572413, -0.819764, 0.018183,
		36.679962, 35.094994, 25.281601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.573959, 35.790226, 25.816467>,  <37.080650, 35.668827, 25.268873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.573959, 35.790226, 25.816467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.564472, 35.394905, 25.756216>,  <36.558781, 35.157711, 25.720066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.564472, 35.394905, 25.756216>,  <36.573959, 35.790226, 25.816467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.564472, 35.394905, 25.756216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053384, -0.149202, 0.987365,
		-0.998292, 0.031458, -0.049221,
		-0.023717, -0.988306, -0.150626,
		36.557358, 35.098412, 25.711029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.003773, 35.396748, 26.138773>,  <36.573959, 35.790226, 25.816467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.003773, 35.396748, 26.138773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.292732, 35.122952, 26.099560>,  <36.466106, 34.958675, 26.076031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.292732, 35.122952, 26.099560>,  <36.003773, 35.396748, 26.138773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.292732, 35.122952, 26.099560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068843, -0.212266, 0.974784,
		-0.688041, -0.697434, -0.200463,
		0.722399, -0.684492, -0.098035,
		36.509453, 34.917603, 26.070148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.801510, 35.010311, 26.628889>,  <36.003773, 35.396748, 26.138773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.801510, 35.010311, 26.628889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.147228, 34.833542, 26.532806>,  <36.354660, 34.727482, 26.475157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.147228, 34.833542, 26.532806>,  <35.801510, 35.010311, 26.628889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.147228, 34.833542, 26.532806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133105, -0.259585, 0.956503,
		-0.485055, -0.858673, -0.165536,
		0.864294, -0.441923, -0.240206,
		36.406517, 34.700966, 26.460745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.799629, 34.432243, 26.995403>,  <35.801510, 35.010311, 26.628889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.799629, 34.432243, 26.995403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.184910, 34.457657, 26.890932>,  <36.416077, 34.472904, 26.828249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.184910, 34.457657, 26.890932>,  <35.799629, 34.432243, 26.995403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.184910, 34.457657, 26.890932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268737, -0.248266, 0.930669,
		-0.005708, -0.966606, -0.256205,
		0.963197, 0.063539, -0.261180,
		36.473869, 34.476719, 26.812578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.029015, 33.845837, 27.220404>,  <35.799629, 34.432243, 26.995403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.029015, 33.845837, 27.220404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.322006, 34.118145, 27.218086>,  <36.497799, 34.281528, 27.216696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.322006, 34.118145, 27.218086>,  <36.029015, 33.845837, 27.220404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.322006, 34.118145, 27.218086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271355, -0.284139, 0.919582,
		0.624376, -0.675144, -0.392855,
		0.732476, 0.680768, -0.005794,
		36.541748, 34.322376, 27.216349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.695637, 33.562950, 27.475294>,  <36.029015, 33.845837, 27.220404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.695637, 33.562950, 27.475294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.740986, 33.952671, 27.553150>,  <36.768196, 34.186504, 27.599863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.740986, 33.952671, 27.553150>,  <36.695637, 33.562950, 27.475294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.740986, 33.952671, 27.553150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418981, -0.224515, 0.879800,
		0.900889, -0.018195, -0.433667,
		0.113373, 0.974301, 0.194640,
		36.774998, 34.244961, 27.611542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.258320, 32.980656, 27.334246>,  <36.695637, 33.562950, 27.475294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.258320, 32.980656, 27.334246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.926159, 32.875160, 27.530563>,  <35.726864, 32.811863, 27.648354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.926159, 32.875160, 27.530563>,  <36.258320, 32.980656, 27.334246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.926159, 32.875160, 27.530563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427137, -0.264268, -0.864706,
		0.357756, -0.927688, 0.106797,
		-0.830400, -0.263737, 0.490793,
		35.677040, 32.796040, 27.677801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.190765, 32.221642, 27.228323>,  <36.258320, 32.980656, 27.334246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.190765, 32.221642, 27.228323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.841858, 32.405510, 27.295088>,  <35.632515, 32.515831, 27.335146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.841858, 32.405510, 27.295088>,  <36.190765, 32.221642, 27.228323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.841858, 32.405510, 27.295088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353240, -0.356190, -0.865073,
		-0.338180, -0.813539, 0.473062,
		-0.872271, 0.459655, 0.166918,
		35.580177, 32.543411, 27.345161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.589046, 31.699120, 27.046570>,  <36.190765, 32.221642, 27.228323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.589046, 31.699120, 27.046570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.425556, 32.064152, 27.041836>,  <35.327461, 32.283173, 27.038996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.425556, 32.064152, 27.041836>,  <35.589046, 31.699120, 27.046570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.425556, 32.064152, 27.041836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455570, -0.215240, -0.863787,
		-0.790824, -0.347658, 0.503718,
		-0.408722, 0.912582, -0.011834,
		35.302940, 32.337925, 27.038286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.956768, 31.572464, 26.768982>,  <35.589046, 31.699120, 27.046570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.956768, 31.572464, 26.768982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.001812, 31.963369, 26.697123>,  <35.028839, 32.197914, 26.654007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.001812, 31.963369, 26.697123>,  <34.956768, 31.572464, 26.768982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.001812, 31.963369, 26.697123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504210, -0.099593, -0.857819,
		-0.856208, 0.187176, 0.481532,
		0.112606, 0.977265, -0.179649,
		35.035595, 32.256550, 26.643229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.225243, 31.870346, 26.638414>,  <34.956768, 31.572464, 26.768982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.225243, 31.870346, 26.638414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.491707, 32.104561, 26.453646>,  <34.651585, 32.245090, 26.342785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.491707, 32.104561, 26.453646>,  <34.225243, 31.870346, 26.638414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.491707, 32.104561, 26.453646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365511, -0.283557, -0.886565,
		-0.650099, 0.759434, 0.025125,
		0.666163, 0.585538, -0.461921,
		34.691555, 32.280224, 26.315069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.827938, 32.162136, 26.076475>,  <34.225243, 31.870346, 26.638414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.827938, 32.162136, 26.076475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.204071, 32.270359, 25.993933>,  <34.429749, 32.335293, 25.944407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.204071, 32.270359, 25.993933>,  <33.827938, 32.162136, 26.076475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.204071, 32.270359, 25.993933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215778, 0.005209, -0.976429,
		-0.263101, 0.962691, 0.063278,
		0.940329, 0.270553, -0.206357,
		34.486168, 32.351524, 25.932026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.776733, 32.706806, 25.570576>,  <33.827938, 32.162136, 26.076475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.776733, 32.706806, 25.570576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.149193, 32.564796, 25.537306>,  <34.372669, 32.479591, 25.517344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.149193, 32.564796, 25.537306>,  <33.776733, 32.706806, 25.570576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.149193, 32.564796, 25.537306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161826, -0.197947, -0.966762,
		0.326761, 0.913660, -0.241771,
		0.931150, -0.355025, -0.083173,
		34.428539, 32.458290, 25.512354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.095261, 33.087460, 24.970102>,  <33.776733, 32.706806, 25.570576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.095261, 33.087460, 24.970102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.270874, 32.736446, 25.047235>,  <34.376240, 32.525837, 25.093515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.270874, 32.736446, 25.047235>,  <34.095261, 33.087460, 24.970102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.270874, 32.736446, 25.047235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217500, -0.312044, -0.924836,
		0.871749, 0.364089, -0.327861,
		0.439030, -0.877535, 0.192835,
		34.402584, 32.473186, 25.105085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.579811, 33.030968, 24.506538>,  <34.095261, 33.087460, 24.970102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.579811, 33.030968, 24.506538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.479145, 32.661789, 24.623037>,  <34.418743, 32.440281, 24.692938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.479145, 32.661789, 24.623037>,  <34.579811, 33.030968, 24.506538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.479145, 32.661789, 24.623037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317792, -0.205441, -0.925636,
		0.914151, -0.325508, -0.241604,
		-0.251666, -0.922951, 0.291248,
		34.403645, 32.384903, 24.710411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.879780, 32.789860, 23.926685>,  <34.579811, 33.030968, 24.506538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.879780, 32.789860, 23.926685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.650436, 32.504143, 24.087204>,  <34.512829, 32.332710, 24.183516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.650436, 32.504143, 24.087204>,  <34.879780, 32.789860, 23.926685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.650436, 32.504143, 24.087204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253635, -0.310991, -0.915944,
		0.779054, -0.626950, -0.002860,
		-0.573362, -0.714296, 0.401296,
		34.478428, 32.289856, 24.207592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.074993, 32.209316, 23.614157>,  <34.879780, 32.789860, 23.926685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.074993, 32.209316, 23.614157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.713577, 32.118256, 23.759369>,  <34.496727, 32.063618, 23.846497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.713577, 32.118256, 23.759369>,  <35.074993, 32.209316, 23.614157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.713577, 32.118256, 23.759369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263120, -0.373918, -0.889356,
		0.338207, -0.899089, 0.277950,
		-0.903540, -0.227652, 0.363029,
		34.442516, 32.049961, 23.868279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.930901, 31.486853, 23.486258>,  <35.074993, 32.209316, 23.614157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.930901, 31.486853, 23.486258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.574886, 31.666170, 23.519430>,  <34.361279, 31.773760, 23.539333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.574886, 31.666170, 23.519430>,  <34.930901, 31.486853, 23.486258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.574886, 31.666170, 23.519430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295977, -0.429824, -0.853024,
		-0.346757, -0.783764, 0.515241,
		-0.890032, 0.448291, 0.082932,
		34.307877, 31.800657, 23.544310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.445930, 30.915009, 23.336660>,  <34.930901, 31.486853, 23.486258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.445930, 30.915009, 23.336660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.260735, 31.262215, 23.264891>,  <34.149616, 31.470537, 23.221828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.260735, 31.262215, 23.264891>,  <34.445930, 30.915009, 23.336660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.260735, 31.262215, 23.264891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262469, -0.327610, -0.907624,
		-0.846612, -0.373126, 0.379506,
		-0.462989, 0.868014, -0.179425,
		34.121838, 31.522619, 23.211063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.914856, 30.664570, 22.997614>,  <34.445930, 30.915009, 23.336660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.914856, 30.664570, 22.997614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.885300, 31.056320, 22.922396>,  <33.867565, 31.291370, 22.877264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.885300, 31.056320, 22.922396>,  <33.914856, 30.664570, 22.997614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.885300, 31.056320, 22.922396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337939, -0.201994, -0.919237,
		-0.938263, -0.004375, 0.345895,
		-0.073891, 0.979377, -0.188045,
		33.863132, 31.350134, 22.865982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.328617, 30.661009, 22.592499>,  <33.914856, 30.664570, 22.997614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.328617, 30.661009, 22.592499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.456837, 31.036289, 22.540308>,  <33.533768, 31.261457, 22.508993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.456837, 31.036289, 22.540308>,  <33.328617, 30.661009, 22.592499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.456837, 31.036289, 22.540308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455534, 0.031917, -0.889646,
		-0.830504, 0.344611, 0.437615,
		0.320549, 0.938203, -0.130475,
		33.553001, 31.317751, 22.501165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.764832, 31.073128, 22.383152>,  <33.328617, 30.661009, 22.592499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.764832, 31.073128, 22.383152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.098114, 31.230953, 22.228186>,  <33.298084, 31.325649, 22.135206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.098114, 31.230953, 22.228186>,  <32.764832, 31.073128, 22.383152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.098114, 31.230953, 22.228186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456059, 0.094133, -0.884957,
		-0.312704, 0.914034, 0.258377,
		0.833202, 0.394565, -0.387418,
		33.348076, 31.349323, 22.111959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.523373, 31.666355, 21.893726>,  <32.764832, 31.073128, 22.383152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.523373, 31.666355, 21.893726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.907917, 31.597042, 21.808168>,  <33.138645, 31.555454, 21.756834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.907917, 31.597042, 21.808168>,  <32.523373, 31.666355, 21.893726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.907917, 31.597042, 21.808168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212367, 0.027540, -0.976802,
		0.175154, 0.984487, -0.010324,
		0.961364, -0.173283, -0.213896,
		33.196327, 31.545057, 21.743999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.708981, 32.108376, 21.437296>,  <32.523373, 31.666355, 21.893726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.708981, 32.108376, 21.437296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.997124, 31.834217, 21.394747>,  <33.170010, 31.669722, 21.369217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.997124, 31.834217, 21.394747>,  <32.708981, 32.108376, 21.437296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.997124, 31.834217, 21.394747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170925, -0.026786, -0.984920,
		0.672215, 0.727674, -0.136447,
		0.720355, -0.685400, -0.106371,
		33.213230, 31.628597, 21.362835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.352764, 32.417297, 20.953489>,  <32.708981, 32.108376, 21.437296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.352764, 32.417297, 20.953489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.339317, 32.018295, 20.928671>,  <33.331249, 31.778894, 20.913780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.339317, 32.018295, 20.928671>,  <33.352764, 32.417297, 20.953489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.339317, 32.018295, 20.928671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174117, 0.066976, -0.982445,
		0.984151, -0.022222, -0.175934,
		-0.033616, -0.997507, -0.062045,
		33.329231, 31.719044, 20.910057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.663948, 32.288960, 20.327305>,  <33.352764, 32.417297, 20.953489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.663948, 32.288960, 20.327305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.495293, 31.929747, 20.377523>,  <33.394100, 31.714218, 20.407654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.495293, 31.929747, 20.377523>,  <33.663948, 32.288960, 20.327305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.495293, 31.929747, 20.377523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136285, -0.074122, -0.987893,
		0.896466, -0.433639, -0.091136,
		-0.421634, -0.898033, 0.125547,
		33.368801, 31.660337, 20.415188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.899437, 31.770058, 19.729881>,  <33.663948, 32.288960, 20.327305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.899437, 31.770058, 19.729881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.552818, 31.638302, 19.879868>,  <33.344849, 31.559248, 19.969860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.552818, 31.638302, 19.879868>,  <33.899437, 31.770058, 19.729881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.552818, 31.638302, 19.879868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380637, -0.049784, -0.923384,
		0.322822, -0.942880, -0.082238,
		-0.866546, -0.329392, 0.374966,
		33.292854, 31.539484, 19.992357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.576736, 31.409832, 19.198280>,  <33.899437, 31.770058, 19.729881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.576736, 31.409832, 19.198280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.254715, 31.481045, 19.424623>,  <33.061501, 31.523771, 19.560429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.254715, 31.481045, 19.424623>,  <33.576736, 31.409832, 19.198280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.254715, 31.481045, 19.424623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505355, 0.293713, -0.811387,
		-0.310652, -0.939168, -0.146486,
		-0.805054, 0.178031, 0.565857,
		33.013199, 31.534454, 19.594381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.977364, 30.932400, 18.999929>,  <33.576736, 31.409832, 19.198280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.977364, 30.932400, 18.999929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.827370, 31.268167, 19.157290>,  <32.737373, 31.469627, 19.251705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.827370, 31.268167, 19.157290>,  <32.977364, 30.932400, 18.999929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.827370, 31.268167, 19.157290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488416, 0.181796, -0.853464,
		-0.787931, -0.512180, 0.341814,
		-0.374986, 0.839418, 0.393400,
		32.714874, 31.519993, 19.275309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.347767, 30.827818, 18.819353>,  <32.977364, 30.932400, 18.999929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.347767, 30.827818, 18.819353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.387909, 31.220844, 18.881956>,  <32.411995, 31.456659, 18.919518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.387909, 31.220844, 18.881956>,  <32.347767, 30.827818, 18.819353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.387909, 31.220844, 18.881956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599315, 0.185259, -0.778781,
		-0.794198, -0.015644, 0.607457,
		0.100354, 0.982565, 0.156508,
		32.418015, 31.515614, 18.928909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.669849, 31.118231, 18.822937>,  <32.347767, 30.827818, 18.819353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.669849, 31.118231, 18.822937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.883593, 31.447416, 18.745796>,  <32.011837, 31.644928, 18.699512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.883593, 31.447416, 18.745796>,  <31.669849, 31.118231, 18.822937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.883593, 31.447416, 18.745796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661798, 0.265412, -0.701127,
		-0.525818, 0.502281, 0.686462,
		0.534358, 0.822964, -0.192850,
		32.043900, 31.694305, 18.687941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.215347, 31.602613, 18.817808>,  <31.669849, 31.118231, 18.822937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.215347, 31.602613, 18.817808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.518059, 31.763496, 18.611694>,  <31.699686, 31.860025, 18.488026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.518059, 31.763496, 18.611694>,  <31.215347, 31.602613, 18.817808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.518059, 31.763496, 18.611694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608568, 0.145771, -0.779997,
		-0.238607, 0.903870, 0.355087,
		0.756777, 0.402208, -0.515284,
		31.745092, 31.884159, 18.457109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.990032, 32.264462, 18.607925>,  <31.215347, 31.602613, 18.817808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.990032, 32.264462, 18.607925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.280603, 32.137650, 18.364025>,  <31.454947, 32.061562, 18.217686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.280603, 32.137650, 18.364025>,  <30.990032, 32.264462, 18.607925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.280603, 32.137650, 18.364025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570276, 0.217063, -0.792256,
		0.383521, 0.923243, -0.023112,
		0.726428, -0.317027, -0.609751,
		31.498531, 32.042542, 18.181099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.922583, 32.738010, 18.097212>,  <30.990032, 32.264462, 18.607925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.922583, 32.738010, 18.097212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.146494, 32.452019, 17.929663>,  <31.280840, 32.280422, 17.829132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.146494, 32.452019, 17.929663>,  <30.922583, 32.738010, 18.097212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.146494, 32.452019, 17.929663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466013, 0.146356, -0.872589,
		0.685187, 0.683657, -0.251263,
		0.559778, -0.714978, -0.418874,
		31.314426, 32.237526, 17.804001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.040573, 32.969093, 17.451210>,  <30.922583, 32.738010, 18.097212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.040573, 32.969093, 17.451210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.102331, 32.576649, 17.404608>,  <31.139385, 32.341179, 17.376646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.102331, 32.576649, 17.404608>,  <31.040573, 32.969093, 17.451210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.102331, 32.576649, 17.404608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439179, 0.037479, -0.897618,
		0.885034, 0.189753, -0.425099,
		0.154393, -0.981116, -0.116506,
		31.148649, 32.282314, 17.369656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.270084, 32.908596, 16.785049>,  <31.040573, 32.969093, 17.451210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.270084, 32.908596, 16.785049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.119959, 32.547123, 16.867508>,  <31.029884, 32.330238, 16.916983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.119959, 32.547123, 16.867508>,  <31.270084, 32.908596, 16.785049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.119959, 32.547123, 16.867508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403344, -0.041017, -0.914129,
		0.834539, -0.426232, -0.349101,
		-0.375312, -0.903684, 0.206148,
		31.007366, 32.276016, 16.929352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.377121, 32.542263, 16.194820>,  <31.270084, 32.908596, 16.785049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.377121, 32.542263, 16.194820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.088673, 32.332378, 16.375782>,  <30.915604, 32.206448, 16.484358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.088673, 32.332378, 16.375782>,  <31.377121, 32.542263, 16.194820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.088673, 32.332378, 16.375782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530113, -0.002529, -0.847923,
		0.446056, -0.851279, -0.276331,
		-0.721120, -0.524708, 0.452403,
		30.872337, 32.174965, 16.511503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.217283, 31.903166, 15.770637>,  <31.377121, 32.542263, 16.194820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.217283, 31.903166, 15.770637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.893698, 31.965187, 15.997452>,  <30.699547, 32.002399, 16.133541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.893698, 31.965187, 15.997452>,  <31.217283, 31.903166, 15.770637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.893698, 31.965187, 15.997452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586739, -0.153553, -0.795084,
		-0.036210, -0.975899, 0.215196,
		-0.808966, 0.155054, 0.567038,
		30.651009, 32.011703, 16.167562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.732153, 31.571428, 15.476839>,  <31.217283, 31.903166, 15.770637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.732153, 31.571428, 15.476839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.484913, 31.753216, 15.733403>,  <30.336569, 31.862288, 15.887341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.484913, 31.753216, 15.733403>,  <30.732153, 31.571428, 15.476839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.484913, 31.753216, 15.733403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747843, -0.088516, -0.657948,
		-0.242243, -0.886353, 0.394585,
		-0.618101, 0.454471, 0.641410,
		30.299482, 31.889557, 15.925827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.065283, 31.121019, 15.642365>,  <30.732153, 31.571428, 15.476839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.065283, 31.121019, 15.642365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.000401, 31.512468, 15.692940>,  <29.961472, 31.747337, 15.723285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.000401, 31.512468, 15.692940>,  <30.065283, 31.121019, 15.642365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.000401, 31.512468, 15.692940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756071, -0.040924, -0.653209,
		-0.634071, -0.201552, 0.746546,
		-0.162207, 0.978623, 0.126439,
		29.951738, 31.806055, 15.730871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.356140, 31.136940, 15.674624>,  <30.065283, 31.121019, 15.642365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.356140, 31.136940, 15.674624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.484198, 31.502256, 15.573900>,  <29.561031, 31.721447, 15.513466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.484198, 31.502256, 15.573900>,  <29.356140, 31.136940, 15.674624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.484198, 31.502256, 15.573900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474411, -0.075521, -0.877058,
		-0.820026, 0.400245, 0.409097,
		0.320143, 0.913291, -0.251810,
		29.580240, 31.776243, 15.498357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.806030, 31.478239, 15.327586>,  <29.356140, 31.136940, 15.674624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.806030, 31.478239, 15.327586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.120373, 31.702816, 15.223885>,  <29.308979, 31.837563, 15.161664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.120373, 31.702816, 15.223885>,  <28.806030, 31.478239, 15.327586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.120373, 31.702816, 15.223885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393902, 0.131269, -0.909730,
		-0.476728, 0.817039, 0.324312,
		0.785857, 0.561441, -0.259254,
		29.356131, 31.871248, 15.146109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.510851, 32.072723, 15.174051>,  <28.806030, 31.478239, 15.327586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.510851, 32.072723, 15.174051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.839867, 32.023884, 14.951874>,  <29.037275, 31.994579, 14.818567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.839867, 32.023884, 14.951874>,  <28.510851, 32.072723, 15.174051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.839867, 32.023884, 14.951874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512487, 0.264269, -0.817019,
		0.246546, 0.956689, 0.154796,
		0.822540, -0.122102, -0.555445,
		29.086628, 31.987253, 14.785240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.058500, 31.866264, 15.574973>,  <28.510851, 32.072723, 15.174051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.058500, 31.866264, 15.574973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.684877, 31.964001, 15.679153>,  <27.460703, 32.022644, 15.741662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.684877, 31.964001, 15.679153>,  <28.058500, 31.866264, 15.574973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.684877, 31.964001, 15.679153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095104, -0.532773, 0.840897,
		0.344228, 0.810216, 0.474402,
		-0.934057, 0.244343, 0.260451,
		27.404661, 32.037304, 15.757289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.033852, 32.354641, 16.272449>,  <28.058500, 31.866264, 15.574973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.033852, 32.354641, 16.272449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.681229, 32.168396, 16.241316>,  <27.469654, 32.056648, 16.222635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.681229, 32.168396, 16.241316>,  <28.033852, 32.354641, 16.272449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.681229, 32.168396, 16.241316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204487, -0.525238, 0.826021,
		-0.425489, 0.712269, 0.558240,
		-0.881558, -0.465615, -0.077833,
		27.416761, 32.028713, 16.217966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.669662, 32.527184, 16.943949>,  <28.033852, 32.354641, 16.272449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.669662, 32.527184, 16.943949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.479557, 32.211563, 16.788246>,  <27.365494, 32.022190, 16.694824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.479557, 32.211563, 16.788246>,  <27.669662, 32.527184, 16.943949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.479557, 32.211563, 16.788246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151372, -0.509145, 0.847265,
		-0.866725, 0.343752, 0.361418,
		-0.475263, -0.789054, -0.389254,
		27.336979, 31.974848, 16.671471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.261751, 32.407326, 17.368509>,  <27.669662, 32.527184, 16.943949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.261751, 32.407326, 17.368509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.259676, 32.053989, 17.181028>,  <27.258430, 31.841988, 17.068541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.259676, 32.053989, 17.181028>,  <27.261751, 32.407326, 17.368509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.259676, 32.053989, 17.181028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136639, -0.464937, 0.874736,
		-0.990607, -0.059506, 0.123110,
		-0.005187, -0.883342, -0.468701,
		27.258120, 31.788986, 17.040419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.036896, 32.006344, 17.912361>,  <27.261751, 32.407326, 17.368509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.036896, 32.006344, 17.912361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.219296, 31.759380, 17.655966>,  <27.328735, 31.611202, 17.502129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.219296, 31.759380, 17.655966>,  <27.036896, 32.006344, 17.912361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.219296, 31.759380, 17.655966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278541, -0.585039, 0.761672,
		-0.845269, -0.525864, -0.094803,
		0.456000, -0.617411, -0.640990,
		27.356096, 31.574158, 17.463669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.789206, 31.440479, 18.037012>,  <27.036896, 32.006344, 17.912361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.789206, 31.440479, 18.037012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.152082, 31.366369, 17.885923>,  <27.369808, 31.321903, 17.795271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.152082, 31.366369, 17.885923>,  <26.789206, 31.440479, 18.037012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.152082, 31.366369, 17.885923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206742, -0.585609, 0.783786,
		-0.366411, -0.789136, -0.492957,
		0.907194, -0.185273, -0.377721,
		27.424240, 31.310787, 17.772608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.887037, 30.700663, 18.167000>,  <26.789206, 31.440479, 18.037012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.887037, 30.700663, 18.167000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.243736, 30.869398, 18.101473>,  <27.457756, 30.970640, 18.062157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.243736, 30.869398, 18.101473>,  <26.887037, 30.700663, 18.167000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.243736, 30.869398, 18.101473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377340, -0.493319, 0.783741,
		0.249797, -0.760716, -0.599093,
		0.891749, 0.421838, -0.163819,
		27.511261, 30.995949, 18.052326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.271471, 30.263964, 18.549057>,  <26.887037, 30.700663, 18.167000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.271471, 30.263964, 18.549057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.543253, 30.549196, 18.479942>,  <27.706322, 30.720335, 18.438473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.543253, 30.549196, 18.479942>,  <27.271471, 30.263964, 18.549057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.543253, 30.549196, 18.479942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469593, -0.241687, 0.849158,
		0.563758, -0.658104, -0.499074,
		0.679455, 0.713082, -0.172788,
		27.747089, 30.763121, 18.428106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.917318, 30.034311, 18.785719>,  <27.271471, 30.263964, 18.549057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.917318, 30.034311, 18.785719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.973324, 30.430342, 18.780916>,  <28.006927, 30.667959, 18.778034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.973324, 30.430342, 18.780916>,  <27.917318, 30.034311, 18.785719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.973324, 30.430342, 18.780916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499003, -0.060083, 0.864515,
		0.855214, -0.127037, -0.502464,
		0.140015, 0.990076, -0.012008,
		28.015329, 30.727365, 18.777313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.570238, 30.124588, 19.049360>,  <27.917318, 30.034311, 18.785719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.570238, 30.124588, 19.049360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.436302, 30.501490, 19.046747>,  <28.355940, 30.727631, 19.045179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.436302, 30.501490, 19.046747>,  <28.570238, 30.124588, 19.049360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.436302, 30.501490, 19.046747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499778, 0.183473, 0.846499,
		0.798814, 0.280176, -0.532351,
		-0.334841, 0.942252, -0.006535,
		28.335850, 30.784164, 19.044786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.105036, 30.582371, 19.253504>,  <28.570238, 30.124588, 19.049360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.105036, 30.582371, 19.253504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.775879, 30.799063, 19.322063>,  <28.578384, 30.929079, 19.363199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.775879, 30.799063, 19.322063>,  <29.105036, 30.582371, 19.253504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.775879, 30.799063, 19.322063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370644, 0.283139, 0.884565,
		0.430667, 0.791429, -0.433782,
		-0.822891, 0.541731, 0.171399,
		28.529011, 30.961582, 19.373484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.339931, 31.157631, 19.562387>,  <29.105036, 30.582371, 19.253504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.339931, 31.157631, 19.562387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.954359, 31.154760, 19.668810>,  <28.723015, 31.153038, 19.732662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.954359, 31.154760, 19.668810>,  <29.339931, 31.157631, 19.562387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.954359, 31.154760, 19.668810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264577, 0.082725, 0.960810,
		-0.028905, 0.996547, -0.077842,
		-0.963931, -0.007177, 0.266055,
		28.665180, 31.152607, 19.748627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.233744, 31.773590, 19.908422>,  <29.339931, 31.157631, 19.562387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.233744, 31.773590, 19.908422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.957521, 31.519928, 20.047552>,  <28.791788, 31.367731, 20.131029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.957521, 31.519928, 20.047552>,  <29.233744, 31.773590, 19.908422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.957521, 31.519928, 20.047552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362753, 0.112376, 0.925085,
		-0.625733, 0.764996, 0.152440,
		-0.690556, -0.634154, 0.347822,
		28.750355, 31.329681, 20.151899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.868336, 32.075821, 20.516069>,  <29.233744, 31.773590, 19.908422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.868336, 32.075821, 20.516069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.855688, 31.677780, 20.553516>,  <28.848101, 31.438955, 20.575985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.855688, 31.677780, 20.553516>,  <28.868336, 32.075821, 20.516069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.855688, 31.677780, 20.553516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441357, 0.070138, 0.894586,
		-0.896774, 0.069604, 0.436979,
		-0.031618, -0.995106, 0.093618,
		28.846203, 31.379248, 20.581602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.646557, 31.842983, 21.311651>,  <28.868336, 32.075821, 20.516069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.646557, 31.842983, 21.311651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.867947, 31.548010, 21.156805>,  <29.000780, 31.371025, 21.063898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.867947, 31.548010, 21.156805>,  <28.646557, 31.842983, 21.311651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.867947, 31.548010, 21.156805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666044, 0.112832, 0.737329,
		-0.500053, -0.665927, 0.553614,
		0.553473, -0.737435, -0.387114,
		29.033989, 31.326780, 21.040670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.772491, 31.367489, 21.880770>,  <28.646557, 31.842983, 21.311651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.772491, 31.367489, 21.880770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.070650, 31.316965, 21.618952>,  <29.249546, 31.286650, 21.461861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.070650, 31.316965, 21.618952>,  <28.772491, 31.367489, 21.880770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.070650, 31.316965, 21.618952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665285, 0.078851, 0.742414,
		-0.042164, -0.988852, 0.142808,
		0.745398, -0.126311, -0.654543,
		29.294270, 31.279072, 21.422588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.288696, 30.890348, 22.231705>,  <28.772491, 31.367489, 21.880770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.288696, 30.890348, 22.231705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.516216, 31.019541, 21.929142>,  <29.652729, 31.097055, 21.747604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.516216, 31.019541, 21.929142>,  <29.288696, 30.890348, 22.231705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.516216, 31.019541, 21.929142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766821, 0.124306, 0.629709,
		0.297410, -0.938206, -0.176963,
		0.568800, 0.322981, -0.756406,
		29.686857, 31.116434, 21.702221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.986254, 30.551273, 22.244232>,  <29.288696, 30.890348, 22.231705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.986254, 30.551273, 22.244232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.035431, 30.887424, 22.033085>,  <30.064938, 31.089115, 21.906397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.035431, 30.887424, 22.033085>,  <29.986254, 30.551273, 22.244232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.035431, 30.887424, 22.033085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802769, 0.228512, 0.550767,
		0.583478, -0.491471, -0.646537,
		0.122945, 0.840380, -0.527869,
		30.072315, 31.139538, 21.874723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.667845, 30.600946, 22.138517>,  <29.986254, 30.551273, 22.244232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.667845, 30.600946, 22.138517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.538782, 30.971979, 22.063164>,  <30.461346, 31.194599, 22.017952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.538782, 30.971979, 22.063164>,  <30.667845, 30.600946, 22.138517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.538782, 30.971979, 22.063164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780784, 0.373339, 0.500994,
		0.535042, 0.014563, -0.844700,
		-0.322655, 0.927581, -0.188382,
		30.441986, 31.250254, 22.006649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.258093, 31.014503, 21.839777>,  <30.667845, 30.600946, 22.138517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.258093, 31.014503, 21.839777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.988266, 31.259521, 22.004578>,  <30.826370, 31.406532, 22.103458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.988266, 31.259521, 22.004578>,  <31.258093, 31.014503, 21.839777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.988266, 31.259521, 22.004578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714900, 0.402908, 0.571474,
		0.184054, 0.680039, -0.709698,
		-0.674568, 0.612545, 0.412004,
		30.785896, 31.443285, 22.128180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.706526, 31.604321, 22.001759>,  <31.258093, 31.014503, 21.839777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.706526, 31.604321, 22.001759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.361629, 31.658960, 22.196852>,  <31.154692, 31.691744, 22.313908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.361629, 31.658960, 22.196852>,  <31.706526, 31.604321, 22.001759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.361629, 31.658960, 22.196852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498714, 0.397177, 0.770412,
		-0.088478, 0.907519, -0.410586,
		-0.862239, 0.136601, 0.487734,
		31.102959, 31.699940, 22.343172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.836857, 32.201237, 22.359406>,  <31.706526, 31.604321, 22.001759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.836857, 32.201237, 22.359406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.512400, 32.060562, 22.546324>,  <31.317726, 31.976158, 22.658474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.512400, 32.060562, 22.546324>,  <31.836857, 32.201237, 22.359406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.512400, 32.060562, 22.546324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385165, 0.280036, 0.879334,
		-0.440108, 0.893251, -0.091692,
		-0.811143, -0.351685, 0.467295,
		31.269056, 31.955057, 22.686512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.646931, 32.720833, 22.835056>,  <31.836857, 32.201237, 22.359406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.646931, 32.720833, 22.835056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.509260, 32.366867, 22.960573>,  <31.426659, 32.154488, 23.035883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.509260, 32.366867, 22.960573>,  <31.646931, 32.720833, 22.835056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.509260, 32.366867, 22.960573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262318, 0.230272, 0.937104,
		-0.901517, 0.404840, 0.152876,
		-0.344174, -0.884918, 0.313791,
		31.406008, 32.101391, 23.054710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.364122, 32.879951, 23.545485>,  <31.646931, 32.720833, 22.835056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.364122, 32.879951, 23.545485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.414627, 32.486046, 23.497644>,  <31.444929, 32.249702, 23.468941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.414627, 32.486046, 23.497644>,  <31.364122, 32.879951, 23.545485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.414627, 32.486046, 23.497644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355071, -0.067712, 0.932384,
		-0.926274, -0.160191, 0.341110,
		0.126262, -0.984761, -0.119599,
		31.452505, 32.190617, 23.461765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.056633, 32.581543, 24.081341>,  <31.364122, 32.879951, 23.545485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.056633, 32.581543, 24.081341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.298445, 32.281120, 23.975159>,  <31.443531, 32.100868, 23.911449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.298445, 32.281120, 23.975159>,  <31.056633, 32.581543, 24.081341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.298445, 32.281120, 23.975159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320084, -0.076128, 0.944326,
		-0.729447, -0.655839, 0.194379,
		0.604528, -0.751053, -0.265455,
		31.479803, 32.055805, 23.895521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.876396, 32.150009, 24.631830>,  <31.056633, 32.581543, 24.081341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.876396, 32.150009, 24.631830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.218845, 32.036224, 24.459257>,  <31.424314, 31.967955, 24.355713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.218845, 32.036224, 24.459257>,  <30.876396, 32.150009, 24.631830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.218845, 32.036224, 24.459257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356801, -0.278550, 0.891685,
		-0.373823, -0.917329, -0.136978,
		0.856125, -0.284459, -0.431433,
		31.475683, 31.950888, 24.329828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.003563, 31.470495, 24.876154>,  <30.876396, 32.150009, 24.631830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.003563, 31.470495, 24.876154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.367605, 31.583900, 24.755274>,  <31.586031, 31.651943, 24.682745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.367605, 31.583900, 24.755274>,  <31.003563, 31.470495, 24.876154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.367605, 31.583900, 24.755274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392150, -0.353671, 0.849197,
		0.133879, -0.891368, -0.433058,
		0.910107, 0.283514, -0.302201,
		31.640636, 31.668955, 24.664614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.510227, 30.891552, 25.009327>,  <31.003563, 31.470495, 24.876154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.510227, 30.891552, 25.009327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.712255, 31.236746, 25.014364>,  <31.833473, 31.443863, 25.017387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.712255, 31.236746, 25.014364>,  <31.510227, 30.891552, 25.009327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.712255, 31.236746, 25.014364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550126, -0.333142, 0.765753,
		0.665030, -0.379832, -0.643011,
		0.505071, 0.862986, 0.012594,
		31.863777, 31.495642, 25.018143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.128929, 30.657822, 25.189260>,  <31.510227, 30.891552, 25.009327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.128929, 30.657822, 25.189260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.150299, 31.049051, 25.269777>,  <32.163120, 31.283789, 25.318089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.150299, 31.049051, 25.269777>,  <32.128929, 30.657822, 25.189260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.150299, 31.049051, 25.269777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393861, -0.205876, 0.895817,
		0.917617, 0.031427, -0.396222,
		0.053420, 0.978073, 0.201293,
		32.166325, 31.342474, 25.330166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.801491, 30.742725, 25.517080>,  <32.128929, 30.657822, 25.189260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.801491, 30.742725, 25.517080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.558239, 31.047991, 25.604492>,  <32.412289, 31.231150, 25.656939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.558239, 31.047991, 25.604492>,  <32.801491, 30.742725, 25.517080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.558239, 31.047991, 25.604492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195538, -0.122791, 0.972979,
		0.769375, 0.634432, -0.074554,
		-0.608134, 0.763164, 0.218528,
		32.375797, 31.276939, 25.670052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.070713, 31.006285, 26.180208>,  <32.801491, 30.742725, 25.517080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.070713, 31.006285, 26.180208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.726315, 31.203346, 26.129660>,  <32.519676, 31.321583, 26.099331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.726315, 31.203346, 26.129660>,  <33.070713, 31.006285, 26.180208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.726315, 31.203346, 26.129660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050793, 0.163938, 0.985162,
		0.506062, 0.854644, -0.116127,
		-0.861000, 0.492654, -0.126373,
		32.468014, 31.351143, 26.091747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.175720, 31.648218, 26.645313>,  <33.070713, 31.006285, 26.180208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.175720, 31.648218, 26.645313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.787735, 31.577612, 26.578369>,  <32.554943, 31.535248, 26.538202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.787735, 31.577612, 26.578369>,  <33.175720, 31.648218, 26.645313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.787735, 31.577612, 26.578369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181398, 0.066526, 0.981157,
		-0.162054, 0.982047, -0.096548,
		-0.969966, -0.176514, -0.167361,
		32.496746, 31.524658, 26.528160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.811241, 32.185165, 26.886427>,  <33.175720, 31.648218, 26.645313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.811241, 32.185165, 26.886427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.530724, 31.900379, 26.872103>,  <32.362411, 31.729507, 26.863508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.530724, 31.900379, 26.872103>,  <32.811241, 32.185165, 26.886427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.530724, 31.900379, 26.872103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263910, 0.212631, 0.940818,
		-0.662219, 0.669245, -0.337013,
		-0.701297, -0.711969, -0.035812,
		32.320335, 31.686789, 26.861359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.194176, 32.478779, 27.096277>,  <32.811241, 32.185165, 26.886427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.194176, 32.478779, 27.096277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.129749, 32.087257, 27.146893>,  <32.091095, 31.852346, 27.177261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.129749, 32.087257, 27.146893>,  <32.194176, 32.478779, 27.096277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.129749, 32.087257, 27.146893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361776, 0.177838, 0.915146,
		-0.918247, 0.101617, -0.382749,
		-0.161062, -0.978799, 0.126537,
		32.081432, 31.793617, 27.184855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.520407, 32.431614, 27.282267>,  <32.194176, 32.478779, 27.096277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.520407, 32.431614, 27.282267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.704670, 32.099098, 27.406685>,  <31.815228, 31.899588, 27.481335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.704670, 32.099098, 27.406685>,  <31.520407, 32.431614, 27.282267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.704670, 32.099098, 27.406685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124640, 0.286382, 0.949974,
		-0.878783, -0.476382, 0.028312,
		0.460658, -0.831292, 0.311044,
		31.842867, 31.849710, 27.499998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.117878, 32.128925, 27.816534>,  <31.520407, 32.431614, 27.282267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.117878, 32.128925, 27.816534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.461273, 31.937162, 27.889376>,  <31.667311, 31.822104, 27.933081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.461273, 31.937162, 27.889376>,  <31.117878, 32.128925, 27.816534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.461273, 31.937162, 27.889376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132902, 0.134978, 0.981895,
		-0.495310, -0.867149, 0.052162,
		0.858490, -0.479410, 0.182102,
		31.718821, 31.793339, 27.944006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.022413, 31.813215, 28.417135>,  <31.117878, 32.128925, 27.816534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.022413, 31.813215, 28.417135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.419817, 31.837299, 28.378536>,  <31.658260, 31.851749, 28.355377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.419817, 31.837299, 28.378536>,  <31.022413, 31.813215, 28.417135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.419817, 31.837299, 28.378536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085348, 0.166170, 0.982397,
		0.075185, -0.984257, 0.159953,
		0.993510, 0.060210, -0.096498,
		31.717871, 31.855362, 28.349586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.359308, 31.492039, 29.059820>,  <31.022413, 31.813215, 28.417135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.359308, 31.492039, 29.059820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.666164, 31.701120, 28.911077>,  <31.850279, 31.826569, 28.821833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.666164, 31.701120, 28.911077>,  <31.359308, 31.492039, 29.059820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.666164, 31.701120, 28.911077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277553, 0.252147, 0.927031,
		0.578325, -0.814372, 0.048354,
		0.767140, 0.522705, -0.371855,
		31.896307, 31.857931, 28.799520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.882774, 31.274614, 29.466934>,  <31.359308, 31.492039, 29.059820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.882774, 31.274614, 29.466934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.031868, 31.609076, 29.305979>,  <32.121323, 31.809753, 29.209406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.031868, 31.609076, 29.305979>,  <31.882774, 31.274614, 29.466934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.031868, 31.609076, 29.305979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323962, 0.289093, 0.900818,
		0.869551, -0.466122, -0.163128,
		0.372732, 0.836155, -0.402387,
		32.143688, 31.859922, 29.185263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.500843, 31.380091, 29.754223>,  <31.882774, 31.274614, 29.466934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.500843, 31.380091, 29.754223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.394855, 31.751150, 29.648958>,  <32.331261, 31.973785, 29.585800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.394855, 31.751150, 29.648958>,  <32.500843, 31.380091, 29.754223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.394855, 31.751150, 29.648958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262570, 0.332016, 0.905993,
		0.927818, 0.170966, -0.331548,
		-0.264974, 0.927651, -0.263159,
		32.315365, 32.029446, 29.570011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.063496, 31.888338, 30.028893>,  <32.500843, 31.380091, 29.754223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.063496, 31.888338, 30.028893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.720135, 32.091576, 30.000639>,  <32.514118, 32.213520, 29.983686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.720135, 32.091576, 30.000639>,  <33.063496, 31.888338, 30.028893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.720135, 32.091576, 30.000639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163828, 0.402011, 0.900859,
		0.486118, 0.761725, -0.428326,
		-0.858399, 0.508096, -0.070633,
		32.462616, 32.244003, 29.979448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.048218, 32.236740, 30.622978>,  <33.063496, 31.888338, 30.028893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.048218, 32.236740, 30.622978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.689026, 32.317547, 30.466610>,  <32.473511, 32.366032, 30.372789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.689026, 32.317547, 30.466610>,  <33.048218, 32.236740, 30.622978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.689026, 32.317547, 30.466610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318036, 0.316009, 0.893863,
		0.304112, 0.926999, -0.219521,
		-0.897980, 0.202019, -0.390921,
		32.419632, 32.378151, 30.349333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.451363, 32.762051, 30.422977>,  <33.048218, 32.236740, 30.622978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.451363, 32.762051, 30.422977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.532688, 32.487293, 30.702074>,  <33.581482, 32.322437, 30.869532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.532688, 32.487293, 30.702074>,  <33.451363, 32.762051, 30.422977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.532688, 32.487293, 30.702074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724840, 0.584670, 0.364374,
		-0.658234, 0.431668, 0.616758,
		0.203311, -0.686894, 0.697740,
		33.593681, 32.281223, 30.911396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.363564, 33.059689, 31.082899>,  <33.451363, 32.762051, 30.422977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.363564, 33.059689, 31.082899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.637611, 32.768574, 31.070629>,  <33.802040, 32.593906, 31.063267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.637611, 32.768574, 31.070629>,  <33.363564, 33.059689, 31.082899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.637611, 32.768574, 31.070629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700565, 0.646790, 0.301449,
		-0.199551, -0.228017, 0.952989,
		0.685119, -0.727785, -0.030674,
		33.843147, 32.550240, 31.061426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.792534, 33.425186, 31.377092>,  <33.363564, 33.059689, 31.082899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.792534, 33.425186, 31.377092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.012711, 33.094933, 31.327557>,  <34.144817, 32.896778, 31.297834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.012711, 33.094933, 31.327557>,  <33.792534, 33.425186, 31.377092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.012711, 33.094933, 31.327557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813340, 0.496842, 0.302699,
		-0.188390, -0.267343, 0.945006,
		0.550443, -0.825637, -0.123841,
		34.177845, 32.847240, 31.290405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.115051, 33.108551, 31.962492>,  <33.792534, 33.425186, 31.377092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.115051, 33.108551, 31.962492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.364159, 33.017120, 31.663183>,  <34.513622, 32.962261, 31.483599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.364159, 33.017120, 31.663183>,  <34.115051, 33.108551, 31.962492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.364159, 33.017120, 31.663183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722012, 0.536343, 0.437076,
		0.301426, -0.812459, 0.499052,
		0.622769, -0.228575, -0.748273,
		34.550991, 32.948547, 31.438702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.197495, 33.889317, 31.921146>,  <34.115051, 33.108551, 31.962492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.197495, 33.889317, 31.921146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.907341, 33.991257, 31.665375>,  <33.733250, 34.052422, 31.511911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.907341, 33.991257, 31.665375>,  <34.197495, 33.889317, 31.921146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.907341, 33.991257, 31.665375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640561, 0.590000, -0.491510,
		0.252000, -0.766126, -0.591225,
		-0.725381, 0.254855, -0.639431,
		33.689728, 34.067715, 31.473545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.393452, 33.837837, 31.190973>,  <34.197495, 33.889317, 31.921146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.393452, 33.837837, 31.190973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.095234, 34.104042, 31.205214>,  <33.916306, 34.263763, 31.213758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.095234, 34.104042, 31.205214>,  <34.393452, 33.837837, 31.190973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.095234, 34.104042, 31.205214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604703, 0.697947, -0.383672,
		-0.280187, -0.264514, -0.922783,
		-0.745540, 0.665509, 0.035603,
		33.871571, 34.303696, 31.215895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.326157, 34.062492, 30.466709>,  <34.393452, 33.837837, 31.190973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.326157, 34.062492, 30.466709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.227634, 34.332394, 30.745001>,  <34.168522, 34.494335, 30.911976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.227634, 34.332394, 30.745001>,  <34.326157, 34.062492, 30.466709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.227634, 34.332394, 30.745001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492994, 0.705263, -0.509471,
		-0.834441, 0.217507, -0.506358,
		-0.246302, 0.674755, 0.695730,
		34.153744, 34.534821, 30.953720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.919750, 34.543289, 30.200756>,  <34.326157, 34.062492, 30.466709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.919750, 34.543289, 30.200756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.131905, 34.700150, 30.501400>,  <34.259197, 34.794266, 30.681786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.131905, 34.700150, 30.501400>,  <33.919750, 34.543289, 30.200756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.131905, 34.700150, 30.501400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398000, 0.667626, -0.629183,
		-0.748526, 0.632848, 0.198023,
		0.530382, 0.392146, 0.751609,
		34.291019, 34.817795, 30.726883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.789581, 35.229656, 30.218946>,  <33.919750, 34.543289, 30.200756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.789581, 35.229656, 30.218946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.157719, 35.123627, 30.333981>,  <34.378601, 35.060009, 30.403000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.157719, 35.123627, 30.333981>,  <33.789581, 35.229656, 30.218946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.157719, 35.123627, 30.333981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390257, 0.573745, -0.720080,
		0.025876, 0.774952, 0.631490,
		0.920342, -0.265076, 0.287584,
		34.433823, 35.044106, 30.420256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.577934, 35.940758, 30.446030>,  <33.789581, 35.229656, 30.218946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.577934, 35.940758, 30.446030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.345211, 36.088646, 30.735802>,  <33.205578, 36.177380, 30.909666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.345211, 36.088646, 30.735802>,  <33.577934, 35.940758, 30.446030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.345211, 36.088646, 30.735802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745977, 0.597469, 0.294192,
		-0.324057, 0.711574, -0.623418,
		-0.581812, 0.369721, 0.724432,
		33.170666, 36.199562, 30.953131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.448795, 36.763142, 30.391907>,  <33.577934, 35.940758, 30.446030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.448795, 36.763142, 30.391907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.441986, 36.604076, 30.758858>,  <33.437901, 36.508636, 30.979029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.441986, 36.604076, 30.758858>,  <33.448795, 36.763142, 30.391907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.441986, 36.604076, 30.758858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824192, 0.513852, 0.238040,
		-0.566054, 0.760147, 0.318998,
		-0.017027, -0.397659, 0.917375,
		33.436878, 36.484779, 31.034071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.444412, 37.304119, 30.899061>,  <33.448795, 36.763142, 30.391907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.444412, 37.304119, 30.899061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.567093, 36.978588, 31.096495>,  <33.640701, 36.783272, 31.214954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.567093, 36.978588, 31.096495>,  <33.444412, 37.304119, 30.899061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.567093, 36.978588, 31.096495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806322, 0.497703, 0.319587,
		-0.505745, 0.299968, 0.808852,
		0.306702, -0.813825, 0.493582,
		33.659103, 36.734440, 31.244570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.696060, 37.462631, 31.614855>,  <33.444412, 37.304119, 30.899061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.696060, 37.462631, 31.614855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.895020, 37.144325, 31.476669>,  <34.014397, 36.953342, 31.393757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.895020, 37.144325, 31.476669>,  <33.696060, 37.462631, 31.614855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.895020, 37.144325, 31.476669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866521, 0.436613, 0.241889,
		-0.041653, -0.419668, 0.906721,
		0.497399, -0.795769, -0.345466,
		34.044239, 36.905594, 31.373030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.287994, 37.271000, 32.093052>,  <33.696060, 37.462631, 31.614855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.287994, 37.271000, 32.093052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.364517, 37.168556, 31.714041>,  <34.410431, 37.107090, 31.486633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.364517, 37.168556, 31.714041>,  <34.287994, 37.271000, 32.093052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.364517, 37.168556, 31.714041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965025, 0.225370, 0.133922,
		0.179245, -0.940008, 0.290271,
		0.191306, -0.256114, -0.947527,
		34.421909, 37.091721, 31.429783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880100, 36.849682, 32.172318>,  <34.287994, 37.271000, 32.093052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880100, 36.849682, 32.172318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.842701, 37.015347, 31.810162>,  <34.820263, 37.114746, 31.592869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.842701, 37.015347, 31.810162>,  <34.880100, 36.849682, 32.172318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.842701, 37.015347, 31.810162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765645, 0.611209, 0.200527,
		0.636432, -0.674458, -0.374247,
		-0.093496, 0.414162, -0.905389,
		34.814651, 37.139595, 31.538546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.462074, 36.947109, 31.646351>,  <34.880100, 36.849682, 32.172318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.462074, 36.947109, 31.646351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.277935, 37.060463, 31.309835>,  <35.167450, 37.128475, 31.107925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.277935, 37.060463, 31.309835>,  <35.462074, 36.947109, 31.646351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.277935, 37.060463, 31.309835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602228, 0.795957, -0.061425,
		0.652225, -0.534926, -0.537082,
		-0.460352, 0.283383, -0.841290,
		35.139828, 37.145477, 31.057447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.927238, 36.885391, 31.099087>,  <35.462074, 36.947109, 31.646351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.927238, 36.885391, 31.099087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.665379, 37.177750, 31.021919>,  <35.508263, 37.353165, 30.975618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.665379, 37.177750, 31.021919>,  <35.927238, 36.885391, 31.099087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.665379, 37.177750, 31.021919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744353, 0.667774, 0.004065,
		0.131796, -0.140938, -0.981206,
		-0.654651, 0.730900, -0.192918,
		35.468983, 37.397018, 30.964045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229485, 37.251465, 30.603886>,  <35.927238, 36.885391, 31.099087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.229485, 37.251465, 30.603886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.990891, 37.499119, 30.808189>,  <35.847733, 37.647713, 30.930771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.990891, 37.499119, 30.808189>,  <36.229485, 37.251465, 30.603886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.990891, 37.499119, 30.808189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737383, 0.674035, 0.044083,
		-0.316975, 0.402918, -0.858594,
		-0.596484, 0.619139, 0.510757,
		35.811947, 37.684860, 30.961416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.520298, 37.948959, 30.519274>,  <36.229485, 37.251465, 30.603886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.520298, 37.948959, 30.519274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.278206, 38.001442, 30.833340>,  <36.132950, 38.032932, 31.021780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.278206, 38.001442, 30.833340>,  <36.520298, 37.948959, 30.519274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.278206, 38.001442, 30.833340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550175, 0.781791, 0.293445,
		-0.575331, 0.609579, -0.545351,
		-0.605228, 0.131210, 0.785164,
		36.096638, 38.040806, 31.068890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.447449, 38.589218, 30.619917>,  <36.520298, 37.948959, 30.519274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.447449, 38.589218, 30.619917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.308388, 38.492947, 30.982401>,  <36.224953, 38.435184, 31.199890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.308388, 38.492947, 30.982401>,  <36.447449, 38.589218, 30.619917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.308388, 38.492947, 30.982401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563990, 0.718421, 0.407169,
		-0.749035, 0.652645, -0.114021,
		-0.347652, -0.240677, 0.906208,
		36.204094, 38.420742, 31.254263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.111706, 39.214176, 30.940645>,  <36.447449, 38.589218, 30.619917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.111706, 39.214176, 30.940645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.211754, 38.971390, 31.242382>,  <36.271782, 38.825718, 31.423424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.211754, 38.971390, 31.242382>,  <36.111706, 39.214176, 30.940645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.211754, 38.971390, 31.242382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492957, 0.750396, 0.440340,
		-0.833326, 0.261719, 0.486900,
		0.250123, -0.606967, 0.754341,
		36.286789, 38.789299, 31.468685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.100246, 39.755047, 31.371384>,  <36.111706, 39.214176, 30.940645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.100246, 39.755047, 31.371384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.249336, 39.423710, 31.538679>,  <36.338791, 39.224907, 31.639057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.249336, 39.423710, 31.538679>,  <36.100246, 39.755047, 31.371384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.249336, 39.423710, 31.538679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499506, 0.558942, 0.661874,
		-0.782031, -0.037781, 0.622093,
		0.372720, -0.828346, 0.418238,
		36.361153, 39.175205, 31.664150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.773937, 39.760380, 32.075356>,  <36.100246, 39.755047, 31.371384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.773937, 39.760380, 32.075356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.122681, 39.567581, 32.040600>,  <36.331924, 39.451900, 32.019749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.122681, 39.567581, 32.040600>,  <35.773937, 39.760380, 32.075356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.122681, 39.567581, 32.040600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448531, 0.714538, 0.536895,
		-0.196698, -0.507065, 0.839163,
		0.871854, -0.481997, -0.086886,
		36.384235, 39.422981, 32.014534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.166885, 39.519043, 32.663921>,  <35.773937, 39.760380, 32.075356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.166885, 39.519043, 32.663921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.421398, 39.594173, 32.364624>,  <36.574104, 39.639252, 32.185047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.421398, 39.594173, 32.364624>,  <36.166885, 39.519043, 32.663921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.421398, 39.594173, 32.364624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485047, 0.656814, 0.577342,
		0.599895, -0.730286, 0.326816,
		0.636282, 0.187823, -0.748243,
		36.612282, 39.650520, 32.140152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.900246, 39.448296, 32.916466>,  <36.166885, 39.519043, 32.663921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.900246, 39.448296, 32.916466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.894077, 39.707993, 32.612297>,  <36.890377, 39.863811, 32.429794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.894077, 39.707993, 32.612297>,  <36.900246, 39.448296, 32.916466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.894077, 39.707993, 32.612297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737555, 0.520880, 0.429764,
		0.675111, -0.554226, -0.486887,
		-0.015423, 0.649244, -0.760424,
		36.889450, 39.902767, 32.384171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.560436, 39.569340, 32.535263>,  <36.900246, 39.448296, 32.916466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.560436, 39.569340, 32.535263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.326881, 39.893089, 32.560539>,  <37.186749, 40.087337, 32.575703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.326881, 39.893089, 32.560539>,  <37.560436, 39.569340, 32.535263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.326881, 39.893089, 32.560539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773645, 0.531142, 0.345488,
		0.246067, 0.250610, -0.936293,
		-0.583888, 0.809372, 0.063186,
		37.151714, 40.135902, 32.579494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.040794, 39.716599, 33.116570>,  <37.560436, 39.569340, 32.535263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.040794, 39.716599, 33.116570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.177387, 39.478779, 32.825394>,  <38.259342, 39.336086, 32.650688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.177387, 39.478779, 32.825394>,  <38.040794, 39.716599, 33.116570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.177387, 39.478779, 32.825394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624663, -0.435126, 0.648431,
		-0.702271, -0.676146, 0.222806,
		0.341485, -0.594552, -0.727939,
		38.279831, 39.300415, 32.607014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.107967, 39.063747, 33.361473>,  <38.040794, 39.716599, 33.116570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.107967, 39.063747, 33.361473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.333092, 39.046604, 33.031284>,  <38.468166, 39.036320, 32.833172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.333092, 39.046604, 33.031284>,  <38.107967, 39.063747, 33.361473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.333092, 39.046604, 33.031284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685794, -0.533296, 0.495260,
		-0.461447, -0.844843, -0.270754,
		0.562809, -0.042855, -0.825476,
		38.501934, 39.033749, 32.783642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162861, 38.378834, 33.136215>,  <38.107967, 39.063747, 33.361473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.162861, 38.378834, 33.136215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.483700, 38.599586, 33.044945>,  <38.676205, 38.732037, 32.990181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.483700, 38.599586, 33.044945>,  <38.162861, 38.378834, 33.136215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.483700, 38.599586, 33.044945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547805, -0.527802, 0.649103,
		0.237797, -0.645640, -0.725673,
		0.802099, 0.551882, -0.228175,
		38.724331, 38.765152, 32.976494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.689072, 37.907440, 33.092052>,  <38.162861, 38.378834, 33.136215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.689072, 37.907440, 33.092052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.890945, 38.252750, 33.089333>,  <39.012070, 38.459938, 33.087700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.890945, 38.252750, 33.089333>,  <38.689072, 37.907440, 33.092052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.890945, 38.252750, 33.089333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753405, -0.436581, 0.491710,
		0.421511, -0.253287, -0.870733,
		0.504689, 0.863275, -0.006804,
		39.042351, 38.511734, 33.087292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.310879, 37.808052, 32.702450>,  <38.689072, 37.907440, 33.092052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.310879, 37.808052, 32.702450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.370972, 38.100491, 32.968658>,  <39.407028, 38.275955, 33.128384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.370972, 38.100491, 32.968658>,  <39.310879, 37.808052, 32.702450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.370972, 38.100491, 32.968658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733960, -0.533476, 0.420364,
		0.662370, 0.425318, -0.616742,
		0.150229, 0.731100, 0.665525,
		39.416042, 38.319820, 33.168316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.992371, 38.143715, 32.543255>,  <39.310879, 37.808052, 32.702450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.992371, 38.143715, 32.543255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.917118, 38.192337, 32.933094>,  <39.871967, 38.221508, 33.166996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.917118, 38.192337, 32.933094>,  <39.992371, 38.143715, 32.543255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.917118, 38.192337, 32.933094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849585, -0.477722, 0.223580,
		0.492761, 0.870061, -0.013396,
		-0.188128, 0.121552, 0.974594,
		39.860680, 38.228802, 33.225471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.663502, 38.307434, 32.968208>,  <39.992371, 38.143715, 32.543255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.663502, 38.307434, 32.968208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.414864, 38.207458, 33.265167>,  <40.265678, 38.147472, 33.443340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.414864, 38.207458, 33.265167>,  <40.663502, 38.307434, 32.968208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.414864, 38.207458, 33.265167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723545, -0.546353, 0.421878,
		0.300165, 0.799393, 0.520453,
		-0.621597, -0.249938, 0.742393,
		40.228386, 38.132477, 33.487885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.057301, 38.313824, 33.612881>,  <40.663502, 38.307434, 32.968208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.057301, 38.313824, 33.612881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.743004, 38.083221, 33.702541>,  <40.554424, 37.944859, 33.756340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.743004, 38.083221, 33.702541>,  <41.057301, 38.313824, 33.612881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.743004, 38.083221, 33.702541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609963, -0.661994, 0.435557,
		-0.102712, 0.478963, 0.871805,
		-0.785745, -0.576506, 0.224155,
		40.507278, 37.910271, 33.769787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.986813, 38.234512, 34.432110>,  <41.057301, 38.313824, 33.612881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.986813, 38.234512, 34.432110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.850834, 37.939529, 34.198669>,  <40.769249, 37.762539, 34.058605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.850834, 37.939529, 34.198669>,  <40.986813, 38.234512, 34.432110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.850834, 37.939529, 34.198669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558710, -0.657542, 0.505452,
		-0.756492, -0.154237, 0.635555,
		-0.339945, -0.737462, -0.583599,
		40.748852, 37.718292, 34.023590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.619034, 37.618034, 34.767216>,  <40.986813, 38.234512, 34.432110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.619034, 37.618034, 34.767216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.749298, 37.478474, 34.415714>,  <40.827457, 37.394737, 34.204811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.749298, 37.478474, 34.415714>,  <40.619034, 37.618034, 34.767216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.749298, 37.478474, 34.415714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630480, -0.612478, 0.476829,
		-0.704584, -0.709324, 0.020511,
		0.325664, -0.348898, -0.878757,
		40.846996, 37.373806, 34.152088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.401287, 37.381050, 34.491062>,  <40.619034, 37.618034, 34.767216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.401287, 37.381050, 34.491062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.461479, 37.194225, 34.142532>,  <41.497593, 37.082130, 33.933414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.461479, 37.194225, 34.142532>,  <41.401287, 37.381050, 34.491062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.461479, 37.194225, 34.142532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930786, 0.363947, -0.034344,
		0.333157, -0.805848, 0.489505,
		0.150478, -0.467067, -0.871324,
		41.506622, 37.054104, 33.881134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.054108, 37.225979, 34.457008>,  <41.401287, 37.381050, 34.491062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.054108, 37.225979, 34.457008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.961544, 37.223335, 34.067875>,  <41.906006, 37.221748, 33.834396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.961544, 37.223335, 34.067875>,  <42.054108, 37.225979, 34.457008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.961544, 37.223335, 34.067875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739090, 0.649051, -0.180217,
		0.632611, -0.760716, -0.145310,
		-0.231408, -0.006611, -0.972835,
		41.892120, 37.221352, 33.776024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.610989, 37.001595, 33.944054>,  <42.054108, 37.225979, 34.457008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.610989, 37.001595, 33.944054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.334965, 37.268826, 33.832699>,  <42.169350, 37.429165, 33.765884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.334965, 37.268826, 33.832699>,  <42.610989, 37.001595, 33.944054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.334965, 37.268826, 33.832699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713207, 0.693116, -0.104533,
		0.123119, -0.270681, -0.954764,
		-0.690056, 0.668074, -0.278387,
		42.127949, 37.469246, 33.749184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.741806, 37.445526, 33.230827>,  <42.610989, 37.001595, 33.944054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.741806, 37.445526, 33.230827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.509529, 37.646908, 33.486740>,  <42.370163, 37.767738, 33.640289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.509529, 37.646908, 33.486740>,  <42.741806, 37.445526, 33.230827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.509529, 37.646908, 33.486740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649388, 0.760405, -0.008962,
		-0.491008, 0.410265, -0.768501,
		-0.580695, 0.503456, 0.639786,
		42.335320, 37.797943, 33.678677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.334538, 37.625103, 33.665665>,  <42.741806, 37.445526, 33.230827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.334538, 37.625103, 33.665665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.193165, 37.787468, 34.002789>,  <43.108341, 37.884888, 34.205063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.193165, 37.787468, 34.002789>,  <43.334538, 37.625103, 33.665665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.193165, 37.787468, 34.002789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456813, 0.861116, -0.223162,
		-0.816338, 0.306133, -0.489770,
		-0.353431, 0.405909, 0.842807,
		43.087135, 37.909241, 34.255630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.140190, 38.324841, 33.469414>,  <43.334538, 37.625103, 33.665665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.140190, 38.324841, 33.469414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.216614, 38.271767, 33.858440>,  <43.262470, 38.239922, 34.091858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.216614, 38.271767, 33.858440>,  <43.140190, 38.324841, 33.469414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.216614, 38.271767, 33.858440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619225, 0.785079, -0.014541,
		-0.761614, 0.605018, 0.232159,
		0.191061, -0.132685, 0.972569,
		43.273933, 38.231960, 34.150211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.942692, 38.890377, 33.801250>,  <43.140190, 38.324841, 33.469414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.942692, 38.890377, 33.801250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.257172, 38.703167, 33.962662>,  <43.445858, 38.590839, 34.059509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.257172, 38.703167, 33.962662>,  <42.942692, 38.890377, 33.801250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.257172, 38.703167, 33.962662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567566, 0.805180, -0.171913,
		-0.244455, 0.364188, 0.898670,
		0.786200, -0.468029, 0.403531,
		43.493031, 38.562759, 34.083721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.174564, 39.322124, 34.385651>,  <42.942692, 38.890377, 33.801250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.174564, 39.322124, 34.385651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.458004, 39.146523, 34.164680>,  <43.628067, 39.041161, 34.032097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.458004, 39.146523, 34.164680>,  <43.174564, 39.322124, 34.385651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.458004, 39.146523, 34.164680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368709, 0.897873, -0.240578,
		0.601620, -0.033212, 0.798092,
		0.708595, -0.439000, -0.552424,
		43.670582, 39.014824, 33.998955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.854595, 39.519470, 34.500214>,  <43.174564, 39.322124, 34.385651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.854595, 39.519470, 34.500214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.850979, 39.415459, 34.113991>,  <43.848808, 39.353050, 33.882256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.850979, 39.415459, 34.113991>,  <43.854595, 39.519470, 34.500214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.850979, 39.415459, 34.113991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374785, 0.894330, -0.244355,
		0.927068, -0.364086, 0.089368,
		-0.009041, -0.260028, -0.965559,
		43.848267, 39.337452, 33.824322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.391945, 39.854103, 34.854427>,  <43.854595, 39.519470, 34.500214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.391945, 39.854103, 34.854427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.342552, 40.075237, 35.184063>,  <44.312916, 40.207920, 35.381844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.342552, 40.075237, 35.184063>,  <44.391945, 39.854103, 34.854427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.342552, 40.075237, 35.184063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423386, 0.780417, -0.460103,
		-0.897495, 0.292095, -0.330429,
		-0.123478, 0.552839, 0.824089,
		44.305508, 40.241089, 35.431290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.929123, 40.555653, 34.914978>,  <44.391945, 39.854103, 34.854427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.929123, 40.555653, 34.914978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.270546, 40.551941, 35.123344>,  <44.475399, 40.549713, 35.248363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.270546, 40.551941, 35.123344>,  <43.929123, 40.555653, 34.914978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.270546, 40.551941, 35.123344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332703, 0.779140, -0.531271,
		-0.400939, 0.626781, 0.668127,
		0.853555, -0.009280, 0.520920,
		44.526611, 40.549156, 35.279621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.104416, 41.286480, 35.040581>,  <43.929123, 40.555653, 34.914978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.104416, 41.286480, 35.040581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.449539, 41.090996, 35.092300>,  <44.656612, 40.973705, 35.123333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.449539, 41.090996, 35.092300>,  <44.104416, 41.286480, 35.040581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.449539, 41.090996, 35.092300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495792, 0.768104, -0.405223,
		0.098719, 0.413739, 0.905028,
		0.862812, -0.488709, 0.129302,
		44.708382, 40.944382, 35.131092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.677013, 41.656490, 35.437004>,  <44.104416, 41.286480, 35.040581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.677013, 41.656490, 35.437004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.772331, 41.410851, 35.136047>,  <44.829521, 41.263466, 34.955475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.772331, 41.410851, 35.136047>,  <44.677013, 41.656490, 35.437004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.772331, 41.410851, 35.136047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507078, 0.739400, -0.442899,
		0.828304, -0.275979, 0.487595,
		0.238297, -0.614103, -0.752391,
		44.843819, 41.226620, 34.910332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.357513, 41.874935, 35.323151>,  <44.677013, 41.656490, 35.437004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.357513, 41.874935, 35.323151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.204529, 41.675095, 35.012249>,  <45.112740, 41.555191, 34.825706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.204529, 41.675095, 35.012249>,  <45.357513, 41.874935, 35.323151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.204529, 41.675095, 35.012249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675694, 0.422530, -0.604075,
		0.630208, -0.756222, 0.175974,
		-0.382461, -0.499598, -0.777256,
		45.089790, 41.525215, 34.779072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.934799, 41.557297, 35.054882>,  <45.357513, 41.874935, 35.323151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.934799, 41.557297, 35.054882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.647083, 41.667622, 34.799839>,  <45.474453, 41.733818, 34.646812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.647083, 41.667622, 34.799839>,  <45.934799, 41.557297, 35.054882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.647083, 41.667622, 34.799839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692682, 0.354752, -0.627967,
		0.052992, -0.893353, -0.446221,
		-0.719294, 0.275812, -0.637609,
		45.431293, 41.750366, 34.608555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.128780, 40.815910, 34.948761>,  <45.934799, 41.557297, 35.054882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.128780, 40.815910, 34.948761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.851887, 40.570309, 35.100449>,  <45.685749, 40.422947, 35.191463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.851887, 40.570309, 35.100449>,  <46.128780, 40.815910, 34.948761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.851887, 40.570309, 35.100449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721232, -0.606963, 0.333796,
		0.025220, 0.504571, 0.863002,
		-0.692234, -0.614006, 0.379221,
		45.644215, 40.386108, 35.214214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.226692, 40.686855, 35.701759>,  <46.128780, 40.815910, 34.948761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.226692, 40.686855, 35.701759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.086739, 40.376625, 35.491592>,  <46.002766, 40.190487, 35.365494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.086739, 40.376625, 35.491592>,  <46.226692, 40.686855, 35.701759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.086739, 40.376625, 35.491592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846508, -0.501988, 0.177293,
		-0.401255, -0.382734, 0.832171,
		-0.349884, -0.775579, -0.525412,
		45.981773, 40.143951, 35.333969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.323936, 39.986954, 36.124981>,  <46.226692, 40.686855, 35.701759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.323936, 39.986954, 36.124981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.292072, 39.943108, 35.728672>,  <46.272953, 39.916801, 35.490887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.292072, 39.943108, 35.728672>,  <46.323936, 39.986954, 36.124981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.292072, 39.943108, 35.728672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547608, -0.835335, 0.048384,
		-0.832934, -0.538703, 0.126571,
		-0.079664, -0.109611, -0.990777,
		46.268173, 39.910225, 35.431438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.018150, 39.350220, 35.913963>,  <46.323936, 39.986954, 36.124981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.018150, 39.350220, 35.913963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.254883, 39.459824, 35.610741>,  <46.396923, 39.525585, 35.428806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.254883, 39.459824, 35.610741>,  <46.018150, 39.350220, 35.913963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.254883, 39.459824, 35.610741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503103, -0.860346, 0.081804,
		-0.629776, -0.429796, -0.647038,
		0.591836, 0.274008, -0.758057,
		46.432434, 39.542027, 35.383324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.976105, 38.795368, 35.478870>,  <46.018150, 39.350220, 35.913963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.976105, 38.795368, 35.478870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.322094, 38.990116, 35.430241>,  <46.529686, 39.106964, 35.401062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.322094, 38.990116, 35.430241>,  <45.976105, 38.795368, 35.478870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.322094, 38.990116, 35.430241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501245, -0.826692, 0.255604,
		0.023941, -0.282030, -0.959107,
		0.864974, 0.486867, -0.121574,
		46.581585, 39.136177, 35.393768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.338840, 38.219398, 35.338951>,  <45.976105, 38.795368, 35.478870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.338840, 38.219398, 35.338951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.588097, 38.512669, 35.447872>,  <46.737652, 38.688629, 35.513226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.588097, 38.512669, 35.447872>,  <46.338840, 38.219398, 35.338951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.588097, 38.512669, 35.447872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606845, -0.672889, 0.423036,
		0.493387, -0.098368, -0.864229,
		0.623144, 0.733174, 0.272301,
		46.775040, 38.732620, 35.529564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.434834, 37.492043, 35.610603>,  <46.338840, 38.219398, 35.338951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.434834, 37.492043, 35.610603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.282402, 37.267532, 35.904472>,  <46.190945, 37.132824, 36.080795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.282402, 37.267532, 35.904472>,  <46.434834, 37.492043, 35.610603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.282402, 37.267532, 35.904472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632800, -0.737684, -0.235344,
		0.674051, 0.375219, 0.636291,
		-0.381076, -0.561279, 0.734675,
		46.168079, 37.099148, 36.124874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.909679, 37.153191, 36.103088>,  <46.434834, 37.492043, 35.610603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.909679, 37.153191, 36.103088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.596329, 36.904987, 36.088699>,  <46.408318, 36.756065, 36.080067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.596329, 36.904987, 36.088699>,  <46.909679, 37.153191, 36.103088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.596329, 36.904987, 36.088699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603783, -0.745963, -0.281043,
		0.147559, -0.241878, 0.959021,
		-0.783373, -0.620511, -0.035968,
		46.361317, 36.718834, 36.077908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.141743, 36.543034, 36.411556>,  <46.909679, 37.153191, 36.103088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.141743, 36.543034, 36.411556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.845093, 36.459232, 36.156651>,  <46.667103, 36.408951, 36.003708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.845093, 36.459232, 36.156651>,  <47.141743, 36.543034, 36.411556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.845093, 36.459232, 36.156651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481774, -0.827387, -0.288660,
		-0.466787, -0.521094, 0.714542,
		-0.741622, -0.209505, -0.637263,
		46.622604, 36.396381, 35.965473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.722893, 35.972748, 36.612640>,  <47.141743, 36.543034, 36.411556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.722893, 35.972748, 36.612640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.731659, 35.995193, 36.213367>,  <46.736919, 36.008659, 35.973804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.731659, 35.995193, 36.213367>,  <46.722893, 35.972748, 36.612640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.731659, 35.995193, 36.213367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472967, -0.880212, -0.039093,
		-0.880807, -0.471251, -0.045833,
		0.021920, 0.056111, -0.998184,
		46.738235, 36.012028, 35.913914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.730724, 35.222713, 36.261375>,  <46.722893, 35.972748, 36.612640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.730724, 35.222713, 36.261375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.875935, 35.488251, 35.999836>,  <46.963058, 35.647575, 35.842911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.875935, 35.488251, 35.999836>,  <46.730724, 35.222713, 36.261375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.875935, 35.488251, 35.999836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729564, -0.639012, -0.243721,
		-0.579612, -0.388550, -0.716295,
		0.363023, 0.663846, -0.653852,
		46.984840, 35.687405, 35.803680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.670719, 34.969135, 35.519676>,  <46.730724, 35.222713, 36.261375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.670719, 34.969135, 35.519676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.977383, 35.222576, 35.561211>,  <47.161381, 35.374641, 35.586132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.977383, 35.222576, 35.561211>,  <46.670719, 34.969135, 35.519676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.977383, 35.222576, 35.561211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589904, -0.631268, -0.503502,
		-0.253474, 0.447265, -0.857732,
		0.766658, 0.633605, 0.103833,
		47.207378, 35.412659, 35.592361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.003323, 35.225334, 34.990883>,  <46.670719, 34.969135, 35.519676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.003323, 35.225334, 34.990883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.278130, 35.175701, 35.277271>,  <47.443016, 35.145924, 35.449104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.278130, 35.175701, 35.277271>,  <47.003323, 35.225334, 34.990883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.278130, 35.175701, 35.277271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515858, -0.610650, -0.600830,
		0.511756, 0.782119, -0.355521,
		0.687019, -0.124080, 0.715967,
		47.484234, 35.138477, 35.492062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.591236, 34.966309, 34.639626>,  <47.003323, 35.225334, 34.990883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.591236, 34.966309, 34.639626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.700478, 34.910461, 35.020344>,  <47.766022, 34.876953, 35.248775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.700478, 34.910461, 35.020344>,  <47.591236, 34.966309, 34.639626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.700478, 34.910461, 35.020344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618048, -0.732730, -0.284823,
		0.737179, 0.666043, -0.113817,
		0.273102, -0.139621, 0.951799,
		47.782410, 34.868576, 35.305885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<29.133251, 35.698875, 21.844387> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.463120, 35.871346, 21.697958>,  <29.661039, 35.974827, 21.610102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.463120, 35.871346, 21.697958>,  <29.133251, 35.698875, 21.844387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.463120, 35.871346, 21.697958> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418412, -0.029548, 0.907776,
		0.380594, -0.901784, -0.204777,
		0.824669, 0.431175, -0.366072,
		29.710520, 36.000698, 21.588137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.687784, 35.442238, 22.298237>,  <29.133251, 35.698875, 21.844387>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.687784, 35.442238, 22.298237> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.873621, 35.745785, 22.115690>,  <29.985123, 35.927914, 22.006163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.873621, 35.745785, 22.115690>,  <29.687784, 35.442238, 22.298237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.873621, 35.745785, 22.115690> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569382, 0.138706, 0.810287,
		0.678203, -0.636301, -0.367644,
		0.464592, 0.758869, -0.456369,
		30.012999, 35.973446, 21.978779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.446470, 35.341103, 22.369329>,  <29.687784, 35.442238, 22.298237>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.446470, 35.341103, 22.369329> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.404167, 35.734375, 22.309782>,  <30.378786, 35.970341, 22.274054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.404167, 35.734375, 22.309782>,  <30.446470, 35.341103, 22.369329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.404167, 35.734375, 22.309782> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599477, 0.182484, 0.779311,
		0.793374, -0.006827, -0.608696,
		-0.105757, 0.983185, -0.148870,
		30.372440, 36.029331, 22.265121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.071301, 35.514175, 22.456684>,  <30.446470, 35.341103, 22.369329>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.071301, 35.514175, 22.456684> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.845884, 35.841236, 22.503775>,  <30.710634, 36.037476, 22.532028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.845884, 35.841236, 22.503775>,  <31.071301, 35.514175, 22.456684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.845884, 35.841236, 22.503775> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404124, 0.148577, 0.902557,
		0.720490, 0.556204, -0.414164,
		-0.563541, 0.817657, 0.117727,
		30.676823, 36.086533, 22.539093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.559870, 36.104973, 22.522560>,  <31.071301, 35.514175, 22.456684>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.559870, 36.104973, 22.522560> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.200010, 36.177536, 22.681416>,  <30.984095, 36.221073, 22.776730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.200010, 36.177536, 22.681416>,  <31.559870, 36.104973, 22.522560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.200010, 36.177536, 22.681416> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416316, 0.082337, 0.905484,
		0.131566, 0.979954, -0.149599,
		-0.899651, 0.181411, 0.397138,
		30.930115, 36.231960, 22.800556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.768112, 36.441925, 23.018862>,  <31.559870, 36.104973, 22.522560>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.768112, 36.441925, 23.018862> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.384703, 36.384651, 23.117435>,  <31.154657, 36.350288, 23.176579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.384703, 36.384651, 23.117435>,  <31.768112, 36.441925, 23.018862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.384703, 36.384651, 23.117435> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248863, 0.000957, 0.968538,
		-0.138917, 0.989695, 0.034716,
		-0.958524, -0.143186, 0.246432,
		31.097145, 36.341694, 23.191364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.473728, 37.057114, 23.326252>,  <31.768112, 36.441925, 23.018862>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.473728, 37.057114, 23.326252> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.283188, 36.722202, 23.433620>,  <31.168863, 36.521255, 23.498041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.283188, 36.722202, 23.433620>,  <31.473728, 37.057114, 23.326252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.283188, 36.722202, 23.433620> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404960, 0.062053, 0.912226,
		-0.780445, 0.543241, 0.309506,
		-0.476353, -0.837281, 0.268420,
		31.140282, 36.471020, 23.514147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.269442, 37.315491, 23.968712>,  <31.473728, 37.057114, 23.326252>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.269442, 37.315491, 23.968712> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.227549, 36.917770, 23.960733>,  <31.202414, 36.679138, 23.955946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.227549, 36.917770, 23.960733>,  <31.269442, 37.315491, 23.968712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.227549, 36.917770, 23.960733> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288268, -0.049548, 0.956267,
		-0.951805, 0.094402, 0.291815,
		-0.104733, -0.994300, -0.019947,
		31.196129, 36.619480, 23.954750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.785057, 37.132366, 24.480307>,  <31.269442, 37.315491, 23.968712>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.785057, 37.132366, 24.480307> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.030111, 36.820366, 24.429277>,  <31.177145, 36.633167, 24.398661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.030111, 36.820366, 24.429277>,  <30.785057, 37.132366, 24.480307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.030111, 36.820366, 24.429277> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217044, 0.010826, 0.976102,
		-0.759979, -0.625685, 0.175927,
		0.612637, -0.780001, -0.127573,
		31.213902, 36.586365, 24.391005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.618763, 36.718014, 24.960199>,  <30.785057, 37.132366, 24.480307>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.618763, 36.718014, 24.960199> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.975283, 36.583984, 24.838015>,  <31.189196, 36.503567, 24.764704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.975283, 36.583984, 24.838015>,  <30.618763, 36.718014, 24.960199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.975283, 36.583984, 24.838015> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180329, -0.356160, 0.916860,
		-0.416013, -0.872281, -0.257021,
		0.891299, -0.335077, -0.305464,
		31.242672, 36.483463, 24.746376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.624926, 36.024975, 25.220844>,  <30.618763, 36.718014, 24.960199>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.624926, 36.024975, 25.220844> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.006121, 36.114063, 25.138668>,  <31.234838, 36.167515, 25.089361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.006121, 36.114063, 25.138668>,  <30.624926, 36.024975, 25.220844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.006121, 36.114063, 25.138668> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257678, -0.238984, 0.936210,
		0.159417, -0.945136, -0.285140,
		0.952989, 0.222722, -0.205443,
		31.292017, 36.180882, 25.077036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.135935, 35.509995, 25.543385>,  <30.624926, 36.024975, 25.220844>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.135935, 35.509995, 25.543385> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.384041, 35.817486, 25.480993>,  <31.532906, 36.001980, 25.443558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.384041, 35.817486, 25.480993>,  <31.135935, 35.509995, 25.543385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.384041, 35.817486, 25.480993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514344, -0.248464, 0.820802,
		0.592216, -0.589343, -0.549504,
		0.620266, 0.768726, -0.155980,
		31.570120, 36.048103, 25.434198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.729298, 35.246281, 25.795208>,  <31.135935, 35.509995, 25.543385>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.729298, 35.246281, 25.795208> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.787863, 35.641037, 25.768023>,  <31.823002, 35.877892, 25.751711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.787863, 35.641037, 25.768023>,  <31.729298, 35.246281, 25.795208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.787863, 35.641037, 25.768023> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536783, -0.021552, 0.843445,
		0.830920, -0.159972, -0.532899,
		0.146412, 0.986886, -0.067963,
		31.831787, 35.937103, 25.747633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.436451, 35.363922, 25.909893>,  <31.729298, 35.246281, 25.795208>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.436451, 35.363922, 25.909893> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.298046, 35.735867, 25.959898>,  <32.215004, 35.959034, 25.989901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.298046, 35.735867, 25.959898>,  <32.436451, 35.363922, 25.909893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.298046, 35.735867, 25.959898> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498726, 0.069427, 0.863975,
		0.794699, 0.361295, -0.487770,
		-0.346014, 0.929863, 0.125013,
		32.194241, 36.014824, 25.997402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.977985, 35.646633, 26.313349>,  <32.436451, 35.363922, 25.909893>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.977985, 35.646633, 26.313349> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.699612, 35.931423, 26.350801>,  <32.532585, 36.102295, 26.373274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.699612, 35.931423, 26.350801>,  <32.977985, 35.646633, 26.313349>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.699612, 35.931423, 26.350801> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234683, 0.102271, 0.966677,
		0.678670, 0.694722, -0.238262,
		-0.695939, 0.711971, 0.093631,
		32.490829, 36.145016, 26.378891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.264603, 36.146851, 26.773624>,  <32.977985, 35.646633, 26.313349>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.264603, 36.146851, 26.773624> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.869022, 36.201218, 26.797302>,  <32.631676, 36.233837, 26.811508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.869022, 36.201218, 26.797302>,  <33.264603, 36.146851, 26.773624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.869022, 36.201218, 26.797302> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048143, -0.083213, 0.995368,
		0.140210, 0.987220, 0.075751,
		-0.988951, 0.135913, 0.059195,
		32.572338, 36.241993, 26.815062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.122002, 36.656719, 27.328623>,  <33.264603, 36.146851, 26.773624>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.122002, 36.656719, 27.328623> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.781212, 36.448925, 27.302475>,  <32.576736, 36.324249, 27.286787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.781212, 36.448925, 27.302475>,  <33.122002, 36.656719, 27.328623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.781212, 36.448925, 27.302475> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102784, -0.288367, 0.951987,
		-0.513390, 0.804353, 0.299077,
		-0.851978, -0.519481, -0.065370,
		32.525620, 36.293079, 27.282864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.796532, 36.837727, 27.827652>,  <33.122002, 36.656719, 27.328623>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.796532, 36.837727, 27.827652> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.646984, 36.477459, 27.739094>,  <32.557255, 36.261299, 27.685959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.646984, 36.477459, 27.739094>,  <32.796532, 36.837727, 27.827652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.646984, 36.477459, 27.739094> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013295, -0.243886, 0.969713,
		-0.927388, 0.359599, 0.103155,
		-0.373866, -0.900671, -0.221396,
		32.534824, 36.207256, 27.672674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.107349, 36.744640, 28.118219>,  <32.796532, 36.837727, 27.827652>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.107349, 36.744640, 28.118219> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.262230, 36.379169, 28.068798>,  <32.355160, 36.159885, 28.039145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.262230, 36.379169, 28.068798>,  <32.107349, 36.744640, 28.118219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.262230, 36.379169, 28.068798> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036948, -0.149276, 0.988105,
		-0.921254, -0.378032, -0.091558,
		0.387203, -0.913678, -0.123553,
		32.378391, 36.105064, 28.031733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.843344, 36.484272, 28.712614>,  <32.107349, 36.744640, 28.118219>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.843344, 36.484272, 28.712614> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.117176, 36.228909, 28.571882>,  <32.281475, 36.075691, 28.487444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.117176, 36.228909, 28.571882>,  <31.843344, 36.484272, 28.712614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.117176, 36.228909, 28.571882> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341098, -0.145996, 0.928621,
		-0.644206, -0.755724, 0.117814,
		0.684581, -0.638409, -0.351828,
		32.322552, 36.037384, 28.466333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.727261, 35.942371, 29.103548>,  <31.843344, 36.484272, 28.712614>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.727261, 35.942371, 29.103548> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.105282, 35.917885, 28.975096>,  <32.332096, 35.903194, 28.898026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.105282, 35.917885, 28.975096>,  <31.727261, 35.942371, 29.103548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.105282, 35.917885, 28.975096> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306737, -0.173694, 0.935811,
		-0.113061, -0.982895, -0.145375,
		0.945055, -0.061212, -0.321129,
		32.388798, 35.899521, 28.878757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.816498, 35.142601, 29.272833>,  <31.727261, 35.942371, 29.103548>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.816498, 35.142601, 29.272833> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.691273, 34.811081, 29.458340>,  <31.616138, 34.612167, 29.569643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.691273, 34.811081, 29.458340>,  <31.816498, 35.142601, 29.272833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.691273, 34.811081, 29.458340> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502423, -0.269862, -0.821429,
		0.805954, -0.490166, -0.331925,
		-0.313063, -0.828802, 0.463767,
		31.597353, 34.562439, 29.597469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.903473, 34.556507, 28.873438>,  <31.816498, 35.142601, 29.272833>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.903473, 34.556507, 28.873438> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.605297, 34.438808, 29.112682>,  <31.426392, 34.368187, 29.256229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.605297, 34.438808, 29.112682>,  <31.903473, 34.556507, 28.873438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.605297, 34.438808, 29.112682> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515894, -0.313528, -0.797216,
		0.422107, -0.902838, 0.081913,
		-0.745439, -0.294252, 0.598111,
		31.381666, 34.350533, 29.292116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.600660, 33.988525, 28.502594>,  <31.903473, 34.556507, 28.873438>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.600660, 33.988525, 28.502594> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.322992, 34.109081, 28.764065>,  <31.156391, 34.181416, 28.920948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.322992, 34.109081, 28.764065>,  <31.600660, 33.988525, 28.502594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.322992, 34.109081, 28.764065> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705969, -0.107836, -0.699985,
		-0.140478, -0.947384, 0.287628,
		-0.694171, 0.301389, 0.653675,
		31.114740, 34.199497, 28.960167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.067816, 33.484962, 28.436047>,  <31.600660, 33.988525, 28.502594>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.067816, 33.484962, 28.436047> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.885330, 33.797699, 28.606033>,  <30.775839, 33.985340, 28.708025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.885330, 33.797699, 28.606033>,  <31.067816, 33.484962, 28.436047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.885330, 33.797699, 28.606033> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761351, -0.095715, -0.641236,
		-0.460667, -0.616090, 0.638920,
		-0.456213, 0.781839, 0.424967,
		30.748466, 34.032249, 28.733524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.317812, 33.251480, 28.709053>,  <31.067816, 33.484962, 28.436047>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.317812, 33.251480, 28.709053> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.323673, 33.646202, 28.644556>,  <30.327190, 33.883034, 28.605858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.323673, 33.646202, 28.644556>,  <30.317812, 33.251480, 28.709053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.323673, 33.646202, 28.644556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671408, -0.109786, -0.732911,
		-0.740943, 0.118999, 0.660941,
		0.014654, 0.986806, -0.161242,
		30.328070, 33.942245, 28.596184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.665936, 33.358490, 28.388733>,  <30.317812, 33.251480, 28.709053>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.665936, 33.358490, 28.388733> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.843550, 33.708744, 28.312733>,  <29.950119, 33.918896, 28.267132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.843550, 33.708744, 28.312733>,  <29.665936, 33.358490, 28.388733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.843550, 33.708744, 28.312733> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491219, 0.060552, -0.868929,
		-0.749356, 0.479169, 0.457014,
		0.444037, 0.875631, -0.190002,
		29.976761, 33.971432, 28.255732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.081043, 33.808891, 28.443621>,  <29.665936, 33.358490, 28.388733>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.081043, 33.808891, 28.443621> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.381123, 33.960316, 28.226772>,  <29.561171, 34.051170, 28.096664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.381123, 33.960316, 28.226772>,  <29.081043, 33.808891, 28.443621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.381123, 33.960316, 28.226772> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616156, 0.102761, -0.780892,
		-0.239910, 0.919852, 0.310346,
		0.750197, 0.378566, -0.542119,
		29.606182, 34.073887, 28.064137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.750235, 34.345345, 28.074976>,  <29.081043, 33.808891, 28.443621>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.750235, 34.345345, 28.074976> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.088701, 34.254944, 27.881926>,  <29.291780, 34.200703, 27.766096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.088701, 34.254944, 27.881926>,  <28.750235, 34.345345, 28.074976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.088701, 34.254944, 27.881926> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426400, 0.256106, -0.867521,
		0.319668, 0.939857, 0.120339,
		0.846165, -0.226006, -0.482624,
		29.342550, 34.187141, 27.737139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.766882, 34.899017, 27.566748>,  <28.750235, 34.345345, 28.074976>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.766882, 34.899017, 27.566748> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.035257, 34.653042, 27.401005>,  <29.196281, 34.505455, 27.301559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.035257, 34.653042, 27.401005>,  <28.766882, 34.899017, 27.566748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.035257, 34.653042, 27.401005> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360170, 0.218190, -0.907012,
		0.648167, 0.757787, -0.075092,
		0.670937, -0.614941, -0.414356,
		29.236538, 34.468559, 27.276697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.986156, 35.206535, 27.038689>,  <28.766882, 34.899017, 27.566748>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.986156, 35.206535, 27.038689> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.065754, 34.824123, 26.952517>,  <29.113512, 34.594677, 26.900812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.065754, 34.824123, 26.952517>,  <28.986156, 35.206535, 27.038689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.065754, 34.824123, 26.952517> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303646, 0.148861, -0.941084,
		0.931773, 0.252685, -0.260672,
		0.198994, -0.956028, -0.215432,
		29.125452, 34.537315, 26.887888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.275291, 35.309799, 26.396900>,  <28.986156, 35.206535, 27.038689>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.275291, 35.309799, 26.396900> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.152121, 34.930462, 26.427416>,  <29.078218, 34.702858, 26.445726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.152121, 34.930462, 26.427416>,  <29.275291, 35.309799, 26.396900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.152121, 34.930462, 26.427416> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224177, -0.005607, -0.974532,
		0.924621, -0.317189, -0.210871,
		-0.307929, -0.948346, 0.076291,
		29.059742, 34.645958, 26.450302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.702036, 34.847809, 25.838493>,  <29.275291, 35.309799, 26.396900>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.702036, 34.847809, 25.838493> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.352585, 34.694214, 25.958042>,  <29.142914, 34.602058, 26.029772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.352585, 34.694214, 25.958042>,  <29.702036, 34.847809, 25.838493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.352585, 34.694214, 25.958042> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237229, -0.200167, -0.950608,
		0.424845, -0.901381, 0.083779,
		-0.873630, -0.383986, 0.298873,
		29.090496, 34.579018, 26.047705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.633770, 34.309994, 25.385174>,  <29.702036, 34.847809, 25.838493>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.633770, 34.309994, 25.385174> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.271229, 34.374031, 25.541578>,  <29.053703, 34.412453, 25.635422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.271229, 34.374031, 25.541578>,  <29.633770, 34.309994, 25.385174>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.271229, 34.374031, 25.541578> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415529, -0.170124, -0.893529,
		-0.076523, -0.972332, 0.220714,
		-0.906355, 0.160089, 0.391013,
		28.999323, 34.422058, 25.658882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.316090, 33.789574, 25.108158>,  <29.633770, 34.309994, 25.385174>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.316090, 33.789574, 25.108158> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.045792, 34.065155, 25.213013>,  <28.883614, 34.230503, 25.275927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.045792, 34.065155, 25.213013>,  <29.316090, 33.789574, 25.108158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.045792, 34.065155, 25.213013> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337690, 0.026775, -0.940876,
		-0.655238, -0.724312, 0.214559,
		-0.675744, 0.688952, 0.262138,
		28.843069, 34.271839, 25.291655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.713495, 33.580025, 24.836168>,  <29.316090, 33.789574, 25.108158>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.713495, 33.580025, 24.836168> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.616365, 33.964378, 24.889431>,  <28.558088, 34.194992, 24.921389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.616365, 33.964378, 24.889431>,  <28.713495, 33.580025, 24.836168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.616365, 33.964378, 24.889431> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372538, 0.034369, -0.927380,
		-0.895685, -0.274796, 0.349621,
		-0.242824, 0.960888, 0.133156,
		28.543518, 34.252644, 24.929379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.053535, 33.569050, 24.768652>,  <28.713495, 33.580025, 24.836168>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.053535, 33.569050, 24.768652> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.187027, 33.938324, 24.692387>,  <28.267122, 34.159889, 24.646627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.187027, 33.938324, 24.692387>,  <28.053535, 33.569050, 24.768652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.187027, 33.938324, 24.692387> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560299, 0.031605, -0.827687,
		-0.758083, 0.383052, 0.527808,
		0.333729, 0.923186, -0.190665,
		28.287146, 34.215279, 24.635187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.427515, 33.956207, 24.537697>,  <28.053535, 33.569050, 24.768652>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.427515, 33.956207, 24.537697> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.735689, 34.178295, 24.412373>,  <27.920593, 34.311546, 24.337179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.735689, 34.178295, 24.412373>,  <27.427515, 33.956207, 24.537697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.735689, 34.178295, 24.412373> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516893, 0.256351, -0.816765,
		-0.373168, 0.791211, 0.484491,
		0.770433, 0.555221, -0.313309,
		27.966820, 34.344860, 24.318380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.170866, 34.568394, 24.372759>,  <27.427515, 33.956207, 24.537697>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.170866, 34.568394, 24.372759> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.508463, 34.516205, 24.164661>,  <27.711021, 34.484890, 24.039803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.508463, 34.516205, 24.164661>,  <27.170866, 34.568394, 24.372759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.508463, 34.516205, 24.164661> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522533, 0.018768, -0.852412,
		0.120981, 0.991274, -0.052337,
		0.843992, -0.130474, -0.520244,
		27.761660, 34.477062, 24.008589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.033909, 34.856842, 23.786932>,  <27.170866, 34.568394, 24.372759>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.033909, 34.856842, 23.786932> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.350946, 34.639469, 23.676311>,  <27.541170, 34.509045, 23.609940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.350946, 34.639469, 23.676311>,  <27.033909, 34.856842, 23.786932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.350946, 34.639469, 23.676311> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369471, -0.067226, -0.926807,
		0.485061, 0.836760, -0.254064,
		0.792595, -0.543428, -0.276550,
		27.588724, 34.476440, 23.593346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<27.281878, 35.167362, 23.094959> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.453020, 34.807549, 23.130238>,  <27.555706, 34.591660, 23.151405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.453020, 34.807549, 23.130238>,  <27.281878, 35.167362, 23.094959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.453020, 34.807549, 23.130238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234689, -0.204796, -0.950252,
		0.872847, 0.385871, -0.298733,
		0.427855, -0.899534, 0.088196,
		27.581377, 34.537689, 23.156696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.783733, 35.125702, 22.589737>,  <27.281878, 35.167362, 23.094959>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.783733, 35.125702, 22.589737> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.734116, 34.737423, 22.672066>,  <27.704346, 34.504456, 22.721462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.734116, 34.737423, 22.672066>,  <27.783733, 35.125702, 22.589737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.734116, 34.737423, 22.672066> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071111, -0.215587, -0.973892,
		0.989725, -0.106169, 0.095770,
		-0.124044, -0.970696, 0.205823,
		27.696903, 34.446213, 22.733812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.221815, 34.783997, 22.005411>,  <27.783733, 35.125702, 22.589737>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.221815, 34.783997, 22.005411> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.977049, 34.506672, 22.157665>,  <27.830189, 34.340279, 22.249018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.977049, 34.506672, 22.157665>,  <28.221815, 34.783997, 22.005411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.977049, 34.506672, 22.157665> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025953, -0.498597, -0.866445,
		0.790498, -0.520312, 0.323092,
		-0.611914, -0.693308, 0.380637,
		27.793474, 34.298679, 22.271856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.507444, 34.096786, 21.880751>,  <28.221815, 34.783997, 22.005411>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.507444, 34.096786, 21.880751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.109116, 34.070358, 21.905951>,  <27.870117, 34.054501, 21.921070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.109116, 34.070358, 21.905951>,  <28.507444, 34.096786, 21.880751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.109116, 34.070358, 21.905951> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050368, -0.177910, -0.982757,
		0.076143, -0.981826, 0.173840,
		-0.995824, -0.066074, 0.062999,
		27.810368, 34.050537, 21.924850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.319557, 33.520348, 21.505239>,  <28.507444, 34.096786, 21.880751>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.319557, 33.520348, 21.505239> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.001030, 33.759884, 21.539335>,  <27.809914, 33.903606, 21.559793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.001030, 33.759884, 21.539335>,  <28.319557, 33.520348, 21.505239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.001030, 33.759884, 21.539335> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168278, -0.083970, -0.982157,
		-0.581001, -0.796451, 0.167639,
		-0.796316, 0.598844, 0.085239,
		27.762135, 33.939537, 21.564907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.823662, 33.214878, 21.014196>,  <28.319557, 33.520348, 21.505239>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.823662, 33.214878, 21.014196> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.707640, 33.589870, 21.091127>,  <27.638025, 33.814865, 21.137285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.707640, 33.589870, 21.091127>,  <27.823662, 33.214878, 21.014196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.707640, 33.589870, 21.091127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101680, 0.169640, -0.980247,
		-0.951592, -0.303883, 0.046118,
		-0.290057, 0.937484, 0.192327,
		27.620623, 33.871117, 21.148825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.245483, 33.281448, 20.573824>,  <27.823662, 33.214878, 21.014196>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.245483, 33.281448, 20.573824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.351223, 33.659969, 20.648266>,  <27.414667, 33.887081, 20.692930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.351223, 33.659969, 20.648266>,  <27.245483, 33.281448, 20.573824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.351223, 33.659969, 20.648266> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239502, 0.251338, -0.937800,
		-0.934215, 0.203336, 0.293082,
		0.264351, 0.946300, 0.186104,
		27.430529, 33.943859, 20.704098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.697432, 33.713051, 20.445160>,  <27.245483, 33.281448, 20.573824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.697432, 33.713051, 20.445160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.022558, 33.938797, 20.387447>,  <27.217634, 34.074245, 20.352819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.022558, 33.938797, 20.387447>,  <26.697432, 33.713051, 20.445160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.022558, 33.938797, 20.387447> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349753, 0.274748, -0.895649,
		-0.465831, 0.778464, 0.420709,
		0.812819, 0.564365, -0.144283,
		27.266403, 34.108105, 20.344162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.360619, 34.292007, 20.120247>,  <26.697432, 33.713051, 20.445160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.360619, 34.292007, 20.120247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.750351, 34.343559, 20.046419>,  <26.984190, 34.374493, 20.002123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.750351, 34.343559, 20.046419>,  <26.360619, 34.292007, 20.120247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.750351, 34.343559, 20.046419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221820, 0.409919, -0.884739,
		-0.038370, 0.902970, 0.427986,
		0.974332, 0.128883, -0.184568,
		27.042650, 34.382225, 19.991049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.409498, 34.896458, 19.948198>,  <26.360619, 34.292007, 20.120247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.409498, 34.896458, 19.948198> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.743572, 34.733173, 19.800777>,  <26.944017, 34.635204, 19.712326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.743572, 34.733173, 19.800777>,  <26.409498, 34.896458, 19.948198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.743572, 34.733173, 19.800777> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208430, 0.385204, -0.898985,
		0.508943, 0.827636, 0.236633,
		0.835185, -0.408211, -0.368551,
		26.994127, 34.610710, 19.690212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.837299, 35.485596, 19.637762>,  <26.409498, 34.896458, 19.948198>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.837299, 35.485596, 19.637762> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.943787, 35.142036, 19.462753>,  <27.007679, 34.935902, 19.357748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.943787, 35.142036, 19.462753>,  <26.837299, 35.485596, 19.637762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.943787, 35.142036, 19.462753> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273583, 0.367909, -0.888704,
		0.924272, 0.356290, -0.137034,
		0.266220, -0.858895, -0.437523,
		27.023653, 34.884369, 19.331497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.095442, 35.750977, 19.003042>,  <26.837299, 35.485596, 19.637762>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.095442, 35.750977, 19.003042> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.091026, 35.363052, 18.905605>,  <27.088377, 35.130299, 18.847143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.091026, 35.363052, 18.905605>,  <27.095442, 35.750977, 19.003042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.091026, 35.363052, 18.905605> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211487, 0.240361, -0.947365,
		0.977319, 0.041060, -0.207756,
		-0.011037, -0.969815, -0.243593,
		27.087715, 35.072109, 18.832527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.486450, 35.630421, 18.373198>,  <27.095442, 35.750977, 19.003042>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.486450, 35.630421, 18.373198> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.220146, 35.334873, 18.414835>,  <27.060364, 35.157543, 18.439817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.220146, 35.334873, 18.414835>,  <27.486450, 35.630421, 18.373198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.220146, 35.334873, 18.414835> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175837, 0.019779, -0.984221,
		0.725150, -0.673560, -0.143088,
		-0.665762, -0.738868, 0.104094,
		27.020418, 35.113213, 18.446064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.635729, 35.312302, 17.837700>,  <27.486450, 35.630421, 18.373198>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.635729, 35.312302, 17.837700> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.272871, 35.170525, 17.928440>,  <27.055157, 35.085457, 17.982885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.272871, 35.170525, 17.928440>,  <27.635729, 35.312302, 17.837700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.272871, 35.170525, 17.928440> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239338, -0.008845, -0.970896,
		0.346134, -0.935036, -0.076808,
		-0.907143, -0.354443, 0.226851,
		27.000729, 35.064190, 17.996496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.680973, 34.696560, 17.445784>,  <27.635729, 35.312302, 17.837700>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.680973, 34.696560, 17.445784> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.308121, 34.803955, 17.542978>,  <27.084410, 34.868393, 17.601295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.308121, 34.803955, 17.542978>,  <27.680973, 34.696560, 17.445784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.308121, 34.803955, 17.542978> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301990, -0.206077, -0.930771,
		-0.199775, -0.940997, 0.273158,
		-0.932144, 0.268436, 0.243002,
		27.028481, 34.884502, 17.615875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.262590, 34.168476, 17.214626>,  <27.680973, 34.696560, 17.445784>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.262590, 34.168476, 17.214626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.006805, 34.475136, 17.237720>,  <26.853334, 34.659130, 17.251577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.006805, 34.475136, 17.237720>,  <27.262590, 34.168476, 17.214626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.006805, 34.475136, 17.237720> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275582, -0.158464, -0.948126,
		-0.717733, -0.622203, 0.312607,
		-0.639464, 0.766650, 0.057733,
		26.814966, 34.705132, 17.255041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.682875, 33.892487, 17.020731>,  <27.262590, 34.168476, 17.214626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.682875, 33.892487, 17.020731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.668224, 34.289547, 16.974604>,  <26.659433, 34.527782, 16.946928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.668224, 34.289547, 16.974604>,  <26.682875, 33.892487, 17.020731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.668224, 34.289547, 16.974604> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242106, -0.120772, -0.962704,
		-0.969558, -0.007341, 0.244750,
		-0.036626, 0.992653, -0.115319,
		26.657236, 34.587341, 16.940008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.037155, 34.020885, 16.639412>,  <26.682875, 33.892487, 17.020731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.037155, 34.020885, 16.639412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.299255, 34.313519, 16.564125>,  <26.456516, 34.489098, 16.518953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.299255, 34.313519, 16.564125>,  <26.037155, 34.020885, 16.639412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.299255, 34.313519, 16.564125> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212833, -0.060276, -0.975228,
		-0.724808, 0.679079, 0.116209,
		0.655252, 0.731586, -0.188219,
		26.495831, 34.532993, 16.507660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.891447, 34.058483, 15.954474>,  <26.037155, 34.020885, 16.639412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.891447, 34.058483, 15.954474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.192160, 34.321877, 15.940471>,  <26.372587, 34.479912, 15.932068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.192160, 34.321877, 15.940471>,  <25.891447, 34.058483, 15.954474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.192160, 34.321877, 15.940471> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035633, -0.012448, -0.999287,
		-0.658447, 0.752495, 0.014106,
		0.751783, 0.658480, -0.035010,
		26.417694, 34.519421, 15.929968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.676926, 34.578995, 15.474622>,  <25.891447, 34.058483, 15.954474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.676926, 34.578995, 15.474622> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.076265, 34.590988, 15.494226>,  <26.315868, 34.598183, 15.505988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.076265, 34.590988, 15.494226>,  <25.676926, 34.578995, 15.474622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.076265, 34.590988, 15.494226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050901, -0.065969, -0.996523,
		-0.026643, 0.997371, -0.067386,
		0.998348, 0.029981, 0.049010,
		26.375771, 34.599983, 15.508928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.865137, 34.984421, 15.013450>,  <25.676926, 34.578995, 15.474622>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.865137, 34.984421, 15.013450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.213339, 34.797573, 15.075444>,  <26.422260, 34.685467, 15.112641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.213339, 34.797573, 15.075444>,  <25.865137, 34.984421, 15.013450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.213339, 34.797573, 15.075444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176777, 0.002870, -0.984247,
		0.459313, 0.884191, 0.085074,
		0.870507, -0.467116, 0.154986,
		26.474491, 34.657436, 15.121941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.222708, 35.223721, 14.314301>,  <25.865137, 34.984421, 15.013450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.222708, 35.223721, 14.314301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.408409, 34.907970, 14.474980>,  <26.519829, 34.718521, 14.571387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.408409, 34.907970, 14.474980>,  <26.222708, 35.223721, 14.314301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.408409, 34.907970, 14.474980> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236711, -0.326456, -0.915092,
		0.853486, 0.519920, 0.035295,
		0.464252, -0.789373, 0.401696,
		26.547686, 34.671158, 14.595490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.715094, 35.815834, 14.359984>,  <26.222708, 35.223721, 14.314301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.715094, 35.815834, 14.359984> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.935896, 35.943863, 14.667969>,  <27.068378, 36.020679, 14.852759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.935896, 35.943863, 14.667969>,  <26.715094, 35.815834, 14.359984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.935896, 35.943863, 14.667969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744709, 0.226140, -0.627909,
		-0.375096, 0.920008, -0.113530,
		0.552008, 0.320073, 0.769962,
		27.101498, 36.039886, 14.898957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.220892, 36.318676, 14.171582>,  <26.715094, 35.815834, 14.359984>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.220892, 36.318676, 14.171582> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.451490, 36.475227, 13.884674>,  <27.589849, 36.569157, 13.712529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.451490, 36.475227, 13.884674>,  <27.220892, 36.318676, 14.171582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.451490, 36.475227, 13.884674> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816914, -0.294776, 0.495740,
		-0.017414, -0.871741, -0.489657,
		0.576496, 0.391375, -0.717271,
		27.624439, 36.592640, 13.669493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.584555, 35.751545, 13.767560>,  <27.220892, 36.318676, 14.171582>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.584555, 35.751545, 13.767560> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.794310, 36.092136, 13.766320>,  <27.920162, 36.296490, 13.765576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.794310, 36.092136, 13.766320>,  <27.584555, 35.751545, 13.767560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.794310, 36.092136, 13.766320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749460, -0.459826, 0.476308,
		0.404139, -0.252093, -0.879273,
		0.524386, 0.851475, -0.003100,
		27.951626, 36.347580, 13.765390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.346790, 35.482132, 13.608709>,  <27.584555, 35.751545, 13.767560>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.346790, 35.482132, 13.608709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.335957, 35.846897, 13.772505>,  <28.329456, 36.065758, 13.870782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.335957, 35.846897, 13.772505>,  <28.346790, 35.482132, 13.608709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.335957, 35.846897, 13.772505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635250, -0.300588, 0.711410,
		0.771832, 0.279397, -0.571151,
		-0.027085, 0.911912, 0.409490,
		28.327831, 36.120472, 13.895351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.959370, 35.511860, 13.983765>,  <28.346790, 35.482132, 13.608709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.959370, 35.511860, 13.983765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.737782, 35.805370, 14.141090>,  <28.604828, 35.981476, 14.235486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.737782, 35.805370, 14.141090>,  <28.959370, 35.511860, 13.983765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.737782, 35.805370, 14.141090> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487878, -0.096688, 0.867541,
		0.674605, 0.672481, -0.304429,
		-0.553970, 0.733772, 0.393315,
		28.571590, 36.025501, 14.259085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.431606, 36.007767, 14.423770>,  <28.959370, 35.511860, 13.983765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.431606, 36.007767, 14.423770> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.058510, 36.069164, 14.554268>,  <28.834652, 36.106003, 14.632566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.058510, 36.069164, 14.554268>,  <29.431606, 36.007767, 14.423770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.058510, 36.069164, 14.554268> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339488, 0.069153, 0.938065,
		0.121430, 0.985726, -0.116612,
		-0.932739, 0.153498, 0.326245,
		28.778688, 36.115215, 14.652142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.581749, 36.505405, 14.932541>,  <29.431606, 36.007767, 14.423770>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.581749, 36.505405, 14.932541> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.206045, 36.382313, 14.993326>,  <28.980623, 36.308456, 15.029798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.206045, 36.382313, 14.993326>,  <29.581749, 36.505405, 14.932541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.206045, 36.382313, 14.993326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178581, -0.060092, 0.982088,
		-0.293085, 0.949575, 0.111397,
		-0.939260, -0.307729, 0.151964,
		28.924267, 36.289993, 15.038916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.243801, 36.926479, 15.447239>,  <29.581749, 36.505405, 14.932541>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.243801, 36.926479, 15.447239> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.045795, 36.579208, 15.461297>,  <28.926992, 36.370846, 15.469731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.045795, 36.579208, 15.461297>,  <29.243801, 36.926479, 15.447239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.045795, 36.579208, 15.461297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034777, 0.060212, 0.997580,
		-0.868189, 0.492594, -0.059998,
		-0.495014, -0.868174, 0.035144,
		28.897291, 36.318756, 15.471840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.767908, 36.984947, 16.039982>,  <29.243801, 36.926479, 15.447239>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.767908, 36.984947, 16.039982> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.781143, 36.588951, 15.985098>,  <28.789083, 36.351353, 15.952168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.781143, 36.588951, 15.985098>,  <28.767908, 36.984947, 16.039982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.781143, 36.588951, 15.985098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071460, -0.134588, 0.988322,
		-0.996895, -0.042505, 0.066292,
		0.033086, -0.989989, -0.137208,
		28.791069, 36.291954, 15.943935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.206888, 36.670784, 16.520672>,  <28.767908, 36.984947, 16.039982>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.206888, 36.670784, 16.520672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.477583, 36.391857, 16.426201>,  <28.639999, 36.224503, 16.369518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.477583, 36.391857, 16.426201>,  <28.206888, 36.670784, 16.520672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.477583, 36.391857, 16.426201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162950, -0.170974, 0.971707,
		-0.717967, -0.696074, -0.002077,
		0.676736, -0.697315, -0.236179,
		28.680603, 36.182663, 16.355347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.083969, 36.289989, 17.004431>,  <28.206888, 36.670784, 16.520672>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.083969, 36.289989, 17.004431> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.419430, 36.110691, 16.880663>,  <28.620707, 36.003113, 16.806402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.419430, 36.110691, 16.880663>,  <28.083969, 36.289989, 17.004431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.419430, 36.110691, 16.880663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164393, -0.333279, 0.928386,
		-0.519268, -0.829458, -0.205816,
		0.838651, -0.448246, -0.309418,
		28.671024, 35.976219, 16.787838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.102913, 35.663811, 17.163090>,  <28.083969, 36.289989, 17.004431>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.102913, 35.663811, 17.163090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.490936, 35.758682, 17.142200>,  <28.723751, 35.815605, 17.129667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.490936, 35.758682, 17.142200>,  <28.102913, 35.663811, 17.163090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.490936, 35.758682, 17.142200> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127705, -0.315248, 0.940378,
		0.206579, -0.918892, -0.336099,
		0.970060, 0.237183, -0.052224,
		28.781954, 35.829838, 17.126534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.374371, 35.099281, 17.564428>,  <28.102913, 35.663811, 17.163090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.374371, 35.099281, 17.564428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.669664, 35.366936, 17.530329>,  <28.846840, 35.527527, 17.509869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.669664, 35.366936, 17.530329>,  <28.374371, 35.099281, 17.564428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.669664, 35.366936, 17.530329> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304710, -0.218054, 0.927149,
		0.601799, -0.710429, -0.364867,
		0.738234, 0.669136, -0.085250,
		28.891134, 35.567677, 17.504753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.881203, 34.853043, 17.961964>,  <28.374371, 35.099281, 17.564428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.881203, 34.853043, 17.961964> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.015982, 35.229187, 17.943281>,  <29.096849, 35.454876, 17.932072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.015982, 35.229187, 17.943281>,  <28.881203, 34.853043, 17.961964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.015982, 35.229187, 17.943281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293243, -0.057676, 0.954296,
		0.894693, -0.335242, -0.295190,
		0.336946, 0.940365, -0.046705,
		29.117065, 35.511295, 17.929270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.563721, 34.848309, 18.298782>,  <28.881203, 34.853043, 17.961964>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.563721, 34.848309, 18.298782> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.448612, 35.231121, 18.313040>,  <29.379547, 35.460808, 18.321594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.448612, 35.231121, 18.313040>,  <29.563721, 34.848309, 18.298782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.448612, 35.231121, 18.313040> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334970, 0.065719, 0.939934,
		0.897208, 0.282427, -0.339490,
		-0.287773, 0.957035, 0.035641,
		29.362280, 35.518230, 18.323732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.959637, 35.100647, 18.869883>,  <29.563721, 34.848309, 18.298782>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.959637, 35.100647, 18.869883> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.705416, 35.400990, 18.798002>,  <29.552883, 35.581196, 18.754873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.705416, 35.400990, 18.798002>,  <29.959637, 35.100647, 18.869883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.705416, 35.400990, 18.798002> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147713, 0.346712, 0.926268,
		0.757797, 0.562146, -0.331264,
		-0.635551, 0.750854, -0.179701,
		29.514750, 35.626247, 18.744093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.259720, 35.742306, 19.036493>,  <29.959637, 35.100647, 18.869883>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.259720, 35.742306, 19.036493> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.866697, 35.803596, 19.078640>,  <29.630884, 35.840370, 19.103928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.866697, 35.803596, 19.078640>,  <30.259720, 35.742306, 19.036493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.866697, 35.803596, 19.078640> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159128, 0.399630, 0.902759,
		0.096217, 0.903780, -0.417042,
		-0.982558, 0.153224, 0.105366,
		29.571930, 35.849564, 19.110250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.223322, 36.359592, 19.371559>,  <30.259720, 35.742306, 19.036493>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.223322, 36.359592, 19.371559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.859486, 36.213306, 19.450447>,  <29.641184, 36.125534, 19.497780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.859486, 36.213306, 19.450447>,  <30.223322, 36.359592, 19.371559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.859486, 36.213306, 19.450447> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086733, 0.297077, 0.950906,
		-0.406351, 0.882041, -0.238499,
		-0.909591, -0.365716, 0.197219,
		29.586609, 36.103592, 19.509613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.765827, 36.833160, 19.717575>,  <30.223322, 36.359592, 19.371559>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.765827, 36.833160, 19.717575> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.607927, 36.477333, 19.809525>,  <29.513187, 36.263836, 19.864695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.607927, 36.477333, 19.809525>,  <29.765827, 36.833160, 19.717575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.607927, 36.477333, 19.809525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030789, 0.262860, 0.964343,
		-0.918272, 0.373597, -0.131153,
		-0.394750, -0.889567, 0.229875,
		29.489502, 36.210464, 19.878487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.365587, 36.954254, 20.299212>,  <29.765827, 36.833160, 19.717575>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.365587, 36.954254, 20.299212> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.423941, 36.559231, 20.322691>,  <29.458952, 36.322216, 20.336779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.423941, 36.559231, 20.322691>,  <29.365587, 36.954254, 20.299212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.423941, 36.559231, 20.322691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270725, 0.096919, 0.957765,
		-0.951539, -0.123830, 0.281496,
		0.145883, -0.987559, 0.058698,
		29.467705, 36.262962, 20.340300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.028509, 36.827866, 20.882967>,  <29.365587, 36.954254, 20.299212>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.028509, 36.827866, 20.882967> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.272915, 36.516083, 20.827671>,  <29.419559, 36.329014, 20.794495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.272915, 36.516083, 20.827671>,  <29.028509, 36.827866, 20.882967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.272915, 36.516083, 20.827671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309760, 0.074713, 0.947875,
		-0.728497, -0.621988, 0.287094,
		0.611016, -0.779454, -0.138239,
		29.456221, 36.282246, 20.786200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.876554, 36.202797, 21.339331>,  <29.028509, 36.827866, 20.882967>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.876554, 36.202797, 21.339331> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.261497, 36.154438, 21.241964>,  <29.492464, 36.125423, 21.183544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.261497, 36.154438, 21.241964>,  <28.876554, 36.202797, 21.339331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.261497, 36.154438, 21.241964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266127, 0.237334, 0.934264,
		-0.055179, -0.963876, 0.260574,
		0.962358, -0.120897, -0.243417,
		29.550205, 36.118168, 21.168940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<27.746420, 34.419567, 26.156107> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.120691, 34.438095, 26.016186>,  <28.345253, 34.449211, 25.932234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.120691, 34.438095, 26.016186>,  <27.746420, 34.419567, 26.156107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.120691, 34.438095, 26.016186> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338043, -0.401892, 0.851005,
		-0.101165, -0.914515, -0.391699,
		0.935678, 0.046319, -0.349803,
		28.401394, 34.451992, 25.911245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.148205, 33.765362, 26.344683>,  <27.746420, 34.419567, 26.156107>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.148205, 33.765362, 26.344683> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.442429, 34.016300, 26.242395>,  <28.618963, 34.166862, 26.181023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.442429, 34.016300, 26.242395>,  <28.148205, 33.765362, 26.344683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.442429, 34.016300, 26.242395> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519478, -0.280016, 0.807300,
		0.434850, -0.726657, -0.531860,
		0.735560, 0.627344, -0.255717,
		28.663097, 34.204502, 26.165680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.816837, 33.373177, 26.370771>,  <28.148205, 33.765362, 26.344683>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.816837, 33.373177, 26.370771> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.909933, 33.761005, 26.401140>,  <28.965792, 33.993702, 26.419361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<28.909933, 33.761005, 26.401140>,  <28.816837, 33.373177, 26.370771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.909933, 33.761005, 26.401140> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612118, -0.206702, 0.763273,
		0.755740, -0.131173, -0.641599,
		0.232741, 0.969571, 0.075920,
		28.979755, 34.051876, 26.423916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.427094, 33.302097, 26.543743>,  <28.816837, 33.373177, 26.370771>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.427094, 33.302097, 26.543743> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.364000, 33.683796, 26.645357>,  <29.326143, 33.912815, 26.706326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.364000, 33.683796, 26.645357>,  <29.427094, 33.302097, 26.543743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.364000, 33.683796, 26.645357> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630543, -0.100653, 0.769601,
		0.759958, 0.281573, -0.585816,
		-0.157734, 0.954246, 0.254036,
		29.316681, 33.970070, 26.721567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.019989, 33.548065, 26.769337>,  <29.427094, 33.302097, 26.543743>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.019989, 33.548065, 26.769337> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.769636, 33.814682, 26.931320>,  <29.619425, 33.974651, 27.028511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.769636, 33.814682, 26.931320>,  <30.019989, 33.548065, 26.769337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.769636, 33.814682, 26.931320> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525914, -0.022731, 0.850234,
		0.575923, 0.745120, -0.336318,
		-0.625881, 0.666543, 0.404960,
		29.581871, 34.014645, 27.052809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.474440, 34.007095, 27.074297>,  <30.019989, 33.548065, 26.769337>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.474440, 34.007095, 27.074297> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.125076, 34.085182, 27.252756>,  <29.915459, 34.132034, 27.359831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.125076, 34.085182, 27.252756>,  <30.474440, 34.007095, 27.074297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.125076, 34.085182, 27.252756> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466990, 0.075899, 0.880999,
		0.138120, 0.977820, -0.157453,
		-0.873409, 0.195213, 0.446149,
		29.863054, 34.143745, 27.386600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.639900, 34.574574, 27.406767>,  <30.474440, 34.007095, 27.074297>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.639900, 34.574574, 27.406767> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.319296, 34.405674, 27.576136>,  <30.126934, 34.304333, 27.677757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.319296, 34.405674, 27.576136>,  <30.639900, 34.574574, 27.406767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.319296, 34.405674, 27.576136> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406022, 0.135560, 0.903753,
		-0.439007, 0.896287, 0.062789,
		-0.801510, -0.422248, 0.423424,
		30.078842, 34.278999, 27.703163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.556387, 35.080059, 27.869013>,  <30.639900, 34.574574, 27.406767>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.556387, 35.080059, 27.869013> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.367020, 34.748867, 27.989227>,  <30.253399, 34.550152, 28.061356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.367020, 34.748867, 27.989227>,  <30.556387, 35.080059, 27.869013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.367020, 34.748867, 27.989227> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358165, 0.130762, 0.924456,
		-0.804731, 0.545297, 0.234649,
		-0.473420, -0.827981, 0.300534,
		30.224993, 34.500473, 28.079388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.455355, 35.283863, 28.515240>,  <30.556387, 35.080059, 27.869013>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.455355, 35.283863, 28.515240> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.412086, 34.886696, 28.534872>,  <30.386126, 34.648396, 28.546652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.412086, 34.886696, 28.534872>,  <30.455355, 35.283863, 28.515240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.412086, 34.886696, 28.534872> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564023, -0.020640, 0.825501,
		-0.818644, 0.116978, 0.562262,
		-0.108171, -0.992920, 0.049081,
		30.379635, 34.588821, 28.549597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.214209, 35.098930, 29.208960>,  <30.455355, 35.283863, 28.515240>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.214209, 35.098930, 29.208960> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.405066, 34.788357, 29.044287>,  <30.519581, 34.602013, 28.945484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.405066, 34.788357, 29.044287>,  <30.214209, 35.098930, 29.208960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.405066, 34.788357, 29.044287> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539255, -0.111219, 0.834766,
		-0.693929, -0.620303, 0.365630,
		0.477143, -0.776437, -0.411680,
		30.548208, 34.555428, 28.920782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.111660, 34.513424, 29.694672>,  <30.214209, 35.098930, 29.208960>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.111660, 34.513424, 29.694672> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.433506, 34.422012, 29.475447>,  <30.626614, 34.367165, 29.343912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.433506, 34.422012, 29.475447>,  <30.111660, 34.513424, 29.694672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.433506, 34.422012, 29.475447> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486327, -0.275965, 0.829054,
		-0.340713, -0.933603, -0.110903,
		0.804612, -0.228534, -0.548061,
		30.674891, 34.353455, 29.311029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.412281, 34.028130, 30.035269>,  <30.111660, 34.513424, 29.694672>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.412281, 34.028130, 30.035269> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.721315, 34.133209, 29.804062>,  <30.906736, 34.196255, 29.665339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.721315, 34.133209, 29.804062>,  <30.412281, 34.028130, 30.035269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.721315, 34.133209, 29.804062> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626682, -0.169427, 0.760634,
		0.101884, -0.949887, -0.295524,
		0.772586, 0.262696, -0.578016,
		30.953091, 34.212017, 29.630657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.981434, 33.536976, 30.026020>,  <30.412281, 34.028130, 30.035269>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.981434, 33.536976, 30.026020> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.170284, 33.874863, 29.925184>,  <31.283594, 34.077595, 29.864683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.170284, 33.874863, 29.925184>,  <30.981434, 33.536976, 30.026020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.170284, 33.874863, 29.925184> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797239, -0.287123, 0.531008,
		0.376171, -0.451680, -0.809000,
		0.472128, 0.844716, -0.252090,
		31.311922, 34.128277, 29.849558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.554836, 33.517109, 29.481396>,  <30.981434, 33.536976, 30.026020>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.554836, 33.517109, 29.481396> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.606932, 33.769066, 29.787670>,  <31.638189, 33.920238, 29.971434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.606932, 33.769066, 29.787670>,  <31.554836, 33.517109, 29.481396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.606932, 33.769066, 29.787670> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805004, -0.518003, 0.289208,
		0.578797, 0.578713, -0.574531,
		0.130240, 0.629893, 0.765684,
		31.646004, 33.958035, 30.017376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.172276, 33.251129, 29.150885>,  <31.554836, 33.517109, 29.481396>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.172276, 33.251129, 29.150885> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.216038, 32.870148, 29.264627>,  <32.242294, 32.641560, 29.332872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.216038, 32.870148, 29.264627>,  <32.172276, 33.251129, 29.150885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.216038, 32.870148, 29.264627> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022923, -0.288415, -0.957231,
		0.993733, 0.098212, -0.053389,
		0.109410, -0.952456, 0.284356,
		32.248859, 32.584412, 29.349934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.440895, 32.960583, 28.579458>,  <32.172276, 33.251129, 29.150885>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.440895, 32.960583, 28.579458> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.367268, 32.619648, 28.775270>,  <32.323090, 32.415089, 28.892757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.367268, 32.619648, 28.775270>,  <32.440895, 32.960583, 28.579458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.367268, 32.619648, 28.775270> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126200, -0.473426, -0.871746,
		0.974777, -0.222244, -0.020420,
		-0.184073, -0.852335, 0.489532,
		32.312046, 32.363949, 28.922131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.903690, 32.487667, 28.352283>,  <32.440895, 32.960583, 28.579458>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.903690, 32.487667, 28.352283> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.591251, 32.282494, 28.494711>,  <32.403790, 32.159389, 28.580168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.591251, 32.282494, 28.494711>,  <32.903690, 32.487667, 28.352283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.591251, 32.282494, 28.494711> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023999, -0.545163, -0.837986,
		0.623947, -0.663095, 0.413515,
		-0.781097, -0.512935, 0.356067,
		32.356922, 32.128613, 28.601530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.000370, 31.831610, 28.245010>,  <32.903690, 32.487667, 28.352283>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.000370, 31.831610, 28.245010> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.602631, 31.824890, 28.286942>,  <32.363987, 31.820858, 28.312101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.602631, 31.824890, 28.286942>,  <33.000370, 31.831610, 28.245010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.602631, 31.824890, 28.286942> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087215, -0.433796, -0.896780,
		0.060540, -0.900855, 0.429879,
		-0.994348, -0.016800, 0.104830,
		32.304325, 31.819851, 28.318390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.822952, 31.149210, 28.075462>,  <33.000370, 31.831610, 28.245010>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.822952, 31.149210, 28.075462> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.471161, 31.339560, 28.072344>,  <32.260086, 31.453770, 28.070473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.471161, 31.339560, 28.072344>,  <32.822952, 31.149210, 28.075462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.471161, 31.339560, 28.072344> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256984, -0.488602, -0.833803,
		-0.400596, -0.731308, 0.552007,
		-0.879479, 0.475875, -0.007798,
		32.207317, 31.482323, 28.070004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.393700, 30.693045, 27.821003>,  <32.822952, 31.149210, 28.075462>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.393700, 30.693045, 27.821003> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.242722, 31.053736, 27.736702>,  <32.152134, 31.270151, 27.686121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.242722, 31.053736, 27.736702>,  <32.393700, 30.693045, 27.821003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.242722, 31.053736, 27.736702> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157670, -0.286845, -0.944913,
		-0.912509, -0.323425, 0.250445,
		-0.377447, 0.901729, -0.210754,
		32.129486, 31.324255, 27.673475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.893515, 30.554312, 27.301767>,  <32.393700, 30.693045, 27.821003>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.893515, 30.554312, 27.301767> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.953440, 30.948706, 27.272400>,  <31.989395, 31.185343, 27.254780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.953440, 30.948706, 27.272400>,  <31.893515, 30.554312, 27.301767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.953440, 30.948706, 27.272400> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027836, -0.070019, -0.997157,
		-0.988322, 0.151431, 0.016956,
		0.149813, 0.985985, -0.073417,
		31.998383, 31.244501, 27.250376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.333073, 30.886646, 26.891602>,  <31.893515, 30.554312, 27.301767>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.333073, 30.886646, 26.891602> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.641685, 31.140085, 26.868650>,  <31.826853, 31.292149, 26.854879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.641685, 31.140085, 26.868650>,  <31.333073, 30.886646, 26.891602>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.641685, 31.140085, 26.868650> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061729, -0.015208, -0.997977,
		-0.633187, 0.773515, 0.027377,
		0.771533, 0.633596, -0.057378,
		31.873146, 31.330164, 26.851437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.267776, 31.199379, 26.212973>,  <31.333073, 30.886646, 26.891602>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.267776, 31.199379, 26.212973> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.631241, 31.329062, 26.318214>,  <31.849319, 31.406872, 26.381359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.631241, 31.329062, 26.318214>,  <31.267776, 31.199379, 26.212973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.631241, 31.329062, 26.318214> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197795, 0.220713, -0.955072,
		-0.367712, 0.919878, 0.136426,
		0.908661, 0.324207, 0.263106,
		31.903839, 31.426323, 26.397146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.353369, 31.952259, 26.011375>,  <31.267776, 31.199379, 26.212973>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.353369, 31.952259, 26.011375> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.716591, 31.786053, 26.032471>,  <31.934525, 31.686329, 26.045128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.716591, 31.786053, 26.032471>,  <31.353369, 31.952259, 26.011375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.716591, 31.786053, 26.032471> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214429, 0.353011, -0.910716,
		0.359801, 0.838289, 0.409652,
		0.908055, -0.415518, 0.052740,
		31.989008, 31.661398, 26.048292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.868849, 32.455498, 25.774282>,  <31.353369, 31.952259, 26.011375>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.868849, 32.455498, 25.774282> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.026466, 32.088860, 25.747229>,  <32.121037, 31.868876, 25.730995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.026466, 32.088860, 25.747229>,  <31.868849, 32.455498, 25.774282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.026466, 32.088860, 25.747229> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398447, 0.236678, -0.886128,
		0.828233, 0.322224, 0.458478,
		0.394044, -0.916600, -0.067636,
		32.144680, 31.813879, 25.726938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.547863, 32.612846, 25.504053>,  <31.868849, 32.455498, 25.774282>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.547863, 32.612846, 25.504053> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.385197, 32.252411, 25.443846>,  <32.287598, 32.036148, 25.407721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.385197, 32.252411, 25.443846>,  <32.547863, 32.612846, 25.504053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.385197, 32.252411, 25.443846> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019888, 0.173451, -0.984641,
		0.913361, -0.397425, -0.088458,
		-0.406665, -0.901092, -0.150520,
		32.263199, 31.982082, 25.398689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.462696, 32.608536, 24.902704>,  <32.547863, 32.612846, 25.504053>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.462696, 32.608536, 24.902704> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.284229, 32.253502, 24.948536>,  <32.177147, 32.040482, 24.976036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.284229, 32.253502, 24.948536>,  <32.462696, 32.608536, 24.902704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.284229, 32.253502, 24.948536> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352295, 0.056494, -0.934182,
		0.822691, -0.457170, -0.337897,
		-0.446169, -0.887583, 0.114581,
		32.150379, 31.987226, 24.982910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.750813, 32.261131, 24.379553>,  <32.462696, 32.608536, 24.902704>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.750813, 32.261131, 24.379553> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.404537, 32.088158, 24.480412>,  <32.196770, 31.984373, 24.540926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.404537, 32.088158, 24.480412>,  <32.750813, 32.261131, 24.379553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.404537, 32.088158, 24.480412> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332335, 0.119813, -0.935520,
		0.374343, -0.893669, -0.247435,
		-0.865691, -0.432437, 0.252147,
		32.144829, 31.958427, 24.556055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.191807, 31.758173, 24.296534>,  <32.750813, 32.261131, 24.379553>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.191807, 31.758173, 24.296534> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.567062, 31.822487, 24.173868>,  <33.792217, 31.861076, 24.100269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.567062, 31.822487, 24.173868>,  <33.191807, 31.758173, 24.296534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.567062, 31.822487, 24.173868> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272491, 0.203628, 0.940364,
		0.213658, -0.965753, 0.147213,
		0.938136, 0.160802, -0.306666,
		33.848503, 31.870722, 24.081869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.643520, 31.385027, 24.678743>,  <33.191807, 31.758173, 24.296534>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.643520, 31.385027, 24.678743> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.883953, 31.672802, 24.539541>,  <34.028214, 31.845467, 24.456020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.883953, 31.672802, 24.539541>,  <33.643520, 31.385027, 24.678743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.883953, 31.672802, 24.539541> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403153, 0.103023, 0.909315,
		0.690048, -0.686874, -0.228118,
		0.601083, 0.719438, -0.348006,
		34.064278, 31.888634, 24.435139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.259781, 31.183292, 25.050465>,  <33.643520, 31.385027, 24.678743>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.259781, 31.183292, 25.050465> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.266758, 31.576464, 24.977198>,  <34.270943, 31.812366, 24.933237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.266758, 31.576464, 24.977198>,  <34.259781, 31.183292, 25.050465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.266758, 31.576464, 24.977198> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667736, 0.124902, 0.733845,
		0.744194, -0.135104, -0.654158,
		0.017439, 0.982927, -0.183165,
		34.271988, 31.871342, 24.922249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.010067, 31.295921, 25.244888>,  <34.259781, 31.183292, 25.050465>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.010067, 31.295921, 25.244888> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.820774, 31.646704, 25.211414>,  <34.707199, 31.857172, 25.191330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.820774, 31.646704, 25.211414>,  <35.010067, 31.295921, 25.244888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.820774, 31.646704, 25.211414> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633503, 0.404784, 0.659411,
		0.612149, 0.259037, -0.747110,
		-0.473230, 0.876955, -0.083687,
		34.678806, 31.909790, 25.186308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.532780, 31.760948, 25.379801>,  <35.010067, 31.295921, 25.244888>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.532780, 31.760948, 25.379801> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.190895, 31.955225, 25.453093>,  <34.985764, 32.071793, 25.497068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.190895, 31.955225, 25.453093>,  <35.532780, 31.760948, 25.379801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.190895, 31.955225, 25.453093> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378911, 0.342457, 0.859738,
		0.354821, 0.804254, -0.476737,
		-0.854709, 0.485694, 0.183230,
		34.934483, 32.100933, 25.508062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.651859, 32.505363, 25.437078>,  <35.532780, 31.760948, 25.379801>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.651859, 32.505363, 25.437078> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.299194, 32.438076, 25.613432>,  <35.087597, 32.397705, 25.719244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.299194, 32.438076, 25.613432>,  <35.651859, 32.505363, 25.437078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.299194, 32.438076, 25.613432> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337975, 0.426921, 0.838756,
		-0.329317, 0.888505, -0.319545,
		-0.881659, -0.168218, 0.440885,
		35.034695, 32.387611, 25.745697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.658192, 33.028530, 25.903305>,  <35.651859, 32.505363, 25.437078>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.658192, 33.028530, 25.903305> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.339157, 32.825329, 26.033400>,  <35.147736, 32.703407, 26.111456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.339157, 32.825329, 26.033400>,  <35.658192, 33.028530, 25.903305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.339157, 32.825329, 26.033400> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198293, 0.288402, 0.936752,
		-0.569675, 0.811636, -0.129293,
		-0.797590, -0.508007, 0.325237,
		35.099880, 32.672928, 26.130970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.336586, 33.473080, 26.429178>,  <35.658192, 33.028530, 25.903305>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.336586, 33.473080, 26.429178> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.219452, 33.094536, 26.483791>,  <35.149170, 32.867409, 26.516560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.219452, 33.094536, 26.483791>,  <35.336586, 33.473080, 26.429178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.219452, 33.094536, 26.483791> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060656, 0.124117, 0.990412,
		-0.954236, 0.298314, 0.021057,
		-0.292840, -0.946363, 0.136532,
		35.131599, 32.810627, 26.524752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.707554, 33.475124, 26.909843>,  <35.336586, 33.473080, 26.429178>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.707554, 33.475124, 26.909843> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.887062, 33.119720, 26.948135>,  <34.994766, 32.906479, 26.971111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.887062, 33.119720, 26.948135>,  <34.707554, 33.475124, 26.909843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.887062, 33.119720, 26.948135> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086562, 0.149838, 0.984914,
		-0.889445, -0.433713, 0.144153,
		0.448770, -0.888505, 0.095730,
		35.021694, 32.853168, 26.976854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.372173, 32.979218, 27.440075>,  <34.707554, 33.475124, 26.909843>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.372173, 32.979218, 27.440075> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.740623, 32.825573, 27.414814>,  <34.961693, 32.733387, 27.399656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.740623, 32.825573, 27.414814>,  <34.372173, 32.979218, 27.440075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.740623, 32.825573, 27.414814> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103739, 0.085854, 0.990892,
		-0.375191, -0.919287, 0.118929,
		0.921125, -0.384111, -0.063154,
		35.016960, 32.710339, 27.395868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.475334, 32.570309, 28.002457>,  <34.372173, 32.979218, 27.440075>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.475334, 32.570309, 28.002457> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.842133, 32.689503, 27.896379>,  <35.062210, 32.761017, 27.832733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.842133, 32.689503, 27.896379>,  <34.475334, 32.570309, 28.002457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.842133, 32.689503, 27.896379> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187752, 0.264149, 0.946031,
		0.351951, -0.917296, 0.186277,
		0.916995, 0.297983, -0.265192,
		35.117229, 32.778896, 27.816822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.006046, 32.319935, 28.579067>,  <34.475334, 32.570309, 28.002457>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.006046, 32.319935, 28.579067> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.134403, 32.634918, 28.368567>,  <35.211418, 32.823910, 28.242266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.134403, 32.634918, 28.368567>,  <35.006046, 32.319935, 28.579067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.134403, 32.634918, 28.368567> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221242, 0.477942, 0.850072,
		0.920914, -0.389207, -0.020853,
		0.320887, 0.787458, -0.526253,
		35.230671, 32.871155, 28.210691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<32.576599, 30.687727, 20.677279> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.842983, 30.976263, 20.601215>,  <33.002815, 31.149385, 20.555578>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.842983, 30.976263, 20.601215>,  <32.576599, 30.687727, 20.677279>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.842983, 30.976263, 20.601215> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451937, -0.187327, 0.872159,
		0.593503, -0.666764, -0.450754,
		0.665963, 0.721342, -0.190156,
		33.042770, 31.192665, 20.544168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.296417, 30.427376, 20.843168>,  <32.576599, 30.687727, 20.677279>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.296417, 30.427376, 20.843168> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.334538, 30.825422, 20.853474>,  <33.357410, 31.064249, 20.859657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.334538, 30.825422, 20.853474>,  <33.296417, 30.427376, 20.843168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.334538, 30.825422, 20.853474> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416701, -0.063386, 0.906831,
		0.904034, -0.075685, -0.420706,
		0.095301, 0.995115, 0.025765,
		33.363129, 31.123957, 20.861202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.008579, 30.642185, 21.114292>,  <33.296417, 30.427376, 20.843168>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.008579, 30.642185, 21.114292> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.754238, 30.940233, 21.194780>,  <33.601635, 31.119062, 21.243073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.754238, 30.940233, 21.194780>,  <34.008579, 30.642185, 21.114292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.754238, 30.940233, 21.194780> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406291, 0.101478, 0.908091,
		0.656218, 0.659164, -0.367261,
		-0.635850, 0.745121, 0.201221,
		33.563484, 31.163769, 21.255146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.367611, 31.161303, 21.322031>,  <34.008579, 30.642185, 21.114292>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.367611, 31.161303, 21.322031> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.015190, 31.282728, 21.467138>,  <33.803738, 31.355583, 21.554203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.015190, 31.282728, 21.467138>,  <34.367611, 31.161303, 21.322031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.015190, 31.282728, 21.467138> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399240, 0.065900, 0.914475,
		0.253696, 0.950529, -0.179257,
		-0.881048, 0.303565, 0.362770,
		33.750877, 31.373798, 21.575970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.501083, 31.774067, 21.732067>,  <34.367611, 31.161303, 21.322031>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.501083, 31.774067, 21.732067> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.140430, 31.637093, 21.837748>,  <33.924038, 31.554909, 21.901155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.140430, 31.637093, 21.837748>,  <34.501083, 31.774067, 21.732067>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.140430, 31.637093, 21.837748> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219476, 0.164113, 0.961716,
		-0.372682, 0.925098, -0.072814,
		-0.901631, -0.342433, 0.264199,
		33.869942, 31.534363, 21.917007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.185326, 32.348625, 22.163301>,  <34.501083, 31.774067, 21.732067>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.185326, 32.348625, 22.163301> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.989910, 32.014904, 22.265486>,  <33.872658, 31.814671, 22.326796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.989910, 32.014904, 22.265486>,  <34.185326, 32.348625, 22.163301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.989910, 32.014904, 22.265486> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184817, 0.187187, 0.964782,
		-0.852741, 0.518551, 0.062745,
		-0.488544, -0.834306, 0.255459,
		33.843346, 31.764612, 22.342123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.665581, 32.585808, 22.507568>,  <34.185326, 32.348625, 22.163301>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.665581, 32.585808, 22.507568> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.731552, 32.209229, 22.625200>,  <33.771133, 31.983282, 22.695780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.731552, 32.209229, 22.625200>,  <33.665581, 32.585808, 22.507568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.731552, 32.209229, 22.625200> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144257, 0.317983, 0.937057,
		-0.975700, -0.112120, 0.188253,
		0.164924, -0.941443, 0.294082,
		33.781029, 31.926796, 22.713425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.391781, 32.616211, 23.103071>,  <33.665581, 32.585808, 22.507568>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.391781, 32.616211, 23.103071> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.626991, 32.293762, 23.129570>,  <33.768120, 32.100292, 23.145470>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.626991, 32.293762, 23.129570>,  <33.391781, 32.616211, 23.103071>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.626991, 32.293762, 23.129570> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053115, 0.120214, 0.991326,
		-0.807093, -0.579410, 0.113507,
		0.588030, -0.806122, 0.066249,
		33.803402, 32.051926, 23.149445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.130478, 32.299908, 23.694860>,  <33.391781, 32.616211, 23.103071>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.130478, 32.299908, 23.694860> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.501488, 32.158417, 23.646563>,  <33.724094, 32.073524, 23.617584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.501488, 32.158417, 23.646563>,  <33.130478, 32.299908, 23.694860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.501488, 32.158417, 23.646563> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205371, 0.212405, 0.955357,
		-0.312288, -0.910913, 0.269656,
		0.927523, -0.353726, -0.120744,
		33.779743, 32.052299, 23.610340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.633167, 31.664516, 23.714605>,  <33.130478, 32.299908, 23.694860>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.633167, 31.664516, 23.714605> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.291607, 31.734219, 23.910761>,  <32.086670, 31.776039, 24.028454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.291607, 31.734219, 23.910761>,  <32.633167, 31.664516, 23.714605>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.291607, 31.734219, 23.910761> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514423, -0.139866, -0.846054,
		-0.078836, -0.974718, 0.209070,
		-0.853905, 0.174249, 0.490390,
		32.035435, 31.786495, 24.057878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.268707, 31.092701, 23.620646>,  <32.633167, 31.664516, 23.714605>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.268707, 31.092701, 23.620646> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.020519, 31.397999, 23.692726>,  <31.871605, 31.581177, 23.735975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.020519, 31.397999, 23.692726>,  <32.268707, 31.092701, 23.620646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.020519, 31.397999, 23.692726> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377985, -0.089724, -0.921454,
		-0.687125, -0.639851, 0.344166,
		-0.620473, 0.763243, 0.180202,
		31.834377, 31.626972, 23.746786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.572615, 30.870628, 23.407627>,  <32.268707, 31.092701, 23.620646>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.572615, 30.870628, 23.407627> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.568480, 31.270412, 23.420095>,  <31.565998, 31.510283, 23.427576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.568480, 31.270412, 23.420095>,  <31.572615, 30.870628, 23.407627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.568480, 31.270412, 23.420095> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589145, 0.019101, -0.807801,
		-0.807961, -0.026714, 0.588630,
		-0.010336, 0.999461, 0.031172,
		31.565378, 31.570251, 23.429447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.940422, 30.975660, 23.533787>,  <31.572615, 30.870628, 23.407627>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.940422, 30.975660, 23.533787> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.077312, 31.318850, 23.380548>,  <31.159447, 31.524763, 23.288607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.077312, 31.318850, 23.380548>,  <30.940422, 30.975660, 23.533787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.077312, 31.318850, 23.380548> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731073, -0.012990, -0.682175,
		-0.590265, 0.513528, 0.622797,
		0.342226, 0.857974, -0.383094,
		31.179981, 31.576242, 23.265621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.359674, 31.266479, 23.265205>,  <30.940422, 30.975660, 23.533787>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.359674, 31.266479, 23.265205> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.644566, 31.483080, 23.086542>,  <30.815500, 31.613041, 22.979343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.644566, 31.483080, 23.086542>,  <30.359674, 31.266479, 23.265205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.644566, 31.483080, 23.086542> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584837, 0.105873, -0.804212,
		-0.388194, 0.834006, 0.392097,
		0.712230, 0.541503, -0.446658,
		30.858234, 31.645531, 22.952545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.009129, 31.833935, 22.957848>,  <30.359674, 31.266479, 23.265205>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.009129, 31.833935, 22.957848> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.348824, 31.797035, 22.749891>,  <30.552641, 31.774895, 22.625118>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.348824, 31.797035, 22.749891>,  <30.009129, 31.833935, 22.957848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.348824, 31.797035, 22.749891> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522992, -0.011538, -0.852259,
		0.072621, 0.995669, -0.058044,
		0.849238, -0.092248, -0.519889,
		30.603596, 31.769361, 22.593924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.921841, 32.345798, 22.423744>,  <30.009129, 31.833935, 22.957848>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.921841, 32.345798, 22.423744> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.194574, 32.067272, 22.334087>,  <30.358215, 31.900156, 22.280293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.194574, 32.067272, 22.334087>,  <29.921841, 32.345798, 22.423744>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.194574, 32.067272, 22.334087> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468255, -0.180059, -0.865052,
		0.561993, 0.694780, -0.448826,
		0.681836, -0.696319, -0.224143,
		30.399126, 31.858377, 22.266844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.004663, 32.410896, 21.748270>,  <29.921841, 32.345798, 22.423744>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.004663, 32.410896, 21.748270> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.146545, 32.047695, 21.837465>,  <30.231674, 31.829775, 21.890984>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.146545, 32.047695, 21.837465>,  <30.004663, 32.410896, 21.748270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.146545, 32.047695, 21.837465> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409110, -0.365179, -0.836225,
		0.840723, 0.205384, -0.501002,
		0.354703, -0.907999, 0.222990,
		30.252956, 31.775295, 21.904362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.203751, 32.195744, 21.168703>,  <30.004663, 32.410896, 21.748270>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.203751, 32.195744, 21.168703> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.159431, 31.870846, 21.397785>,  <30.132839, 31.675909, 21.535234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.159431, 31.870846, 21.397785>,  <30.203751, 32.195744, 21.168703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.159431, 31.870846, 21.397785> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447870, -0.473614, -0.758355,
		0.887207, -0.340522, -0.311302,
		-0.110799, -0.812240, 0.572703,
		30.126192, 31.627174, 21.569595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.293215, 31.560373, 20.647228>,  <30.203751, 32.195744, 21.168703>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.293215, 31.560373, 20.647228> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.123547, 31.420462, 20.981350>,  <30.021746, 31.336515, 21.181822>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.123547, 31.420462, 20.981350>,  <30.293215, 31.560373, 20.647228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.123547, 31.420462, 20.981350> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658310, -0.514302, -0.549656,
		0.621857, -0.783037, -0.012111,
		-0.424172, -0.349780, 0.835303,
		29.996294, 31.315527, 21.231941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.152264, 30.842432, 20.549419>,  <30.293215, 31.560373, 20.647228>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.152264, 30.842432, 20.549419> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.887932, 30.968842, 20.821722>,  <29.729332, 31.044687, 20.985104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.887932, 30.968842, 20.821722>,  <30.152264, 30.842432, 20.549419>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.887932, 30.968842, 20.821722> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744497, -0.390847, -0.541261,
		0.095021, -0.864504, 0.493562,
		-0.660829, 0.316025, 0.680759,
		29.689684, 31.063648, 21.025949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.705179, 30.319233, 20.633425>,  <30.152264, 30.842432, 20.549419>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.705179, 30.319233, 20.633425> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.476049, 30.619217, 20.765749>,  <29.338572, 30.799208, 20.845144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.476049, 30.619217, 20.765749>,  <29.705179, 30.319233, 20.633425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.476049, 30.619217, 20.765749> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680293, -0.209841, -0.702260,
		-0.457249, -0.627318, 0.630393,
		-0.572822, 0.749959, 0.330811,
		29.304203, 30.844204, 20.864992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.912739, 30.103804, 20.749466>,  <29.705179, 30.319233, 20.633425>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.912739, 30.103804, 20.749466> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.912542, 30.499825, 20.693180>,  <28.912424, 30.737436, 20.659409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.912542, 30.499825, 20.693180>,  <28.912739, 30.103804, 20.749466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.912542, 30.499825, 20.693180> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667540, -0.105097, -0.737120,
		-0.744574, 0.093572, 0.660949,
		-0.000490, 0.990050, -0.140716,
		28.912395, 30.796839, 20.650965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.133097, 30.278013, 20.507143>,  <28.912739, 30.103804, 20.749466>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.133097, 30.278013, 20.507143> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.341429, 30.589058, 20.366257>,  <28.466429, 30.775684, 20.281725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.341429, 30.589058, 20.366257>,  <28.133097, 30.278013, 20.507143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.341429, 30.589058, 20.366257> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567861, 0.007528, -0.823090,
		-0.637392, 0.628701, 0.445496,
		0.520831, 0.777611, -0.352217,
		28.497679, 30.822342, 20.260592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<32.286648, 36.835300, 18.412106> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.335117, 36.438705, 18.431166>,  <32.364197, 36.200748, 18.442602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.335117, 36.438705, 18.431166>,  <32.286648, 36.835300, 18.412106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.335117, 36.438705, 18.431166> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068765, 0.056275, 0.996044,
		-0.990247, -0.117416, 0.074999,
		0.121172, -0.991487, 0.047652,
		32.371468, 36.141258, 18.445461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.666388, 36.485600, 18.709700>,  <32.286648, 36.835300, 18.412106>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.666388, 36.485600, 18.709700> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.011700, 36.288265, 18.752346>,  <32.218887, 36.169865, 18.777933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.011700, 36.288265, 18.752346>,  <31.666388, 36.485600, 18.709700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.011700, 36.288265, 18.752346> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036847, 0.149071, 0.988140,
		-0.503376, -0.856971, 0.110512,
		0.863281, -0.493334, 0.106616,
		32.270683, 36.140266, 18.784330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.652555, 36.312962, 19.373192>,  <31.666388, 36.485600, 18.709700>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.652555, 36.312962, 19.373192> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.027367, 36.194950, 19.298429>,  <32.252254, 36.124142, 19.253572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.027367, 36.194950, 19.298429>,  <31.652555, 36.312962, 19.373192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.027367, 36.194950, 19.298429> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218921, 0.079191, 0.972524,
		-0.272125, -0.952200, 0.138793,
		0.937028, -0.295033, -0.186906,
		32.308475, 36.106441, 19.242357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.705570, 35.690765, 19.767282>,  <31.652555, 36.312962, 19.373192>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.705570, 35.690765, 19.767282> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.083424, 35.794247, 19.686552>,  <32.310135, 35.856335, 19.638113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.083424, 35.794247, 19.686552>,  <31.705570, 35.690765, 19.767282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.083424, 35.794247, 19.686552> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196195, 0.047693, 0.979404,
		0.263006, -0.964777, -0.005705,
		0.944635, 0.258708, -0.201828,
		32.366814, 35.871861, 19.626003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.049740, 35.260738, 20.110878>,  <31.705570, 35.690765, 19.767282>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.049740, 35.260738, 20.110878> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.303116, 35.567947, 20.073147>,  <32.455139, 35.752274, 20.050508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.303116, 35.567947, 20.073147>,  <32.049740, 35.260738, 20.110878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.303116, 35.567947, 20.073147> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116158, 0.026143, 0.992887,
		0.765025, -0.639889, -0.072652,
		0.633438, 0.768023, -0.094328,
		32.493149, 35.798355, 20.044849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.604939, 35.067379, 20.574083>,  <32.049740, 35.260738, 20.110878>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.604939, 35.067379, 20.574083> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.635765, 35.461220, 20.511326>,  <32.654259, 35.697525, 20.473671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.635765, 35.461220, 20.511326>,  <32.604939, 35.067379, 20.574083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.635765, 35.461220, 20.511326> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401619, 0.113373, 0.908762,
		0.912559, -0.133042, -0.386700,
		0.077062, 0.984605, -0.156892,
		32.658882, 35.756599, 20.464258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.312679, 35.308647, 20.688377>,  <32.604939, 35.067379, 20.574083>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.312679, 35.308647, 20.688377> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.089600, 35.634274, 20.753212>,  <32.955753, 35.829651, 20.792112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.089600, 35.634274, 20.753212>,  <33.312679, 35.308647, 20.688377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.089600, 35.634274, 20.753212> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650057, 0.306932, 0.695139,
		0.516140, 0.493041, -0.700364,
		-0.557697, 0.814066, 0.162085,
		32.922291, 35.878494, 20.801838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.793636, 35.803276, 20.841988>,  <33.312679, 35.308647, 20.688377>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.793636, 35.803276, 20.841988> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.446266, 35.916103, 21.005093>,  <33.237843, 35.983799, 21.102955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.446266, 35.916103, 21.005093>,  <33.793636, 35.803276, 20.841988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.446266, 35.916103, 21.005093> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445194, 0.081598, 0.891708,
		0.218248, 0.955919, -0.196436,
		-0.868429, 0.282065, 0.407761,
		33.185738, 36.000725, 21.127420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.023304, 36.380478, 21.346527>,  <33.793636, 35.803276, 20.841988>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.023304, 36.380478, 21.346527> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.640030, 36.314568, 21.440111>,  <33.410065, 36.275021, 21.496262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.640030, 36.314568, 21.440111>,  <34.023304, 36.380478, 21.346527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.640030, 36.314568, 21.440111> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203776, 0.181110, 0.962120,
		-0.200911, 0.969560, -0.139958,
		-0.958181, -0.164780, 0.233960,
		33.352577, 36.265133, 21.510300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.912262, 36.876167, 21.820360>,  <34.023304, 36.380478, 21.346527>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.912262, 36.876167, 21.820360> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.601608, 36.633289, 21.887468>,  <33.415215, 36.487560, 21.927734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.601608, 36.633289, 21.887468>,  <33.912262, 36.876167, 21.820360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.601608, 36.633289, 21.887468> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076757, 0.173129, 0.981904,
		-0.625256, 0.775459, -0.087851,
		-0.776636, -0.607198, 0.167772,
		33.368618, 36.451130, 21.937799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.445549, 37.175289, 22.141453>,  <33.912262, 36.876167, 21.820360>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.445549, 37.175289, 22.141453> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.380394, 36.795074, 22.247246>,  <33.341301, 36.566948, 22.310722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.380394, 36.795074, 22.247246>,  <33.445549, 37.175289, 22.141453>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.380394, 36.795074, 22.247246> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158459, 0.239381, 0.957908,
		-0.973837, 0.197939, 0.111629,
		-0.162885, -0.950535, 0.264484,
		33.331528, 36.509914, 22.326591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.158901, 37.169724, 22.820225>,  <33.445549, 37.175289, 22.141453>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.158901, 37.169724, 22.820225> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.286366, 36.791767, 22.790216>,  <33.362846, 36.564991, 22.772211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.286366, 36.791767, 22.790216>,  <33.158901, 37.169724, 22.820225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.286366, 36.791767, 22.790216> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001805, -0.079750, 0.996813,
		-0.947866, -0.317514, -0.027119,
		0.318665, -0.944894, -0.075019,
		33.381966, 36.508301, 22.767710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.787201, 36.860947, 23.361748>,  <33.158901, 37.169724, 22.820225>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.787201, 36.860947, 23.361748> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.077740, 36.595581, 23.289856>,  <33.252064, 36.436363, 23.246721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.077740, 36.595581, 23.289856>,  <32.787201, 36.860947, 23.361748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.077740, 36.595581, 23.289856> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129624, -0.124580, 0.983706,
		-0.674997, -0.737807, -0.004493,
		0.726345, -0.663416, -0.179729,
		33.295643, 36.396557, 23.235937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.718109, 36.462296, 23.906164>,  <32.787201, 36.860947, 23.361748>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.718109, 36.462296, 23.906164> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.088551, 36.388813, 23.774355>,  <33.310814, 36.344723, 23.695271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.088551, 36.388813, 23.774355>,  <32.718109, 36.462296, 23.906164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.088551, 36.388813, 23.774355> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334476, -0.004243, 0.942395,
		-0.174520, -0.982972, 0.057516,
		0.926104, -0.183705, -0.329521,
		33.366383, 36.333702, 23.675499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.309830, 35.891197, 24.189741>,  <32.718109, 36.462296, 23.906164>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.309830, 35.891197, 24.189741> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.005951, 36.068161, 24.380373>,  <31.823624, 36.174339, 24.494753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.005951, 36.068161, 24.380373>,  <32.309830, 35.891197, 24.189741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.005951, 36.068161, 24.380373> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464804, 0.143104, -0.873772,
		-0.454767, -0.885321, 0.096918,
		-0.759700, 0.442411, 0.476580,
		31.778042, 36.200886, 24.523348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.763119, 35.467602, 24.115276>,  <32.309830, 35.891197, 24.189741>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.763119, 35.467602, 24.115276> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.600273, 35.824867, 24.191710>,  <31.502565, 36.039227, 24.237570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.600273, 35.824867, 24.191710>,  <31.763119, 35.467602, 24.115276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.600273, 35.824867, 24.191710> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586571, -0.095302, -0.804271,
		-0.700138, -0.439512, 0.562704,
		-0.407114, 0.893167, 0.191080,
		31.478138, 36.092815, 24.249033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.096498, 35.365704, 24.062809>,  <31.763119, 35.467602, 24.115276>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.096498, 35.365704, 24.062809> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.142691, 35.758621, 24.003807>,  <31.170406, 35.994373, 23.968405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.142691, 35.758621, 24.003807>,  <31.096498, 35.365704, 24.062809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.142691, 35.758621, 24.003807> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412957, -0.087582, -0.906530,
		-0.903400, 0.165599, 0.395532,
		0.115479, 0.982296, -0.147507,
		31.177334, 36.053310, 23.959555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.414742, 35.452122, 23.857620>,  <31.096498, 35.365704, 24.062809>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.414742, 35.452122, 23.857620> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.623396, 35.779694, 23.761913>,  <30.748589, 35.976238, 23.704489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.623396, 35.779694, 23.761913>,  <30.414742, 35.452122, 23.857620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.623396, 35.779694, 23.761913> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384000, -0.025074, -0.922992,
		-0.761866, 0.573344, 0.301390,
		0.521635, 0.818931, -0.239268,
		30.779886, 36.025372, 23.690132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.971050, 35.880959, 23.477398>,  <30.414742, 35.452122, 23.857620>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.971050, 35.880959, 23.477398> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.317558, 36.058887, 23.386436>,  <30.525463, 36.165646, 23.331860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.317558, 36.058887, 23.386436>,  <29.971050, 35.880959, 23.477398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.317558, 36.058887, 23.386436> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293911, 0.085699, -0.951983,
		-0.403973, 0.891510, 0.204976,
		0.866269, 0.444820, -0.227405,
		30.577438, 36.192333, 23.318214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.750023, 36.643631, 23.094408>,  <29.971050, 35.880959, 23.477398>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.750023, 36.643631, 23.094408> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.115416, 36.504971, 23.009195>,  <30.334652, 36.421776, 22.958067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.115416, 36.504971, 23.009195>,  <29.750023, 36.643631, 23.094408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.115416, 36.504971, 23.009195> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152500, 0.193711, -0.969134,
		0.377219, 0.917774, 0.124087,
		0.913482, -0.346652, -0.213032,
		30.389460, 36.400974, 22.945286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.937899, 37.133308, 22.719452>,  <29.750023, 36.643631, 23.094408>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.937899, 37.133308, 22.719452> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.162733, 36.811058, 22.644590>,  <30.297634, 36.617706, 22.599674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.162733, 36.811058, 22.644590>,  <29.937899, 37.133308, 22.719452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.162733, 36.811058, 22.644590> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212366, 0.078115, -0.974063,
		0.799349, 0.587252, -0.127180,
		0.562086, -0.805625, -0.187154,
		30.331360, 36.569370, 22.588444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.280409, 37.278156, 22.084398>,  <29.937899, 37.133308, 22.719452>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.280409, 37.278156, 22.084398> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.303610, 36.882492, 22.138367>,  <30.317530, 36.645096, 22.170748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.303610, 36.882492, 22.138367>,  <30.280409, 37.278156, 22.084398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.303610, 36.882492, 22.138367> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257107, -0.145391, -0.955383,
		0.964641, 0.020725, -0.262752,
		0.058002, -0.989157, 0.134921,
		30.321011, 36.585747, 22.178843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.634407, 36.985889, 21.464373>,  <30.280409, 37.278156, 22.084398>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.634407, 36.985889, 21.464373> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.448671, 36.670193, 21.625113>,  <30.337229, 36.480774, 21.721556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.448671, 36.670193, 21.625113>,  <30.634407, 36.985889, 21.464373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.448671, 36.670193, 21.625113> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210840, -0.342179, -0.915675,
		0.860194, -0.509911, -0.007516,
		-0.464341, -0.789243, 0.401850,
		30.309368, 36.433418, 21.745668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.804907, 36.458012, 21.041147>,  <30.634407, 36.985889, 21.464373>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.804907, 36.458012, 21.041147> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.468618, 36.318726, 21.207008>,  <30.266846, 36.235153, 21.306526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.468618, 36.318726, 21.207008>,  <30.804907, 36.458012, 21.041147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.468618, 36.318726, 21.207008> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235388, -0.454614, -0.859022,
		0.487629, -0.819802, 0.300238,
		-0.840720, -0.348212, 0.414654,
		30.216402, 36.214264, 21.331404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.692064, 35.749615, 20.833515>,  <30.804907, 36.458012, 21.041147>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.692064, 35.749615, 20.833515> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.329456, 35.863327, 20.958357>,  <30.111891, 35.931553, 21.033262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.329456, 35.863327, 20.958357>,  <30.692064, 35.749615, 20.833515>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.329456, 35.863327, 20.958357> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406235, -0.386228, -0.828131,
		-0.114874, -0.877505, 0.465606,
		-0.906519, 0.284276, 0.312105,
		30.057501, 35.948608, 21.051989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.237371, 35.202679, 20.805649>,  <30.692064, 35.749615, 20.833515>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.237371, 35.202679, 20.805649> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.986599, 35.514004, 20.791851>,  <29.836136, 35.700798, 20.783571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.986599, 35.514004, 20.791851>,  <30.237371, 35.202679, 20.805649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.986599, 35.514004, 20.791851> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424631, -0.378494, -0.822454,
		-0.653182, -0.500974, 0.567784,
		-0.626931, 0.778311, -0.034496,
		29.798519, 35.747498, 20.781502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.502420, 34.915253, 20.630230>,  <30.237371, 35.202679, 20.805649>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.502420, 34.915253, 20.630230> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.496775, 35.299252, 20.518370>,  <29.493387, 35.529652, 20.451254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.496775, 35.299252, 20.518370>,  <29.502420, 34.915253, 20.630230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.496775, 35.299252, 20.518370> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460726, -0.254462, -0.850282,
		-0.887430, 0.116839, 0.445888,
		-0.014115, 0.959999, -0.279648,
		29.492540, 35.587250, 20.434475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.011332, 35.053917, 20.122881>,  <29.502420, 34.915253, 20.630230>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.011332, 35.053917, 20.122881> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.162329, 35.418560, 20.057808>,  <29.252926, 35.637348, 20.018764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.162329, 35.418560, 20.057808>,  <29.011332, 35.053917, 20.122881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.162329, 35.418560, 20.057808> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115331, -0.128027, -0.985042,
		-0.918803, 0.390607, 0.056808,
		0.377491, 0.911612, -0.162680,
		29.275576, 35.692043, 20.009005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.363577, 34.802090, 20.402388>,  <29.011332, 35.053917, 20.122881>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.363577, 34.802090, 20.402388> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.007158, 34.624390, 20.365139>,  <27.793306, 34.517769, 20.342791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.007158, 34.624390, 20.365139>,  <28.363577, 34.802090, 20.402388>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.007158, 34.624390, 20.365139> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040786, -0.125962, 0.991196,
		-0.452072, 0.887002, 0.094119,
		-0.891048, -0.444254, -0.093121,
		27.739843, 34.491112, 20.337202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.735670, 35.139023, 20.879961>,  <28.363577, 34.802090, 20.402388>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.735670, 35.139023, 20.879961> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.660053, 34.747654, 20.846626>,  <27.614683, 34.512833, 20.826626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.660053, 34.747654, 20.846626>,  <27.735670, 35.139023, 20.879961>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.660053, 34.747654, 20.846626> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219121, -0.040697, 0.974849,
		-0.957209, 0.202549, -0.206700,
		-0.189043, -0.978426, -0.083338,
		27.603340, 34.454124, 20.821625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.142672, 35.025970, 21.297358>,  <27.735670, 35.139023, 20.879961>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.142672, 35.025970, 21.297358> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.300333, 34.659683, 21.266117>,  <27.394930, 34.439911, 21.247372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.300333, 34.659683, 21.266117>,  <27.142672, 35.025970, 21.297358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.300333, 34.659683, 21.266117> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155975, -0.150401, 0.976244,
		-0.905712, -0.372608, -0.202110,
		0.394154, -0.915720, -0.078102,
		27.418579, 34.384968, 21.242687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.681650, 34.559254, 21.650982>,  <27.142672, 35.025970, 21.297358>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.681650, 34.559254, 21.650982> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.050987, 34.405720, 21.646744>,  <27.272589, 34.313599, 21.644201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.050987, 34.405720, 21.646744>,  <26.681650, 34.559254, 21.650982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.050987, 34.405720, 21.646744> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133823, -0.347541, 0.928066,
		-0.359919, -0.855498, -0.372265,
		0.923336, -0.383847, -0.010602,
		27.327990, 34.290569, 21.643564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.555614, 34.016895, 22.134356>,  <26.681650, 34.559254, 21.650982>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.555614, 34.016895, 22.134356> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.950216, 34.032761, 22.070810>,  <27.186977, 34.042278, 22.032682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.950216, 34.032761, 22.070810>,  <26.555614, 34.016895, 22.134356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.950216, 34.032761, 22.070810> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163542, -0.286455, 0.944033,
		-0.008067, -0.957272, -0.289075,
		0.986504, 0.039661, -0.158865,
		27.246168, 34.044659, 22.023151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.894421, 33.405499, 22.623810>,  <26.555614, 34.016895, 22.134356>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.894421, 33.405499, 22.623810> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.170654, 33.679127, 22.529882>,  <27.336393, 33.843304, 22.473526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.170654, 33.679127, 22.529882>,  <26.894421, 33.405499, 22.623810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.170654, 33.679127, 22.529882> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369930, -0.055098, 0.927424,
		0.621489, -0.727328, -0.291110,
		0.690581, 0.684074, -0.234817,
		27.377829, 33.884350, 22.459436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.454638, 33.206211, 22.964691>,  <26.894421, 33.405499, 22.623810>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.454638, 33.206211, 22.964691> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.547731, 33.590752, 22.905859>,  <27.603588, 33.821476, 22.870560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.547731, 33.590752, 22.905859>,  <27.454638, 33.206211, 22.964691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.547731, 33.590752, 22.905859> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367506, 0.053085, 0.928505,
		0.900430, -0.270146, -0.340949,
		0.232733, 0.961355, -0.147080,
		27.617552, 33.879158, 22.861734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.162315, 33.363201, 23.261288>,  <27.454638, 33.206211, 22.964691>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.162315, 33.363201, 23.261288> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.997280, 33.726231, 23.230101>,  <27.898258, 33.944050, 23.211390>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.997280, 33.726231, 23.230101>,  <28.162315, 33.363201, 23.261288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.997280, 33.726231, 23.230101> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522745, 0.305998, 0.795677,
		0.745994, 0.287532, -0.600682,
		-0.412590, 0.907574, -0.077967,
		27.873503, 33.998505, 23.206711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.653450, 33.859673, 23.249899>,  <28.162315, 33.363201, 23.261288>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.653450, 33.859673, 23.249899> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.324530, 34.066872, 23.344133>,  <28.127178, 34.191193, 23.400675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.324530, 34.066872, 23.344133>,  <28.653450, 33.859673, 23.249899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.324530, 34.066872, 23.344133> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485865, 0.423573, 0.764540,
		0.296244, 0.743143, -0.599982,
		-0.822299, 0.518000, 0.235586,
		28.077841, 34.222271, 23.414808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.925531, 34.493145, 23.416264>,  <28.653450, 33.859673, 23.249899>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.925531, 34.493145, 23.416264> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.569637, 34.481541, 23.598486>,  <28.356100, 34.474579, 23.707819>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.569637, 34.481541, 23.598486>,  <28.925531, 34.493145, 23.416264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.569637, 34.481541, 23.598486> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410157, 0.387221, 0.825731,
		-0.200356, 0.921530, -0.332624,
		-0.889735, -0.029012, 0.455555,
		28.302717, 34.472836, 23.735153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.816195, 35.176189, 23.709593>,  <28.925531, 34.493145, 23.416264>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.816195, 35.176189, 23.709593> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.588394, 34.914478, 23.908627>,  <28.451714, 34.757454, 24.028048>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.588394, 34.914478, 23.908627>,  <28.816195, 35.176189, 23.709593>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.588394, 34.914478, 23.908627> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384948, 0.322572, 0.864733,
		-0.726280, 0.684012, 0.068156,
		-0.569502, -0.654274, 0.497586,
		28.417543, 34.718197, 24.057903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.678207, 35.431099, 24.363821>,  <28.816195, 35.176189, 23.709593>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.678207, 35.431099, 24.363821> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.568672, 35.056084, 24.449646>,  <28.502951, 34.831074, 24.501141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.568672, 35.056084, 24.449646>,  <28.678207, 35.431099, 24.363821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.568672, 35.056084, 24.449646> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155422, 0.177023, 0.971857,
		-0.949134, 0.299482, 0.097238,
		-0.273840, -0.937536, 0.214564,
		28.486521, 34.774822, 24.514015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.401201, 35.541611, 25.070608>,  <28.678207, 35.431099, 24.363821>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.401201, 35.541611, 25.070608> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.448818, 35.145458, 25.042393>,  <28.477388, 34.907768, 25.025463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.448818, 35.145458, 25.042393>,  <28.401201, 35.541611, 25.070608>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.448818, 35.145458, 25.042393> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075168, -0.061851, 0.995251,
		-0.990040, -0.123778, 0.067082,
		0.119041, -0.990381, -0.070539,
		28.484531, 34.848343, 25.021231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.036411, 35.209938, 25.624805>,  <28.401201, 35.541611, 25.070608>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.036411, 35.209938, 25.624805> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.287104, 34.922070, 25.505283>,  <28.437519, 34.749348, 25.433571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.287104, 34.922070, 25.505283>,  <28.036411, 35.209938, 25.624805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.287104, 34.922070, 25.505283> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193321, -0.227869, 0.954307,
		-0.754874, -0.655859, -0.003685,
		0.626731, -0.719670, -0.298804,
		28.475122, 34.706169, 25.415642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<27.400557, 31.002302, 20.075043> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.789644, 31.034079, 19.987860>,  <28.023096, 31.053144, 19.935549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.789644, 31.034079, 19.987860>,  <27.400557, 31.002302, 20.075043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.789644, 31.034079, 19.987860> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224321, 0.082571, -0.971011,
		-0.059141, 0.993414, 0.098139,
		0.972719, 0.079441, -0.217960,
		28.081459, 31.057911, 19.922472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.458803, 31.625944, 19.699574>,  <27.400557, 31.002302, 20.075043>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.458803, 31.625944, 19.699574> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.788975, 31.428951, 19.589209>,  <27.987078, 31.310755, 19.522989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.788975, 31.428951, 19.589209>,  <27.458803, 31.625944, 19.699574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.788975, 31.428951, 19.589209> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211397, 0.183533, -0.960014,
		0.523430, 0.850750, 0.047383,
		0.825428, -0.492484, -0.275913,
		28.036604, 31.281206, 19.506435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.798431, 31.966614, 19.153336>,  <27.458803, 31.625944, 19.699574>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.798431, 31.966614, 19.153336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.980230, 31.611444, 19.124996>,  <28.089310, 31.398342, 19.107992>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.980230, 31.611444, 19.124996>,  <27.798431, 31.966614, 19.153336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.980230, 31.611444, 19.124996> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048941, 0.054526, -0.997312,
		0.889401, 0.456746, -0.018674,
		0.454500, -0.887925, -0.070849,
		28.116581, 31.345066, 19.103741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.302008, 31.965992, 18.636223>,  <27.798431, 31.966614, 19.153336>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.302008, 31.965992, 18.636223> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.198452, 31.581177, 18.670776>,  <28.136318, 31.350288, 18.691507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.198452, 31.581177, 18.670776>,  <28.302008, 31.965992, 18.636223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.198452, 31.581177, 18.670776> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085120, -0.066360, -0.994158,
		0.962149, -0.264730, -0.064709,
		-0.258889, -0.962037, 0.086382,
		28.120785, 31.292566, 18.696692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.771420, 31.561825, 18.234055>,  <28.302008, 31.965992, 18.636223>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.771420, 31.561825, 18.234055> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.425922, 31.367825, 18.288784>,  <28.218624, 31.251423, 18.321621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.425922, 31.367825, 18.288784>,  <28.771420, 31.561825, 18.234055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.425922, 31.367825, 18.288784> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150271, -0.011266, -0.988581,
		0.481006, -0.874440, -0.063151,
		-0.863743, -0.485003, 0.136822,
		28.166800, 31.222324, 18.329830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.759729, 31.337469, 17.599241>,  <28.771420, 31.561825, 18.234055>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.759729, 31.337469, 17.599241> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.390463, 31.264750, 17.734718>,  <28.168903, 31.221119, 17.816004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.390463, 31.264750, 17.734718>,  <28.759729, 31.337469, 17.599241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.390463, 31.264750, 17.734718> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366997, 0.154746, -0.917260,
		0.114335, -0.971085, -0.209572,
		-0.923169, -0.181788, 0.338693,
		28.113512, 31.210211, 17.836325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.506323, 31.047344, 17.056061>,  <28.759729, 31.337469, 17.599241>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.506323, 31.047344, 17.056061> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.179411, 31.131754, 17.270544>,  <27.983263, 31.182400, 17.399235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.179411, 31.131754, 17.270544>,  <28.506323, 31.047344, 17.056061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.179411, 31.131754, 17.270544> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451983, 0.342451, -0.823674,
		-0.357442, -0.915530, -0.184498,
		-0.817280, 0.211026, 0.536210,
		27.934227, 31.195061, 17.431408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.969599, 30.711817, 16.719664>,  <28.506323, 31.047344, 17.056061>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.969599, 30.711817, 16.719664> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.757271, 30.968996, 16.940516>,  <27.629875, 31.123304, 17.073027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.757271, 30.968996, 16.940516>,  <27.969599, 30.711817, 16.719664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.757271, 30.968996, 16.940516> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519971, 0.267378, -0.811258,
		-0.669225, -0.717723, 0.192385,
		-0.530819, 0.642949, 0.552131,
		27.598024, 31.161880, 17.106155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.225386, 30.622509, 16.502836>,  <27.969599, 30.711817, 16.719664>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.225386, 30.622509, 16.502836> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.252430, 30.987362, 16.664547>,  <27.268656, 31.206274, 16.761574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.252430, 30.987362, 16.664547>,  <27.225386, 30.622509, 16.502836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.252430, 30.987362, 16.664547> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324356, 0.403290, -0.855658,
		-0.943515, -0.073278, 0.323123,
		0.067611, 0.912133, 0.404278,
		27.272713, 31.261002, 16.785831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.810343, 30.903555, 16.061420>,  <27.225386, 30.622509, 16.502836>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.810343, 30.903555, 16.061420> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.966169, 31.212612, 16.261925>,  <27.059666, 31.398046, 16.382227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.966169, 31.212612, 16.261925>,  <26.810343, 30.903555, 16.061420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.966169, 31.212612, 16.261925> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189797, 0.599924, -0.777218,
		-0.901230, 0.207640, 0.380355,
		0.389566, 0.772643, 0.501260,
		27.083038, 31.444405, 16.412302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.261879, 31.443642, 16.128847>,  <26.810343, 30.903555, 16.061420>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.261879, 31.443642, 16.128847> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.626284, 31.607122, 16.150845>,  <26.844927, 31.705210, 16.164043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.626284, 31.607122, 16.150845>,  <26.261879, 31.443642, 16.128847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.626284, 31.607122, 16.150845> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234547, 0.623205, -0.746059,
		-0.339188, 0.666768, 0.663605,
		0.911010, 0.408700, 0.054995,
		26.899588, 31.729733, 16.167343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.120951, 32.187035, 16.117905>,  <26.261879, 31.443642, 16.128847>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.120951, 32.187035, 16.117905> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.497679, 32.153099, 15.987812>,  <26.723715, 32.132736, 15.909756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.497679, 32.153099, 15.987812>,  <26.120951, 32.187035, 16.117905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.497679, 32.153099, 15.987812> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223990, 0.563023, -0.795509,
		0.250605, 0.822075, 0.511263,
		0.941820, -0.084841, -0.325233,
		26.780226, 32.127647, 15.890243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.362478, 32.849308, 15.986561>,  <26.120951, 32.187035, 16.117905>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.362478, 32.849308, 15.986561> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.524986, 32.555271, 15.769457>,  <26.622490, 32.378849, 15.639194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.524986, 32.555271, 15.769457>,  <26.362478, 32.849308, 15.986561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.524986, 32.555271, 15.769457> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341942, 0.428524, -0.836327,
		0.847361, 0.525366, -0.077262,
		0.406269, -0.735090, -0.542759,
		26.646868, 32.334743, 15.606629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.779760, 33.141350, 15.412179>,  <26.362478, 32.849308, 15.986561>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.779760, 33.141350, 15.412179> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.630564, 32.778126, 15.335961>,  <26.541046, 32.560192, 15.290231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.630564, 32.778126, 15.335961>,  <26.779760, 33.141350, 15.412179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.630564, 32.778126, 15.335961> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364967, 0.332400, -0.869661,
		0.853040, -0.254834, -0.455393,
		-0.372992, -0.908058, -0.190544,
		26.518665, 32.505707, 15.278798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.181215, 33.523464, 14.994760>,  <26.779760, 33.141350, 15.412179>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.181215, 33.523464, 14.994760> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.049425, 33.885929, 14.888687>,  <26.970350, 34.103409, 14.825044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.049425, 33.885929, 14.888687>,  <27.181215, 33.523464, 14.994760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.049425, 33.885929, 14.888687> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170631, 0.219091, 0.960668,
		0.928617, 0.361766, 0.082433,
		-0.329476, 0.906159, -0.265180,
		26.950583, 34.157776, 14.809134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.616808, 33.967896, 15.278532>,  <27.181215, 33.523464, 14.994760>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.616808, 33.967896, 15.278532> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.277405, 34.175144, 15.235477>,  <27.073763, 34.299492, 15.209644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.277405, 34.175144, 15.235477>,  <27.616808, 33.967896, 15.278532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.277405, 34.175144, 15.235477> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061955, 0.299267, 0.952156,
		0.525545, 0.801242, -0.286030,
		-0.848507, 0.518121, -0.107637,
		27.022852, 34.330582, 15.203186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.737436, 34.499027, 15.777292>,  <27.616808, 33.967896, 15.278532>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.737436, 34.499027, 15.777292> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.348106, 34.549683, 15.700765>,  <27.114508, 34.580074, 15.654848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.348106, 34.549683, 15.700765>,  <27.737436, 34.499027, 15.777292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.348106, 34.549683, 15.700765> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130204, 0.381705, 0.915067,
		0.188909, 0.915568, -0.355034,
		-0.973324, 0.126637, -0.191318,
		27.056108, 34.587673, 15.643369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.487123, 35.180370, 16.048571>,  <27.737436, 34.499027, 15.777292>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.487123, 35.180370, 16.048571> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.162264, 34.954765, 15.988844>,  <26.967348, 34.819401, 15.953008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.162264, 34.954765, 15.988844>,  <27.487123, 35.180370, 16.048571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.162264, 34.954765, 15.988844> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282324, 0.155938, 0.946560,
		-0.510591, 0.810906, -0.285881,
		-0.812151, -0.564017, -0.149317,
		26.918619, 34.785561, 15.944049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.954166, 35.673573, 16.227562>,  <27.487123, 35.180370, 16.048571>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.954166, 35.673573, 16.227562> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.836624, 35.304142, 16.326069>,  <26.766098, 35.082481, 16.385172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.836624, 35.304142, 16.326069>,  <26.954166, 35.673573, 16.227562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.836624, 35.304142, 16.326069> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323225, 0.338477, 0.883719,
		-0.899541, 0.180088, -0.397988,
		-0.293857, -0.923581, 0.246266,
		26.748466, 35.027069, 16.399948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.473831, 35.863083, 16.746267>,  <26.954166, 35.673573, 16.227562>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.473831, 35.863083, 16.746267> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.500288, 35.468727, 16.807779>,  <26.516163, 35.232113, 16.844687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.500288, 35.468727, 16.807779>,  <26.473831, 35.863083, 16.746267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.500288, 35.468727, 16.807779> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073083, 0.148916, 0.986146,
		-0.995130, -0.076464, -0.062202,
		0.066141, -0.985889, 0.153779,
		26.520130, 35.172962, 16.853912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.975920, 35.715927, 17.263336>,  <26.473831, 35.863083, 16.746267>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.975920, 35.715927, 17.263336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.235403, 35.411560, 17.268713>,  <26.391094, 35.228939, 17.271938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.235403, 35.411560, 17.268713>,  <25.975920, 35.715927, 17.263336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.235403, 35.411560, 17.268713> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042406, 0.053776, 0.997652,
		-0.759854, -0.646616, 0.067153,
		0.648709, -0.760918, 0.013441,
		26.430016, 35.183285, 17.272745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.804287, 35.378445, 17.875425>,  <25.975920, 35.715927, 17.263336>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.804287, 35.378445, 17.875425> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.145159, 35.181904, 17.803463>,  <26.349682, 35.063980, 17.760286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.145159, 35.181904, 17.803463>,  <25.804287, 35.378445, 17.875425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.145159, 35.181904, 17.803463> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115470, -0.158753, 0.980543,
		-0.510354, -0.856370, -0.078549,
		0.852177, -0.491354, -0.179905,
		26.400812, 35.034496, 17.749491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.781357, 34.610813, 18.144165>,  <25.804287, 35.378445, 17.875425>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.781357, 34.610813, 18.144165> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.156771, 34.748219, 18.130585>,  <26.382019, 34.830662, 18.122437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.156771, 34.748219, 18.130585>,  <25.781357, 34.610813, 18.144165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.156771, 34.748219, 18.130585> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136356, -0.278584, 0.950683,
		0.317114, -0.896877, -0.308301,
		0.938534, 0.343514, -0.033951,
		26.438332, 34.851273, 18.120399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.143955, 34.131199, 18.554075>,  <25.781357, 34.610813, 18.144165>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.143955, 34.131199, 18.554075> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.415838, 34.420441, 18.504889>,  <26.578968, 34.593987, 18.475376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.415838, 34.420441, 18.504889>,  <26.143955, 34.131199, 18.554075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.415838, 34.420441, 18.504889> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468187, -0.298666, 0.831624,
		0.564625, -0.622831, -0.541553,
		0.679705, 0.723104, -0.122967,
		26.619749, 34.637371, 18.467999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.855415, 33.808815, 18.630869>,  <26.143955, 34.131199, 18.554075>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.855415, 33.808815, 18.630869> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.904716, 34.197990, 18.709045>,  <26.934298, 34.431496, 18.755951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.904716, 34.197990, 18.709045>,  <26.855415, 33.808815, 18.630869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.904716, 34.197990, 18.709045> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504990, -0.231028, 0.831632,
		0.854280, -0.003804, -0.519799,
		0.123252, 0.972940, 0.195442,
		26.941692, 34.489872, 18.767677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.620981, 33.882389, 18.740740>,  <26.855415, 33.808815, 18.630869>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.620981, 33.882389, 18.740740> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.437473, 34.198479, 18.903259>,  <27.327368, 34.388130, 19.000771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.437473, 34.198479, 18.903259>,  <27.620981, 33.882389, 18.740740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.437473, 34.198479, 18.903259> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454328, -0.184353, 0.871551,
		0.763621, 0.584435, -0.274444,
		-0.458770, 0.790222, 0.406300,
		27.299843, 34.435547, 19.025150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.133633, 34.137085, 19.230717>,  <27.620981, 33.882389, 18.740740>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.133633, 34.137085, 19.230717> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.790213, 34.282906, 19.374933>,  <27.584160, 34.370399, 19.461462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.790213, 34.282906, 19.374933>,  <28.133633, 34.137085, 19.230717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.790213, 34.282906, 19.374933> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386059, -0.003114, 0.922469,
		0.337413, 0.931177, -0.138066,
		-0.858552, 0.364554, 0.360539,
		27.532646, 34.392273, 19.483095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.292564, 34.676750, 19.655737>,  <28.133633, 34.137085, 19.230717>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.292564, 34.676750, 19.655737> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.939379, 34.533527, 19.777172>,  <27.727467, 34.447594, 19.850033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.939379, 34.533527, 19.777172>,  <28.292564, 34.676750, 19.655737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.939379, 34.533527, 19.777172> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326518, -0.003792, 0.945183,
		-0.337282, 0.933691, 0.120261,
		-0.882965, -0.358061, 0.303588,
		27.674490, 34.426109, 19.868248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.424536, 35.495403, 19.686926>,  <28.292564, 34.676750, 19.655737>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.424536, 35.495403, 19.686926> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.773125, 35.684582, 19.634991>,  <28.982277, 35.798088, 19.603830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.773125, 35.684582, 19.634991>,  <28.424536, 35.495403, 19.686926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.773125, 35.684582, 19.634991> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106064, -0.076729, -0.991395,
		-0.478841, 0.877743, -0.016705,
		0.871471, 0.472949, -0.129838,
		29.034567, 35.826466, 19.596039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.314503, 36.027733, 19.195570>,  <28.424536, 35.495403, 19.686926>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.314503, 36.027733, 19.195570> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.708033, 35.959126, 19.174904>,  <28.944151, 35.917961, 19.162504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.708033, 35.959126, 19.174904>,  <28.314503, 36.027733, 19.195570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.708033, 35.959126, 19.174904> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054598, -0.012420, -0.998431,
		0.170607, 0.985103, -0.021583,
		0.983825, -0.171518, -0.051665,
		29.003180, 35.907669, 19.159405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.487476, 36.356506, 18.597559>,  <28.314503, 36.027733, 19.195570>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.487476, 36.356506, 18.597559> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.822052, 36.142410, 18.644695>,  <29.022799, 36.013954, 18.672977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.822052, 36.142410, 18.644695>,  <28.487476, 36.356506, 18.597559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.822052, 36.142410, 18.644695> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118541, -0.033241, -0.992393,
		0.535083, 0.844047, 0.035643,
		0.836441, -0.535238, 0.117841,
		29.072985, 35.981838, 18.680048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.904837, 36.758671, 18.222189>,  <28.487476, 36.356506, 18.597559>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.904837, 36.758671, 18.222189> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.065178, 36.394264, 18.260920>,  <29.161383, 36.175621, 18.284157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.065178, 36.394264, 18.260920>,  <28.904837, 36.758671, 18.222189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.065178, 36.394264, 18.260920> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303155, 0.032167, -0.952398,
		0.864532, 0.411124, 0.289071,
		0.400852, -0.911012, 0.096825,
		29.185434, 36.120960, 18.289967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.482792, 36.743996, 17.872171>,  <28.904837, 36.758671, 18.222189>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.482792, 36.743996, 17.872171> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.377560, 36.358379, 17.887171>,  <29.314421, 36.127010, 17.896170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.377560, 36.358379, 17.887171>,  <29.482792, 36.743996, 17.872171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.377560, 36.358379, 17.887171> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040895, -0.049976, -0.997913,
		0.963906, -0.260999, 0.052573,
		-0.263082, -0.964044, 0.037499,
		29.298635, 36.069164, 17.898420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.918083, 36.392349, 17.427029>,  <29.482792, 36.743996, 17.872171>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.918083, 36.392349, 17.427029> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.604918, 36.148708, 17.477701>,  <29.417019, 36.002525, 17.508104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.604918, 36.148708, 17.477701>,  <29.918083, 36.392349, 17.427029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.604918, 36.148708, 17.477701> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046082, -0.146287, -0.988168,
		0.620423, -0.779487, 0.086461,
		-0.782912, -0.609098, 0.126680,
		29.370045, 35.965981, 17.515705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.097525, 35.840763, 17.038008>,  <29.918083, 36.392349, 17.427029>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.097525, 35.840763, 17.038008> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.699814, 35.845192, 17.080505>,  <29.461187, 35.847851, 17.106005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.699814, 35.845192, 17.080505>,  <30.097525, 35.840763, 17.038008>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.699814, 35.845192, 17.080505> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106666, -0.049428, -0.993066,
		-0.005742, -0.998716, 0.050326,
		-0.994278, 0.011070, 0.106246,
		29.401531, 35.848515, 17.112379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.753105, 35.737915, 16.577528>,  <30.097525, 35.840763, 17.038008>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.753105, 35.737915, 16.577528> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.078682, 35.820641, 16.360373>,  <31.274027, 35.870277, 16.230080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.078682, 35.820641, 16.360373>,  <30.753105, 35.737915, 16.577528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.078682, 35.820641, 16.360373> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580315, -0.245807, 0.776411,
		0.027128, -0.946998, -0.320090,
		0.813940, 0.206816, -0.542889,
		31.322865, 35.882687, 16.197506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.154566, 35.172825, 16.624527>,  <30.753105, 35.737915, 16.577528>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.154566, 35.172825, 16.624527> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.392473, 35.485657, 16.550127>,  <31.535217, 35.673355, 16.505487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.392473, 35.485657, 16.550127>,  <31.154566, 35.172825, 16.624527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.392473, 35.485657, 16.550127> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487278, -0.166713, 0.857185,
		0.639382, -0.600460, -0.480248,
		0.594769, 0.782083, -0.185998,
		31.570904, 35.720284, 16.494328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.806847, 34.897221, 16.604464>,  <31.154566, 35.172825, 16.624527>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.806847, 34.897221, 16.604464> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.826426, 35.292110, 16.665123>,  <31.838173, 35.529045, 16.701519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.826426, 35.292110, 16.665123>,  <31.806847, 34.897221, 16.604464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.826426, 35.292110, 16.665123> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635525, -0.147912, 0.757780,
		0.770528, 0.059285, -0.634644,
		0.048946, 0.987222, 0.151648,
		31.841110, 35.588276, 16.710617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.468128, 35.041595, 16.802761>,  <31.806847, 34.897221, 16.604464>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.468128, 35.041595, 16.802761> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.267738, 35.366943, 16.921053>,  <32.147507, 35.562153, 16.992029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.267738, 35.366943, 16.921053>,  <32.468128, 35.041595, 16.802761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.267738, 35.366943, 16.921053> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534162, 0.021734, 0.845102,
		0.680953, 0.581342, -0.445359,
		-0.500973, 0.813369, 0.295731,
		32.117447, 35.610954, 17.009771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.945881, 35.567719, 17.146986>,  <32.468128, 35.041595, 16.802761>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.945881, 35.567719, 17.146986> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.579544, 35.673759, 17.267620>,  <32.359741, 35.737385, 17.340000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.579544, 35.673759, 17.267620>,  <32.945881, 35.567719, 17.146986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.579544, 35.673759, 17.267620> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337912, 0.103128, 0.935510,
		0.216900, 0.958691, -0.184029,
		-0.915844, 0.265098, 0.301585,
		32.304790, 35.753288, 17.358095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.167431, 36.061310, 17.601980>,  <32.945881, 35.567719, 17.146986>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.167431, 36.061310, 17.601980> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.783985, 35.966576, 17.665190>,  <32.553917, 35.909737, 17.703115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.783985, 35.966576, 17.665190>,  <33.167431, 36.061310, 17.601980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.783985, 35.966576, 17.665190> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139264, 0.094060, 0.985778,
		-0.248326, 0.966987, -0.057185,
		-0.958613, -0.236831, 0.158024,
		32.496403, 35.895527, 17.712597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.886395, 36.653061, 17.981775>,  <33.167431, 36.061310, 17.601980>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.886395, 36.653061, 17.981775> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.659607, 36.326416, 18.025030>,  <32.523533, 36.130428, 18.050983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.659607, 36.326416, 18.025030>,  <32.886395, 36.653061, 17.981775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.659607, 36.326416, 18.025030> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057349, 0.091828, 0.994122,
		-0.821741, 0.569837, -0.005232,
		-0.566968, -0.816611, 0.108139,
		32.489517, 36.081432, 18.057472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.327003, 32.237831, 14.420527> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.943377, 32.235989, 14.533782>,  <29.713200, 32.234882, 14.601735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.943377, 32.235989, 14.533782>,  <30.327003, 32.237831, 14.420527>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.943377, 32.235989, 14.533782> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282150, 0.069481, 0.956851,
		-0.024083, 0.997573, -0.065337,
		-0.959068, -0.004609, 0.283139,
		29.655657, 32.234608, 14.618724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.231638, 32.774303, 14.930866>,  <30.327003, 32.237831, 14.420527>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.231638, 32.774303, 14.930866> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.949060, 32.497696, 14.991195>,  <29.779514, 32.331734, 15.027391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.949060, 32.497696, 14.991195>,  <30.231638, 32.774303, 14.930866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.949060, 32.497696, 14.991195> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207248, 0.001645, 0.978287,
		-0.676748, 0.722360, 0.142153,
		-0.706442, -0.691515, 0.150821,
		29.737127, 32.290241, 15.036441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.820936, 33.077248, 15.377351>,  <30.231638, 32.774303, 14.930866>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.820936, 33.077248, 15.377351> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.753353, 32.684647, 15.413369>,  <29.712803, 32.449085, 15.434980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.753353, 32.684647, 15.413369>,  <29.820936, 33.077248, 15.377351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.753353, 32.684647, 15.413369> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234988, 0.048610, 0.970782,
		-0.957201, 0.185180, 0.222429,
		-0.168957, -0.981502, 0.090045,
		29.702665, 32.390198, 15.440383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.736908, 33.040512, 16.091284>,  <29.820936, 33.077248, 15.377351>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.736908, 33.040512, 16.091284> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.768833, 32.660831, 15.969535>,  <29.787989, 32.433022, 15.896485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.768833, 32.660831, 15.969535>,  <29.736908, 33.040512, 16.091284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.768833, 32.660831, 15.969535> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456116, -0.236731, 0.857856,
		-0.886334, -0.207297, 0.414053,
		0.079812, -0.949203, -0.304374,
		29.792776, 32.376072, 15.878222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.399332, 32.586246, 16.548239>,  <29.736908, 33.040512, 16.091284>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.399332, 32.586246, 16.548239> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.701437, 32.395504, 16.368378>,  <29.882700, 32.281059, 16.260462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.701437, 32.395504, 16.368378>,  <29.399332, 32.586246, 16.548239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.701437, 32.395504, 16.368378> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491828, -0.041127, 0.869721,
		-0.433226, -0.878018, 0.203470,
		0.755262, -0.476858, -0.449651,
		29.928015, 32.252445, 16.233482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.633993, 32.049999, 17.044189>,  <29.399332, 32.586246, 16.548239>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.633993, 32.049999, 17.044189> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.932222, 32.063301, 16.777952>,  <30.111160, 32.071281, 16.618210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.932222, 32.063301, 16.777952>,  <29.633993, 32.049999, 17.044189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.932222, 32.063301, 16.777952> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664871, -0.105249, 0.739506,
		-0.045462, -0.993890, -0.100581,
		0.745573, 0.033254, -0.665594,
		30.155893, 32.073277, 16.578274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.018227, 31.470242, 17.202591>,  <29.633993, 32.049999, 17.044189>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.018227, 31.470242, 17.202591> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.250858, 31.723440, 16.998205>,  <30.390436, 31.875359, 16.875574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.250858, 31.723440, 16.998205>,  <30.018227, 31.470242, 17.202591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.250858, 31.723440, 16.998205> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686788, -0.045417, 0.725437,
		0.435993, -0.772821, -0.461147,
		0.581578, 0.632996, -0.510963,
		30.425331, 31.913340, 16.844915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.656057, 31.113638, 17.297745>,  <30.018227, 31.470242, 17.202591>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.656057, 31.113638, 17.297745> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.782173, 31.472910, 17.175198>,  <30.857843, 31.688473, 17.101669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.782173, 31.472910, 17.175198>,  <30.656057, 31.113638, 17.297745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.782173, 31.472910, 17.175198> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677279, 0.013169, 0.735608,
		0.664743, -0.439429, -0.604167,
		0.315291, 0.898181, -0.306370,
		30.876760, 31.742365, 17.083286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.339222, 31.033669, 17.133642>,  <30.656057, 31.113638, 17.297745>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.339222, 31.033669, 17.133642> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.302071, 31.422970, 17.217690>,  <31.279779, 31.656551, 17.268118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.302071, 31.422970, 17.217690>,  <31.339222, 31.033669, 17.133642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.302071, 31.422970, 17.217690> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623877, -0.107580, 0.774083,
		0.775984, 0.202983, -0.597199,
		-0.092879, 0.973255, 0.210117,
		31.274206, 31.714947, 17.280725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.031536, 31.312304, 17.339273>,  <31.339222, 31.033669, 17.133642>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.031536, 31.312304, 17.339273> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.790581, 31.599409, 17.478951>,  <31.646008, 31.771673, 17.562757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.790581, 31.599409, 17.478951>,  <32.031536, 31.312304, 17.339273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.790581, 31.599409, 17.478951> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513816, 0.013911, 0.857787,
		0.610833, 0.696145, -0.377180,
		-0.602391, 0.717766, 0.349194,
		31.609863, 31.814739, 17.583708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.474392, 31.741440, 17.345984>,  <32.031536, 31.312304, 17.339273>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.474392, 31.741440, 17.345984> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.191715, 31.847111, 17.608522>,  <32.022110, 31.910513, 17.766047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.191715, 31.847111, 17.608522>,  <32.474392, 31.741440, 17.345984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.191715, 31.847111, 17.608522> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650871, -0.120973, 0.749488,
		0.277399, 0.956857, -0.086455,
		-0.706694, 0.264178, 0.656348,
		31.979708, 31.926365, 17.805428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.770836, 32.338398, 17.799118>,  <32.474392, 31.741440, 17.345984>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.770836, 32.338398, 17.799118> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.458649, 32.196190, 18.004826>,  <32.271336, 32.110863, 18.128250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.458649, 32.196190, 18.004826>,  <32.770836, 32.338398, 17.799118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.458649, 32.196190, 18.004826> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580835, -0.108006, 0.806824,
		-0.231300, 0.928406, 0.290795,
		-0.780468, -0.355523, 0.514269,
		32.224506, 32.089535, 18.159107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.814808, 33.167675, 17.912134>,  <32.770836, 32.338398, 17.799118>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.814808, 33.167675, 17.912134> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.123032, 33.343723, 17.727726>,  <33.307964, 33.449352, 17.617081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.123032, 33.343723, 17.727726>,  <32.814808, 33.167675, 17.912134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.123032, 33.343723, 17.727726> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601371, 0.262369, -0.754663,
		-0.211182, 0.858754, 0.466844,
		0.770555, 0.440118, -0.461022,
		33.354198, 33.475758, 17.589418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.563179, 33.763046, 17.682806>,  <32.814808, 33.167675, 17.912134>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.563179, 33.763046, 17.682806> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.885170, 33.669147, 17.464849>,  <33.078365, 33.612808, 17.334076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.885170, 33.669147, 17.464849>,  <32.563179, 33.763046, 17.682806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.885170, 33.669147, 17.464849> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527386, 0.137627, -0.838405,
		0.271805, 0.962264, -0.013015,
		0.804976, -0.234747, -0.544892,
		33.126663, 33.598724, 17.301382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.379009, 34.071449, 17.096092>,  <32.563179, 33.763046, 17.682806>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.379009, 34.071449, 17.096092> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.688179, 33.853859, 16.965445>,  <32.873680, 33.723305, 16.887056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.688179, 33.853859, 16.965445>,  <32.379009, 34.071449, 17.096092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.688179, 33.853859, 16.965445> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341048, 0.077899, -0.936812,
		0.535048, 0.835476, -0.125313,
		0.772923, -0.543978, -0.326617,
		32.920055, 33.690666, 16.867460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.700764, 34.410339, 16.559879>,  <32.379009, 34.071449, 17.096092>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.700764, 34.410339, 16.559879> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.807690, 34.032486, 16.483759>,  <32.871845, 33.805775, 16.438087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.807690, 34.032486, 16.483759>,  <32.700764, 34.410339, 16.559879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.807690, 34.032486, 16.483759> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272440, 0.115338, -0.955235,
		0.924293, 0.307196, -0.226524,
		0.267317, -0.944631, -0.190299,
		32.887886, 33.749096, 16.426670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.117165, 34.451153, 16.067247>,  <32.700764, 34.410339, 16.559879>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.117165, 34.451153, 16.067247> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.966396, 34.081730, 16.039057>,  <32.875935, 33.860077, 16.022142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.966396, 34.081730, 16.039057>,  <33.117165, 34.451153, 16.067247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.966396, 34.081730, 16.039057> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234433, 0.168734, -0.957377,
		0.896088, -0.344330, -0.280112,
		-0.376917, -0.923561, -0.070478,
		32.853321, 33.804661, 16.017914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.432896, 34.082325, 15.416877>,  <33.117165, 34.451153, 16.067247>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.432896, 34.082325, 15.416877> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.100761, 33.881020, 15.512605>,  <32.901482, 33.760235, 15.570042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.100761, 33.881020, 15.512605>,  <33.432896, 34.082325, 15.416877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.100761, 33.881020, 15.512605> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254598, -0.039422, -0.966243,
		0.495710, -0.863233, -0.095397,
		-0.830332, -0.503264, 0.239319,
		32.851662, 33.730042, 15.584400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.318417, 33.624653, 14.874464>,  <33.432896, 34.082325, 15.416877>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.318417, 33.624653, 14.874464> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.954800, 33.574673, 15.033473>,  <32.736629, 33.544685, 15.128879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.954800, 33.574673, 15.033473>,  <33.318417, 33.624653, 14.874464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.954800, 33.574673, 15.033473> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393062, -0.059605, -0.917578,
		0.138350, -0.990370, 0.005069,
		-0.909044, -0.124954, 0.397524,
		32.682087, 33.537186, 15.152730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.991730, 32.979336, 14.508855>,  <33.318417, 33.624653, 14.874464>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.991730, 32.979336, 14.508855> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.693581, 33.197117, 14.662737>,  <32.514690, 33.327785, 14.755066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.693581, 33.197117, 14.662737>,  <32.991730, 32.979336, 14.508855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.693581, 33.197117, 14.662737> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473091, -0.025420, -0.880647,
		-0.469688, -0.838409, 0.276521,
		-0.745371, 0.544449, 0.384704,
		32.469971, 33.360451, 14.778148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.345005, 32.644867, 14.332903>,  <32.991730, 32.979336, 14.508855>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.345005, 32.644867, 14.332903> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.276611, 33.032227, 14.405540>,  <32.235577, 33.264641, 14.449121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.276611, 33.032227, 14.405540>,  <32.345005, 32.644867, 14.332903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.276611, 33.032227, 14.405540> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312605, 0.121464, -0.942085,
		-0.934367, -0.217849, 0.281957,
		-0.170985, 0.968395, 0.181593,
		32.225315, 33.322746, 14.460017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.859005, 32.652512, 13.950749>,  <32.345005, 32.644867, 14.332903>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.859005, 32.652512, 13.950749> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.962044, 33.034958, 14.006576>,  <32.023869, 33.264427, 14.040071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.962044, 33.034958, 14.006576>,  <31.859005, 32.652512, 13.950749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.962044, 33.034958, 14.006576> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326447, 0.222064, -0.918760,
		-0.909437, 0.191110, 0.369326,
		0.257599, 0.956119, 0.139566,
		32.039322, 33.321793, 14.048446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.302656, 32.937248, 13.632812>,  <31.859005, 32.652512, 13.950749>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.302656, 32.937248, 13.632812> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.581472, 33.223724, 13.646723>,  <31.748762, 33.395611, 13.655069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.581472, 33.223724, 13.646723>,  <31.302656, 32.937248, 13.632812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.581472, 33.223724, 13.646723> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221398, 0.261104, -0.939579,
		-0.681995, 0.647225, 0.340563,
		0.697041, 0.716188, 0.034777,
		31.790585, 33.438580, 13.657156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.023956, 33.491302, 13.418474>,  <31.302656, 32.937248, 13.632812>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.023956, 33.491302, 13.418474> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.417282, 33.530781, 13.357347>,  <31.653278, 33.554466, 13.320672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.417282, 33.530781, 13.357347>,  <31.023956, 33.491302, 13.418474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.417282, 33.530781, 13.357347> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178461, 0.360432, -0.915555,
		-0.035279, 0.927550, 0.372031,
		0.983314, 0.098693, -0.152816,
		31.712276, 33.560390, 13.311502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.091074, 34.173611, 13.129848>,  <31.023956, 33.491302, 13.418474>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.091074, 34.173611, 13.129848> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.428991, 33.984699, 13.029225>,  <31.631742, 33.871353, 12.968852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.428991, 33.984699, 13.029225>,  <31.091074, 34.173611, 13.129848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.428991, 33.984699, 13.029225> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111033, 0.305167, -0.945804,
		0.523447, 0.826939, 0.205364,
		0.844793, -0.472276, -0.251556,
		31.682428, 33.843018, 12.953758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.483419, 34.694786, 12.786929>,  <31.091074, 34.173611, 13.129848>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.483419, 34.694786, 12.786929> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.594770, 34.330402, 12.665170>,  <31.661581, 34.111771, 12.592113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.594770, 34.330402, 12.665170>,  <31.483419, 34.694786, 12.786929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.594770, 34.330402, 12.665170> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242070, 0.240153, -0.940068,
		0.929467, 0.335379, -0.153663,
		0.278376, -0.910960, -0.304399,
		31.678284, 34.057114, 12.573850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.502794, 35.479977, 13.129759>,  <31.483419, 34.694786, 12.786929>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.502794, 35.479977, 13.129759> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.197302, 35.737022, 13.154278>,  <31.014006, 35.891251, 13.168989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.197302, 35.737022, 13.154278>,  <31.502794, 35.479977, 13.129759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.197302, 35.737022, 13.154278> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300688, 0.270111, 0.914673,
		0.571228, 0.716996, -0.399519,
		-0.763731, 0.642617, 0.061297,
		30.968182, 35.929806, 13.172667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.810240, 36.016163, 13.581153>,  <31.502794, 35.479977, 13.129759>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.810240, 36.016163, 13.581153> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.410980, 36.037613, 13.592595>,  <31.171425, 36.050484, 13.599461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.410980, 36.037613, 13.592595>,  <31.810240, 36.016163, 13.581153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.410980, 36.037613, 13.592595> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037423, 0.171398, 0.984491,
		0.047893, 0.983741, -0.173088,
		-0.998151, 0.053627, 0.028606,
		31.111534, 36.053699, 13.601177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.805868, 36.486572, 14.045166>,  <31.810240, 36.016163, 13.581153>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.805868, 36.486572, 14.045166> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.433809, 36.339939, 14.053518>,  <31.210573, 36.251957, 14.058530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.433809, 36.339939, 14.053518>,  <31.805868, 36.486572, 14.045166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.433809, 36.339939, 14.053518> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044841, -0.056966, 0.997369,
		-0.364433, 0.928638, 0.069425,
		-0.930149, -0.366587, 0.020881,
		31.154764, 36.229961, 14.059782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.334066, 36.935524, 14.480380>,  <31.805868, 36.486572, 14.045166>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.334066, 36.935524, 14.480380> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.203959, 36.557755, 14.461326>,  <31.125893, 36.331093, 14.449893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.203959, 36.557755, 14.461326>,  <31.334066, 36.935524, 14.480380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.203959, 36.557755, 14.461326> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030292, -0.060757, 0.997693,
		-0.945135, 0.323078, 0.048371,
		-0.325271, -0.944420, -0.047637,
		31.106377, 36.274429, 14.447035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.862652, 36.943626, 14.988994>,  <31.334066, 36.935524, 14.480380>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.862652, 36.943626, 14.988994> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.979393, 36.567451, 14.919250>,  <31.049438, 36.341747, 14.877404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.979393, 36.567451, 14.919250>,  <30.862652, 36.943626, 14.988994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.979393, 36.567451, 14.919250> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139381, -0.138530, 0.980501,
		-0.946252, -0.310466, 0.090648,
		0.291855, -0.940436, -0.174358,
		31.066950, 36.285320, 14.866943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.572762, 36.550014, 15.517837>,  <30.862652, 36.943626, 14.988994>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.572762, 36.550014, 15.517837> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.853689, 36.286671, 15.409529>,  <31.022245, 36.128666, 15.344544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.853689, 36.286671, 15.409529>,  <30.572762, 36.550014, 15.517837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.853689, 36.286671, 15.409529> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205986, -0.176146, 0.962571,
		-0.681411, -0.731804, 0.011902,
		0.702317, -0.658358, -0.270769,
		31.064384, 36.089165, 15.328298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.379259, 35.979332, 15.962881>,  <30.572762, 36.550014, 15.517837>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.379259, 35.979332, 15.962881> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.760267, 35.957203, 15.843118>,  <30.988873, 35.943924, 15.771260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.760267, 35.957203, 15.843118>,  <30.379259, 35.979332, 15.962881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.760267, 35.957203, 15.843118> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293300, -0.097267, 0.951060,
		-0.081725, -0.993720, -0.076426,
		0.952521, -0.055309, -0.299407,
		31.046022, 35.940605, 15.753295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.807192, 35.630680, 16.280304>,  <30.379259, 35.979332, 15.962881>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.807192, 35.630680, 16.280304> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.463558, 35.732292, 16.458042>,  <29.257378, 35.793259, 16.564686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.463558, 35.732292, 16.458042>,  <29.807192, 35.630680, 16.280304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.463558, 35.732292, 16.458042> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458196, 0.005199, -0.888836,
		-0.228101, -0.967182, 0.111929,
		-0.859084, 0.254030, 0.444346,
		29.205833, 35.808502, 16.591347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.443499, 35.135815, 16.009878>,  <29.807192, 35.630680, 16.280304>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.443499, 35.135815, 16.009878> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.227530, 35.453075, 16.122580>,  <29.097948, 35.643433, 16.190201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.227530, 35.453075, 16.122580>,  <29.443499, 35.135815, 16.009878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.227530, 35.453075, 16.122580> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262382, 0.159463, -0.951697,
		-0.799774, -0.587771, 0.122012,
		-0.539923, 0.793156, 0.281755,
		29.065552, 35.691021, 16.207106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.819748, 35.049419, 15.742396>,  <29.443499, 35.135815, 16.009878>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.819748, 35.049419, 15.742396> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.832981, 35.445602, 15.795902>,  <28.840921, 35.683311, 15.828006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.832981, 35.445602, 15.795902>,  <28.819748, 35.049419, 15.742396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.832981, 35.445602, 15.795902> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346872, 0.136896, -0.927868,
		-0.937329, -0.015702, 0.348092,
		0.033083, 0.990461, 0.133764,
		28.842905, 35.742741, 15.836031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.180033, 35.227348, 15.451413>,  <28.819748, 35.049419, 15.742396>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.180033, 35.227348, 15.451413> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.414150, 35.551647, 15.446993>,  <28.554621, 35.746227, 15.444341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.414150, 35.551647, 15.446993>,  <28.180033, 35.227348, 15.451413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.414150, 35.551647, 15.446993> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306267, 0.208440, -0.928845,
		-0.750753, 0.547033, 0.370303,
		0.585295, 0.810745, -0.011051,
		28.589739, 35.794872, 15.443678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.737043, 35.736599, 15.226050>,  <28.180033, 35.227348, 15.451413>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.737043, 35.736599, 15.226050> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.101608, 35.892857, 15.174329>,  <28.320347, 35.986610, 15.143295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.101608, 35.892857, 15.174329>,  <27.737043, 35.736599, 15.226050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.101608, 35.892857, 15.174329> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291675, 0.391656, -0.872658,
		-0.290257, 0.833068, 0.470902,
		0.911415, 0.390645, -0.129305,
		28.375032, 36.010052, 15.135537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.614990, 36.425407, 15.107414>,  <27.737043, 35.736599, 15.226050>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.614990, 36.425407, 15.107414> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.970592, 36.314037, 14.962008>,  <28.183954, 36.247215, 14.874763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.970592, 36.314037, 14.962008>,  <27.614990, 36.425407, 15.107414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.970592, 36.314037, 14.962008> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210044, 0.457468, -0.864063,
		0.406875, 0.844513, 0.348210,
		0.889007, -0.278426, -0.363517,
		28.237295, 36.230511, 14.852952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.948780, 36.998306, 14.848356>,  <27.614990, 36.425407, 15.107414>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.948780, 36.998306, 14.848356> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.115278, 36.695354, 14.647112>,  <28.215178, 36.513584, 14.526365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.115278, 36.695354, 14.647112>,  <27.948780, 36.998306, 14.848356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.115278, 36.695354, 14.647112> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108666, 0.507922, -0.854521,
		0.902735, 0.410362, 0.129120,
		0.416246, -0.757376, -0.503112,
		28.240152, 36.468143, 14.496179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.268103, 37.344215, 14.354198>,  <27.948780, 36.998306, 14.848356>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.268103, 37.344215, 14.354198> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.270145, 36.969990, 14.212948>,  <28.271370, 36.745457, 14.128198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.270145, 36.969990, 14.212948>,  <28.268103, 37.344215, 14.354198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.270145, 36.969990, 14.212948> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413760, 0.319508, -0.852477,
		0.910372, 0.150462, -0.385467,
		0.005106, -0.935562, -0.353126,
		28.271677, 36.689320, 14.107010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.623652, 37.414032, 13.696184>,  <28.268103, 37.344215, 14.354198>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.623652, 37.414032, 13.696184> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.411238, 37.075600, 13.714754>,  <28.283789, 36.872540, 13.725896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.411238, 37.075600, 13.714754>,  <28.623652, 37.414032, 13.696184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.411238, 37.075600, 13.714754> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541113, 0.296446, -0.786966,
		0.652072, -0.443028, -0.615247,
		-0.531036, -0.846077, 0.046424,
		28.251926, 36.821777, 13.728682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.324810, 35.408180, 28.365278> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.095905, 35.688320, 28.194620>,  <33.958565, 35.856403, 28.092226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.095905, 35.688320, 28.194620>,  <34.324810, 35.408180, 28.365278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.095905, 35.688320, 28.194620> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340540, 0.270334, 0.900529,
		0.746025, 0.660625, 0.083797,
		-0.572258, 0.700353, -0.426645,
		33.924229, 35.898426, 28.066628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.541725, 35.670139, 28.302025>,  <34.324810, 35.408180, 28.365278>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.541725, 35.670139, 28.302025> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.193554, 35.742363, 28.485224>,  <32.984653, 35.785698, 28.595144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.193554, 35.742363, 28.485224>,  <33.541725, 35.670139, 28.302025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.193554, 35.742363, 28.485224> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480358, -0.107791, -0.870423,
		-0.107791, -0.977640, 0.180555,
		0.870423, -0.180555, -0.457999,
		32.932426, 35.796528, 28.622623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.164268, 35.141647, 28.081991>,  <33.541725, 35.670139, 28.302025>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.164268, 35.141647, 28.081991> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.895477, 35.413410, 28.199873>,  <32.734203, 35.576469, 28.270603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.895477, 35.413410, 28.199873>,  <33.164268, 35.141647, 28.081991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.895477, 35.413410, 28.199873> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494163, -0.114964, -0.861734,
		-0.551589, -0.724698, 0.412992,
		-0.671976, 0.679409, 0.294706,
		32.693886, 35.617233, 28.288284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.586517, 34.827290, 27.844732>,  <33.164268, 35.141647, 28.081991>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.586517, 34.827290, 27.844732> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.548996, 35.221375, 27.902077>,  <32.526482, 35.457825, 27.936483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.548996, 35.221375, 27.902077>,  <32.586517, 34.827290, 27.844732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.548996, 35.221375, 27.902077> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404124, 0.093918, -0.909870,
		-0.909881, -0.143288, 0.389339,
		-0.093807, 0.985215, 0.143361,
		32.520855, 35.516937, 27.945086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.966118, 35.037033, 27.594328>,  <32.586517, 34.827290, 27.844732>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.966118, 35.037033, 27.594328> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.171978, 35.379967, 27.598642>,  <32.295494, 35.585728, 27.601231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.171978, 35.379967, 27.598642>,  <31.966118, 35.037033, 27.594328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.171978, 35.379967, 27.598642> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314883, 0.200695, -0.927669,
		-0.797486, 0.474028, 0.373247,
		0.514650, 0.857332, 0.010788,
		32.326374, 35.637165, 27.601879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.532072, 35.539116, 27.153067>,  <31.966118, 35.037033, 27.594328>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.532072, 35.539116, 27.153067> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.855005, 35.775051, 27.160061>,  <32.048767, 35.916611, 27.164257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.855005, 35.775051, 27.160061>,  <31.532072, 35.539116, 27.153067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.855005, 35.775051, 27.160061> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296395, 0.430955, -0.852308,
		-0.510256, 0.682915, 0.522748,
		0.807334, 0.589835, 0.017485,
		32.097206, 35.952003, 27.165306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.282755, 36.207371, 27.044882>,  <31.532072, 35.539116, 27.153067>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.282755, 36.207371, 27.044882> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.672672, 36.217636, 26.956228>,  <31.906622, 36.223797, 26.903036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.672672, 36.217636, 26.956228>,  <31.282755, 36.207371, 27.044882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.672672, 36.217636, 26.956228> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218168, 0.317626, -0.922776,
		0.046715, 0.947869, 0.315219,
		0.974792, 0.025664, -0.221632,
		31.965111, 36.225334, 26.889738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.315260, 36.681484, 26.600620>,  <31.282755, 36.207371, 27.044882>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.315260, 36.681484, 26.600620> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.689085, 36.549526, 26.547314>,  <31.913380, 36.470352, 26.515329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.689085, 36.549526, 26.547314>,  <31.315260, 36.681484, 26.600620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.689085, 36.549526, 26.547314> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045465, 0.260762, -0.964332,
		0.352877, 0.907289, 0.228700,
		0.934564, -0.329893, -0.133267,
		31.969454, 36.450558, 26.507334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.699665, 37.153900, 26.255108>,  <31.315260, 36.681484, 26.600620>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.699665, 37.153900, 26.255108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.852571, 36.793945, 26.171135>,  <31.944315, 36.577972, 26.120750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.852571, 36.793945, 26.171135>,  <31.699665, 37.153900, 26.255108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.852571, 36.793945, 26.171135> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226406, 0.129050, -0.965446,
		0.895887, 0.416586, -0.154410,
		0.382265, -0.899890, -0.209932,
		31.967251, 36.523979, 26.108156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.126141, 37.250469, 25.674900>,  <31.699665, 37.153900, 26.255108>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.126141, 37.250469, 25.674900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.050320, 36.858215, 25.694590>,  <32.004826, 36.622864, 25.706404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.050320, 36.858215, 25.694590>,  <32.126141, 37.250469, 25.674900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.050320, 36.858215, 25.694590> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118817, -0.026853, -0.992553,
		0.974654, -0.193993, -0.111426,
		-0.189556, -0.980635, 0.049223,
		31.993452, 36.564026, 25.709356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.442898, 36.944839, 25.182798>,  <32.126141, 37.250469, 25.674900>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.442898, 36.944839, 25.182798> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.164646, 36.671528, 25.271553>,  <31.997696, 36.507542, 25.324806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.164646, 36.671528, 25.271553>,  <32.442898, 36.944839, 25.182798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.164646, 36.671528, 25.271553> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096526, -0.217164, -0.971351,
		0.711892, -0.697113, 0.085111,
		-0.695624, -0.683281, 0.221887,
		31.955959, 36.466545, 25.338120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.576565, 36.499630, 24.745687>,  <32.442898, 36.944839, 25.182798>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.576565, 36.499630, 24.745687> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.201508, 36.389984, 24.831182>,  <31.976473, 36.324196, 24.882481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.201508, 36.389984, 24.831182>,  <32.576565, 36.499630, 24.745687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.201508, 36.389984, 24.831182> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163792, -0.193929, -0.967245,
		0.306586, -0.941941, 0.136939,
		-0.937645, -0.274114, 0.213739,
		31.920214, 36.307751, 24.895304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.003727, 35.994965, 24.425449>,  <32.576565, 36.499630, 24.745687>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.003727, 35.994965, 24.425449> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.305855, 36.145298, 24.210695>,  <33.487133, 36.235497, 24.081842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.305855, 36.145298, 24.210695>,  <33.003727, 35.994965, 24.425449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.305855, 36.145298, 24.210695> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535656, 0.117954, 0.836158,
		0.377581, -0.919151, -0.112223,
		0.755318, 0.375830, -0.536886,
		33.532452, 36.258045, 24.049629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.642735, 35.571648, 24.556643>,  <33.003727, 35.994965, 24.425449>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.642735, 35.571648, 24.556643> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.771206, 35.928967, 24.430870>,  <33.848289, 36.143356, 24.355408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.771206, 35.928967, 24.430870>,  <33.642735, 35.571648, 24.556643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.771206, 35.928967, 24.430870> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702439, -0.002032, 0.711742,
		0.635157, -0.449462, -0.628139,
		0.321178, 0.893297, -0.314429,
		33.867558, 36.196957, 24.336542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.296558, 35.558956, 24.565189>,  <33.642735, 35.571648, 24.556643>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.296558, 35.558956, 24.565189> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.258263, 35.957066, 24.571812>,  <34.235287, 36.195930, 24.575785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.258263, 35.957066, 24.571812>,  <34.296558, 35.558956, 24.565189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.258263, 35.957066, 24.571812> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616880, 0.046270, 0.785696,
		0.781213, 0.085432, -0.618391,
		-0.095736, 0.995269, 0.016555,
		34.229542, 36.255646, 24.576778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.933430, 35.812653, 24.795290>,  <34.296558, 35.558956, 24.565189>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.933430, 35.812653, 24.795290> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.709618, 36.139374, 24.851505>,  <34.575329, 36.335407, 24.885235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.709618, 36.139374, 24.851505>,  <34.933430, 35.812653, 24.795290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.709618, 36.139374, 24.851505> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489002, 0.188440, 0.851685,
		0.669177, 0.545271, -0.504858,
		-0.559534, 0.816805, 0.140539,
		34.541756, 36.384415, 24.893667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.447704, 36.311424, 25.000818>,  <34.933430, 35.812653, 24.795290>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.447704, 36.311424, 25.000818> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.089523, 36.440224, 25.123764>,  <34.874615, 36.517506, 25.197531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.089523, 36.440224, 25.123764>,  <35.447704, 36.311424, 25.000818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.089523, 36.440224, 25.123764> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389763, 0.233596, 0.890796,
		0.215040, 0.917468, -0.334680,
		-0.895457, 0.322003, 0.307362,
		34.820885, 36.536823, 25.215973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.525990, 36.982815, 25.327995>,  <35.447704, 36.311424, 25.000818>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.525990, 36.982815, 25.327995> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.186844, 36.854706, 25.497017>,  <34.983356, 36.777840, 25.598431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.186844, 36.854706, 25.497017>,  <35.525990, 36.982815, 25.327995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.186844, 36.854706, 25.497017> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349547, 0.261606, 0.899655,
		-0.398677, 0.910488, -0.109856,
		-0.847864, -0.320272, 0.422554,
		34.932484, 36.758625, 25.623783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.176453, 37.553230, 25.787149>,  <35.525990, 36.982815, 25.327995>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.176453, 37.553230, 25.787149> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.063404, 37.202625, 25.943020>,  <34.995575, 36.992260, 26.036541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.063404, 37.202625, 25.943020>,  <35.176453, 37.553230, 25.787149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.063404, 37.202625, 25.943020> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398328, 0.262313, 0.878935,
		-0.872616, 0.403626, 0.275004,
		-0.282624, -0.876515, 0.389674,
		34.978619, 36.939671, 26.059921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.418194, 37.571819, 26.462864>,  <35.176453, 37.553230, 25.787149>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.418194, 37.571819, 26.462864> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.253319, 37.208630, 26.493017>,  <35.154396, 36.990715, 26.511108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.253319, 37.208630, 26.493017>,  <35.418194, 37.571819, 26.462864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.253319, 37.208630, 26.493017> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116932, 0.029336, 0.992707,
		-0.903566, 0.417993, 0.094079,
		-0.412185, -0.907976, 0.075383,
		35.129662, 36.936237, 26.515633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.894516, 37.619164, 26.972635>,  <35.418194, 37.571819, 26.462864>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.894516, 37.619164, 26.972635> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.038906, 37.248497, 26.930702>,  <35.125542, 37.026096, 26.905542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.038906, 37.248497, 26.930702>,  <34.894516, 37.619164, 26.972635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.038906, 37.248497, 26.930702> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363856, 0.036442, 0.930742,
		-0.858665, -0.374120, 0.350327,
		0.360975, -0.926664, -0.104834,
		35.147198, 36.970497, 26.899252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.704605, 37.290710, 27.575031>,  <34.894516, 37.619164, 26.972635>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.704605, 37.290710, 27.575031> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.002983, 37.066013, 27.431913>,  <35.182011, 36.931194, 27.346043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.002983, 37.066013, 27.431913>,  <34.704605, 37.290710, 27.575031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.002983, 37.066013, 27.431913> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328408, -0.157135, 0.931373,
		-0.579413, -0.812253, 0.067267,
		0.745941, -0.561741, -0.357797,
		35.226765, 36.897491, 27.324574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.681633, 36.738659, 28.057762>,  <34.704605, 37.290710, 27.575031>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.681633, 36.738659, 28.057762> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.033661, 36.753170, 27.868380>,  <35.244877, 36.761879, 27.754751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.033661, 36.753170, 27.868380>,  <34.681633, 36.738659, 28.057762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.033661, 36.753170, 27.868380> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471122, -0.191279, 0.861079,
		-0.059320, -0.980865, -0.185432,
		0.880071, 0.036282, -0.473454,
		35.297684, 36.764053, 27.726343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.036587, 36.108723, 28.248079>,  <34.681633, 36.738659, 28.057762>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.036587, 36.108723, 28.248079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.331524, 36.351574, 28.129604>,  <35.508484, 36.497284, 28.058519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.331524, 36.351574, 28.129604>,  <35.036587, 36.108723, 28.248079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.331524, 36.351574, 28.129604> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546544, -0.278472, 0.789774,
		0.397011, -0.744213, -0.537149,
		0.737341, 0.607125, -0.296188,
		35.552727, 36.533710, 28.040749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.574459, 35.777920, 28.483727>,  <35.036587, 36.108723, 28.248079>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.574459, 35.777920, 28.483727> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.702042, 36.150841, 28.415516>,  <35.778591, 36.374592, 28.374590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.702042, 36.150841, 28.415516>,  <35.574459, 35.777920, 28.483727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.702042, 36.150841, 28.415516> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594303, -0.056579, 0.802249,
		0.738291, -0.357225, -0.572116,
		0.318953, 0.932303, -0.170528,
		35.797726, 36.430531, 28.364357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.331345, 35.807018, 28.366385>,  <35.574459, 35.777920, 28.483727>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.331345, 35.807018, 28.366385> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.196175, 36.150349, 28.520826>,  <36.115070, 36.356346, 28.613491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.196175, 36.150349, 28.520826>,  <36.331345, 35.807018, 28.366385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.196175, 36.150349, 28.520826> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639386, -0.091672, 0.763401,
		0.690644, 0.504845, -0.517825,
		-0.337929, 0.858328, 0.386104,
		36.094795, 36.407848, 28.636658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.691101, 35.205177, 28.246954>,  <36.331345, 35.807018, 28.366385>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.691101, 35.205177, 28.246954> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.924168, 34.908279, 28.114548>,  <37.064007, 34.730141, 28.035105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.924168, 34.908279, 28.114548>,  <36.691101, 35.205177, 28.246954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.924168, 34.908279, 28.114548> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363099, 0.126638, -0.923105,
		0.727092, 0.658050, -0.195722,
		0.582663, -0.742249, -0.331014,
		37.098969, 34.685604, 28.015244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.081779, 35.406319, 27.627296>,  <36.691101, 35.205177, 28.246954>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.081779, 35.406319, 27.627296> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.048195, 35.007748, 27.623631>,  <37.028046, 34.768604, 27.621431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.048195, 35.007748, 27.623631>,  <37.081779, 35.406319, 27.627296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.048195, 35.007748, 27.623631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242059, 0.029316, -0.969819,
		0.966622, -0.079207, -0.243655,
		-0.083960, -0.996427, -0.009165,
		37.023006, 34.708820, 27.620882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.495560, 35.160686, 27.134577>,  <37.081779, 35.406319, 27.627296>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.495560, 35.160686, 27.134577> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.231319, 34.861084, 27.154964>,  <37.072777, 34.681324, 27.167196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.231319, 34.861084, 27.154964>,  <37.495560, 35.160686, 27.134577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.231319, 34.861084, 27.154964> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169148, 0.082349, -0.982145,
		0.731433, -0.657428, -0.181092,
		-0.660601, -0.749005, 0.050970,
		37.033138, 34.636383, 27.170256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.724537, 34.608219, 26.551105>,  <37.495560, 35.160686, 27.134577>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.724537, 34.608219, 26.551105> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.331841, 34.573647, 26.618889>,  <37.096222, 34.552902, 26.659559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.331841, 34.573647, 26.618889>,  <37.724537, 34.608219, 26.551105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.331841, 34.573647, 26.618889> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172395, 0.027684, -0.984639,
		0.080418, -0.995872, -0.042080,
		-0.981740, -0.086437, 0.169457,
		37.037319, 34.547718, 26.669725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576145, 34.208622, 26.066507>,  <37.724537, 34.608219, 26.551105>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.576145, 34.208622, 26.066507> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.228928, 34.350330, 26.205641>,  <37.020596, 34.435356, 26.289122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.228928, 34.350330, 26.205641>,  <37.576145, 34.208622, 26.066507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.228928, 34.350330, 26.205641> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360513, 0.031926, -0.932208,
		-0.341358, -0.934598, 0.100006,
		-0.868047, 0.354269, 0.347833,
		36.968513, 34.456612, 26.309990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.017967, 33.741024, 25.862169>,  <37.576145, 34.208622, 26.066507>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.017967, 33.741024, 25.862169> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.896229, 34.116356, 25.927795>,  <36.823185, 34.341553, 25.967171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.896229, 34.116356, 25.927795>,  <37.017967, 33.741024, 25.862169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.896229, 34.116356, 25.927795> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107945, 0.137151, -0.984651,
		-0.946426, -0.317385, 0.059546,
		-0.304346, 0.938326, 0.164063,
		36.804924, 34.397854, 25.977015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.438774, 33.776752, 25.519464>,  <37.017967, 33.741024, 25.862169>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.438774, 33.776752, 25.519464> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.475830, 34.172894, 25.560675>,  <36.498062, 34.410580, 25.585402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.475830, 34.172894, 25.560675>,  <36.438774, 33.776752, 25.519464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.475830, 34.172894, 25.560675> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266069, 0.124332, -0.955902,
		-0.959492, 0.061143, 0.275021,
		0.092641, 0.990355, 0.103027,
		36.503624, 34.470001, 25.591583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.852108, 34.026653, 25.220772>,  <36.438774, 33.776752, 25.519464>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.852108, 34.026653, 25.220772> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.094364, 34.344055, 25.244593>,  <36.239716, 34.534496, 25.258884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.094364, 34.344055, 25.244593>,  <35.852108, 34.026653, 25.220772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.094364, 34.344055, 25.244593> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221555, 0.240033, -0.945144,
		-0.764275, 0.559221, 0.321179,
		0.605638, 0.793509, 0.059553,
		36.276054, 34.582108, 25.262459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471611, 34.562607, 24.897665>,  <35.852108, 34.026653, 25.220772>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.471611, 34.562607, 24.897665> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.847565, 34.699207, 24.896931>,  <36.073135, 34.781166, 24.896490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.847565, 34.699207, 24.896931>,  <35.471611, 34.562607, 24.897665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.847565, 34.699207, 24.896931> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116903, 0.316684, -0.941300,
		-0.320871, 0.884924, 0.337567,
		0.939880, 0.341499, -0.001835,
		36.129528, 34.801659, 24.896379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.426151, 35.201340, 24.596134>,  <35.471611, 34.562607, 24.897665>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.426151, 35.201340, 24.596134> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.801495, 35.070236, 24.552204>,  <36.026699, 34.991573, 24.525846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.801495, 35.070236, 24.552204>,  <35.426151, 35.201340, 24.596134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.801495, 35.070236, 24.552204> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037252, 0.219987, -0.974791,
		0.343657, 0.918793, 0.194216,
		0.938356, -0.327759, -0.109827,
		36.083000, 34.971909, 24.519257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.779888, 35.650372, 24.136982>,  <35.426151, 35.201340, 24.596134>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.779888, 35.650372, 24.136982> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.018559, 35.330383, 24.111605>,  <36.161758, 35.138390, 24.096378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.018559, 35.330383, 24.111605>,  <35.779888, 35.650372, 24.136982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.018559, 35.330383, 24.111605> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117394, -0.008807, -0.993046,
		0.793851, 0.599972, -0.099167,
		0.596673, -0.799973, -0.063442,
		36.197559, 35.090393, 24.092571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.106789, 35.759995, 23.540026>,  <35.779888, 35.650372, 24.136982>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.106789, 35.759995, 23.540026> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.164528, 35.372513, 23.620792>,  <36.199173, 35.140022, 23.669252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.164528, 35.372513, 23.620792>,  <36.106789, 35.759995, 23.540026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.164528, 35.372513, 23.620792> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048338, -0.210715, -0.976352,
		0.988346, 0.131175, -0.077242,
		0.144349, -0.968707, 0.201919,
		36.207832, 35.081902, 23.681368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.637188, 35.527802, 23.058117>,  <36.106789, 35.759995, 23.540026>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.637188, 35.527802, 23.058117> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.437275, 35.211411, 23.199299>,  <36.317329, 35.021576, 23.284008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.437275, 35.211411, 23.199299>,  <36.637188, 35.527802, 23.058117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.437275, 35.211411, 23.199299> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130556, -0.334046, -0.933471,
		0.856257, -0.512609, 0.063683,
		-0.499779, -0.790977, 0.352953,
		36.287342, 34.974117, 23.305185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.914581, 34.920391, 22.655079>,  <36.637188, 35.527802, 23.058117>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.914581, 34.920391, 22.655079> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.560783, 34.803169, 22.800285>,  <36.348503, 34.732838, 22.887409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.560783, 34.803169, 22.800285>,  <36.914581, 34.920391, 22.655079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.560783, 34.803169, 22.800285> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170399, -0.521418, -0.836114,
		0.434310, -0.801400, 0.411258,
		-0.884499, -0.293055, 0.363015,
		36.295433, 34.715252, 22.909189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.733780, 34.385052, 22.229540>,  <36.914581, 34.920391, 22.655079>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.733780, 34.385052, 22.229540> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.386051, 34.411972, 22.425398>,  <36.177414, 34.428123, 22.542912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.386051, 34.411972, 22.425398>,  <36.733780, 34.385052, 22.229540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.386051, 34.411972, 22.425398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405744, -0.662883, -0.629252,
		0.282228, -0.745693, 0.603564,
		-0.869321, 0.067300, 0.489644,
		36.125256, 34.432163, 22.572290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.484470, 33.584011, 22.333744>,  <36.733780, 34.385052, 22.229540>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.484470, 33.584011, 22.333744> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.196499, 33.861591, 22.329189>,  <36.023716, 34.028141, 22.326456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.196499, 33.861591, 22.329189>,  <36.484470, 33.584011, 22.333744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.196499, 33.861591, 22.329189> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437755, -0.466748, -0.768451,
		-0.538586, -0.548244, 0.639807,
		-0.719927, 0.693956, -0.011387,
		35.980522, 34.069778, 22.325773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.883282, 33.235317, 22.120287>,  <36.484470, 33.584011, 22.333744>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.883282, 33.235317, 22.120287> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.746754, 33.608982, 22.078625>,  <35.664837, 33.833179, 22.053627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.746754, 33.608982, 22.078625>,  <35.883282, 33.235317, 22.120287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.746754, 33.608982, 22.078625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439097, -0.256440, -0.861065,
		-0.831082, -0.248160, 0.497714,
		-0.341316, 0.934160, -0.104156,
		35.644360, 33.889229, 22.047379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.069241, 33.218102, 22.112453>,  <35.883282, 33.235317, 22.120287>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.069241, 33.218102, 22.112453> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.188862, 33.546295, 21.917574>,  <35.260635, 33.743214, 21.800646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.188862, 33.546295, 21.917574>,  <35.069241, 33.218102, 22.112453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.188862, 33.546295, 21.917574> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493541, -0.303978, -0.814871,
		-0.816691, 0.484144, 0.314038,
		0.299055, 0.820489, -0.487201,
		35.278580, 33.792442, 21.771414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.422573, 33.458710, 21.693298>,  <35.069241, 33.218102, 22.112453>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.422573, 33.458710, 21.693298> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.722939, 33.659554, 21.521708>,  <34.903156, 33.780060, 21.418753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.722939, 33.659554, 21.521708>,  <34.422573, 33.458710, 21.693298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.722939, 33.659554, 21.521708> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489651, -0.012562, -0.871828,
		-0.443139, 0.864714, 0.236424,
		0.750912, 0.502107, -0.428975,
		34.948212, 33.810184, 21.393015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.124481, 33.966770, 21.200794>,  <34.422573, 33.458710, 21.693298>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.124481, 33.966770, 21.200794> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.502586, 33.934647, 21.074284>,  <34.729450, 33.915375, 20.998377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.502586, 33.934647, 21.074284>,  <34.124481, 33.966770, 21.200794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.502586, 33.934647, 21.074284> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312621, 0.054964, -0.948286,
		0.093538, 0.995254, 0.026850,
		0.945261, -0.080307, -0.316278,
		34.786163, 33.910553, 20.979401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.247395, 34.450451, 20.605188>,  <34.124481, 33.966770, 21.200794>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.247395, 34.450451, 20.605188> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.517555, 34.161648, 20.545145>,  <34.679653, 33.988365, 20.509119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.517555, 34.161648, 20.545145>,  <34.247395, 34.450451, 20.605188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.517555, 34.161648, 20.545145> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213040, 0.003841, -0.977036,
		0.706003, 0.691875, -0.151222,
		0.675406, -0.722007, -0.150109,
		34.720177, 33.945045, 20.500113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.598045, 34.729412, 20.089968>,  <34.247395, 34.450451, 20.605188>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.598045, 34.729412, 20.089968> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.676888, 34.338470, 20.059158>,  <34.724194, 34.103905, 20.040672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.676888, 34.338470, 20.059158>,  <34.598045, 34.729412, 20.089968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.676888, 34.338470, 20.059158> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189150, 0.039179, -0.981166,
		0.961963, 0.207959, -0.177144,
		0.197102, -0.977352, -0.077024,
		34.736019, 34.045265, 20.036051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.964638, 34.611774, 19.427917>,  <34.598045, 34.729412, 20.089968>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.964638, 34.611774, 19.427917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.840401, 34.245369, 19.529470>,  <34.765858, 34.025528, 19.590403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.840401, 34.245369, 19.529470>,  <34.964638, 34.611774, 19.427917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.840401, 34.245369, 19.529470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051886, -0.250358, -0.966762,
		0.949125, -0.313444, 0.030232,
		-0.310595, -0.916009, 0.253884,
		34.747223, 33.970566, 19.605637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.312340, 34.094376, 18.858742>,  <34.964638, 34.611774, 19.427917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.312340, 34.094376, 18.858742> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.000137, 33.916988, 19.034990>,  <34.812817, 33.810555, 19.140739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.000137, 33.916988, 19.034990>,  <35.312340, 34.094376, 18.858742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.000137, 33.916988, 19.034990> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405626, -0.177068, -0.896724,
		0.475689, -0.878626, -0.041680,
		-0.780504, -0.443468, 0.440623,
		34.765987, 33.783947, 19.167177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.318745, 33.399937, 18.469294>,  <35.312340, 34.094376, 18.858742>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.318745, 33.399937, 18.469294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.968544, 33.488270, 18.641211>,  <34.758423, 33.541271, 18.744362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.968544, 33.488270, 18.641211>,  <35.318745, 33.399937, 18.469294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.968544, 33.488270, 18.641211> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481356, -0.320801, -0.815710,
		-0.042256, -0.921043, 0.387162,
		-0.875506, 0.220832, 0.429794,
		34.705891, 33.554520, 18.770149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.893040, 32.792080, 18.417686>,  <35.318745, 33.399937, 18.469294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.893040, 32.792080, 18.417686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.642914, 33.100670, 18.464674>,  <34.492836, 33.285824, 18.492867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.642914, 33.100670, 18.464674>,  <34.893040, 32.792080, 18.417686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.642914, 33.100670, 18.464674> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512391, -0.292370, -0.807450,
		-0.588585, -0.565103, 0.578123,
		-0.625318, 0.771478, 0.117469,
		34.455318, 33.332111, 18.499914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.157948, 32.546406, 18.330608>,  <34.893040, 32.792080, 18.417686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.157948, 32.546406, 18.330608> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.133373, 32.943657, 18.290771>,  <34.118629, 33.182007, 18.266869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.133373, 32.943657, 18.290771>,  <34.157948, 32.546406, 18.330608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.133373, 32.943657, 18.290771> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618458, -0.116194, -0.777180,
		-0.783413, 0.013851, 0.621347,
		-0.061432, 0.993130, -0.099594,
		34.114944, 33.241596, 18.260893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.503498, 32.655270, 18.127581>,  <34.157948, 32.546406, 18.330608>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.503498, 32.655270, 18.127581> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.629471, 33.019554, 18.020685>,  <33.705055, 33.238125, 17.956547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.629471, 33.019554, 18.020685>,  <33.503498, 32.655270, 18.127581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.629471, 33.019554, 18.020685> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670821, 0.014395, -0.741480,
		-0.671429, 0.412786, 0.615459,
		0.314932, 0.910714, -0.267240,
		33.723949, 33.292767, 17.940514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.798447, 32.763935, 18.486551>,  <33.503498, 32.655270, 18.127581>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.798447, 32.763935, 18.486551> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.570339, 32.439350, 18.537645>,  <32.433475, 32.244598, 18.568302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.570339, 32.439350, 18.537645>,  <32.798447, 32.763935, 18.486551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.570339, 32.439350, 18.537645> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407354, -0.144319, 0.901795,
		-0.713342, 0.566299, 0.412855,
		-0.570268, -0.811467, 0.127736,
		32.399258, 32.195911, 18.575966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.518513, 32.814434, 19.193769>,  <32.798447, 32.763935, 18.486551>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.518513, 32.814434, 19.193769> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.482765, 32.423328, 19.117887>,  <32.461319, 32.188663, 19.072357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.482765, 32.423328, 19.117887>,  <32.518513, 32.814434, 19.193769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.482765, 32.423328, 19.117887> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363593, -0.209349, 0.907730,
		-0.927262, 0.012143, 0.374217,
		-0.089365, -0.977766, -0.189706,
		32.455956, 32.129997, 19.060976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.013683, 32.490688, 19.638712>,  <32.518513, 32.814434, 19.193769>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.013683, 32.490688, 19.638712> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.290333, 32.223816, 19.528051>,  <32.456322, 32.063694, 19.461655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.290333, 32.223816, 19.528051>,  <32.013683, 32.490688, 19.638712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.290333, 32.223816, 19.528051> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272869, -0.113283, 0.955358,
		-0.668733, -0.736235, 0.103703,
		0.691621, -0.667177, -0.276652,
		32.497818, 32.023663, 19.445055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.922338, 31.877684, 20.094671>,  <32.013683, 32.490688, 19.638712>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.922338, 31.877684, 20.094671> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.297535, 31.818472, 19.969286>,  <32.522652, 31.782946, 19.894054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.297535, 31.818472, 19.969286>,  <31.922338, 31.877684, 20.094671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.297535, 31.818472, 19.969286> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256457, -0.312082, 0.914787,
		-0.233240, -0.938452, -0.254767,
		0.937992, -0.148028, -0.313463,
		32.578934, 31.774063, 19.875246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.117790, 31.256052, 20.441435>,  <31.922338, 31.877684, 20.094671>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.117790, 31.256052, 20.441435> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.478138, 31.342804, 20.291025>,  <32.694347, 31.394855, 20.200779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.478138, 31.342804, 20.291025>,  <32.117790, 31.256052, 20.441435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.478138, 31.342804, 20.291025> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418956, -0.207689, 0.883935,
		0.113612, -0.953849, -0.277965,
		0.900871, 0.216881, -0.376025,
		32.748398, 31.407867, 20.178217>
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
