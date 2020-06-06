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
	<24.382753, 35.064438, 34.938541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.332895, 34.730129, 35.152439>,  <24.302980, 34.529545, 35.280777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.332895, 34.730129, 35.152439>,  <24.382753, 35.064438, 34.938541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.332895, 34.730129, 35.152439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991547, -0.085355, 0.097722,
		-0.036030, 0.542402, 0.839346,
		-0.124647, -0.835772, 0.534741,
		24.295502, 34.479397, 35.312862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.927223, 34.942371, 35.384285>,  <24.382753, 35.064438, 34.938541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.927223, 34.942371, 35.384285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.811907, 34.559376, 35.388432>,  <24.742718, 34.329578, 35.390919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.811907, 34.559376, 35.388432>,  <24.927223, 34.942371, 35.384285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.811907, 34.559376, 35.388432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954446, -0.288210, -0.077250,
		0.076954, -0.012374, 0.996958,
		-0.288289, -0.957487, 0.010368,
		24.725420, 34.272129, 35.391541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.256117, 34.534180, 35.911804>,  <24.927223, 34.942371, 35.384285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.256117, 34.534180, 35.911804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.199434, 34.313469, 35.583057>,  <25.165424, 34.181042, 35.385811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.199434, 34.313469, 35.583057>,  <25.256117, 34.534180, 35.911804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.199434, 34.313469, 35.583057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974329, -0.224465, -0.017293,
		-0.174938, -0.803215, 0.569423,
		-0.141706, -0.551780, -0.821863,
		25.156923, 34.147934, 35.336498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.493805, 33.785244, 36.086250>,  <25.256117, 34.534180, 35.911804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.493805, 33.785244, 36.086250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.522730, 33.981728, 35.739037>,  <25.540085, 34.099617, 35.530708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.522730, 33.981728, 35.739037>,  <25.493805, 33.785244, 36.086250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.522730, 33.981728, 35.739037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994392, 0.031837, 0.100856,
		0.077178, -0.870458, -0.486155,
		0.072313, 0.491212, -0.868033,
		25.544424, 34.129089, 35.478626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.067326, 33.606846, 35.863880>,  <25.493805, 33.785244, 36.086250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.067326, 33.606846, 35.863880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.068327, 33.927971, 35.625389>,  <26.068928, 34.120647, 35.482296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.068327, 33.927971, 35.625389>,  <26.067326, 33.606846, 35.863880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.068327, 33.927971, 35.625389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952001, 0.180583, 0.247150,
		0.306083, -0.568229, -0.763825,
		0.002504, 0.802812, -0.596228,
		26.069078, 34.168816, 35.446522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.567614, 33.746674, 35.289829>,  <26.067326, 33.606846, 35.863880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.567614, 33.746674, 35.289829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.458931, 34.112331, 35.410175>,  <26.393721, 34.331726, 35.482384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.458931, 34.112331, 35.410175>,  <26.567614, 33.746674, 35.289829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.458931, 34.112331, 35.410175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938223, 0.182003, 0.294300,
		0.214274, 0.362242, -0.907120,
		-0.271707, 0.914142, 0.300866,
		26.377419, 34.386574, 35.500435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.040461, 33.394745, 34.917557>,  <26.567614, 33.746674, 35.289829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.040461, 33.394745, 34.917557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.339201, 33.412945, 34.652184>,  <27.518446, 33.423862, 34.492958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.339201, 33.412945, 34.652184>,  <27.040461, 33.394745, 34.917557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.339201, 33.412945, 34.652184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468086, -0.672670, -0.573072,
		-0.472343, 0.738543, -0.481089,
		0.746852, 0.045495, -0.663432,
		27.563257, 33.426594, 34.453156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.746691, 33.624474, 34.288937>,  <27.040461, 33.394745, 34.917557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.746691, 33.624474, 34.288937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.060446, 33.380749, 34.242504>,  <27.248699, 33.234512, 34.214645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.060446, 33.380749, 34.242504>,  <26.746691, 33.624474, 34.288937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.060446, 33.380749, 34.242504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575000, -0.644102, -0.504488,
		0.232622, 0.462461, -0.855580,
		0.784387, -0.609313, -0.116082,
		27.295761, 33.197956, 34.207680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.735197, 33.449310, 33.637383>,  <26.746691, 33.624474, 34.288937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.735197, 33.449310, 33.637383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.943455, 33.167553, 33.830360>,  <27.068409, 32.998497, 33.946148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.943455, 33.167553, 33.830360>,  <26.735197, 33.449310, 33.637383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.943455, 33.167553, 33.830360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537847, -0.709455, -0.455405,
		0.663061, -0.022380, -0.748231,
		0.520644, -0.704395, 0.482449,
		27.099648, 32.956234, 33.975094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.919783, 32.972023, 33.086815>,  <26.735197, 33.449310, 33.637383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.919783, 32.972023, 33.086815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.949772, 32.754597, 33.421219>,  <26.967766, 32.624142, 33.621861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.949772, 32.754597, 33.421219>,  <26.919783, 32.972023, 33.086815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.949772, 32.754597, 33.421219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575918, -0.708016, -0.408695,
		0.814062, -0.450833, -0.366132,
		0.074974, -0.543566, 0.836011,
		26.972263, 32.591526, 33.672024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.089136, 32.269920, 32.919189>,  <26.919783, 32.972023, 33.086815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.089136, 32.269920, 32.919189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.922184, 32.235584, 33.281055>,  <26.822012, 32.214985, 33.498177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.922184, 32.235584, 33.281055>,  <27.089136, 32.269920, 32.919189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.922184, 32.235584, 33.281055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650051, -0.667451, -0.363239,
		0.635002, -0.739690, 0.222782,
		-0.417380, -0.085838, 0.904669,
		26.796970, 32.209831, 33.552456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.942793, 31.579647, 32.994930>,  <27.089136, 32.269920, 32.919189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.942793, 31.579647, 32.994930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.689724, 31.774996, 33.235336>,  <26.537882, 31.892204, 33.379581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.689724, 31.774996, 33.235336>,  <26.942793, 31.579647, 32.994930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.689724, 31.774996, 33.235336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732763, -0.628624, -0.260558,
		0.250564, -0.605249, 0.755574,
		-0.632674, 0.488370, 0.601014,
		26.499922, 31.921507, 33.415642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.513916, 31.031391, 33.405312>,  <26.942793, 31.579647, 32.994930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.513916, 31.031391, 33.405312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.280079, 31.352224, 33.356464>,  <26.139776, 31.544725, 33.327156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.280079, 31.352224, 33.356464>,  <26.513916, 31.031391, 33.405312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.280079, 31.352224, 33.356464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738996, -0.588531, -0.327896,
		-0.334868, -0.101443, 0.936788,
		-0.584592, 0.802085, -0.122115,
		26.104702, 31.592850, 33.319828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.896353, 30.847174, 33.732800>,  <26.513916, 31.031391, 33.405312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.896353, 30.847174, 33.732800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.847839, 31.101135, 33.427593>,  <25.818731, 31.253511, 33.244469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.847839, 31.101135, 33.427593>,  <25.896353, 30.847174, 33.732800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.847839, 31.101135, 33.427593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801119, -0.516479, -0.302420,
		-0.586087, 0.574585, 0.571274,
		-0.121285, 0.634903, -0.763013,
		25.811455, 31.291607, 33.198689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.773476, 31.594250, 33.856606>,  <25.896353, 30.847174, 33.732800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.773476, 31.594250, 33.856606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.454401, 31.834005, 33.883224>,  <25.262957, 31.977859, 33.899197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.454401, 31.834005, 33.883224>,  <25.773476, 31.594250, 33.856606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.454401, 31.834005, 33.883224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038151, 0.059968, -0.997471,
		-0.601866, -0.798207, -0.024968,
		-0.797685, 0.599391, 0.066546,
		25.215096, 32.013824, 33.903187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.794304, 32.093929, 34.376778>,  <25.773476, 31.594250, 33.856606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.794304, 32.093929, 34.376778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.093147, 31.984180, 34.134605>,  <26.272453, 31.918331, 33.989300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.093147, 31.984180, 34.134605>,  <25.794304, 32.093929, 34.376778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.093147, 31.984180, 34.134605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639060, 0.547043, 0.540691,
		0.182846, -0.790862, 0.584042,
		0.747108, -0.274375, -0.605433,
		26.317280, 31.901869, 33.952976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.422926, 31.982889, 34.748409>,  <25.794304, 32.093929, 34.376778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.422926, 31.982889, 34.748409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.556772, 32.038731, 34.375626>,  <26.637079, 32.072235, 34.151955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.556772, 32.038731, 34.375626>,  <26.422926, 31.982889, 34.748409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.556772, 32.038731, 34.375626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797743, 0.484485, 0.359000,
		0.501637, -0.863589, 0.050748,
		0.334615, 0.139604, -0.931957,
		26.657158, 32.080612, 34.096039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.164236, 31.907061, 34.780930>,  <26.422926, 31.982889, 34.748409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.164236, 31.907061, 34.780930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.112566, 32.120495, 34.446602>,  <27.081564, 32.248554, 34.246006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.112566, 32.120495, 34.446602>,  <27.164236, 31.907061, 34.780930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.112566, 32.120495, 34.446602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709482, 0.638603, 0.298030,
		0.692783, -0.554504, -0.461061,
		-0.129176, 0.533584, -0.835824,
		27.073812, 32.280571, 34.195854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.856033, 32.068287, 34.539776>,  <27.164236, 31.907061, 34.780930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.856033, 32.068287, 34.539776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.624083, 32.342430, 34.363579>,  <27.484913, 32.506916, 34.257862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.624083, 32.342430, 34.363579>,  <27.856033, 32.068287, 34.539776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.624083, 32.342430, 34.363579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617825, 0.722370, 0.310603,
		0.531071, -0.092036, -0.842314,
		-0.579876, 0.685355, -0.440492,
		27.450119, 32.548035, 34.231430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.333847, 32.403786, 34.204132>,  <27.856033, 32.068287, 34.539776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.333847, 32.403786, 34.204132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.011841, 32.638660, 34.237984>,  <27.818638, 32.779587, 34.258297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.011841, 32.638660, 34.237984>,  <28.333847, 32.403786, 34.204132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.011841, 32.638660, 34.237984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576051, 0.739566, 0.348148,
		0.141838, 0.329016, -0.933612,
		-0.805014, 0.587188, 0.084631,
		27.770336, 32.814816, 34.263374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.397615, 33.047504, 33.859566>,  <28.333847, 32.403786, 34.204132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.397615, 33.047504, 33.859566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.160286, 33.098232, 34.177528>,  <28.017887, 33.128670, 34.368305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.160286, 33.098232, 34.177528>,  <28.397615, 33.047504, 33.859566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.160286, 33.098232, 34.177528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527221, 0.807448, 0.264698,
		-0.608278, 0.576146, -0.545943,
		-0.593325, 0.126823, 0.794910,
		27.982288, 33.136280, 34.416000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.090445, 33.619366, 33.696224>,  <28.397615, 33.047504, 33.859566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.090445, 33.619366, 33.696224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.224651, 33.537380, 34.064011>,  <28.305176, 33.488190, 34.284683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.224651, 33.537380, 34.064011>,  <28.090445, 33.619366, 33.696224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.224651, 33.537380, 34.064011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941353, 0.035827, -0.335517,
		0.035827, 0.978114, 0.204963,
		0.335517, -0.204963, 0.919466,
		28.325306, 33.475891, 34.339851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.711014, 34.034294, 33.831680>,  <28.090445, 33.619366, 33.696224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.711014, 34.034294, 33.831680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.754656, 33.700981, 34.048470>,  <28.780840, 33.500992, 34.178543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.754656, 33.700981, 34.048470>,  <28.711014, 34.034294, 33.831680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.754656, 33.700981, 34.048470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994027, 0.090094, -0.061587,
		0.002491, 0.545458, 0.838134,
		0.109104, -0.833282, 0.541976,
		28.787388, 33.450996, 34.211063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.989347, 34.135056, 34.460709>,  <28.711014, 34.034294, 33.831680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.989347, 34.135056, 34.460709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.096830, 33.758537, 34.378967>,  <29.161320, 33.532627, 34.329922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.096830, 33.758537, 34.378967>,  <28.989347, 34.135056, 34.460709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.096830, 33.758537, 34.378967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961265, 0.248545, 0.119139,
		-0.061354, -0.228453, 0.971620,
		0.268709, -0.941294, -0.204355,
		29.177443, 33.476151, 34.317661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.400967, 33.923347, 34.905842>,  <28.989347, 34.135056, 34.460709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.400967, 33.923347, 34.905842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.519543, 33.675236, 34.615360>,  <29.590689, 33.526367, 34.441071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.519543, 33.675236, 34.615360>,  <29.400967, 33.923347, 34.905842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.519543, 33.675236, 34.615360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946893, 0.290061, 0.138775,
		0.124565, -0.728779, 0.673323,
		0.296441, -0.620278, -0.726208,
		29.608475, 33.489151, 34.397499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.627075, 33.854549, 35.606182>,  <29.400967, 33.923347, 34.905842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.627075, 33.854549, 35.606182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.805780, 33.506557, 35.689640>,  <29.913004, 33.297760, 35.739716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.805780, 33.506557, 35.689640>,  <29.627075, 33.854549, 35.606182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.805780, 33.506557, 35.689640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076586, -0.269547, -0.959937,
		0.891367, 0.412887, -0.187052,
		0.446765, -0.869982, 0.208644,
		29.939810, 33.245564, 35.752232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.104376, 33.757004, 35.043449>,  <29.627075, 33.854549, 35.606182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.104376, 33.757004, 35.043449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.999926, 33.411423, 35.215683>,  <29.937256, 33.204075, 35.319023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.999926, 33.411423, 35.215683>,  <30.104376, 33.757004, 35.043449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.999926, 33.411423, 35.215683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140794, -0.407199, -0.902422,
		0.954983, -0.296267, -0.015310,
		-0.261124, -0.863953, 0.430581,
		29.921589, 33.152237, 35.344856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.429636, 33.206272, 34.744926>,  <30.104376, 33.757004, 35.043449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.429636, 33.206272, 34.744926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.101124, 33.048565, 34.909874>,  <29.904016, 32.953941, 35.008842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.101124, 33.048565, 34.909874>,  <30.429636, 33.206272, 34.744926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.101124, 33.048565, 34.909874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203506, -0.472793, -0.857352,
		0.532994, -0.788046, 0.308060,
		-0.821281, -0.394271, 0.412368,
		29.854740, 32.930283, 35.033585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.633194, 33.650108, 34.135544>,  <30.429636, 33.206272, 34.744926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.633194, 33.650108, 34.135544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.896507, 33.796104, 33.872196>,  <31.054495, 33.883701, 33.714188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.896507, 33.796104, 33.872196>,  <30.633194, 33.650108, 34.135544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.896507, 33.796104, 33.872196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699951, 0.618617, -0.356907,
		0.277010, 0.695770, 0.662699,
		0.658282, 0.364990, -0.658368,
		31.093992, 33.905602, 33.674686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.599545, 34.394226, 34.148010>,  <30.633194, 33.650108, 34.135544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.599545, 34.394226, 34.148010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.704794, 34.279491, 33.779556>,  <30.767944, 34.210651, 33.558483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.704794, 34.279491, 33.779556>,  <30.599545, 34.394226, 34.148010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.704794, 34.279491, 33.779556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801616, 0.466265, -0.374176,
		0.536821, 0.836852, -0.107245,
		0.263126, -0.286835, -0.921135,
		30.783731, 34.193439, 33.503216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.668182, 35.017982, 33.709347>,  <30.599545, 34.394226, 34.148010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.668182, 35.017982, 33.709347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.615261, 34.715286, 33.453274>,  <30.583508, 34.533669, 33.299629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.615261, 34.715286, 33.453274>,  <30.668182, 35.017982, 33.709347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.615261, 34.715286, 33.453274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705256, 0.525698, -0.475663,
		0.696498, 0.388560, -0.603250,
		-0.132304, -0.756744, -0.640182,
		30.575569, 34.488262, 33.261219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.629028, 35.285774, 32.989750>,  <30.668182, 35.017982, 33.709347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.629028, 35.285774, 32.989750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.441994, 34.933205, 33.016438>,  <30.329773, 34.721664, 33.032452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.441994, 34.933205, 33.016438>,  <30.629028, 35.285774, 32.989750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.441994, 34.933205, 33.016438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808488, 0.395936, -0.435410,
		0.357364, -0.257535, -0.897757,
		-0.467587, -0.881425, 0.066721,
		30.301718, 34.668777, 33.036453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.327654, 35.267033, 32.321289>,  <30.629028, 35.285774, 32.989750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.327654, 35.267033, 32.321289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.151857, 35.006271, 32.568470>,  <30.046379, 34.849815, 32.716778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.151857, 35.006271, 32.568470>,  <30.327654, 35.267033, 32.321289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.151857, 35.006271, 32.568470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898098, 0.306382, -0.315514,
		0.016354, -0.693651, -0.720125,
		-0.439490, -0.651904, 0.617957,
		30.020010, 34.810699, 32.753857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.815214, 34.904079, 31.929989>,  <30.327654, 35.267033, 32.321289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.815214, 34.904079, 31.929989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.708454, 34.888035, 32.315144>,  <29.644398, 34.878407, 32.546238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.708454, 34.888035, 32.315144>,  <29.815214, 34.904079, 31.929989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.708454, 34.888035, 32.315144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.953573, 0.155624, -0.257835,
		-0.139506, -0.987001, -0.079788,
		-0.266901, -0.040114, 0.962889,
		29.628384, 34.875999, 32.604012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.249569, 35.316830, 31.625025>,  <29.815214, 34.904079, 31.929989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.249569, 35.316830, 31.625025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.937517, 35.170181, 31.827801>,  <28.750286, 35.082191, 31.949467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.937517, 35.170181, 31.827801>,  <29.249569, 35.316830, 31.625025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.937517, 35.170181, 31.827801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599063, -0.204190, 0.774228,
		-0.180336, 0.907687, 0.378923,
		-0.780130, -0.366620, 0.506939,
		28.703478, 35.060196, 31.979883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.283323, 35.443672, 32.345364>,  <29.249569, 35.316830, 31.625025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.283323, 35.443672, 32.345364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.074995, 35.106716, 32.290051>,  <28.949999, 34.904541, 32.256863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.074995, 35.106716, 32.290051>,  <29.283323, 35.443672, 32.345364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.074995, 35.106716, 32.290051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624405, -0.486377, 0.611192,
		-0.582123, 0.231974, 0.779308,
		-0.520818, -0.842393, -0.138286,
		28.918749, 34.854000, 32.248566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.153370, 35.175247, 33.022430>,  <29.283323, 35.443672, 32.345364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.153370, 35.175247, 33.022430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.143553, 34.875977, 32.757214>,  <29.137663, 34.696415, 32.598083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.143553, 34.875977, 32.757214>,  <29.153370, 35.175247, 33.022430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.143553, 34.875977, 32.757214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523630, -0.574603, 0.629001,
		-0.851592, -0.331750, 0.405872,
		-0.024544, -0.748180, -0.663042,
		29.136190, 34.651524, 32.558300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.111044, 34.577030, 33.425625>,  <29.153370, 35.175247, 33.022430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.111044, 34.577030, 33.425625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.274990, 34.520134, 33.065231>,  <29.373358, 34.485996, 32.848995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.274990, 34.520134, 33.065231>,  <29.111044, 34.577030, 33.425625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.274990, 34.520134, 33.065231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708696, -0.572197, 0.412724,
		-0.574261, -0.807683, -0.133691,
		0.409847, -0.142265, -0.900992,
		29.397949, 34.477463, 32.794933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.384796, 33.797661, 33.307220>,  <29.111044, 34.577030, 33.425625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.384796, 33.797661, 33.307220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.609056, 34.073921, 33.124500>,  <29.743612, 34.239677, 33.014866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.609056, 34.073921, 33.124500>,  <29.384796, 33.797661, 33.307220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.609056, 34.073921, 33.124500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815794, -0.555268, 0.161732,
		-0.141949, -0.463334, -0.874741,
		0.560652, 0.690652, -0.456805,
		29.777252, 34.281116, 32.987457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.862461, 33.540443, 32.851612>,  <29.384796, 33.797661, 33.307220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.862461, 33.540443, 32.851612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.035845, 33.900898, 32.848404>,  <30.139875, 34.117172, 32.846481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.035845, 33.900898, 32.848404>,  <29.862461, 33.540443, 32.851612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.035845, 33.900898, 32.848404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896789, -0.430456, 0.102359,
		0.088789, -0.051558, -0.994715,
		0.433458, 0.901138, -0.008017,
		30.165882, 34.171238, 32.846001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.485392, 33.437233, 32.445316>,  <29.862461, 33.540443, 32.851612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.485392, 33.437233, 32.445316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.518105, 33.749374, 32.693302>,  <30.537733, 33.936661, 32.842094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.518105, 33.749374, 32.693302>,  <30.485392, 33.437233, 32.445316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.518105, 33.749374, 32.693302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793452, -0.427408, 0.433309,
		0.603114, 0.456478, -0.654127,
		0.081782, 0.780353, 0.619969,
		30.542639, 33.983479, 32.879292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.100142, 33.669743, 32.379780>,  <30.485392, 33.437233, 32.445316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.100142, 33.669743, 32.379780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.007252, 33.834160, 32.732395>,  <30.951519, 33.932812, 32.943966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.007252, 33.834160, 32.732395>,  <31.100142, 33.669743, 32.379780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.007252, 33.834160, 32.732395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830631, -0.387761, 0.399616,
		0.506088, 0.825036, -0.251380,
		-0.232222, 0.411045, 0.881541,
		30.937586, 33.957474, 32.996857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.616108, 34.217754, 32.562435>,  <31.100142, 33.669743, 32.379780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.616108, 34.217754, 32.562435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.440718, 34.057495, 32.884235>,  <31.335484, 33.961338, 33.077316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.440718, 34.057495, 32.884235>,  <31.616108, 34.217754, 32.562435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.440718, 34.057495, 32.884235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887775, -0.332494, 0.318281,
		0.139973, 0.853773, 0.501477,
		-0.438478, -0.400648, 0.804499,
		31.309174, 33.937302, 33.125584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.937313, 34.491333, 33.265320>,  <31.616108, 34.217754, 32.562435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.937313, 34.491333, 33.265320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.778486, 34.125294, 33.293411>,  <31.683189, 33.905670, 33.310265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.778486, 34.125294, 33.293411>,  <31.937313, 34.491333, 33.265320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.778486, 34.125294, 33.293411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902163, -0.375102, 0.213076,
		-0.168643, 0.147962, 0.974508,
		-0.397067, -0.915099, 0.070228,
		31.659367, 33.850765, 33.314480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.055714, 34.214371, 34.035339>,  <31.937313, 34.491333, 33.265320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.055714, 34.214371, 34.035339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.039986, 33.973618, 33.716293>,  <32.030548, 33.829166, 33.524868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.039986, 33.973618, 33.716293>,  <32.055714, 34.214371, 34.035339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.039986, 33.973618, 33.716293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888340, -0.386531, 0.247884,
		-0.457500, -0.698803, 0.549879,
		-0.039323, -0.601887, -0.797613,
		32.028191, 33.793053, 33.477009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.135094, 34.561409, 34.694008>,  <32.055714, 34.214371, 34.035339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.135094, 34.561409, 34.694008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.755451, 34.616070, 34.807514>,  <31.527666, 34.648865, 34.875618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.755451, 34.616070, 34.807514>,  <32.135094, 34.561409, 34.694008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.755451, 34.616070, 34.807514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151408, -0.592079, 0.791529,
		0.276178, 0.794209, 0.541255,
		-0.949106, 0.136652, 0.283768,
		31.470720, 34.657066, 34.892643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.319386, 35.368095, 34.572334>,  <32.135094, 34.561409, 34.694008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.319386, 35.368095, 34.572334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.582596, 35.625637, 34.728512>,  <32.740520, 35.780163, 34.822220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.582596, 35.625637, 34.728512>,  <32.319386, 35.368095, 34.572334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.582596, 35.625637, 34.728512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443708, -0.750489, 0.489785,
		0.608378, -0.149047, -0.779526,
		0.658027, 0.643857, 0.390447,
		32.780003, 35.818794, 34.845646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.975998, 35.040123, 34.624802>,  <32.319386, 35.368095, 34.572334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.975998, 35.040123, 34.624802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.019924, 35.346771, 34.877857>,  <33.046280, 35.530762, 35.029690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.019924, 35.346771, 34.877857>,  <32.975998, 35.040123, 34.624802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.019924, 35.346771, 34.877857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471674, -0.600449, 0.645744,
		0.874908, 0.227484, -0.427536,
		0.109817, 0.766624, 0.632636,
		33.052868, 35.576759, 35.067650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.697113, 35.105259, 34.741192>,  <32.975998, 35.040123, 34.624802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.697113, 35.105259, 34.741192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.416149, 35.197639, 35.010498>,  <33.247570, 35.253067, 35.172081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.416149, 35.197639, 35.010498>,  <33.697113, 35.105259, 34.741192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.416149, 35.197639, 35.010498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406431, -0.646387, 0.645754,
		0.584323, 0.727219, 0.360165,
		-0.702411, 0.230947, 0.673263,
		33.205425, 35.266922, 35.212479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.091064, 35.229103, 35.341839>,  <33.697113, 35.105259, 34.741192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.091064, 35.229103, 35.341839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.742062, 35.104980, 35.492802>,  <33.532658, 35.030506, 35.583382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.742062, 35.104980, 35.492802>,  <34.091064, 35.229103, 35.341839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.742062, 35.104980, 35.492802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471668, -0.736487, 0.484888,
		0.127496, 0.601082, 0.788952,
		-0.872510, -0.310302, 0.377410,
		33.480309, 35.011890, 35.606026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.251106, 34.991253, 35.940857>,  <34.091064, 35.229103, 35.341839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.251106, 34.991253, 35.940857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.924141, 34.783066, 35.842102>,  <33.727962, 34.658154, 35.782848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.924141, 34.783066, 35.842102>,  <34.251106, 34.991253, 35.940857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.924141, 34.783066, 35.842102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435986, -0.839070, 0.325389,
		-0.376509, 0.158337, 0.912781,
		-0.817409, -0.520472, -0.246885,
		33.678917, 34.626923, 35.768036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.994095, 34.759979, 36.531017>,  <34.251106, 34.991253, 35.940857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.994095, 34.759979, 36.531017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.952358, 34.522896, 36.211567>,  <33.927315, 34.380646, 36.019897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.952358, 34.522896, 36.211567>,  <33.994095, 34.759979, 36.531017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.952358, 34.522896, 36.211567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601920, -0.676878, 0.423708,
		-0.791710, -0.436500, 0.427390,
		-0.104343, -0.592708, -0.798630,
		33.921055, 34.345085, 35.971977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.602112, 34.043388, 36.596767>,  <33.994095, 34.759979, 36.531017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.602112, 34.043388, 36.596767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.908745, 34.078773, 36.342358>,  <34.092724, 34.100006, 36.189713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.908745, 34.078773, 36.342358>,  <33.602112, 34.043388, 36.596767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.908745, 34.078773, 36.342358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486206, -0.726961, 0.484904,
		-0.419466, -0.680957, -0.600288,
		0.766585, 0.088463, -0.636021,
		34.138721, 34.105312, 36.151550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.684471, 33.399384, 36.549374>,  <33.602112, 34.043388, 36.596767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.684471, 33.399384, 36.549374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.014240, 33.621170, 36.503941>,  <34.212101, 33.754242, 36.476681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.014240, 33.621170, 36.503941>,  <33.684471, 33.399384, 36.549374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.014240, 33.621170, 36.503941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496415, -0.611999, 0.615654,
		0.271847, -0.563941, -0.779789,
		0.824422, 0.554463, -0.113579,
		34.261566, 33.787510, 36.469868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.312447, 32.921814, 36.436264>,  <33.684471, 33.399384, 36.549374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.312447, 32.921814, 36.436264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.456146, 33.271477, 36.566978>,  <34.542366, 33.481274, 36.645409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.456146, 33.271477, 36.566978>,  <34.312447, 32.921814, 36.436264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.456146, 33.271477, 36.566978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305890, -0.441121, 0.843709,
		0.881685, -0.203143, -0.425868,
		0.359252, 0.874154, 0.326791,
		34.563923, 33.533722, 36.665016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.952423, 32.822819, 36.764957>,  <34.312447, 32.921814, 36.436264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.952423, 32.822819, 36.764957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.849003, 33.173443, 36.927338>,  <34.786949, 33.383816, 37.024765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.849003, 33.173443, 36.927338>,  <34.952423, 32.822819, 36.764957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.849003, 33.173443, 36.927338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216948, -0.356811, 0.908636,
		0.941320, 0.323002, -0.097913,
		-0.258554, 0.876559, 0.405948,
		34.771435, 33.436409, 37.049122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.530132, 32.980209, 37.249794>,  <34.952423, 32.822819, 36.764957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.530132, 32.980209, 37.249794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.174149, 33.134445, 37.347202>,  <34.960560, 33.226986, 37.405647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.174149, 33.134445, 37.347202>,  <35.530132, 32.980209, 37.249794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.174149, 33.134445, 37.347202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040049, -0.465834, 0.883965,
		0.454286, 0.796442, 0.399129,
		-0.889955, 0.385588, 0.243519,
		34.907162, 33.250122, 37.420258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.577293, 33.164108, 38.036789>,  <35.530132, 32.980209, 37.249794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.577293, 33.164108, 38.036789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.211452, 33.112144, 37.883625>,  <34.991947, 33.080967, 37.791725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.211452, 33.112144, 37.883625>,  <35.577293, 33.164108, 38.036789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.211452, 33.112144, 37.883625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248914, -0.565389, 0.786369,
		-0.318654, 0.814529, 0.484770,
		-0.914605, -0.129914, -0.382911,
		34.937073, 33.073170, 37.768753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.122696, 33.183521, 38.592819>,  <35.577293, 33.164108, 38.036789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.122696, 33.183521, 38.592819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.959217, 32.958511, 38.305340>,  <34.861130, 32.823505, 38.132851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.959217, 32.958511, 38.305340>,  <35.122696, 33.183521, 38.592819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.959217, 32.958511, 38.305340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440670, -0.567970, 0.695141,
		-0.799234, 0.600814, -0.015758,
		-0.408700, -0.562524, -0.718701,
		34.836609, 32.789753, 38.089729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.777458, 32.644535, 38.928570>,  <35.122696, 33.183521, 38.592819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.777458, 32.644535, 38.928570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.415733, 32.814831, 38.941010>,  <34.198700, 32.917007, 38.948471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.415733, 32.814831, 38.941010>,  <34.777458, 32.644535, 38.928570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.415733, 32.814831, 38.941010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089463, 0.260251, -0.961387,
		-0.417390, -0.866613, -0.273436,
		-0.904313, 0.425736, 0.031096,
		34.144440, 32.942551, 38.950336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.332867, 32.321659, 38.463535>,  <34.777458, 32.644535, 38.928570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.332867, 32.321659, 38.463535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.231174, 32.702805, 38.529766>,  <34.170158, 32.931492, 38.569504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.231174, 32.702805, 38.529766>,  <34.332867, 32.321659, 38.463535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.231174, 32.702805, 38.529766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202483, 0.219852, -0.954288,
		-0.945710, -0.209084, -0.248832,
		-0.254233, 0.952864, 0.165581,
		34.154903, 32.988663, 38.579441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.121735, 32.473869, 37.840992>,  <34.332867, 32.321659, 38.463535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.121735, 32.473869, 37.840992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.190136, 32.830158, 38.009453>,  <34.231174, 33.043934, 38.110527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.190136, 32.830158, 38.009453>,  <34.121735, 32.473869, 37.840992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.190136, 32.830158, 38.009453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246595, 0.375149, -0.893563,
		-0.953913, 0.256653, -0.155498,
		0.171000, 0.890726, 0.421148,
		34.241436, 33.097378, 38.135796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.710094, 33.112400, 37.548832>,  <34.121735, 32.473869, 37.840992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.710094, 33.112400, 37.548832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.065887, 33.209896, 37.703445>,  <34.279362, 33.268394, 37.796215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.065887, 33.209896, 37.703445>,  <33.710094, 33.112400, 37.548832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.065887, 33.209896, 37.703445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266867, 0.409575, -0.872371,
		-0.370950, 0.879112, 0.299262,
		0.889482, 0.243743, 0.386538,
		34.332733, 33.283020, 37.819408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.818527, 33.904530, 37.713371>,  <33.710094, 33.112400, 37.548832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.818527, 33.904530, 37.713371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.154755, 33.703266, 37.633091>,  <34.356491, 33.582508, 37.584923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.154755, 33.703266, 37.633091>,  <33.818527, 33.904530, 37.713371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.154755, 33.703266, 37.633091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125674, 0.541513, -0.831246,
		0.526931, 0.673493, 0.518411,
		0.840565, -0.503160, -0.200700,
		34.406925, 33.552319, 37.572880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.322437, 34.481777, 37.601006>,  <33.818527, 33.904530, 37.713371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.322437, 34.481777, 37.601006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.435825, 34.141571, 37.423798>,  <34.503857, 33.937447, 37.317474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.435825, 34.141571, 37.423798>,  <34.322437, 34.481777, 37.601006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.435825, 34.141571, 37.423798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049018, 0.474212, -0.879045,
		0.957728, 0.227465, 0.176115,
		0.283468, -0.850519, -0.443016,
		34.520866, 33.886414, 37.290894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.963200, 34.651093, 37.186462>,  <34.322437, 34.481777, 37.601006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.963200, 34.651093, 37.186462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.819191, 34.316792, 37.020618>,  <34.732784, 34.116211, 36.921112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.819191, 34.316792, 37.020618>,  <34.963200, 34.651093, 37.186462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.819191, 34.316792, 37.020618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110433, 0.403106, -0.908466,
		0.926385, -0.372854, -0.052832,
		-0.360023, -0.835755, -0.414606,
		34.711185, 34.066067, 36.896236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.437435, 34.491749, 36.588844>,  <34.963200, 34.651093, 37.186462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.437435, 34.491749, 36.588844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.065052, 34.356884, 36.532784>,  <34.841621, 34.275963, 36.499146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.065052, 34.356884, 36.532784>,  <35.437435, 34.491749, 36.588844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.065052, 34.356884, 36.532784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040234, 0.476229, -0.878400,
		0.362913, -0.812111, -0.456913,
		-0.930954, -0.337166, -0.140155,
		34.785767, 34.255733, 36.490738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.376297, 33.849575, 36.089809>,  <35.437435, 34.491749, 36.588844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.376297, 33.849575, 36.089809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.081669, 34.119282, 36.111080>,  <34.904892, 34.281105, 36.123844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.081669, 34.119282, 36.111080>,  <35.376297, 33.849575, 36.089809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.081669, 34.119282, 36.111080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233146, 0.326921, -0.915842,
		-0.634909, -0.662181, -0.398003,
		-0.736569, 0.674269, 0.053180,
		34.860699, 34.321564, 36.127033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.903030, 33.884186, 35.463409>,  <35.376297, 33.849575, 36.089809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.903030, 33.884186, 35.463409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.954182, 34.242378, 35.633938>,  <34.984875, 34.457294, 35.736256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.954182, 34.242378, 35.633938>,  <34.903030, 33.884186, 35.463409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.954182, 34.242378, 35.633938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287265, 0.377984, -0.880118,
		-0.949276, 0.235018, -0.208904,
		0.127881, 0.895486, 0.426324,
		34.992546, 34.511024, 35.761833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.449211, 34.512596, 35.190117>,  <34.903030, 33.884186, 35.463409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.449211, 34.512596, 35.190117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.807709, 34.632862, 35.320560>,  <35.022808, 34.705021, 35.398827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.807709, 34.632862, 35.320560>,  <34.449211, 34.512596, 35.190117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.807709, 34.632862, 35.320560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198437, 0.385734, -0.901017,
		-0.396697, 0.872243, 0.286049,
		0.896245, 0.300668, 0.326105,
		35.076584, 34.723064, 35.418392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.599400, 35.088806, 34.800415>,  <34.449211, 34.512596, 35.190117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.599400, 35.088806, 34.800415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.955471, 35.010674, 34.965061>,  <35.169113, 34.963795, 35.063850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.955471, 35.010674, 34.965061>,  <34.599400, 35.088806, 34.800415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.955471, 35.010674, 34.965061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454562, 0.319435, -0.831465,
		0.030929, 0.927257, 0.373146,
		0.890178, -0.195335, 0.411616,
		35.222523, 34.952072, 35.088547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.083256, 35.811344, 34.741455>,  <34.599400, 35.088806, 34.800415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.083256, 35.811344, 34.741455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.330231, 35.500839, 34.792339>,  <35.478416, 35.314537, 34.822868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.330231, 35.500839, 34.792339>,  <35.083256, 35.811344, 34.741455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.330231, 35.500839, 34.792339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526595, 0.287765, -0.799930,
		0.584352, 0.560895, 0.586455,
		0.617439, -0.776265, 0.127209,
		35.515461, 35.267960, 34.830502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.666779, 36.100243, 34.533073>,  <35.083256, 35.811344, 34.741455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.666779, 36.100243, 34.533073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.760174, 35.711407, 34.542286>,  <35.816212, 35.478107, 34.547813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.760174, 35.711407, 34.542286>,  <35.666779, 36.100243, 34.533073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.760174, 35.711407, 34.542286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633471, 0.134101, -0.762058,
		0.737698, 0.192517, 0.647100,
		0.233486, -0.972088, 0.023028,
		35.830219, 35.419781, 34.549194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.491726, 36.028126, 34.609318>,  <35.666779, 36.100243, 34.533073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.491726, 36.028126, 34.609318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.294796, 35.726082, 34.436146>,  <36.176640, 35.544853, 34.332245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.294796, 35.726082, 34.436146>,  <36.491726, 36.028126, 34.609318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.294796, 35.726082, 34.436146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531633, 0.132958, -0.836474,
		0.689193, -0.641971, 0.335985,
		-0.492320, -0.755113, -0.432927,
		36.147099, 35.499550, 34.306267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.996040, 35.690567, 34.248535>,  <36.491726, 36.028126, 34.609318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.996040, 35.690567, 34.248535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.657803, 35.560070, 34.079525>,  <36.454861, 35.481770, 33.978119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.657803, 35.560070, 34.079525>,  <36.996040, 35.690567, 34.248535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.657803, 35.560070, 34.079525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394803, 0.150528, -0.906351,
		0.359297, -0.933222, 0.001518,
		-0.845598, -0.326248, -0.422523,
		36.404121, 35.462196, 33.952766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.199509, 35.251549, 33.777279>,  <36.996040, 35.690567, 34.248535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.199509, 35.251549, 33.777279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.836376, 35.367489, 33.656067>,  <36.618496, 35.437054, 33.583340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.836376, 35.367489, 33.656067>,  <37.199509, 35.251549, 33.777279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.836376, 35.367489, 33.656067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357007, 0.155160, -0.921125,
		-0.219973, -0.944410, -0.244338,
		-0.907832, 0.289853, -0.303030,
		36.564026, 35.454445, 33.565159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.128391, 34.868317, 33.260254>,  <37.199509, 35.251549, 33.777279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.128391, 34.868317, 33.260254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.888088, 35.185482, 33.219505>,  <36.743904, 35.375782, 33.195057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.888088, 35.185482, 33.219505>,  <37.128391, 34.868317, 33.260254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.888088, 35.185482, 33.219505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389366, 0.178920, -0.903538,
		-0.698197, -0.582479, -0.416220,
		-0.600762, 0.792910, -0.101876,
		36.707859, 35.423355, 33.188942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.986286, 34.787399, 32.531460>,  <37.128391, 34.868317, 33.260254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.986286, 34.787399, 32.531460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.841248, 35.142166, 32.645927>,  <36.754223, 35.355026, 32.714607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.841248, 35.142166, 32.645927>,  <36.986286, 34.787399, 32.531460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.841248, 35.142166, 32.645927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061308, 0.283701, -0.956951,
		-0.929926, -0.364535, -0.048495,
		-0.362600, 0.886920, 0.286170,
		36.732468, 35.408241, 32.731777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.428928, 35.035141, 32.015850>,  <36.986286, 34.787399, 32.531460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.428928, 35.035141, 32.015850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.603336, 35.343666, 32.201305>,  <36.707981, 35.528782, 32.312580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.603336, 35.343666, 32.201305>,  <36.428928, 35.035141, 32.015850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.603336, 35.343666, 32.201305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090600, 0.474952, -0.875335,
		-0.895365, 0.423669, 0.137207,
		0.436019, 0.771314, 0.463640,
		36.734142, 35.575062, 32.340397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.288406, 35.564941, 31.495501>,  <36.428928, 35.035141, 32.015850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.288406, 35.564941, 31.495501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.565605, 35.754501, 31.712824>,  <36.731922, 35.868237, 31.843218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.565605, 35.754501, 31.712824>,  <36.288406, 35.564941, 31.495501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.565605, 35.754501, 31.712824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277516, 0.520188, -0.807706,
		-0.665390, 0.710512, 0.228973,
		0.692994, 0.473896, 0.543306,
		36.773502, 35.896671, 31.875816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.275608, 36.369331, 31.317436>,  <36.288406, 35.564941, 31.495501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.275608, 36.369331, 31.317436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.623653, 36.365627, 31.514544>,  <36.832481, 36.363407, 31.632809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.623653, 36.365627, 31.514544>,  <36.275608, 36.369331, 31.317436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.623653, 36.365627, 31.514544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448226, 0.430616, -0.783367,
		-0.204943, 0.902488, 0.378832,
		0.870110, -0.009256, 0.492770,
		36.884686, 36.362850, 31.662374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.460632, 37.036346, 31.391018>,  <36.275608, 36.369331, 31.317436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.460632, 37.036346, 31.391018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.783375, 36.800262, 31.401182>,  <36.977020, 36.658611, 31.407280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.783375, 36.800262, 31.401182>,  <36.460632, 37.036346, 31.391018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.783375, 36.800262, 31.401182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420784, 0.543987, -0.725961,
		0.414644, 0.596435, 0.687266,
		0.806853, -0.590206, 0.025410,
		37.025429, 36.623199, 31.408806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.153687, 37.475163, 31.272898>,  <36.460632, 37.036346, 31.391018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.153687, 37.475163, 31.272898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.276440, 37.107334, 31.174744>,  <37.350090, 36.886639, 31.115850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.276440, 37.107334, 31.174744>,  <37.153687, 37.475163, 31.272898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.276440, 37.107334, 31.174744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453423, 0.367945, -0.811803,
		0.836798, 0.137864, 0.529870,
		0.306882, -0.919570, -0.245385,
		37.368504, 36.831463, 31.101128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.903366, 37.459904, 31.232559>,  <37.153687, 37.475163, 31.272898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.903366, 37.459904, 31.232559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.786804, 37.152752, 31.004368>,  <37.716869, 36.968460, 30.867453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.786804, 37.152752, 31.004368>,  <37.903366, 37.459904, 31.232559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.786804, 37.152752, 31.004368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583307, 0.330027, -0.742183,
		0.758181, -0.549037, 0.351739,
		-0.291402, -0.767880, -0.570478,
		37.699383, 36.922386, 30.833225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.569736, 37.189743, 30.915043>,  <37.903366, 37.459904, 31.232559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.569736, 37.189743, 30.915043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.269428, 37.038376, 30.698469>,  <38.089245, 36.947556, 30.568525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.269428, 37.038376, 30.698469>,  <38.569736, 37.189743, 30.915043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.269428, 37.038376, 30.698469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434533, 0.334422, -0.836267,
		0.497522, -0.863114, -0.086640,
		-0.750768, -0.378414, -0.541434,
		38.044197, 36.924850, 30.536039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.917351, 36.988907, 30.359949>,  <38.569736, 37.189743, 30.915043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.917351, 36.988907, 30.359949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.541931, 37.005432, 30.222879>,  <38.316681, 37.015347, 30.140636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.541931, 37.005432, 30.222879>,  <38.917351, 36.988907, 30.359949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.541931, 37.005432, 30.222879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345019, 0.140412, -0.928034,
		0.009774, -0.989231, -0.146037,
		-0.938545, 0.041315, -0.342676,
		38.260368, 37.017826, 30.120077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.895466, 36.714844, 29.716738>,  <38.917351, 36.988907, 30.359949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.895466, 36.714844, 29.716738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.554623, 36.922123, 29.687384>,  <38.350117, 37.046490, 29.669771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.554623, 36.922123, 29.687384>,  <38.895466, 36.714844, 29.716738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.554623, 36.922123, 29.687384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233559, 0.251027, -0.939380,
		-0.468362, -0.817593, -0.334931,
		-0.852108, 0.518196, -0.073384,
		38.298992, 37.077583, 29.665369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.489769, 36.472805, 29.136568>,  <38.895466, 36.714844, 29.716738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.489769, 36.472805, 29.136568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.406929, 36.853294, 29.228027>,  <38.357227, 37.081589, 29.282902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.406929, 36.853294, 29.228027>,  <38.489769, 36.472805, 29.136568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.406929, 36.853294, 29.228027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201578, 0.270189, -0.941469,
		-0.957328, -0.148885, -0.247701,
		-0.207096, 0.951226, 0.228647,
		38.344799, 37.138660, 29.296621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.095242, 36.690701, 28.552176>,  <38.489769, 36.472805, 29.136568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.095242, 36.690701, 28.552176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.215397, 37.024918, 28.736191>,  <38.287491, 37.225449, 28.846600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.215397, 37.024918, 28.736191>,  <38.095242, 36.690701, 28.552176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.215397, 37.024918, 28.736191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157247, 0.432330, -0.887899,
		-0.940767, 0.339050, -0.001522,
		0.300384, 0.835545, 0.460036,
		38.305511, 37.275581, 28.874201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.876507, 37.167099, 28.083179>,  <38.095242, 36.690701, 28.552176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.876507, 37.167099, 28.083179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.138958, 37.365440, 28.310732>,  <38.296429, 37.484444, 28.447264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.138958, 37.365440, 28.310732>,  <37.876507, 37.167099, 28.083179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.138958, 37.365440, 28.310732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207295, 0.606413, -0.767653,
		-0.725618, 0.621607, 0.295099,
		0.656131, 0.495851, 0.568880,
		38.335796, 37.514194, 28.481396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.706806, 37.904850, 28.029858>,  <37.876507, 37.167099, 28.083179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.706806, 37.904850, 28.029858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.093380, 37.868931, 28.126139>,  <38.325325, 37.847382, 28.183907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.093380, 37.868931, 28.126139>,  <37.706806, 37.904850, 28.029858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.093380, 37.868931, 28.126139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241213, 0.639596, -0.729886,
		-0.088413, 0.763449, 0.639788,
		0.966436, -0.089794, 0.240703,
		38.383312, 37.841991, 28.198349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.041286, 38.561867, 27.839388>,  <37.706806, 37.904850, 28.029858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.041286, 38.561867, 27.839388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.362671, 38.336060, 27.915028>,  <38.555504, 38.200573, 27.960411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.362671, 38.336060, 27.915028>,  <38.041286, 38.561867, 27.839388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.362671, 38.336060, 27.915028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517403, 0.504983, -0.690859,
		0.294512, 0.652922, 0.697821,
		0.803465, -0.564521, 0.189100,
		38.603710, 38.166702, 27.971758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.621750, 39.066223, 27.888636>,  <38.041286, 38.561867, 27.839388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.621750, 39.066223, 27.888636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.787857, 38.707985, 27.824818>,  <38.887520, 38.493042, 27.786526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.787857, 38.707985, 27.824818>,  <38.621750, 39.066223, 27.888636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.787857, 38.707985, 27.824818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618199, 0.406491, -0.672752,
		0.667371, 0.180740, 0.722460,
		0.415267, -0.895599, -0.159547,
		38.912437, 38.439304, 27.776953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.336655, 39.090443, 27.746164>,  <38.621750, 39.066223, 27.888636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.336655, 39.090443, 27.746164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.289093, 38.732563, 27.573946>,  <39.260555, 38.517834, 27.470615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.289093, 38.732563, 27.573946>,  <39.336655, 39.090443, 27.746164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.289093, 38.732563, 27.573946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481874, 0.327135, -0.812884,
		0.868135, -0.304125, 0.392236,
		-0.118904, -0.894701, -0.430548,
		39.253422, 38.464153, 27.444782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.964962, 38.990391, 27.486761>,  <39.336655, 39.090443, 27.746164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.964962, 38.990391, 27.486761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.753662, 38.709839, 27.295338>,  <39.626881, 38.541508, 27.180483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.753662, 38.709839, 27.295338>,  <39.964962, 38.990391, 27.486761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.753662, 38.709839, 27.295338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523868, 0.174335, -0.833769,
		0.668219, -0.691139, 0.275338,
		-0.528249, -0.701381, -0.478559,
		39.595188, 38.499424, 27.151770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.463467, 38.567745, 27.077782>,  <39.964962, 38.990391, 27.486761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.463467, 38.567745, 27.077782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.107693, 38.546474, 26.896196>,  <39.894230, 38.533710, 26.787245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.107693, 38.546474, 26.896196>,  <40.463467, 38.567745, 27.077782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.107693, 38.546474, 26.896196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394752, 0.411266, -0.821603,
		0.230390, -0.909963, -0.344802,
		-0.889434, -0.053178, -0.453961,
		39.840862, 38.530521, 26.760008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.610710, 38.192825, 26.467436>,  <40.463467, 38.567745, 27.077782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.610710, 38.192825, 26.467436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.250004, 38.351154, 26.397999>,  <40.033581, 38.446152, 26.356337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.250004, 38.351154, 26.397999>,  <40.610710, 38.192825, 26.467436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.250004, 38.351154, 26.397999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273617, 0.211894, -0.938208,
		-0.334582, -0.893546, -0.299384,
		-0.901770, 0.395825, -0.173593,
		39.979473, 38.469902, 26.345921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.344765, 37.955933, 25.755285>,  <40.610710, 38.192825, 26.467436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.344765, 37.955933, 25.755285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.140060, 38.284679, 25.855398>,  <40.017239, 38.481926, 25.915466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.140060, 38.284679, 25.855398>,  <40.344765, 37.955933, 25.755285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.140060, 38.284679, 25.855398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148631, 0.371623, -0.916409,
		-0.846174, -0.431782, -0.312337,
		-0.511760, 0.821864, 0.250281,
		39.986534, 38.531239, 25.930483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.840637, 38.000431, 25.195930>,  <40.344765, 37.955933, 25.755285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.840637, 38.000431, 25.195930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.873333, 38.368507, 25.349066>,  <39.892952, 38.589352, 25.440947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.873333, 38.368507, 25.349066>,  <39.840637, 38.000431, 25.195930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.873333, 38.368507, 25.349066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164071, 0.366459, -0.915854,
		-0.983056, 0.137676, -0.121022,
		0.081741, 0.920192, 0.382839,
		39.897854, 38.644566, 25.463917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.398006, 38.406353, 24.869587>,  <39.840637, 38.000431, 25.195930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.398006, 38.406353, 24.869587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.662243, 38.680286, 24.992630>,  <39.820786, 38.844646, 25.066456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.662243, 38.680286, 24.992630>,  <39.398006, 38.406353, 24.869587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.662243, 38.680286, 24.992630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111609, 0.315599, -0.942306,
		-0.742406, 0.656808, 0.132047,
		0.660589, 0.684836, 0.307608,
		39.860420, 38.885738, 25.084913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.322884, 38.936226, 24.300833>,  <39.398006, 38.406353, 24.869587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.322884, 38.936226, 24.300833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.636402, 39.044991, 24.524160>,  <39.824512, 39.110249, 24.658157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.636402, 39.044991, 24.524160>,  <39.322884, 38.936226, 24.300833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.636402, 39.044991, 24.524160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461576, 0.346378, -0.816682,
		-0.415459, 0.897822, 0.145981,
		0.783799, 0.271916, 0.558319,
		39.871540, 39.126564, 24.691656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.407318, 39.663235, 24.272400>,  <39.322884, 38.936226, 24.300833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.407318, 39.663235, 24.272400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.768036, 39.523037, 24.373533>,  <39.984467, 39.438919, 24.434214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.768036, 39.523037, 24.373533>,  <39.407318, 39.663235, 24.272400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.768036, 39.523037, 24.373533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427164, 0.634132, -0.644521,
		0.065571, 0.689225, 0.721574,
		0.901794, -0.350492, 0.252832,
		40.038574, 39.417889, 24.449383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.832172, 40.244240, 24.467815>,  <39.407318, 39.663235, 24.272400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.832172, 40.244240, 24.467815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.072475, 39.944153, 24.357347>,  <40.216660, 39.764103, 24.291067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.072475, 39.944153, 24.357347>,  <39.832172, 40.244240, 24.467815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.072475, 39.944153, 24.357347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576819, 0.645969, -0.500003,
		0.553505, 0.141083, 0.820809,
		0.600759, -0.750213, -0.276168,
		40.252705, 39.719090, 24.274498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.528408, 40.404644, 24.730467>,  <39.832172, 40.244240, 24.467815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.528408, 40.404644, 24.730467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.601585, 40.157986, 24.424192>,  <40.645493, 40.009991, 24.240427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.601585, 40.157986, 24.424192>,  <40.528408, 40.404644, 24.730467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.601585, 40.157986, 24.424192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661772, 0.653201, -0.367948,
		0.727043, -0.439398, 0.527578,
		0.182939, -0.616651, -0.765686,
		40.656467, 39.972992, 24.194487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.191578, 40.516834, 24.566250>,  <40.528408, 40.404644, 24.730467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.191578, 40.516834, 24.566250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.060886, 40.358555, 24.222931>,  <40.982471, 40.263588, 24.016939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.060886, 40.358555, 24.222931>,  <41.191578, 40.516834, 24.566250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.060886, 40.358555, 24.222931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419647, 0.752967, -0.506889,
		0.846845, -0.525794, -0.079958,
		-0.326725, -0.395702, -0.858295,
		40.962868, 40.239845, 23.965443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.742184, 40.504837, 24.214527>,  <41.191578, 40.516834, 24.566250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.742184, 40.504837, 24.214527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.488602, 40.430485, 23.914246>,  <41.336452, 40.385876, 23.734077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.488602, 40.430485, 23.914246>,  <41.742184, 40.504837, 24.214527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.488602, 40.430485, 23.914246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513309, 0.624918, -0.588210,
		0.578463, -0.758239, -0.300755,
		-0.633951, -0.185877, -0.750703,
		41.298416, 40.374722, 23.689035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.141994, 40.205345, 23.698795>,  <41.742184, 40.504837, 24.214527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.141994, 40.205345, 23.698795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.818794, 40.366104, 23.526464>,  <41.624874, 40.462559, 23.423067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.818794, 40.366104, 23.526464>,  <42.141994, 40.205345, 23.698795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.818794, 40.366104, 23.526464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585162, 0.632664, -0.507269,
		0.068697, -0.661977, -0.746370,
		-0.808002, 0.401900, -0.430826,
		41.576393, 40.486675, 23.397217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.226566, 40.139866, 22.938700>,  <42.141994, 40.205345, 23.698795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.226566, 40.139866, 22.938700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.941128, 40.412247, 23.004520>,  <41.769863, 40.575676, 23.044014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.941128, 40.412247, 23.004520>,  <42.226566, 40.139866, 22.938700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.941128, 40.412247, 23.004520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383007, 0.575898, -0.722252,
		-0.586588, -0.452372, -0.671770,
		-0.713597, 0.680957, 0.164553,
		41.727047, 40.616535, 23.053886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.966454, 40.237514, 22.327976>,  <42.226566, 40.139866, 22.938700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.966454, 40.237514, 22.327976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.875965, 40.572811, 22.526440>,  <41.821671, 40.773991, 22.645517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.875965, 40.572811, 22.526440>,  <41.966454, 40.237514, 22.327976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.875965, 40.572811, 22.526440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418780, 0.543581, -0.727422,
		-0.879459, 0.043222, -0.474009,
		-0.226222, 0.838243, 0.496157,
		41.808098, 40.824284, 22.675287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.955120, 40.674747, 21.769415>,  <41.966454, 40.237514, 22.327976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.955120, 40.674747, 21.769415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.981861, 40.910931, 22.091131>,  <41.997906, 41.052643, 22.284161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.981861, 40.910931, 22.091131>,  <41.955120, 40.674747, 21.769415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.981861, 40.910931, 22.091131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514125, 0.670457, -0.534942,
		-0.855106, 0.449268, -0.258750,
		0.066852, 0.590462, 0.804292,
		42.001915, 41.088070, 22.332418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.739166, 41.312851, 21.719839>,  <41.955120, 40.674747, 21.769415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.739166, 41.312851, 21.719839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.022709, 41.352768, 21.999142>,  <42.192833, 41.376717, 22.166723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.022709, 41.352768, 21.999142>,  <41.739166, 41.312851, 21.719839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.022709, 41.352768, 21.999142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452217, 0.695423, -0.558468,
		-0.541314, 0.711638, 0.447828,
		0.708857, 0.099791, 0.698257,
		42.235367, 41.382706, 22.208618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.634510, 41.965111, 22.113203>,  <41.739166, 41.312851, 21.719839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.634510, 41.965111, 22.113203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.019024, 41.858253, 22.086153>,  <42.249733, 41.794140, 22.069923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.019024, 41.858253, 22.086153>,  <41.634510, 41.965111, 22.113203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.019024, 41.858253, 22.086153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187482, 0.813846, -0.550005,
		0.201967, 0.516031, 0.832419,
		0.961280, -0.267146, -0.067623,
		42.307407, 41.778111, 22.065866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.125095, 42.146950, 21.575785>,  <41.634510, 41.965111, 22.113203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.125095, 42.146950, 21.575785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.497814, 42.283596, 21.526712>,  <41.721447, 42.365585, 21.497269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.497814, 42.283596, 21.526712>,  <41.125095, 42.146950, 21.575785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.497814, 42.283596, 21.526712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362384, 0.894878, -0.260522,
		0.020787, 0.287212, 0.957641,
		0.931797, 0.341618, -0.122683,
		41.777355, 42.386082, 21.489908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.110416, 42.880905, 21.803761>,  <41.125095, 42.146950, 21.575785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.110416, 42.880905, 21.803761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.450630, 42.859879, 21.594446>,  <41.654758, 42.847263, 21.468857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.450630, 42.859879, 21.594446>,  <41.110416, 42.880905, 21.803761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.450630, 42.859879, 21.594446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076177, 0.972185, -0.221481,
		0.520374, 0.228239, 0.822872,
		0.850534, -0.052569, -0.523286,
		41.705791, 42.844109, 21.437460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.536896, 43.404697, 21.984898>,  <41.110416, 42.880905, 21.803761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.536896, 43.404697, 21.984898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.651291, 43.337318, 21.607573>,  <41.719929, 43.296890, 21.381178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.651291, 43.337318, 21.607573>,  <41.536896, 43.404697, 21.984898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.651291, 43.337318, 21.607573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148057, 0.964838, -0.217181,
		0.946725, 0.201776, 0.250994,
		0.285990, -0.168450, -0.943310,
		41.737087, 43.286785, 21.324579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.152863, 42.965324, 22.341072>,  <41.536896, 43.404697, 21.984898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.152863, 42.965324, 22.341072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.441872, 43.213085, 22.218235>,  <42.615276, 43.361740, 22.144533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.441872, 43.213085, 22.218235>,  <42.152863, 42.965324, 22.341072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.441872, 43.213085, 22.218235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577750, -0.297006, 0.760258,
		0.379698, -0.726724, -0.572453,
		0.722520, 0.619403, -0.307092,
		42.658627, 43.398907, 22.126108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.691967, 42.561066, 22.284548>,  <42.152863, 42.965324, 22.341072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.691967, 42.561066, 22.284548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.792423, 42.941189, 22.358126>,  <42.852699, 43.169262, 22.402273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.792423, 42.941189, 22.358126>,  <42.691967, 42.561066, 22.284548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.792423, 42.941189, 22.358126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494619, -0.289348, 0.819531,
		0.832033, -0.114836, -0.542709,
		0.251143, 0.950311, 0.183947,
		42.867767, 43.226280, 22.413309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.450497, 42.612782, 22.394218>,  <42.691967, 42.561066, 22.284548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.450497, 42.612782, 22.394218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.215546, 42.866814, 22.594879>,  <43.074574, 43.019234, 22.715275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.215546, 42.866814, 22.594879>,  <43.450497, 42.612782, 22.394218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.215546, 42.866814, 22.594879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362327, -0.347903, 0.864686,
		0.723673, 0.689662, -0.025756,
		-0.587381, 0.635082, 0.501651,
		43.039330, 43.057339, 22.745375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.824574, 42.775898, 22.921520>,  <43.450497, 42.612782, 22.394218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.824574, 42.775898, 22.921520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.457096, 42.845169, 23.063517>,  <43.236610, 42.886730, 23.148714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.457096, 42.845169, 23.063517>,  <43.824574, 42.775898, 22.921520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.457096, 42.845169, 23.063517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231325, -0.492593, 0.838953,
		0.320150, 0.852856, 0.412481,
		-0.918691, 0.173173, 0.354990,
		43.181488, 42.897121, 23.170013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.795784, 43.018185, 23.755608>,  <43.824574, 42.775898, 22.921520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.795784, 43.018185, 23.755608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.429428, 42.895939, 23.651493>,  <43.209614, 42.822590, 23.589024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.429428, 42.895939, 23.651493>,  <43.795784, 43.018185, 23.755608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.429428, 42.895939, 23.651493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150844, -0.338862, 0.928665,
		-0.372018, 0.889814, 0.264259,
		-0.915887, -0.305619, -0.260286,
		43.154663, 42.804253, 23.573408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.443752, 43.191261, 24.336632>,  <43.795784, 43.018185, 23.755608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.443752, 43.191261, 24.336632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.205128, 42.925888, 24.155979>,  <43.061951, 42.766666, 24.047588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.205128, 42.925888, 24.155979>,  <43.443752, 43.191261, 24.336632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.205128, 42.925888, 24.155979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452444, -0.186781, 0.872014,
		-0.662877, 0.724549, -0.188738,
		-0.596564, -0.663431, -0.451631,
		43.026157, 42.726860, 24.020491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.796028, 43.262218, 24.633968>,  <43.443752, 43.191261, 24.336632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.796028, 43.262218, 24.633968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.840309, 42.893559, 24.485212>,  <42.866879, 42.672363, 24.395960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.840309, 42.893559, 24.485212>,  <42.796028, 43.262218, 24.633968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.840309, 42.893559, 24.485212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407853, -0.383359, 0.828669,
		-0.906312, 0.059939, -0.418338,
		0.110704, -0.921653, -0.371889,
		42.873520, 42.617062, 24.373646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.209129, 42.884399, 24.773520>,  <42.796028, 43.262218, 24.633968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.209129, 42.884399, 24.773520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.460632, 42.579140, 24.713842>,  <42.611534, 42.395985, 24.678036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.460632, 42.579140, 24.713842>,  <42.209129, 42.884399, 24.773520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.460632, 42.579140, 24.713842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411344, -0.489253, 0.769043,
		-0.659890, -0.422175, -0.621541,
		0.628761, -0.763151, -0.149194,
		42.649261, 42.350193, 24.669085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.825809, 42.379097, 24.915688>,  <42.209129, 42.884399, 24.773520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.825809, 42.379097, 24.915688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.179626, 42.192520, 24.917187>,  <42.391918, 42.080574, 24.918087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.179626, 42.192520, 24.917187>,  <41.825809, 42.379097, 24.915688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.179626, 42.192520, 24.917187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292807, -0.548981, 0.782869,
		-0.363101, -0.693582, -0.622175,
		0.884546, -0.466438, 0.003750,
		42.444992, 42.052589, 24.918312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.679073, 41.629494, 24.824625>,  <41.825809, 42.379097, 24.915688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.679073, 41.629494, 24.824625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.030693, 41.705601, 24.999474>,  <42.241665, 41.751266, 25.104383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.030693, 41.705601, 24.999474>,  <41.679073, 41.629494, 24.824625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.030693, 41.705601, 24.999474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273269, -0.550225, 0.789035,
		0.390644, -0.813051, -0.431678,
		0.879046, 0.190268, 0.437124,
		42.294407, 41.762680, 25.130611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.847298, 40.925537, 25.128279>,  <41.679073, 41.629494, 24.824625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.847298, 40.925537, 25.128279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.118351, 41.164524, 25.299789>,  <42.280983, 41.307915, 25.402697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.118351, 41.164524, 25.299789>,  <41.847298, 40.925537, 25.128279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.118351, 41.164524, 25.299789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218357, -0.393291, 0.893108,
		0.702237, -0.698824, -0.136045,
		0.677630, 0.597468, 0.428777,
		42.321640, 41.343765, 25.428423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.293030, 40.492851, 25.484989>,  <41.847298, 40.925537, 25.128279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.293030, 40.492851, 25.484989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.355724, 40.840431, 25.672756>,  <42.393341, 41.048981, 25.785418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.355724, 40.840431, 25.672756>,  <42.293030, 40.492851, 25.484989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.355724, 40.840431, 25.672756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101655, -0.458576, 0.882822,
		0.982396, -0.186085, 0.016460,
		0.156732, 0.868954, 0.469419,
		42.402744, 41.101116, 25.813581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.715233, 40.457935, 26.067722>,  <42.293030, 40.492851, 25.484989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.715233, 40.457935, 26.067722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.505817, 40.784603, 26.164845>,  <42.380169, 40.980606, 26.223118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.505817, 40.784603, 26.164845>,  <42.715233, 40.457935, 26.067722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.505817, 40.784603, 26.164845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163928, -0.376211, 0.911917,
		0.836083, 0.437622, 0.330837,
		-0.523539, 0.816672, 0.242805,
		42.348755, 41.029606, 26.237686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.879913, 40.536163, 26.803490>,  <42.715233, 40.457935, 26.067722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.879913, 40.536163, 26.803490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.569851, 40.783791, 26.753082>,  <42.383812, 40.932369, 26.722837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.569851, 40.783791, 26.753082>,  <42.879913, 40.536163, 26.803490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.569851, 40.783791, 26.753082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335640, -0.234554, 0.912322,
		0.535235, 0.749490, 0.389601,
		-0.775158, 0.619071, -0.126017,
		42.337303, 40.969513, 26.715277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.936207, 40.990154, 27.382460>,  <42.879913, 40.536163, 26.803490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.936207, 40.990154, 27.382460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.554852, 40.994122, 27.261826>,  <42.326038, 40.996502, 27.189445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.554852, 40.994122, 27.261826>,  <42.936207, 40.990154, 27.382460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.554852, 40.994122, 27.261826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295596, -0.231525, 0.926833,
		-0.060631, 0.972778, 0.223665,
		-0.953387, 0.009920, -0.301587,
		42.268837, 40.997097, 27.171349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.595139, 41.215565, 27.940367>,  <42.936207, 40.990154, 27.382460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.595139, 41.215565, 27.940367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.287319, 41.082905, 27.722084>,  <42.102627, 41.003307, 27.591114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.287319, 41.082905, 27.722084>,  <42.595139, 41.215565, 27.940367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.287319, 41.082905, 27.722084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514217, -0.184867, 0.837499,
		-0.378643, 0.925111, -0.028277,
		-0.769552, -0.331653, -0.545707,
		42.056454, 40.983410, 27.558372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.081436, 41.343887, 28.398340>,  <42.595139, 41.215565, 27.940367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.081436, 41.343887, 28.398340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.922337, 41.115555, 28.111021>,  <41.826878, 40.978554, 27.938629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.922337, 41.115555, 28.111021>,  <42.081436, 41.343887, 28.398340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.922337, 41.115555, 28.111021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559285, -0.469770, 0.683021,
		-0.727323, 0.673401, -0.132409,
		-0.397745, -0.570831, -0.718297,
		41.803013, 40.944305, 27.895533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.353001, 41.392857, 28.440001>,  <42.081436, 41.343887, 28.398340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.353001, 41.392857, 28.440001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.441082, 41.043396, 28.266453>,  <41.493931, 40.833717, 28.162325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.441082, 41.043396, 28.266453>,  <41.353001, 41.392857, 28.440001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.441082, 41.043396, 28.266453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646057, -0.463865, 0.606168,
		-0.730837, 0.146826, -0.666573,
		0.220199, -0.873654, -0.433867,
		41.507141, 40.781300, 28.136293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.764324, 41.088825, 28.223642>,  <41.353001, 41.392857, 28.440001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.764324, 41.088825, 28.223642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.015381, 40.779827, 28.262230>,  <41.166016, 40.594429, 28.285383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.015381, 40.779827, 28.262230>,  <40.764324, 41.088825, 28.223642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.015381, 40.779827, 28.262230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594725, -0.395825, 0.699732,
		-0.502359, -0.496554, -0.707863,
		0.627644, -0.772500, 0.096467,
		41.203674, 40.548077, 28.291170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.381084, 40.490498, 28.149605>,  <40.764324, 41.088825, 28.223642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.381084, 40.490498, 28.149605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.711304, 40.400177, 28.356478>,  <40.909435, 40.345985, 28.480600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.711304, 40.400177, 28.356478>,  <40.381084, 40.490498, 28.149605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.711304, 40.400177, 28.356478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561027, -0.427339, 0.708964,
		0.060924, -0.875439, -0.479473,
		0.825552, -0.225804, 0.517181,
		40.958969, 40.332436, 28.511631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.265461, 39.759571, 28.306585>,  <40.381084, 40.490498, 28.149605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.265461, 39.759571, 28.306585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.530796, 39.886276, 28.577776>,  <40.689995, 39.962299, 28.740490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.530796, 39.886276, 28.577776>,  <40.265461, 39.759571, 28.306585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.530796, 39.886276, 28.577776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492223, -0.497722, 0.714135,
		0.563654, -0.807425, -0.174238,
		0.663333, 0.316761, 0.677976,
		40.729797, 39.981304, 28.781168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.389633, 39.151546, 28.625380>,  <40.265461, 39.759571, 28.306585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.389633, 39.151546, 28.625380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.488754, 39.469349, 28.847134>,  <40.548229, 39.660030, 28.980186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.488754, 39.469349, 28.847134>,  <40.389633, 39.151546, 28.625380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.488754, 39.469349, 28.847134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627568, -0.304307, 0.716628,
		0.738073, -0.525500, 0.423201,
		0.247806, 0.794511, 0.554387,
		40.563095, 39.707703, 29.013451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.537228, 38.834705, 29.240320>,  <40.389633, 39.151546, 28.625380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.537228, 38.834705, 29.240320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.488312, 39.219616, 29.337536>,  <40.458961, 39.450562, 29.395864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.488312, 39.219616, 29.337536>,  <40.537228, 38.834705, 29.240320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.488312, 39.219616, 29.337536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500274, -0.271259, 0.822280,
		0.857188, -0.021027, 0.514575,
		-0.122293, 0.962277, 0.243040,
		40.451622, 39.508301, 29.410448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.723015, 38.924236, 30.011835>,  <40.537228, 38.834705, 29.240320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.723015, 38.924236, 30.011835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.508224, 39.248550, 29.918636>,  <40.379349, 39.443138, 29.862717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.508224, 39.248550, 29.918636>,  <40.723015, 38.924236, 30.011835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.508224, 39.248550, 29.918636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464160, -0.053332, 0.884144,
		0.704424, 0.582911, 0.404972,
		-0.536975, 0.810784, -0.232996,
		40.347134, 39.491787, 29.848738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.825249, 39.427952, 30.570116>,  <40.723015, 38.924236, 30.011835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.825249, 39.427952, 30.570116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.491272, 39.568535, 30.400715>,  <40.290886, 39.652885, 30.299074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.491272, 39.568535, 30.400715>,  <40.825249, 39.427952, 30.570116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.491272, 39.568535, 30.400715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463179, -0.033157, 0.885644,
		0.297220, 0.935618, 0.190470,
		-0.834940, 0.351453, -0.423504,
		40.240791, 39.673969, 30.273664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.569458, 40.088806, 30.953671>,  <40.825249, 39.427952, 30.570116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.569458, 40.088806, 30.953671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.241299, 39.947495, 30.773830>,  <40.044403, 39.862705, 30.665926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.241299, 39.947495, 30.773830>,  <40.569458, 40.088806, 30.953671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.241299, 39.947495, 30.773830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419766, -0.161792, 0.893096,
		-0.388255, 0.921421, -0.015562,
		-0.820399, -0.353281, -0.449598,
		39.995178, 39.841511, 30.638950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.947090, 40.405987, 31.213682>,  <40.569458, 40.088806, 30.953671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.947090, 40.405987, 31.213682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.789822, 40.080868, 31.041740>,  <39.695461, 39.885796, 30.938576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.789822, 40.080868, 31.041740>,  <39.947090, 40.405987, 31.213682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.789822, 40.080868, 31.041740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568709, -0.152375, 0.808302,
		-0.722484, 0.562266, -0.402335,
		-0.393175, -0.812797, -0.429854,
		39.671867, 39.837029, 30.912785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.333225, 40.580898, 31.140316>,  <39.947090, 40.405987, 31.213682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.333225, 40.580898, 31.140316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.348801, 40.181530, 31.124107>,  <39.358147, 39.941910, 31.114382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.348801, 40.181530, 31.124107>,  <39.333225, 40.580898, 31.140316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.348801, 40.181530, 31.124107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556867, -0.055354, 0.828755,
		-0.829688, -0.009709, -0.558142,
		0.038941, -0.998420, -0.040520,
		39.360481, 39.882004, 31.111952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.605377, 40.240925, 31.212467>,  <39.333225, 40.580898, 31.140316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.605377, 40.240925, 31.212467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.884911, 39.990398, 31.350662>,  <39.052631, 39.840084, 31.433578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.884911, 39.990398, 31.350662>,  <38.605377, 40.240925, 31.212467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.884911, 39.990398, 31.350662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604794, -0.259501, 0.752916,
		-0.381910, -0.735110, -0.560140,
		0.698834, -0.626316, 0.345485,
		39.094563, 39.802505, 31.454308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226589, 39.614662, 31.340773>,  <38.605377, 40.240925, 31.212467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.226589, 39.614662, 31.340773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.559978, 39.520962, 31.540953>,  <38.760014, 39.464741, 31.661060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.559978, 39.520962, 31.540953>,  <38.226589, 39.614662, 31.340773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.559978, 39.520962, 31.540953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542801, -0.516551, 0.662226,
		0.103381, -0.823592, -0.557682,
		0.833475, -0.234249, 0.500448,
		38.810020, 39.450687, 31.691088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.159130, 38.869484, 31.488407>,  <38.226589, 39.614662, 31.340773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.159130, 38.869484, 31.488407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.424683, 39.034405, 31.737974>,  <38.584015, 39.133358, 31.887714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.424683, 39.034405, 31.737974>,  <38.159130, 38.869484, 31.488407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.424683, 39.034405, 31.737974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388574, -0.522650, 0.758846,
		0.638964, -0.746220, -0.186766,
		0.663879, 0.412303, 0.623916,
		38.623848, 39.158096, 31.925148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.337940, 38.403973, 31.868025>,  <38.159130, 38.869484, 31.488407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.337940, 38.403973, 31.868025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.457005, 38.705139, 32.102810>,  <38.528442, 38.885838, 32.243679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.457005, 38.705139, 32.102810>,  <38.337940, 38.403973, 31.868025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.457005, 38.705139, 32.102810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311358, -0.504651, 0.805223,
		0.902472, -0.422435, 0.084213,
		0.297656, 0.752912, 0.586962,
		38.546303, 38.931011, 32.278900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.474968, 38.045788, 32.490761>,  <38.337940, 38.403973, 31.868025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.474968, 38.045788, 32.490761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.483391, 38.426670, 32.612656>,  <38.488445, 38.655197, 32.685795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.483391, 38.426670, 32.612656>,  <38.474968, 38.045788, 32.490761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.483391, 38.426670, 32.612656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340069, -0.279812, 0.897807,
		0.940165, -0.122534, 0.317923,
		0.021053, 0.952203, 0.304740,
		38.489708, 38.712330, 32.704079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.926399, 38.169304, 33.142082>,  <38.474968, 38.045788, 32.490761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.926399, 38.169304, 33.142082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.681705, 38.483368, 33.103508>,  <38.534889, 38.671806, 33.080364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.681705, 38.483368, 33.103508>,  <38.926399, 38.169304, 33.142082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.681705, 38.483368, 33.103508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377813, -0.182885, 0.907640,
		0.695009, 0.591669, 0.408522,
		-0.611735, 0.785163, -0.096433,
		38.498184, 38.718918, 33.074577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.946171, 38.563080, 33.763420>,  <38.926399, 38.169304, 33.142082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.946171, 38.563080, 33.763420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.599804, 38.648834, 33.582657>,  <38.391983, 38.700287, 33.474197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.599804, 38.648834, 33.582657>,  <38.946171, 38.563080, 33.763420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.599804, 38.648834, 33.582657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498962, -0.307101, 0.810386,
		0.034949, 0.927216, 0.372893,
		-0.865919, 0.214382, -0.451913,
		38.340027, 38.713150, 33.447083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.655933, 38.901943, 34.289120>,  <38.946171, 38.563080, 33.763420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.655933, 38.901943, 34.289120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.349926, 38.805561, 34.050224>,  <38.166321, 38.747734, 33.906887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.349926, 38.805561, 34.050224>,  <38.655933, 38.901943, 34.289120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.349926, 38.805561, 34.050224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573065, -0.168447, 0.802011,
		-0.293849, 0.955808, -0.009217,
		-0.765016, -0.240952, -0.597238,
		38.120422, 38.733276, 33.871052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.103893, 39.349533, 34.522572>,  <38.655933, 38.901943, 34.289120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.103893, 39.349533, 34.522572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.959965, 39.032089, 34.326324>,  <37.873608, 38.841621, 34.208576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.959965, 39.032089, 34.326324>,  <38.103893, 39.349533, 34.522572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.959965, 39.032089, 34.326324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616373, -0.192572, 0.763544,
		-0.700439, 0.577142, -0.419872,
		-0.359818, -0.793614, -0.490619,
		37.852020, 38.794006, 34.179138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446224, 39.211163, 34.839531>,  <38.103893, 39.349533, 34.522572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.446224, 39.211163, 34.839531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.493000, 38.886261, 34.610947>,  <37.521065, 38.691319, 34.473797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.493000, 38.886261, 34.610947>,  <37.446224, 39.211163, 34.839531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.493000, 38.886261, 34.610947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562955, -0.528251, 0.635635,
		-0.818173, 0.247380, -0.519033,
		0.116937, -0.812252, -0.571465,
		37.528080, 38.642586, 34.439507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.744934, 38.977676, 34.734558>,  <37.446224, 39.211163, 34.839531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.744934, 38.977676, 34.734558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.000061, 38.674187, 34.681606>,  <37.153137, 38.492092, 34.649834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.000061, 38.674187, 34.681606>,  <36.744934, 38.977676, 34.734558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.000061, 38.674187, 34.681606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484551, -0.528902, 0.696759,
		-0.598668, -0.380256, -0.704984,
		0.637814, -0.758728, -0.132383,
		37.191406, 38.446568, 34.641891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.332771, 38.363220, 34.570267>,  <36.744934, 38.977676, 34.734558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.332771, 38.363220, 34.570267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.675716, 38.257523, 34.746948>,  <36.881485, 38.194103, 34.852959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.675716, 38.257523, 34.746948>,  <36.332771, 38.363220, 34.570267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.675716, 38.257523, 34.746948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514051, -0.483087, 0.708787,
		0.026090, -0.834747, -0.550016,
		0.857363, -0.264244, 0.441706,
		36.932926, 38.178249, 34.879459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.144798, 37.728405, 34.650845>,  <36.332771, 38.363220, 34.570267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.144798, 37.728405, 34.650845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.466862, 37.766880, 34.884926>,  <36.660099, 37.789967, 35.025375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.466862, 37.766880, 34.884926>,  <36.144798, 37.728405, 34.650845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.466862, 37.766880, 34.884926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346840, -0.724041, 0.596211,
		0.481059, -0.683018, -0.549608,
		0.805161, 0.096186, 0.585204,
		36.708408, 37.795734, 35.060486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.308788, 36.999039, 34.824524>,  <36.144798, 37.728405, 34.650845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.308788, 36.999039, 34.824524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.499054, 37.225773, 35.093578>,  <36.613213, 37.361813, 35.255013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.499054, 37.225773, 35.093578>,  <36.308788, 36.999039, 34.824524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.499054, 37.225773, 35.093578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260433, -0.639648, 0.723205,
		0.840189, -0.519180, -0.156635,
		0.475664, 0.566836, 0.672637,
		36.641754, 37.395824, 35.295368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.739788, 36.529335, 35.214737>,  <36.308788, 36.999039, 34.824524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.739788, 36.529335, 35.214737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.692070, 36.859612, 35.435284>,  <36.663441, 37.057777, 35.567612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.692070, 36.859612, 35.435284>,  <36.739788, 36.529335, 35.214737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.692070, 36.859612, 35.435284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000779, -0.555413, 0.831574,
		0.992859, 0.098773, 0.066900,
		-0.119294, 0.825688, 0.551370,
		36.656281, 37.107319, 35.600693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.235130, 36.378723, 35.854527>,  <36.739788, 36.529335, 35.214737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.235130, 36.378723, 35.854527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.956684, 36.649052, 35.951435>,  <36.789616, 36.811249, 36.009579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.956684, 36.649052, 35.951435>,  <37.235130, 36.378723, 35.854527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.956684, 36.649052, 35.951435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201397, -0.507726, 0.837648,
		0.689104, 0.534307, 0.489543,
		-0.696114, 0.675818, 0.242268,
		36.747849, 36.851799, 36.024117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.632450, 36.471020, 36.426327>,  <37.235130, 36.378723, 35.854527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.632450, 36.471020, 36.426327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.992050, 36.523315, 36.593521>,  <38.207809, 36.554695, 36.693836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.992050, 36.523315, 36.593521>,  <37.632450, 36.471020, 36.426327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.992050, 36.523315, 36.593521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417853, 0.029763, -0.908027,
		-0.131158, 0.990970, -0.027874,
		0.898998, 0.130742, 0.417983,
		38.261749, 36.562538, 36.718918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.909107, 37.000500, 36.113140>,  <37.632450, 36.471020, 36.426327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.909107, 37.000500, 36.113140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.203762, 36.777943, 36.266918>,  <38.380554, 36.644409, 36.359184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.203762, 36.777943, 36.266918>,  <37.909107, 37.000500, 36.113140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.203762, 36.777943, 36.266918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489284, 0.046026, -0.870909,
		0.466870, 0.829646, 0.306138,
		0.736636, -0.556390, 0.384444,
		38.424751, 36.611027, 36.382252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.423351, 37.399567, 36.066635>,  <37.909107, 37.000500, 36.113140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.423351, 37.399567, 36.066635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.593250, 37.037937, 36.085556>,  <38.695190, 36.820957, 36.096909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.593250, 37.037937, 36.085556>,  <38.423351, 37.399567, 36.066635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.593250, 37.037937, 36.085556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553802, 0.218143, -0.803565,
		0.716166, 0.367506, 0.593334,
		0.424747, -0.904076, 0.047299,
		38.720673, 36.766716, 36.099747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.116192, 37.516392, 35.934898>,  <38.423351, 37.399567, 36.066635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.116192, 37.516392, 35.934898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.076237, 37.124542, 35.865211>,  <39.052265, 36.889431, 35.823399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.076237, 37.124542, 35.865211>,  <39.116192, 37.516392, 35.934898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.076237, 37.124542, 35.865211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607032, 0.078739, -0.790767,
		0.788375, -0.184742, 0.586801,
		-0.099884, -0.979628, -0.174220,
		39.046272, 36.830654, 35.812946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.798843, 37.160313, 35.888203>,  <39.116192, 37.516392, 35.934898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.798843, 37.160313, 35.888203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.574036, 36.896786, 35.688164>,  <39.439152, 36.738670, 35.568142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.574036, 36.896786, 35.688164>,  <39.798843, 37.160313, 35.888203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.574036, 36.896786, 35.688164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686774, -0.034742, -0.726040,
		0.460956, -0.751497, 0.471987,
		-0.562015, -0.658821, -0.500094,
		39.405430, 36.699139, 35.538136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.286106, 36.578350, 35.576672>,  <39.798843, 37.160313, 35.888203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.286106, 36.578350, 35.576672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.949833, 36.541630, 35.363194>,  <39.748070, 36.519596, 35.235107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.949833, 36.541630, 35.363194>,  <40.286106, 36.578350, 35.576672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.949833, 36.541630, 35.363194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523395, 0.115172, -0.844271,
		0.138972, -0.989094, -0.048774,
		-0.840681, -0.091802, -0.533692,
		39.697628, 36.514088, 35.203087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.448933, 36.062351, 35.120754>,  <40.286106, 36.578350, 35.576672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.448933, 36.062351, 35.120754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.150997, 36.284279, 34.972488>,  <39.972237, 36.417435, 34.883530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.150997, 36.284279, 34.972488>,  <40.448933, 36.062351, 35.120754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.150997, 36.284279, 34.972488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481953, 0.063174, -0.873917,
		-0.461448, -0.829571, -0.314450,
		-0.744841, 0.554817, -0.370662,
		39.927544, 36.450726, 34.861290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.440338, 35.797104, 34.325802>,  <40.448933, 36.062351, 35.120754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.440338, 35.797104, 34.325802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.215057, 36.127071, 34.345089>,  <40.079891, 36.325050, 34.356659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.215057, 36.127071, 34.345089>,  <40.440338, 35.797104, 34.325802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.215057, 36.127071, 34.345089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342207, 0.285950, -0.895057,
		-0.752132, -0.487595, -0.443338,
		-0.563197, 0.824915, 0.048214,
		40.046097, 36.374546, 34.359554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.187576, 35.774670, 33.691578>,  <40.440338, 35.797104, 34.325802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.187576, 35.774670, 33.691578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.154041, 36.144760, 33.839588>,  <40.133923, 36.366814, 33.928394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.154041, 36.144760, 33.839588>,  <40.187576, 35.774670, 33.691578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.154041, 36.144760, 33.839588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316781, 0.376818, -0.870436,
		-0.944787, 0.044246, -0.324685,
		-0.083834, 0.925230, 0.370029,
		40.128891, 36.422329, 33.950596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.126740, 36.158066, 33.161953>,  <40.187576, 35.774670, 33.691578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.126740, 36.158066, 33.161953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.223122, 36.451744, 33.415848>,  <40.280952, 36.627953, 33.568184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.223122, 36.451744, 33.415848>,  <40.126740, 36.158066, 33.161953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.223122, 36.451744, 33.415848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502043, 0.465417, -0.728930,
		-0.830598, 0.494304, -0.256456,
		0.240954, 0.734201, 0.634737,
		40.295406, 36.672005, 33.606270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.818825, 36.767120, 32.906086>,  <40.126740, 36.158066, 33.161953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.818825, 36.767120, 32.906086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.132748, 36.847614, 33.140553>,  <40.321102, 36.895912, 33.281231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.132748, 36.847614, 33.140553>,  <39.818825, 36.767120, 32.906086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.132748, 36.847614, 33.140553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473330, 0.415907, -0.776518,
		-0.400055, 0.886862, 0.231153,
		0.784802, 0.201239, 0.586164,
		40.368187, 36.907986, 33.316402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.968143, 37.521400, 32.847130>,  <39.818825, 36.767120, 32.906086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.968143, 37.521400, 32.847130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.300152, 37.359318, 33.000423>,  <40.499359, 37.262066, 33.092400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.300152, 37.359318, 33.000423>,  <39.968143, 37.521400, 32.847130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.300152, 37.359318, 33.000423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554232, 0.522417, -0.648003,
		0.062368, 0.750258, 0.658197,
		0.830022, -0.405209, 0.383234,
		40.549160, 37.237755, 33.115395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.452106, 38.092739, 33.105659>,  <39.968143, 37.521400, 32.847130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.452106, 38.092739, 33.105659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.683445, 37.768711, 33.067070>,  <40.822247, 37.574295, 33.043919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.683445, 37.768711, 33.067070>,  <40.452106, 38.092739, 33.105659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.683445, 37.768711, 33.067070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690787, 0.549191, -0.470321,
		0.433974, 0.205367, 0.877207,
		0.578342, -0.810070, -0.096470,
		40.856949, 37.525688, 33.038128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.229759, 38.294903, 33.229424>,  <40.452106, 38.092739, 33.105659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.229759, 38.294903, 33.229424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.237125, 37.945126, 33.035511>,  <41.241547, 37.735260, 32.919163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.237125, 37.945126, 33.035511>,  <41.229759, 38.294903, 33.229424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.237125, 37.945126, 33.035511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745432, 0.335141, -0.576205,
		0.666327, -0.350757, 0.658010,
		0.018418, -0.874442, -0.484780,
		41.242649, 37.682793, 32.890076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.018875, 38.228786, 33.013527>,  <41.229759, 38.294903, 33.229424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.018875, 38.228786, 33.013527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.840034, 37.975628, 32.760689>,  <41.732731, 37.823730, 32.608986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.840034, 37.975628, 32.760689>,  <42.018875, 38.228786, 33.013527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.840034, 37.975628, 32.760689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557466, 0.355478, -0.750244,
		0.699524, -0.687803, 0.193886,
		-0.447098, -0.632899, -0.632093,
		41.705906, 37.785759, 32.571060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.544697, 37.863995, 32.627148>,  <42.018875, 38.228786, 33.013527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.544697, 37.863995, 32.627148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.212711, 37.834961, 32.405918>,  <42.013519, 37.817543, 32.273182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.212711, 37.834961, 32.405918>,  <42.544697, 37.863995, 32.627148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.212711, 37.834961, 32.405918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516883, 0.272723, -0.811452,
		0.209730, -0.959351, -0.188835,
		-0.829967, -0.072580, -0.553071,
		41.963722, 37.813187, 32.239998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.734196, 37.541676, 31.914785>,  <42.544697, 37.863995, 32.627148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.734196, 37.541676, 31.914785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.387062, 37.733318, 31.862143>,  <42.178780, 37.848305, 31.830557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.387062, 37.733318, 31.862143>,  <42.734196, 37.541676, 31.914785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.387062, 37.733318, 31.862143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349152, 0.399624, -0.847582,
		-0.353486, -0.781513, -0.514088,
		-0.867837, 0.479103, -0.131605,
		42.126713, 37.877048, 31.822660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.648659, 37.456146, 31.181328>,  <42.734196, 37.541676, 31.914785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.648659, 37.456146, 31.181328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.399929, 37.749744, 31.290573>,  <42.250690, 37.925903, 31.356121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.399929, 37.749744, 31.290573>,  <42.648659, 37.456146, 31.181328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.399929, 37.749744, 31.290573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176146, 0.470877, -0.864435,
		-0.763092, -0.489417, -0.422092,
		-0.621822, 0.733993, 0.273113,
		42.213383, 37.969944, 31.372507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.261776, 37.513790, 30.514893>,  <42.648659, 37.456146, 31.181328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.261776, 37.513790, 30.514893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.216667, 37.854595, 30.719383>,  <42.189602, 38.059078, 30.842077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.216667, 37.854595, 30.719383>,  <42.261776, 37.513790, 30.514893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.216667, 37.854595, 30.719383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014773, 0.515892, -0.856526,
		-0.993511, -0.089041, -0.070765,
		-0.112773, 0.852014, 0.511229,
		42.182835, 38.110199, 30.872751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.599163, 37.879810, 30.380333>,  <42.261776, 37.513790, 30.514893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.599163, 37.879810, 30.380333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.871197, 38.143635, 30.508368>,  <42.034416, 38.301929, 30.585188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.871197, 38.143635, 30.508368>,  <41.599163, 37.879810, 30.380333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.871197, 38.143635, 30.508368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087297, 0.506353, -0.857896,
		-0.727916, 0.555501, 0.401942,
		0.680086, 0.659565, 0.320089,
		42.075222, 38.341503, 30.604395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.455410, 38.439526, 29.957317>,  <41.599163, 37.879810, 30.380333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.455410, 38.439526, 29.957317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.809288, 38.532433, 30.118996>,  <42.021614, 38.588177, 30.216003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.809288, 38.532433, 30.118996>,  <41.455410, 38.439526, 29.957317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.809288, 38.532433, 30.118996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154326, 0.672232, -0.724077,
		-0.439894, 0.702962, 0.558872,
		0.884690, 0.232269, 0.404196,
		42.074696, 38.602112, 30.240253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.626072, 39.179195, 29.719042>,  <41.455410, 38.439526, 29.957317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.626072, 39.179195, 29.719042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.976154, 39.011490, 29.815571>,  <42.186203, 38.910866, 29.873489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.976154, 39.011490, 29.815571>,  <41.626072, 39.179195, 29.719042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.976154, 39.011490, 29.815571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427133, 0.435543, -0.792376,
		0.227110, 0.796566, 0.560271,
		0.875202, -0.419267, 0.241323,
		42.238716, 38.885708, 29.887968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.118855, 39.744339, 29.755865>,  <41.626072, 39.179195, 29.719042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.118855, 39.744339, 29.755865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.330570, 39.410778, 29.693308>,  <42.457600, 39.210640, 29.655773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.330570, 39.410778, 29.693308>,  <42.118855, 39.744339, 29.755865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.330570, 39.410778, 29.693308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505031, 0.457777, -0.731699,
		0.681760, 0.308297, 0.663443,
		0.529289, -0.833902, -0.156395,
		42.489357, 39.160606, 29.646389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.840225, 39.983387, 29.635237>,  <42.118855, 39.744339, 29.755865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.840225, 39.983387, 29.635237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.833008, 39.608749, 29.495253>,  <42.828678, 39.383968, 29.411263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.833008, 39.608749, 29.495253>,  <42.840225, 39.983387, 29.635237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.833008, 39.608749, 29.495253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416817, 0.311106, -0.854094,
		0.908811, -0.161279, 0.384774,
		-0.018042, -0.936591, -0.349961,
		42.827595, 39.327774, 29.390265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.442986, 39.989986, 29.343832>,  <42.840225, 39.983387, 29.635237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.442986, 39.989986, 29.343832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.258572, 39.680031, 29.170858>,  <43.147923, 39.494057, 29.067074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.258572, 39.680031, 29.170858>,  <43.442986, 39.989986, 29.343832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.258572, 39.680031, 29.170858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439342, 0.224074, -0.869925,
		0.770991, -0.591050, 0.237135,
		-0.461034, -0.774888, -0.432432,
		43.120262, 39.447563, 29.041128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.996681, 39.560143, 28.978342>,  <43.442986, 39.989986, 29.343832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.996681, 39.560143, 28.978342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.653164, 39.435696, 28.815531>,  <43.447052, 39.361027, 28.717844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.653164, 39.435696, 28.815531>,  <43.996681, 39.560143, 28.978342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.653164, 39.435696, 28.815531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422708, 0.018576, -0.906076,
		0.289459, -0.950189, 0.115559,
		-0.858796, -0.311120, -0.407030,
		43.395523, 39.342361, 28.693422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.110962, 38.938232, 28.657270>,  <43.996681, 39.560143, 28.978342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.110962, 38.938232, 28.657270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.781963, 39.065857, 28.468933>,  <43.584564, 39.142433, 28.355930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.781963, 39.065857, 28.468933>,  <44.110962, 38.938232, 28.657270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.781963, 39.065857, 28.468933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471231, -0.081286, -0.878256,
		-0.318490, -0.944242, -0.083494,
		-0.822500, 0.319061, -0.470845,
		43.535213, 39.161575, 28.327681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.948853, 38.435432, 28.175535>,  <44.110962, 38.938232, 28.657270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.948853, 38.435432, 28.175535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.754093, 38.761131, 28.049091>,  <43.637238, 38.956551, 27.973225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.754093, 38.761131, 28.049091>,  <43.948853, 38.435432, 28.175535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.754093, 38.761131, 28.049091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333601, -0.161111, -0.928845,
		-0.807241, -0.557710, -0.193189,
		-0.486901, 0.814250, -0.316108,
		43.608025, 39.005405, 27.954260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.469437, 38.326225, 27.678827>,  <43.948853, 38.435432, 28.175535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.469437, 38.326225, 27.678827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.535515, 38.715023, 27.611973>,  <43.575161, 38.948303, 27.571859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.535515, 38.715023, 27.611973>,  <43.469437, 38.326225, 27.678827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.535515, 38.715023, 27.611973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195158, -0.198328, -0.960510,
		-0.966760, 0.126050, -0.222455,
		0.165191, 0.971997, -0.167136,
		43.585072, 39.006622, 27.561832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.131012, 38.497807, 27.007557>,  <43.469437, 38.326225, 27.678827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.131012, 38.497807, 27.007557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.376930, 38.804337, 27.082155>,  <43.524479, 38.988255, 27.126913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.376930, 38.804337, 27.082155>,  <43.131012, 38.497807, 27.007557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.376930, 38.804337, 27.082155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034432, 0.210156, -0.977061,
		-0.787938, 0.607110, 0.102816,
		0.614791, 0.766324, 0.186494,
		43.561367, 39.034233, 27.138103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.875160, 39.035072, 26.643875>,  <43.131012, 38.497807, 27.007557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.875160, 39.035072, 26.643875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.262051, 39.110245, 26.712170>,  <43.494186, 39.155350, 26.753147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.262051, 39.110245, 26.712170>,  <42.875160, 39.035072, 26.643875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.262051, 39.110245, 26.712170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166062, 0.040465, -0.985285,
		-0.192074, 0.981348, 0.007931,
		0.967228, 0.187931, 0.170737,
		43.552219, 39.166622, 26.763391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.993355, 39.632938, 26.163170>,  <42.875160, 39.035072, 26.643875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.993355, 39.632938, 26.163170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.360790, 39.499016, 26.247175>,  <43.581249, 39.418663, 26.297579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.360790, 39.499016, 26.247175>,  <42.993355, 39.632938, 26.163170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.360790, 39.499016, 26.247175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259699, 0.110769, -0.959316,
		0.297921, 0.935754, 0.188700,
		0.918585, -0.334806, 0.210014,
		43.636368, 39.398575, 26.310179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.326027, 40.041607, 25.773802>,  <42.993355, 39.632938, 26.163170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.326027, 40.041607, 25.773802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.560516, 39.738621, 25.888752>,  <43.701210, 39.556828, 25.957722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.560516, 39.738621, 25.888752>,  <43.326027, 40.041607, 25.773802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.560516, 39.738621, 25.888752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417023, -0.021975, -0.908630,
		0.694571, 0.652506, 0.302998,
		0.586228, -0.757465, 0.287373,
		43.736385, 39.511383, 25.974964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.015896, 40.241467, 25.616285>,  <43.326027, 40.041607, 25.773802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.015896, 40.241467, 25.616285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.011070, 39.842033, 25.637051>,  <44.008175, 39.602375, 25.649509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.011070, 39.842033, 25.637051>,  <44.015896, 40.241467, 25.616285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.011070, 39.842033, 25.637051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308742, -0.053100, -0.949662,
		0.951069, 0.004569, 0.308944,
		-0.012066, -0.998579, 0.051912,
		44.007450, 39.542461, 25.652624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.573219, 40.063122, 25.099663>,  <44.015896, 40.241467, 25.616285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.573219, 40.063122, 25.099663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.365437, 39.728291, 25.168335>,  <44.240768, 39.527393, 25.209538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.365437, 39.728291, 25.168335>,  <44.573219, 40.063122, 25.099663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.365437, 39.728291, 25.168335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259773, -0.346100, -0.901517,
		0.814055, -0.423699, 0.397233,
		-0.519454, -0.837075, 0.171679,
		44.209599, 39.477169, 25.219839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.978207, 39.604553, 24.784967>,  <44.573219, 40.063122, 25.099663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.978207, 39.604553, 24.784967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.625614, 39.416935, 24.806795>,  <44.414059, 39.304363, 24.819891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.625614, 39.416935, 24.806795>,  <44.978207, 39.604553, 24.784967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.625614, 39.416935, 24.806795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141271, -0.372210, -0.917334,
		0.450586, -0.800907, 0.394360,
		-0.881485, -0.469049, 0.054568,
		44.361168, 39.276218, 24.823166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.076519, 38.876080, 24.737518>,  <44.978207, 39.604553, 24.784967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.076519, 38.876080, 24.737518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.699444, 38.925320, 24.613461>,  <44.473198, 38.954865, 24.539026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.699444, 38.925320, 24.613461>,  <45.076519, 38.876080, 24.737518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.699444, 38.925320, 24.613461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292580, -0.141968, -0.945644,
		-0.160449, -0.982186, 0.097812,
		-0.942684, 0.123110, -0.310146,
		44.416637, 38.962250, 24.520416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.537189, 38.291508, 25.111479>,  <45.076519, 38.876080, 24.737518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.537189, 38.291508, 25.111479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.276070, 38.079071, 25.327547>,  <45.119396, 37.951607, 25.457188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.276070, 38.079071, 25.327547>,  <45.537189, 38.291508, 25.111479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.276070, 38.079071, 25.327547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281754, -0.832142, -0.477654,
		0.703180, -0.159618, 0.692863,
		-0.652803, -0.531094, 0.540173,
		45.080227, 37.919743, 25.489599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.377174, 38.088856, 24.412224>,  <45.537189, 38.291508, 25.111479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.377174, 38.088856, 24.412224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.385757, 37.694939, 24.343254>,  <45.390907, 37.458588, 24.301872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.385757, 37.694939, 24.343254>,  <45.377174, 38.088856, 24.412224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.385757, 37.694939, 24.343254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369759, -0.168052, 0.913803,
		-0.928880, 0.044146, -0.367741,
		0.021459, -0.984789, -0.172423,
		45.392197, 37.399502, 24.291527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.707417, 37.801071, 24.601477>,  <45.377174, 38.088856, 24.412224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.707417, 37.801071, 24.601477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.954403, 37.487331, 24.625254>,  <45.102592, 37.299088, 24.639519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.954403, 37.487331, 24.625254>,  <44.707417, 37.801071, 24.601477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.954403, 37.487331, 24.625254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352078, -0.208009, 0.912564,
		-0.703408, -0.584401, -0.404591,
		0.617462, -0.784352, 0.059440,
		45.139641, 37.252026, 24.643085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.275719, 37.204571, 24.806585>,  <44.707417, 37.801071, 24.601477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.275719, 37.204571, 24.806585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.646175, 37.073284, 24.880920>,  <44.868450, 36.994511, 24.925522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.646175, 37.073284, 24.880920>,  <44.275719, 37.204571, 24.806585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.646175, 37.073284, 24.880920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223391, -0.080325, 0.971414,
		-0.303909, -0.941180, -0.147714,
		0.926141, -0.328219, 0.185839,
		44.924019, 36.974819, 24.936672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.272190, 36.487934, 25.139870>,  <44.275719, 37.204571, 24.806585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.272190, 36.487934, 25.139870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.628490, 36.633286, 25.249065>,  <44.842270, 36.720497, 25.314583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.628490, 36.633286, 25.249065>,  <44.272190, 36.487934, 25.139870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.628490, 36.633286, 25.249065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106591, -0.416867, 0.902696,
		0.441820, -0.833174, -0.332591,
		0.890749, 0.363378, 0.272988,
		44.895714, 36.742298, 25.330961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.606949, 35.911297, 25.507206>,  <44.272190, 36.487934, 25.139870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.606949, 35.911297, 25.507206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.780712, 36.248875, 25.633099>,  <44.884968, 36.451420, 25.708633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.780712, 36.248875, 25.633099>,  <44.606949, 35.911297, 25.507206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.780712, 36.248875, 25.633099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024050, -0.360167, 0.932578,
		0.900396, -0.397548, -0.176755,
		0.434406, 0.843940, 0.314732,
		44.911034, 36.502056, 25.727518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.203796, 35.751354, 25.874273>,  <44.606949, 35.911297, 25.507206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.203796, 35.751354, 25.874273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.085548, 36.114571, 25.992987>,  <45.014599, 36.332500, 26.064215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.085548, 36.114571, 25.992987>,  <45.203796, 35.751354, 25.874273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.085548, 36.114571, 25.992987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005428, -0.309066, 0.951025,
		0.955291, 0.282750, 0.086436,
		-0.295617, 0.908037, 0.296782,
		44.996864, 36.386982, 26.082022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.743015, 35.990231, 26.406210>,  <45.203796, 35.751354, 25.874273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.743015, 35.990231, 26.406210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.404106, 36.193913, 26.466654>,  <45.200760, 36.316124, 26.502920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.404106, 36.193913, 26.466654>,  <45.743015, 35.990231, 26.406210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.404106, 36.193913, 26.466654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065479, -0.182188, 0.981081,
		0.527104, 0.841139, 0.121021,
		-0.847274, 0.509208, 0.151109,
		45.149925, 36.346676, 26.511986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.818230, 36.157314, 27.063721>,  <45.743015, 35.990231, 26.406210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.818230, 36.157314, 27.063721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.450058, 36.293339, 26.986605>,  <45.229156, 36.374954, 26.940334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.450058, 36.293339, 26.986605>,  <45.818230, 36.157314, 27.063721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.450058, 36.293339, 26.986605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197226, 0.021835, 0.980115,
		0.337513, 0.940148, 0.046972,
		-0.920427, 0.340066, -0.192791,
		45.173931, 36.395359, 26.928768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.675922, 36.871552, 27.413784>,  <45.818230, 36.157314, 27.063721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.675922, 36.871552, 27.413784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.337151, 36.669044, 27.348789>,  <45.133888, 36.547543, 27.309792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.337151, 36.669044, 27.348789>,  <45.675922, 36.871552, 27.413784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.337151, 36.669044, 27.348789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208481, 0.035071, 0.977397,
		-0.489124, 0.861664, -0.135250,
		-0.846932, -0.506266, -0.162486,
		45.083073, 36.517166, 27.300043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.402607, 37.107990, 27.874310>,  <45.675922, 36.871552, 27.413784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.402607, 37.107990, 27.874310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.155609, 36.804535, 27.791199>,  <45.007412, 36.622463, 27.741333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.155609, 36.804535, 27.791199>,  <45.402607, 37.107990, 27.874310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.155609, 36.804535, 27.791199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305686, -0.011938, 0.952057,
		-0.724745, 0.651406, -0.224533,
		-0.617496, -0.758635, -0.207777,
		44.970360, 36.576942, 27.728865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.859741, 37.167274, 28.375635>,  <45.402607, 37.107990, 27.874310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.859741, 37.167274, 28.375635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.805294, 36.790878, 28.251698>,  <44.772625, 36.565041, 28.177334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.805294, 36.790878, 28.251698>,  <44.859741, 37.167274, 28.375635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.805294, 36.790878, 28.251698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419838, -0.228494, 0.878366,
		-0.897334, 0.249644, -0.363963,
		-0.136115, -0.940993, -0.309845,
		44.764458, 36.508579, 28.158745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.106274, 37.080997, 28.497316>,  <44.859741, 37.167274, 28.375635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.106274, 37.080997, 28.497316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.302578, 36.732929, 28.479609>,  <44.420361, 36.524090, 28.468983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.302578, 36.732929, 28.479609>,  <44.106274, 37.080997, 28.497316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.302578, 36.732929, 28.479609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342804, -0.239547, 0.908352,
		-0.801027, -0.430603, -0.415857,
		0.490756, -0.870171, -0.044271,
		44.449806, 36.471878, 28.466328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.629059, 36.469975, 28.693371>,  <44.106274, 37.080997, 28.497316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.629059, 36.469975, 28.693371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.010521, 36.440445, 28.810057>,  <44.239399, 36.422726, 28.880068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.010521, 36.440445, 28.810057>,  <43.629059, 36.469975, 28.693371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.010521, 36.440445, 28.810057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298564, -0.111308, 0.947877,
		-0.037506, -0.991040, -0.128191,
		0.953652, -0.073824, 0.291714,
		44.296616, 36.418297, 28.897572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.833866, 35.815311, 29.017189>,  <43.629059, 36.469975, 28.693371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.833866, 35.815311, 29.017189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.069752, 36.092884, 29.182446>,  <44.211285, 36.259430, 29.281599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.069752, 36.092884, 29.182446>,  <43.833866, 35.815311, 29.017189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.069752, 36.092884, 29.182446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337739, -0.252776, 0.906662,
		0.733597, -0.674210, 0.085302,
		0.589718, 0.693935, 0.413143,
		44.246666, 36.301064, 29.306389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.188545, 35.429928, 29.483177>,  <43.833866, 35.815311, 29.017189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.188545, 35.429928, 29.483177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.236446, 35.805733, 29.611542>,  <44.265186, 36.031216, 29.688560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.236446, 35.805733, 29.611542>,  <44.188545, 35.429928, 29.483177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.236446, 35.805733, 29.611542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167154, -0.299544, 0.939326,
		0.978631, -0.166128, 0.121171,
		0.119752, 0.939508, 0.320912,
		44.272373, 36.087585, 29.707815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.702003, 35.390423, 30.067591>,  <44.188545, 35.429928, 29.483177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.702003, 35.390423, 30.067591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.511074, 35.741489, 30.084892>,  <44.396515, 35.952129, 30.095274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.511074, 35.741489, 30.084892>,  <44.702003, 35.390423, 30.067591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.511074, 35.741489, 30.084892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116397, -0.111940, 0.986874,
		0.870984, 0.466024, 0.155589,
		-0.477323, 0.877662, 0.043254,
		44.367878, 36.004787, 30.097868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.749157, 35.511639, 30.725176>,  <44.702003, 35.390423, 30.067591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.749157, 35.511639, 30.725176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.497570, 35.812778, 30.647593>,  <44.346619, 35.993462, 30.601042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.497570, 35.812778, 30.647593>,  <44.749157, 35.511639, 30.725176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.497570, 35.812778, 30.647593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340799, -0.042760, 0.939163,
		0.698752, 0.656805, 0.283464,
		-0.628968, 0.752847, -0.193960,
		44.308880, 36.038631, 30.589405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.707821, 35.827240, 31.302052>,  <44.749157, 35.511639, 30.725176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.707821, 35.827240, 31.302052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.368374, 35.910976, 31.107725>,  <44.164703, 35.961216, 30.991129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.368374, 35.910976, 31.107725>,  <44.707821, 35.827240, 31.302052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.368374, 35.910976, 31.107725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527159, -0.258097, 0.809623,
		0.044097, 0.943167, 0.329382,
		-0.848622, 0.209339, -0.485817,
		44.113789, 35.973778, 30.961981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.331936, 36.295712, 31.742565>,  <44.707821, 35.827240, 31.302052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.331936, 36.295712, 31.742565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.054668, 36.126278, 31.509296>,  <43.888306, 36.024616, 31.369335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.054668, 36.126278, 31.509296>,  <44.331936, 36.295712, 31.742565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.054668, 36.126278, 31.509296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468066, -0.350734, 0.811110,
		-0.548111, 0.835202, 0.044855,
		-0.693173, -0.423583, -0.583171,
		43.846718, 35.999203, 31.334345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.625225, 36.412258, 32.004265>,  <44.331936, 36.295712, 31.742565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.625225, 36.412258, 32.004265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.563969, 36.105316, 31.755198>,  <43.527214, 35.921150, 31.605757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.563969, 36.105316, 31.755198>,  <43.625225, 36.412258, 32.004265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.563969, 36.105316, 31.755198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615820, -0.418688, 0.667432,
		-0.772860, 0.485664, -0.408433,
		-0.153141, -0.767353, -0.622669,
		43.518024, 35.875111, 31.568398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.917976, 36.417381, 31.901546>,  <43.625225, 36.412258, 32.004265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.917976, 36.417381, 31.901546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.051682, 36.053661, 31.802389>,  <43.131905, 35.835430, 31.742895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.051682, 36.053661, 31.802389>,  <42.917976, 36.417381, 31.901546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.051682, 36.053661, 31.802389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542511, -0.400711, 0.738317,
		-0.770682, -0.112306, -0.627245,
		0.334261, -0.909295, -0.247893,
		43.151958, 35.780872, 31.728022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.320900, 35.994980, 31.803436>,  <42.917976, 36.417381, 31.901546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.320900, 35.994980, 31.803436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.629745, 35.749905, 31.870913>,  <42.815052, 35.602859, 31.911398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.629745, 35.749905, 31.870913>,  <42.320900, 35.994980, 31.803436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.629745, 35.749905, 31.870913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536315, -0.485844, 0.690161,
		-0.340896, -0.623353, -0.703719,
		0.772112, -0.612688, 0.168692,
		42.861378, 35.566097, 31.921520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.026245, 35.350544, 31.728710>,  <42.320900, 35.994980, 31.803436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.026245, 35.350544, 31.728710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.360424, 35.333702, 31.947891>,  <42.560932, 35.323597, 32.079399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.360424, 35.333702, 31.947891>,  <42.026245, 35.350544, 31.728710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.360424, 35.333702, 31.947891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536736, -0.276718, 0.797084,
		0.118069, -0.960029, -0.253781,
		0.835449, -0.042102, 0.547954,
		42.611057, 35.321072, 32.112278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.880909, 34.693287, 32.228588>,  <42.026245, 35.350544, 31.728710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.880909, 34.693287, 32.228588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.176414, 34.911488, 32.386902>,  <42.353718, 35.042408, 32.481892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.176414, 34.911488, 32.386902>,  <41.880909, 34.693287, 32.228588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.176414, 34.911488, 32.386902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326307, -0.224322, 0.918261,
		0.589699, -0.807530, 0.012280,
		0.738768, 0.545505, 0.395785,
		42.398045, 35.075138, 32.505638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.174961, 34.248909, 32.657879>,  <41.880909, 34.693287, 32.228588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.174961, 34.248909, 32.657879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.255222, 34.624058, 32.771107>,  <42.303379, 34.849148, 32.839043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.255222, 34.624058, 32.771107>,  <42.174961, 34.248909, 32.657879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.255222, 34.624058, 32.771107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331706, -0.206840, 0.920428,
		0.921796, -0.278587, 0.269594,
		0.200657, 0.937873, 0.283073,
		42.315418, 34.905418, 32.856030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.363804, 34.115891, 33.333973>,  <42.174961, 34.248909, 32.657879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.363804, 34.115891, 33.333973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.343735, 34.513367, 33.374096>,  <42.331696, 34.751854, 33.398170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.343735, 34.513367, 33.374096>,  <42.363804, 34.115891, 33.333973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.343735, 34.513367, 33.374096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360619, -0.111679, 0.926003,
		0.931363, 0.010286, 0.363946,
		-0.050170, 0.993691, 0.100304,
		42.328682, 34.811474, 33.404186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.729965, 34.374378, 33.970692>,  <42.363804, 34.115891, 33.333973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.729965, 34.374378, 33.970692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.457375, 34.643654, 33.855865>,  <42.293819, 34.805218, 33.786972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.457375, 34.643654, 33.855865>,  <42.729965, 34.374378, 33.970692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.457375, 34.643654, 33.855865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209296, 0.196588, 0.957887,
		0.701269, 0.712863, 0.006924,
		-0.681481, 0.673186, -0.287061,
		42.252930, 34.845612, 33.769749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.731056, 34.848503, 34.477234>,  <42.729965, 34.374378, 33.970692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.731056, 34.848503, 34.477234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.376190, 34.920712, 34.307365>,  <42.163269, 34.964039, 34.205444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.376190, 34.920712, 34.307365>,  <42.731056, 34.848503, 34.477234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.376190, 34.920712, 34.307365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372628, 0.262559, 0.890062,
		0.272178, 0.947879, -0.165666,
		-0.887168, 0.180524, -0.424669,
		42.110039, 34.974869, 34.179966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.465046, 35.380966, 34.883820>,  <42.731056, 34.848503, 34.477234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.465046, 35.380966, 34.883820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.145218, 35.246071, 34.685040>,  <41.953320, 35.165134, 34.565773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.145218, 35.246071, 34.685040>,  <42.465046, 35.380966, 34.883820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.145218, 35.246071, 34.685040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566665, 0.149545, 0.810264,
		-0.198933, 0.929467, -0.310672,
		-0.799573, -0.337235, -0.496947,
		41.905346, 35.144901, 34.535957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.867908, 35.631554, 35.222004>,  <42.465046, 35.380966, 34.883820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.867908, 35.631554, 35.222004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.730007, 35.321007, 35.010948>,  <41.647266, 35.134678, 34.884315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.730007, 35.321007, 35.010948>,  <41.867908, 35.631554, 35.222004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.730007, 35.321007, 35.010948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649493, -0.208540, 0.731211,
		-0.677720, 0.594785, -0.432349,
		-0.344751, -0.776364, -0.527641,
		41.626583, 35.088097, 34.852657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.186401, 35.600040, 35.438438>,  <41.867908, 35.631554, 35.222004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.186401, 35.600040, 35.438438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.300488, 35.242435, 35.300220>,  <41.368938, 35.027874, 35.217289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.300488, 35.242435, 35.300220>,  <41.186401, 35.600040, 35.438438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.300488, 35.242435, 35.300220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500319, -0.446371, 0.741912,
		-0.817517, -0.038723, -0.574602,
		0.285215, -0.894010, -0.345542,
		41.386051, 34.974232, 35.196560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.580452, 35.251652, 35.508732>,  <41.186401, 35.600040, 35.438438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.580452, 35.251652, 35.508732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.875511, 34.983326, 35.478039>,  <41.052547, 34.822330, 35.459625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.875511, 34.983326, 35.478039>,  <40.580452, 35.251652, 35.508732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.875511, 34.983326, 35.478039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336323, -0.463594, 0.819736,
		-0.585463, -0.578868, -0.567578,
		0.737645, -0.670815, -0.076730,
		41.096806, 34.782082, 35.455021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.289825, 34.595043, 35.589996>,  <40.580452, 35.251652, 35.508732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.289825, 34.595043, 35.589996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.676674, 34.527977, 35.666496>,  <40.908783, 34.487740, 35.712395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.676674, 34.527977, 35.666496>,  <40.289825, 34.595043, 35.589996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.676674, 34.527977, 35.666496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254033, -0.600209, 0.758430,
		-0.012372, -0.782073, -0.623064,
		0.967116, -0.167662, 0.191246,
		40.966808, 34.477680, 35.723869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.247562, 33.950130, 35.932758>,  <40.289825, 34.595043, 35.589996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.247562, 33.950130, 35.932758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.608273, 34.093090, 36.029980>,  <40.824699, 34.178867, 36.088314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.608273, 34.093090, 36.029980>,  <40.247562, 33.950130, 35.932758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.608273, 34.093090, 36.029980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082663, -0.409349, 0.908625,
		0.424234, -0.839464, -0.339596,
		0.901771, 0.357398, 0.243052,
		40.878803, 34.200310, 36.102894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.636253, 33.381897, 36.095352>,  <40.247562, 33.950130, 35.932758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.636253, 33.381897, 36.095352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.788658, 33.692535, 36.296043>,  <40.880100, 33.878918, 36.416458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.788658, 33.692535, 36.296043>,  <40.636253, 33.381897, 36.095352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.788658, 33.692535, 36.296043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157029, -0.480424, 0.862864,
		0.911136, -0.407552, -0.061102,
		0.381016, 0.776592, 0.501729,
		40.902962, 33.925514, 36.446564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.155056, 33.177021, 36.672997>,  <40.636253, 33.381897, 36.095352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.155056, 33.177021, 36.672997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.016830, 33.539745, 36.769554>,  <40.933895, 33.757381, 36.827488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.016830, 33.539745, 36.769554>,  <41.155056, 33.177021, 36.672997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.016830, 33.539745, 36.769554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171608, -0.313973, 0.933794,
		0.922571, 0.281260, 0.264114,
		-0.345564, 0.906815, 0.241396,
		40.913162, 33.811790, 36.841972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.388344, 33.265362, 37.324253>,  <41.155056, 33.177021, 36.672997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.388344, 33.265362, 37.324253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.119915, 33.559971, 37.290310>,  <40.958858, 33.736736, 37.269943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.119915, 33.559971, 37.290310>,  <41.388344, 33.265362, 37.324253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.119915, 33.559971, 37.290310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387769, -0.251122, 0.886890,
		0.631902, 0.628072, 0.454120,
		-0.671070, 0.736521, -0.084862,
		40.918594, 33.780926, 37.264851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.428398, 33.708267, 37.974640>,  <41.388344, 33.265362, 37.324253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.428398, 33.708267, 37.974640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.058609, 33.729614, 37.823643>,  <40.836735, 33.742424, 37.733044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.058609, 33.729614, 37.823643>,  <41.428398, 33.708267, 37.974640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.058609, 33.729614, 37.823643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379968, -0.209993, 0.900848,
		-0.031191, 0.976245, 0.214412,
		-0.924474, 0.053372, -0.377492,
		40.781265, 33.745625, 37.710396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.025520, 33.802715, 38.559589>,  <41.428398, 33.708267, 37.974640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.025520, 33.802715, 38.559589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.762943, 33.693478, 38.278305>,  <40.605396, 33.627937, 38.109535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.762943, 33.693478, 38.278305>,  <41.025520, 33.802715, 38.559589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.762943, 33.693478, 38.278305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610442, -0.355380, 0.707860,
		-0.443216, 0.893939, 0.066581,
		-0.656445, -0.273091, -0.703208,
		40.566010, 33.611549, 38.067341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.320210, 33.962486, 38.814411>,  <41.025520, 33.802715, 38.559589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.320210, 33.962486, 38.814411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.217445, 33.708580, 38.522911>,  <40.155785, 33.556236, 38.348011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.217445, 33.708580, 38.522911>,  <40.320210, 33.962486, 38.814411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.217445, 33.708580, 38.522911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630939, -0.461023, 0.623999,
		-0.732060, 0.620108, -0.282055,
		-0.256913, -0.634763, -0.728746,
		40.140373, 33.518150, 38.304287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.589603, 33.825348, 38.857613>,  <40.320210, 33.962486, 38.814411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.589603, 33.825348, 38.857613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.705669, 33.500290, 38.655457>,  <39.775311, 33.305256, 38.534164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.705669, 33.500290, 38.655457>,  <39.589603, 33.825348, 38.857613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.705669, 33.500290, 38.655457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735886, -0.527087, 0.425031,
		-0.611781, 0.248578, -0.750954,
		0.290165, -0.812642, -0.505387,
		39.792717, 33.256496, 38.503841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.013325, 33.454338, 38.646236>,  <39.589603, 33.825348, 38.857613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.013325, 33.454338, 38.646236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.305653, 33.181309, 38.646267>,  <39.481049, 33.017490, 38.646286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.305653, 33.181309, 38.646267>,  <39.013325, 33.454338, 38.646236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.305653, 33.181309, 38.646267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615300, -0.658747, 0.432964,
		-0.295477, -0.316467, -0.901411,
		0.730820, -0.682569, 0.000077,
		39.524899, 32.976540, 38.646290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.758087, 32.771008, 38.546070>,  <39.013325, 33.454338, 38.646236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.758087, 32.771008, 38.546070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.114105, 32.668873, 38.697136>,  <39.327717, 32.607594, 38.787777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.114105, 32.668873, 38.697136>,  <38.758087, 32.771008, 38.546070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.114105, 32.668873, 38.697136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419387, -0.783371, 0.458742,
		0.178719, -0.566687, -0.804316,
		0.890041, -0.255334, 0.377665,
		39.381119, 32.592274, 38.810436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.033951, 32.063080, 38.311970>,  <38.758087, 32.771008, 38.546070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.033951, 32.063080, 38.311970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.145721, 32.148136, 38.686501>,  <39.212784, 32.199169, 38.911217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.145721, 32.148136, 38.686501>,  <39.033951, 32.063080, 38.311970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.145721, 32.148136, 38.686501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620945, -0.703780, 0.345140,
		0.732358, -0.677847, -0.064613,
		0.279425, 0.212645, 0.936324,
		39.229549, 32.211929, 38.967400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.634911, 31.677874, 38.776062>,  <39.033951, 32.063080, 38.311970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.634911, 31.677874, 38.776062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.877304, 31.801733, 39.069157>,  <39.022739, 31.876049, 39.245014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.877304, 31.801733, 39.069157>,  <38.634911, 31.677874, 38.776062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.877304, 31.801733, 39.069157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408604, -0.669161, 0.620699,
		0.682518, -0.675531, -0.278975,
		0.605980, 0.309648, 0.732739,
		39.059097, 31.894627, 39.288979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.979130, 31.115379, 39.005554>,  <38.634911, 31.677874, 38.776062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.979130, 31.115379, 39.005554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.978832, 31.362270, 39.320267>,  <38.978653, 31.510405, 39.509094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.978832, 31.362270, 39.320267>,  <38.979130, 31.115379, 39.005554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.978832, 31.362270, 39.320267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241984, -0.763514, 0.598740,
		0.970280, -0.189945, 0.149926,
		-0.000743, 0.617225, 0.786786,
		38.978611, 31.547438, 39.556301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.398968, 30.813068, 39.537701>,  <38.979130, 31.115379, 39.005554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.398968, 30.813068, 39.537701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.149113, 31.078604, 39.702209>,  <38.999199, 31.237925, 39.800915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.149113, 31.078604, 39.702209>,  <39.398968, 30.813068, 39.537701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.149113, 31.078604, 39.702209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069261, -0.571674, 0.817552,
		0.777836, 0.482190, 0.403068,
		-0.624639, 0.663839, 0.411272,
		38.961720, 31.277756, 39.825592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.592911, 30.898087, 40.253960>,  <39.398968, 30.813068, 39.537701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.592911, 30.898087, 40.253960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.205830, 30.994715, 40.225151>,  <38.973579, 31.052691, 40.207867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.205830, 30.994715, 40.225151>,  <39.592911, 30.898087, 40.253960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.205830, 30.994715, 40.225151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191457, -0.518512, 0.833360,
		0.163971, 0.820238, 0.548018,
		-0.967708, 0.241569, -0.072019,
		38.915516, 31.067184, 40.203545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.383087, 31.251947, 40.901081>,  <39.592911, 30.898087, 40.253960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.383087, 31.251947, 40.901081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.072968, 31.060251, 40.736526>,  <38.886894, 30.945234, 40.637794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.072968, 31.060251, 40.736526>,  <39.383087, 31.251947, 40.901081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.072968, 31.060251, 40.736526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130683, -0.515535, 0.846844,
		-0.617928, 0.710319, 0.337065,
		-0.775298, -0.479240, -0.411390,
		38.840378, 30.916479, 40.613110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.732307, 31.344826, 41.317669>,  <39.383087, 31.251947, 40.901081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.732307, 31.344826, 41.317669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.691448, 31.004868, 41.110889>,  <38.666935, 30.800892, 40.986820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.691448, 31.004868, 41.110889>,  <38.732307, 31.344826, 41.317669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.691448, 31.004868, 41.110889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217487, -0.488019, 0.845303,
		-0.970704, 0.198774, -0.134993,
		-0.102146, -0.849898, -0.516953,
		38.660805, 30.749899, 40.955803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.129574, 30.980558, 41.578716>,  <38.732307, 31.344826, 41.317669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.129574, 30.980558, 41.578716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.369827, 30.710299, 41.407726>,  <38.513981, 30.548143, 41.305130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.369827, 30.710299, 41.407726>,  <38.129574, 30.980558, 41.578716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.369827, 30.710299, 41.407726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097823, -0.468548, 0.878005,
		-0.793517, -0.569177, -0.215333,
		0.600634, -0.675648, -0.427479,
		38.550018, 30.507605, 41.279484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817886, 30.424145, 41.693825>,  <38.129574, 30.980558, 41.578716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.817886, 30.424145, 41.693825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.200352, 30.320795, 41.638691>,  <38.429829, 30.258785, 41.605610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.200352, 30.320795, 41.638691>,  <37.817886, 30.424145, 41.693825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.200352, 30.320795, 41.638691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048362, -0.603541, 0.795864,
		-0.288819, -0.754308, -0.589578,
		0.956162, -0.258374, -0.137835,
		38.487202, 30.243282, 41.597340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.952950, 29.969107, 42.224522>,  <37.817886, 30.424145, 41.693825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.952950, 29.969107, 42.224522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.323895, 29.984755, 42.075680>,  <38.546463, 29.994144, 41.986374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.323895, 29.984755, 42.075680>,  <37.952950, 29.969107, 42.224522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.323895, 29.984755, 42.075680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295176, -0.687636, 0.663346,
		-0.229922, -0.725001, -0.649238,
		0.927366, 0.039122, -0.372106,
		38.602104, 29.996490, 41.964046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.238178, 29.341698, 42.199249>,  <37.952950, 29.969107, 42.224522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.238178, 29.341698, 42.199249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.561787, 29.575596, 42.223118>,  <38.755951, 29.715935, 42.237438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.561787, 29.575596, 42.223118>,  <38.238178, 29.341698, 42.199249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.561787, 29.575596, 42.223118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360810, -0.574196, 0.734925,
		0.464007, -0.573039, -0.675518,
		0.809020, 0.584744, 0.059673,
		38.804493, 29.751019, 42.241020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.941120, 28.929783, 42.234753>,  <38.238178, 29.341698, 42.199249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.941120, 28.929783, 42.234753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.036213, 29.280766, 42.401390>,  <39.093269, 29.491356, 42.501373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.036213, 29.280766, 42.401390>,  <38.941120, 28.929783, 42.234753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.036213, 29.280766, 42.401390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457601, -0.479488, 0.748794,
		0.856788, 0.012625, -0.515514,
		0.237729, 0.877457, 0.416597,
		39.107533, 29.544003, 42.526371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.626278, 28.902042, 42.261547>,  <38.941120, 28.929783, 42.234753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.626278, 28.902042, 42.261547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.476009, 29.144543, 42.541927>,  <39.385849, 29.290043, 42.710155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.476009, 29.144543, 42.541927>,  <39.626278, 28.902042, 42.261547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.476009, 29.144543, 42.541927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523864, -0.485006, 0.700240,
		0.764487, 0.630260, -0.135393,
		-0.375667, 0.606252, 0.700951,
		39.363308, 29.326418, 42.752213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.298153, 29.066849, 42.666325>,  <39.626278, 28.902042, 42.261547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.298153, 29.066849, 42.666325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.993061, 29.202713, 42.886459>,  <39.810005, 29.284231, 43.018539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.993061, 29.202713, 42.886459>,  <40.298153, 29.066849, 42.666325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.993061, 29.202713, 42.886459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493486, -0.244326, 0.834731,
		0.417989, 0.908259, 0.018736,
		-0.762730, 0.339662, 0.550339,
		39.764240, 29.304611, 43.051559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.527691, 29.512251, 43.229862>,  <40.298153, 29.066849, 42.666325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.527691, 29.512251, 43.229862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.180771, 29.354055, 43.350777>,  <39.972618, 29.259138, 43.423325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.180771, 29.354055, 43.350777>,  <40.527691, 29.512251, 43.229862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.180771, 29.354055, 43.350777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431368, -0.294086, 0.852898,
		-0.248415, 0.870115, 0.425663,
		-0.867301, -0.395491, 0.302285,
		39.920582, 29.235409, 43.441463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.351353, 29.640503, 43.891880>,  <40.527691, 29.512251, 43.229862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.351353, 29.640503, 43.891880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.140778, 29.304617, 43.838600>,  <40.014431, 29.103086, 43.806633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.140778, 29.304617, 43.838600>,  <40.351353, 29.640503, 43.891880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.140778, 29.304617, 43.838600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369746, -0.367189, 0.853499,
		-0.765602, 0.400068, 0.503784,
		-0.526442, -0.839713, -0.133197,
		39.982845, 29.052704, 43.798641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.065495, 29.430128, 44.489395>,  <40.351353, 29.640503, 43.891880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.065495, 29.430128, 44.489395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.050076, 29.082350, 44.292389>,  <40.040825, 28.873682, 44.174183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.050076, 29.082350, 44.292389>,  <40.065495, 29.430128, 44.489395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.050076, 29.082350, 44.292389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368801, -0.470468, 0.801652,
		-0.928709, -0.150737, 0.338789,
		-0.038550, -0.869447, -0.492519,
		40.038509, 28.821516, 44.144634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.051609, 28.907089, 45.010307>,  <40.065495, 29.430128, 44.489395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.051609, 28.907089, 45.010307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.153950, 28.705116, 44.680561>,  <40.215355, 28.583933, 44.482712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.153950, 28.705116, 44.680561>,  <40.051609, 28.907089, 45.010307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.153950, 28.705116, 44.680561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499973, -0.660733, 0.559874,
		-0.827387, -0.555404, 0.083406,
		0.255848, -0.504933, -0.824369,
		40.230705, 28.553637, 44.433250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.267403, 28.606337, 45.684345>,  <40.051609, 28.907089, 45.010307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.267403, 28.606337, 45.684345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.246788, 28.234268, 45.538948>,  <40.234421, 28.011026, 45.451710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.246788, 28.234268, 45.538948>,  <40.267403, 28.606337, 45.684345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.246788, 28.234268, 45.538948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178992, 0.366686, -0.912964,
		0.982500, 0.018015, -0.185389,
		-0.051532, -0.930170, -0.363493,
		40.231327, 27.955217, 45.429901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.704533, 28.309248, 45.170803>,  <40.267403, 28.606337, 45.684345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.704533, 28.309248, 45.170803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.417370, 28.048891, 45.072056>,  <40.245071, 27.892677, 45.012810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.417370, 28.048891, 45.072056>,  <40.704533, 28.309248, 45.170803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.417370, 28.048891, 45.072056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026329, 0.379756, -0.924712,
		0.695637, -0.657361, -0.289768,
		-0.717911, -0.650893, -0.246865,
		40.201996, 27.853622, 44.997997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.771492, 28.081964, 44.422359>,  <40.704533, 28.309248, 45.170803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.771492, 28.081964, 44.422359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.392017, 28.072884, 44.548519>,  <40.164333, 28.067436, 44.624214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.392017, 28.072884, 44.548519>,  <40.771492, 28.081964, 44.422359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.392017, 28.072884, 44.548519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288523, 0.470307, -0.834006,
		-0.129401, -0.882211, -0.452724,
		-0.948689, -0.022700, 0.315396,
		40.107410, 28.066074, 44.643139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.279541, 27.709240, 44.026756>,  <40.771492, 28.081964, 44.422359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.279541, 27.709240, 44.026756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.057869, 27.990408, 44.205101>,  <39.924866, 28.159109, 44.312107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.057869, 27.990408, 44.205101>,  <40.279541, 27.709240, 44.026756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.057869, 27.990408, 44.205101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313291, 0.320116, -0.894078,
		-0.771191, -0.635162, 0.042817,
		-0.554178, 0.702919, 0.445861,
		39.891617, 28.201284, 44.338860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.704929, 27.802916, 43.594570>,  <40.279541, 27.709240, 44.026756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.704929, 27.802916, 43.594570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.718643, 28.124817, 43.831619>,  <39.726871, 28.317957, 43.973846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.718643, 28.124817, 43.831619>,  <39.704929, 27.802916, 43.594570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.718643, 28.124817, 43.831619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556345, 0.507965, -0.657611,
		-0.830244, -0.307157, 0.465133,
		0.034281, 0.804752, 0.592621,
		39.728928, 28.366243, 44.009407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.053078, 28.185535, 43.569294>,  <39.704929, 27.802916, 43.594570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.053078, 28.185535, 43.569294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.345757, 28.444637, 43.654175>,  <39.521366, 28.600098, 43.705105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.345757, 28.444637, 43.654175>,  <39.053078, 28.185535, 43.569294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.345757, 28.444637, 43.654175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379597, 0.645808, -0.662448,
		-0.566144, 0.404163, 0.718424,
		0.731701, 0.647753, 0.212201,
		39.565266, 28.638964, 43.717834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.743492, 28.882299, 43.568665>,  <39.053078, 28.185535, 43.569294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.743492, 28.882299, 43.568665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.117104, 29.025173, 43.567329>,  <39.341270, 29.110897, 43.566528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.117104, 29.025173, 43.567329>,  <38.743492, 28.882299, 43.568665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.117104, 29.025173, 43.567329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293233, 0.761388, -0.578189,
		-0.203979, 0.541023, 0.815896,
		0.934027, 0.357186, -0.003338,
		39.397312, 29.132330, 43.566326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.713997, 29.638447, 43.786476>,  <38.743492, 28.882299, 43.568665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.713997, 29.638447, 43.786476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.038345, 29.532858, 43.577549>,  <39.232952, 29.469505, 43.452194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.038345, 29.532858, 43.577549>,  <38.713997, 29.638447, 43.786476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.038345, 29.532858, 43.577549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307375, 0.567390, -0.763930,
		0.498012, 0.779992, 0.378940,
		0.810866, -0.263970, -0.522318,
		39.281605, 29.453667, 43.420853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.134590, 30.241297, 43.617062>,  <38.713997, 29.638447, 43.786476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.134590, 30.241297, 43.617062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.194618, 29.957724, 43.341412>,  <39.230637, 29.787580, 43.176022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.194618, 29.957724, 43.341412>,  <39.134590, 30.241297, 43.617062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.194618, 29.957724, 43.341412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196222, 0.661795, -0.723550,
		0.969008, 0.243805, -0.039792,
		0.150071, -0.708933, -0.689124,
		39.239639, 29.745043, 43.134674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.423512, 30.659683, 43.065735>,  <39.134590, 30.241297, 43.617062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.423512, 30.659683, 43.065735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.339390, 30.303148, 42.905090>,  <39.288918, 30.089228, 42.808704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.339390, 30.303148, 42.905090>,  <39.423512, 30.659683, 43.065735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.339390, 30.303148, 42.905090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269652, 0.447744, -0.852533,
		0.939713, -0.070995, -0.334513,
		-0.210302, -0.891339, -0.401608,
		39.276299, 30.035748, 42.784607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.803547, 30.571344, 42.335247>,  <39.423512, 30.659683, 43.065735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.803547, 30.571344, 42.335247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.491913, 30.320629, 42.330132>,  <39.304932, 30.170200, 42.327061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.491913, 30.320629, 42.330132>,  <39.803547, 30.571344, 42.335247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.491913, 30.320629, 42.330132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264788, 0.347483, -0.899524,
		0.568258, -0.697416, -0.436685,
		-0.779083, -0.626790, -0.012792,
		39.258186, 30.132593, 42.326294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.750221, 30.063461, 41.755344>,  <39.803547, 30.571344, 42.335247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.750221, 30.063461, 41.755344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.385429, 30.147543, 41.896259>,  <39.166553, 30.197992, 41.980808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.385429, 30.147543, 41.896259>,  <39.750221, 30.063461, 41.755344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.385429, 30.147543, 41.896259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251107, 0.393033, -0.884574,
		-0.324403, -0.895175, -0.305654,
		-0.911980, 0.210207, 0.352285,
		39.111835, 30.210606, 42.001945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.173817, 29.701159, 41.417122>,  <39.750221, 30.063461, 41.755344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.173817, 29.701159, 41.417122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.790745, 29.814117, 41.394867>,  <38.560902, 29.881893, 41.381512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.790745, 29.814117, 41.394867>,  <39.173817, 29.701159, 41.417122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.790745, 29.814117, 41.394867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135996, 0.273590, -0.952184,
		-0.253670, -0.919457, -0.300417,
		-0.957683, 0.282396, -0.055640,
		38.503441, 29.898836, 41.378174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.009861, 29.609814, 40.696701>,  <39.173817, 29.701159, 41.417122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.009861, 29.609814, 40.696701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.749187, 29.867086, 40.857513>,  <38.592781, 30.021450, 40.953999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.749187, 29.867086, 40.857513>,  <39.009861, 29.609814, 40.696701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.749187, 29.867086, 40.857513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119758, 0.610640, -0.782801,
		-0.748975, -0.461994, -0.474971,
		-0.651686, 0.643180, 0.402027,
		38.553680, 30.060040, 40.978123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429943, 29.692974, 40.259441>,  <39.009861, 29.609814, 40.696701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.429943, 29.692974, 40.259441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.511276, 30.028057, 40.462185>,  <38.560074, 30.229107, 40.583832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.511276, 30.028057, 40.462185>,  <38.429943, 29.692974, 40.259441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.511276, 30.028057, 40.462185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125997, 0.535752, -0.834922,
		-0.970970, 0.105902, 0.214483,
		0.203329, 0.837708, 0.506855,
		38.572273, 30.279369, 40.614243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.875992, 30.166805, 40.098335>,  <38.429943, 29.692974, 40.259441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.875992, 30.166805, 40.098335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.174053, 30.384001, 40.253208>,  <38.352890, 30.514318, 40.346130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.174053, 30.384001, 40.253208>,  <37.875992, 30.166805, 40.098335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.174053, 30.384001, 40.253208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032862, 0.609764, -0.791902,
		-0.666079, 0.577368, 0.472213,
		0.745157, 0.542987, 0.387178,
		38.397602, 30.546896, 40.369362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.586945, 30.995670, 40.251415>,  <37.875992, 30.166805, 40.098335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.586945, 30.995670, 40.251415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.986294, 30.972946, 40.253307>,  <38.225903, 30.959312, 40.254444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.986294, 30.972946, 40.253307>,  <37.586945, 30.995670, 40.251415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.986294, 30.972946, 40.253307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053157, 0.897755, -0.437276,
		0.020596, 0.436816, 0.899315,
		0.998374, -0.056811, 0.004730,
		38.285805, 30.955902, 40.254726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.745594, 31.530071, 39.951473>,  <37.586945, 30.995670, 40.251415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.745594, 31.530071, 39.951473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.117031, 31.424236, 40.055561>,  <38.339893, 31.360735, 40.118011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.117031, 31.424236, 40.055561>,  <37.745594, 31.530071, 39.951473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.117031, 31.424236, 40.055561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354210, 0.841076, -0.408811,
		-0.110695, 0.471789, 0.874735,
		0.928591, -0.264587, 0.260216,
		38.395607, 31.344860, 40.133625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.076973, 32.178349, 40.179134>,  <37.745594, 31.530071, 39.951473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.076973, 32.178349, 40.179134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.365211, 31.908001, 40.117249>,  <38.538155, 31.745792, 40.080116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.365211, 31.908001, 40.117249>,  <38.076973, 32.178349, 40.179134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.365211, 31.908001, 40.117249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526287, 0.678448, -0.512572,
		0.451396, 0.287937, 0.844591,
		0.720599, -0.675871, -0.154711,
		38.581390, 31.705240, 40.070835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.727478, 32.669086, 40.298573>,  <38.076973, 32.178349, 40.179134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.727478, 32.669086, 40.298573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.799408, 32.334126, 40.092110>,  <38.842567, 32.133148, 39.968231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.799408, 32.334126, 40.092110>,  <38.727478, 32.669086, 40.298573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.799408, 32.334126, 40.092110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542141, 0.522199, -0.658324,
		0.820820, -0.161449, 0.547895,
		0.179824, -0.837402, -0.516160,
		38.853355, 32.082905, 39.937263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.501396, 32.555973, 40.296574>,  <38.727478, 32.669086, 40.298573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.501396, 32.555973, 40.296574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.374256, 32.349140, 39.978680>,  <39.297974, 32.225040, 39.787945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.374256, 32.349140, 39.978680>,  <39.501396, 32.555973, 40.296574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.374256, 32.349140, 39.978680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706533, 0.429796, -0.562216,
		0.632284, -0.740204, 0.228725,
		-0.317849, -0.517082, -0.794731,
		39.278900, 32.194016, 39.740261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.019890, 32.679504, 39.878082>,  <39.501396, 32.555973, 40.296574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.019890, 32.679504, 39.878082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.776291, 32.512341, 39.608421>,  <39.630131, 32.412041, 39.446625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.776291, 32.512341, 39.608421>,  <40.019890, 32.679504, 39.878082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.776291, 32.512341, 39.608421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639767, 0.243598, -0.728943,
		0.468856, -0.875219, 0.119017,
		-0.608993, -0.417913, -0.674149,
		39.593594, 32.386967, 39.406178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.513687, 32.279613, 39.369774>,  <40.019890, 32.679504, 39.878082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.513687, 32.279613, 39.369774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.162861, 32.403896, 39.223228>,  <39.952366, 32.478466, 39.135303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.162861, 32.403896, 39.223228>,  <40.513687, 32.279613, 39.369774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.162861, 32.403896, 39.223228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470031, 0.397687, -0.787982,
		-0.099132, -0.863312, -0.494838,
		-0.877065, 0.310703, -0.366360,
		39.899742, 32.497108, 39.113319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.447460, 32.061878, 38.666370>,  <40.513687, 32.279613, 39.369774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.447460, 32.061878, 38.666370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.175247, 32.354824, 38.675411>,  <40.011921, 32.530594, 38.680836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.175247, 32.354824, 38.675411>,  <40.447460, 32.061878, 38.666370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.175247, 32.354824, 38.675411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369631, 0.369776, -0.852432,
		-0.632651, -0.571755, -0.522350,
		-0.680534, 0.732368, 0.022601,
		39.971088, 32.574535, 38.682190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.320698, 32.198376, 37.968410>,  <40.447460, 32.061878, 38.666370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.320698, 32.198376, 37.968410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.154243, 32.526028, 38.126324>,  <40.054371, 32.722618, 38.221073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.154243, 32.526028, 38.126324>,  <40.320698, 32.198376, 37.968410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.154243, 32.526028, 38.126324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276870, 0.527690, -0.803048,
		-0.866125, -0.224875, -0.446385,
		-0.416138, 0.819130, 0.394784,
		40.029404, 32.771767, 38.244759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.086700, 32.397026, 37.802628>,  <40.320698, 32.198376, 37.968410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.086700, 32.397026, 37.802628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.231899, 32.036549, 37.897350>,  <41.319019, 31.820261, 37.954185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.231899, 32.036549, 37.897350>,  <41.086700, 32.397026, 37.802628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.231899, 32.036549, 37.897350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481810, -0.035992, -0.875536,
		0.797553, 0.431916, 0.421140,
		0.363000, -0.901196, 0.236806,
		41.340801, 31.766190, 37.968391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.728081, 32.347519, 37.494045>,  <41.086700, 32.397026, 37.802628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.728081, 32.347519, 37.494045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.657707, 31.963987, 37.583221>,  <41.615482, 31.733870, 37.636726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.657707, 31.963987, 37.583221>,  <41.728081, 32.347519, 37.494045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.657707, 31.963987, 37.583221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496408, -0.281985, -0.821014,
		0.850074, -0.033776, 0.525579,
		-0.175936, -0.958824, 0.222941,
		41.604927, 31.676340, 37.650105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.253345, 31.948484, 37.648335>,  <41.728081, 32.347519, 37.494045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.253345, 31.948484, 37.648335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.979309, 31.720108, 37.467365>,  <41.814888, 31.583082, 37.358784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.979309, 31.720108, 37.467365>,  <42.253345, 31.948484, 37.648335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.979309, 31.720108, 37.467365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557779, -0.011665, -0.829907,
		0.468550, -0.820909, 0.326450,
		-0.685086, -0.570940, -0.452420,
		41.773785, 31.548826, 37.331638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.570988, 31.600969, 37.153648>,  <42.253345, 31.948484, 37.648335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.570988, 31.600969, 37.153648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.203114, 31.507673, 37.027294>,  <41.982391, 31.451696, 36.951481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.203114, 31.507673, 37.027294>,  <42.570988, 31.600969, 37.153648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.203114, 31.507673, 37.027294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365673, -0.215605, -0.905427,
		0.143073, -0.948216, 0.283577,
		-0.919681, -0.233239, -0.315890,
		41.927208, 31.437702, 36.932526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.584278, 31.018898, 36.769108>,  <42.570988, 31.600969, 37.153648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.584278, 31.018898, 36.769108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.275341, 31.238123, 36.640663>,  <42.089977, 31.369658, 36.563595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.275341, 31.238123, 36.640663>,  <42.584278, 31.018898, 36.769108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.275341, 31.238123, 36.640663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411078, 0.045865, -0.910445,
		-0.484252, -0.835180, -0.260719,
		-0.772343, 0.548061, -0.321114,
		42.043636, 31.402542, 36.544331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.926983, 30.656256, 37.277279>,  <42.584278, 31.018898, 36.769108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.926983, 30.656256, 37.277279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.021503, 30.554972, 37.652523>,  <43.078217, 30.494202, 37.877670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.021503, 30.554972, 37.652523>,  <42.926983, 30.656256, 37.277279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.021503, 30.554972, 37.652523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971547, 0.045591, -0.232418,
		0.016081, 0.966337, 0.256777,
		0.236301, -0.253209, 0.938108,
		43.092392, 30.479010, 37.933956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.305691, 31.180346, 37.688633>,  <42.926983, 30.656256, 37.277279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.305691, 31.180346, 37.688633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.400661, 30.806393, 37.794182>,  <43.457645, 30.582022, 37.857510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.400661, 30.806393, 37.794182>,  <43.305691, 31.180346, 37.688633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.400661, 30.806393, 37.794182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959069, 0.182449, -0.216561,
		0.154316, 0.304486, 0.939934,
		0.237430, -0.934880, 0.263868,
		43.471889, 30.525928, 37.873341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.992424, 31.435034, 37.761574>,  <43.305691, 31.180346, 37.688633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.992424, 31.435034, 37.761574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.162544, 31.790634, 37.693699>,  <44.264618, 32.003994, 37.652973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.162544, 31.790634, 37.693699>,  <43.992424, 31.435034, 37.761574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.162544, 31.790634, 37.693699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904860, 0.421536, -0.059473,
		0.018656, 0.178834, 0.983702,
		0.425301, 0.889003, -0.169684,
		44.290134, 32.057335, 37.642796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.613930, 31.920780, 38.100117>,  <43.992424, 31.435034, 37.761574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.613930, 31.920780, 38.100117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.768898, 32.127464, 37.794720>,  <43.861877, 32.251476, 37.611481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.768898, 32.127464, 37.794720>,  <43.613930, 31.920780, 38.100117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.768898, 32.127464, 37.794720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896791, 0.403209, -0.182179,
		0.213712, 0.755270, 0.619592,
		0.387419, 0.516711, -0.763490,
		43.885124, 32.282478, 37.565674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.494343, 32.686420, 38.207706>,  <43.613930, 31.920780, 38.100117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.494343, 32.686420, 38.207706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.507015, 32.568459, 37.825706>,  <43.514618, 32.497681, 37.596504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.507015, 32.568459, 37.825706>,  <43.494343, 32.686420, 38.207706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.507015, 32.568459, 37.825706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707910, 0.667897, -0.229731,
		0.705591, 0.683334, -0.187604,
		0.031683, -0.294903, -0.955002,
		43.516521, 32.479988, 37.539207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.660084, 33.266937, 37.724083>,  <43.494343, 32.686420, 38.207706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.660084, 33.266937, 37.724083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.497219, 32.994534, 37.480625>,  <43.399502, 32.831093, 37.334549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.497219, 32.994534, 37.480625>,  <43.660084, 33.266937, 37.724083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.497219, 32.994534, 37.480625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640233, 0.688062, -0.341574,
		0.651398, 0.250595, -0.716158,
		-0.407164, -0.681008, -0.608641,
		43.375069, 32.790230, 37.298031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.658470, 33.452328, 37.048779>,  <43.660084, 33.266937, 37.724083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.658470, 33.452328, 37.048779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.353237, 33.199242, 37.101505>,  <43.170097, 33.047390, 37.133141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.353237, 33.199242, 37.101505>,  <43.658470, 33.452328, 37.048779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.353237, 33.199242, 37.101505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600003, 0.617723, -0.508345,
		0.240215, -0.466998, -0.851005,
		-0.763081, -0.632718, 0.131814,
		43.124313, 33.009426, 37.141048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.571640, 33.643341, 36.204094>,  <43.658470, 33.452328, 37.048779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.571640, 33.643341, 36.204094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.862953, 33.631733, 36.477959>,  <44.037743, 33.624767, 36.642277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.862953, 33.631733, 36.477959>,  <43.571640, 33.643341, 36.204094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.862953, 33.631733, 36.477959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657290, 0.312188, -0.685936,
		-0.193839, 0.949577, 0.246434,
		0.728283, -0.029017, 0.684662,
		44.081440, 33.623028, 36.683357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.077751, 34.286835, 36.232510>,  <43.571640, 33.643341, 36.204094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.077751, 34.286835, 36.232510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.283813, 33.969669, 36.362679>,  <44.407452, 33.779369, 36.440781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.283813, 33.969669, 36.362679>,  <44.077751, 34.286835, 36.232510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.283813, 33.969669, 36.362679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808098, 0.322799, -0.492726,
		0.285642, 0.516807, 0.807044,
		0.515157, -0.792913, 0.325426,
		44.438362, 33.731796, 36.460308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.807949, 34.418274, 36.658062>,  <44.077751, 34.286835, 36.232510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.807949, 34.418274, 36.658062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.767952, 34.090736, 36.431965>,  <44.743954, 33.894215, 36.296307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.767952, 34.090736, 36.431965>,  <44.807949, 34.418274, 36.658062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.767952, 34.090736, 36.431965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779646, 0.288471, -0.555820,
		0.618185, -0.496265, 0.609564,
		-0.099992, -0.818844, -0.565240,
		44.737953, 33.845085, 36.262394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.387249, 34.008839, 36.827644>,  <44.807949, 34.418274, 36.658062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.387249, 34.008839, 36.827644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.252632, 34.033173, 36.451763>,  <45.171864, 34.047775, 36.226234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.252632, 34.033173, 36.451763>,  <45.387249, 34.008839, 36.827644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.252632, 34.033173, 36.451763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783781, 0.571217, -0.243716,
		0.521947, -0.818541, -0.239920,
		-0.336538, 0.060838, -0.939703,
		45.151672, 34.051426, 36.169853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.942741, 33.704403, 36.398090>,  <45.387249, 34.008839, 36.827644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.942741, 33.704403, 36.398090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.701569, 34.001865, 36.282536>,  <45.556866, 34.180344, 36.213203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.701569, 34.001865, 36.282536>,  <45.942741, 33.704403, 36.398090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.701569, 34.001865, 36.282536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793022, 0.598198, -0.115221,
		0.087128, -0.298564, -0.950404,
		-0.602930, 0.743652, -0.288888,
		45.520691, 34.224960, 36.195869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.126377, 33.977226, 35.760902>,  <45.942741, 33.704403, 36.398090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.126377, 33.977226, 35.760902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.922695, 34.258949, 35.958755>,  <45.800488, 34.427982, 36.077469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.922695, 34.258949, 35.958755>,  <46.126377, 33.977226, 35.760902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.922695, 34.258949, 35.958755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745110, 0.648395, -0.156188,
		-0.430723, 0.289026, -0.854951,
		-0.509204, 0.704307, 0.494634,
		45.769936, 34.470242, 36.107147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.692577, 34.458599, 35.450451>,  <46.126377, 33.977226, 35.760902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.692577, 34.458599, 35.450451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.782833, 34.706787, 35.150024>,  <46.836987, 34.855701, 34.969769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.782833, 34.706787, 35.150024>,  <46.692577, 34.458599, 35.450451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.782833, 34.706787, 35.150024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892932, 0.176565, 0.414123,
		0.389563, -0.764095, -0.514198,
		0.225639, 0.620471, -0.751068,
		46.850525, 34.892929, 34.924706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.265289, 34.270794, 35.196785>,  <46.692577, 34.458599, 35.450451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.265289, 34.270794, 35.196785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.246292, 34.666607, 35.142284>,  <47.234894, 34.904095, 35.109585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.246292, 34.666607, 35.142284>,  <47.265289, 34.270794, 35.196785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.246292, 34.666607, 35.142284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927137, 0.094428, 0.362631,
		0.371702, -0.109103, -0.921919,
		-0.047491, 0.989535, -0.136253,
		47.232044, 34.963467, 35.101410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.008720, 34.552906, 34.956684>,  <47.265289, 34.270794, 35.196785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.008720, 34.552906, 34.956684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.796570, 34.860588, 35.099243>,  <47.669277, 35.045197, 35.184776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.796570, 34.860588, 35.099243>,  <48.008720, 34.552906, 34.956684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.796570, 34.860588, 35.099243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847445, 0.469617, 0.247581,
		0.023073, 0.433336, -0.900937,
		-0.530381, 0.769207, 0.356393,
		47.637455, 35.091351, 35.206161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<40.968494, 34.949974, 28.552568> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.749622, 35.282841, 28.516569>,  <40.618298, 35.482559, 28.494968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.749622, 35.282841, 28.516569>,  <40.968494, 34.949974, 28.552568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.749622, 35.282841, 28.516569> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270875, -0.074312, 0.959742,
		0.791973, 0.549530, 0.266074,
		-0.547180, 0.832162, -0.090001,
		40.585468, 35.532490, 28.489569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.167404, 35.383160, 29.067329>,  <40.968494, 34.949974, 28.552568>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.167404, 35.383160, 29.067329> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.802338, 35.495258, 28.948326>,  <40.583298, 35.562515, 28.876925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.802338, 35.495258, 28.948326>,  <41.167404, 35.383160, 29.067329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.802338, 35.495258, 28.948326> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350415, -0.161846, 0.922505,
		0.210375, 0.946187, 0.245912,
		-0.912662, 0.280243, -0.297510,
		40.528538, 35.579330, 28.859074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.973522, 35.809502, 29.644506>,  <41.167404, 35.383160, 29.067329>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.973522, 35.809502, 29.644506> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.630600, 35.724503, 29.456945>,  <40.424847, 35.673504, 29.344408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.630600, 35.724503, 29.456945>,  <40.973522, 35.809502, 29.644506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.630600, 35.724503, 29.456945> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453950, -0.117549, 0.883239,
		-0.242804, 0.970066, 0.004313,
		-0.857308, -0.212496, -0.468902,
		40.373409, 35.660755, 29.316275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.502941, 36.211617, 29.966396>,  <40.973522, 35.809502, 29.644506>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.502941, 36.211617, 29.966396> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.280342, 35.937267, 29.778831>,  <40.146782, 35.772655, 29.666292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.280342, 35.937267, 29.778831>,  <40.502941, 36.211617, 29.966396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.280342, 35.937267, 29.778831> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445391, -0.230163, 0.865246,
		-0.701379, 0.690361, -0.177397,
		-0.556502, -0.685877, -0.468912,
		40.113392, 35.731503, 29.638159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.793533, 36.450619, 30.169983>,  <40.502941, 36.211617, 29.966396>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.793533, 36.450619, 30.169983> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.808155, 36.057682, 30.096588>,  <39.816929, 35.821918, 30.052551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.808155, 36.057682, 30.096588>,  <39.793533, 36.450619, 30.169983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.808155, 36.057682, 30.096588> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490544, -0.177606, 0.853125,
		-0.870649, 0.058825, -0.488374,
		0.036553, -0.982342, -0.183489,
		39.819122, 35.762978, 30.041542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.095047, 36.161896, 30.255873>,  <39.793533, 36.450619, 30.169983>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.095047, 36.161896, 30.255873> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.334854, 35.842636, 30.279678>,  <39.478737, 35.651081, 30.293962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.334854, 35.842636, 30.279678>,  <39.095047, 36.161896, 30.255873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.334854, 35.842636, 30.279678> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629705, -0.424479, 0.650606,
		-0.494018, -0.427524, -0.757080,
		0.599515, -0.798148, 0.059514,
		39.514709, 35.603191, 30.297533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.680931, 35.565369, 30.141354>,  <39.095047, 36.161896, 30.255873>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.680931, 35.565369, 30.141354> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.002262, 35.450218, 30.349890>,  <39.195061, 35.381126, 30.475012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.002262, 35.450218, 30.349890>,  <38.680931, 35.565369, 30.141354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.002262, 35.450218, 30.349890> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594840, -0.430257, 0.679003,
		0.028841, -0.855574, -0.516876,
		0.803327, -0.287875, 0.521338,
		39.243259, 35.363857, 30.506290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.473747, 34.878120, 30.380207>,  <38.680931, 35.565369, 30.141354>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.473747, 34.878120, 30.380207> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.788052, 34.965858, 30.611538>,  <38.976635, 35.018501, 30.750338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.788052, 34.965858, 30.611538>,  <38.473747, 34.878120, 30.380207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.788052, 34.965858, 30.611538> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481066, -0.370988, 0.794320,
		0.388783, -0.902361, -0.185989,
		0.785763, 0.219345, 0.578329,
		39.023781, 35.031662, 30.785036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.536579, 34.330193, 30.748688>,  <38.473747, 34.878120, 30.380207>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.536579, 34.330193, 30.748688> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.748852, 34.603649, 30.949093>,  <38.876217, 34.767723, 31.069336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.748852, 34.603649, 30.949093>,  <38.536579, 34.330193, 30.748688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.748852, 34.603649, 30.949093> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197920, -0.474817, 0.857541,
		0.824139, -0.554241, -0.116670,
		0.530681, 0.683642, 0.501010,
		38.908054, 34.808743, 31.099396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.982426, 33.844845, 31.152910>,  <38.536579, 34.330193, 30.748688>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.982426, 33.844845, 31.152910> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.941692, 34.209156, 31.312969>,  <38.917252, 34.427742, 31.409004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.941692, 34.209156, 31.312969>,  <38.982426, 33.844845, 31.152910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.941692, 34.209156, 31.312969> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355994, -0.408964, 0.840248,
		0.928923, -0.056888, 0.365875,
		-0.101830, 0.910775, 0.400148,
		38.911144, 34.482388, 31.433014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.366379, 33.902344, 31.808771>,  <38.982426, 33.844845, 31.152910>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.366379, 33.902344, 31.808771> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.085693, 34.187279, 31.813931>,  <38.917282, 34.358238, 31.817026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.085693, 34.187279, 31.813931>,  <39.366379, 33.902344, 31.808771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.085693, 34.187279, 31.813931> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334719, -0.345602, 0.876654,
		0.628932, 0.610847, 0.480948,
		-0.701718, 0.712338, 0.012898,
		38.875179, 34.400982, 31.817801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.471832, 34.195976, 32.518623>,  <39.366379, 33.902344, 31.808771>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.471832, 34.195976, 32.518623> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.102463, 34.291180, 32.398197>,  <38.880840, 34.348301, 32.325943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.102463, 34.291180, 32.398197>,  <39.471832, 34.195976, 32.518623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.102463, 34.291180, 32.398197> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344961, -0.170955, 0.922917,
		0.168193, 0.956100, 0.239967,
		-0.923425, 0.238007, -0.301063,
		38.825436, 34.362583, 32.307877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.241333, 34.537540, 33.035816>,  <39.471832, 34.195976, 32.518623>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.241333, 34.537540, 33.035816> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.905499, 34.439461, 32.841923>,  <38.703999, 34.380615, 32.725586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.905499, 34.439461, 32.841923>,  <39.241333, 34.537540, 33.035816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.905499, 34.439461, 32.841923> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405769, -0.310208, 0.859722,
		-0.361169, 0.918504, 0.160955,
		-0.839588, -0.245195, -0.484738,
		38.653622, 34.365902, 32.696503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.669033, 34.927643, 33.350948>,  <39.241333, 34.537540, 33.035816>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.669033, 34.927643, 33.350948> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.536697, 34.588772, 33.184658>,  <38.457294, 34.385448, 33.084885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.536697, 34.588772, 33.184658>,  <38.669033, 34.927643, 33.350948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.536697, 34.588772, 33.184658> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399533, -0.273362, 0.875012,
		-0.854938, 0.455586, -0.248037,
		-0.330840, -0.847180, -0.415729,
		38.437447, 34.334618, 33.059940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.992744, 34.917210, 33.604099>,  <38.669033, 34.927643, 33.350948>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.992744, 34.917210, 33.604099> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.082268, 34.549866, 33.473549>,  <38.135983, 34.329460, 33.395218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.082268, 34.549866, 33.473549>,  <37.992744, 34.917210, 33.604099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.082268, 34.549866, 33.473549> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273754, -0.380624, 0.883281,
		-0.935397, -0.108341, -0.336592,
		0.223810, -0.918361, -0.326376,
		38.149410, 34.274357, 33.375637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.560223, 34.552929, 33.943130>,  <37.992744, 34.917210, 33.604099>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.560223, 34.552929, 33.943130> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.809147, 34.276524, 33.796036>,  <37.958500, 34.110680, 33.707779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.809147, 34.276524, 33.796036>,  <37.560223, 34.552929, 33.943130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.809147, 34.276524, 33.796036> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143851, -0.562745, 0.814018,
		-0.769440, -0.453672, -0.449604,
		0.622309, -0.691014, -0.367737,
		37.995838, 34.069218, 33.685715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.181995, 33.884018, 34.077908>,  <37.560223, 34.552929, 33.943130>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.181995, 33.884018, 34.077908> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.577309, 33.836445, 34.039635>,  <37.814495, 33.807903, 34.016670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.577309, 33.836445, 34.039635>,  <37.181995, 33.884018, 34.077908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.577309, 33.836445, 34.039635> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032439, -0.448869, 0.893009,
		-0.149151, -0.885648, -0.439751,
		0.988282, -0.118928, -0.095679,
		37.873795, 33.800766, 34.010933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.258614, 33.173546, 34.341469>,  <37.181995, 33.884018, 34.077908>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.258614, 33.173546, 34.341469> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.613598, 33.357323, 34.326866>,  <37.826588, 33.467587, 34.318104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.613598, 33.357323, 34.326866>,  <37.258614, 33.173546, 34.341469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.613598, 33.357323, 34.326866> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295204, -0.505811, 0.810562,
		0.353938, -0.730117, -0.584514,
		0.887459, 0.459439, -0.036508,
		37.879837, 33.495155, 34.315914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.614468, 32.644974, 34.593582>,  <37.258614, 33.173546, 34.341469>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.614468, 32.644974, 34.593582> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.825222, 32.982147, 34.637123>,  <37.951675, 33.184452, 34.663250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.825222, 32.982147, 34.637123>,  <37.614468, 32.644974, 34.593582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.825222, 32.982147, 34.637123> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211718, -0.254204, 0.943692,
		0.823146, -0.474169, -0.312401,
		0.526884, 0.842937, 0.108857,
		37.983288, 33.235027, 34.669781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.144421, 32.472828, 35.022877>,  <37.614468, 32.644974, 34.593582>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.144421, 32.472828, 35.022877> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.169296, 32.868256, 35.077816>,  <38.184219, 33.105511, 35.110779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.169296, 32.868256, 35.077816>,  <38.144421, 32.472828, 35.022877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.169296, 32.868256, 35.077816> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252937, -0.148732, 0.955982,
		0.965482, -0.024707, -0.259294,
		0.062185, 0.988569, 0.137349,
		38.187950, 33.164825, 35.119022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.745621, 32.614288, 35.308609>,  <38.144421, 32.472828, 35.022877>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.745621, 32.614288, 35.308609> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.532345, 32.937992, 35.407249>,  <38.404377, 33.132214, 35.466434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.532345, 32.937992, 35.407249>,  <38.745621, 32.614288, 35.308609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.532345, 32.937992, 35.407249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424593, 0.003863, 0.905376,
		0.731729, 0.587442, -0.345665,
		-0.533192, 0.809257, 0.246597,
		38.372387, 33.180771, 35.481228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.747620, 32.432121, 36.119179>,  <38.745621, 32.614288, 35.308609>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.747620, 32.432121, 36.119179> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.086052, 32.252121, 36.233479>,  <39.289112, 32.144119, 36.302059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.086052, 32.252121, 36.233479>,  <38.747620, 32.432121, 36.119179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.086052, 32.252121, 36.233479> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423297, 0.241352, -0.873252,
		0.323999, 0.859795, 0.394686,
		0.846076, -0.450002, 0.285751,
		39.339874, 32.117119, 36.319202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.355164, 32.892353, 35.896946>,  <38.747620, 32.432121, 36.119179>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.355164, 32.892353, 35.896946> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.518269, 32.527721, 35.917957>,  <39.616131, 32.308945, 35.930565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.518269, 32.527721, 35.917957>,  <39.355164, 32.892353, 35.896946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.518269, 32.527721, 35.917957> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602594, 0.225433, -0.765546,
		0.686012, 0.343814, 0.641233,
		0.407760, -0.911577, 0.052531,
		39.640598, 32.254250, 35.933716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.058350, 32.982964, 35.750488>,  <39.355164, 32.892353, 35.896946>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.058350, 32.982964, 35.750488> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.009964, 32.590187, 35.692295>,  <39.980934, 32.354523, 35.657379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.009964, 32.590187, 35.692295>,  <40.058350, 32.982964, 35.750488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.009964, 32.590187, 35.692295> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549718, 0.055771, -0.833486,
		0.826546, -0.180795, 0.533043,
		-0.120962, -0.981938, -0.145484,
		39.973675, 32.295605, 35.648651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.687038, 32.759827, 35.671062>,  <40.058350, 32.982964, 35.750488>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.687038, 32.759827, 35.671062> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.461338, 32.481808, 35.492836>,  <40.325916, 32.314995, 35.385899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.461338, 32.481808, 35.492836>,  <40.687038, 32.759827, 35.671062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.461338, 32.481808, 35.492836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514563, 0.125984, -0.848147,
		0.645637, -0.707840, 0.286559,
		-0.564251, -0.695047, -0.445567,
		40.292065, 32.273293, 35.359165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.112331, 32.258457, 35.356216>,  <40.687038, 32.759827, 35.671062>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.112331, 32.258457, 35.356216> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.775139, 32.198734, 35.149494>,  <40.572823, 32.162899, 35.025459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.775139, 32.198734, 35.149494>,  <41.112331, 32.258457, 35.356216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.775139, 32.198734, 35.149494> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525764, -0.025426, -0.850250,
		0.113808, -0.988464, 0.099934,
		-0.842983, -0.149306, -0.516805,
		40.522243, 32.153942, 34.994453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.271008, 31.651611, 34.924263>,  <41.112331, 32.258457, 35.356216>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.271008, 31.651611, 34.924263> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.959789, 31.835163, 34.752644>,  <40.773060, 31.945293, 34.649673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.959789, 31.835163, 34.752644>,  <41.271008, 31.651611, 34.924263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.959789, 31.835163, 34.752644> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563019, 0.206386, -0.800259,
		-0.278672, -0.864196, -0.418934,
		-0.778043, 0.458878, -0.429045,
		40.726376, 31.972826, 34.623932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.214001, 31.389475, 34.167076>,  <41.271008, 31.651611, 34.924263>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.214001, 31.389475, 34.167076> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.996552, 31.724909, 34.181252>,  <40.866081, 31.926168, 34.189754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.996552, 31.724909, 34.181252>,  <41.214001, 31.389475, 34.167076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.996552, 31.724909, 34.181252> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278938, 0.220320, -0.934694,
		-0.791626, -0.498233, -0.353683,
		-0.543618, 0.838584, 0.035435,
		40.833466, 31.976484, 34.191883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.822639, 31.344988, 33.547836>,  <41.214001, 31.389475, 34.167076>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.822639, 31.344988, 33.547836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.798454, 31.729116, 33.656742>,  <40.783943, 31.959593, 33.722084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.798454, 31.729116, 33.656742>,  <40.822639, 31.344988, 33.547836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.798454, 31.729116, 33.656742> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169438, 0.278677, -0.945320,
		-0.983685, -0.011022, -0.179563,
		-0.060459, 0.960321, 0.272263,
		40.780315, 32.017212, 33.738422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.283375, 31.655893, 33.098965>,  <40.822639, 31.344988, 33.547836>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.283375, 31.655893, 33.098965> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.522228, 31.949631, 33.228065>,  <40.665539, 32.125874, 33.305527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.522228, 31.949631, 33.228065>,  <40.283375, 31.655893, 33.098965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.522228, 31.949631, 33.228065> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077695, 0.347519, -0.934448,
		-0.798370, 0.583067, 0.150461,
		0.597134, 0.734345, 0.322750,
		40.701370, 32.169933, 33.324890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.069431, 32.291023, 32.694939>,  <40.283375, 31.655893, 33.098965>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.069431, 32.291023, 32.694939> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.435642, 32.362797, 32.838947>,  <40.655369, 32.405861, 32.925350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.435642, 32.362797, 32.838947>,  <40.069431, 32.291023, 32.694939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.435642, 32.362797, 32.838947> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297139, 0.301614, -0.905945,
		-0.271144, 0.936393, 0.222820,
		0.915527, 0.179433, 0.360020,
		40.710300, 32.416626, 32.946953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.251778, 32.754368, 32.297966>,  <40.069431, 32.291023, 32.694939>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.251778, 32.754368, 32.297966> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.603382, 32.638493, 32.449444>,  <40.814346, 32.568966, 32.540333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.603382, 32.638493, 32.449444>,  <40.251778, 32.754368, 32.297966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.603382, 32.638493, 32.449444> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463673, 0.334330, -0.820507,
		0.111083, 0.896829, 0.428203,
		0.879016, -0.289690, 0.378697,
		40.867088, 32.551586, 32.563053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.713226, 33.163712, 32.050926>,  <40.251778, 32.754368, 32.297966>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.713226, 33.163712, 32.050926> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.961277, 32.864067, 32.144108>,  <41.110107, 32.684280, 32.200016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.961277, 32.864067, 32.144108>,  <40.713226, 33.163712, 32.050926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.961277, 32.864067, 32.144108> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567245, 0.223043, -0.792771,
		0.541917, 0.623763, 0.563246,
		0.620129, -0.749114, 0.232955,
		41.147316, 32.639332, 32.213993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.405132, 33.424988, 31.914921>,  <40.713226, 33.163712, 32.050926>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.405132, 33.424988, 31.914921> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.419800, 33.025406, 31.925882>,  <41.428600, 32.785656, 31.932459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.419800, 33.025406, 31.925882>,  <41.405132, 33.424988, 31.914921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.419800, 33.025406, 31.925882> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618995, 0.001174, -0.785394,
		0.784538, 0.045760, 0.618390,
		0.036665, -0.998952, 0.027404,
		41.430798, 32.725719, 31.934103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.091896, 33.318089, 31.918970>,  <41.405132, 33.424988, 31.914921>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.091896, 33.318089, 31.918970> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.922634, 32.982231, 31.782768>,  <41.821075, 32.780716, 31.701048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.922634, 32.982231, 31.782768>,  <42.091896, 33.318089, 31.918970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.922634, 32.982231, 31.782768> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598174, 0.023383, -0.801025,
		0.680536, -0.542638, 0.492357,
		-0.423154, -0.839641, -0.340505,
		41.795689, 32.730339, 31.680616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.591175, 33.025986, 31.465483>,  <42.091896, 33.318089, 31.918970>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.591175, 33.025986, 31.465483> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.271587, 32.808681, 31.362316>,  <42.079834, 32.678299, 31.300417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.271587, 32.808681, 31.362316>,  <42.591175, 33.025986, 31.465483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.271587, 32.808681, 31.362316> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347118, -0.066388, -0.935469,
		0.491079, -0.836936, 0.241617,
		-0.798968, -0.543259, -0.257914,
		42.031898, 32.645702, 31.284943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.857964, 32.481308, 31.247213>,  <42.591175, 33.025986, 31.465483>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.857964, 32.481308, 31.247213> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.502510, 32.556938, 31.080080>,  <42.289238, 32.602318, 30.979799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.502510, 32.556938, 31.080080>,  <42.857964, 32.481308, 31.247213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.502510, 32.556938, 31.080080> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398119, -0.134259, -0.907456,
		-0.227679, -0.972740, 0.044031,
		-0.888630, 0.189079, -0.417834,
		42.235920, 32.613663, 30.954729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.930405, 32.270111, 30.588505>,  <42.857964, 32.481308, 31.247213>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.930405, 32.270111, 30.588505> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.619427, 32.519684, 30.556789>,  <42.432842, 32.669430, 30.537760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.619427, 32.519684, 30.556789>,  <42.930405, 32.270111, 30.588505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.619427, 32.519684, 30.556789> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287730, 0.240721, -0.926965,
		-0.559281, -0.743476, -0.366672,
		-0.777442, 0.623937, -0.079290,
		42.386192, 32.706863, 30.533003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.683399, 32.202301, 29.883022>,  <42.930405, 32.270111, 30.588505>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.683399, 32.202301, 29.883022> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.552212, 32.551636, 30.027084>,  <42.473499, 32.761238, 30.113522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.552212, 32.551636, 30.027084>,  <42.683399, 32.202301, 29.883022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.552212, 32.551636, 30.027084> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138225, 0.421503, -0.896230,
		-0.934522, -0.244151, -0.258957,
		-0.327967, 0.873341, 0.360157,
		42.453823, 32.813637, 30.135132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.468639, 32.416168, 29.295855>,  <42.683399, 32.202301, 29.883022>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.468639, 32.416168, 29.295855> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.441025, 32.747906, 29.517639>,  <42.424458, 32.946949, 29.650711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.441025, 32.747906, 29.517639>,  <42.468639, 32.416168, 29.295855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.441025, 32.747906, 29.517639> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289371, 0.548542, -0.784453,
		-0.954724, 0.106289, -0.277857,
		-0.069038, 0.829340, 0.554464,
		42.420315, 32.996708, 29.683979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<41.920242, 32.816875, 29.076305> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.183521, 33.059948, 29.254070>,  <42.341488, 33.205791, 29.360729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.183521, 33.059948, 29.254070>,  <41.920242, 32.816875, 29.076305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.183521, 33.059948, 29.254070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121019, 0.497232, -0.859136,
		-0.743053, 0.619265, 0.253737,
		0.658199, 0.607677, 0.444412,
		42.380981, 33.242252, 29.387394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.702980, 33.573009, 28.929428>,  <41.920242, 32.816875, 29.076305>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.702980, 33.573009, 28.929428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.076836, 33.601616, 29.068766>,  <42.301147, 33.618778, 29.152369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.076836, 33.601616, 29.068766>,  <41.702980, 33.573009, 28.929428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.076836, 33.601616, 29.068766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214822, 0.667083, -0.713339,
		-0.283389, 0.741543, 0.608115,
		0.934635, 0.071516, 0.348344,
		42.357227, 33.623070, 29.173269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.809879, 34.243076, 29.011555>,  <41.702980, 33.573009, 28.929428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.809879, 34.243076, 29.011555> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.168484, 34.066833, 28.993059>,  <42.383644, 33.961086, 28.981962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.168484, 34.066833, 28.993059>,  <41.809879, 34.243076, 29.011555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.168484, 34.066833, 28.993059> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283705, 0.651126, -0.703951,
		0.340274, 0.617979, 0.708742,
		0.896507, -0.440610, -0.046237,
		42.437435, 33.934650, 28.979189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.231857, 34.735306, 29.063280>,  <41.809879, 34.243076, 29.011555>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.231857, 34.735306, 29.063280> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.455494, 34.444611, 28.903641>,  <42.589676, 34.270195, 28.807858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.455494, 34.444611, 28.903641>,  <42.231857, 34.735306, 29.063280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.455494, 34.444611, 28.903641> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290598, 0.622584, -0.726596,
		0.776514, 0.290254, 0.559267,
		0.559088, -0.726734, -0.399098,
		42.623219, 34.226589, 28.783911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.883469, 35.121063, 28.834877>,  <42.231857, 34.735306, 29.063280>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.883469, 35.121063, 28.834877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.885315, 34.775028, 28.634241>,  <42.886421, 34.567406, 28.513859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.885315, 34.775028, 28.634241>,  <42.883469, 35.121063, 28.834877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.885315, 34.775028, 28.634241> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166792, 0.495236, -0.852597,
		0.985981, -0.079730, 0.146574,
		0.004611, -0.865092, -0.501592,
		42.886700, 34.515499, 28.483763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.494640, 35.045326, 28.503508>,  <42.883469, 35.121063, 28.834877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.494640, 35.045326, 28.503508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.256290, 34.810753, 28.284042>,  <43.113281, 34.670010, 28.152363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.256290, 34.810753, 28.284042>,  <43.494640, 35.045326, 28.503508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.256290, 34.810753, 28.284042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313055, 0.459531, -0.831161,
		0.739549, -0.667027, -0.090235,
		-0.595873, -0.586436, -0.548661,
		43.077530, 34.634823, 28.119444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.920258, 34.702694, 27.944805>,  <43.494640, 35.045326, 28.503508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.920258, 34.702694, 27.944805> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.538143, 34.664536, 27.832851>,  <43.308876, 34.641640, 27.765678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.538143, 34.664536, 27.832851>,  <43.920258, 34.702694, 27.944805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.538143, 34.664536, 27.832851> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257720, 0.195443, -0.946247,
		0.144969, -0.976065, -0.162118,
		-0.955282, -0.095395, -0.279885,
		43.251560, 34.635918, 27.748886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.889187, 34.104004, 27.424574>,  <43.920258, 34.702694, 27.944805>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.889187, 34.104004, 27.424574> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.538704, 34.279579, 27.344973>,  <43.328415, 34.384922, 27.297213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.538704, 34.279579, 27.344973>,  <43.889187, 34.104004, 27.424574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.538704, 34.279579, 27.344973> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201109, -0.042242, -0.978658,
		-0.437973, -0.897526, -0.051261,
		-0.876205, 0.438934, -0.199002,
		43.275841, 34.411259, 27.285273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.533348, 33.777470, 26.895433>,  <43.889187, 34.104004, 27.424574>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.533348, 33.777470, 26.895433> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.371269, 34.141998, 26.866316>,  <43.274021, 34.360718, 26.848845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.371269, 34.141998, 26.866316>,  <43.533348, 33.777470, 26.895433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.371269, 34.141998, 26.866316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417624, 0.113678, -0.901481,
		-0.813266, -0.395682, -0.426654,
		-0.405201, 0.911325, -0.072796,
		43.249710, 34.415394, 26.844477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.240662, 33.793274, 26.294563>,  <43.533348, 33.777470, 26.895433>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.240662, 33.793274, 26.294563> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.220512, 34.186047, 26.367527>,  <43.208424, 34.421711, 26.411306>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.220512, 34.186047, 26.367527>,  <43.240662, 33.793274, 26.294563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.220512, 34.186047, 26.367527> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020811, 0.183636, -0.982774,
		-0.998514, -0.045706, -0.029685,
		-0.050370, 0.981931, 0.182411,
		43.205402, 34.480625, 26.422251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.904617, 34.048985, 25.684076>,  <43.240662, 33.793274, 26.294563>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.904617, 34.048985, 25.684076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.071957, 34.378819, 25.836418>,  <43.172359, 34.576717, 25.927822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.071957, 34.378819, 25.836418>,  <42.904617, 34.048985, 25.684076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.071957, 34.378819, 25.836418> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092383, 0.378506, -0.920977,
		-0.903577, 0.420473, 0.082170,
		0.418348, 0.824582, 0.380854,
		43.197460, 34.626194, 25.950674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.504307, 34.533852, 25.382788>,  <42.904617, 34.048985, 25.684076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.504307, 34.533852, 25.382788> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.854458, 34.695805, 25.488461>,  <43.064548, 34.792976, 25.551865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.854458, 34.695805, 25.488461>,  <42.504307, 34.533852, 25.382788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.854458, 34.695805, 25.488461> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133402, 0.322947, -0.936968,
		-0.464677, 0.855440, 0.228687,
		0.875374, 0.404880, 0.264184,
		43.117069, 34.817268, 25.567717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.443771, 35.223713, 25.344885>,  <42.504307, 34.533852, 25.382788>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.443771, 35.223713, 25.344885> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.828548, 35.123291, 25.301750>,  <43.059414, 35.063038, 25.275869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.828548, 35.123291, 25.301750>,  <42.443771, 35.223713, 25.344885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.828548, 35.123291, 25.301750> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003317, 0.383910, -0.923364,
		0.273217, 0.888585, 0.368469,
		0.961947, -0.251057, -0.107838,
		43.117134, 35.047974, 25.269400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.656971, 35.746979, 24.883348>,  <42.443771, 35.223713, 25.344885>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.656971, 35.746979, 24.883348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.956844, 35.482323, 24.877640>,  <43.136768, 35.323528, 24.874214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.956844, 35.482323, 24.877640>,  <42.656971, 35.746979, 24.883348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.956844, 35.482323, 24.877640> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271542, 0.327195, -0.905101,
		0.603522, 0.674665, 0.424957,
		0.749684, -0.661642, -0.014269,
		43.181751, 35.283829, 24.873360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.235210, 36.015018, 24.664053>,  <42.656971, 35.746979, 24.883348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.235210, 36.015018, 24.664053> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.314972, 35.627613, 24.604420>,  <43.362827, 35.395172, 24.568640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.314972, 35.627613, 24.604420>,  <43.235210, 36.015018, 24.664053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.314972, 35.627613, 24.604420> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180458, 0.185833, -0.965868,
		0.963158, 0.165695, 0.211831,
		0.199404, -0.968510, -0.149085,
		43.374794, 35.337059, 24.559694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.965355, 35.991199, 24.426807>,  <43.235210, 36.015018, 24.664053>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.965355, 35.991199, 24.426807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.820316, 35.635685, 24.314678>,  <43.733295, 35.422375, 24.247400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.820316, 35.635685, 24.314678>,  <43.965355, 35.991199, 24.426807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.820316, 35.635685, 24.314678> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305698, 0.170718, -0.936698,
		0.880384, -0.425334, 0.209800,
		-0.362593, -0.888790, -0.280321,
		43.711540, 35.369049, 24.230581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.474712, 35.614796, 24.028038>,  <43.965355, 35.991199, 24.426807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.474712, 35.614796, 24.028038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.116234, 35.474754, 23.919039>,  <43.901146, 35.390732, 23.853640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.116234, 35.474754, 23.919039>,  <44.474712, 35.614796, 24.028038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.116234, 35.474754, 23.919039> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228485, 0.162266, -0.959929,
		0.380291, -0.922550, -0.065429,
		-0.896199, -0.350103, -0.272497,
		43.847374, 35.369724, 23.837290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.562614, 35.138916, 23.539200>,  <44.474712, 35.614796, 24.028038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.562614, 35.138916, 23.539200> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.173332, 35.217136, 23.490816>,  <43.939762, 35.264069, 23.461786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.173332, 35.217136, 23.490816>,  <44.562614, 35.138916, 23.539200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.173332, 35.217136, 23.490816> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109177, -0.069991, -0.991555,
		-0.202368, -0.978192, 0.046765,
		-0.973204, 0.195554, -0.120960,
		43.881371, 35.275803, 23.454529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.302700, 34.525284, 23.063086>,  <44.562614, 35.138916, 23.539200>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.302700, 34.525284, 23.063086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.069584, 34.850227, 23.071344>,  <43.929714, 35.045193, 23.076300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.069584, 34.850227, 23.071344>,  <44.302700, 34.525284, 23.063086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.069584, 34.850227, 23.071344> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085284, 0.086412, -0.992602,
		-0.808133, -0.576720, -0.119642,
		-0.582792, 0.812359, 0.020647,
		43.894745, 35.093933, 23.077539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.871811, 34.547203, 22.474091>,  <44.302700, 34.525284, 23.063086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.871811, 34.547203, 22.474091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.878426, 34.936958, 22.563793>,  <43.882393, 35.170811, 22.617615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.878426, 34.936958, 22.563793>,  <43.871811, 34.547203, 22.474091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.878426, 34.936958, 22.563793> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009012, 0.224133, -0.974517,
		-0.999823, 0.018132, -0.005075,
		0.016532, 0.974390, 0.224256,
		43.883385, 35.229275, 22.631069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.445019, 34.955700, 22.013172>,  <43.871811, 34.547203, 22.474091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.445019, 34.955700, 22.013172> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.669220, 35.261921, 22.139513>,  <43.803741, 35.445656, 22.215317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.669220, 35.261921, 22.139513>,  <43.445019, 34.955700, 22.013172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.669220, 35.261921, 22.139513> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092614, 0.321055, -0.942521,
		-0.822958, 0.557537, 0.109051,
		0.560502, 0.765556, 0.315851,
		43.837372, 35.491589, 22.234268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.297771, 35.524696, 21.569870>,  <43.445019, 34.955700, 22.013172>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.297771, 35.524696, 21.569870> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.633610, 35.663288, 21.737215>,  <43.835114, 35.746445, 21.837622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.633610, 35.663288, 21.737215>,  <43.297771, 35.524696, 21.569870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.633610, 35.663288, 21.737215> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241436, 0.451894, -0.858779,
		-0.486605, 0.822037, 0.295756,
		0.839598, 0.346480, 0.418363,
		43.885490, 35.767231, 21.862724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.419579, 36.215809, 21.260853>,  <43.297771, 35.524696, 21.569870>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.419579, 36.215809, 21.260853> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.767258, 36.107967, 21.426657>,  <43.975864, 36.043262, 21.526138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.767258, 36.107967, 21.426657>,  <43.419579, 36.215809, 21.260853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.767258, 36.107967, 21.426657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488807, 0.595018, -0.637983,
		-0.074640, 0.757146, 0.648968,
		0.869193, -0.269601, 0.414510,
		44.028015, 36.027088, 21.551010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.798950, 36.890652, 21.486378>,  <43.419579, 36.215809, 21.260853>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.798950, 36.890652, 21.486378> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.998642, 36.560890, 21.379704>,  <44.118458, 36.363033, 21.315699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.998642, 36.560890, 21.379704>,  <43.798950, 36.890652, 21.486378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.998642, 36.560890, 21.379704> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495943, 0.524257, -0.692240,
		0.710500, 0.213325, 0.670584,
		0.499230, -0.824407, -0.266687,
		44.148411, 36.313568, 21.299698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.323780, 37.411915, 21.335131>,  <43.798950, 36.890652, 21.486378>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.323780, 37.411915, 21.335131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.034515, 37.672943, 21.244633>,  <42.860958, 37.829559, 21.190334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.034515, 37.672943, 21.244633>,  <43.323780, 37.411915, 21.335131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.034515, 37.672943, 21.244633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363908, -0.081585, 0.927855,
		0.587037, 0.753319, 0.296477,
		-0.723159, 0.652575, -0.226245,
		42.817566, 37.868717, 21.176760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.310043, 38.040272, 21.747759>,  <43.323780, 37.411915, 21.335131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.310043, 38.040272, 21.747759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.941639, 37.951317, 21.619831>,  <42.720596, 37.897942, 21.543074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.941639, 37.951317, 21.619831>,  <43.310043, 38.040272, 21.747759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.941639, 37.951317, 21.619831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309168, -0.082144, 0.947453,
		-0.236974, 0.971491, 0.006899,
		-0.921009, -0.222389, -0.319820,
		42.665337, 37.884602, 21.523886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.872025, 38.531780, 22.039927>,  <43.310043, 38.040272, 21.747759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.872025, 38.531780, 22.039927> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.660793, 38.205196, 21.946529>,  <42.534054, 38.009247, 21.890491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.660793, 38.205196, 21.946529>,  <42.872025, 38.531780, 22.039927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.660793, 38.205196, 21.946529> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294856, -0.081560, 0.952055,
		-0.796361, 0.571608, -0.197669,
		-0.528080, -0.816464, -0.233493,
		42.502369, 37.960258, 21.876482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.250294, 38.612377, 22.407759>,  <42.872025, 38.531780, 22.039927>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.250294, 38.612377, 22.407759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.261784, 38.221558, 22.323336>,  <42.268677, 37.987064, 22.272682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.261784, 38.221558, 22.323336>,  <42.250294, 38.612377, 22.407759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.261784, 38.221558, 22.323336> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343353, -0.207945, 0.915897,
		-0.938767, 0.046156, -0.341447,
		0.028728, -0.977051, -0.211060,
		42.270401, 37.928444, 22.260017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.610668, 38.452633, 22.525221>,  <42.250294, 38.612377, 22.407759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.610668, 38.452633, 22.525221> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.804646, 38.103466, 22.546572>,  <41.921032, 37.893967, 22.559381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.804646, 38.103466, 22.546572>,  <41.610668, 38.452633, 22.525221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.804646, 38.103466, 22.546572> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400559, -0.167446, 0.900841,
		-0.777421, -0.458235, -0.430856,
		0.484942, -0.872916, 0.053375,
		41.950127, 37.841591, 22.562584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.110092, 38.092300, 22.817005>,  <41.610668, 38.452633, 22.525221>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.110092, 38.092300, 22.817005> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.460106, 37.904400, 22.863745>,  <41.670113, 37.791660, 22.891788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.460106, 37.904400, 22.863745>,  <41.110092, 38.092300, 22.817005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.460106, 37.904400, 22.863745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241824, -0.215108, 0.946176,
		-0.419331, -0.856192, -0.301823,
		0.875033, -0.469749, 0.116847,
		41.722614, 37.763474, 22.898798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.988338, 37.503307, 23.190924>,  <41.110092, 38.092300, 22.817005>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.988338, 37.503307, 23.190924> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.380741, 37.514519, 23.267694>,  <41.616184, 37.521244, 23.313757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.380741, 37.514519, 23.267694>,  <40.988338, 37.503307, 23.190924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.380741, 37.514519, 23.267694> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169144, -0.360658, 0.917233,
		0.094927, -0.932277, -0.349068,
		0.981009, 0.028027, 0.191925,
		41.675045, 37.522926, 23.325272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.143448, 36.833393, 23.373369>,  <40.988338, 37.503307, 23.190924>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.143448, 36.833393, 23.373369> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.404625, 37.103409, 23.510767>,  <41.561329, 37.265419, 23.593206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.404625, 37.103409, 23.510767>,  <41.143448, 36.833393, 23.373369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.404625, 37.103409, 23.510767> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139670, -0.338426, 0.930570,
		0.744422, -0.655581, -0.126688,
		0.652938, 0.675042, 0.343496,
		41.600506, 37.305920, 23.613815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.534531, 36.500103, 23.906849>,  <41.143448, 36.833393, 23.373369>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.534531, 36.500103, 23.906849> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.612095, 36.883751, 23.989292>,  <41.658634, 37.113941, 24.038759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.612095, 36.883751, 23.989292>,  <41.534531, 36.500103, 23.906849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.612095, 36.883751, 23.989292> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066187, -0.222408, 0.972704,
		0.978785, -0.174973, -0.106608,
		0.193907, 0.959124, 0.206109,
		41.670269, 37.171490, 24.051125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.898777, 36.416130, 24.535130>,  <41.534531, 36.500103, 23.906849>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.898777, 36.416130, 24.535130> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.774479, 36.796326, 24.534294>,  <41.699902, 37.024445, 24.533792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.774479, 36.796326, 24.534294>,  <41.898777, 36.416130, 24.535130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.774479, 36.796326, 24.534294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143810, -0.044842, 0.988589,
		0.939551, 0.307499, 0.150625,
		-0.310745, 0.950491, -0.002090,
		41.681255, 37.081474, 24.533667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.379101, 36.728680, 24.932549>,  <41.898777, 36.416130, 24.535130>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.379101, 36.728680, 24.932549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.040802, 36.942081, 24.928743>,  <41.837822, 37.070122, 24.926460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.040802, 36.942081, 24.928743>,  <42.379101, 36.728680, 24.932549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.040802, 36.942081, 24.928743> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151802, -0.223482, 0.962815,
		0.511539, 0.815739, 0.269996,
		-0.845745, 0.533503, -0.009512,
		41.787079, 37.102131, 24.925890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.485313, 37.182919, 25.497116>,  <42.379101, 36.728680, 24.932549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.485313, 37.182919, 25.497116> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.094414, 37.168739, 25.413464>,  <41.859875, 37.160233, 25.363272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.094414, 37.168739, 25.413464>,  <42.485313, 37.182919, 25.497116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.094414, 37.168739, 25.413464> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204826, -0.098534, 0.973826,
		-0.055123, 0.994502, 0.089032,
		-0.977245, -0.035444, -0.209132,
		41.801239, 37.158108, 25.350723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.197250, 37.484371, 26.061214>,  <42.485313, 37.182919, 25.497116>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.197250, 37.484371, 26.061214> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.900078, 37.269630, 25.901293>,  <41.721775, 37.140785, 25.805340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.900078, 37.269630, 25.901293>,  <42.197250, 37.484371, 26.061214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.900078, 37.269630, 25.901293> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263850, -0.314053, 0.912006,
		-0.615174, 0.783044, 0.091671,
		-0.742930, -0.536855, -0.399803,
		41.677200, 37.108574, 25.781351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.626320, 37.494007, 26.594563>,  <42.197250, 37.484371, 26.061214>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.626320, 37.494007, 26.594563> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.500370, 37.203323, 26.350348>,  <41.424801, 37.028915, 26.203819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.500370, 37.203323, 26.350348>,  <41.626320, 37.494007, 26.594563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.500370, 37.203323, 26.350348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306886, -0.530753, 0.790014,
		-0.898152, 0.436117, -0.055898,
		-0.314870, -0.726707, -0.610535,
		41.405910, 36.985310, 26.167187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.960434, 37.363388, 26.810602>,  <41.626320, 37.494007, 26.594563>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.960434, 37.363388, 26.810602> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.087948, 37.032257, 26.625957>,  <41.164455, 36.833580, 26.515171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.087948, 37.032257, 26.625957>,  <40.960434, 37.363388, 26.810602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.087948, 37.032257, 26.625957> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314230, -0.551779, 0.772528,
		-0.894225, -0.101215, -0.436024,
		0.318780, -0.827826, -0.461610,
		41.183582, 36.783909, 26.487474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.412373, 36.875828, 26.672174>,  <40.960434, 37.363388, 26.810602>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.412373, 36.875828, 26.672174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.740082, 36.646763, 26.683828>,  <40.936707, 36.509323, 26.690821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.740082, 36.646763, 26.683828>,  <40.412373, 36.875828, 26.672174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.740082, 36.646763, 26.683828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371446, -0.491329, 0.787797,
		-0.436824, -0.656245, -0.615246,
		0.819276, -0.572659, 0.029135,
		40.985863, 36.474964, 26.692568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.074100, 36.422161, 26.899139>,  <40.412373, 36.875828, 26.672174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.074100, 36.422161, 26.899139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.450748, 36.307625, 26.969965>,  <40.676739, 36.238903, 27.012461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.450748, 36.307625, 26.969965>,  <40.074100, 36.422161, 26.899139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.450748, 36.307625, 26.969965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322796, -0.618469, 0.716449,
		-0.095640, -0.731782, -0.674795,
		0.941624, -0.286342, 0.177066,
		40.733234, 36.221722, 27.023085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.021465, 35.733959, 26.999958>,  <40.074100, 36.422161, 26.899139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.021465, 35.733959, 26.999958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.359867, 35.850281, 27.178715>,  <40.562908, 35.920074, 27.285969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.359867, 35.850281, 27.178715>,  <40.021465, 35.733959, 26.999958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.359867, 35.850281, 27.178715> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258816, -0.508805, 0.821055,
		0.466143, -0.810279, -0.355187,
		0.846005, 0.290801, 0.446890,
		40.613670, 35.937523, 27.312782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.259495, 35.197701, 27.345949>,  <40.021465, 35.733959, 26.999958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.259495, 35.197701, 27.345949> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.439816, 35.507633, 27.523226>,  <40.548008, 35.693592, 27.629591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.439816, 35.507633, 27.523226>,  <40.259495, 35.197701, 27.345949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.439816, 35.507633, 27.523226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127532, -0.435501, 0.891109,
		0.883465, -0.458237, -0.097510,
		0.450804, 0.774828, 0.443190,
		40.575058, 35.740082, 27.656183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.636765, 34.907471, 27.861807>,  <40.259495, 35.197701, 27.345949>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.636765, 34.907471, 27.861807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.576462, 35.291828, 27.954727>,  <40.540279, 35.522442, 28.010479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.576462, 35.291828, 27.954727>,  <40.636765, 34.907471, 27.861807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.576462, 35.291828, 27.954727> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004801, -0.234272, 0.972159,
		0.988560, 0.147673, 0.030705,
		-0.150755, 0.960890, 0.232300,
		40.531235, 35.580093, 28.024418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.574776, 31.438307, 31.852512> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.530560, 31.834990, 31.878744>,  <41.504028, 32.072998, 31.894484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.530560, 31.834990, 31.878744>,  <41.574776, 31.438307, 31.852512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.530560, 31.834990, 31.878744> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224286, -0.089172, 0.970435,
		0.968234, 0.092564, 0.232282,
		-0.110541, 0.991706, 0.065578,
		41.497398, 32.132500, 31.898418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.743858, 31.552652, 32.492744>,  <41.574776, 31.438307, 31.852512>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.743858, 31.552652, 32.492744> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.574615, 31.905937, 32.411835>,  <41.473068, 32.117908, 32.363289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.574615, 31.905937, 32.411835>,  <41.743858, 31.552652, 32.492744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.574615, 31.905937, 32.411835> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190297, 0.131639, 0.972861,
		0.885871, 0.450115, 0.112376,
		-0.423106, 0.883214, -0.202271,
		41.447685, 32.170902, 32.351154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.931820, 31.946466, 33.047424>,  <41.743858, 31.552652, 32.492744>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.931820, 31.946466, 33.047424> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.630291, 32.173538, 32.915070>,  <41.449371, 32.309780, 32.835655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.630291, 32.173538, 32.915070>,  <41.931820, 31.946466, 33.047424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.630291, 32.173538, 32.915070> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192042, 0.291247, 0.937174,
		0.628385, 0.770010, -0.110531,
		-0.753825, 0.567679, -0.330889,
		41.404144, 32.343842, 32.815804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.830975, 32.681343, 33.388241>,  <41.931820, 31.946466, 33.047424>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.830975, 32.681343, 33.388241> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.467548, 32.589397, 33.248718>,  <41.249493, 32.534229, 33.165005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.467548, 32.589397, 33.248718>,  <41.830975, 32.681343, 33.388241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.467548, 32.589397, 33.248718> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364849, 0.030013, 0.930583,
		-0.203439, 0.972760, -0.111134,
		-0.908569, -0.229864, -0.348804,
		41.194977, 32.520439, 33.144077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.453041, 33.109055, 33.794373>,  <41.830975, 32.681343, 33.388241>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.453041, 33.109055, 33.794373> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.210434, 32.828587, 33.644440>,  <41.064869, 32.660305, 33.554482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.210434, 32.828587, 33.644440>,  <41.453041, 33.109055, 33.794373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.210434, 32.828587, 33.644440> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472152, -0.061671, 0.879357,
		-0.639696, 0.710321, -0.293655,
		-0.606516, -0.701171, -0.374830,
		41.028481, 32.618237, 33.531990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.848965, 33.236290, 34.155727>,  <41.453041, 33.109055, 33.794373>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.848965, 33.236290, 34.155727> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.836342, 32.859085, 34.023228>,  <40.828770, 32.632763, 33.943729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.836342, 32.859085, 34.023228>,  <40.848965, 33.236290, 34.155727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.836342, 32.859085, 34.023228> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508702, -0.270127, 0.817468,
		-0.860364, 0.194300, -0.471191,
		-0.031553, -0.943016, -0.331248,
		40.826878, 32.576180, 33.923855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.130108, 33.067181, 34.181866>,  <40.848965, 33.236290, 34.155727>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.130108, 33.067181, 34.181866> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.343529, 32.728973, 34.173603>,  <40.471581, 32.526051, 34.168644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.343529, 32.728973, 34.173603>,  <40.130108, 33.067181, 34.181866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.343529, 32.728973, 34.173603> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463769, -0.312910, 0.828858,
		-0.707277, -0.432657, -0.559077,
		0.533552, -0.845515, -0.020661,
		40.503593, 32.475319, 34.167404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.627529, 32.510281, 34.187660>,  <40.130108, 33.067181, 34.181866>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.627529, 32.510281, 34.187660> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.979916, 32.368019, 34.312504>,  <40.191345, 32.282661, 34.387409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.979916, 32.368019, 34.312504>,  <39.627529, 32.510281, 34.187660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.979916, 32.368019, 34.312504> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439950, -0.372802, 0.816984,
		-0.174208, -0.857046, -0.484895,
		0.880962, -0.355655, 0.312113,
		40.244205, 32.261322, 34.406139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.472610, 31.867247, 34.326897>,  <39.627529, 32.510281, 34.187660>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.472610, 31.867247, 34.326897> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.791515, 31.990477, 34.534534>,  <39.982861, 32.064415, 34.659119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.791515, 31.990477, 34.534534>,  <39.472610, 31.867247, 34.326897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.791515, 31.990477, 34.534534> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492706, -0.164685, 0.854471,
		0.348727, -0.937000, 0.020492,
		0.797264, 0.308074, 0.519095,
		40.030693, 32.082897, 34.690262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.605511, 31.337849, 34.810555>,  <39.472610, 31.867247, 34.326897>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.605511, 31.337849, 34.810555> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.827621, 31.623253, 34.981468>,  <39.960888, 31.794495, 35.084015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.827621, 31.623253, 34.981468>,  <39.605511, 31.337849, 34.810555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.827621, 31.623253, 34.981468> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364179, -0.253287, 0.896225,
		0.747690, -0.653262, 0.119200,
		0.555278, 0.713508, 0.427284,
		39.994205, 31.837305, 35.109653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.914452, 31.048912, 35.371452>,  <39.605511, 31.337849, 34.810555>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.914452, 31.048912, 35.371452> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.929138, 31.440376, 35.452324>,  <39.937950, 31.675255, 35.500847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.929138, 31.440376, 35.452324>,  <39.914452, 31.048912, 35.371452>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.929138, 31.440376, 35.452324> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396434, -0.171453, 0.901911,
		0.917329, -0.113270, 0.381678,
		0.036720, 0.978659, 0.202183,
		39.940155, 31.733974, 35.512978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.135258, 31.083620, 36.095139>,  <39.914452, 31.048912, 35.371452>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.135258, 31.083620, 36.095139> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.993210, 31.455170, 36.053032>,  <39.907982, 31.678101, 36.027767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.993210, 31.455170, 36.053032>,  <40.135258, 31.083620, 36.095139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.993210, 31.455170, 36.053032> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372125, -0.037167, 0.927438,
		0.857562, 0.368523, 0.358857,
		-0.355120, 0.928875, -0.105264,
		39.886673, 31.733831, 36.021454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.453720, 31.437647, 36.561565>,  <40.135258, 31.083620, 36.095139>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.453720, 31.437647, 36.561565> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.113071, 31.624695, 36.466850>,  <39.908680, 31.736923, 36.410023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.113071, 31.624695, 36.466850>,  <40.453720, 31.437647, 36.561565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.113071, 31.624695, 36.466850> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281941, -0.027855, 0.959027,
		0.441864, 0.883491, 0.155563,
		-0.851625, 0.467619, -0.236784,
		39.857582, 31.764980, 36.395817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.299053, 32.143051, 36.940346>,  <40.453720, 31.437647, 36.561565>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.299053, 32.143051, 36.940346> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.983669, 31.915430, 36.846954>,  <39.794441, 31.778856, 36.790920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.983669, 31.915430, 36.846954>,  <40.299053, 32.143051, 36.940346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.983669, 31.915430, 36.846954> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227955, -0.082222, 0.970194,
		-0.571290, 0.818179, -0.064890,
		-0.788456, -0.569055, -0.233481,
		39.747131, 31.744713, 36.776909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.956177, 32.592037, 37.429565>,  <40.299053, 32.143051, 36.940346>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.956177, 32.592037, 37.429565> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.034626, 32.875622, 37.700535>,  <40.081696, 33.045773, 37.863117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.034626, 32.875622, 37.700535>,  <39.956177, 32.592037, 37.429565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.034626, 32.875622, 37.700535> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458566, 0.544337, -0.702435,
		-0.866749, 0.448409, -0.218349,
		0.196122, 0.708962, 0.677428,
		40.093464, 33.088310, 37.903763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.608662, 33.264591, 37.187553>,  <39.956177, 32.592037, 37.429565>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.608662, 33.264591, 37.187553> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.881046, 33.381092, 37.456318>,  <40.044476, 33.450993, 37.617577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.881046, 33.381092, 37.456318>,  <39.608662, 33.264591, 37.187553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.881046, 33.381092, 37.456318> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273913, 0.749619, -0.602530,
		-0.679167, 0.594344, 0.430682,
		0.680958, 0.291249, 0.671915,
		40.085335, 33.468468, 37.657894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.536419, 34.025208, 37.359364>,  <39.608662, 33.264591, 37.187553>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.536419, 34.025208, 37.359364> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.914310, 33.917507, 37.434189>,  <40.141045, 33.852886, 37.479084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.914310, 33.917507, 37.434189>,  <39.536419, 34.025208, 37.359364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.914310, 33.917507, 37.434189> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310169, 0.549150, -0.776034,
		0.106223, 0.791162, 0.602311,
		0.944728, -0.269251, 0.187062,
		40.197727, 33.836731, 37.490307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.942909, 34.621639, 37.112011>,  <39.536419, 34.025208, 37.359364>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.942909, 34.621639, 37.112011> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.240719, 34.358086, 37.155014>,  <40.419407, 34.199955, 37.180817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.240719, 34.358086, 37.155014>,  <39.942909, 34.621639, 37.112011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.240719, 34.358086, 37.155014> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514795, 0.464095, -0.720834,
		0.425049, 0.592025, 0.684719,
		0.744526, -0.658880, 0.107508,
		40.464077, 34.160423, 37.187267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.649323, 34.993736, 37.141125>,  <39.942909, 34.621639, 37.112011>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.649323, 34.993736, 37.141125> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.671028, 34.622791, 36.993038>,  <40.684052, 34.400227, 36.904186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.671028, 34.622791, 36.993038>,  <40.649323, 34.993736, 37.141125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.671028, 34.622791, 36.993038> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481005, 0.349187, -0.804178,
		0.875037, -0.134439, 0.465013,
		0.054264, -0.927359, -0.370217,
		40.687305, 34.344585, 36.881973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.443386, 34.936825, 37.058819>,  <40.649323, 34.993736, 37.141125>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.443386, 34.936825, 37.058819> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.233955, 34.657207, 36.864002>,  <41.108295, 34.489437, 36.747112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.233955, 34.657207, 36.864002>,  <41.443386, 34.936825, 37.058819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.233955, 34.657207, 36.864002> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402288, 0.301069, -0.864593,
		0.751018, -0.648614, 0.123582,
		-0.523581, -0.699040, -0.487038,
		41.076881, 34.447495, 36.717892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.868748, 34.917549, 36.438663>,  <41.443386, 34.936825, 37.058819>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.868748, 34.917549, 36.438663> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.563343, 34.677475, 36.343311>,  <41.380100, 34.533432, 36.286102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.563343, 34.677475, 36.343311>,  <41.868748, 34.917549, 36.438663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.563343, 34.677475, 36.343311> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178323, 0.158833, -0.971068,
		0.620681, -0.783934, -0.014245,
		-0.763516, -0.600183, -0.238378,
		41.334290, 34.497421, 36.271797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.182507, 34.337051, 36.063953>,  <41.868748, 34.917549, 36.438663>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.182507, 34.337051, 36.063953> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.798073, 34.400085, 35.973198>,  <41.567413, 34.437904, 35.918743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.798073, 34.400085, 35.973198>,  <42.182507, 34.337051, 36.063953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.798073, 34.400085, 35.973198> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236411, 0.044301, -0.970643,
		-0.142904, -0.986512, -0.079831,
		-0.961087, 0.157582, -0.226892,
		41.509747, 34.447361, 35.905132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.963585, 33.818817, 35.459831>,  <42.182507, 34.337051, 36.063953>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.963585, 33.818817, 35.459831> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.703274, 34.122211, 35.446091>,  <41.547089, 34.304249, 35.437847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.703274, 34.122211, 35.446091>,  <41.963585, 33.818817, 35.459831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.703274, 34.122211, 35.446091> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326016, 0.238289, -0.914840,
		-0.685712, -0.606557, -0.402353,
		-0.650779, 0.758490, -0.034350,
		41.508041, 34.349758, 35.435787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.727577, 33.804543, 34.721657>,  <41.963585, 33.818817, 35.459831>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.727577, 33.804543, 34.721657> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.627087, 34.163612, 34.866470>,  <41.566792, 34.379055, 34.953358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.627087, 34.163612, 34.866470>,  <41.727577, 33.804543, 34.721657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.627087, 34.163612, 34.866470> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051182, 0.361188, -0.931087,
		-0.966575, -0.252439, -0.044794,
		-0.251222, 0.897673, 0.362036,
		41.551720, 34.432915, 34.975082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.232204, 34.057541, 34.247612>,  <41.727577, 33.804543, 34.721657>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.232204, 34.057541, 34.247612> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.316387, 34.406799, 34.423481>,  <41.366898, 34.616356, 34.529003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.316387, 34.406799, 34.423481>,  <41.232204, 34.057541, 34.247612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.316387, 34.406799, 34.423481> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110356, 0.425656, -0.898130,
		-0.971354, 0.237541, -0.006774,
		0.210459, 0.873150, 0.439677,
		41.379524, 34.668743, 34.555386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.827824, 34.658520, 33.910782>,  <41.232204, 34.057541, 34.247612>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.827824, 34.658520, 33.910782> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.145378, 34.822639, 34.090290>,  <41.335911, 34.921112, 34.197994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.145378, 34.822639, 34.090290>,  <40.827824, 34.658520, 33.910782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.145378, 34.822639, 34.090290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398864, 0.205676, -0.893647,
		-0.458964, 0.888455, -0.000370,
		0.793889, 0.410299, 0.448771,
		41.383545, 34.945728, 34.224922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.061481, 35.267509, 33.551876>,  <40.827824, 34.658520, 33.910782>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.061481, 35.267509, 33.551876> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.388741, 35.177425, 33.763504>,  <41.585098, 35.123375, 33.890480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.388741, 35.177425, 33.763504>,  <41.061481, 35.267509, 33.551876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.388741, 35.177425, 33.763504> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573144, 0.245439, -0.781835,
		0.046220, 0.942890, 0.329881,
		0.818150, -0.225206, 0.529068,
		41.634186, 35.109863, 33.922226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.396572, 35.815376, 33.478466>,  <41.061481, 35.267509, 33.551876>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.396572, 35.815376, 33.478466> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.662952, 35.534481, 33.579159>,  <41.822781, 35.365944, 33.639576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.662952, 35.534481, 33.579159>,  <41.396572, 35.815376, 33.478466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.662952, 35.534481, 33.579159> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534724, 0.214058, -0.817465,
		0.520168, 0.679002, 0.518055,
		0.665954, -0.702236, 0.251733,
		41.862740, 35.323811, 33.654678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.636707, 36.577999, 33.650200>,  <41.396572, 35.815376, 33.478466>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.636707, 36.577999, 33.650200> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.325268, 36.752033, 33.469322>,  <41.138405, 36.856453, 33.360794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.325268, 36.752033, 33.469322>,  <41.636707, 36.577999, 33.650200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.325268, 36.752033, 33.469322> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518602, -0.040417, 0.854060,
		0.353312, 0.899482, 0.257105,
		-0.778603, 0.435085, -0.452193,
		41.091686, 36.882557, 33.333664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.390648, 37.156662, 34.176586>,  <41.636707, 36.577999, 33.650200>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.390648, 37.156662, 34.176586> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.097523, 37.093628, 33.911816>,  <40.921646, 37.055809, 33.752953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.097523, 37.093628, 33.911816>,  <41.390648, 37.156662, 34.176586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.097523, 37.093628, 33.911816> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673549, 0.030041, 0.738532,
		-0.096494, 0.987049, -0.128153,
		-0.732817, -0.157581, -0.661927,
		40.877678, 37.046352, 33.713238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.870121, 37.579773, 34.348782>,  <41.390648, 37.156662, 34.176586>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.870121, 37.579773, 34.348782> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.685505, 37.300758, 34.129539>,  <40.574734, 37.133350, 33.997993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.685505, 37.300758, 34.129539>,  <40.870121, 37.579773, 34.348782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.685505, 37.300758, 34.129539> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731608, -0.050142, 0.679879,
		-0.501724, 0.714792, -0.487181,
		-0.461544, -0.697537, -0.548105,
		40.547043, 37.091496, 33.965107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.166817, 37.631577, 34.521198>,  <40.870121, 37.579773, 34.348782>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.166817, 37.631577, 34.521198> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.130020, 37.282551, 34.329296>,  <40.107944, 37.073135, 34.214153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.130020, 37.282551, 34.329296>,  <40.166817, 37.631577, 34.521198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.130020, 37.282551, 34.329296> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727872, -0.269865, 0.630377,
		-0.679515, 0.407190, -0.610291,
		-0.091987, -0.872564, -0.479760,
		40.102425, 37.020782, 34.185368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.407955, 37.482800, 34.401489>,  <40.166817, 37.631577, 34.521198>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.407955, 37.482800, 34.401489> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.607681, 37.136784, 34.381973>,  <39.727516, 36.929173, 34.370266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.607681, 37.136784, 34.381973>,  <39.407955, 37.482800, 34.401489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.607681, 37.136784, 34.381973> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641150, -0.406783, 0.650733,
		-0.582759, -0.293642, -0.757737,
		0.499318, -0.865044, -0.048788,
		39.757477, 36.877270, 34.367336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.915497, 36.933933, 34.223038>,  <39.407955, 37.482800, 34.401489>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.915497, 36.933933, 34.223038> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.219009, 36.780018, 34.433250>,  <39.401119, 36.687668, 34.559380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.219009, 36.780018, 34.433250>,  <38.915497, 36.933933, 34.223038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.219009, 36.780018, 34.433250> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637035, -0.270232, 0.721915,
		-0.135770, -0.882559, -0.450172,
		0.758784, -0.384790, 0.525532,
		39.446644, 36.664581, 34.590908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.679676, 36.319271, 34.445038>,  <38.915497, 36.933933, 34.223038>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.679676, 36.319271, 34.445038> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.989094, 36.392006, 34.687874>,  <39.174744, 36.435646, 34.833576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.989094, 36.392006, 34.687874>,  <38.679676, 36.319271, 34.445038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.989094, 36.392006, 34.687874> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570263, -0.218165, 0.791962,
		0.276455, -0.958822, -0.065065,
		0.773546, 0.181838, 0.607093,
		39.221157, 36.446556, 34.870003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.711983, 35.825027, 34.889809>,  <38.679676, 36.319271, 34.445038>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.711983, 35.825027, 34.889809> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.919491, 36.099625, 35.093616>,  <39.043995, 36.264381, 35.215900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.919491, 36.099625, 35.093616>,  <38.711983, 35.825027, 34.889809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.919491, 36.099625, 35.093616> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512481, -0.227325, 0.828062,
		0.684283, -0.690691, 0.233884,
		0.518768, 0.686490, 0.509520,
		39.075123, 36.305573, 35.246471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.937550, 35.573730, 35.548210>,  <38.711983, 35.825027, 34.889809>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.937550, 35.573730, 35.548210> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.977051, 35.962746, 35.632519>,  <39.000751, 36.196156, 35.683102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.977051, 35.962746, 35.632519>,  <38.937550, 35.573730, 35.548210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.977051, 35.962746, 35.632519> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298651, -0.173074, 0.938537,
		0.949239, -0.155633, 0.273357,
		0.098756, 0.972535, 0.210769,
		39.006680, 36.254505, 35.695751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.299309, 35.580357, 36.260323>,  <38.937550, 35.573730, 35.548210>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.299309, 35.580357, 36.260323> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.123184, 35.934837, 36.202675>,  <39.017509, 36.147526, 36.168087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.123184, 35.934837, 36.202675>,  <39.299309, 35.580357, 36.260323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.123184, 35.934837, 36.202675> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289615, 0.011752, 0.957071,
		0.849851, 0.463151, 0.251483,
		-0.440313, 0.886201, -0.144123,
		38.991089, 36.200699, 36.159439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.487492, 36.007080, 36.814678>,  <39.299309, 35.580357, 36.260323>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.487492, 36.007080, 36.814678> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.168262, 36.211121, 36.686378>,  <38.976727, 36.333546, 36.609398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.168262, 36.211121, 36.686378>,  <39.487492, 36.007080, 36.814678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.168262, 36.211121, 36.686378> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138843, 0.362305, 0.921660,
		0.586350, 0.780083, -0.218321,
		-0.798070, 0.510103, -0.320747,
		38.928841, 36.364151, 36.590153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.460640, 36.665634, 37.228756>,  <39.487492, 36.007080, 36.814678>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.460640, 36.665634, 37.228756> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.099144, 36.647930, 37.058441>,  <38.882248, 36.637306, 36.956253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.099144, 36.647930, 37.058441>,  <39.460640, 36.665634, 37.228756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.099144, 36.647930, 37.058441> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401946, 0.429966, 0.808436,
		0.147290, 0.901760, -0.406369,
		-0.903740, -0.044264, -0.425788,
		38.828022, 36.634651, 36.930706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<43.325283, 38.901134, 30.654617> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.957485, 38.809414, 30.526897>,  <42.736805, 38.754383, 30.450266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.957485, 38.809414, 30.526897>,  <43.325283, 38.901134, 30.654617>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.957485, 38.809414, 30.526897> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227122, -0.353081, 0.907606,
		-0.320854, 0.907058, 0.272576,
		-0.919493, -0.229301, -0.319301,
		42.681637, 38.740623, 30.431107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.837109, 39.189968, 31.109341>,  <43.325283, 38.901134, 30.654617>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.837109, 39.189968, 31.109341> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.581444, 38.929432, 30.945763>,  <42.428047, 38.773109, 30.847616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.581444, 38.929432, 30.945763>,  <42.837109, 39.189968, 31.109341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.581444, 38.929432, 30.945763> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210731, -0.363065, 0.907621,
		-0.739641, 0.666292, 0.094799,
		-0.639159, -0.651336, -0.408946,
		42.389694, 38.734032, 30.823078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.194324, 39.282322, 31.581137>,  <42.837109, 39.189968, 31.109341>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.194324, 39.282322, 31.581137> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.140938, 38.937534, 31.385504>,  <42.108906, 38.730663, 31.268124>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.140938, 38.937534, 31.385504>,  <42.194324, 39.282322, 31.581137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.140938, 38.937534, 31.385504> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466626, -0.380719, 0.798319,
		-0.874327, 0.334766, -0.351404,
		-0.133464, -0.861966, -0.489083,
		42.100899, 38.678944, 31.238779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.441013, 38.992981, 31.594147>,  <42.194324, 39.282322, 31.581137>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.441013, 38.992981, 31.594147> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.653160, 38.661144, 31.524309>,  <41.780449, 38.462040, 31.482407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.653160, 38.661144, 31.524309>,  <41.441013, 38.992981, 31.594147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.653160, 38.661144, 31.524309> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554785, -0.495361, 0.668454,
		-0.641034, -0.257663, -0.722970,
		0.530367, -0.829594, -0.174596,
		41.812271, 38.412266, 31.471931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.963207, 38.422981, 31.543104>,  <41.441013, 38.992981, 31.594147>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.963207, 38.422981, 31.543104> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.303837, 38.224556, 31.610920>,  <41.508213, 38.105499, 31.651609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.303837, 38.224556, 31.610920>,  <40.963207, 38.422981, 31.543104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.303837, 38.224556, 31.610920> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474804, -0.592731, 0.650562,
		-0.222232, -0.634498, -0.740288,
		0.851571, -0.496068, 0.169539,
		41.559307, 38.075737, 31.661781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.817303, 37.625217, 31.614565>,  <40.963207, 38.422981, 31.543104>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.817303, 37.625217, 31.614565> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.160126, 37.701241, 31.806118>,  <41.365818, 37.746853, 31.921049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.160126, 37.701241, 31.806118>,  <40.817303, 37.625217, 31.614565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.160126, 37.701241, 31.806118> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234682, -0.683443, 0.691253,
		0.458666, -0.704829, -0.541148,
		0.857059, 0.190057, 0.478883,
		41.417244, 37.758259, 31.949783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.128479, 36.986538, 31.724253>,  <40.817303, 37.625217, 31.614565>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.128479, 36.986538, 31.724253> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.270672, 37.245468, 31.993952>,  <41.355988, 37.400826, 32.155769>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.270672, 37.245468, 31.993952>,  <41.128479, 36.986538, 31.724253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.270672, 37.245468, 31.993952> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327232, -0.589519, 0.738503,
		0.875530, -0.483159, 0.002262,
		0.355481, 0.647322, 0.674246,
		41.377316, 37.439663, 32.196224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.522377, 36.580486, 32.169258>,  <41.128479, 36.986538, 31.724253>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.522377, 36.580486, 32.169258> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.428444, 36.894375, 32.398716>,  <41.372086, 37.082706, 32.536392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.428444, 36.894375, 32.398716>,  <41.522377, 36.580486, 32.169258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.428444, 36.894375, 32.398716> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138286, -0.611119, 0.779365,
		0.962149, 0.103691, 0.252025,
		-0.234830, 0.784718, 0.573649,
		41.357994, 37.129791, 32.570812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.630241, 36.463596, 32.851727>,  <41.522377, 36.580486, 32.169258>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.630241, 36.463596, 32.851727> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.389725, 36.776531, 32.916706>,  <41.245415, 36.964294, 32.955692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.389725, 36.776531, 32.916706>,  <41.630241, 36.463596, 32.851727>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.389725, 36.776531, 32.916706> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377129, -0.457111, 0.805496,
		0.704430, 0.423075, 0.569901,
		-0.601293, 0.782341, 0.162449,
		41.209335, 37.011234, 32.965439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.016457, 36.093922, 33.248451>,  <41.630241, 36.463596, 32.851727>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.016457, 36.093922, 33.248451> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.122185, 35.715988, 33.325825>,  <42.185623, 35.489227, 33.372250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.122185, 35.715988, 33.325825>,  <42.016457, 36.093922, 33.248451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.122185, 35.715988, 33.325825> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507441, -0.034308, -0.861004,
		0.820144, 0.325739, 0.470380,
		0.264324, -0.944837, 0.193431,
		42.201481, 35.432537, 33.383854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.815353, 35.958084, 33.357426>,  <42.016457, 36.093922, 33.248451>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.815353, 35.958084, 33.357426> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.657661, 35.629723, 33.192158>,  <42.563046, 35.432705, 33.092999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.657661, 35.629723, 33.192158>,  <42.815353, 35.958084, 33.357426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.657661, 35.629723, 33.192158> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575765, 0.129789, -0.807248,
		0.716295, -0.556126, 0.421479,
		-0.394228, -0.820901, -0.413165,
		42.539394, 35.383453, 33.068207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.361649, 35.669189, 33.124832>,  <42.815353, 35.958084, 33.357426>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.361649, 35.669189, 33.124832> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.066673, 35.489738, 32.922874>,  <42.889687, 35.382069, 32.801701>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.066673, 35.489738, 32.922874>,  <43.361649, 35.669189, 33.124832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.066673, 35.489738, 32.922874> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531501, 0.075813, -0.843658,
		0.416764, -0.890499, 0.182537,
		-0.737438, -0.448624, -0.504897,
		42.845444, 35.355152, 32.771404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.692158, 35.111298, 32.826759>,  <43.361649, 35.669189, 33.124832>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.692158, 35.111298, 32.826759> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.364323, 35.189453, 32.611313>,  <43.167622, 35.236347, 32.482044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.364323, 35.189453, 32.611313>,  <43.692158, 35.111298, 32.826759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.364323, 35.189453, 32.611313> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552845, 0.022799, -0.832972,
		-0.150473, -0.980461, -0.126705,
		-0.819586, 0.195388, -0.538612,
		43.118446, 35.248070, 32.449730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.798046, 34.707355, 32.161835>,  <43.692158, 35.111298, 32.826759>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.798046, 34.707355, 32.161835> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.513435, 34.976925, 32.082279>,  <43.342670, 35.138668, 32.034546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.513435, 34.976925, 32.082279>,  <43.798046, 34.707355, 32.161835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.513435, 34.976925, 32.082279> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451279, 0.221326, -0.864501,
		-0.538591, -0.704868, -0.461607,
		-0.711525, 0.673926, -0.198888,
		43.299976, 35.179104, 32.022614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.561733, 34.544666, 31.470972>,  <43.798046, 34.707355, 32.161835>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.561733, 34.544666, 31.470972> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.437389, 34.917751, 31.544090>,  <43.362782, 35.141602, 31.587961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.437389, 34.917751, 31.544090>,  <43.561733, 34.544666, 31.470972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.437389, 34.917751, 31.544090> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463166, 0.316601, -0.827793,
		-0.829966, -0.172663, -0.530419,
		-0.310860, 0.932712, 0.182796,
		43.344131, 35.197563, 31.598928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.225250, 34.835735, 30.831758>,  <43.561733, 34.544666, 31.470972>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.225250, 34.835735, 30.831758> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.337231, 35.148643, 31.054356>,  <43.404419, 35.336388, 31.187914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.337231, 35.148643, 31.054356>,  <43.225250, 34.835735, 30.831758>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.337231, 35.148643, 31.054356> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399784, 0.432020, -0.808413,
		-0.872811, 0.448793, -0.191794,
		0.279951, 0.782268, 0.556493,
		43.421215, 35.383324, 31.221304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.002369, 35.451828, 30.473988>,  <43.225250, 34.835735, 30.831758>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.002369, 35.451828, 30.473988> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.266621, 35.607117, 30.731003>,  <43.425171, 35.700291, 30.885212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.266621, 35.607117, 30.731003>,  <43.002369, 35.451828, 30.473988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.266621, 35.607117, 30.731003> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279861, 0.666845, -0.690649,
		-0.696600, 0.636082, 0.331886,
		0.660625, 0.388225, 0.642539,
		43.464809, 35.723583, 30.923765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.958126, 36.192078, 30.450121>,  <43.002369, 35.451828, 30.473988>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.958126, 36.192078, 30.450121> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.317692, 36.143307, 30.618446>,  <43.533432, 36.114044, 30.719442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.317692, 36.143307, 30.618446>,  <42.958126, 36.192078, 30.450121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.317692, 36.143307, 30.618446> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416404, 0.536405, -0.734083,
		-0.136224, 0.835107, 0.532953,
		0.898917, -0.121924, 0.420813,
		43.587368, 36.106731, 30.744690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.299011, 36.866722, 30.405319>,  <42.958126, 36.192078, 30.450121>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.299011, 36.866722, 30.405319> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.609917, 36.616802, 30.434948>,  <43.796459, 36.466850, 30.452724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.609917, 36.616802, 30.434948>,  <43.299011, 36.866722, 30.405319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.609917, 36.616802, 30.434948> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420749, 0.428637, -0.799525,
		0.467792, 0.652608, 0.596048,
		0.777265, -0.624798, 0.074071,
		43.843098, 36.429363, 30.457169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.842728, 37.191841, 30.276379>,  <43.299011, 36.866722, 30.405319>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.842728, 37.191841, 30.276379> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.980724, 36.821945, 30.212090>,  <44.063522, 36.600006, 30.173515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.980724, 36.821945, 30.212090>,  <43.842728, 37.191841, 30.276379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.980724, 36.821945, 30.212090> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379861, 0.294146, -0.877031,
		0.858304, 0.241515, 0.452752,
		0.344992, -0.924742, -0.160724,
		44.084221, 36.544521, 30.163872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.444653, 37.334568, 29.947702>,  <43.842728, 37.191841, 30.276379>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.444653, 37.334568, 29.947702> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.404892, 36.940506, 29.891706>,  <44.381035, 36.704071, 29.858109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.404892, 36.940506, 29.891706>,  <44.444653, 37.334568, 29.947702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.404892, 36.940506, 29.891706> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474623, 0.076706, -0.876841,
		0.874558, -0.153604, 0.459950,
		-0.099405, -0.985151, -0.139988,
		44.375069, 36.644962, 29.849710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.071522, 37.082336, 29.978556>,  <44.444653, 37.334568, 29.947702>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.071522, 37.082336, 29.978556> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.833221, 36.855591, 29.750961>,  <44.690243, 36.719543, 29.614405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.833221, 36.855591, 29.750961>,  <45.071522, 37.082336, 29.978556>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.833221, 36.855591, 29.750961> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656474, 0.064475, -0.751588,
		0.462736, -0.821282, 0.333723,
		-0.595749, -0.566868, -0.568985,
		44.654495, 36.685532, 29.580265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.475780, 36.541927, 29.620670>,  <45.071522, 37.082336, 29.978556>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.475780, 36.541927, 29.620670> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.134918, 36.560833, 29.412210>,  <44.930401, 36.572178, 29.287134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.134918, 36.560833, 29.412210>,  <45.475780, 36.541927, 29.620670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.134918, 36.560833, 29.412210> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511613, -0.133976, -0.848707,
		-0.109931, -0.989857, 0.089991,
		-0.852155, 0.047259, -0.521151,
		44.879272, 36.575012, 29.255865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.949051, 37.628761, 26.459368> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.138702, 37.899609, 26.684475>,  <39.252491, 38.062119, 26.819540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.138702, 37.899609, 26.684475>,  <38.949051, 37.628761, 26.459368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.138702, 37.899609, 26.684475> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359774, -0.434385, 0.825756,
		0.803596, -0.593982, 0.037658,
		0.474126, 0.677123, 0.562770,
		39.280941, 38.102745, 26.853306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.201813, 37.257362, 26.937111>,  <38.949051, 37.628761, 26.459368>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.201813, 37.257362, 26.937111> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.224247, 37.617718, 27.109274>,  <39.237709, 37.833931, 27.212572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.224247, 37.617718, 27.109274>,  <39.201813, 37.257362, 26.937111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.224247, 37.617718, 27.109274> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261198, -0.402835, 0.877211,
		0.963654, -0.161622, 0.212717,
		0.056087, 0.900890, 0.430409,
		39.241074, 37.887985, 27.238398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.448971, 37.269249, 27.517900>,  <39.201813, 37.257362, 26.937111>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.448971, 37.269249, 27.517900> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.263489, 37.617493, 27.583643>,  <39.152199, 37.826439, 27.623089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.263489, 37.617493, 27.583643>,  <39.448971, 37.269249, 27.517900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.263489, 37.617493, 27.583643> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111321, -0.241289, 0.964047,
		0.878966, 0.428742, 0.208805,
		-0.463710, 0.870609, 0.164357,
		39.124374, 37.878674, 27.632950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.618679, 37.400791, 28.173670>,  <39.448971, 37.269249, 27.517900>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.618679, 37.400791, 28.173670> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.300972, 37.636482, 28.114418>,  <39.110348, 37.777897, 28.078867>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.300972, 37.636482, 28.114418>,  <39.618679, 37.400791, 28.173670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.300972, 37.636482, 28.114418> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380767, -0.292772, 0.877098,
		0.473445, 0.753056, 0.456900,
		-0.794271, 0.589230, -0.148127,
		39.062691, 37.813251, 28.069981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.615425, 37.982311, 28.559578>,  <39.618679, 37.400791, 28.173670>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.615425, 37.982311, 28.559578> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.230896, 37.921772, 28.467535>,  <39.000179, 37.885448, 28.412310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.230896, 37.921772, 28.467535>,  <39.615425, 37.982311, 28.559578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.230896, 37.921772, 28.467535> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209201, -0.142162, 0.967484,
		-0.179141, 0.978204, 0.105001,
		-0.961324, -0.151350, -0.230108,
		38.942497, 37.876366, 28.398502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.256985, 38.180614, 29.176229>,  <39.615425, 37.982311, 28.559578>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.256985, 38.180614, 29.176229> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.972332, 38.001343, 28.959816>,  <38.801540, 37.893780, 28.829967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.972332, 38.001343, 28.959816>,  <39.256985, 38.180614, 29.176229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.972332, 38.001343, 28.959816> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378382, -0.404361, 0.832657,
		-0.591952, 0.797263, 0.118174,
		-0.711632, -0.448178, -0.541033,
		38.758842, 37.866890, 28.797506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.630215, 38.352119, 29.541100>,  <39.256985, 38.180614, 29.176229>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.630215, 38.352119, 29.541100> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.544212, 38.027100, 29.324381>,  <38.492611, 37.832088, 29.194349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.544212, 38.027100, 29.324381>,  <38.630215, 38.352119, 29.541100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.544212, 38.027100, 29.324381> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275325, -0.481837, 0.831883,
		-0.937000, 0.328029, -0.120117,
		-0.215005, -0.812545, -0.541796,
		38.479710, 37.783337, 29.161842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.798298, 38.219891, 29.674313>,  <38.630215, 38.352119, 29.541100>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.798298, 38.219891, 29.674313> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.984009, 37.889633, 29.546083>,  <38.095436, 37.691479, 29.469147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.984009, 37.889633, 29.546083>,  <37.798298, 38.219891, 29.674313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.984009, 37.889633, 29.546083> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406669, -0.520258, 0.750968,
		-0.786809, -0.218289, -0.577305,
		0.464275, -0.825640, -0.320572,
		38.123291, 37.641941, 29.449911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.228302, 37.704239, 29.525528>,  <37.798298, 38.219891, 29.674313>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.228302, 37.704239, 29.525528> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.575138, 37.518574, 29.597868>,  <37.783241, 37.407177, 29.641272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.575138, 37.518574, 29.597868>,  <37.228302, 37.704239, 29.525528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.575138, 37.518574, 29.597868> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434214, -0.526313, 0.731063,
		-0.244147, -0.712426, -0.657907,
		0.867093, -0.464159, 0.180848,
		37.835266, 37.379326, 29.652122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.081749, 36.981472, 29.631226>,  <37.228302, 37.704239, 29.525528>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.081749, 36.981472, 29.631226> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.445099, 36.975212, 29.798372>,  <37.663109, 36.971455, 29.898661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.445099, 36.975212, 29.798372>,  <37.081749, 36.981472, 29.631226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.445099, 36.975212, 29.798372> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263421, -0.797510, 0.542759,
		0.324756, -0.603103, -0.728561,
		0.908374, -0.015654, 0.417866,
		37.717609, 36.970516, 29.923733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.174156, 36.245937, 29.771149>,  <37.081749, 36.981472, 29.631226>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.174156, 36.245937, 29.771149> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.443169, 36.443367, 29.991726>,  <37.604576, 36.561825, 30.124071>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.443169, 36.443367, 29.991726>,  <37.174156, 36.245937, 29.771149>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.443169, 36.443367, 29.991726> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330562, -0.466320, 0.820533,
		0.662142, -0.734119, -0.150458,
		0.672530, 0.493573, 0.551442,
		37.644928, 36.591438, 30.157158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.381538, 35.796803, 30.286846>,  <37.174156, 36.245937, 29.771149>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.381538, 35.796803, 30.286846> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.483528, 36.151833, 30.440313>,  <37.544720, 36.364849, 30.532394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.483528, 36.151833, 30.440313>,  <37.381538, 35.796803, 30.286846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.483528, 36.151833, 30.440313> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312722, -0.299767, 0.901302,
		0.914983, -0.349788, 0.201132,
		0.254972, 0.887574, 0.383668,
		37.560020, 36.418106, 30.555414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.771374, 35.599869, 30.885557>,  <37.381538, 35.796803, 30.286846>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.771374, 35.599869, 30.885557> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.624092, 35.969109, 30.929945>,  <37.535725, 36.190651, 30.956577>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.624092, 35.969109, 30.929945>,  <37.771374, 35.599869, 30.885557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.624092, 35.969109, 30.929945> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421213, -0.272020, 0.865208,
		0.828859, 0.271829, 0.488980,
		-0.368201, 0.923100, 0.110968,
		37.513634, 36.246040, 30.963236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.129189, 35.884686, 31.496124>,  <37.771374, 35.599869, 30.885557>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.129189, 35.884686, 31.496124> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.785183, 36.088242, 31.481096>,  <37.578781, 36.210377, 31.472080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.785183, 36.088242, 31.481096>,  <38.129189, 35.884686, 31.496124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.785183, 36.088242, 31.481096> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214000, -0.292856, 0.931901,
		0.463236, 0.809483, 0.360762,
		-0.860010, 0.508893, -0.037568,
		37.527180, 36.240910, 31.469826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.836720, 35.702534, 31.907978>,  <38.129189, 35.884686, 31.496124>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.836720, 35.702534, 31.907978> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.887054, 35.323505, 31.790491>,  <38.917255, 35.096088, 31.719999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.887054, 35.323505, 31.790491>,  <38.836720, 35.702534, 31.907978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.887054, 35.323505, 31.790491> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638396, 0.303969, -0.707145,
		0.759352, -0.098522, 0.643178,
		0.125837, -0.947574, -0.293716,
		38.924805, 35.039234, 31.702375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.589298, 35.540825, 31.921392>,  <38.836720, 35.702534, 31.907978>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.589298, 35.540825, 31.921392> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.381920, 35.323517, 31.657249>,  <39.257492, 35.193134, 31.498764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.381920, 35.323517, 31.657249>,  <39.589298, 35.540825, 31.921392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.381920, 35.323517, 31.657249> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665545, 0.228517, -0.710514,
		0.536902, -0.807862, 0.243095,
		-0.518446, -0.543267, -0.660360,
		39.226387, 35.160538, 31.459141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.074909, 35.200169, 31.512514>,  <39.589298, 35.540825, 31.921392>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.074909, 35.200169, 31.512514> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.755989, 35.155643, 31.275225>,  <39.564636, 35.128929, 31.132851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.755989, 35.155643, 31.275225>,  <40.074909, 35.200169, 31.512514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.755989, 35.155643, 31.275225> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576899, 0.148433, -0.803215,
		0.177469, -0.982637, -0.054125,
		-0.797303, -0.111321, -0.593225,
		39.516796, 35.122250, 31.097258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.293179, 34.781834, 30.995821>,  <40.074909, 35.200169, 31.512514>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.293179, 34.781834, 30.995821> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.971779, 34.967457, 30.846672>,  <39.778938, 35.078831, 30.757183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.971779, 34.967457, 30.846672>,  <40.293179, 34.781834, 30.995821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.971779, 34.967457, 30.846672> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517145, 0.233875, -0.823325,
		-0.294868, -0.854371, -0.427906,
		-0.803501, 0.464061, -0.372871,
		39.730728, 35.106674, 30.734810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.100677, 34.472778, 30.309902>,  <40.293179, 34.781834, 30.995821>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.100677, 34.472778, 30.309902> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.943958, 34.840755, 30.315594>,  <39.849926, 35.061543, 30.319010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.943958, 34.840755, 30.315594>,  <40.100677, 34.472778, 30.309902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.943958, 34.840755, 30.315594> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233449, 0.114361, -0.965621,
		-0.889943, -0.375004, -0.259565,
		-0.391796, 0.919942, 0.014231,
		39.826420, 35.116737, 30.319862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.793346, 34.547504, 29.633650>,  <40.100677, 34.472778, 30.309902>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.793346, 34.547504, 29.633650> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.802044, 34.925533, 29.764101>,  <39.807262, 35.152351, 29.842373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.802044, 34.925533, 29.764101>,  <39.793346, 34.547504, 29.633650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.802044, 34.925533, 29.764101> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246671, 0.311052, -0.917824,
		-0.968855, 0.100400, -0.226361,
		0.021739, 0.945075, 0.326130,
		39.808567, 35.209057, 29.861940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.357666, 34.835045, 29.181288>,  <39.793346, 34.547504, 29.633650>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.357666, 34.835045, 29.181288> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.589485, 35.123455, 29.333208>,  <39.728577, 35.296501, 29.424360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.589485, 35.123455, 29.333208>,  <39.357666, 34.835045, 29.181288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.589485, 35.123455, 29.333208> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229904, 0.302461, -0.925020,
		-0.781837, 0.623411, 0.009524,
		0.579548, 0.721025, 0.379799,
		39.763348, 35.339764, 29.447147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.306736, 35.319126, 28.669968>,  <39.357666, 34.835045, 29.181288>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.306736, 35.319126, 28.669968> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.626705, 35.451797, 28.870014>,  <39.818687, 35.531403, 28.990042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.626705, 35.451797, 28.870014>,  <39.306736, 35.319126, 28.669968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.626705, 35.451797, 28.870014> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332672, 0.448513, -0.829557,
		-0.499457, 0.829954, 0.248434,
		0.799920, 0.331681, 0.500115,
		39.866680, 35.551300, 29.020048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.327930, 35.995789, 28.525438>,  <39.306736, 35.319126, 28.669968>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.327930, 35.995789, 28.525438> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.694302, 35.868809, 28.623671>,  <39.914124, 35.792622, 28.682610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.694302, 35.868809, 28.623671>,  <39.327930, 35.995789, 28.525438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.694302, 35.868809, 28.623671> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356441, 0.362128, -0.861286,
		0.184480, 0.876408, 0.444833,
		0.915924, -0.317447, 0.245582,
		39.969078, 35.773575, 28.697346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.781956, 36.614914, 28.468433>,  <39.327930, 35.995789, 28.525438>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.781956, 36.614914, 28.468433> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.039131, 36.308552, 28.470297>,  <40.193436, 36.124733, 28.471415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.039131, 36.308552, 28.470297>,  <39.781956, 36.614914, 28.468433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.039131, 36.308552, 28.470297> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405225, 0.334990, -0.850632,
		0.649945, 0.548788, 0.525741,
		0.642934, -0.765907, 0.004658,
		40.232010, 36.078781, 28.471695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.464447, 36.868050, 28.317219>,  <39.781956, 36.614914, 28.468433>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.464447, 36.868050, 28.317219> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.488914, 36.481476, 28.217407>,  <40.503593, 36.249531, 28.157520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.488914, 36.481476, 28.217407>,  <40.464447, 36.868050, 28.317219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.488914, 36.481476, 28.217407> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502059, 0.245860, -0.829150,
		0.862667, -0.074559, 0.500246,
		0.061170, -0.966434, -0.249528,
		40.507267, 36.191547, 28.142550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.104160, 36.757389, 28.211466>,  <40.464447, 36.868050, 28.317219>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.104160, 36.757389, 28.211466> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.937107, 36.430489, 28.052626>,  <40.836876, 36.234348, 27.957321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.937107, 36.430489, 28.052626>,  <41.104160, 36.757389, 28.211466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.937107, 36.430489, 28.052626> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527673, 0.137641, -0.838222,
		0.739693, -0.559608, 0.373757,
		-0.417631, -0.817248, -0.397102,
		40.811817, 36.185314, 27.933495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.713669, 36.333107, 27.916935>,  <41.104160, 36.757389, 28.211466>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.713669, 36.333107, 27.916935> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.379032, 36.235256, 27.720865>,  <41.178249, 36.176544, 27.603224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.379032, 36.235256, 27.720865>,  <41.713669, 36.333107, 27.916935>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.379032, 36.235256, 27.720865> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497083, 0.037119, -0.866908,
		0.230264, -0.968907, 0.090547,
		-0.836592, -0.244627, -0.490175,
		41.128056, 36.161869, 27.573812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.928326, 35.841667, 27.436234>,  <41.713669, 36.333107, 27.916935>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.928326, 35.841667, 27.436234> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.580730, 35.986374, 27.301191>,  <41.372173, 36.073196, 27.220165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.580730, 35.986374, 27.301191>,  <41.928326, 35.841667, 27.436234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.580730, 35.986374, 27.301191> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428162, 0.207712, -0.879507,
		-0.248051, -0.908835, -0.335394,
		-0.868993, 0.361766, -0.337606,
		41.320034, 36.094902, 27.199909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.183781, 35.135689, 27.253357>,  <41.928326, 35.841667, 27.436234>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.183781, 35.135689, 27.253357> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.526112, 34.929707, 27.233858>,  <42.731510, 34.806118, 27.222158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.526112, 34.929707, 27.233858>,  <42.183781, 35.135689, 27.253357>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.526112, 34.929707, 27.233858> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178668, -0.382746, 0.906412,
		-0.485419, -0.767026, -0.419571,
		0.855831, -0.514953, -0.048749,
		42.782860, 34.775223, 27.219234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.052967, 34.449528, 27.307182>,  <42.183781, 35.135689, 27.253357>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.052967, 34.449528, 27.307182> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.426456, 34.515911, 27.434063>,  <42.650551, 34.555740, 27.510191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.426456, 34.515911, 27.434063>,  <42.052967, 34.449528, 27.307182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.426456, 34.515911, 27.434063> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202715, -0.485209, 0.850575,
		0.295070, -0.858504, -0.419409,
		0.933724, 0.165959, 0.317202,
		42.706573, 34.565701, 27.529224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.250004, 33.876675, 27.406086>,  <42.052967, 34.449528, 27.307182>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.250004, 33.876675, 27.406086> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.507801, 34.096504, 27.618727>,  <42.662479, 34.228401, 27.746311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.507801, 34.096504, 27.618727>,  <42.250004, 33.876675, 27.406086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.507801, 34.096504, 27.618727> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100863, -0.628074, 0.771589,
		0.757928, -0.550903, -0.349358,
		0.644493, 0.549572, 0.531601,
		42.701149, 34.261375, 27.778208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.652580, 33.408401, 27.862902>,  <42.250004, 33.876675, 27.406086>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.652580, 33.408401, 27.862902> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.740559, 33.759663, 28.032833>,  <42.793346, 33.970417, 28.134792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.740559, 33.759663, 28.032833>,  <42.652580, 33.408401, 27.862902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.740559, 33.759663, 28.032833> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001881, -0.435111, 0.900375,
		0.975511, -0.198829, -0.094047,
		0.219942, 0.878149, 0.424830,
		42.806541, 34.023106, 28.160282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.304142, 33.264416, 28.273413>,  <42.652580, 33.408401, 27.862902>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.304142, 33.264416, 28.273413> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.104382, 33.576988, 28.423063>,  <42.984528, 33.764530, 28.512854>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.104382, 33.576988, 28.423063>,  <43.304142, 33.264416, 28.273413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.104382, 33.576988, 28.423063> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084460, -0.473684, 0.876635,
		0.862246, 0.406191, 0.302556,
		-0.499397, 0.781430, 0.374126,
		42.954563, 33.811417, 28.535301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.599014, 33.329372, 28.941530>,  <43.304142, 33.264416, 28.273413>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.599014, 33.329372, 28.941530> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.247814, 33.520699, 28.948812>,  <43.037094, 33.635494, 28.953182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.247814, 33.520699, 28.948812>,  <43.599014, 33.329372, 28.941530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.247814, 33.520699, 28.948812> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146615, -0.304938, 0.941019,
		0.455658, 0.823544, 0.337864,
		-0.877998, 0.478318, 0.018203,
		42.984413, 33.664192, 28.954273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.560848, 33.711506, 29.668322>,  <43.599014, 33.329372, 28.941530>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.560848, 33.711506, 29.668322> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.189369, 33.714306, 29.520012>,  <42.966480, 33.715984, 29.431026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.189369, 33.714306, 29.520012>,  <43.560848, 33.711506, 29.668322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.189369, 33.714306, 29.520012> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349327, -0.352103, 0.868328,
		-0.124472, 0.935935, 0.329442,
		-0.928697, 0.007001, -0.370775,
		42.910759, 33.716408, 29.408779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.204777, 33.927189, 30.217144>,  <43.560848, 33.711506, 29.668322>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.204777, 33.927189, 30.217144> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.946213, 33.736546, 29.978819>,  <42.791073, 33.622158, 29.835823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.946213, 33.736546, 29.978819>,  <43.204777, 33.927189, 30.217144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.946213, 33.736546, 29.978819> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409469, -0.442218, 0.797984,
		-0.643805, 0.759795, 0.090700,
		-0.646413, -0.476607, -0.595815,
		42.752289, 33.593563, 29.800074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.566071, 34.010281, 30.475857>,  <43.204777, 33.927189, 30.217144>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.566071, 34.010281, 30.475857> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.507416, 33.705524, 30.223499>,  <42.472221, 33.522671, 30.072084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.507416, 33.705524, 30.223499>,  <42.566071, 34.010281, 30.475857>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.507416, 33.705524, 30.223499> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654880, -0.403233, 0.639168,
		-0.741370, 0.506885, -0.439815,
		-0.146636, -0.761886, -0.630894,
		42.463425, 33.476959, 30.034231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.847889, 33.847900, 30.575697>,  <42.566071, 34.010281, 30.475857>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.847889, 33.847900, 30.575697> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.036709, 33.526230, 30.431211>,  <42.150002, 33.333229, 30.344521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.036709, 33.526230, 30.431211>,  <41.847889, 33.847900, 30.575697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.036709, 33.526230, 30.431211> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416484, -0.564562, 0.712608,
		-0.776989, -0.185945, -0.601426,
		0.472048, -0.804173, -0.361215,
		42.178322, 33.284977, 30.322847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.263779, 33.305672, 30.319614>,  <41.847889, 33.847900, 30.575697>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.263779, 33.305672, 30.319614> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.614006, 33.134293, 30.408882>,  <41.824142, 33.031464, 30.462442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.614006, 33.134293, 30.408882>,  <41.263779, 33.305672, 30.319614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.614006, 33.134293, 30.408882> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418484, -0.441899, 0.793471,
		-0.241345, -0.788133, -0.566214,
		0.875571, -0.428452, 0.223171,
		41.876678, 33.005756, 30.475834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.067825, 32.752335, 30.415079>,  <41.263779, 33.305672, 30.319614>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.067825, 32.752335, 30.415079> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.422592, 32.712414, 30.595484>,  <41.635452, 32.688461, 30.703726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.422592, 32.712414, 30.595484>,  <41.067825, 32.752335, 30.415079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.422592, 32.712414, 30.595484> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456546, -0.337940, 0.823021,
		0.070274, -0.935861, -0.345291,
		0.886921, -0.099804, 0.451012,
		41.688667, 32.682472, 30.730787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.960602, 32.176308, 30.805264>,  <41.067825, 32.752335, 30.415079>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.960602, 32.176308, 30.805264> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.305443, 32.307171, 30.960054>,  <41.512348, 32.385689, 31.052929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.305443, 32.307171, 30.960054>,  <40.960602, 32.176308, 30.805264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.305443, 32.307171, 30.960054> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333067, -0.209704, 0.919288,
		0.381906, -0.921406, -0.071818,
		0.862099, 0.327162, 0.386977,
		41.564072, 32.405319, 31.076147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.325039, 31.569031, 31.196812>,  <40.960602, 32.176308, 30.805264>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.325039, 31.569031, 31.196812> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.460548, 31.916286, 31.341902>,  <41.541855, 32.124638, 31.428955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.460548, 31.916286, 31.341902>,  <41.325039, 31.569031, 31.196812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.460548, 31.916286, 31.341902> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465594, -0.180320, 0.866433,
		0.817589, -0.462410, 0.343111,
		0.338777, 0.868137, 0.362723,
		41.562183, 32.176727, 31.450718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<44.940968, 35.261978, 28.404211> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.786293, 35.629837, 28.431700>,  <44.693489, 35.850552, 28.448193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.786293, 35.629837, 28.431700>,  <44.940968, 35.261978, 28.404211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.786293, 35.629837, 28.431700> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269944, 0.184129, -0.945107,
		-0.881817, -0.346911, -0.319454,
		-0.386689, 0.919646, 0.068721,
		44.670288, 35.905731, 28.452316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.624340, 35.265110, 27.854090>,  <44.940968, 35.261978, 28.404211>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.624340, 35.265110, 27.854090> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.680450, 35.648163, 27.954695>,  <44.714119, 35.877995, 28.015059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.680450, 35.648163, 27.954695>,  <44.624340, 35.265110, 27.854090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.680450, 35.648163, 27.954695> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220956, 0.217340, -0.950759,
		-0.965143, 0.188944, -0.181106,
		0.140279, 0.957634, 0.251512,
		44.722534, 35.935452, 28.030148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.314800, 35.586807, 27.313206>,  <44.624340, 35.265110, 27.854090>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.314800, 35.586807, 27.313206> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.505440, 35.903385, 27.466291>,  <44.619823, 36.093330, 27.558144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.505440, 35.903385, 27.466291>,  <44.314800, 35.586807, 27.313206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.505440, 35.903385, 27.466291> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111606, 0.377348, -0.919322,
		-0.872007, 0.480863, 0.091515,
		0.476601, 0.791441, 0.382716,
		44.648418, 36.140816, 27.581106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.885433, 36.059753, 26.984398>,  <44.314800, 35.586807, 27.313206>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.885433, 36.059753, 26.984398> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.241547, 36.196087, 27.105219>,  <44.455215, 36.277885, 27.177711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.241547, 36.196087, 27.105219>,  <43.885433, 36.059753, 26.984398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.241547, 36.196087, 27.105219> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128734, 0.447854, -0.884791,
		-0.436840, 0.826595, 0.354838,
		0.890280, 0.340833, 0.302052,
		44.508629, 36.298336, 27.195835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.896679, 36.760662, 26.780470>,  <43.885433, 36.059753, 26.984398>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.896679, 36.760662, 26.780470> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.278992, 36.654682, 26.831507>,  <44.508381, 36.591095, 26.862129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.278992, 36.654682, 26.831507>,  <43.896679, 36.760662, 26.780470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.278992, 36.654682, 26.831507> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237872, 0.441459, -0.865177,
		0.172899, 0.857273, 0.484962,
		0.955784, -0.264947, 0.127593,
		44.565727, 36.575199, 26.869785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.291321, 37.306286, 26.700413>,  <43.896679, 36.760662, 26.780470>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.291321, 37.306286, 26.700413> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.541019, 37.000240, 26.637270>,  <44.690838, 36.816612, 26.599384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.541019, 37.000240, 26.637270>,  <44.291321, 37.306286, 26.700413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.541019, 37.000240, 26.637270> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232760, 0.375042, -0.897310,
		0.745746, 0.523401, 0.412207,
		0.624248, -0.765111, -0.157859,
		44.728294, 36.770706, 26.589912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.821362, 37.631836, 26.342527>,  <44.291321, 37.306286, 26.700413>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.821362, 37.631836, 26.342527> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.895203, 37.243336, 26.282412>,  <44.939507, 37.010235, 26.246342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.895203, 37.243336, 26.282412>,  <44.821362, 37.631836, 26.342527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.895203, 37.243336, 26.282412> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220529, 0.189955, -0.956705,
		0.957752, 0.143467, 0.249256,
		0.184603, -0.971254, -0.150291,
		44.950584, 36.951958, 26.237324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.538792, 37.584976, 26.084316>,  <44.821362, 37.631836, 26.342527>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.538792, 37.584976, 26.084316> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.337414, 37.253315, 25.987118>,  <45.216587, 37.054317, 25.928799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.337414, 37.253315, 25.987118>,  <45.538792, 37.584976, 26.084316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.337414, 37.253315, 25.987118> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215504, 0.151848, -0.964624,
		0.836719, -0.538003, 0.102238,
		-0.503446, -0.829152, -0.242997,
		45.186378, 37.004570, 25.914219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.019085, 37.231045, 25.712196>,  <45.538792, 37.584976, 26.084316>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.019085, 37.231045, 25.712196> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.663910, 37.088097, 25.596373>,  <45.450806, 37.002327, 25.526878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.663910, 37.088097, 25.596373>,  <46.019085, 37.231045, 25.712196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.663910, 37.088097, 25.596373> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322985, -0.036248, -0.945710,
		0.327476, -0.933258, 0.147612,
		-0.887942, -0.357374, -0.289558,
		45.397526, 36.980885, 25.509504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.174110, 36.716869, 25.272209>,  <46.019085, 37.231045, 25.712196>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.174110, 36.716869, 25.272209> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.793308, 36.793003, 25.176327>,  <45.564827, 36.838684, 25.118797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.793308, 36.793003, 25.176327>,  <46.174110, 36.716869, 25.272209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.793308, 36.793003, 25.176327> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233583, -0.054326, -0.970818,
		-0.197807, -0.980214, 0.007258,
		-0.952004, 0.190339, -0.239707,
		45.507706, 36.850105, 25.104414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.014706, 36.268173, 24.689159>,  <46.174110, 36.716869, 25.272209>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.014706, 36.268173, 24.689159> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.755268, 36.572147, 24.672089>,  <45.599606, 36.754532, 24.661846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.755268, 36.572147, 24.672089>,  <46.014706, 36.268173, 24.689159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.755268, 36.572147, 24.672089> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152012, 0.074391, -0.985575,
		-0.745798, -0.645729, -0.163769,
		-0.648597, 0.759935, -0.042678,
		45.560688, 36.800129, 24.659285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.718037, 36.115685, 24.048918>,  <46.014706, 36.268173, 24.689159>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.718037, 36.115685, 24.048918> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.637936, 36.498222, 24.134050>,  <45.589874, 36.727745, 24.185129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.637936, 36.498222, 24.134050>,  <45.718037, 36.115685, 24.048918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.637936, 36.498222, 24.134050> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169084, 0.247707, -0.953966,
		-0.965043, -0.155051, -0.211308,
		-0.200256, 0.956348, 0.212831,
		45.577858, 36.785126, 24.197899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.141479, 36.277431, 23.592402>,  <45.718037, 36.115685, 24.048918>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.141479, 36.277431, 23.592402> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.389736, 36.562321, 23.723574>,  <45.538692, 36.733253, 23.802277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.389736, 36.562321, 23.723574>,  <45.141479, 36.277431, 23.592402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.389736, 36.562321, 23.723574> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320974, 0.150801, -0.935005,
		-0.715386, 0.685562, -0.135012,
		0.620644, 0.712224, 0.327929,
		45.575928, 36.775990, 23.821953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.021778, 36.885189, 23.129618>,  <45.141479, 36.277431, 23.592402>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.021778, 36.885189, 23.129618> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.382000, 36.860359, 23.301731>,  <45.598133, 36.845463, 23.404999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.382000, 36.860359, 23.301731>,  <45.021778, 36.885189, 23.129618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.382000, 36.860359, 23.301731> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434615, 0.152268, -0.887651,
		-0.010418, 0.986388, 0.164104,
		0.900556, -0.062074, 0.430285,
		45.652168, 36.841736, 23.430817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.905586, 36.306625, 22.563467>,  <45.021778, 36.885189, 23.129618>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.905586, 36.306625, 22.563467> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.609859, 36.145851, 22.347374>,  <44.432423, 36.049385, 22.217718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.609859, 36.145851, 22.347374>,  <44.905586, 36.306625, 22.563467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.609859, 36.145851, 22.347374> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580157, -0.027013, 0.814056,
		-0.341792, 0.915269, -0.213215,
		-0.739321, -0.401936, -0.540233,
		44.388062, 36.025269, 22.185305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.325523, 36.552788, 22.769600>,  <44.905586, 36.306625, 22.563467>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.325523, 36.552788, 22.769600> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.199776, 36.205753, 22.615473>,  <44.124329, 35.997532, 22.522997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.199776, 36.205753, 22.615473>,  <44.325523, 36.552788, 22.769600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.199776, 36.205753, 22.615473> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405211, -0.244424, 0.880943,
		-0.858473, 0.433077, -0.274715,
		-0.314369, -0.867584, -0.385319,
		44.105465, 35.945477, 22.499878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.758106, 36.407715, 23.085257>,  <44.325523, 36.552788, 22.769600>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.758106, 36.407715, 23.085257> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.791599, 36.043697, 22.922871>,  <43.811695, 35.825287, 22.825439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.791599, 36.043697, 22.922871>,  <43.758106, 36.407715, 23.085257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.791599, 36.043697, 22.922871> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277477, -0.412573, 0.867635,
		-0.957077, 0.040000, -0.287061,
		0.083728, -0.910046, -0.405963,
		43.816719, 35.770683, 22.801083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.043541, 36.145012, 23.109957>,  <43.758106, 36.407715, 23.085257>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.043541, 36.145012, 23.109957> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.303055, 35.841011, 23.094648>,  <43.458763, 35.658611, 23.085464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.303055, 35.841011, 23.094648>,  <43.043541, 36.145012, 23.109957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.303055, 35.841011, 23.094648> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423661, -0.402524, 0.811471,
		-0.632129, -0.510258, -0.583138,
		0.648787, -0.760007, -0.038271,
		43.497692, 35.613010, 23.083168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.650387, 35.596340, 23.360418>,  <43.043541, 36.145012, 23.109957>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.650387, 35.596340, 23.360418> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.036331, 35.492523, 23.376842>,  <43.267899, 35.430233, 23.386698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.036331, 35.492523, 23.376842>,  <42.650387, 35.596340, 23.360418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.036331, 35.492523, 23.376842> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126030, -0.319963, 0.939010,
		-0.230576, -0.911186, -0.341429,
		0.964858, -0.259544, 0.041061,
		43.325787, 35.414658, 23.389160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.712215, 34.805565, 23.564699>,  <42.650387, 35.596340, 23.360418>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.712215, 34.805565, 23.564699> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.041180, 35.018665, 23.644510>,  <43.238560, 35.146526, 23.692396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.041180, 35.018665, 23.644510>,  <42.712215, 34.805565, 23.564699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.041180, 35.018665, 23.644510> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010736, -0.336132, 0.941754,
		0.568786, -0.776655, -0.270720,
		0.822415, 0.532750, 0.199525,
		43.287903, 35.178490, 23.704369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.188099, 34.276627, 23.821808>,  <42.712215, 34.805565, 23.564699>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.188099, 34.276627, 23.821808> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.312439, 34.634884, 23.949053>,  <43.387043, 34.849838, 24.025400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.312439, 34.634884, 23.949053>,  <43.188099, 34.276627, 23.821808>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.312439, 34.634884, 23.949053> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147887, -0.285038, 0.947039,
		0.938883, -0.341431, 0.043850,
		0.310850, 0.895644, 0.318110,
		43.405693, 34.903576, 24.044485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.691296, 34.126751, 24.237478>,  <43.188099, 34.276627, 23.821808>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.691296, 34.126751, 24.237478> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.586182, 34.499420, 24.337820>,  <43.523113, 34.723022, 24.398026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.586182, 34.499420, 24.337820>,  <43.691296, 34.126751, 24.237478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.586182, 34.499420, 24.337820> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029848, -0.267716, 0.963035,
		0.964392, 0.245586, 0.098161,
		-0.262787, 0.931674, 0.250853,
		43.507347, 34.778923, 24.413076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.108429, 34.337784, 24.821732>,  <43.691296, 34.126751, 24.237478>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.108429, 34.337784, 24.821732> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.818413, 34.612385, 24.843760>,  <43.644402, 34.777145, 24.856976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.818413, 34.612385, 24.843760>,  <44.108429, 34.337784, 24.821732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.818413, 34.612385, 24.843760> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000889, -0.079028, 0.996872,
		0.688703, 0.722824, 0.056688,
		-0.725043, 0.686498, 0.055070,
		43.600899, 34.818333, 24.860281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.397789, 34.860485, 25.320389>,  <44.108429, 34.337784, 24.821732>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.397789, 34.860485, 25.320389> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.001019, 34.890121, 25.279211>,  <43.762959, 34.907902, 25.254503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.001019, 34.890121, 25.279211>,  <44.397789, 34.860485, 25.320389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.001019, 34.890121, 25.279211> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106387, -0.044093, 0.993347,
		0.069055, 0.996277, 0.051619,
		-0.991924, 0.074087, -0.102946,
		43.703442, 34.912346, 25.248327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.328163, 35.205441, 25.876829>,  <44.397789, 34.860485, 25.320389>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.328163, 35.205441, 25.876829> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.956936, 35.096409, 25.775328>,  <43.734200, 35.030991, 25.714426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.956936, 35.096409, 25.775328>,  <44.328163, 35.205441, 25.876829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.956936, 35.096409, 25.775328> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250323, -0.047904, 0.966976,
		-0.275729, 0.960941, -0.023773,
		-0.928069, -0.272574, -0.253754,
		43.678516, 35.014637, 25.699202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.895714, 35.626308, 26.247274>,  <44.328163, 35.205441, 25.876829>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.895714, 35.626308, 26.247274> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.653786, 35.319645, 26.161087>,  <43.508629, 35.135647, 26.109375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.653786, 35.319645, 26.161087>,  <43.895714, 35.626308, 26.247274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.653786, 35.319645, 26.161087> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280115, -0.048470, 0.958742,
		-0.745470, 0.640225, -0.185436,
		-0.604822, -0.766657, -0.215470,
		43.472340, 35.089649, 26.096447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.258625, 35.764542, 26.593534>,  <43.895714, 35.626308, 26.247274>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.258625, 35.764542, 26.593534> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.227425, 35.371037, 26.528881>,  <43.208702, 35.134933, 26.490089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.227425, 35.371037, 26.528881>,  <43.258625, 35.764542, 26.593534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.227425, 35.371037, 26.528881> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409167, -0.116252, 0.905024,
		-0.909119, 0.136729, -0.393456,
		-0.078003, -0.983763, -0.161632,
		43.204025, 35.075909, 26.480392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.673664, 35.599968, 27.003935>,  <43.258625, 35.764542, 26.593534>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.673664, 35.599968, 27.003935> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.855671, 35.251755, 26.928959>,  <42.964874, 35.042828, 26.883972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.855671, 35.251755, 26.928959>,  <42.673664, 35.599968, 27.003935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.855671, 35.251755, 26.928959> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335922, -0.362747, 0.869236,
		-0.824690, -0.332553, -0.457487,
		0.455020, -0.870531, -0.187442,
		42.992176, 34.990597, 26.872726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.061512, 35.747314, 26.542858>,  <42.673664, 35.599968, 27.003935>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.061512, 35.747314, 26.542858> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.723007, 35.949776, 26.609371>,  <41.519905, 36.071251, 26.649279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.723007, 35.949776, 26.609371>,  <42.061512, 35.747314, 26.542858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.723007, 35.949776, 26.609371> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057997, 0.397778, -0.915647,
		-0.529598, -0.765235, -0.365980,
		-0.846264, 0.506151, 0.166281,
		41.469128, 36.101620, 26.659256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.728184, 35.743950, 25.911528>,  <42.061512, 35.747314, 26.542858>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.728184, 35.743950, 25.911528> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.530952, 36.046574, 26.083336>,  <41.412613, 36.228149, 26.186420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.530952, 36.046574, 26.083336>,  <41.728184, 35.743950, 25.911528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.530952, 36.046574, 26.083336> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200619, 0.381523, -0.902326,
		-0.846538, -0.531086, -0.036340,
		-0.493078, 0.756563, 0.429520,
		41.383030, 36.273544, 26.212193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.123535, 35.971428, 25.463511>,  <41.728184, 35.743950, 25.911528>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.123535, 35.971428, 25.463511> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.195786, 36.295082, 25.687181>,  <41.239136, 36.489273, 25.821384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.195786, 36.295082, 25.687181>,  <41.123535, 35.971428, 25.463511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.195786, 36.295082, 25.687181> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075150, 0.578220, -0.812413,
		-0.980676, 0.104723, 0.165249,
		0.180629, 0.809132, 0.559176,
		41.249973, 36.537823, 25.854935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.704441, 36.455696, 25.170399>,  <41.123535, 35.971428, 25.463511>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.704441, 36.455696, 25.170399> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.967556, 36.673702, 25.378349>,  <41.125427, 36.804504, 25.503120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.967556, 36.673702, 25.378349>,  <40.704441, 36.455696, 25.170399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.967556, 36.673702, 25.378349> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019124, 0.702087, -0.711835,
		-0.752958, 0.458296, 0.472249,
		0.657790, 0.545013, 0.519877,
		41.164894, 36.837208, 25.534313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.500786, 37.266270, 25.233723>,  <40.704441, 36.455696, 25.170399>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.500786, 37.266270, 25.233723> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.898983, 37.234936, 25.255098>,  <41.137901, 37.216137, 25.267923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.898983, 37.234936, 25.255098>,  <40.500786, 37.266270, 25.233723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.898983, 37.234936, 25.255098> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085339, 0.494367, -0.865054,
		0.041342, 0.865717, 0.498824,
		0.995494, -0.078332, 0.053441,
		41.197632, 37.211437, 25.271132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.663158, 37.821560, 24.868057>,  <40.500786, 37.266270, 25.233723>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.663158, 37.821560, 24.868057> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.991199, 37.593796, 24.890711>,  <41.188023, 37.457138, 24.904303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.991199, 37.593796, 24.890711>,  <40.663158, 37.821560, 24.868057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.991199, 37.593796, 24.890711> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287855, 0.324990, -0.900844,
		0.494545, 0.755085, 0.430432,
		0.820100, -0.569411, 0.056633,
		41.237228, 37.422974, 24.907701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.192646, 38.257496, 24.596035>,  <40.663158, 37.821560, 24.868057>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.192646, 38.257496, 24.596035> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.367287, 37.897911, 24.581924>,  <41.472073, 37.682159, 24.573458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.367287, 37.897911, 24.581924>,  <41.192646, 38.257496, 24.596035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.367287, 37.897911, 24.581924> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364591, 0.212647, -0.906562,
		0.822468, 0.382943, 0.420595,
		0.436600, -0.898964, -0.035278,
		41.498268, 37.628223, 24.571341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.204262, 39.013813, 24.750465>,  <41.192646, 38.257496, 24.596035>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.204262, 39.013813, 24.750465> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.838402, 39.155663, 24.672840>,  <40.618885, 39.240772, 24.626265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.838402, 39.155663, 24.672840>,  <41.204262, 39.013813, 24.750465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.838402, 39.155663, 24.672840> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333484, -0.390569, 0.858047,
		0.228489, 0.849528, 0.475495,
		-0.914648, 0.354624, -0.194063,
		40.564007, 39.262051, 24.614620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.985981, 39.443684, 25.329401>,  <41.204262, 39.013813, 24.750465>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.985981, 39.443684, 25.329401> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.642151, 39.363815, 25.141247>,  <40.435852, 39.315895, 25.028355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.642151, 39.363815, 25.141247>,  <40.985981, 39.443684, 25.329401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.642151, 39.363815, 25.141247> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402358, -0.303002, 0.863886,
		-0.315023, 0.931837, 0.180113,
		-0.859575, -0.199674, -0.470384,
		40.384277, 39.303913, 25.000132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.444195, 39.813671, 25.701002>,  <40.985981, 39.443684, 25.329401>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.444195, 39.813671, 25.701002> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.246494, 39.536034, 25.491642>,  <40.127872, 39.369450, 25.366026>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.246494, 39.536034, 25.491642>,  <40.444195, 39.813671, 25.701002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.246494, 39.536034, 25.491642> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403311, -0.350283, 0.845365,
		-0.770102, 0.628916, -0.106809,
		-0.494250, -0.694094, -0.523402,
		40.098221, 39.327805, 25.334621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.903927, 39.782726, 26.071739>,  <40.444195, 39.813671, 25.701002>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.903927, 39.782726, 26.071739> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.900024, 39.427532, 25.887833>,  <39.897682, 39.214417, 25.777489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.900024, 39.427532, 25.887833>,  <39.903927, 39.782726, 26.071739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.900024, 39.427532, 25.887833> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521950, -0.387658, 0.759795,
		-0.852920, 0.247391, -0.459701,
		-0.009760, -0.887986, -0.459767,
		39.897095, 39.161137, 25.749903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.120407, 39.514603, 26.115835>,  <39.903927, 39.782726, 26.071739>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.120407, 39.514603, 26.115835> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.388088, 39.222488, 26.060925>,  <39.548698, 39.047218, 26.027979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.388088, 39.222488, 26.060925>,  <39.120407, 39.514603, 26.115835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.388088, 39.222488, 26.060925> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372082, -0.489234, 0.788800,
		-0.643213, -0.476788, -0.599124,
		0.669202, -0.730290, -0.137278,
		39.588848, 39.003403, 26.019741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.763702, 38.975960, 26.068249>,  <39.120407, 39.514603, 26.115835>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.763702, 38.975960, 26.068249> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.120949, 38.819206, 26.156590>,  <39.335297, 38.725155, 26.209595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.120949, 38.819206, 26.156590>,  <38.763702, 38.975960, 26.068249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.120949, 38.819206, 26.156590> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406086, -0.491202, 0.770594,
		-0.193496, -0.777915, -0.597836,
		0.893114, -0.391879, 0.220855,
		39.388882, 38.701641, 26.222845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.680225, 38.287926, 26.187454>,  <38.763702, 38.975960, 26.068249>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.680225, 38.287926, 26.187454> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.033039, 38.360958, 26.361202>,  <39.244728, 38.404778, 26.465452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.033039, 38.360958, 26.361202>,  <38.680225, 38.287926, 26.187454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.033039, 38.360958, 26.361202> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326626, -0.427511, 0.842941,
		0.339603, -0.885381, -0.317444,
		0.882035, 0.182580, 0.434372,
		39.297649, 38.415733, 26.491514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<42.728569, 39.707825, 24.539480> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.394413, 39.492432, 24.495358>,  <42.193920, 39.363197, 24.468884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.394413, 39.492432, 24.495358>,  <42.728569, 39.707825, 24.539480>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.394413, 39.492432, 24.495358> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474792, -0.605805, -0.638414,
		0.276947, -0.585697, 0.761748,
		-0.835387, -0.538479, -0.110308,
		42.143795, 39.330887, 24.462265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.154125, 39.201229, 24.263224>,  <42.728569, 39.707825, 24.539480>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.154125, 39.201229, 24.263224> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.539719, 39.123020, 24.335333>,  <43.771076, 39.076096, 24.378599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.539719, 39.123020, 24.335333>,  <43.154125, 39.201229, 24.263224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.539719, 39.123020, 24.335333> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156474, 0.131130, 0.978939,
		-0.215045, -0.971893, 0.095813,
		0.963987, -0.195524, 0.180275,
		43.828915, 39.064362, 24.389416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.159016, 38.716274, 24.888115>,  <43.154125, 39.201229, 24.263224>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.159016, 38.716274, 24.888115> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.523010, 38.881714, 24.876387>,  <43.741405, 38.980976, 24.869350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.523010, 38.881714, 24.876387>,  <43.159016, 38.716274, 24.888115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.523010, 38.881714, 24.876387> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047790, -0.034379, 0.998265,
		0.411875, -0.909809, -0.051051,
		0.909986, 0.413600, -0.029320,
		43.796005, 39.005795, 24.867590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.500149, 38.387367, 25.380695>,  <43.159016, 38.716274, 24.888115>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.500149, 38.387367, 25.380695> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.733654, 38.709206, 25.337172>,  <43.873756, 38.902309, 25.311058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.733654, 38.709206, 25.337172>,  <43.500149, 38.387367, 25.380695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.733654, 38.709206, 25.337172> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060230, 0.090732, 0.994052,
		0.809684, -0.586849, 0.004505,
		0.583767, 0.804597, -0.108810,
		43.908783, 38.950584, 25.304529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.078106, 38.254051, 25.740696>,  <43.500149, 38.387367, 25.380695>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.078106, 38.254051, 25.740696> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.055012, 38.652943, 25.721928>,  <44.041153, 38.892277, 25.710667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.055012, 38.652943, 25.721928>,  <44.078106, 38.254051, 25.740696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.055012, 38.652943, 25.721928> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029400, 0.045279, 0.998542,
		0.997899, 0.059033, 0.026704,
		-0.057738, 0.997229, -0.046919,
		44.037689, 38.952110, 25.707851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.574722, 38.472660, 26.172264>,  <44.078106, 38.254051, 25.740696>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.574722, 38.472660, 26.172264> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.353348, 38.803135, 26.130083>,  <44.220524, 39.001419, 26.104774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.353348, 38.803135, 26.130083>,  <44.574722, 38.472660, 26.172264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.353348, 38.803135, 26.130083> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043215, 0.097956, 0.994252,
		0.831768, 0.554815, -0.018509,
		-0.553439, 0.826187, -0.105453,
		44.187317, 39.050991, 26.098448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.842735, 38.974197, 26.605467>,  <44.574722, 38.472660, 26.172264>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.842735, 38.974197, 26.605467> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.463985, 39.068913, 26.518414>,  <44.236736, 39.125744, 26.466181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.463985, 39.068913, 26.518414>,  <44.842735, 38.974197, 26.605467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.463985, 39.068913, 26.518414> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161716, 0.234383, 0.958599,
		0.277998, 0.942865, -0.183637,
		-0.946871, 0.236792, -0.217635,
		44.179924, 39.139950, 26.453123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.779564, 39.619198, 26.885391>,  <44.842735, 38.974197, 26.605467>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.779564, 39.619198, 26.885391> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.414349, 39.458546, 26.856947>,  <44.195221, 39.362156, 26.839880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.414349, 39.458546, 26.856947>,  <44.779564, 39.619198, 26.885391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.414349, 39.458546, 26.856947> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143876, 0.154001, 0.977540,
		-0.381655, 0.902762, -0.198393,
		-0.913038, -0.401627, -0.071111,
		44.140438, 39.338058, 26.835613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.469868, 39.988720, 27.370201>,  <44.779564, 39.619198, 26.885391>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.469868, 39.988720, 27.370201> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.207153, 39.693871, 27.306591>,  <44.049526, 39.516960, 27.268425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.207153, 39.693871, 27.306591>,  <44.469868, 39.988720, 27.370201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.207153, 39.693871, 27.306591> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373247, 0.134536, 0.917925,
		-0.655228, 0.662232, -0.363489,
		-0.656782, -0.737122, -0.159025,
		44.010120, 39.472733, 27.258884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.759556, 40.268288, 27.354324>,  <44.469868, 39.988720, 27.370201>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.759556, 40.268288, 27.354324> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.704052, 39.876518, 27.412954>,  <43.670750, 39.641457, 27.448132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.704052, 39.876518, 27.412954>,  <43.759556, 40.268288, 27.354324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.704052, 39.876518, 27.412954> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580507, 0.200353, 0.789221,
		-0.802345, 0.024424, -0.596361,
		-0.138759, -0.979419, 0.146574,
		43.662426, 39.582691, 27.456926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.079338, 40.180271, 27.642672>,  <43.759556, 40.268288, 27.354324>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.079338, 40.180271, 27.642672> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.214886, 39.808723, 27.702490>,  <43.296215, 39.585793, 27.738380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.214886, 39.808723, 27.702490>,  <43.079338, 40.180271, 27.642672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.214886, 39.808723, 27.702490> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618943, -0.100386, 0.778994,
		-0.708574, -0.356538, -0.608937,
		0.338870, -0.928872, 0.149546,
		43.316547, 39.530064, 27.747355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.525181, 39.608887, 27.737810>,  <43.079338, 40.180271, 27.642672>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.525181, 39.608887, 27.737810> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.855595, 39.487381, 27.927715>,  <43.053841, 39.414478, 28.041658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.855595, 39.487381, 27.927715>,  <42.525181, 39.608887, 27.737810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.855595, 39.487381, 27.927715> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532150, -0.142776, 0.834524,
		-0.185722, -0.941985, -0.279591,
		0.826029, -0.303774, 0.474761,
		43.103405, 39.396252, 28.070145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.815598, 39.545376, 27.735044>,  <42.525181, 39.608887, 27.737810>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.815598, 39.545376, 27.735044> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.749504, 39.922058, 27.852270>,  <41.709846, 40.148067, 27.922606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.749504, 39.922058, 27.852270>,  <41.815598, 39.545376, 27.735044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.749504, 39.922058, 27.852270> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415094, 0.335952, -0.845478,
		-0.894648, -0.018053, -0.446407,
		-0.165234, 0.941706, 0.293065,
		41.699932, 40.204571, 27.940189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.534534, 39.966637, 27.081676>,  <41.815598, 39.545376, 27.735044>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.534534, 39.966637, 27.081676> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.600147, 40.277321, 27.324924>,  <41.639515, 40.463734, 27.470873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.600147, 40.277321, 27.324924>,  <41.534534, 39.966637, 27.081676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.600147, 40.277321, 27.324924> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548031, 0.440825, -0.710869,
		-0.820216, 0.449876, -0.353352,
		0.164036, 0.776714, 0.608118,
		41.649357, 40.510334, 27.507360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.013779, 40.473122, 26.912815>,  <41.534534, 39.966637, 27.081676>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.013779, 40.473122, 26.912815> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.328869, 40.638828, 27.095184>,  <41.517925, 40.738251, 27.204605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.328869, 40.638828, 27.095184>,  <41.013779, 40.473122, 26.912815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.328869, 40.638828, 27.095184> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201020, 0.526729, -0.825922,
		-0.582300, 0.742252, 0.331644,
		0.787729, 0.414268, 0.455922,
		41.565189, 40.763107, 27.231960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.070782, 41.140812, 26.730448>,  <41.013779, 40.473122, 26.912815>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.070782, 41.140812, 26.730448> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.441380, 41.090466, 26.872301>,  <41.663738, 41.060257, 26.957413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.441380, 41.090466, 26.872301>,  <41.070782, 41.140812, 26.730448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.441380, 41.090466, 26.872301> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363683, 0.541531, -0.757944,
		-0.096649, 0.831206, 0.547499,
		0.926496, -0.125862, 0.354633,
		41.719330, 41.052708, 26.978691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.285690, 41.681282, 26.499384>,  <41.070782, 41.140812, 26.730448>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.285690, 41.681282, 26.499384> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.615833, 41.473400, 26.587645>,  <41.813919, 41.348671, 26.640602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.615833, 41.473400, 26.587645>,  <41.285690, 41.681282, 26.499384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.615833, 41.473400, 26.587645> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453961, 0.378464, -0.806650,
		0.335713, 0.765943, 0.548296,
		0.825358, -0.519708, 0.220653,
		41.863441, 41.317490, 26.653841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.853783, 42.127113, 26.555771>,  <41.285690, 41.681282, 26.499384>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.853783, 42.127113, 26.555771> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.969967, 41.764454, 26.433386>,  <42.039677, 41.546856, 26.359955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.969967, 41.764454, 26.433386>,  <41.853783, 42.127113, 26.555771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.969967, 41.764454, 26.433386> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440982, 0.410604, -0.798085,
		0.849215, 0.096889, 0.519082,
		0.290462, -0.906652, -0.305965,
		42.057106, 41.492458, 26.341597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.405647, 42.376122, 26.139977>,  <41.853783, 42.127113, 26.555771>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.405647, 42.376122, 26.139977> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.408646, 41.982296, 26.070040>,  <42.410446, 41.745998, 26.028078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.408646, 41.982296, 26.070040>,  <42.405647, 42.376122, 26.139977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.408646, 41.982296, 26.070040> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455076, 0.159053, -0.876132,
		0.890421, -0.072997, 0.449246,
		0.007499, -0.984568, -0.174843,
		42.410896, 41.686924, 26.017588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.069206, 42.158043, 26.103878>,  <42.405647, 42.376122, 26.139977>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.069206, 42.158043, 26.103878> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.835659, 41.922379, 25.880455>,  <42.695530, 41.780979, 25.746401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.835659, 41.922379, 25.880455>,  <43.069206, 42.158043, 26.103878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.835659, 41.922379, 25.880455> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509225, 0.270067, -0.817162,
		0.632287, -0.761548, 0.142331,
		-0.583869, -0.589160, -0.558559,
		42.660500, 41.745632, 25.712887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.531723, 41.918488, 25.644915>,  <43.069206, 42.158043, 26.103878>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.531723, 41.918488, 25.644915> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.165970, 41.889645, 25.485563>,  <42.946518, 41.872337, 25.389952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.165970, 41.889645, 25.485563>,  <43.531723, 41.918488, 25.644915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.165970, 41.889645, 25.485563> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386451, 0.137830, -0.911953,
		0.120662, -0.987828, -0.098165,
		-0.914383, -0.072103, -0.398378,
		42.891655, 41.868011, 25.366049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.664009, 41.653698, 24.997877>,  <43.531723, 41.918488, 25.644915>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.664009, 41.653698, 24.997877> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.283672, 41.776508, 24.981730>,  <43.055470, 41.850193, 24.972042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.283672, 41.776508, 24.981730>,  <43.664009, 41.653698, 24.997877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.283672, 41.776508, 24.981730> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152006, 0.349187, -0.924642,
		-0.269795, -0.885326, -0.378692,
		-0.950844, 0.307027, -0.040367,
		42.998421, 41.868618, 24.969620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.482670, 41.423306, 24.342865>,  <43.664009, 41.653698, 24.997877>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.482670, 41.423306, 24.342865> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.218109, 41.704857, 24.446480>,  <43.059372, 41.873787, 24.508648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.218109, 41.704857, 24.446480>,  <43.482670, 41.423306, 24.342865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.218109, 41.704857, 24.446480> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011348, 0.354718, -0.934905,
		-0.749948, -0.615406, -0.242597,
		-0.661399, 0.703883, 0.259037,
		43.019688, 41.916023, 24.524191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.977665, 41.415508, 23.807816>,  <43.482670, 41.423306, 24.342865>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.977665, 41.415508, 23.807816> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.966389, 41.774734, 23.983397>,  <42.959625, 41.990273, 24.088745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.966389, 41.774734, 23.983397>,  <42.977665, 41.415508, 23.807816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.966389, 41.774734, 23.983397> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012333, 0.438782, -0.898509,
		-0.999527, -0.030741, -0.001293,
		-0.028189, 0.898068, 0.438953,
		42.957932, 42.044155, 24.115082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.547295, 41.751801, 23.266937>,  <42.977665, 41.415508, 23.807816>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.547295, 41.751801, 23.266937> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.669323, 42.058239, 23.493219>,  <42.742538, 42.242104, 23.628988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.669323, 42.058239, 23.493219>,  <42.547295, 41.751801, 23.266937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.669323, 42.058239, 23.493219> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168918, 0.541076, -0.823835,
		-0.937230, 0.346884, 0.035656,
		0.305068, 0.766100, 0.565707,
		42.760845, 42.288071, 23.662931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.961910, 41.923489, 23.375351>,  <42.547295, 41.751801, 23.266937>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.961910, 41.923489, 23.375351> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.987335, 41.660603, 23.074944>,  <42.002590, 41.502872, 22.894699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.987335, 41.660603, 23.074944>,  <41.961910, 41.923489, 23.375351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.987335, 41.660603, 23.074944> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718325, -0.552543, 0.422735,
		-0.692797, 0.512605, -0.507215,
		0.063562, -0.657215, -0.751018,
		42.006405, 41.463436, 22.849638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.228745, 41.801197, 23.259266>,  <41.961910, 41.923489, 23.375351>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.228745, 41.801197, 23.259266> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.430908, 41.516670, 23.063881>,  <41.552204, 41.345955, 22.946650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.430908, 41.516670, 23.063881>,  <41.228745, 41.801197, 23.259266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.430908, 41.516670, 23.063881> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500648, -0.702791, 0.505407,
		-0.702791, -0.010887, -0.711313,
		-0.505407, 0.711313, 0.488465,
		41.582531, 41.303276, 22.917341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.700058, 41.367683, 23.096106>,  <41.228745, 41.801197, 23.259266>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.700058, 41.367683, 23.096106> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.042557, 41.161095, 23.099913>,  <41.248058, 41.037140, 23.102196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.042557, 41.161095, 23.099913>,  <40.700058, 41.367683, 23.096106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.042557, 41.161095, 23.099913> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432550, -0.706801, 0.559762,
		-0.282376, -0.483412, -0.828599,
		0.856250, -0.516474, 0.009516,
		41.299431, 41.006153, 23.102768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.484013, 40.828781, 22.785229>,  <40.700058, 41.367683, 23.096106>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.484013, 40.828781, 22.785229> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.809052, 40.755653, 23.006594>,  <41.004074, 40.711777, 23.139412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.809052, 40.755653, 23.006594>,  <40.484013, 40.828781, 22.785229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.809052, 40.755653, 23.006594> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491474, -0.725318, 0.482045,
		0.313271, -0.663695, -0.679242,
		0.812597, -0.182819, 0.553410,
		41.052830, 40.700809, 23.172617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.434746, 40.122364, 22.726252>,  <40.484013, 40.828781, 22.785229>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.434746, 40.122364, 22.726252> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.695526, 40.211796, 23.016071>,  <40.851994, 40.265457, 23.189962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.695526, 40.211796, 23.016071>,  <40.434746, 40.122364, 22.726252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.695526, 40.211796, 23.016071> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464106, -0.637985, 0.614476,
		0.599637, -0.736876, -0.312170,
		0.651952, 0.223582, 0.724548,
		40.891113, 40.278870, 23.233437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.580742, 39.528648, 22.965837>,  <40.434746, 40.122364, 22.726252>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.580742, 39.528648, 22.965837> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.699150, 39.759026, 23.270641>,  <40.770195, 39.897251, 23.453524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.699150, 39.759026, 23.270641>,  <40.580742, 39.528648, 22.965837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.699150, 39.759026, 23.270641> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365590, -0.668703, 0.647442,
		0.882450, -0.470237, 0.012613,
		0.296017, 0.575946, 0.762011,
		40.787956, 39.931808, 23.499245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.855789, 38.997108, 23.397982>,  <40.580742, 39.528648, 22.965837>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.855789, 38.997108, 23.397982> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.767704, 39.324158, 23.610771>,  <40.714851, 39.520386, 23.738445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.767704, 39.324158, 23.610771>,  <40.855789, 38.997108, 23.397982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.767704, 39.324158, 23.610771> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462867, -0.567644, 0.680834,
		0.858638, -0.096303, 0.503455,
		-0.220217, 0.817622, 0.531976,
		40.701637, 39.569443, 23.770365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.161999, 38.848019, 24.004065>,  <40.855789, 38.997108, 23.397982>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.161999, 38.848019, 24.004065> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.863140, 39.099998, 24.088848>,  <40.683823, 39.251186, 24.139717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.863140, 39.099998, 24.088848>,  <41.161999, 38.848019, 24.004065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.863140, 39.099998, 24.088848> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052909, -0.374257, 0.925814,
		0.662545, 0.680509, 0.312957,
		-0.747151, 0.629952, 0.211957,
		40.638996, 39.288982, 24.152435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.806927, 38.423866, 24.241531>,  <41.161999, 38.848019, 24.004065>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.806927, 38.423866, 24.241531> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.758102, 38.028927, 24.201061>,  <41.728809, 37.791962, 24.176779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.758102, 38.028927, 24.201061>,  <41.806927, 38.423866, 24.241531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.758102, 38.028927, 24.201061> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456078, 0.034741, -0.889261,
		0.881530, -0.154685, 0.446070,
		-0.122059, -0.987353, -0.101174,
		41.721485, 37.732719, 24.170710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.542965, 38.066525, 24.135622>,  <41.806927, 38.423866, 24.241531>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.542965, 38.066525, 24.135622> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.256508, 37.838966, 23.973883>,  <42.084633, 37.702431, 23.876839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.256508, 37.838966, 23.973883>,  <42.542965, 38.066525, 24.135622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.256508, 37.838966, 23.973883> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470527, 0.034373, -0.881716,
		0.515499, -0.821694, 0.243062,
		-0.716146, -0.568891, -0.404348,
		42.041664, 37.668301, 23.852577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.894665, 37.739586, 23.624931>,  <42.542965, 38.066525, 24.135622>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.894665, 37.739586, 23.624931> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.515537, 37.663307, 23.522732>,  <42.288063, 37.617538, 23.461412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.515537, 37.663307, 23.522732>,  <42.894665, 37.739586, 23.624931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.515537, 37.663307, 23.522732> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237606, 0.111838, -0.964902,
		0.212583, -0.975257, -0.060690,
		-0.947814, -0.190701, -0.255501,
		42.231194, 37.606098, 23.446081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.923031, 37.156193, 23.164343>,  <42.894665, 37.739586, 23.624931>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.923031, 37.156193, 23.164343> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.576984, 37.330582, 23.065149>,  <42.369354, 37.435215, 23.005632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.576984, 37.330582, 23.065149>,  <42.923031, 37.156193, 23.164343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.576984, 37.330582, 23.065149> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173215, -0.204306, -0.963461,
		-0.470705, -0.876464, 0.101232,
		-0.865120, 0.435971, -0.247984,
		42.317448, 37.461372, 22.990753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.600227, 36.732548, 22.771969>,  <42.923031, 37.156193, 23.164343>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.600227, 36.732548, 22.771969> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.424187, 37.076141, 22.667311>,  <42.318562, 37.282299, 22.604515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.424187, 37.076141, 22.667311>,  <42.600227, 36.732548, 22.771969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.424187, 37.076141, 22.667311> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083976, -0.250732, -0.964407,
		-0.894013, -0.446409, 0.038213,
		-0.440101, 0.858984, -0.261645,
		42.292156, 37.333836, 22.588818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.196922, 36.647400, 22.179356>,  <42.600227, 36.732548, 22.771969>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.196922, 36.647400, 22.179356> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.234566, 37.045624, 22.179092>,  <42.257153, 37.284557, 22.178934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.234566, 37.045624, 22.179092>,  <42.196922, 36.647400, 22.179356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.234566, 37.045624, 22.179092> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276048, -0.026730, -0.960772,
		-0.956526, 0.090236, -0.277338,
		0.094109, 0.995562, -0.000658,
		42.262798, 37.344292, 22.178894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.880909, 36.849663, 21.527668>,  <42.196922, 36.647400, 22.179356>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.880909, 36.849663, 21.527668> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.056965, 37.191849, 21.636816>,  <42.162598, 37.397160, 21.702305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.056965, 37.191849, 21.636816>,  <41.880909, 36.849663, 21.527668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.056965, 37.191849, 21.636816> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183977, 0.211523, -0.959901,
		-0.878880, 0.472691, -0.064286,
		0.440139, 0.855465, 0.272868,
		42.189007, 37.448490, 21.718676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.498001, 37.477448, 21.210388>,  <41.880909, 36.849663, 21.527668>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.498001, 37.477448, 21.210388> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.871525, 37.584351, 21.305534>,  <42.095638, 37.648495, 21.362621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.871525, 37.584351, 21.305534>,  <41.498001, 37.477448, 21.210388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.871525, 37.584351, 21.305534> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221412, 0.090556, -0.970967,
		-0.281041, 0.959360, 0.025387,
		0.933806, 0.267260, 0.237864,
		42.151665, 37.664528, 21.376894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.651604, 38.142979, 20.891058>,  <41.498001, 37.477448, 21.210388>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.651604, 38.142979, 20.891058> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.001629, 37.950306, 20.910034>,  <42.211643, 37.834702, 20.921419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.001629, 37.950306, 20.910034>,  <41.651604, 38.142979, 20.891058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.001629, 37.950306, 20.910034> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146978, 0.171063, -0.974236,
		0.461158, 0.859487, 0.220487,
		0.875060, -0.481684, 0.047438,
		42.264149, 37.805801, 20.924265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.498676, 33.680546, 36.130508> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.890362, 33.654987, 36.053497>,  <38.125374, 33.639652, 36.007290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.890362, 33.654987, 36.053497>,  <37.498676, 33.680546, 36.130508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.890362, 33.654987, 36.053497> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191836, 0.016848, -0.981282,
		0.065942, 0.997815, 0.004241,
		0.979209, -0.063894, -0.192527,
		38.184124, 33.635818, 35.995739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.611053, 34.176048, 35.769142>,  <37.498676, 33.680546, 36.130508>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.611053, 34.176048, 35.769142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.888283, 33.904007, 35.673550>,  <38.054623, 33.740784, 35.616196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.888283, 33.904007, 35.673550>,  <37.611053, 34.176048, 35.769142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.888283, 33.904007, 35.673550> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296333, 0.033418, -0.954500,
		0.657140, 0.732359, -0.178374,
		0.693075, -0.680099, -0.238982,
		38.096207, 33.699978, 35.601856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.086121, 34.440960, 35.190647>,  <37.611053, 34.176048, 35.769142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.086121, 34.440960, 35.190647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.158932, 34.048130, 35.171070>,  <38.202618, 33.812431, 35.159325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.158932, 34.048130, 35.171070>,  <38.086121, 34.440960, 35.190647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.158932, 34.048130, 35.171070> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085225, 0.033831, -0.995787,
		0.979592, 0.185437, -0.077539,
		0.182032, -0.982074, -0.048945,
		38.213543, 33.753510, 35.156387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.685947, 34.393673, 34.795731>,  <38.086121, 34.440960, 35.190647>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.685947, 34.393673, 34.795731> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.484013, 34.049740, 34.765194>,  <38.362850, 33.843380, 34.746872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.484013, 34.049740, 34.765194>,  <38.685947, 34.393673, 34.795731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.484013, 34.049740, 34.765194> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096568, 0.144138, -0.984834,
		0.857797, -0.489807, -0.155798,
		-0.504835, -0.859833, -0.076341,
		38.332561, 33.791790, 34.742290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.018864, 34.012245, 34.378136>,  <38.685947, 34.393673, 34.795731>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.018864, 34.012245, 34.378136> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.640591, 33.883862, 34.357471>,  <38.413628, 33.806831, 34.345074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.640591, 33.883862, 34.357471>,  <39.018864, 34.012245, 34.378136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.640591, 33.883862, 34.357471> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015040, 0.115539, -0.993189,
		0.324740, -0.940019, -0.104436,
		-0.945684, -0.320958, -0.051658,
		38.356884, 33.787575, 34.341972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.135681, 33.487038, 33.945808>,  <39.018864, 34.012245, 34.378136>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.135681, 33.487038, 33.945808> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.746681, 33.579060, 33.960331>,  <38.513283, 33.634274, 33.969044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.746681, 33.579060, 33.960331>,  <39.135681, 33.487038, 33.945808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.746681, 33.579060, 33.960331> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004078, 0.172691, -0.984968,
		-0.232869, -0.957733, -0.168880,
		-0.972500, 0.230057, 0.036309,
		38.454933, 33.648075, 33.971222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.858109, 33.155998, 33.353436>,  <39.135681, 33.487038, 33.945808>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.858109, 33.155998, 33.353436> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.593300, 33.438984, 33.452404>,  <38.434414, 33.608776, 33.511787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.593300, 33.438984, 33.452404>,  <38.858109, 33.155998, 33.353436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.593300, 33.438984, 33.452404> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076182, 0.264896, -0.961263,
		-0.745600, -0.655229, -0.121471,
		-0.662025, 0.707463, 0.247423,
		38.394691, 33.651222, 33.526630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.261517, 33.070618, 32.901505>,  <38.858109, 33.155998, 33.353436>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.261517, 33.070618, 32.901505> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.226273, 33.442703, 33.044022>,  <38.205128, 33.665955, 33.129532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.226273, 33.442703, 33.044022>,  <38.261517, 33.070618, 32.901505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.226273, 33.442703, 33.044022> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154369, 0.366114, -0.917677,
		-0.984077, -0.025856, -0.175854,
		-0.088110, 0.930211, 0.356293,
		38.199841, 33.721767, 33.150909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.826927, 33.370548, 32.404572>,  <38.261517, 33.070618, 32.901505>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.826927, 33.370548, 32.404572> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.992573, 33.665878, 32.617508>,  <38.091961, 33.843079, 32.745270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.992573, 33.665878, 32.617508>,  <37.826927, 33.370548, 32.404572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.992573, 33.665878, 32.617508> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199399, 0.497050, -0.844500,
		-0.888118, 0.455864, 0.058612,
		0.414110, 0.738329, 0.532338,
		38.116806, 33.887379, 32.777210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.552181, 34.004185, 32.156677>,  <37.826927, 33.370548, 32.404572>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.552181, 34.004185, 32.156677> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.908047, 34.081650, 32.322083>,  <38.121567, 34.128128, 32.421326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.908047, 34.081650, 32.322083>,  <37.552181, 34.004185, 32.156677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.908047, 34.081650, 32.322083> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291430, 0.456345, -0.840725,
		-0.351518, 0.868473, 0.349556,
		0.889665, 0.193659, 0.413513,
		38.174946, 34.139748, 32.446136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.651085, 34.698536, 31.850203>,  <37.552181, 34.004185, 32.156677>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.651085, 34.698536, 31.850203> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.009472, 34.594624, 31.994287>,  <38.224506, 34.532276, 32.080738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.009472, 34.594624, 31.994287>,  <37.651085, 34.698536, 31.850203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.009472, 34.594624, 31.994287> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442752, 0.585963, -0.678688,
		-0.034764, 0.767569, 0.640022,
		0.895970, -0.259778, 0.360213,
		38.278263, 34.516689, 32.102352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.024780, 35.387890, 32.015636>,  <37.651085, 34.698536, 31.850203>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.024780, 35.387890, 32.015636> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.282131, 35.087162, 31.957918>,  <38.436543, 34.906723, 31.923286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.282131, 35.087162, 31.957918>,  <38.024780, 35.387890, 32.015636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.282131, 35.087162, 31.957918> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438759, 0.516594, -0.735270,
		0.627338, 0.409746, 0.662236,
		0.643380, -0.751824, -0.144300,
		38.475143, 34.861614, 31.914629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.025177, 36.092182, 32.199154>,  <38.024780, 35.387890, 32.015636>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.025177, 36.092182, 32.199154> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.670307, 36.170387, 32.031971>,  <37.457386, 36.217312, 31.931660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.670307, 36.170387, 32.031971>,  <38.025177, 36.092182, 32.199154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.670307, 36.170387, 32.031971> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456740, -0.243285, 0.855687,
		0.065613, 0.950046, 0.305134,
		-0.887177, 0.195511, -0.417962,
		37.404156, 36.229042, 31.906582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653236, 36.397747, 32.708546>,  <38.025177, 36.092182, 32.199154>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.653236, 36.397747, 32.708546> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.378723, 36.248245, 32.458961>,  <37.214016, 36.158543, 32.309212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.378723, 36.248245, 32.458961>,  <37.653236, 36.397747, 32.708546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.378723, 36.248245, 32.458961> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551305, -0.292261, 0.781438,
		-0.474423, 0.880280, -0.005478,
		-0.686283, -0.373753, -0.623958,
		37.172836, 36.136120, 32.271774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.045528, 36.674160, 32.915966>,  <37.653236, 36.397747, 32.708546>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.045528, 36.674160, 32.915966> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.945374, 36.339195, 32.721626>,  <36.885281, 36.138214, 32.605022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.945374, 36.339195, 32.721626>,  <37.045528, 36.674160, 32.915966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.945374, 36.339195, 32.721626> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501197, -0.317234, 0.805087,
		-0.828318, 0.445085, -0.340279,
		-0.250383, -0.837414, -0.485845,
		36.870258, 36.087971, 32.575874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.399338, 36.616276, 33.086201>,  <37.045528, 36.674160, 32.915966>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.399338, 36.616276, 33.086201> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.481148, 36.244740, 32.962643>,  <36.530235, 36.021816, 32.888508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.481148, 36.244740, 32.962643>,  <36.399338, 36.616276, 33.086201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.481148, 36.244740, 32.962643> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664155, -0.363496, 0.653276,
		-0.719074, 0.071543, -0.691241,
		0.204526, -0.928844, -0.308896,
		36.542507, 35.966087, 32.869972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.797596, 36.351402, 33.032387>,  <36.399338, 36.616276, 33.086201>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.797596, 36.351402, 33.032387> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.065269, 36.055820, 33.063709>,  <36.225876, 35.878471, 33.082500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.065269, 36.055820, 33.063709>,  <35.797596, 36.351402, 33.032387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.065269, 36.055820, 33.063709> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595258, -0.469998, 0.651743,
		-0.444804, -0.482753, -0.754386,
		0.669191, -0.738953, 0.078305,
		36.266026, 35.834133, 33.087200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.390003, 35.845665, 33.112617>,  <35.797596, 36.351402, 33.032387>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.390003, 35.845665, 33.112617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.741619, 35.711044, 33.247681>,  <35.952591, 35.630272, 33.328720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.741619, 35.711044, 33.247681>,  <35.390003, 35.845665, 33.112617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.741619, 35.711044, 33.247681> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475335, -0.564311, 0.674989,
		-0.036625, -0.753846, -0.656029,
		0.879042, -0.336555, 0.337661,
		36.005333, 35.610077, 33.348980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.337646, 35.091248, 33.334957>,  <35.390003, 35.845665, 33.112617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.337646, 35.091248, 33.334957> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.646736, 35.244675, 33.537254>,  <35.832188, 35.336731, 33.658634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.646736, 35.244675, 33.537254>,  <35.337646, 35.091248, 33.334957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.646736, 35.244675, 33.537254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216323, -0.589936, 0.777933,
		0.596749, -0.710529, -0.372880,
		0.772720, 0.383568, 0.505747,
		35.878551, 35.359745, 33.688980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.640625, 34.515591, 33.726650>,  <35.337646, 35.091248, 33.334957>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.640625, 34.515591, 33.726650> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.800030, 34.827427, 33.919907>,  <35.895672, 35.014530, 34.035858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.800030, 34.827427, 33.919907>,  <35.640625, 34.515591, 33.726650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.800030, 34.827427, 33.919907> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240571, -0.419479, 0.875307,
		0.885050, -0.465050, 0.020379,
		0.398513, 0.779593, 0.483138,
		35.919582, 35.061306, 34.064846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.957008, 34.154903, 34.335716>,  <35.640625, 34.515591, 33.726650>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.957008, 34.154903, 34.335716> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.933277, 34.546013, 34.416161>,  <35.919037, 34.780678, 34.464428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.933277, 34.546013, 34.416161>,  <35.957008, 34.154903, 34.335716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.933277, 34.546013, 34.416161> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316175, -0.209503, 0.925279,
		0.946844, -0.008694, 0.321575,
		-0.059327, 0.977770, 0.201115,
		35.915478, 34.839344, 34.476494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.224476, 34.187355, 35.032501>,  <35.957008, 34.154903, 34.335716>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.224476, 34.187355, 35.032501> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.998665, 34.509808, 34.961552>,  <35.863178, 34.703278, 34.918983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.998665, 34.509808, 34.961552>,  <36.224476, 34.187355, 35.032501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.998665, 34.509808, 34.961552> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316422, -0.012880, 0.948531,
		0.762357, 0.591595, 0.262349,
		-0.564525, 0.806133, -0.177375,
		35.829308, 34.751648, 34.908340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.443260, 34.593334, 35.456062>,  <36.224476, 34.187355, 35.032501>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.443260, 34.593334, 35.456062> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.081085, 34.729530, 35.354668>,  <35.863781, 34.811249, 35.293831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.081085, 34.729530, 35.354668>,  <36.443260, 34.593334, 35.456062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.081085, 34.729530, 35.354668> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328554, -0.184017, 0.926385,
		0.268780, 0.922065, 0.278485,
		-0.905433, 0.340491, -0.253488,
		35.809456, 34.831676, 35.278622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.176247, 35.133945, 36.020618>,  <36.443260, 34.593334, 35.456062>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.176247, 35.133945, 36.020618> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.869736, 34.970867, 35.821983>,  <35.685829, 34.873020, 35.702801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.869736, 34.970867, 35.821983>,  <36.176247, 35.133945, 36.020618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.869736, 34.970867, 35.821983> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350076, -0.383162, 0.854771,
		-0.538757, 0.828839, 0.150886,
		-0.766282, -0.407692, -0.496588,
		35.639851, 34.848560, 35.673008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.645195, 35.436722, 36.337116>,  <36.176247, 35.133945, 36.020618>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.645195, 35.436722, 36.337116> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.434555, 35.151203, 36.152428>,  <35.308170, 34.979893, 36.041615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.434555, 35.151203, 36.152428>,  <35.645195, 35.436722, 36.337116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.434555, 35.151203, 36.152428> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357279, -0.307008, 0.882099,
		-0.771390, 0.629479, -0.093353,
		-0.526602, -0.713795, -0.461722,
		35.276573, 34.937065, 36.013912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.031212, 36.029728, 36.742168>,  <35.645195, 35.436722, 36.337116>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.031212, 36.029728, 36.742168> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.879547, 36.346684, 36.933315>,  <35.788548, 36.536858, 37.048004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.879547, 36.346684, 36.933315>,  <36.031212, 36.029728, 36.742168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.879547, 36.346684, 36.933315> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384855, 0.604686, -0.697310,
		-0.841500, -0.080484, -0.534228,
		-0.379163, 0.792387, 0.477869,
		35.765797, 36.584400, 37.076675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.592636, 36.463234, 36.320580>,  <36.031212, 36.029728, 36.742168>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.592636, 36.463234, 36.320580> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.815262, 36.638233, 36.603092>,  <35.948837, 36.743233, 36.772598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.815262, 36.638233, 36.603092>,  <35.592636, 36.463234, 36.320580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.815262, 36.638233, 36.603092> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497350, 0.505509, -0.705056,
		-0.665494, 0.743676, 0.063755,
		0.556562, 0.437501, 0.706280,
		35.982231, 36.769482, 36.814976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.506638, 37.067104, 36.202507>,  <35.592636, 36.463234, 36.320580>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.506638, 37.067104, 36.202507> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.868027, 37.042015, 36.372120>,  <36.084862, 37.026962, 36.473888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.868027, 37.042015, 36.372120>,  <35.506638, 37.067104, 36.202507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.868027, 37.042015, 36.372120> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394779, 0.507137, -0.766134,
		-0.166986, 0.859580, 0.482947,
		0.903474, -0.062724, 0.424029,
		36.139069, 37.023197, 36.499329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.856819, 37.744617, 36.423187>,  <35.506638, 37.067104, 36.202507>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.856819, 37.744617, 36.423187> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.130131, 37.475971, 36.308598>,  <36.294117, 37.314785, 36.239845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.130131, 37.475971, 36.308598>,  <35.856819, 37.744617, 36.423187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.130131, 37.475971, 36.308598> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237753, 0.575611, -0.782397,
		0.690364, 0.466486, 0.552981,
		0.683280, -0.671612, -0.286472,
		36.335114, 37.274487, 36.222656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.446129, 38.153446, 36.286434>,  <35.856819, 37.744617, 36.423187>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.446129, 38.153446, 36.286434> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.544289, 37.815704, 36.095921>,  <36.603184, 37.613060, 35.981613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.544289, 37.815704, 36.095921>,  <36.446129, 38.153446, 36.286434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.544289, 37.815704, 36.095921> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321739, 0.534396, -0.781604,
		0.914475, 0.038563, 0.402800,
		0.245395, -0.844354, -0.476285,
		36.617908, 37.562397, 35.953033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.215534, 38.045162, 36.273846>,  <36.446129, 38.153446, 36.286434>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.215534, 38.045162, 36.273846> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.049549, 37.851547, 35.965683>,  <36.949959, 37.735378, 35.780785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.049549, 37.851547, 35.965683>,  <37.215534, 38.045162, 36.273846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.049549, 37.851547, 35.965683> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591709, 0.499653, -0.632635,
		0.691151, -0.718372, 0.079072,
		-0.414958, -0.484034, -0.770403,
		36.925060, 37.706337, 35.734562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698158, 38.065060, 35.811085>,  <37.215534, 38.045162, 36.273846>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.698158, 38.065060, 35.811085> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.393261, 37.963364, 35.572975>,  <37.210323, 37.902344, 35.430111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.393261, 37.963364, 35.572975>,  <37.698158, 38.065060, 35.811085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.393261, 37.963364, 35.572975> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399768, 0.538382, -0.741843,
		0.509089, -0.803435, -0.308741,
		-0.762243, -0.254239, -0.595272,
		37.164589, 37.887089, 35.394394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.978958, 37.550743, 35.295864>,  <37.698158, 38.065060, 35.811085>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.978958, 37.550743, 35.295864> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.661465, 37.772774, 35.196358>,  <37.470970, 37.905991, 35.136654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.661465, 37.772774, 35.196358>,  <37.978958, 37.550743, 35.295864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.661465, 37.772774, 35.196358> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467141, 0.294331, -0.833756,
		-0.389578, -0.777985, -0.492918,
		-0.793730, 0.555075, -0.248764,
		37.423347, 37.939297, 35.121727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940926, 37.381611, 34.557571>,  <37.978958, 37.550743, 35.295864>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.940926, 37.381611, 34.557571> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.721561, 37.714947, 34.585228>,  <37.589943, 37.914948, 34.601822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.721561, 37.714947, 34.585228>,  <37.940926, 37.381611, 34.557571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.721561, 37.714947, 34.585228> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451086, 0.364447, -0.814678,
		-0.704104, -0.415593, -0.575778,
		-0.548414, 0.833344, 0.069140,
		37.557037, 37.964951, 34.605968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.621475, 37.493038, 33.950336>,  <37.940926, 37.381611, 34.557571>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.621475, 37.493038, 33.950336> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.629662, 37.865871, 34.095001>,  <37.634571, 38.089573, 34.181801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.629662, 37.865871, 34.095001>,  <37.621475, 37.493038, 33.950336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.629662, 37.865871, 34.095001> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287654, 0.340953, -0.894989,
		-0.957516, 0.122348, -0.261141,
		0.020463, 0.932085, 0.361662,
		37.635799, 38.145496, 34.203499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241501, 37.933258, 33.421329>,  <37.621475, 37.493038, 33.950336>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.241501, 37.933258, 33.421329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.469143, 38.166893, 33.652832>,  <37.605728, 38.307076, 33.791733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.469143, 38.166893, 33.652832>,  <37.241501, 37.933258, 33.421329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.469143, 38.166893, 33.652832> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307122, 0.501927, -0.808545,
		-0.762755, 0.637897, 0.106263,
		0.569105, 0.584087, 0.578760,
		37.639874, 38.342117, 33.826462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.083836, 38.444195, 33.121593>,  <37.241501, 37.933258, 33.421329>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.083836, 38.444195, 33.121593> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.410873, 38.531651, 33.334663>,  <37.607094, 38.584122, 33.462505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.410873, 38.531651, 33.334663>,  <37.083836, 38.444195, 33.121593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410873, 38.531651, 33.334663> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333786, 0.573848, -0.747854,
		-0.469183, 0.789238, 0.396196,
		0.817591, 0.218636, 0.532676,
		37.656151, 38.597240, 33.494465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.200611, 39.152542, 33.037064>,  <37.083836, 38.444195, 33.121593>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.200611, 39.152542, 33.037064> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.553970, 39.014275, 33.163635>,  <37.765987, 38.931313, 33.239578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.553970, 39.014275, 33.163635>,  <37.200611, 39.152542, 33.037064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.553970, 39.014275, 33.163635> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453412, 0.459801, -0.763545,
		0.118440, 0.817983, 0.562917,
		0.883397, -0.345668, 0.316425,
		37.818989, 38.910576, 33.258564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.758957, 39.733295, 32.986553>,  <37.200611, 39.152542, 33.037064>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.758957, 39.733295, 32.986553> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.975441, 39.397133, 32.997890>,  <38.105331, 39.195435, 33.004692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.975441, 39.397133, 32.997890>,  <37.758957, 39.733295, 32.986553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.975441, 39.397133, 32.997890> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633795, 0.385536, -0.670571,
		0.552627, 0.380884, 0.741303,
		0.541209, -0.840410, 0.028345,
		38.137802, 39.145008, 33.006393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.407360, 39.923809, 33.055676>,  <37.758957, 39.733295, 32.986553>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.407360, 39.923809, 33.055676> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.456013, 39.540649, 32.951649>,  <38.485207, 39.310753, 32.889233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.456013, 39.540649, 32.951649>,  <38.407360, 39.923809, 33.055676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.456013, 39.540649, 32.951649> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640799, 0.275880, -0.716426,
		0.758011, -0.079512, 0.647377,
		0.121634, -0.957898, -0.260071,
		38.492504, 39.253281, 32.873627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100197, 39.790642, 33.120041>,  <38.407360, 39.923809, 33.055676>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.100197, 39.790642, 33.120041> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.914051, 39.543652, 32.866379>,  <38.802364, 39.395458, 32.714180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.914051, 39.543652, 32.866379>,  <39.100197, 39.790642, 33.120041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.914051, 39.543652, 32.866379> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671104, 0.220998, -0.707658,
		0.577112, -0.754903, 0.311550,
		-0.465361, -0.617480, -0.634159,
		38.774441, 39.358406, 32.676132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.632412, 39.491299, 32.731125>,  <39.100197, 39.790642, 33.120041>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.632412, 39.491299, 32.731125> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.330193, 39.371990, 32.497826>,  <39.148861, 39.300404, 32.357845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.330193, 39.371990, 32.497826>,  <39.632412, 39.491299, 32.731125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.330193, 39.371990, 32.497826> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535944, 0.230531, -0.812170,
		0.376704, -0.926223, -0.014321,
		-0.755552, -0.298272, -0.583245,
		39.103527, 39.282509, 32.322853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.919735, 39.076950, 32.201290>,  <39.632412, 39.491299, 32.731125>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.919735, 39.076950, 32.201290> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.575741, 39.217033, 32.052814>,  <39.369347, 39.301083, 31.963728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.575741, 39.217033, 32.052814>,  <39.919735, 39.076950, 32.201290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.575741, 39.217033, 32.052814> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431299, 0.109979, -0.895481,
		-0.272784, -0.930192, -0.245626,
		-0.859982, 0.350211, -0.371190,
		39.317745, 39.322098, 31.941458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.900913, 38.837593, 31.602093>,  <39.919735, 39.076950, 32.201290>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.900913, 38.837593, 31.602093> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.634407, 39.133118, 31.561607>,  <39.474503, 39.310432, 31.537315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.634407, 39.133118, 31.561607>,  <39.900913, 38.837593, 31.602093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.634407, 39.133118, 31.561607> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310452, 0.151403, -0.938454,
		-0.678018, -0.656683, -0.330241,
		-0.666267, 0.738813, -0.101215,
		39.434528, 39.354763, 31.531242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.453449, 38.609879, 31.062635>,  <39.900913, 38.837593, 31.602093>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.453449, 38.609879, 31.062635> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.443569, 39.009476, 31.077587>,  <39.437641, 39.249233, 31.086559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.443569, 39.009476, 31.077587>,  <39.453449, 38.609879, 31.062635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.443569, 39.009476, 31.077587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330894, 0.043454, -0.942667,
		-0.943345, -0.010911, -0.331635,
		-0.024696, 0.998996, 0.037381,
		39.436161, 39.309174, 31.088802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.201519, 38.750530, 30.402382>,  <39.453449, 38.609879, 31.062635>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.201519, 38.750530, 30.402382> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.347687, 39.094566, 30.544771>,  <39.435387, 39.300987, 30.630205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.347687, 39.094566, 30.544771>,  <39.201519, 38.750530, 30.402382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.347687, 39.094566, 30.544771> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201159, 0.300416, -0.932355,
		-0.908849, 0.412304, -0.063238,
		0.365416, 0.860090, 0.355971,
		39.457310, 39.352592, 30.651562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.991932, 39.338852, 29.965509>,  <39.201519, 38.750530, 30.402382>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.991932, 39.338852, 29.965509> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.302299, 39.492077, 30.165997>,  <39.488518, 39.584011, 30.286289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.302299, 39.492077, 30.165997>,  <38.991932, 39.338852, 29.965509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.302299, 39.492077, 30.165997> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416026, 0.286544, -0.863026,
		-0.474214, 0.878155, 0.062970,
		0.775914, 0.383062, 0.501219,
		39.535072, 39.606995, 30.316362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.171211, 40.013145, 29.640562>,  <38.991932, 39.338852, 29.965509>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.171211, 40.013145, 29.640562> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.500977, 39.917637, 29.845825>,  <39.698837, 39.860332, 29.968983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.500977, 39.917637, 29.845825>,  <39.171211, 40.013145, 29.640562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.500977, 39.917637, 29.845825> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551614, 0.135920, -0.822951,
		0.126751, 0.961516, 0.243765,
		0.824413, -0.238774, 0.513158,
		39.748299, 39.846004, 29.999773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.584549, 40.556606, 29.528418>,  <39.171211, 40.013145, 29.640562>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.584549, 40.556606, 29.528418> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.795631, 40.229477, 29.620239>,  <39.922279, 40.033199, 29.675333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.795631, 40.229477, 29.620239>,  <39.584549, 40.556606, 29.528418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.795631, 40.229477, 29.620239> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646591, 0.211485, -0.732935,
		0.550864, 0.535201, 0.640398,
		0.527702, -0.817823, 0.229556,
		39.953941, 39.984131, 29.689106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.255798, 40.747311, 29.745239>,  <39.584549, 40.556606, 29.528418>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.255798, 40.747311, 29.745239> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.298214, 40.362896, 29.643124>,  <40.323662, 40.132248, 29.581854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.298214, 40.362896, 29.643124>,  <40.255798, 40.747311, 29.745239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.298214, 40.362896, 29.643124> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794508, 0.236261, -0.559408,
		0.597924, -0.143511, 0.788601,
		0.106035, -0.961033, -0.255287,
		40.330025, 40.074585, 29.566538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.942856, 40.646996, 29.819405>,  <40.255798, 40.747311, 29.745239>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.942856, 40.646996, 29.819405> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.819229, 40.359894, 29.569826>,  <40.745052, 40.187634, 29.420080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.819229, 40.359894, 29.569826>,  <40.942856, 40.646996, 29.819405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.819229, 40.359894, 29.569826> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874205, 0.043932, -0.483566,
		0.374493, -0.694909, 0.613886,
		-0.309065, -0.717754, -0.623945,
		40.726509, 40.144569, 29.382643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.614494, 40.413307, 29.610954>,  <40.942856, 40.646996, 29.819405>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.614494, 40.413307, 29.610954> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.345108, 40.259892, 29.358181>,  <41.183475, 40.167843, 29.206516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.345108, 40.259892, 29.358181>,  <41.614494, 40.413307, 29.610954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.345108, 40.259892, 29.358181> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709985, -0.097577, -0.697424,
		0.205827, -0.918355, 0.338023,
		-0.673466, -0.383540, -0.631934,
		41.143066, 40.144829, 29.168600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.038250, 40.034744, 29.098072>,  <41.614494, 40.413307, 29.610954>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.038250, 40.034744, 29.098072> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.690536, 40.101231, 28.911861>,  <41.481907, 40.141125, 28.800135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.690536, 40.101231, 28.911861>,  <42.038250, 40.034744, 29.098072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.690536, 40.101231, 28.911861> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488057, 0.139269, -0.861629,
		-0.078384, -0.976205, -0.202188,
		-0.869285, 0.166217, -0.465527,
		41.429752, 40.151096, 28.772203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.021988, 39.570724, 28.453255>,  <42.038250, 40.034744, 29.098072>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.021988, 39.570724, 28.453255> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.766441, 39.874077, 28.401566>,  <41.613113, 40.056087, 28.370552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.766441, 39.874077, 28.401566>,  <42.021988, 39.570724, 28.453255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.766441, 39.874077, 28.401566> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369800, 0.155442, -0.916016,
		-0.674606, -0.633001, -0.379758,
		-0.638870, 0.758384, -0.129222,
		41.574780, 40.101593, 28.362799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.310238, 38.973537, 28.083300>,  <42.021988, 39.570724, 28.453255>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.310238, 38.973537, 28.083300> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.644844, 39.088284, 28.270041>,  <42.845608, 39.157131, 28.382084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.644844, 39.088284, 28.270041>,  <42.310238, 38.973537, 28.083300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.644844, 39.088284, 28.270041> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297779, -0.477214, 0.826798,
		0.459966, -0.830648, -0.313776,
		0.836516, 0.286863, 0.466851,
		42.895798, 39.174343, 28.410095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.559841, 38.380405, 28.407040>,  <42.310238, 38.973537, 28.083300>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.559841, 38.380405, 28.407040> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.704281, 38.691463, 28.612906>,  <42.790943, 38.878098, 28.736425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.704281, 38.691463, 28.612906>,  <42.559841, 38.380405, 28.407040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.704281, 38.691463, 28.612906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322839, -0.413525, 0.851336,
		0.874862, -0.473568, 0.101731,
		0.361097, 0.777644, 0.514664,
		42.812611, 38.924755, 28.767305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.851921, 38.063908, 28.989271>,  <42.559841, 38.380405, 28.407040>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.851921, 38.063908, 28.989271> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.868290, 38.445629, 29.107681>,  <42.878113, 38.674664, 29.178728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.868290, 38.445629, 29.107681>,  <42.851921, 38.063908, 28.989271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.868290, 38.445629, 29.107681> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295014, -0.271523, 0.916102,
		0.954616, -0.124824, 0.270420,
		0.040926, 0.954303, 0.296025,
		42.880569, 38.731918, 29.196489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.135204, 38.008606, 29.576580>,  <42.851921, 38.063908, 28.989271>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.135204, 38.008606, 29.576580> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.955338, 38.365643, 29.589725>,  <42.847416, 38.579865, 29.597612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.955338, 38.365643, 29.589725>,  <43.135204, 38.008606, 29.576580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.955338, 38.365643, 29.589725> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213128, -0.142956, 0.966509,
		0.867394, 0.427607, 0.254519,
		-0.449671, 0.892589, 0.032864,
		42.820435, 38.633419, 29.599585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.363693, 38.279282, 30.206987>,  <43.135204, 38.008606, 29.576580>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.363693, 38.279282, 30.206987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.022717, 38.461563, 30.104477>,  <42.818130, 38.570930, 30.042971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.022717, 38.461563, 30.104477>,  <43.363693, 38.279282, 30.206987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.022717, 38.461563, 30.104477> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348225, -0.129247, 0.928458,
		0.389978, 0.880698, 0.268863,
		-0.852442, 0.455703, -0.256277,
		42.766983, 38.598274, 30.027594>
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
