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
	<24.455685, 34.617325, 35.385185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.452116, 34.974922, 35.205990>,  <24.449974, 35.189480, 35.098473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.452116, 34.974922, 35.205990>,  <24.455685, 34.617325, 35.385185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.452116, 34.974922, 35.205990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858857, -0.222598, -0.461318,
		-0.512138, -0.388876, -0.765827,
		-0.008924, 0.893994, -0.447990,
		24.449438, 35.243122, 35.071594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.446453, 34.631893, 34.655346>,  <24.455685, 34.617325, 35.385185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.446453, 34.631893, 34.655346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.665588, 34.936413, 34.794086>,  <24.797070, 35.119125, 34.877331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.665588, 34.936413, 34.794086>,  <24.446453, 34.631893, 34.655346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.665588, 34.936413, 34.794086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830597, -0.445458, -0.334178,
		-0.099902, 0.471166, -0.876369,
		0.547839, 0.761295, 0.346847,
		24.829941, 35.164803, 34.898140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.896648, 34.987926, 34.099052>,  <24.446453, 34.631893, 34.655346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.896648, 34.987926, 34.099052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.020298, 34.940422, 34.476482>,  <25.094488, 34.911919, 34.702942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.020298, 34.940422, 34.476482>,  <24.896648, 34.987926, 34.099052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.020298, 34.940422, 34.476482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826991, -0.456356, -0.328368,
		0.469606, 0.881835, -0.042852,
		0.309122, -0.118765, 0.943577,
		25.113035, 34.904793, 34.759556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.461376, 35.381409, 34.199169>,  <24.896648, 34.987926, 34.099052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.461376, 35.381409, 34.199169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.483419, 35.067421, 34.446003>,  <25.496645, 34.879028, 34.594101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.483419, 35.067421, 34.446003>,  <25.461376, 35.381409, 34.199169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.483419, 35.067421, 34.446003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682069, -0.421756, -0.597414,
		0.729209, 0.453813, 0.512161,
		0.055108, -0.784968, 0.617080,
		25.499952, 34.831932, 34.631126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.120031, 35.173447, 34.398941>,  <25.461376, 35.381409, 34.199169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.120031, 35.173447, 34.398941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.917980, 34.829479, 34.428288>,  <25.796749, 34.623096, 34.445896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.917980, 34.829479, 34.428288>,  <26.120031, 35.173447, 34.398941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.917980, 34.829479, 34.428288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664599, -0.441805, -0.602591,
		0.550596, -0.255624, 0.794670,
		-0.505126, -0.859921, 0.073369,
		25.766443, 34.571503, 34.450298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.765415, 35.039608, 34.047775>,  <26.120031, 35.173447, 34.398941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.765415, 35.039608, 34.047775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.111404, 34.936512, 34.220005>,  <27.318998, 34.874653, 34.323341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.111404, 34.936512, 34.220005>,  <26.765415, 35.039608, 34.047775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.111404, 34.936512, 34.220005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289031, -0.445526, -0.847330,
		0.410223, 0.857365, -0.310872,
		0.864972, -0.257743, 0.430571,
		27.370895, 34.859188, 34.349174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.291405, 35.142899, 33.599583>,  <26.765415, 35.039608, 34.047775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.291405, 35.142899, 33.599583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.436724, 34.850857, 33.831085>,  <27.523916, 34.675629, 33.969986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.436724, 34.850857, 33.831085>,  <27.291405, 35.142899, 33.599583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.436724, 34.850857, 33.831085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082497, -0.593547, -0.800560,
		0.928013, 0.338588, -0.155403,
		0.363299, -0.730109, 0.578752,
		27.545713, 34.631824, 34.004711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.739298, 34.816380, 33.185299>,  <27.291405, 35.142899, 33.599583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.739298, 34.816380, 33.185299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.690701, 34.546093, 33.476131>,  <27.661543, 34.383919, 33.650631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.690701, 34.546093, 33.476131>,  <27.739298, 34.816380, 33.185299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.690701, 34.546093, 33.476131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109777, -0.718865, -0.686427,
		0.986503, -0.163212, 0.013158,
		-0.121491, -0.675719, 0.727080,
		27.654253, 34.343376, 33.694256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.196505, 34.251343, 32.980103>,  <27.739298, 34.816380, 33.185299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.196505, 34.251343, 32.980103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.934446, 34.102203, 33.242939>,  <27.777212, 34.012718, 33.400642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.934446, 34.102203, 33.242939>,  <28.196505, 34.251343, 32.980103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.934446, 34.102203, 33.242939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119718, -0.807516, -0.577568,
		0.745957, -0.457056, 0.484404,
		-0.655145, -0.372849, 0.657091,
		27.737904, 33.990349, 33.440067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.278305, 33.589790, 32.863678>,  <28.196505, 34.251343, 32.980103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.278305, 33.589790, 32.863678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.937864, 33.583103, 33.073574>,  <27.733601, 33.579090, 33.199512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.937864, 33.583103, 33.073574>,  <28.278305, 33.589790, 32.863678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.937864, 33.583103, 33.073574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244908, -0.871438, -0.424989,
		0.464381, -0.490220, 0.737587,
		-0.851100, -0.016716, 0.524738,
		27.682535, 33.578087, 33.230995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.258892, 32.952549, 33.226635>,  <28.278305, 33.589790, 32.863678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.258892, 32.952549, 33.226635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.882462, 33.087101, 33.212662>,  <27.656603, 33.167831, 33.204277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.882462, 33.087101, 33.212662>,  <28.258892, 32.952549, 33.226635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.882462, 33.087101, 33.212662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293199, -0.862995, -0.411430,
		-0.168545, -0.376945, 0.910771,
		-0.941077, 0.336382, -0.034934,
		27.600138, 33.188015, 33.202183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.814896, 32.340832, 33.388821>,  <28.258892, 32.952549, 33.226635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.814896, 32.340832, 33.388821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.603207, 32.624569, 33.202591>,  <27.476192, 32.794811, 33.090851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.603207, 32.624569, 33.202591>,  <27.814896, 32.340832, 33.388821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.603207, 32.624569, 33.202591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402474, -0.692924, -0.598224,
		-0.746953, -0.129211, 0.652201,
		-0.529223, 0.709339, -0.465577,
		27.444439, 32.837372, 33.062920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.203548, 32.073738, 33.491146>,  <27.814896, 32.340832, 33.388821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.203548, 32.073738, 33.491146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.221949, 32.310402, 33.169197>,  <27.232988, 32.452400, 32.976028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.221949, 32.310402, 33.169197>,  <27.203548, 32.073738, 33.491146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.221949, 32.310402, 33.169197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295374, -0.761640, -0.576765,
		-0.954273, 0.264271, 0.139725,
		0.046002, 0.591663, -0.804872,
		27.235748, 32.487900, 32.927734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.617899, 31.847315, 33.055351>,  <27.203548, 32.073738, 33.491146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.617899, 31.847315, 33.055351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.846420, 32.064007, 32.808727>,  <26.983532, 32.194023, 32.660755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.846420, 32.064007, 32.808727>,  <26.617899, 31.847315, 33.055351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.846420, 32.064007, 32.808727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346358, -0.521918, -0.779511,
		-0.744077, 0.658886, -0.110540,
		0.571302, 0.541730, -0.616558,
		27.017811, 32.226524, 32.623760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.205135, 31.889065, 32.524944>,  <26.617899, 31.847315, 33.055351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.205135, 31.889065, 32.524944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.565773, 31.991888, 32.385773>,  <26.782156, 32.053581, 32.302269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.565773, 31.991888, 32.385773>,  <26.205135, 31.889065, 32.524944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.565773, 31.991888, 32.385773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135699, -0.595631, -0.791713,
		-0.410749, 0.761016, -0.502134,
		0.901593, 0.257056, -0.347925,
		26.836250, 32.069004, 32.281395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.111416, 32.153030, 31.856085>,  <26.205135, 31.889065, 32.524944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.111416, 32.153030, 31.856085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.488678, 32.021133, 31.872730>,  <26.715034, 31.941996, 31.882717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.488678, 32.021133, 31.872730>,  <26.111416, 32.153030, 31.856085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.488678, 32.021133, 31.872730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143281, -0.516371, -0.844294,
		0.299885, 0.790337, -0.534263,
		0.943154, -0.329741, 0.041612,
		26.771624, 31.922211, 31.885214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.199913, 31.812546, 31.257271>,  <26.111416, 32.153030, 31.856085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.199913, 31.812546, 31.257271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.536987, 31.670479, 31.419128>,  <26.739231, 31.585238, 31.516243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.536987, 31.670479, 31.419128>,  <26.199913, 31.812546, 31.257271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.536987, 31.670479, 31.419128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063902, -0.680270, -0.730171,
		0.534603, 0.641161, -0.550557,
		0.842684, -0.355170, 0.404646,
		26.789793, 31.563929, 31.540522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.751141, 31.788876, 30.733372>,  <26.199913, 31.812546, 31.257271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.751141, 31.788876, 30.733372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.838697, 31.528109, 31.023777>,  <26.891232, 31.371649, 31.198019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.838697, 31.528109, 31.023777>,  <26.751141, 31.788876, 30.733372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.838697, 31.528109, 31.023777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110289, -0.755817, -0.645428,
		0.969496, 0.061207, -0.237340,
		0.218891, -0.651916, 0.726011,
		26.904366, 31.332533, 31.241581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.120108, 31.378635, 30.393629>,  <26.751141, 31.788876, 30.733372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.120108, 31.378635, 30.393629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.030499, 31.156681, 30.714108>,  <26.976732, 31.023508, 30.906395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.030499, 31.156681, 30.714108>,  <27.120108, 31.378635, 30.393629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.030499, 31.156681, 30.714108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189900, -0.781479, -0.594331,
		0.955904, -0.285290, 0.069695,
		-0.224022, -0.554888, 0.801195,
		26.963291, 30.990215, 30.954466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.490746, 30.817707, 30.285469>,  <27.120108, 31.378635, 30.393629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.490746, 30.817707, 30.285469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.207741, 30.715397, 30.548986>,  <27.037939, 30.654011, 30.707096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.207741, 30.715397, 30.548986>,  <27.490746, 30.817707, 30.285469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.207741, 30.715397, 30.548986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203395, -0.819065, -0.536436,
		0.676801, -0.513529, 0.527473,
		-0.707510, -0.255774, 0.658793,
		26.995487, 30.638664, 30.746624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.639568, 30.174936, 30.579260>,  <27.490746, 30.817707, 30.285469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.639568, 30.174936, 30.579260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.242643, 30.207514, 30.616539>,  <27.004488, 30.227060, 30.638906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.242643, 30.207514, 30.616539>,  <27.639568, 30.174936, 30.579260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.242643, 30.207514, 30.616539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113727, -0.897101, -0.426937,
		0.048835, -0.434253, 0.899466,
		-0.992311, 0.081444, 0.093196,
		26.944950, 30.231947, 30.644499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.508299, 29.519020, 30.443401>,  <27.639568, 30.174936, 30.579260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.508299, 29.519020, 30.443401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.141035, 29.676561, 30.460669>,  <26.920677, 29.771086, 30.471029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.141035, 29.676561, 30.460669>,  <27.508299, 29.519020, 30.443401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.141035, 29.676561, 30.460669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366614, -0.803203, -0.469530,
		-0.150253, -0.446930, 0.881860,
		-0.918160, 0.393851, 0.043167,
		26.865587, 29.794716, 30.473619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.044632, 29.007895, 30.773624>,  <27.508299, 29.519020, 30.443401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.044632, 29.007895, 30.773624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.795980, 29.234917, 30.557676>,  <26.646790, 29.371130, 30.428108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.795980, 29.234917, 30.557676>,  <27.044632, 29.007895, 30.773624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.795980, 29.234917, 30.557676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320800, -0.813224, -0.485546,
		-0.714608, -0.128640, 0.687596,
		-0.621629, 0.567555, -0.539868,
		26.609491, 29.405184, 30.395716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.442564, 28.608709, 30.594091>,  <27.044632, 29.007895, 30.773624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.442564, 28.608709, 30.594091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.413836, 28.893126, 30.314301>,  <26.396599, 29.063774, 30.146427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.413836, 28.893126, 30.314301>,  <26.442564, 28.608709, 30.594091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.413836, 28.893126, 30.314301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157068, -0.700599, -0.696054,
		-0.984973, 0.059875, 0.161999,
		-0.071820, 0.711039, -0.699475,
		26.392290, 29.106438, 30.104458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.871622, 28.742596, 30.209789>,  <26.442564, 28.608709, 30.594091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.871622, 28.742596, 30.209789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.198893, 28.803986, 29.988148>,  <26.395256, 28.840820, 29.855164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.198893, 28.803986, 29.988148>,  <25.871622, 28.742596, 30.209789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.198893, 28.803986, 29.988148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309395, -0.694767, -0.649287,
		-0.484622, 0.702669, -0.520959,
		0.818179, 0.153476, -0.554102,
		26.444345, 28.850029, 29.821917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.727991, 29.024162, 29.537785>,  <25.871622, 28.742596, 30.209789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.727991, 29.024162, 29.537785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.061144, 28.805531, 29.503010>,  <26.261036, 28.674351, 29.482145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.061144, 28.805531, 29.503010>,  <25.727991, 29.024162, 29.537785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.061144, 28.805531, 29.503010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414942, -0.512745, -0.751609,
		0.366238, 0.662075, -0.653855,
		0.832882, -0.546579, -0.086937,
		26.311008, 28.641556, 29.476929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.927469, 29.047407, 28.906366>,  <25.727991, 29.024162, 29.537785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.927469, 29.047407, 28.906366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.079582, 28.709658, 29.057320>,  <26.170851, 28.507008, 29.147892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.079582, 28.709658, 29.057320>,  <25.927469, 29.047407, 28.906366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.079582, 28.709658, 29.057320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386573, -0.515803, -0.764532,
		0.840206, 0.144852, -0.522563,
		0.380284, -0.844373, 0.377384,
		26.193666, 28.456347, 29.170534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.446136, 28.849972, 28.333551>,  <25.927469, 29.047407, 28.906366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.446136, 28.849972, 28.333551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.202433, 28.605505, 28.535652>,  <26.056211, 28.458824, 28.656914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.202433, 28.605505, 28.535652>,  <26.446136, 28.849972, 28.333551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.202433, 28.605505, 28.535652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606175, -0.051825, -0.793641,
		0.511231, -0.789804, -0.338899,
		-0.609257, -0.611166, 0.505254,
		26.019655, 28.422155, 28.687229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.185259, 28.997541, 28.164005>,  <26.446136, 28.849972, 28.333551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.185259, 28.997541, 28.164005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.049261, 29.339455, 28.320848>,  <26.967663, 29.544603, 28.414953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.049261, 29.339455, 28.320848>,  <27.185259, 28.997541, 28.164005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.049261, 29.339455, 28.320848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859304, 0.112966, 0.498834,
		0.382101, 0.506538, -0.772928,
		-0.339993, 0.854785, 0.392106,
		26.947264, 29.595890, 28.438480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.597790, 29.640934, 27.922567>,  <27.185259, 28.997541, 28.164005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.597790, 29.640934, 27.922567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.458727, 29.655697, 28.297325>,  <27.375290, 29.664555, 28.522181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.458727, 29.655697, 28.297325>,  <27.597790, 29.640934, 27.922567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.458727, 29.655697, 28.297325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921810, 0.196185, 0.334332,
		-0.171466, 0.979872, -0.102225,
		-0.347658, 0.036906, 0.936895,
		27.354429, 29.666769, 28.578394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.682476, 30.422258, 28.314165>,  <27.597790, 29.640934, 27.922567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.682476, 30.422258, 28.314165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.734501, 30.072193, 28.500572>,  <27.765715, 29.862154, 28.612415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.734501, 30.072193, 28.500572>,  <27.682476, 30.422258, 28.314165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.734501, 30.072193, 28.500572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928321, 0.272584, 0.252821,
		-0.348289, 0.399731, 0.847886,
		0.130060, -0.875165, 0.466016,
		27.773520, 29.809643, 28.640377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.895187, 30.483534, 29.058819>,  <27.682476, 30.422258, 28.314165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.895187, 30.483534, 29.058819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.052324, 30.179689, 28.851488>,  <28.146606, 29.997383, 28.727089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.052324, 30.179689, 28.851488>,  <27.895187, 30.483534, 29.058819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.052324, 30.179689, 28.851488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918495, 0.351792, 0.180580,
		0.045173, -0.547022, 0.835898,
		0.392843, -0.759611, -0.518329,
		28.170177, 29.951805, 28.695990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.319757, 30.164709, 29.584101>,  <27.895187, 30.483534, 29.058819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.319757, 30.164709, 29.584101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.428572, 30.105377, 29.203787>,  <28.493860, 30.069778, 28.975597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.428572, 30.105377, 29.203787>,  <28.319757, 30.164709, 29.584101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.428572, 30.105377, 29.203787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857907, 0.484934, 0.169807,
		0.435881, -0.861880, 0.259172,
		0.272035, -0.148330, -0.950787,
		28.510181, 30.060879, 28.918550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.907461, 29.815325, 29.450577>,  <28.319757, 30.164709, 29.584101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.907461, 29.815325, 29.450577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.829126, 30.094906, 29.175444>,  <28.782125, 30.262655, 29.010365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.829126, 30.094906, 29.175444>,  <28.907461, 29.815325, 29.450577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.829126, 30.094906, 29.175444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763653, 0.548734, 0.340185,
		0.615210, -0.458644, -0.641219,
		-0.195835, 0.698953, -0.687832,
		28.770376, 30.304592, 28.969093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.414972, 30.372423, 29.559191>,  <28.907461, 29.815325, 29.450577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.414972, 30.372423, 29.559191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.259686, 30.530491, 29.226173>,  <29.166513, 30.625332, 29.026363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.259686, 30.530491, 29.226173>,  <29.414972, 30.372423, 29.559191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.259686, 30.530491, 29.226173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739203, 0.673009, -0.025247,
		0.550333, -0.625221, -0.553382,
		-0.388216, 0.395167, -0.832545,
		29.143221, 30.649040, 28.976410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.988806, 30.635099, 29.065697>,  <29.414972, 30.372423, 29.559191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.988806, 30.635099, 29.065697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.646124, 30.824680, 28.984287>,  <29.440514, 30.938429, 28.935442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.646124, 30.824680, 28.984287>,  <29.988806, 30.635099, 29.065697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.646124, 30.824680, 28.984287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453075, 0.880051, 0.142246,
		0.246528, 0.029652, -0.968682,
		-0.856707, 0.473953, -0.203523,
		29.389112, 30.966866, 28.923231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.203321, 31.227278, 28.753857>,  <29.988806, 30.635099, 29.065697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.203321, 31.227278, 28.753857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.839825, 31.321344, 28.891775>,  <29.621727, 31.377785, 28.974525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.839825, 31.321344, 28.891775>,  <30.203321, 31.227278, 28.753857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.839825, 31.321344, 28.891775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329530, 0.911270, 0.246977,
		-0.256121, 0.338059, -0.905604,
		-0.908742, 0.235168, 0.344796,
		29.567202, 31.391895, 28.995214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.050768, 31.939079, 28.500244>,  <30.203321, 31.227278, 28.753857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.050768, 31.939079, 28.500244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.806427, 31.845154, 28.802694>,  <29.659822, 31.788799, 28.984165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.806427, 31.845154, 28.802694>,  <30.050768, 31.939079, 28.500244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.806427, 31.845154, 28.802694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238549, 0.856047, 0.458560,
		-0.754955, 0.460484, -0.466902,
		-0.610850, -0.234814, 0.756125,
		29.623173, 31.774710, 29.029531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.648481, 32.573650, 28.602468>,  <30.050768, 31.939079, 28.500244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.648481, 32.573650, 28.602468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.606384, 32.360401, 28.938253>,  <29.581125, 32.232452, 29.139725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.606384, 32.360401, 28.938253>,  <29.648481, 32.573650, 28.602468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.606384, 32.360401, 28.938253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015648, 0.843160, 0.537435,
		-0.994323, 0.069698, -0.080396,
		-0.105245, -0.533126, 0.839464,
		29.574810, 32.200462, 29.190092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.161070, 32.965839, 29.098354>,  <29.648481, 32.573650, 28.602468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.161070, 32.965839, 29.098354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.372143, 32.708332, 29.320026>,  <29.498787, 32.553829, 29.453030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.372143, 32.708332, 29.320026>,  <29.161070, 32.965839, 29.098354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.372143, 32.708332, 29.320026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067993, 0.682326, 0.727879,
		-0.846716, -0.346409, 0.403824,
		0.527683, -0.643764, 0.554183,
		29.530447, 32.515202, 29.486280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.726614, 32.773800, 29.763390>,  <29.161070, 32.965839, 29.098354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.726614, 32.773800, 29.763390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.104237, 32.680145, 29.856291>,  <29.330811, 32.623951, 29.912031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.104237, 32.680145, 29.856291>,  <28.726614, 32.773800, 29.763390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.104237, 32.680145, 29.856291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037794, 0.622790, 0.781475,
		-0.327617, -0.746533, 0.579099,
		0.944054, -0.234138, 0.232251,
		29.387453, 32.609905, 29.925966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.725710, 32.483421, 30.421183>,  <28.726614, 32.773800, 29.763390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.725710, 32.483421, 30.421183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.088814, 32.634159, 30.347469>,  <29.306677, 32.724602, 30.303242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.088814, 32.634159, 30.347469>,  <28.725710, 32.483421, 30.421183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.088814, 32.634159, 30.347469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045778, 0.525671, 0.849455,
		0.416984, -0.762666, 0.494435,
		0.907760, 0.376843, -0.184283,
		29.361141, 32.747211, 30.292185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.060667, 32.443768, 31.124043>,  <28.725710, 32.483421, 30.421183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.060667, 32.443768, 31.124043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.265335, 32.702950, 30.898352>,  <29.388136, 32.858459, 30.762938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.265335, 32.702950, 30.898352>,  <29.060667, 32.443768, 31.124043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.265335, 32.702950, 30.898352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101589, 0.606469, 0.788591,
		0.853156, -0.460816, 0.244486,
		0.511668, 0.647954, -0.564226,
		29.418835, 32.897335, 30.729084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.749577, 32.627804, 31.578066>,  <29.060667, 32.443768, 31.124043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.749577, 32.627804, 31.578066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.679260, 32.898273, 31.291883>,  <29.637070, 33.060555, 31.120174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.679260, 32.898273, 31.291883>,  <29.749577, 32.627804, 31.578066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.679260, 32.898273, 31.291883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313518, 0.727389, 0.610420,
		0.933169, -0.117001, -0.339863,
		-0.175793, 0.676178, -0.715458,
		29.626522, 33.101128, 31.077246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.448637, 33.036007, 31.344732>,  <29.749577, 32.627804, 31.578066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.448637, 33.036007, 31.344732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.133099, 33.260700, 31.244991>,  <29.943775, 33.395515, 31.185146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.133099, 33.260700, 31.244991>,  <30.448637, 33.036007, 31.344732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.133099, 33.260700, 31.244991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235042, 0.650618, 0.722116,
		0.567871, 0.511029, -0.645269,
		-0.788846, 0.561734, -0.249354,
		29.896444, 33.429222, 31.170185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.663116, 33.718975, 31.345184>,  <30.448637, 33.036007, 31.344732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.663116, 33.718975, 31.345184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.270828, 33.793137, 31.369898>,  <30.035456, 33.837635, 31.384726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.270828, 33.793137, 31.369898>,  <30.663116, 33.718975, 31.345184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.270828, 33.793137, 31.369898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176220, 0.702300, 0.689725,
		0.084489, 0.687313, -0.721431,
		-0.980718, 0.185405, 0.061782,
		29.976612, 33.848759, 31.388432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.673117, 34.441860, 31.635433>,  <30.663116, 33.718975, 31.345184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.673117, 34.441860, 31.635433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.296097, 34.311863, 31.666367>,  <30.069885, 34.233864, 31.684927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.296097, 34.311863, 31.666367>,  <30.673117, 34.441860, 31.635433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.296097, 34.311863, 31.666367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170286, 0.666550, 0.725750,
		-0.287412, 0.670886, -0.683598,
		-0.942548, -0.324997, 0.077332,
		30.013332, 34.214363, 31.689566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.119963, 35.019001, 31.677103>,  <30.673117, 34.441860, 31.635433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.119963, 35.019001, 31.677103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.955147, 34.698460, 31.850567>,  <29.856256, 34.506134, 31.954645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.955147, 34.698460, 31.850567>,  <30.119963, 35.019001, 31.677103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.955147, 34.698460, 31.850567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038390, 0.490784, 0.870435,
		-0.910357, 0.342005, -0.232986,
		-0.412039, -0.801351, 0.433659,
		29.831535, 34.458054, 31.980665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.642344, 35.278419, 32.096050>,  <30.119963, 35.019001, 31.677103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.642344, 35.278419, 32.096050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.648596, 34.910530, 32.252956>,  <29.652348, 34.689796, 32.347099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.648596, 34.910530, 32.252956>,  <29.642344, 35.278419, 32.096050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.648596, 34.910530, 32.252956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136372, 0.390606, 0.910401,
		-0.990534, 0.039263, 0.131529,
		0.015631, -0.919720, 0.392264,
		29.653286, 34.634613, 32.370636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.174923, 35.382565, 32.695713>,  <29.642344, 35.278419, 32.096050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.174923, 35.382565, 32.695713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.411827, 35.065556, 32.753876>,  <29.553968, 34.875351, 32.788773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.411827, 35.065556, 32.753876>,  <29.174923, 35.382565, 32.695713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.411827, 35.065556, 32.753876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091771, 0.245636, 0.965008,
		-0.800504, -0.558191, 0.218210,
		0.592259, -0.792519, 0.145407,
		29.589504, 34.827801, 32.797497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.908947, 34.992393, 33.312866>,  <29.174923, 35.382565, 32.695713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.908947, 34.992393, 33.312866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.284668, 34.866302, 33.258690>,  <29.510099, 34.790649, 33.226185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.284668, 34.866302, 33.258690>,  <28.908947, 34.992393, 33.312866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.284668, 34.866302, 33.258690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153175, 0.032053, 0.987679,
		-0.307003, -0.948474, 0.078392,
		0.939301, -0.315229, -0.135442,
		29.566458, 34.771732, 33.218056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.081381, 34.440147, 33.869732>,  <28.908947, 34.992393, 33.312866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.081381, 34.440147, 33.869732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.431084, 34.578457, 33.733425>,  <29.640905, 34.661442, 33.651642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.431084, 34.578457, 33.733425>,  <29.081381, 34.440147, 33.869732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.431084, 34.578457, 33.733425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319364, 0.119030, 0.940127,
		0.365630, -0.930739, -0.006364,
		0.874255, 0.345771, -0.340765,
		29.693359, 34.682186, 33.631195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.592209, 34.027916, 34.221737>,  <29.081381, 34.440147, 33.869732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.592209, 34.027916, 34.221737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.764332, 34.368359, 34.101437>,  <29.867605, 34.572624, 34.029255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.764332, 34.368359, 34.101437>,  <29.592209, 34.027916, 34.221737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.764332, 34.368359, 34.101437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182058, 0.244499, 0.952405,
		0.884133, -0.464580, -0.049741,
		0.430307, 0.851108, -0.300750,
		29.893423, 34.623692, 34.011211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.215370, 34.022266, 34.554298>,  <29.592209, 34.027916, 34.221737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.215370, 34.022266, 34.554298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.121067, 34.394871, 34.443508>,  <30.064486, 34.618431, 34.377033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.121067, 34.394871, 34.443508>,  <30.215370, 34.022266, 34.554298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.121067, 34.394871, 34.443508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212788, 0.327569, 0.920554,
		0.948230, 0.158090, -0.275441,
		-0.235757, 0.931507, -0.276971,
		30.050341, 34.674324, 34.360416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.827618, 34.493729, 34.737850>,  <30.215370, 34.022266, 34.554298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.827618, 34.493729, 34.737850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.479504, 34.690464, 34.727280>,  <30.270636, 34.808506, 34.720936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.479504, 34.690464, 34.727280>,  <30.827618, 34.493729, 34.737850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.479504, 34.690464, 34.727280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290370, 0.555650, 0.779063,
		0.397860, 0.670332, -0.626389,
		-0.870283, 0.491843, -0.026427,
		30.218418, 34.838017, 34.719353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.994421, 35.203423, 34.993706>,  <30.827618, 34.493729, 34.737850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.994421, 35.203423, 34.993706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.594503, 35.210796, 34.990410>,  <30.354553, 35.215221, 34.988430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.594503, 35.210796, 34.990410>,  <30.994421, 35.203423, 34.993706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.594503, 35.210796, 34.990410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005359, 0.635716, 0.771904,
		0.019473, 0.771703, -0.635685,
		-0.999796, 0.018438, -0.008244,
		30.294565, 35.216328, 34.987938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.877283, 35.910240, 34.989296>,  <30.994421, 35.203423, 34.993706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.877283, 35.910240, 34.989296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.555841, 35.731949, 35.147053>,  <30.362976, 35.624973, 35.241707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.555841, 35.731949, 35.147053>,  <30.877283, 35.910240, 34.989296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.555841, 35.731949, 35.147053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006379, 0.656168, 0.754588,
		-0.595131, 0.608905, -0.524456,
		-0.803603, -0.445733, 0.394390,
		30.314760, 35.598228, 35.265369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.463242, 35.883450, 35.507965>,  <30.877283, 35.910240, 34.989296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.463242, 35.883450, 35.507965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.816847, 35.735817, 35.622719>,  <32.029011, 35.647236, 35.691570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.816847, 35.735817, 35.622719>,  <31.463242, 35.883450, 35.507965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.816847, 35.735817, 35.622719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080115, -0.485004, -0.870834,
		0.460549, 0.792811, -0.399180,
		0.884011, -0.369082, 0.286885,
		32.082050, 35.625092, 35.708786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.806467, 35.946007, 34.867214>,  <31.463242, 35.883450, 35.507965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.806467, 35.946007, 34.867214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.002979, 35.673252, 35.083981>,  <32.120888, 35.509602, 35.214043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.002979, 35.673252, 35.083981>,  <31.806467, 35.946007, 34.867214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.002979, 35.673252, 35.083981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280699, -0.465037, -0.839612,
		0.824531, 0.564602, -0.037060,
		0.491281, -0.681883, 0.541920,
		32.150364, 35.468689, 35.246555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.496403, 35.986084, 34.615414>,  <31.806467, 35.946007, 34.867214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.496403, 35.986084, 34.615414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.393810, 35.641823, 34.791367>,  <32.332253, 35.435265, 34.896938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.393810, 35.641823, 34.791367>,  <32.496403, 35.986084, 34.615414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.393810, 35.641823, 34.791367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468192, -0.508776, -0.722457,
		0.845584, 0.020649, 0.533443,
		-0.256485, -0.860651, 0.439880,
		32.316864, 35.383629, 34.923332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.032555, 35.556519, 34.646404>,  <32.496403, 35.986084, 34.615414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.032555, 35.556519, 34.646404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.737392, 35.288948, 34.682274>,  <32.560295, 35.128407, 34.703796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.737392, 35.288948, 34.682274>,  <33.032555, 35.556519, 34.646404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.737392, 35.288948, 34.682274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451315, -0.587856, -0.671372,
		0.501809, -0.454937, 0.735676,
		-0.737904, -0.668923, 0.089671,
		32.516022, 35.088272, 34.709175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.209183, 34.857349, 34.892662>,  <33.032555, 35.556519, 34.646404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.209183, 34.857349, 34.892662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.916924, 34.816471, 34.622639>,  <32.741566, 34.791943, 34.460625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.916924, 34.816471, 34.622639>,  <33.209183, 34.857349, 34.892662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.916924, 34.816471, 34.622639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597773, -0.573469, -0.560179,
		-0.329876, -0.812827, 0.480098,
		-0.730650, -0.102200, -0.675059,
		32.697727, 34.785812, 34.420120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.996006, 34.956356, 34.883205>,  <33.209183, 34.857349, 34.892662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.996006, 34.956356, 34.883205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.156300, 34.591599, 34.918690>,  <34.252476, 34.372746, 34.939980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.156300, 34.591599, 34.918690>,  <33.996006, 34.956356, 34.883205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.156300, 34.591599, 34.918690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072111, 0.065127, 0.995268,
		-0.913352, -0.405235, -0.039659,
		0.400734, -0.911890, 0.088706,
		34.276520, 34.318031, 34.945301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.697651, 34.723576, 35.408165>,  <33.996006, 34.956356, 34.883205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.697651, 34.723576, 35.408165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.980999, 34.441322, 35.401207>,  <34.151009, 34.271973, 35.397030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.980999, 34.441322, 35.401207>,  <33.697651, 34.723576, 35.408165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.980999, 34.441322, 35.401207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000477, -0.024172, 0.999708,
		-0.705844, -0.708168, -0.016785,
		0.708367, -0.705630, -0.017399,
		34.193508, 34.229633, 35.395988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.448433, 34.303944, 35.922272>,  <33.697651, 34.723576, 35.408165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.448433, 34.303944, 35.922272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.840343, 34.244320, 35.868874>,  <34.075489, 34.208546, 35.836834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.840343, 34.244320, 35.868874>,  <33.448433, 34.303944, 35.922272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.840343, 34.244320, 35.868874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142754, 0.053186, 0.988328,
		-0.140216, -0.987397, 0.073389,
		0.979776, -0.149056, -0.133497,
		34.134277, 34.199604, 35.828823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.719643, 33.693729, 36.320389>,  <33.448433, 34.303944, 35.922272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.719643, 33.693729, 36.320389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.026787, 33.943802, 36.264465>,  <34.211071, 34.093845, 36.230911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.026787, 33.943802, 36.264465>,  <33.719643, 33.693729, 36.320389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.026787, 33.943802, 36.264465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175120, 0.005085, 0.984534,
		0.616221, -0.780465, -0.105577,
		0.767857, 0.625179, -0.139809,
		34.257145, 34.131355, 36.222523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.252281, 33.497643, 36.847313>,  <33.719643, 33.693729, 36.320389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.252281, 33.497643, 36.847313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.343811, 33.868671, 36.729164>,  <34.398727, 34.091290, 36.658276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.343811, 33.868671, 36.729164>,  <34.252281, 33.497643, 36.847313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.343811, 33.868671, 36.729164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256619, 0.235211, 0.937455,
		0.939035, -0.290307, -0.184212,
		0.228821, 0.927576, -0.295369,
		34.412457, 34.146946, 36.640553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.003780, 33.627838, 37.031986>,  <34.252281, 33.497643, 36.847313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.003780, 33.627838, 37.031986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.821022, 33.983028, 37.011002>,  <34.711369, 34.196140, 36.998409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.821022, 33.983028, 37.011002>,  <35.003780, 33.627838, 37.031986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.821022, 33.983028, 37.011002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373933, 0.245247, 0.894442,
		0.807107, 0.389047, -0.444095,
		-0.456893, 0.887973, -0.052463,
		34.683952, 34.249420, 36.995262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.502193, 34.060070, 37.164810>,  <35.003780, 33.627838, 37.031986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.502193, 34.060070, 37.164810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.179859, 34.290131, 37.221149>,  <34.986458, 34.428165, 37.254955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.179859, 34.290131, 37.221149>,  <35.502193, 34.060070, 37.164810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.179859, 34.290131, 37.221149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392088, 0.340018, 0.854783,
		0.443734, 0.744039, -0.499507,
		-0.805833, 0.575147, 0.140851,
		34.938110, 34.462673, 37.263405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.661617, 34.777534, 37.265942>,  <35.502193, 34.060070, 37.164810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.661617, 34.777534, 37.265942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.298935, 34.756336, 37.433311>,  <35.081326, 34.743618, 37.533733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.298935, 34.756336, 37.433311>,  <35.661617, 34.777534, 37.265942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.298935, 34.756336, 37.433311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361548, 0.413190, 0.835797,
		-0.217181, 0.909101, -0.355481,
		-0.906706, -0.052996, 0.418421,
		35.026924, 34.740437, 37.558838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.729874, 35.373913, 37.808731>,  <35.661617, 34.777534, 37.265942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.729874, 35.373913, 37.808731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.418629, 35.140018, 37.900497>,  <35.231884, 34.999683, 37.955555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.418629, 35.140018, 37.900497>,  <35.729874, 35.373913, 37.808731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.418629, 35.140018, 37.900497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146910, 0.185686, 0.971565,
		-0.610706, 0.789688, -0.058581,
		-0.778110, -0.584734, 0.229413,
		35.185196, 34.964600, 37.969322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.478260, 35.762554, 38.391457>,  <35.729874, 35.373913, 37.808731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.478260, 35.762554, 38.391457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.312183, 35.400005, 38.422710>,  <35.212540, 35.182476, 38.441463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.312183, 35.400005, 38.422710>,  <35.478260, 35.762554, 38.391457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.312183, 35.400005, 38.422710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250808, -0.031483, 0.967525,
		-0.874478, 0.421304, 0.240397,
		-0.415190, -0.906373, 0.078135,
		35.187626, 35.128094, 38.446152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.110050, 35.758148, 39.017796>,  <35.478260, 35.762554, 38.391457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.110050, 35.758148, 39.017796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.159420, 35.369514, 38.937012>,  <35.189041, 35.136333, 38.888542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.159420, 35.369514, 38.937012>,  <35.110050, 35.758148, 39.017796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.159420, 35.369514, 38.937012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140017, -0.218527, 0.965734,
		-0.982427, -0.090914, -0.163009,
		0.123421, -0.971587, -0.201957,
		35.196445, 35.078037, 38.876423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.483669, 35.408569, 39.242676>,  <35.110050, 35.758148, 39.017796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.483669, 35.408569, 39.242676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.774738, 35.134228, 39.238575>,  <34.949379, 34.969624, 39.236115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.774738, 35.134228, 39.238575>,  <34.483669, 35.408569, 39.242676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.774738, 35.134228, 39.238575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245283, -0.274135, 0.929885,
		-0.640573, -0.674135, -0.367707,
		0.727669, -0.685852, -0.010250,
		34.993038, 34.928471, 39.235500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.195236, 34.882252, 39.647583>,  <34.483669, 35.408569, 39.242676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.195236, 34.882252, 39.647583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.588921, 34.812630, 39.634762>,  <34.825130, 34.770859, 39.627071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.588921, 34.812630, 39.634762>,  <34.195236, 34.882252, 39.647583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.588921, 34.812630, 39.634762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026005, -0.321356, 0.946601,
		-0.175056, -0.930826, -0.320809,
		0.984215, -0.174051, -0.032050,
		34.884186, 34.760414, 39.625145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.296646, 34.249290, 39.922588>,  <34.195236, 34.882252, 39.647583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.296646, 34.249290, 39.922588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.663372, 34.404686, 39.959541>,  <34.883408, 34.497925, 39.981712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.663372, 34.404686, 39.959541>,  <34.296646, 34.249290, 39.922588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.663372, 34.404686, 39.959541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027366, -0.291939, 0.956045,
		0.398383, -0.873985, -0.278284,
		0.916811, 0.388488, 0.092386,
		34.938416, 34.521233, 39.987259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.679081, 33.795307, 40.276981>,  <34.296646, 34.249290, 39.922588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.679081, 33.795307, 40.276981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.854397, 34.153805, 40.304268>,  <34.959587, 34.368904, 40.320641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.854397, 34.153805, 40.304268>,  <34.679081, 33.795307, 40.276981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.854397, 34.153805, 40.304268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061448, -0.045841, 0.997057,
		0.896733, -0.441187, 0.034981,
		0.438285, 0.896243, 0.068217,
		34.985882, 34.422676, 40.324734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.212261, 33.654148, 40.682529>,  <34.679081, 33.795307, 40.276981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.212261, 33.654148, 40.682529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.134800, 34.045673, 40.709106>,  <35.088322, 34.280590, 40.725052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.134800, 34.045673, 40.709106>,  <35.212261, 33.654148, 40.682529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.134800, 34.045673, 40.709106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176918, -0.101455, 0.978983,
		0.964986, 0.177832, 0.192818,
		-0.193657, 0.978817, 0.066441,
		35.076702, 34.339317, 40.729038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.502346, 33.832005, 41.301495>,  <35.212261, 33.654148, 40.682529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.502346, 33.832005, 41.301495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.266239, 34.144703, 41.221035>,  <35.124577, 34.332321, 41.172760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.266239, 34.144703, 41.221035>,  <35.502346, 33.832005, 41.301495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.266239, 34.144703, 41.221035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234025, 0.072757, 0.969504,
		0.772539, 0.619341, 0.140002,
		-0.590268, 0.781743, -0.201149,
		35.089157, 34.379227, 41.160690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.630875, 34.403332, 41.775688>,  <35.502346, 33.832005, 41.301495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.630875, 34.403332, 41.775688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.252922, 34.425056, 41.646534>,  <35.026150, 34.438091, 41.569042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.252922, 34.425056, 41.646534>,  <35.630875, 34.403332, 41.775688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.252922, 34.425056, 41.646534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324339, -0.020160, 0.945726,
		0.044853, 0.998320, 0.036664,
		-0.944877, 0.054310, -0.322890,
		34.969460, 34.441349, 41.549667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.314293, 34.975910, 42.130070>,  <35.630875, 34.403332, 41.775688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.314293, 34.975910, 42.130070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.995518, 34.758057, 42.025555>,  <34.804253, 34.627346, 41.962845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.995518, 34.758057, 42.025555>,  <35.314293, 34.975910, 42.130070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.995518, 34.758057, 42.025555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363998, 0.087772, 0.927255,
		-0.482077, 0.834071, -0.268193,
		-0.796936, -0.544630, -0.261287,
		34.756435, 34.594669, 41.947170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.789742, 35.094574, 42.643360>,  <35.314293, 34.975910, 42.130070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.789742, 35.094574, 42.643360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.582745, 34.796051, 42.475918>,  <34.458546, 34.616936, 42.375454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.582745, 34.796051, 42.475918>,  <34.789742, 35.094574, 42.643360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.582745, 34.796051, 42.475918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345731, -0.265134, 0.900097,
		-0.782735, 0.610516, -0.120817,
		-0.517491, -0.746307, -0.418604,
		34.427498, 34.572159, 42.350338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.185642, 35.118584, 42.923782>,  <34.789742, 35.094574, 42.643360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.185642, 35.118584, 42.923782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.173885, 34.739185, 42.797611>,  <34.166832, 34.511547, 42.721909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.173885, 34.739185, 42.797611>,  <34.185642, 35.118584, 42.923782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.173885, 34.739185, 42.797611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430821, -0.272729, 0.860239,
		-0.901959, 0.161178, -0.400615,
		-0.029392, -0.948494, -0.315429,
		34.165070, 34.454636, 42.702984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.597553, 34.843876, 43.304066>,  <34.185642, 35.118584, 42.923782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.597553, 34.843876, 43.304066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.801952, 34.518734, 43.192245>,  <33.924591, 34.323647, 43.125153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.801952, 34.518734, 43.192245>,  <33.597553, 34.843876, 43.304066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.801952, 34.518734, 43.192245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222913, -0.439402, 0.870193,
		-0.830177, -0.382349, -0.405728,
		0.510995, -0.812856, -0.279551,
		33.955250, 34.274876, 43.108379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.156666, 34.280117, 43.356064>,  <33.597553, 34.843876, 43.304066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.156666, 34.280117, 43.356064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.536354, 34.159718, 43.392673>,  <33.764168, 34.087479, 43.414639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.536354, 34.159718, 43.392673>,  <33.156666, 34.280117, 43.356064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.536354, 34.159718, 43.392673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223419, -0.440120, 0.869700,
		-0.221497, -0.845986, -0.485021,
		0.949222, -0.300999, 0.091524,
		33.821121, 34.069416, 43.420132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.105064, 33.771313, 43.691353>,  <33.156666, 34.280117, 43.356064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.105064, 33.771313, 43.691353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.501541, 33.803963, 43.733078>,  <33.739426, 33.823555, 43.758114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.501541, 33.803963, 43.733078>,  <33.105064, 33.771313, 43.691353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.501541, 33.803963, 43.733078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078392, -0.273297, 0.958730,
		0.106768, -0.958460, -0.264490,
		0.991189, 0.081628, 0.104315,
		33.798897, 33.828449, 43.764374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.390285, 33.117146, 44.044636>,  <33.105064, 33.771313, 43.691353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.390285, 33.117146, 44.044636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.681477, 33.364693, 44.162647>,  <33.856194, 33.513222, 44.233452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.681477, 33.364693, 44.162647>,  <33.390285, 33.117146, 44.044636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.681477, 33.364693, 44.162647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425101, 0.069838, 0.902448,
		0.537895, -0.782381, 0.313924,
		0.727982, 0.618872, 0.295026,
		33.899872, 33.550354, 44.251156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.596268, 32.914112, 44.693100>,  <33.390285, 33.117146, 44.044636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.596268, 32.914112, 44.693100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.722443, 33.291157, 44.649296>,  <33.798145, 33.517384, 44.623013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.722443, 33.291157, 44.649296>,  <33.596268, 32.914112, 44.693100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.722443, 33.291157, 44.649296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236329, 0.189796, 0.952957,
		0.919049, -0.274713, 0.282634,
		0.315433, 0.942608, -0.109509,
		33.817074, 33.573940, 44.616444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.101727, 33.049545, 45.273602>,  <33.596268, 32.914112, 44.693100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.101727, 33.049545, 45.273602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.942509, 33.385189, 45.125301>,  <33.846977, 33.586575, 45.036324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.942509, 33.385189, 45.125301>,  <34.101727, 33.049545, 45.273602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.942509, 33.385189, 45.125301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365816, 0.225432, 0.902973,
		0.841272, 0.495049, 0.217228,
		-0.398045, 0.839111, -0.370747,
		33.823093, 33.636921, 45.014076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.297470, 33.587219, 45.734116>,  <34.101727, 33.049545, 45.273602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.297470, 33.587219, 45.734116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.968864, 33.699726, 45.535721>,  <33.771702, 33.767231, 45.416683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.968864, 33.699726, 45.535721>,  <34.297470, 33.587219, 45.734116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.968864, 33.699726, 45.535721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451492, 0.210378, 0.867119,
		0.348234, 0.936286, -0.045841,
		-0.821515, 0.281264, -0.495987,
		33.722408, 33.784103, 45.386925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.172951, 34.222298, 46.062485>,  <34.297470, 33.587219, 45.734116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.172951, 34.222298, 46.062485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.838352, 34.143726, 45.857861>,  <33.637592, 34.096584, 45.735088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.838352, 34.143726, 45.857861>,  <34.172951, 34.222298, 46.062485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.838352, 34.143726, 45.857861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536051, 0.099660, 0.838282,
		-0.113681, 0.975440, -0.188661,
		-0.836496, -0.196428, -0.511557,
		33.587402, 34.084797, 45.704395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.737843, 34.815182, 46.084999>,  <34.172951, 34.222298, 46.062485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.737843, 34.815182, 46.084999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.522060, 34.484344, 46.021866>,  <33.392590, 34.285843, 45.983986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.522060, 34.484344, 46.021866>,  <33.737843, 34.815182, 46.084999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.522060, 34.484344, 46.021866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467851, 0.138576, 0.872876,
		-0.700075, 0.544719, -0.461710,
		-0.539454, -0.827090, -0.157834,
		33.360226, 34.236217, 45.974514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.219898, 35.028381, 46.490765>,  <33.737843, 34.815182, 46.084999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.219898, 35.028381, 46.490765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.206844, 34.630203, 46.454956>,  <33.199013, 34.391296, 46.433472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.206844, 34.630203, 46.454956>,  <33.219898, 35.028381, 46.490765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.206844, 34.630203, 46.454956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524445, -0.059192, 0.849385,
		-0.850819, 0.074671, -0.520127,
		-0.032637, -0.995450, -0.089522,
		33.197052, 34.331570, 46.428101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.565681, 34.878662, 46.676514>,  <33.219898, 35.028381, 46.490765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.565681, 34.878662, 46.676514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.766872, 34.535751, 46.720505>,  <32.887585, 34.330006, 46.746899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.766872, 34.535751, 46.720505>,  <32.565681, 34.878662, 46.676514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.766872, 34.535751, 46.720505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489692, -0.177807, 0.853573,
		-0.712193, -0.483180, -0.509233,
		0.502974, -0.857276, 0.109976,
		32.917767, 34.278568, 46.753498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.035473, 34.438801, 46.783913>,  <32.565681, 34.878662, 46.676514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.035473, 34.438801, 46.783913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.357376, 34.235806, 46.907082>,  <32.550518, 34.114006, 46.980984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.357376, 34.235806, 46.907082>,  <32.035473, 34.438801, 46.783913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.357376, 34.235806, 46.907082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455816, -0.196010, 0.868223,
		-0.380259, -0.839067, -0.389063,
		0.804757, -0.507491, 0.307925,
		32.598804, 34.083557, 46.999458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.800360, 33.831341, 47.073559>,  <32.035473, 34.438801, 46.783913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.800360, 33.831341, 47.073559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.165966, 33.892010, 47.224064>,  <32.385330, 33.928413, 47.314365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.165966, 33.892010, 47.224064>,  <31.800360, 33.831341, 47.073559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.165966, 33.892010, 47.224064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343407, -0.204507, 0.916651,
		0.215981, -0.967043, -0.134836,
		0.914015, 0.151676, 0.376259,
		32.440170, 33.937511, 47.336941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.803934, 33.340973, 47.692554>,  <31.800360, 33.831341, 47.073559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.803934, 33.340973, 47.692554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.116676, 33.579430, 47.765560>,  <32.304321, 33.722504, 47.809364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.116676, 33.579430, 47.765560>,  <31.803934, 33.340973, 47.692554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.116676, 33.579430, 47.765560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118939, -0.144747, 0.982294,
		0.612010, -0.789720, -0.042266,
		0.781855, 0.596147, 0.182515,
		32.351234, 33.758274, 47.820316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.197636, 33.057312, 48.133717>,  <31.803934, 33.340973, 47.692554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.197636, 33.057312, 48.133717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.318203, 33.434677, 48.189022>,  <32.390541, 33.661098, 48.222206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.318203, 33.434677, 48.189022>,  <32.197636, 33.057312, 48.133717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.318203, 33.434677, 48.189022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121685, -0.105759, 0.986918,
		0.945696, -0.314297, 0.082923,
		0.301416, 0.943415, 0.138261,
		32.408627, 33.717701, 48.230499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.773415, 33.075932, 48.706306>,  <32.197636, 33.057312, 48.133717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.773415, 33.075932, 48.706306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.595600, 33.432106, 48.667316>,  <32.488911, 33.645813, 48.643921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.595600, 33.432106, 48.667316>,  <32.773415, 33.075932, 48.706306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.595600, 33.432106, 48.667316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209349, 0.002531, 0.977838,
		0.870952, 0.455095, 0.185287,
		-0.444540, 0.890439, -0.097478,
		32.462238, 33.699238, 48.638073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.992893, 33.403938, 49.276203>,  <32.773415, 33.075932, 48.706306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.992893, 33.403938, 49.276203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.654903, 33.586853, 49.165272>,  <32.452110, 33.696602, 49.098713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.654903, 33.586853, 49.165272>,  <32.992893, 33.403938, 49.276203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.654903, 33.586853, 49.165272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305333, 0.013245, 0.952154,
		0.439077, 0.889222, 0.128433,
		-0.844975, 0.457284, -0.277325,
		32.401409, 33.724037, 49.082073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.950089, 33.859756, 49.677181>,  <32.992893, 33.403938, 49.276203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.950089, 33.859756, 49.677181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.573227, 33.863888, 49.543179>,  <32.347111, 33.866367, 49.462776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.573227, 33.863888, 49.543179>,  <32.950089, 33.859756, 49.677181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.573227, 33.863888, 49.543179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335159, -0.021713, 0.941911,
		0.002454, 0.999711, 0.023919,
		-0.942158, 0.010328, -0.335009,
		32.290581, 33.866985, 49.442677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.676422, 34.389519, 50.040279>,  <32.950089, 33.859756, 49.677181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.676422, 34.389519, 50.040279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.359791, 34.169033, 49.934780>,  <32.169811, 34.036743, 49.871479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.359791, 34.169033, 49.934780>,  <32.676422, 34.389519, 50.040279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.359791, 34.169033, 49.934780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370887, 0.090361, 0.924272,
		-0.485637, 0.829458, -0.275965,
		-0.791580, -0.551212, -0.263753,
		32.122318, 34.003670, 49.855656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.236637, 34.486065, 50.586006>,  <32.676422, 34.389519, 50.040279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.236637, 34.486065, 50.586006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.073471, 34.163361, 50.415009>,  <31.975571, 33.969738, 50.312412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.073471, 34.163361, 50.415009>,  <32.236637, 34.486065, 50.586006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.073471, 34.163361, 50.415009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319035, -0.312755, 0.894651,
		-0.855466, 0.501326, -0.129807,
		-0.407915, -0.806757, -0.427492,
		31.951097, 33.921333, 50.286762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.645815, 34.439369, 50.869450>,  <32.236637, 34.486065, 50.586006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.645815, 34.439369, 50.869450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.656981, 34.060059, 50.742966>,  <31.663679, 33.832470, 50.667076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.656981, 34.060059, 50.742966>,  <31.645815, 34.439369, 50.869450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.656981, 34.060059, 50.742966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590878, -0.270805, 0.759953,
		-0.806278, 0.165630, -0.567876,
		0.027912, -0.948278, -0.316211,
		31.665354, 33.775574, 50.648102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.913408, 34.102203, 50.898861>,  <31.645815, 34.439369, 50.869450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.913408, 34.102203, 50.898861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.190229, 33.813690, 50.910229>,  <31.356323, 33.640583, 50.917049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.190229, 33.813690, 50.910229>,  <30.913408, 34.102203, 50.898861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.190229, 33.813690, 50.910229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511750, -0.462486, 0.724030,
		-0.509091, -0.515609, -0.689183,
		0.692054, -0.721286, 0.028416,
		31.397846, 33.597305, 50.918755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.590225, 33.510586, 51.139153>,  <30.913408, 34.102203, 50.898861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.590225, 33.510586, 51.139153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.958176, 33.379868, 51.225903>,  <31.178946, 33.301437, 51.277950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.958176, 33.379868, 51.225903>,  <30.590225, 33.510586, 51.139153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.958176, 33.379868, 51.225903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359848, -0.483266, 0.798100,
		-0.156011, -0.812192, -0.562142,
		0.919875, -0.326798, 0.216871,
		31.234138, 33.281826, 51.290962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.421480, 33.148899, 51.725666>,  <30.590225, 33.510586, 51.139153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.421480, 33.148899, 51.725666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.814713, 33.088287, 51.684494>,  <31.050652, 33.051922, 51.659790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.814713, 33.088287, 51.684494>,  <30.421480, 33.148899, 51.725666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.814713, 33.088287, 51.684494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004959, -0.539687, 0.841851,
		-0.183114, -0.828116, -0.529804,
		0.983079, -0.151528, -0.102931,
		31.109636, 33.042828, 51.653614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.529560, 32.536037, 52.008747>,  <30.421480, 33.148899, 51.725666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.529560, 32.536037, 52.008747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.901541, 32.679054, 52.043049>,  <31.124729, 32.764862, 52.063629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.901541, 32.679054, 52.043049>,  <30.529560, 32.536037, 52.008747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.901541, 32.679054, 52.043049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055975, -0.368187, 0.928065,
		0.363395, -0.858256, -0.362410,
		0.929952, 0.357540, 0.085756,
		31.180527, 32.786316, 52.068775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.155037, 31.924332, 52.165493>,  <30.529560, 32.536037, 52.008747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.155037, 31.924332, 52.165493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.202631, 32.297024, 52.302738>,  <31.231188, 32.520638, 52.385086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.202631, 32.297024, 52.302738>,  <31.155037, 31.924332, 52.165493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.202631, 32.297024, 52.302738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045378, -0.350305, 0.935536,
		0.991859, -0.095745, -0.083961,
		0.118985, 0.931729, 0.343109,
		31.238327, 32.576542, 52.405670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.738329, 31.934074, 52.656403>,  <31.155037, 31.924332, 52.165493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.738329, 31.934074, 52.656403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.463182, 32.204678, 52.761608>,  <31.298096, 32.367039, 52.824730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.463182, 32.204678, 52.761608>,  <31.738329, 31.934074, 52.656403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.463182, 32.204678, 52.761608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076655, -0.428041, 0.900503,
		0.721780, 0.599263, 0.346292,
		-0.687865, 0.676510, 0.263015,
		31.256823, 32.407631, 52.840511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.290920, 31.923590, 52.079151>,  <31.738329, 31.934074, 52.656403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.290920, 31.923590, 52.079151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.931601, 32.086929, 52.014267>,  <31.716009, 32.184933, 51.975338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.931601, 32.086929, 52.014267>,  <32.290920, 31.923590, 52.079151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.931601, 32.086929, 52.014267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097500, 0.174719, 0.979779,
		0.428435, 0.895948, -0.117135,
		-0.898297, 0.408351, -0.162211,
		31.662111, 32.209435, 51.965603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.319508, 32.773945, 52.263359>,  <32.290920, 31.923590, 52.079151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.319508, 32.773945, 52.263359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.947702, 32.626888, 52.274971>,  <31.724619, 32.538654, 52.281937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.947702, 32.626888, 52.274971>,  <32.319508, 32.773945, 52.263359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.947702, 32.626888, 52.274971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130418, 0.401321, 0.906605,
		-0.344952, 0.838918, -0.420980,
		-0.929516, -0.367638, 0.029026,
		31.668848, 32.516598, 52.283680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.707279, 33.387833, 52.558407>,  <32.319508, 32.773945, 52.263359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.707279, 33.387833, 52.558407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.736004, 33.105564, 52.840363>,  <32.753239, 32.936203, 53.009537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.736004, 33.105564, 52.840363>,  <32.707279, 33.387833, 52.558407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.736004, 33.105564, 52.840363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717262, -0.454548, -0.528130,
		0.693093, 0.543517, 0.473509,
		0.071815, -0.705673, 0.704889,
		32.757549, 32.893864, 53.051830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.361652, 33.484184, 52.770695>,  <32.707279, 33.387833, 52.558407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.361652, 33.484184, 52.770695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.232803, 33.116524, 52.861382>,  <33.155495, 32.895927, 52.915794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.232803, 33.116524, 52.861382>,  <33.361652, 33.484184, 52.770695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.232803, 33.116524, 52.861382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653230, -0.389136, -0.649511,
		0.685223, -0.061119, 0.725764,
		-0.322118, -0.919151, 0.226720,
		33.136169, 32.840778, 52.929398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.928738, 33.089367, 52.786301>,  <33.361652, 33.484184, 52.770695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.928738, 33.089367, 52.786301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632076, 32.840630, 52.685696>,  <33.454079, 32.691387, 52.625332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632076, 32.840630, 52.685696>,  <33.928738, 33.089367, 52.786301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.632076, 32.840630, 52.685696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610161, -0.469645, -0.638072,
		0.278656, -0.626696, 0.727738,
		-0.741656, -0.621841, -0.251516,
		33.409580, 32.654076, 52.610241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.176723, 32.380779, 52.713764>,  <33.928738, 33.089367, 52.786301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.176723, 32.380779, 52.713764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.845398, 32.414330, 52.492184>,  <33.646603, 32.434460, 52.359234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.845398, 32.414330, 52.492184>,  <34.176723, 32.380779, 52.713764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.845398, 32.414330, 52.492184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455290, -0.475435, -0.752777,
		-0.326511, -0.875743, 0.355619,
		-0.828312, 0.083880, -0.553952,
		33.596905, 32.439495, 52.325996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.061489, 31.750717, 52.295345>,  <34.176723, 32.380779, 52.713764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.061489, 31.750717, 52.295345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.884174, 32.057213, 52.109283>,  <33.777786, 32.241112, 51.997646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.884174, 32.057213, 52.109283>,  <34.061489, 31.750717, 52.295345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.884174, 32.057213, 52.109283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402945, -0.293203, -0.866988,
		-0.800706, -0.571759, -0.178778,
		-0.443289, 0.766240, -0.465157,
		33.751186, 32.287086, 51.969738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.040913, 31.419163, 51.697392>,  <34.061489, 31.750717, 52.295345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.040913, 31.419163, 51.697392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.959354, 31.802666, 51.618183>,  <33.910419, 32.032768, 51.570656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.959354, 31.802666, 51.618183>,  <34.040913, 31.419163, 51.697392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.959354, 31.802666, 51.618183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348398, -0.117967, -0.929894,
		-0.914901, -0.258596, -0.309975,
		-0.203900, 0.958755, -0.198023,
		33.898186, 32.090294, 51.558777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.472721, 31.481817, 51.187904>,  <34.040913, 31.419163, 51.697392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.472721, 31.481817, 51.187904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.708828, 31.804462, 51.175503>,  <33.850491, 31.998051, 51.168060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.708828, 31.804462, 51.175503>,  <33.472721, 31.481817, 51.187904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.708828, 31.804462, 51.175503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160945, -0.155244, -0.974677,
		-0.791003, 0.570326, -0.221455,
		0.590263, 0.806615, -0.031007,
		33.885906, 32.046448, 51.166199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.374546, 31.808233, 50.491692>,  <33.472721, 31.481817, 51.187904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.374546, 31.808233, 50.491692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.708530, 31.987852, 50.618935>,  <33.908920, 32.095623, 50.695282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.708530, 31.987852, 50.618935>,  <33.374546, 31.808233, 50.491692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.708530, 31.987852, 50.618935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286252, 0.139298, -0.947975,
		-0.469999, 0.882582, -0.012233,
		0.834962, 0.449048, 0.318111,
		33.959019, 32.122566, 50.714367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.393127, 32.576378, 50.232910>,  <33.374546, 31.808233, 50.491692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.393127, 32.576378, 50.232910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.752460, 32.414326, 50.300877>,  <33.968060, 32.317093, 50.341656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.752460, 32.414326, 50.300877>,  <33.393127, 32.576378, 50.232910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.752460, 32.414326, 50.300877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280925, 0.232388, -0.931170,
		0.337759, 0.884232, 0.322573,
		0.898332, -0.405130, 0.169912,
		34.021961, 32.292786, 50.351849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.825027, 32.897919, 49.792110>,  <33.393127, 32.576378, 50.232910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.825027, 32.897919, 49.792110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.056480, 32.589264, 49.897758>,  <34.195354, 32.404072, 49.961147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.056480, 32.589264, 49.897758>,  <33.825027, 32.897919, 49.792110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.056480, 32.589264, 49.897758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420138, 0.004444, -0.907449,
		0.699046, 0.636049, 0.326766,
		0.578634, -0.771636, 0.264122,
		34.230072, 32.357773, 49.976994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.488251, 33.042328, 49.445015>,  <33.825027, 32.897919, 49.792110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.488251, 33.042328, 49.445015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.487164, 32.652657, 49.535324>,  <34.486511, 32.418854, 49.589508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.487164, 32.652657, 49.535324>,  <34.488251, 33.042328, 49.445015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.487164, 32.652657, 49.535324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631771, -0.176684, -0.754750,
		0.775150, 0.140585, 0.615937,
		-0.002720, -0.974176, 0.225774,
		34.486347, 32.360405, 49.603058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.169231, 32.844288, 49.398869>,  <34.488251, 33.042328, 49.445015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.169231, 32.844288, 49.398869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.938099, 32.519512, 49.365746>,  <34.799419, 32.324646, 49.345871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.938099, 32.519512, 49.365746>,  <35.169231, 32.844288, 49.398869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.938099, 32.519512, 49.365746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509466, -0.279577, -0.813807,
		0.637613, -0.512433, 0.575206,
		-0.577836, -0.811942, -0.082805,
		34.764748, 32.275928, 49.340904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.685394, 32.261196, 49.277424>,  <35.169231, 32.844288, 49.398869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.685394, 32.261196, 49.277424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.326458, 32.163467, 49.130405>,  <35.111095, 32.104832, 49.042194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.326458, 32.163467, 49.130405>,  <35.685394, 32.261196, 49.277424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.326458, 32.163467, 49.130405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401446, -0.105838, -0.909747,
		0.183369, -0.963902, 0.193054,
		-0.897339, -0.244320, -0.367547,
		35.057255, 32.090172, 49.020142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.754791, 31.677273, 48.810768>,  <35.685394, 32.261196, 49.277424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.754791, 31.677273, 48.810768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.384907, 31.786852, 48.705044>,  <35.162975, 31.852598, 48.641609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.384907, 31.786852, 48.705044>,  <35.754791, 31.677273, 48.810768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.384907, 31.786852, 48.705044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261667, -0.046855, -0.964020,
		-0.276474, -0.960603, -0.028356,
		-0.924712, 0.273946, -0.264313,
		35.107494, 31.869036, 48.625751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.593845, 31.315519, 48.322723>,  <35.754791, 31.677273, 48.810768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.593845, 31.315519, 48.322723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.318531, 31.597200, 48.253021>,  <35.153343, 31.766209, 48.211201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.318531, 31.597200, 48.253021>,  <35.593845, 31.315519, 48.322723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.318531, 31.597200, 48.253021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041562, -0.201538, -0.978598,
		-0.724250, -0.680796, 0.109448,
		-0.688284, 0.704201, -0.174259,
		35.112045, 31.808460, 48.200745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.119038, 31.016836, 48.041168>,  <35.593845, 31.315519, 48.322723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.119038, 31.016836, 48.041168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.088818, 31.397713, 47.922764>,  <35.070686, 31.626240, 47.851723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.088818, 31.397713, 47.922764>,  <35.119038, 31.016836, 48.041168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.088818, 31.397713, 47.922764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173477, -0.279780, -0.944261,
		-0.981936, -0.122689, -0.144047,
		-0.075549, 0.952192, -0.296010,
		35.066154, 31.683371, 47.833961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.679585, 31.092215, 47.387886>,  <35.119038, 31.016836, 48.041168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.679585, 31.092215, 47.387886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.881645, 31.437363, 47.381287>,  <35.002884, 31.644451, 47.377327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.881645, 31.437363, 47.381287>,  <34.679585, 31.092215, 47.387886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.881645, 31.437363, 47.381287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068017, -0.058865, -0.995946,
		-0.860345, 0.501984, -0.088425,
		0.505154, 0.862872, -0.016501,
		35.033192, 31.696224, 47.376335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.483444, 31.382025, 46.800442>,  <34.679585, 31.092215, 47.387886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.483444, 31.382025, 46.800442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.809498, 31.602167, 46.872730>,  <35.005131, 31.734253, 46.916103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.809498, 31.602167, 46.872730>,  <34.483444, 31.382025, 46.800442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.809498, 31.602167, 46.872730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144813, 0.108473, -0.983495,
		-0.560877, 0.827853, 0.008721,
		0.815136, 0.550357, 0.180723,
		35.054039, 31.767275, 46.926949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.348003, 31.917936, 46.362629>,  <34.483444, 31.382025, 46.800442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.348003, 31.917936, 46.362629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.742741, 31.909702, 46.426769>,  <34.979584, 31.904762, 46.465252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.742741, 31.909702, 46.426769>,  <34.348003, 31.917936, 46.362629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.742741, 31.909702, 46.426769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160829, 0.225692, -0.960832,
		-0.016409, 0.973981, 0.226034,
		0.986846, -0.020586, 0.160348,
		35.038795, 31.903526, 46.474873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.702145, 32.508720, 46.126637>,  <34.348003, 31.917936, 46.362629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.702145, 32.508720, 46.126637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.932831, 32.182331, 46.110699>,  <35.071243, 31.986498, 46.101135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.932831, 32.182331, 46.110699>,  <34.702145, 32.508720, 46.126637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.932831, 32.182331, 46.110699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134995, 0.143288, -0.980431,
		0.805714, 0.560052, 0.192788,
		0.576716, -0.815972, -0.039845,
		35.105846, 31.937540, 46.098743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.150158, 32.743160, 45.519154>,  <34.702145, 32.508720, 46.126637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.150158, 32.743160, 45.519154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.206184, 32.352959, 45.586998>,  <35.239799, 32.118835, 45.627705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.206184, 32.352959, 45.586998>,  <35.150158, 32.743160, 45.519154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.206184, 32.352959, 45.586998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205231, -0.138975, -0.968796,
		0.968639, 0.170509, 0.180738,
		0.140070, -0.975506, 0.169610,
		35.248207, 32.060307, 45.637882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.717888, 32.595188, 45.160999>,  <35.150158, 32.743160, 45.519154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.717888, 32.595188, 45.160999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.588459, 32.222046, 45.224342>,  <35.510803, 31.998159, 45.262348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.588459, 32.222046, 45.224342>,  <35.717888, 32.595188, 45.160999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.588459, 32.222046, 45.224342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168750, -0.221568, -0.960433,
		0.931035, -0.284046, 0.229113,
		-0.323571, -0.932859, 0.158355,
		35.491386, 31.942188, 45.271851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.233643, 32.225624, 44.854599>,  <35.717888, 32.595188, 45.160999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.233643, 32.225624, 44.854599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.924206, 31.973389, 44.879627>,  <35.738544, 31.822046, 44.894642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.924206, 31.973389, 44.879627>,  <36.233643, 32.225624, 44.854599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.924206, 31.973389, 44.879627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237369, -0.379905, -0.894052,
		0.587553, -0.676775, 0.443572,
		-0.773588, -0.630593, 0.062569,
		35.692131, 31.784210, 44.898399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.402676, 31.669561, 44.440762>,  <36.233643, 32.225624, 44.854599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.402676, 31.669561, 44.440762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.008560, 31.622927, 44.490753>,  <35.772091, 31.594946, 44.520748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.008560, 31.622927, 44.490753>,  <36.402676, 31.669561, 44.440762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.008560, 31.622927, 44.490753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067305, -0.407475, -0.910733,
		0.157106, -0.905744, 0.393632,
		-0.985286, -0.116588, 0.124977,
		35.712975, 31.587950, 44.528248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.333549, 31.052389, 44.230579>,  <36.402676, 31.669561, 44.440762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.333549, 31.052389, 44.230579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.960396, 31.195591, 44.214817>,  <35.736504, 31.281511, 44.205360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.960396, 31.195591, 44.214817>,  <36.333549, 31.052389, 44.230579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.960396, 31.195591, 44.214817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034946, -0.198858, -0.979405,
		-0.358467, -0.912299, 0.198023,
		-0.932888, 0.358004, -0.039403,
		35.680531, 31.302992, 44.202995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.931007, 30.547094, 43.786049>,  <36.333549, 31.052389, 44.230579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.931007, 30.547094, 43.786049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.755665, 30.906496, 43.776829>,  <35.650459, 31.122137, 43.771297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.755665, 30.906496, 43.776829>,  <35.931007, 30.547094, 43.786049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.755665, 30.906496, 43.776829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121116, -0.084462, -0.989038,
		-0.890602, -0.430762, 0.145848,
		-0.438359, 0.898504, -0.023050,
		35.624157, 31.176048, 43.769913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.299328, 30.482515, 43.427540>,  <35.931007, 30.547094, 43.786049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.299328, 30.482515, 43.427540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.422218, 30.860430, 43.381943>,  <35.495953, 31.087177, 43.354584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.422218, 30.860430, 43.381943>,  <35.299328, 30.482515, 43.427540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.422218, 30.860430, 43.381943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147193, -0.071167, -0.986544,
		-0.940184, 0.319873, 0.117201,
		0.307228, 0.944784, -0.113993,
		35.514385, 31.143866, 43.347744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.919613, 30.658438, 42.843834>,  <35.299328, 30.482515, 43.427540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.919613, 30.658438, 42.843834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.176723, 30.964298, 42.862362>,  <35.330990, 31.147814, 42.873478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.176723, 30.964298, 42.862362>,  <34.919613, 30.658438, 42.843834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.176723, 30.964298, 42.862362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012177, 0.050254, -0.998662,
		-0.765955, 0.642483, 0.022990,
		0.642778, 0.764651, 0.046316,
		35.369556, 31.193693, 42.876255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.665134, 31.234682, 42.553776>,  <34.919613, 30.658438, 42.843834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.665134, 31.234682, 42.553776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.058460, 31.299326, 42.520386>,  <35.294456, 31.338112, 42.500351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.058460, 31.299326, 42.520386>,  <34.665134, 31.234682, 42.553776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.058460, 31.299326, 42.520386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096799, 0.076377, -0.992369,
		-0.154000, 0.983895, 0.090746,
		0.983318, 0.161609, -0.083478,
		35.353455, 31.347809, 42.495342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.777943, 31.825037, 42.096279>,  <34.665134, 31.234682, 42.553776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.777943, 31.825037, 42.096279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.126598, 31.629951, 42.076794>,  <35.335793, 31.512899, 42.065102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.126598, 31.629951, 42.076794>,  <34.777943, 31.825037, 42.096279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.126598, 31.629951, 42.076794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067780, 0.218367, -0.973510,
		0.485431, 0.845252, 0.223395,
		0.871643, -0.487714, -0.048711,
		35.388092, 31.483637, 42.062180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.266186, 32.291454, 41.863228>,  <34.777943, 31.825037, 42.096279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.266186, 32.291454, 41.863228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.466297, 31.951319, 41.797947>,  <35.586365, 31.747236, 41.758778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.466297, 31.951319, 41.797947>,  <35.266186, 32.291454, 41.863228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.466297, 31.951319, 41.797947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217631, 0.305921, -0.926849,
		0.838066, 0.428168, 0.338108,
		0.500282, -0.850344, -0.163199,
		35.616383, 31.696217, 41.748985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.837158, 32.533611, 41.686676>,  <35.266186, 32.291454, 41.863228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.837158, 32.533611, 41.686676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.779621, 32.164383, 41.543991>,  <35.745098, 31.942846, 41.458378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.779621, 32.164383, 41.543991>,  <35.837158, 32.533611, 41.686676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.779621, 32.164383, 41.543991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109173, 0.343461, -0.932800,
		0.983559, -0.173123, 0.051369,
		-0.143846, -0.923072, -0.356715,
		35.736465, 31.887461, 41.436977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.379009, 32.504860, 41.114574>,  <35.837158, 32.533611, 41.686676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.379009, 32.504860, 41.114574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.142956, 32.188740, 41.048645>,  <36.001324, 31.999067, 41.009087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.142956, 32.188740, 41.048645>,  <36.379009, 32.504860, 41.114574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.142956, 32.188740, 41.048645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140391, 0.100589, -0.984973,
		0.795002, -0.604409, 0.051589,
		-0.590137, -0.790298, -0.164822,
		35.965916, 31.951651, 40.999199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.745918, 32.076447, 40.669437>,  <36.379009, 32.504860, 41.114574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.745918, 32.076447, 40.669437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.374420, 31.940231, 40.610817>,  <36.151524, 31.858503, 40.575645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.374420, 31.940231, 40.610817>,  <36.745918, 32.076447, 40.669437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.374420, 31.940231, 40.610817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119034, 0.100451, -0.987796,
		0.351100, -0.934851, -0.052757,
		-0.928741, -0.340535, -0.146547,
		36.095798, 31.838072, 40.566853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.792835, 31.624033, 40.098717>,  <36.745918, 32.076447, 40.669437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.792835, 31.624033, 40.098717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.412674, 31.742687, 40.136105>,  <36.184578, 31.813881, 40.158535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.412674, 31.742687, 40.136105>,  <36.792835, 31.624033, 40.098717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.412674, 31.742687, 40.136105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001964, 0.294792, -0.955559,
		-0.311008, -0.908352, -0.279589,
		-0.950405, 0.296638, 0.093467,
		36.127552, 31.831678, 40.164146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.294621, 31.228148, 39.600132>,  <36.792835, 31.624033, 40.098717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.294621, 31.228148, 39.600132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.079563, 31.553015, 39.690750>,  <35.950531, 31.747936, 39.745121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.079563, 31.553015, 39.690750>,  <36.294621, 31.228148, 39.600132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.079563, 31.553015, 39.690750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176606, 0.154252, -0.972120,
		-0.824471, -0.562661, 0.060502,
		-0.537641, 0.812169, 0.226546,
		35.918270, 31.796665, 39.758713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.702698, 31.121983, 39.120613>,  <36.294621, 31.228148, 39.600132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.702698, 31.121983, 39.120613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.679443, 31.504309, 39.235878>,  <35.665489, 31.733704, 39.305038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.679443, 31.504309, 39.235878>,  <35.702698, 31.121983, 39.120613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.679443, 31.504309, 39.235878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166270, 0.275352, -0.946856,
		-0.984365, -0.102961, 0.142915,
		-0.058137, 0.955814, 0.288166,
		35.662003, 31.791054, 39.322327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.071789, 31.400654, 38.782707>,  <35.702698, 31.121983, 39.120613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.071789, 31.400654, 38.782707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.319271, 31.701948, 38.872009>,  <35.467758, 31.882725, 38.925591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.319271, 31.701948, 38.872009>,  <35.071789, 31.400654, 38.782707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.319271, 31.701948, 38.872009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127832, 0.376906, -0.917388,
		-0.775156, 0.539051, 0.329481,
		0.618702, 0.753237, 0.223253,
		35.504883, 31.927919, 38.938984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.800735, 31.937910, 38.393005>,  <35.071789, 31.400654, 38.782707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.800735, 31.937910, 38.393005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.174427, 32.056629, 38.472122>,  <35.398643, 32.127861, 38.519592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.174427, 32.056629, 38.472122>,  <34.800735, 31.937910, 38.393005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.174427, 32.056629, 38.472122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077073, 0.373467, -0.924436,
		-0.348239, 0.878882, 0.326030,
		0.934232, 0.296797, 0.197794,
		35.454697, 32.145668, 38.531460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.769623, 32.683468, 38.234470>,  <34.800735, 31.937910, 38.393005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.769623, 32.683468, 38.234470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.159237, 32.592991, 38.238327>,  <35.393005, 32.538704, 38.240643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.159237, 32.592991, 38.238327>,  <34.769623, 32.683468, 38.234470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.159237, 32.592991, 38.238327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136761, 0.553912, -0.821266,
		0.180427, 0.801260, 0.570464,
		0.974034, -0.226196, 0.009641,
		35.451447, 32.525131, 38.241219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.117821, 33.298069, 37.956345>,  <34.769623, 32.683468, 38.234470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.117821, 33.298069, 37.956345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.378937, 32.997559, 37.917439>,  <35.535606, 32.817253, 37.894096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.378937, 32.997559, 37.917439>,  <35.117821, 33.298069, 37.956345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.378937, 32.997559, 37.917439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407117, 0.456189, -0.791295,
		0.638847, 0.476949, 0.603650,
		0.652786, -0.751273, -0.097261,
		35.574772, 32.772175, 37.888260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.816998, 33.662411, 37.893948>,  <35.117821, 33.298069, 37.956345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.816998, 33.662411, 37.893948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.812813, 33.302025, 37.720440>,  <35.810303, 33.085793, 37.616337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.812813, 33.302025, 37.720440>,  <35.816998, 33.662411, 37.893948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.812813, 33.302025, 37.720440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146105, 0.427761, -0.892006,
		0.989214, -0.072708, 0.127160,
		-0.010461, -0.900963, -0.433770,
		35.809673, 33.031734, 37.590309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.198692, 33.371437, 38.414520>,  <35.816998, 33.662411, 37.893948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.198692, 33.371437, 38.414520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.149254, 33.094959, 38.129711>,  <36.119591, 32.929073, 37.958824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.149254, 33.094959, 38.129711>,  <36.198692, 33.371437, 38.414520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.149254, 33.094959, 38.129711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289980, -0.711362, 0.640215,
		-0.949018, -0.127343, 0.288356,
		-0.123599, -0.691193, -0.712023,
		36.112175, 32.887600, 37.916103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.892906, 33.223484, 38.612083>,  <36.198692, 33.371437, 38.414520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.892906, 33.223484, 38.612083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.144981, 33.438084, 38.387573>,  <37.296227, 33.566841, 38.252865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.144981, 33.438084, 38.387573>,  <36.892906, 33.223484, 38.612083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.144981, 33.438084, 38.387573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431043, 0.359526, 0.827613,
		0.645807, -0.763487, -0.004685,
		0.630187, 0.536497, -0.561280,
		37.334038, 33.599033, 38.219189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.554672, 33.043747, 38.811569>,  <36.892906, 33.223484, 38.612083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.554672, 33.043747, 38.811569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.601757, 33.402107, 38.640221>,  <37.630009, 33.617123, 38.537411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.601757, 33.402107, 38.640221>,  <37.554672, 33.043747, 38.811569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.601757, 33.402107, 38.640221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212492, 0.398657, 0.892143,
		0.970047, -0.196042, -0.143445,
		0.117712, 0.895902, -0.428374,
		37.637070, 33.670879, 38.511707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.318737, 33.326729, 38.872757>,  <37.554672, 33.043747, 38.811569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.318737, 33.326729, 38.872757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.061935, 33.628540, 38.818317>,  <37.907856, 33.809628, 38.785656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.061935, 33.628540, 38.818317>,  <38.318737, 33.326729, 38.872757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.061935, 33.628540, 38.818317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305268, 0.414392, 0.857374,
		0.703309, 0.508891, -0.496374,
		-0.642003, 0.754526, -0.136097,
		37.869335, 33.854897, 38.777489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.783096, 33.789490, 38.974163>,  <38.318737, 33.326729, 38.872757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.783096, 33.789490, 38.974163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.401981, 33.905094, 39.011425>,  <38.173313, 33.974457, 39.033783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.401981, 33.905094, 39.011425>,  <38.783096, 33.789490, 38.974163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.401981, 33.905094, 39.011425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184085, 0.305791, 0.934133,
		0.241487, 0.907175, -0.344555,
		-0.952784, 0.289008, 0.093153,
		38.116146, 33.991798, 39.039371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.819344, 34.396465, 39.269951>,  <38.783096, 33.789490, 38.974163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.819344, 34.396465, 39.269951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.436031, 34.307178, 39.341370>,  <38.206043, 34.253605, 39.384220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.436031, 34.307178, 39.341370>,  <38.819344, 34.396465, 39.269951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.436031, 34.307178, 39.341370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102970, 0.313131, 0.944111,
		-0.266654, 0.923104, -0.277081,
		-0.958276, -0.223219, 0.178550,
		38.148548, 34.240211, 39.394936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.531414, 34.915398, 39.622841>,  <38.819344, 34.396465, 39.269951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.531414, 34.915398, 39.622841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.268776, 34.628849, 39.717247>,  <38.111195, 34.456921, 39.773891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.268776, 34.628849, 39.717247>,  <38.531414, 34.915398, 39.622841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.268776, 34.628849, 39.717247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017410, 0.298438, 0.954270,
		-0.754044, 0.630676, -0.183480,
		-0.656593, -0.716367, 0.236016,
		38.071796, 34.413940, 39.788052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.185135, 35.170773, 40.233837>,  <38.531414, 34.915398, 39.622841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.185135, 35.170773, 40.233837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.064735, 34.789623, 40.218681>,  <37.992496, 34.560936, 40.209587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.064735, 34.789623, 40.218681>,  <38.185135, 35.170773, 40.233837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.064735, 34.789623, 40.218681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313645, 0.061395, 0.947553,
		-0.900569, 0.297101, -0.317343,
		-0.301002, -0.952870, -0.037893,
		37.974434, 34.503761, 40.207314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.554943, 35.145378, 40.593098>,  <38.185135, 35.170773, 40.233837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.554943, 35.145378, 40.593098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.677624, 34.764889, 40.579769>,  <37.751232, 34.536594, 40.571774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.677624, 34.764889, 40.579769>,  <37.554943, 35.145378, 40.593098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.677624, 34.764889, 40.579769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201276, -0.099036, 0.974515,
		-0.930280, -0.292181, -0.221833,
		0.306704, -0.951221, -0.033322,
		37.769634, 34.479523, 40.569771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.046513, 34.737419, 40.957512>,  <37.554943, 35.145378, 40.593098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.046513, 34.737419, 40.957512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.386768, 34.528595, 40.982376>,  <37.590923, 34.403301, 40.997295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.386768, 34.528595, 40.982376>,  <37.046513, 34.737419, 40.957512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.386768, 34.528595, 40.982376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165817, -0.154212, 0.974024,
		-0.498917, -0.838849, -0.217746,
		0.850639, -0.522064, 0.062156,
		37.641960, 34.371975, 41.001022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.879372, 34.113297, 41.254601>,  <37.046513, 34.737419, 40.957512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.879372, 34.113297, 41.254601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.259388, 34.204376, 41.339996>,  <37.487396, 34.259026, 41.391235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.259388, 34.204376, 41.339996>,  <36.879372, 34.113297, 41.254601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.259388, 34.204376, 41.339996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204468, -0.062791, 0.976857,
		0.235834, -0.971705, -0.013097,
		0.950039, 0.227698, 0.213490,
		37.544399, 34.272686, 41.404045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.894123, 33.753216, 41.901978>,  <36.879372, 34.113297, 41.254601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.894123, 33.753216, 41.901978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.234859, 33.961426, 41.878593>,  <37.439301, 34.086353, 41.864563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.234859, 33.961426, 41.878593>,  <36.894123, 33.753216, 41.901978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.234859, 33.961426, 41.878593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140584, -0.119682, 0.982808,
		0.504581, -0.845416, -0.175128,
		0.851842, 0.520527, -0.058463,
		37.490414, 34.117584, 41.861053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.291664, 33.409187, 42.287586>,  <36.894123, 33.753216, 41.901978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.291664, 33.409187, 42.287586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.471218, 33.766499, 42.278069>,  <37.578949, 33.980885, 42.272358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.471218, 33.766499, 42.278069>,  <37.291664, 33.409187, 42.287586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.471218, 33.766499, 42.278069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075856, -0.011564, 0.997052,
		0.890365, -0.449364, -0.072951,
		0.448882, 0.893274, -0.023791,
		37.605885, 34.034481, 42.270931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.951752, 33.359833, 42.708767>,  <37.291664, 33.409187, 42.287586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.951752, 33.359833, 42.708767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.834446, 33.740612, 42.673473>,  <37.764065, 33.969082, 42.652298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.834446, 33.740612, 42.673473>,  <37.951752, 33.359833, 42.708767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.834446, 33.740612, 42.673473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167699, 0.142081, 0.975546,
		0.941209, 0.271293, -0.201308,
		-0.293261, 0.951952, -0.088232,
		37.746468, 34.026199, 42.647003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.440968, 33.749912, 43.108917>,  <37.951752, 33.359833, 42.708767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.440968, 33.749912, 43.108917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.138130, 34.009449, 43.078415>,  <37.956429, 34.165173, 43.060112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.138130, 34.009449, 43.078415>,  <38.440968, 33.749912, 43.108917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.138130, 34.009449, 43.078415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022415, 0.142455, 0.989547,
		0.652927, 0.747466, -0.122395,
		-0.757089, 0.648846, -0.076258,
		37.911003, 34.204102, 43.055538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.603279, 34.326862, 43.577488>,  <38.440968, 33.749912, 43.108917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.603279, 34.326862, 43.577488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.211990, 34.368145, 43.505447>,  <37.977219, 34.392914, 43.462223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.211990, 34.368145, 43.505447>,  <38.603279, 34.326862, 43.577488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.211990, 34.368145, 43.505447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150360, 0.245886, 0.957566,
		0.143116, 0.963788, -0.225012,
		-0.978218, 0.103210, -0.180105,
		37.918526, 34.399109, 43.451416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.376839, 34.729073, 44.029350>,  <38.603279, 34.326862, 43.577488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.376839, 34.729073, 44.029350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.025848, 34.562752, 43.933727>,  <37.815254, 34.462959, 43.876354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.025848, 34.562752, 43.933727>,  <38.376839, 34.729073, 44.029350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.025848, 34.562752, 43.933727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274123, 0.025779, 0.961349,
		-0.393571, 0.909089, -0.136602,
		-0.877473, -0.415805, -0.239057,
		37.762608, 34.438011, 43.862011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.904484, 35.077805, 44.423630>,  <38.376839, 34.729073, 44.029350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.904484, 35.077805, 44.423630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.741562, 34.728645, 44.316185>,  <37.643810, 34.519150, 44.251717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.741562, 34.728645, 44.316185>,  <37.904484, 35.077805, 44.423630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.741562, 34.728645, 44.316185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152563, -0.224954, 0.962351,
		-0.900460, 0.432950, -0.041547,
		-0.407303, -0.872898, -0.268614,
		37.619370, 34.466778, 44.235600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.220272, 35.082470, 44.704918>,  <37.904484, 35.077805, 44.423630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.220272, 35.082470, 44.704918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.274727, 34.692673, 44.633545>,  <37.307400, 34.458794, 44.590721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.274727, 34.692673, 44.633545>,  <37.220272, 35.082470, 44.704918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.274727, 34.692673, 44.633545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135731, -0.196757, 0.971012,
		-0.981348, -0.107970, -0.159054,
		0.136136, -0.974489, -0.178433,
		37.315567, 34.400326, 44.580013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.725834, 34.652950, 45.046558>,  <37.220272, 35.082470, 44.704918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.725834, 34.652950, 45.046558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.023251, 34.392876, 44.984077>,  <37.201702, 34.236832, 44.946590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.023251, 34.392876, 44.984077>,  <36.725834, 34.652950, 45.046558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.023251, 34.392876, 44.984077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049207, -0.286160, 0.956918,
		-0.666874, -0.703825, -0.244766,
		0.743544, -0.650187, -0.156200,
		37.246315, 34.197819, 44.937218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.483219, 34.006626, 45.356575>,  <36.725834, 34.652950, 45.046558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.483219, 34.006626, 45.356575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.878273, 33.952957, 45.324150>,  <37.115307, 33.920753, 45.304695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.878273, 33.952957, 45.324150>,  <36.483219, 34.006626, 45.356575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.878273, 33.952957, 45.324150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007071, -0.478449, 0.878087,
		-0.156599, -0.867804, -0.471585,
		0.987637, -0.134173, -0.081061,
		37.174564, 33.912704, 45.299831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.618942, 33.404675, 45.661098>,  <36.483219, 34.006626, 45.356575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.618942, 33.404675, 45.661098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.983414, 33.569439, 45.657509>,  <37.202095, 33.668297, 45.655357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.983414, 33.569439, 45.657509>,  <36.618942, 33.404675, 45.661098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.983414, 33.569439, 45.657509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175259, -0.367799, 0.913241,
		0.372875, -0.833698, -0.407322,
		0.911180, 0.411912, -0.008970,
		37.256767, 33.693012, 45.654819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.176838, 32.957111, 45.781921>,  <36.618942, 33.404675, 45.661098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.176838, 32.957111, 45.781921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.360168, 33.299210, 45.878662>,  <37.470165, 33.504467, 45.936707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.360168, 33.299210, 45.878662>,  <37.176838, 32.957111, 45.781921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.360168, 33.299210, 45.878662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267425, -0.392206, 0.880147,
		0.847598, -0.338717, -0.408472,
		0.458326, 0.855246, 0.241851,
		37.497665, 33.555782, 45.951218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.636501, 32.779991, 46.232506>,  <37.176838, 32.957111, 45.781921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.636501, 32.779991, 46.232506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.609573, 33.173882, 46.296734>,  <37.593418, 33.410217, 46.335270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.609573, 33.173882, 46.296734>,  <37.636501, 32.779991, 46.232506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.609573, 33.173882, 46.296734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027816, -0.159018, 0.986884,
		0.997344, 0.070901, -0.016687,
		-0.067318, 0.984727, 0.160568,
		37.589378, 33.469299, 46.344906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.069965, 32.902447, 46.747211>,  <37.636501, 32.779991, 46.232506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.069965, 32.902447, 46.747211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.807774, 33.204464, 46.740833>,  <37.650459, 33.385674, 46.737007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.807774, 33.204464, 46.740833>,  <38.069965, 32.902447, 46.747211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.807774, 33.204464, 46.740833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044652, -0.017664, 0.998846,
		0.753892, 0.655436, 0.045293,
		-0.655480, 0.755044, -0.015949,
		37.611130, 33.430977, 46.736050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.232681, 33.370243, 47.340324>,  <38.069965, 32.902447, 46.747211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.232681, 33.370243, 47.340324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.852497, 33.445454, 47.241314>,  <37.624386, 33.490578, 47.181908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.852497, 33.445454, 47.241314>,  <38.232681, 33.370243, 47.340324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.852497, 33.445454, 47.241314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240384, 0.060264, 0.968805,
		0.197074, 0.980314, -0.012081,
		-0.950462, 0.188023, -0.247528,
		37.567360, 33.501862, 47.167057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.028843, 33.915127, 47.811020>,  <38.232681, 33.370243, 47.340324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.028843, 33.915127, 47.811020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.698071, 33.764439, 47.644039>,  <37.499607, 33.674026, 47.543850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.698071, 33.764439, 47.644039>,  <38.028843, 33.915127, 47.811020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.698071, 33.764439, 47.644039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512775, 0.200563, 0.834767,
		-0.230750, 0.904353, -0.359026,
		-0.826932, -0.376722, -0.417450,
		37.449989, 33.651421, 47.518803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.584942, 34.414513, 47.979973>,  <38.028843, 33.915127, 47.811020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.584942, 34.414513, 47.979973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.386814, 34.076962, 47.897484>,  <37.267937, 33.874432, 47.847992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.386814, 34.076962, 47.897484>,  <37.584942, 34.414513, 47.979973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.386814, 34.076962, 47.897484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604845, 0.164614, 0.779143,
		-0.623555, 0.510657, -0.591953,
		-0.495319, -0.843879, -0.206222,
		37.238220, 33.823799, 47.835617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.916447, 34.555042, 48.204884>,  <37.584942, 34.414513, 47.979973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.916447, 34.555042, 48.204884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.882904, 34.158241, 48.167164>,  <36.862778, 33.920158, 48.144531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.882904, 34.158241, 48.167164>,  <36.916447, 34.555042, 48.204884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.882904, 34.158241, 48.167164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608651, -0.023938, 0.793077,
		-0.788995, 0.123895, -0.601779,
		-0.083853, -0.992007, -0.094295,
		36.857750, 33.860638, 48.138874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.142773, 34.404541, 48.216213>,  <36.916447, 34.555042, 48.204884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.142773, 34.404541, 48.216213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.352573, 34.080692, 48.321594>,  <36.478455, 33.886383, 48.384823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.352573, 34.080692, 48.321594>,  <36.142773, 34.404541, 48.216213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.352573, 34.080692, 48.321594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576188, -0.109726, 0.809918,
		-0.626821, -0.576603, -0.524047,
		0.524503, -0.809623, 0.263453,
		36.509926, 33.837807, 48.400631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.686855, 33.914761, 48.409084>,  <36.142773, 34.404541, 48.216213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.686855, 33.914761, 48.409084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.027588, 33.809845, 48.590454>,  <36.232025, 33.746895, 48.699276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.027588, 33.809845, 48.590454>,  <35.686855, 33.914761, 48.409084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.027588, 33.809845, 48.590454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485403, -0.069876, 0.871493,
		-0.196902, -0.962455, -0.186840,
		0.851829, -0.262292, 0.453420,
		36.283138, 33.731159, 48.726479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.487335, 33.407021, 48.952225>,  <35.686855, 33.914761, 48.409084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.487335, 33.407021, 48.952225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.842873, 33.562500, 49.049286>,  <36.056194, 33.655788, 49.107521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.842873, 33.562500, 49.049286>,  <35.487335, 33.407021, 48.952225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.842873, 33.562500, 49.049286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316852, 0.138827, 0.938260,
		0.331012, -0.910847, 0.246554,
		0.888840, 0.388696, 0.242650,
		36.109524, 33.679108, 49.122082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.621006, 33.327793, 49.671181>,  <35.487335, 33.407021, 48.952225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.621006, 33.327793, 49.671181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.904011, 33.610416, 49.665344>,  <36.073814, 33.779991, 49.661842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.904011, 33.610416, 49.665344>,  <35.621006, 33.327793, 49.671181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.904011, 33.610416, 49.665344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289593, 0.308697, 0.906003,
		0.644646, -0.636778, 0.423019,
		0.707508, 0.706554, -0.014594,
		36.116264, 33.822384, 49.660965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.955528, 33.383816, 50.343925>,  <35.621006, 33.327793, 49.671181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.955528, 33.383816, 50.343925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.042301, 33.734535, 50.172272>,  <36.094364, 33.944969, 50.069279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.042301, 33.734535, 50.172272>,  <35.955528, 33.383816, 50.343925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.042301, 33.734535, 50.172272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281639, 0.477125, 0.832485,
		0.934676, -0.059735, 0.350447,
		0.216936, 0.876803, -0.429134,
		36.107384, 33.997578, 50.043533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.330746, 33.793549, 50.862804>,  <35.955528, 33.383816, 50.343925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.330746, 33.793549, 50.862804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.142288, 34.023903, 50.595558>,  <36.029213, 34.162113, 50.435211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.142288, 34.023903, 50.595558>,  <36.330746, 33.793549, 50.862804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.142288, 34.023903, 50.595558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288095, 0.615447, 0.733639,
		0.833683, 0.538130, -0.124054,
		-0.471141, 0.575883, -0.668120,
		36.000946, 34.196667, 50.395123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.428551, 34.408508, 51.123299>,  <36.330746, 33.793549, 50.862804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.428551, 34.408508, 51.123299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.151775, 34.539803, 50.866089>,  <35.985710, 34.618580, 50.711765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.151775, 34.539803, 50.866089>,  <36.428551, 34.408508, 51.123299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.151775, 34.539803, 50.866089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402683, 0.563781, 0.721108,
		0.599217, 0.757899, -0.257929,
		-0.691943, 0.328237, -0.643020,
		35.944191, 34.638275, 50.673183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.469704, 35.079662, 51.301636>,  <36.428551, 34.408508, 51.123299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.469704, 35.079662, 51.301636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.129128, 35.003731, 51.106083>,  <35.924782, 34.958172, 50.988750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.129128, 35.003731, 51.106083>,  <36.469704, 35.079662, 51.301636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.129128, 35.003731, 51.106083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498399, 0.583003, 0.641643,
		0.163217, 0.789982, -0.591006,
		-0.851445, -0.189829, -0.488882,
		35.873695, 34.946781, 50.959419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.193581, 35.760437, 51.108173>,  <36.469704, 35.079662, 51.301636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.193581, 35.760437, 51.108173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.902546, 35.486034, 51.109489>,  <35.727924, 35.321392, 51.110279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.902546, 35.486034, 51.109489>,  <36.193581, 35.760437, 51.108173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.902546, 35.486034, 51.109489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569517, 0.606700, 0.554586,
		-0.382442, 0.401640, -0.832120,
		-0.727591, -0.686004, 0.003287,
		35.684269, 35.280231, 51.110474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.600922, 36.196980, 50.997242>,  <36.193581, 35.760437, 51.108173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.600922, 36.196980, 50.997242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.458820, 35.853439, 51.144848>,  <35.373558, 35.647316, 51.233414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.458820, 35.853439, 51.144848>,  <35.600922, 36.196980, 50.997242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.458820, 35.853439, 51.144848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583470, 0.512159, 0.630282,
		-0.730311, 0.008601, -0.683060,
		-0.355257, -0.858847, 0.369017,
		35.352242, 35.595783, 51.255554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.423664, 36.648014, 51.631668>,  <35.600922, 36.196980, 50.997242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.423664, 36.648014, 51.631668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.620518, 36.946072, 51.811695>,  <35.738628, 37.124908, 51.919712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.620518, 36.946072, 51.811695>,  <35.423664, 36.648014, 51.631668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.620518, 36.946072, 51.811695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533635, 0.150244, -0.832262,
		-0.687776, 0.649758, -0.323696,
		0.492135, 0.745146, 0.450068,
		35.768158, 37.169617, 51.946716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.467556, 37.171085, 51.176300>,  <35.423664, 36.648014, 51.631668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.467556, 37.171085, 51.176300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.743668, 37.261211, 51.451324>,  <35.909336, 37.315285, 51.616341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.743668, 37.261211, 51.451324>,  <35.467556, 37.171085, 51.176300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.743668, 37.261211, 51.451324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668093, 0.166348, -0.725245,
		-0.277780, 0.959981, -0.035701,
		0.690283, 0.225310, 0.687565,
		35.950752, 37.328804, 51.657593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.799202, 37.734024, 50.850601>,  <35.467556, 37.171085, 51.176300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.799202, 37.734024, 50.850601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.056221, 37.619225, 51.134785>,  <36.210434, 37.550343, 51.305294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.056221, 37.619225, 51.134785>,  <35.799202, 37.734024, 50.850601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.056221, 37.619225, 51.134785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765807, 0.209284, -0.608062,
		0.025825, 0.934789, 0.354263,
		0.642552, -0.287001, 0.710463,
		36.248985, 37.533123, 51.347923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.419621, 38.161751, 50.587582>,  <35.799202, 37.734024, 50.850601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.419621, 38.161751, 50.587582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.530209, 37.870991, 50.839035>,  <36.596561, 37.696537, 50.989906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.530209, 37.870991, 50.839035>,  <36.419621, 38.161751, 50.587582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.530209, 37.870991, 50.839035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805696, -0.181248, -0.563918,
		0.523849, 0.662398, 0.535548,
		0.276471, -0.726896, 0.628638,
		36.613152, 37.652924, 51.027626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.082680, 38.228069, 50.715858>,  <36.419621, 38.161751, 50.587582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.082680, 38.228069, 50.715858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.006489, 37.839840, 50.774788>,  <36.960773, 37.606903, 50.810146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.006489, 37.839840, 50.774788>,  <37.082680, 38.228069, 50.715858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.006489, 37.839840, 50.774788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756140, -0.240763, -0.608511,
		0.626076, -0.004506, 0.779749,
		-0.190477, -0.970573, 0.147328,
		36.949345, 37.548668, 50.818985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.730560, 37.873718, 50.633362>,  <37.082680, 38.228069, 50.715858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.730560, 37.873718, 50.633362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.473064, 37.568935, 50.605003>,  <37.318565, 37.386066, 50.587990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.473064, 37.568935, 50.605003>,  <37.730560, 37.873718, 50.633362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.473064, 37.568935, 50.605003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542951, -0.389491, -0.743976,
		0.539262, -0.517419, 0.664434,
		-0.643739, -0.761954, -0.070896,
		37.279942, 37.340347, 50.583736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.066269, 37.243706, 50.505619>,  <37.730560, 37.873718, 50.633362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.066269, 37.243706, 50.505619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.702076, 37.186970, 50.350227>,  <37.483562, 37.152927, 50.256992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.702076, 37.186970, 50.350227>,  <38.066269, 37.243706, 50.505619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.702076, 37.186970, 50.350227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411534, -0.217920, -0.884958,
		0.040863, -0.965605, 0.256782,
		-0.910478, -0.141836, -0.388475,
		37.428932, 37.144421, 50.233685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.187222, 36.693455, 50.173481>,  <38.066269, 37.243706, 50.505619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.187222, 36.693455, 50.173481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.827114, 36.808323, 50.042610>,  <37.611050, 36.877243, 49.964088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.827114, 36.808323, 50.042610>,  <38.187222, 36.693455, 50.173481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.827114, 36.808323, 50.042610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223004, -0.341236, -0.913141,
		-0.373868, -0.895038, 0.243167,
		-0.900273, 0.287168, -0.327174,
		37.557034, 36.894474, 49.944458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.846355, 36.112534, 50.011436>,  <38.187222, 36.693455, 50.173481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.846355, 36.112534, 50.011436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.695301, 36.416656, 49.800034>,  <37.604668, 36.599129, 49.673191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.695301, 36.416656, 49.800034>,  <37.846355, 36.112534, 50.011436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.695301, 36.416656, 49.800034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098639, -0.534493, -0.839397,
		-0.920685, -0.369118, 0.126848,
		-0.377636, 0.760308, -0.528510,
		37.582008, 36.644749, 49.641479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.505795, 35.759670, 49.562546>,  <37.846355, 36.112534, 50.011436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.505795, 35.759670, 49.562546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.525547, 36.131523, 49.416477>,  <37.537399, 36.354633, 49.328835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.525547, 36.131523, 49.416477>,  <37.505795, 35.759670, 49.562546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.525547, 36.131523, 49.416477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206800, -0.367215, -0.906856,
		-0.977136, -0.030737, -0.210380,
		0.049380, 0.929628, -0.365175,
		37.540359, 36.410412, 49.306923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.267418, 35.712811, 48.876400>,  <37.505795, 35.759670, 49.562546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.267418, 35.712811, 48.876400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.469261, 36.057747, 48.893051>,  <37.590366, 36.264709, 48.903042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.469261, 36.057747, 48.893051>,  <37.267418, 35.712811, 48.876400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.469261, 36.057747, 48.893051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222780, -0.083477, -0.971288,
		-0.834109, 0.499395, -0.234236,
		0.504610, 0.862343, 0.041626,
		37.620644, 36.316448, 48.905540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.055183, 36.218815, 48.312458>,  <37.267418, 35.712811, 48.876400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.055183, 36.218815, 48.312458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.428139, 36.324860, 48.410744>,  <37.651913, 36.388485, 48.469715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.428139, 36.324860, 48.410744>,  <37.055183, 36.218815, 48.312458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.428139, 36.324860, 48.410744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207734, 0.163300, -0.964458,
		-0.295816, 0.950288, 0.097185,
		0.932384, 0.265113, 0.245714,
		37.707855, 36.404392, 48.484459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.224724, 36.903927, 47.963295>,  <37.055183, 36.218815, 48.312458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.224724, 36.903927, 47.963295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.576263, 36.739555, 48.060261>,  <37.787186, 36.640930, 48.118439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.576263, 36.739555, 48.060261>,  <37.224724, 36.903927, 47.963295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.576263, 36.739555, 48.060261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259696, -0.014208, -0.965586,
		0.400233, 0.911556, 0.094230,
		0.878847, -0.410930, 0.242414,
		37.839916, 36.616276, 48.132984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.762009, 37.227646, 47.627529>,  <37.224724, 36.903927, 47.963295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.762009, 37.227646, 47.627529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.932880, 36.870308, 47.683315>,  <38.035404, 36.655903, 47.716785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.932880, 36.870308, 47.683315>,  <37.762009, 37.227646, 47.627529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.932880, 36.870308, 47.683315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388709, 0.042184, -0.920394,
		0.816349, 0.447382, 0.365272,
		0.427177, -0.893348, 0.139464,
		38.061035, 36.602303, 47.725155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364639, 37.316029, 47.430721>,  <37.762009, 37.227646, 47.627529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.364639, 37.316029, 47.430721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.311657, 36.919636, 47.422543>,  <38.279869, 36.681801, 47.417633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.311657, 36.919636, 47.422543>,  <38.364639, 37.316029, 47.430721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.311657, 36.919636, 47.422543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368992, -0.030149, -0.928943,
		0.919946, -0.130589, 0.369656,
		-0.132454, -0.990978, -0.020450,
		38.271919, 36.622341, 47.416409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.908436, 37.034954, 47.101139>,  <38.364639, 37.316029, 47.430721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.908436, 37.034954, 47.101139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.686611, 36.702660, 47.081768>,  <38.553516, 36.503284, 47.070145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.686611, 36.702660, 47.081768>,  <38.908436, 37.034954, 47.101139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.686611, 36.702660, 47.081768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235887, -0.101123, -0.966505,
		0.798011, -0.547408, 0.252038,
		-0.554560, -0.830734, -0.048430,
		38.520245, 36.453438, 47.067238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.306892, 36.565193, 46.775097>,  <38.908436, 37.034954, 47.101139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.306892, 36.565193, 46.775097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.935688, 36.424519, 46.725925>,  <38.712967, 36.340115, 46.696423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.935688, 36.424519, 46.725925>,  <39.306892, 36.565193, 46.775097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.935688, 36.424519, 46.725925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170052, -0.106276, -0.979688,
		0.331480, -0.930065, 0.158430,
		-0.928010, -0.351689, -0.122931,
		38.657284, 36.319012, 46.689045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.351624, 35.922783, 46.359833>,  <39.306892, 36.565193, 46.775097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.351624, 35.922783, 46.359833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.969273, 36.039463, 46.345886>,  <38.739864, 36.109470, 46.337517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.969273, 36.039463, 46.345886>,  <39.351624, 35.922783, 46.359833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.969273, 36.039463, 46.345886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004980, -0.102572, -0.994713,
		-0.293740, -0.950993, 0.096593,
		-0.955873, 0.291706, -0.034866,
		38.682510, 36.126976, 46.335426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.071056, 35.403786, 45.948601>,  <39.351624, 35.922783, 46.359833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.071056, 35.403786, 45.948601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.812553, 35.708027, 45.923840>,  <38.657452, 35.890572, 45.908981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.812553, 35.708027, 45.923840>,  <39.071056, 35.403786, 45.948601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.812553, 35.708027, 45.923840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069797, -0.021866, -0.997322,
		-0.759919, -0.648849, -0.038957,
		-0.646259, 0.760603, -0.061904,
		38.618675, 35.936207, 45.905270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.535183, 35.222237, 45.496048>,  <39.071056, 35.403786, 45.948601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.535183, 35.222237, 45.496048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.503345, 35.620911, 45.502716>,  <38.484245, 35.860115, 45.506718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.503345, 35.620911, 45.502716>,  <38.535183, 35.222237, 45.496048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.503345, 35.620911, 45.502716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121519, 0.006897, -0.992565,
		-0.989393, -0.081026, 0.120567,
		-0.079592, 0.996688, 0.016670,
		38.479469, 35.919918, 45.507717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.898716, 35.315651, 45.115002>,  <38.535183, 35.222237, 45.496048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.898716, 35.315651, 45.115002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.129063, 35.642662, 45.113316>,  <38.267273, 35.838871, 45.112305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.129063, 35.642662, 45.113316>,  <37.898716, 35.315651, 45.115002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.129063, 35.642662, 45.113316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045796, 0.027116, -0.998583,
		-0.816257, 0.575248, 0.053055,
		0.575871, 0.817530, -0.004211,
		38.301823, 35.887920, 45.112053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.509983, 35.789562, 44.592556>,  <37.898716, 35.315651, 45.115002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.509983, 35.789562, 44.592556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.832443, 36.025440, 44.612083>,  <38.025921, 36.166965, 44.623802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.832443, 36.025440, 44.612083>,  <37.509983, 35.789562, 44.592556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.832443, 36.025440, 44.612083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022070, 0.112418, -0.993416,
		-0.591300, 0.799764, 0.103640,
		0.806149, 0.589694, 0.048822,
		38.074287, 36.202347, 44.626732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.390999, 36.503551, 44.272900>,  <37.509983, 35.789562, 44.592556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.390999, 36.503551, 44.272900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.785023, 36.437584, 44.253021>,  <38.021435, 36.398003, 44.241096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.785023, 36.437584, 44.253021>,  <37.390999, 36.503551, 44.272900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.785023, 36.437584, 44.253021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003407, 0.269805, -0.962909,
		0.172206, 0.948688, 0.265211,
		0.985055, -0.164915, -0.049694,
		38.080540, 36.388111, 44.238113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.608360, 37.015461, 43.772789>,  <37.390999, 36.503551, 44.272900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.608360, 37.015461, 43.772789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.916279, 36.762035, 43.803791>,  <38.101028, 36.609978, 43.822392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.916279, 36.762035, 43.803791>,  <37.608360, 37.015461, 43.772789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.916279, 36.762035, 43.803791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175450, 0.093278, -0.980059,
		0.613705, 0.768043, 0.182965,
		0.769795, -0.633568, 0.077508,
		38.147217, 36.571964, 43.827042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.192795, 37.275723, 43.354076>,  <37.608360, 37.015461, 43.772789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.192795, 37.275723, 43.354076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.301182, 36.893444, 43.400070>,  <38.366215, 36.664078, 43.427666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.301182, 36.893444, 43.400070>,  <38.192795, 37.275723, 43.354076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.301182, 36.893444, 43.400070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468846, 0.026705, -0.882877,
		0.840691, 0.293142, 0.455310,
		0.270967, -0.955696, 0.114987,
		38.382473, 36.606735, 43.434566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893757, 37.276333, 43.149364>,  <38.192795, 37.275723, 43.354076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.893757, 37.276333, 43.149364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.754360, 36.901787, 43.132488>,  <38.670723, 36.677059, 43.122364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.754360, 36.901787, 43.132488>,  <38.893757, 37.276333, 43.149364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.754360, 36.901787, 43.132488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563630, -0.173381, -0.807627,
		0.748918, -0.305226, 0.588183,
		-0.348489, -0.936363, -0.042186,
		38.649815, 36.620876, 43.119831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.452972, 36.722664, 43.123497>,  <38.893757, 37.276333, 43.149364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.452972, 36.722664, 43.123497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.129677, 36.558552, 42.954540>,  <38.935699, 36.460083, 42.853165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.129677, 36.558552, 42.954540>,  <39.452972, 36.722664, 43.123497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.129677, 36.558552, 42.954540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538679, -0.225416, -0.811796,
		0.237853, -0.883660, 0.403201,
		-0.808239, -0.410284, -0.422394,
		38.887203, 36.435467, 42.827824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.684658, 36.090488, 42.937428>,  <39.452972, 36.722664, 43.123497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.684658, 36.090488, 42.937428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.370922, 36.142502, 42.694805>,  <39.182682, 36.173710, 42.549232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.370922, 36.142502, 42.694805>,  <39.684658, 36.090488, 42.937428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.370922, 36.142502, 42.694805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573757, -0.219656, -0.789021,
		-0.235838, -0.966872, 0.097673,
		-0.784336, 0.130041, -0.606553,
		39.135620, 36.181511, 42.512840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.654552, 35.461544, 42.552143>,  <39.684658, 36.090488, 42.937428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.654552, 35.461544, 42.552143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.453037, 35.750660, 42.362926>,  <39.332127, 35.924129, 42.249397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.453037, 35.750660, 42.362926>,  <39.654552, 35.461544, 42.552143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.453037, 35.750660, 42.362926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520291, -0.183245, -0.834098,
		-0.689558, -0.666333, -0.283743,
		-0.503792, 0.722787, -0.473045,
		39.301899, 35.967495, 42.221012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.645283, 35.206055, 41.881836>,  <39.654552, 35.461544, 42.552143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.645283, 35.206055, 41.881836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.511219, 35.573784, 41.799358>,  <39.430779, 35.794422, 41.749870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.511219, 35.573784, 41.799358>,  <39.645283, 35.206055, 41.881836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.511219, 35.573784, 41.799358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420918, -0.049691, -0.905737,
		-0.842908, -0.390359, -0.370304,
		-0.335162, 0.919321, -0.206194,
		39.410671, 35.849579, 41.737499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.451260, 35.101109, 41.145615>,  <39.645283, 35.206055, 41.881836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.451260, 35.101109, 41.145615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.463448, 35.495018, 41.214073>,  <39.470760, 35.731365, 41.255150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.463448, 35.495018, 41.214073>,  <39.451260, 35.101109, 41.145615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.463448, 35.495018, 41.214073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413805, 0.143438, -0.898994,
		-0.909855, 0.098215, -0.403134,
		0.030470, 0.984774, 0.171150,
		39.472588, 35.790451, 41.265419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.270294, 35.449451, 40.547077>,  <39.451260, 35.101109, 41.145615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.270294, 35.449451, 40.547077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.493847, 35.711887, 40.749935>,  <39.627979, 35.869350, 40.871651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.493847, 35.711887, 40.749935>,  <39.270294, 35.449451, 40.547077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.493847, 35.711887, 40.749935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584302, 0.122398, -0.802253,
		-0.588427, 0.744687, -0.314952,
		0.558878, 0.656094, 0.507144,
		39.661510, 35.908714, 40.902077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.270405, 36.026722, 40.112560>,  <39.270294, 35.449451, 40.547077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.270405, 36.026722, 40.112560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.595390, 36.048466, 40.344746>,  <39.790382, 36.061512, 40.484058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.595390, 36.048466, 40.344746>,  <39.270405, 36.026722, 40.112560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.595390, 36.048466, 40.344746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574496, 0.094840, -0.812994,
		-0.099248, 0.994007, 0.045823,
		0.812468, 0.054363, 0.580465,
		39.839130, 36.064774, 40.518887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.616470, 36.631538, 39.876129>,  <39.270405, 36.026722, 40.112560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.616470, 36.631538, 39.876129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.902485, 36.446674, 40.085941>,  <40.074093, 36.335754, 40.211830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.902485, 36.446674, 40.085941>,  <39.616470, 36.631538, 39.876129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.902485, 36.446674, 40.085941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638234, 0.125370, -0.759566,
		0.285282, 0.877889, 0.384611,
		0.715033, -0.462162, 0.524532,
		40.116993, 36.308025, 40.243301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.220863, 37.003315, 39.721794>,  <39.616470, 36.631538, 39.876129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.220863, 37.003315, 39.721794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.367794, 36.665382, 39.877399>,  <40.455952, 36.462624, 39.970760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.367794, 36.665382, 39.877399>,  <40.220863, 37.003315, 39.721794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.367794, 36.665382, 39.877399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718030, -0.008265, -0.695963,
		0.591186, 0.534970, 0.603578,
		0.367331, -0.844830, 0.389011,
		40.477993, 36.411934, 39.994102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.077621, 37.139828, 39.789566>,  <40.220863, 37.003315, 39.721794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.077621, 37.139828, 39.789566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.020592, 36.744972, 39.760658>,  <40.986374, 36.508057, 39.743313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.020592, 36.744972, 39.760658>,  <41.077621, 37.139828, 39.789566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.020592, 36.744972, 39.760658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653514, -0.039042, -0.755907,
		0.743366, -0.155002, 0.650678,
		-0.142571, -0.987142, -0.072273,
		40.977821, 36.448830, 39.738976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.673374, 36.854710, 39.647636>,  <41.077621, 37.139828, 39.789566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.673374, 36.854710, 39.647636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.450485, 36.541386, 39.537415>,  <41.316750, 36.353394, 39.471283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.450485, 36.541386, 39.537415>,  <41.673374, 36.854710, 39.647636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.450485, 36.541386, 39.537415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548488, -0.098065, -0.830388,
		0.623427, -0.613850, 0.484279,
		-0.557224, -0.783308, -0.275553,
		41.283318, 36.306393, 39.454750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.130192, 36.418240, 39.475346>,  <41.673374, 36.854710, 39.647636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.130192, 36.418240, 39.475346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.806873, 36.270741, 39.291748>,  <41.612881, 36.182240, 39.181591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.806873, 36.270741, 39.291748>,  <42.130192, 36.418240, 39.475346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.806873, 36.270741, 39.291748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527623, -0.107710, -0.842622,
		0.261278, -0.923267, 0.281623,
		-0.808300, -0.368749, -0.458995,
		41.564384, 36.160114, 39.154049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.279663, 35.761040, 39.244030>,  <42.130192, 36.418240, 39.475346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.279663, 35.761040, 39.244030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.990685, 35.880203, 38.994450>,  <41.817295, 35.951702, 38.844700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.990685, 35.880203, 38.994450>,  <42.279663, 35.761040, 39.244030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.990685, 35.880203, 38.994450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556271, -0.285524, -0.780409,
		-0.410643, -0.910893, 0.040560,
		-0.722451, 0.297908, -0.623952,
		41.773949, 35.969574, 38.807262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.304642, 35.271950, 38.661495>,  <42.279663, 35.761040, 39.244030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.304642, 35.271950, 38.661495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.112316, 35.604221, 38.549217>,  <41.996922, 35.803585, 38.481850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.112316, 35.604221, 38.549217>,  <42.304642, 35.271950, 38.661495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.112316, 35.604221, 38.549217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596048, 0.074866, -0.799451,
		-0.643073, -0.551694, -0.531122,
		-0.480815, 0.830680, -0.280692,
		41.968071, 35.853424, 38.465008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.062729, 35.270824, 37.912613>,  <42.304642, 35.271950, 38.661495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.062729, 35.270824, 37.912613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.147068, 35.644402, 38.028053>,  <42.197670, 35.868549, 38.097317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.147068, 35.644402, 38.028053>,  <42.062729, 35.270824, 37.912613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.147068, 35.644402, 38.028053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562355, 0.125598, -0.817302,
		-0.799563, 0.334618, -0.498728,
		0.210844, 0.933947, 0.288597,
		42.210320, 35.924587, 38.114632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.018848, 35.828510, 37.347370>,  <42.062729, 35.270824, 37.912613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.018848, 35.828510, 37.347370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.300983, 35.929329, 37.612392>,  <42.470264, 35.989819, 37.771404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.300983, 35.929329, 37.612392>,  <42.018848, 35.828510, 37.347370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.300983, 35.929329, 37.612392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689187, -0.025089, -0.724149,
		-0.165894, 0.967391, -0.191401,
		0.705337, 0.252043, 0.662551,
		42.512585, 36.004940, 37.811157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.319553, 36.441925, 37.223465>,  <42.018848, 35.828510, 37.347370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.319553, 36.441925, 37.223465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.610619, 36.245464, 37.414997>,  <42.785255, 36.127590, 37.529919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.610619, 36.245464, 37.414997>,  <42.319553, 36.441925, 37.223465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.610619, 36.245464, 37.414997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595806, 0.106657, -0.796015,
		0.339891, 0.864521, 0.370240,
		0.727660, -0.491150, 0.478835,
		42.828918, 36.098118, 37.558647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.934952, 36.893158, 37.239059>,  <42.319553, 36.441925, 37.223465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.934952, 36.893158, 37.239059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.956539, 36.494469, 37.214951>,  <42.969490, 36.255257, 37.200485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.956539, 36.494469, 37.214951>,  <42.934952, 36.893158, 37.239059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.956539, 36.494469, 37.214951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729216, 0.080577, -0.679523,
		0.682152, -0.007279, 0.731174,
		0.053969, -0.996722, -0.060274,
		42.972729, 36.195454, 37.196869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.627018, 36.652275, 37.476082>,  <42.934952, 36.893158, 37.239059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.627018, 36.652275, 37.476082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.414978, 36.450947, 37.203121>,  <43.287754, 36.330151, 37.039345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.414978, 36.450947, 37.203121>,  <43.627018, 36.652275, 37.476082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.414978, 36.450947, 37.203121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720050, 0.157812, -0.675739,
		0.447803, -0.849568, 0.278759,
		-0.530095, -0.503318, -0.682400,
		43.255951, 36.299950, 36.998402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.046043, 36.025928, 37.379223>,  <43.627018, 36.652275, 37.476082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.046043, 36.025928, 37.379223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.858700, 36.223480, 37.086178>,  <43.746292, 36.342010, 36.910351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.858700, 36.223480, 37.086178>,  <44.046043, 36.025928, 37.379223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.858700, 36.223480, 37.086178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875527, 0.148036, -0.459932,
		-0.118699, -0.856836, -0.501740,
		-0.468362, 0.493880, -0.732611,
		43.718193, 36.371643, 36.866394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.550804, 35.740803, 37.043690>,  <44.046043, 36.025928, 37.379223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.550804, 35.740803, 37.043690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.643764, 35.690983, 36.657845>,  <44.699539, 35.661091, 36.426338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.643764, 35.690983, 36.657845>,  <44.550804, 35.740803, 37.043690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.643764, 35.690983, 36.657845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843738, 0.467543, -0.263649,
		0.483835, 0.875152, 0.003569,
		0.232402, -0.124552, -0.964612,
		44.713486, 35.653618, 36.368462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.262955, 36.328693, 36.694370>,  <44.550804, 35.740803, 37.043690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.262955, 36.328693, 36.694370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.308289, 36.048702, 36.412323>,  <44.335487, 35.880707, 36.243095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.308289, 36.048702, 36.412323>,  <44.262955, 36.328693, 36.694370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.308289, 36.048702, 36.412323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870330, 0.272385, -0.410282,
		0.479251, 0.660184, -0.578338,
		0.113331, -0.699973, -0.705119,
		44.342289, 35.838711, 36.200787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.239033, 36.751488, 36.087460>,  <44.262955, 36.328693, 36.694370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.239033, 36.751488, 36.087460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.167362, 36.380695, 35.955643>,  <44.124359, 36.158218, 35.876553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.167362, 36.380695, 35.955643>,  <44.239033, 36.751488, 36.087460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.167362, 36.380695, 35.955643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821300, 0.325351, -0.468630,
		0.541629, 0.186685, -0.819626,
		-0.179180, -0.926982, -0.329544,
		44.113609, 36.102600, 35.856781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.071289, 36.761658, 35.326004>,  <44.239033, 36.751488, 36.087460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.071289, 36.761658, 35.326004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.879253, 36.431087, 35.443668>,  <43.764030, 36.232746, 35.514267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.879253, 36.431087, 35.443668>,  <44.071289, 36.761658, 35.326004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.879253, 36.431087, 35.443668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862804, 0.384321, -0.328432,
		0.158370, -0.411485, -0.897552,
		-0.480093, -0.826425, 0.294166,
		43.735226, 36.183159, 35.531918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.578651, 36.535900, 34.731407>,  <44.071289, 36.761658, 35.326004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.578651, 36.535900, 34.731407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.467224, 36.276642, 35.014900>,  <43.400368, 36.121086, 35.184998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.467224, 36.276642, 35.014900>,  <43.578651, 36.535900, 34.731407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.467224, 36.276642, 35.014900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933497, 0.009234, -0.358466,
		0.225795, -0.761457, -0.607618,
		-0.278567, -0.648150, 0.708733,
		43.383656, 36.082195, 35.227520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.350258, 35.879356, 34.410534>,  <43.578651, 36.535900, 34.731407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.350258, 35.879356, 34.410534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.176414, 35.967850, 34.759743>,  <43.072109, 36.020947, 34.969269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.176414, 35.967850, 34.759743>,  <43.350258, 35.879356, 34.410534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.176414, 35.967850, 34.759743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883122, 0.085475, -0.461291,
		-0.176673, -0.971469, 0.158225,
		-0.434606, 0.221229, 0.873027,
		43.046032, 36.034218, 35.021652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.627895, 35.814590, 34.272903>,  <43.350258, 35.879356, 34.410534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.627895, 35.814590, 34.272903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.598129, 35.983547, 34.634243>,  <42.580269, 36.084923, 34.851048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.598129, 35.983547, 34.634243>,  <42.627895, 35.814590, 34.272903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.598129, 35.983547, 34.634243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.947946, 0.251285, -0.195586,
		-0.309614, -0.870883, 0.381710,
		-0.074415, 0.422396, 0.903351,
		42.575806, 36.110268, 34.905247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.979549, 35.655846, 34.552788>,  <42.627895, 35.814590, 34.272903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.979549, 35.655846, 34.552788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.061462, 35.980919, 34.771004>,  <42.110611, 36.175964, 34.901932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.061462, 35.980919, 34.771004>,  <41.979549, 35.655846, 34.552788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.061462, 35.980919, 34.771004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.925411, 0.342321, -0.162576,
		-0.318873, -0.471555, 0.822165,
		0.204781, 0.812682, 0.545539,
		42.122898, 36.224724, 34.934666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.588184, 35.623695, 35.147461>,  <41.979549, 35.655846, 34.552788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.588184, 35.623695, 35.147461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.663933, 36.013733, 35.101269>,  <41.709381, 36.247753, 35.073555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.663933, 36.013733, 35.101269>,  <41.588184, 35.623695, 35.147461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.663933, 36.013733, 35.101269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.980156, 0.180705, -0.081479,
		-0.058582, 0.128617, 0.989962,
		0.189371, 0.975091, -0.115479,
		41.720745, 36.306259, 35.066624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.081593, 35.994305, 35.618740>,  <41.588184, 35.623695, 35.147461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.081593, 35.994305, 35.618740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.201683, 36.265980, 35.350838>,  <41.273739, 36.428986, 35.190098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.201683, 36.265980, 35.350838>,  <41.081593, 35.994305, 35.618740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.201683, 36.265980, 35.350838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945749, 0.303367, -0.116305,
		0.124187, 0.668335, 0.733420,
		0.300226, 0.679188, -0.669752,
		41.291752, 36.469738, 35.149914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.665318, 36.512810, 35.765934>,  <41.081593, 35.994305, 35.618740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.665318, 36.512810, 35.765934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.775738, 36.598553, 35.391159>,  <40.841991, 36.649998, 35.166294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.775738, 36.598553, 35.391159>,  <40.665318, 36.512810, 35.765934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.775738, 36.598553, 35.391159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.961033, 0.046815, -0.272440,
		-0.014537, 0.975632, 0.218932,
		0.276050, 0.214361, -0.936934,
		40.858551, 36.662861, 35.110081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.163025, 36.958454, 35.590851>,  <40.665318, 36.512810, 35.765934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.163025, 36.958454, 35.590851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.315430, 36.845730, 35.238621>,  <40.406872, 36.778095, 35.027283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.315430, 36.845730, 35.238621>,  <40.163025, 36.958454, 35.590851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.315430, 36.845730, 35.238621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.920557, -0.027009, -0.389673,
		0.086031, 0.959089, -0.269715,
		0.381016, -0.281812, -0.880573,
		40.429733, 36.761185, 34.974449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732204, 37.237297, 35.188454>,  <40.163025, 36.958454, 35.590851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.732204, 37.237297, 35.188454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.895535, 36.967602, 34.942310>,  <39.993530, 36.805782, 34.794624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.895535, 36.967602, 34.942310>,  <39.732204, 37.237297, 35.188454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.895535, 36.967602, 34.942310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882740, -0.119971, -0.454288,
		0.232474, 0.728700, -0.644167,
		0.408321, -0.674242, -0.615363,
		40.018032, 36.765327, 34.757702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.512749, 37.402840, 34.479271>,  <39.732204, 37.237297, 35.188454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.512749, 37.402840, 34.479271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.591946, 37.011402, 34.501709>,  <39.639462, 36.776539, 34.515171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.591946, 37.011402, 34.501709>,  <39.512749, 37.402840, 34.479271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.591946, 37.011402, 34.501709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771676, -0.190901, -0.606690,
		0.604414, 0.076831, -0.792957,
		0.197989, -0.978598, 0.056094,
		39.651340, 36.717823, 34.518536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.325665, 37.122284, 33.767048>,  <39.512749, 37.402840, 34.479271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.325665, 37.122284, 33.767048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.318962, 36.793182, 33.994312>,  <39.314941, 36.595722, 34.130669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.318962, 36.793182, 33.994312>,  <39.325665, 37.122284, 33.767048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.318962, 36.793182, 33.994312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786612, -0.339929, -0.515450,
		0.617220, -0.455556, -0.641490,
		-0.016755, -0.822750, 0.568157,
		39.313934, 36.546356, 34.164761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.301487, 36.476353, 33.238617>,  <39.325665, 37.122284, 33.767048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.301487, 36.476353, 33.238617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.161667, 36.370708, 33.598183>,  <39.077774, 36.307320, 33.813923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.161667, 36.370708, 33.598183>,  <39.301487, 36.476353, 33.238617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.161667, 36.370708, 33.598183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697454, -0.567284, -0.437889,
		0.625595, -0.780021, 0.014088,
		-0.349554, -0.264115, 0.898919,
		39.056801, 36.291473, 33.867859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.071972, 35.776695, 33.201153>,  <39.301487, 36.476353, 33.238617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.071972, 35.776695, 33.201153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.878864, 35.899178, 33.529339>,  <38.763000, 35.972668, 33.726250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.878864, 35.899178, 33.529339>,  <39.071972, 35.776695, 33.201153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.878864, 35.899178, 33.529339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839400, -0.428906, -0.333837,
		0.249681, -0.849868, 0.464094,
		-0.482770, 0.306207, 0.820469,
		38.734032, 35.991039, 33.775478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.827709, 35.170876, 33.363598>,  <39.071972, 35.776695, 33.201153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.827709, 35.170876, 33.363598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.610058, 35.461170, 33.531994>,  <38.479465, 35.635345, 33.633030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.610058, 35.461170, 33.531994>,  <38.827709, 35.170876, 33.363598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.610058, 35.461170, 33.531994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793692, -0.282594, -0.538696,
		-0.271971, -0.627270, 0.729770,
		-0.544137, 0.725723, 0.421002,
		38.446819, 35.678890, 33.658291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.244576, 34.881615, 33.622059>,  <38.827709, 35.170876, 33.363598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.244576, 34.881615, 33.622059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.164116, 35.269329, 33.565449>,  <38.115841, 35.501957, 33.531483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.164116, 35.269329, 33.565449>,  <38.244576, 34.881615, 33.622059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.164116, 35.269329, 33.565449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747011, -0.245244, -0.617924,
		-0.633651, -0.018575, 0.773396,
		-0.201149, 0.969283, -0.141524,
		38.103771, 35.560116, 33.522991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.524174, 34.887424, 33.718651>,  <38.244576, 34.881615, 33.622059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.524174, 34.887424, 33.718651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.595531, 35.241108, 33.545982>,  <37.638348, 35.453320, 33.442379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.595531, 35.241108, 33.545982>,  <37.524174, 34.887424, 33.718651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.595531, 35.241108, 33.545982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874307, -0.058814, -0.481797,
		-0.451399, 0.463366, 0.762581,
		0.178398, 0.884213, -0.431673,
		37.649052, 35.506371, 33.416481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.861805, 35.263939, 33.673935>,  <37.524174, 34.887424, 33.718651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.861805, 35.263939, 33.673935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.086838, 35.406654, 33.375622>,  <37.221859, 35.492283, 33.196632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.086838, 35.406654, 33.375622>,  <36.861805, 35.263939, 33.673935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.086838, 35.406654, 33.375622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738001, -0.189857, -0.647540,
		-0.372629, 0.914689, 0.156500,
		0.562585, 0.356790, -0.745788,
		37.255611, 35.513691, 33.151886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.510735, 35.839954, 33.344070>,  <36.861805, 35.263939, 33.673935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.510735, 35.839954, 33.344070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.776966, 35.719666, 33.070843>,  <36.936703, 35.647491, 32.906906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.776966, 35.719666, 33.070843>,  <36.510735, 35.839954, 33.344070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.776966, 35.719666, 33.070843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732071, -0.085006, -0.675904,
		0.145192, 0.949917, -0.276724,
		0.665576, -0.300718, -0.683065,
		36.976639, 35.629452, 32.865925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.256054, 36.077499, 32.724098>,  <36.510735, 35.839954, 33.344070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.256054, 36.077499, 32.724098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.468479, 35.756382, 32.615654>,  <36.595936, 35.563713, 32.550587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.468479, 35.756382, 32.615654>,  <36.256054, 36.077499, 32.724098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.468479, 35.756382, 32.615654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585865, -0.116732, -0.801957,
		0.612156, 0.584724, -0.532318,
		0.531063, -0.802790, -0.271111,
		36.627796, 35.515545, 32.534321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.847706, 35.515240, 32.749367>,  <36.256054, 36.077499, 32.724098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.847706, 35.515240, 32.749367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.833542, 35.373356, 32.375645>,  <35.825043, 35.288223, 32.151413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.833542, 35.373356, 32.375645>,  <35.847706, 35.515240, 32.749367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.833542, 35.373356, 32.375645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.954744, 0.288267, -0.073257,
		0.295315, 0.889427, -0.348867,
		-0.035410, -0.354713, -0.934304,
		35.822918, 35.266941, 32.095352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.384499, 34.976463, 32.340168>,  <35.847706, 35.515240, 32.749367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.384499, 34.976463, 32.340168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.108067, 34.742489, 32.509995>,  <35.942207, 34.602104, 32.611893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.108067, 34.742489, 32.509995>,  <36.384499, 34.976463, 32.340168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.108067, 34.742489, 32.509995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131492, -0.475859, -0.869637,
		0.710720, -0.656813, 0.251940,
		-0.691077, -0.584940, 0.424568,
		35.900745, 34.567005, 32.637363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.577908, 34.328403, 32.318905>,  <36.384499, 34.976463, 32.340168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.577908, 34.328403, 32.318905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.184185, 34.367168, 32.259903>,  <35.947952, 34.390427, 32.224503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.184185, 34.367168, 32.259903>,  <36.577908, 34.328403, 32.318905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.184185, 34.367168, 32.259903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103969, -0.356967, -0.928313,
		-0.142620, -0.929076, 0.341288,
		-0.984302, 0.096913, -0.147505,
		35.888893, 34.396244, 32.215652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298374, 33.646770, 32.239620>,  <36.577908, 34.328403, 32.318905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.298374, 33.646770, 32.239620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.122040, 33.942814, 32.036488>,  <36.016239, 34.120441, 31.914608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.122040, 33.942814, 32.036488>,  <36.298374, 33.646770, 32.239620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.122040, 33.942814, 32.036488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306321, -0.407758, -0.860175,
		-0.843699, -0.534760, -0.046956,
		-0.440840, 0.740112, -0.507833,
		35.989788, 34.164848, 31.884138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.193916, 33.367447, 31.595322>,  <36.298374, 33.646770, 32.239620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.193916, 33.367447, 31.595322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.143524, 33.759399, 31.533396>,  <36.113289, 33.994572, 31.496241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.143524, 33.759399, 31.533396>,  <36.193916, 33.367447, 31.595322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.143524, 33.759399, 31.533396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393879, -0.093821, -0.914362,
		-0.910488, -0.176172, -0.374133,
		-0.125984, 0.979878, -0.154813,
		36.105728, 34.053364, 31.486952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.874870, 33.225643, 31.237814>,  <36.193916, 33.367447, 31.595322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.874870, 33.225643, 31.237814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.965919, 33.100407, 30.868998>,  <37.020550, 33.025265, 30.647707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.965919, 33.100407, 30.868998>,  <36.874870, 33.225643, 31.237814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.965919, 33.100407, 30.868998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741056, -0.558565, 0.372613,
		-0.631682, -0.768101, 0.104873,
		0.227626, -0.313090, -0.922042,
		37.034206, 33.006481, 30.592384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.945648, 32.509251, 31.239923>,  <36.874870, 33.225643, 31.237814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.945648, 32.509251, 31.239923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.157154, 32.624153, 30.920452>,  <37.284058, 32.693096, 30.728769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.157154, 32.624153, 30.920452>,  <36.945648, 32.509251, 31.239923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.157154, 32.624153, 30.920452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816406, -0.429491, 0.386028,
		-0.232136, -0.856166, -0.461620,
		0.528766, 0.287258, -0.798679,
		37.315784, 32.710331, 30.680849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.422497, 32.089539, 31.218319>,  <36.945648, 32.509251, 31.239923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.422497, 32.089539, 31.218319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.564102, 32.403595, 31.015055>,  <37.649067, 32.592030, 30.893097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.564102, 32.403595, 31.015055>,  <37.422497, 32.089539, 31.218319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.564102, 32.403595, 31.015055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816050, 0.006112, 0.577950,
		0.456879, -0.619285, -0.638552,
		0.354012, 0.785143, -0.508159,
		37.670307, 32.639137, 30.862606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.178619, 32.161652, 30.835146>,  <37.422497, 32.089539, 31.218319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.178619, 32.161652, 30.835146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.056793, 32.530697, 30.929829>,  <37.983696, 32.752125, 30.986639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.056793, 32.530697, 30.929829>,  <38.178619, 32.161652, 30.835146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.056793, 32.530697, 30.929829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931985, 0.237375, 0.273964,
		0.196572, 0.304050, -0.932155,
		-0.304569, 0.922608, 0.236709,
		37.965424, 32.807480, 31.000841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.502666, 32.879017, 30.555037>,  <38.178619, 32.161652, 30.835146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.502666, 32.879017, 30.555037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.361240, 32.950863, 30.922237>,  <38.276386, 32.993973, 31.142559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.361240, 32.950863, 30.922237>,  <38.502666, 32.879017, 30.555037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.361240, 32.950863, 30.922237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925304, 0.211030, 0.315084,
		-0.137132, 0.960835, -0.240814,
		-0.353563, 0.179619, 0.918004,
		38.255173, 33.004749, 31.197639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.787987, 33.447575, 30.878500>,  <38.502666, 32.879017, 30.555037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.787987, 33.447575, 30.878500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.689796, 33.249390, 31.211788>,  <38.630882, 33.130478, 31.411760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.689796, 33.249390, 31.211788>,  <38.787987, 33.447575, 30.878500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.689796, 33.249390, 31.211788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829231, 0.337876, 0.445214,
		-0.502113, 0.800221, 0.327916,
		-0.245474, -0.495466, 0.833220,
		38.616154, 33.100750, 31.461754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947037, 33.873375, 31.460302>,  <38.787987, 33.447575, 30.878500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.947037, 33.873375, 31.460302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.925076, 33.510391, 31.626921>,  <38.911900, 33.292603, 31.726891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.925076, 33.510391, 31.626921>,  <38.947037, 33.873375, 31.460302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.925076, 33.510391, 31.626921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799647, 0.209869, 0.562600,
		-0.597955, 0.363977, 0.714123,
		-0.054901, -0.907456, 0.416545,
		38.908604, 33.238155, 31.751884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.899185, 33.900150, 32.206112>,  <38.947037, 33.873375, 31.460302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.899185, 33.900150, 32.206112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.068359, 33.550430, 32.110840>,  <39.169865, 33.340599, 32.053677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.068359, 33.550430, 32.110840>,  <38.899185, 33.900150, 32.206112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.068359, 33.550430, 32.110840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718443, 0.163344, 0.676135,
		-0.552239, -0.457077, 0.697218,
		0.422932, -0.874299, -0.238179,
		39.195240, 33.288139, 32.039387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.080662, 33.678513, 32.836376>,  <38.899185, 33.900150, 32.206112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.080662, 33.678513, 32.836376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.299397, 33.460468, 32.582188>,  <39.430637, 33.329643, 32.429676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.299397, 33.460468, 32.582188>,  <39.080662, 33.678513, 32.836376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.299397, 33.460468, 32.582188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762266, 0.010216, 0.647183,
		-0.346293, -0.838303, 0.421104,
		0.546838, -0.545108, -0.635472,
		39.463448, 33.296936, 32.391544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.548820, 33.419468, 33.252548>,  <39.080662, 33.678513, 32.836376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.548820, 33.419468, 33.252548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.719959, 33.321075, 32.904655>,  <39.822643, 33.262039, 32.695919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.719959, 33.321075, 32.904655>,  <39.548820, 33.419468, 33.252548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.719959, 33.321075, 32.904655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894130, -0.025571, 0.447078,
		-0.132214, -0.968937, 0.209001,
		0.427845, -0.245984, -0.869735,
		39.848312, 33.247280, 32.643734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.930000, 32.758347, 33.347649>,  <39.548820, 33.419468, 33.252548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.930000, 32.758347, 33.347649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.083176, 32.962223, 33.039474>,  <40.175079, 33.084549, 32.854568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.083176, 32.962223, 33.039474>,  <39.930000, 32.758347, 33.347649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.083176, 32.962223, 33.039474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921142, -0.147759, 0.360089,
		0.069697, -0.847572, -0.526085,
		0.382935, 0.509696, -0.770436,
		40.198055, 33.115131, 32.808342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.514030, 32.397030, 33.261330>,  <39.930000, 32.758347, 33.347649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.514030, 32.397030, 33.261330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.567146, 32.739128, 33.060963>,  <40.599014, 32.944389, 32.940742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.567146, 32.739128, 33.060963>,  <40.514030, 32.397030, 33.261330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.567146, 32.739128, 33.060963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972638, -0.015235, 0.231828,
		0.190639, -0.517993, -0.833871,
		0.132789, 0.855249, -0.500915,
		40.606983, 32.995705, 32.910686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.185661, 32.281685, 32.869350>,  <40.514030, 32.397030, 33.261330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.185661, 32.281685, 32.869350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.106014, 32.672215, 32.903149>,  <41.058224, 32.906532, 32.923428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.106014, 32.672215, 32.903149>,  <41.185661, 32.281685, 32.869350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.106014, 32.672215, 32.903149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865468, 0.134757, 0.482499,
		0.459690, 0.169200, -0.871812,
		-0.199122, 0.976326, 0.084491,
		41.046276, 32.965111, 32.928497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.810249, 32.648067, 32.806309>,  <41.185661, 32.281685, 32.869350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.810249, 32.648067, 32.806309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.618053, 32.949905, 32.985073>,  <41.502735, 33.131008, 33.092331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.618053, 32.949905, 32.985073>,  <41.810249, 32.648067, 32.806309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.618053, 32.949905, 32.985073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875392, 0.381790, 0.296522,
		0.053128, 0.533694, -0.844007,
		-0.480485, 0.754591, 0.446907,
		41.473907, 33.176281, 33.119144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.201565, 33.262897, 32.659027>,  <41.810249, 32.648067, 32.806309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.201565, 33.262897, 32.659027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.986053, 33.383202, 32.973801>,  <41.856747, 33.455383, 33.162663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.986053, 33.383202, 32.973801>,  <42.201565, 33.262897, 32.659027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.986053, 33.383202, 32.973801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824387, 0.380599, 0.418964,
		-0.173498, 0.874465, -0.453001,
		-0.538781, 0.300759, 0.786930,
		41.824421, 33.473431, 33.209881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.271431, 34.052685, 32.737144>,  <42.201565, 33.262897, 32.659027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.271431, 34.052685, 32.737144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.170650, 33.903172, 33.094200>,  <42.110180, 33.813465, 33.308434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.170650, 33.903172, 33.094200>,  <42.271431, 34.052685, 32.737144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.170650, 33.903172, 33.094200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783158, 0.463102, 0.414969,
		-0.568492, 0.803631, 0.176050,
		-0.251953, -0.373782, 0.892640,
		42.095066, 33.791039, 33.361992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.470844, 34.569077, 33.155491>,  <42.271431, 34.052685, 32.737144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.470844, 34.569077, 33.155491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.440582, 34.278301, 33.428501>,  <42.422424, 34.103836, 33.592308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.440582, 34.278301, 33.428501>,  <42.470844, 34.569077, 33.155491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.440582, 34.278301, 33.428501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807297, 0.357107, 0.469836,
		-0.585275, 0.586544, 0.559838,
		-0.075657, -0.726939, 0.682522,
		42.417885, 34.060219, 33.633259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.534039, 34.906189, 33.850685>,  <42.470844, 34.569077, 33.155491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.534039, 34.906189, 33.850685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.611301, 34.517208, 33.902882>,  <42.657658, 34.283821, 33.934200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.611301, 34.517208, 33.902882>,  <42.534039, 34.906189, 33.850685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.611301, 34.517208, 33.902882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869230, 0.231291, 0.436970,
		-0.455114, 0.029025, 0.889960,
		0.193157, -0.972451, 0.130493,
		42.669247, 34.225471, 33.942028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.846008, 34.799126, 34.490887>,  <42.534039, 34.906189, 33.850685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.846008, 34.799126, 34.490887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.949512, 34.460381, 34.305042>,  <43.011616, 34.257133, 34.193535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.949512, 34.460381, 34.305042>,  <42.846008, 34.799126, 34.490887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.949512, 34.460381, 34.305042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913679, 0.058520, 0.402202,
		-0.313422, -0.528577, 0.788906,
		0.258762, -0.846866, -0.464608,
		43.027142, 34.206322, 34.165661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.236885, 34.398548, 34.980705>,  <42.846008, 34.799126, 34.490887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.236885, 34.398548, 34.980705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.349827, 34.249268, 34.627209>,  <43.417591, 34.159698, 34.415112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.349827, 34.249268, 34.627209>,  <43.236885, 34.398548, 34.980705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.349827, 34.249268, 34.627209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958855, 0.138142, 0.248022,
		0.029519, -0.917407, 0.396854,
		0.282359, -0.373204, -0.883738,
		43.434536, 34.137306, 34.362087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.749462, 33.808929, 35.151283>,  <43.236885, 34.398548, 34.980705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.749462, 33.808929, 35.151283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.807457, 33.930347, 34.774593>,  <43.842255, 34.003197, 34.548580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.807457, 33.930347, 34.774593>,  <43.749462, 33.808929, 35.151283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.807457, 33.930347, 34.774593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983072, 0.063567, 0.171841,
		0.112024, -0.950696, -0.289186,
		0.144986, 0.303541, -0.941723,
		43.850952, 34.021408, 34.492077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.381683, 33.720688, 35.062374>,  <43.749462, 33.808929, 35.151283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.381683, 33.720688, 35.062374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.340164, 33.934307, 34.726753>,  <44.315254, 34.062481, 34.525379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.340164, 33.934307, 34.726753>,  <44.381683, 33.720688, 35.062374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.340164, 33.934307, 34.726753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991578, 0.121259, -0.045485,
		0.077452, -0.836711, -0.542141,
		-0.103797, 0.534052, -0.839056,
		44.309025, 34.094524, 34.475037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.857872, 33.385597, 34.616295>,  <44.381683, 33.720688, 35.062374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.857872, 33.385597, 34.616295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.789364, 33.754471, 34.477592>,  <44.748260, 33.975796, 34.394371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.789364, 33.754471, 34.477592>,  <44.857872, 33.385597, 34.616295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.789364, 33.754471, 34.477592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961621, 0.079888, -0.262494,
		-0.214367, -0.378403, -0.900476,
		-0.171266, 0.922187, -0.346755,
		44.737984, 34.031128, 34.373566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.197075, 33.541374, 34.075531>,  <44.857872, 33.385597, 34.616295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.197075, 33.541374, 34.075531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.126919, 33.929649, 34.141258>,  <45.084827, 34.162613, 34.180695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.126919, 33.929649, 34.141258>,  <45.197075, 33.541374, 34.075531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.126919, 33.929649, 34.141258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963882, 0.203285, -0.172066,
		-0.200427, 0.128209, -0.971283,
		-0.175387, 0.970689, 0.164322,
		45.074303, 34.220856, 34.190556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.559547, 33.956436, 33.567715>,  <45.197075, 33.541374, 34.075531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.559547, 33.956436, 33.567715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.526863, 34.182461, 33.896111>,  <45.507252, 34.318077, 34.093147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.526863, 34.182461, 33.896111>,  <45.559547, 33.956436, 33.567715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.526863, 34.182461, 33.896111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934492, 0.329807, -0.133987,
		-0.346480, 0.756262, -0.554995,
		-0.081712, 0.565062, 0.820992,
		45.502350, 34.351978, 34.142406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.007679, 34.481525, 33.448177>,  <45.559547, 33.956436, 33.567715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.007679, 34.481525, 33.448177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.974434, 34.379578, 33.833538>,  <45.954487, 34.318409, 34.064754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.974434, 34.379578, 33.833538>,  <46.007679, 34.481525, 33.448177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.974434, 34.379578, 33.833538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981238, 0.147839, 0.123759,
		-0.173969, 0.955608, 0.237798,
		-0.083109, -0.254867, 0.963398,
		45.949501, 34.303116, 34.122559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.490475, 34.974693, 33.787914>,  <46.007679, 34.481525, 33.448177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.490475, 34.974693, 33.787914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.435143, 34.666756, 34.037140>,  <46.401943, 34.481995, 34.186676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.435143, 34.666756, 34.037140>,  <46.490475, 34.974693, 33.787914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.435143, 34.666756, 34.037140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917470, 0.137320, 0.373353,
		-0.372982, 0.623289, 0.687311,
		-0.138326, -0.769841, 0.623066,
		46.393646, 34.435802, 34.224060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.062271, 35.043571, 34.267788>,  <46.490475, 34.974693, 33.787914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.062271, 35.043571, 34.267788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.925873, 34.694923, 34.408646>,  <46.844036, 34.485737, 34.493160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.925873, 34.694923, 34.408646>,  <47.062271, 35.043571, 34.267788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.925873, 34.694923, 34.408646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894302, -0.185320, 0.407285,
		-0.289738, 0.453804, 0.842683,
		-0.340994, -0.871618, 0.352143,
		46.823574, 34.433437, 34.514290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.613960, 35.288002, 34.638542>,  <47.062271, 35.043571, 34.267788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.613960, 35.288002, 34.638542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.795555, 35.048130, 34.902145>,  <47.904510, 34.904209, 35.060307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.795555, 35.048130, 34.902145>,  <47.613960, 35.288002, 34.638542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.795555, 35.048130, 34.902145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688314, -0.705694, -0.167987,
		0.565793, -0.377338, -0.733140,
		0.453985, -0.599676, 0.659004,
		47.931751, 34.868229, 35.099846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.328629, 37.576290, 44.435776> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.086079, 37.262199, 44.385612>,  <33.940548, 37.073746, 44.355515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.086079, 37.262199, 44.385612>,  <34.328629, 37.576290, 44.435776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.086079, 37.262199, 44.385612> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500787, -0.254599, -0.827279,
		0.617677, -0.564441, 0.547615,
		-0.606373, -0.785230, -0.125405,
		33.904167, 37.026630, 44.347992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.717644, 37.035988, 44.190170>,  <34.328629, 37.576290, 44.435776>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.717644, 37.035988, 44.190170> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.359753, 36.899990, 44.074333>,  <34.145020, 36.818390, 44.004829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.359753, 36.899990, 44.074333>,  <34.717644, 37.035988, 44.190170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.359753, 36.899990, 44.074333> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375498, -0.221631, -0.899934,
		0.241792, -0.913938, 0.325968,
		-0.894728, -0.339997, -0.289593,
		34.091335, 36.797993, 43.987453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.889698, 36.399014, 43.886925>,  <34.717644, 37.035988, 44.190170>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.889698, 36.399014, 43.886925> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.538635, 36.513084, 43.732841>,  <34.327999, 36.581528, 43.640392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.538635, 36.513084, 43.732841>,  <34.889698, 36.399014, 43.886925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.538635, 36.513084, 43.732841> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306178, -0.284746, -0.908392,
		-0.368746, -0.915200, 0.162592,
		-0.877657, 0.285184, -0.385213,
		34.275337, 36.598640, 43.617279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.852615, 36.067253, 43.319130>,  <34.889698, 36.399014, 43.886925>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.852615, 36.067253, 43.319130> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.574467, 36.337769, 43.221897>,  <34.407578, 36.500080, 43.163555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.574467, 36.337769, 43.221897>,  <34.852615, 36.067253, 43.319130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.574467, 36.337769, 43.221897> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260723, -0.077801, -0.962273,
		-0.669689, -0.732514, -0.122224,
		-0.695370, 0.676291, -0.243086,
		34.365856, 36.540657, 43.148972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.426418, 35.865509, 42.786079>,  <34.852615, 36.067253, 43.319130>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.426418, 35.865509, 42.786079> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.339138, 36.255806, 42.779049>,  <34.286770, 36.489986, 42.774830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.339138, 36.255806, 42.779049>,  <34.426418, 35.865509, 42.786079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.339138, 36.255806, 42.779049> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335084, 0.057992, -0.940402,
		-0.916574, -0.211084, -0.339611,
		-0.218199, 0.975746, -0.017577,
		34.273678, 36.548531, 42.773777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.935307, 35.976585, 42.240898>,  <34.426418, 35.865509, 42.786079>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.935307, 35.976585, 42.240898> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.118031, 36.326004, 42.308117>,  <34.227665, 36.535656, 42.348450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.118031, 36.326004, 42.308117>,  <33.935307, 35.976585, 42.240898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.118031, 36.326004, 42.308117> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424597, -0.048113, -0.904103,
		-0.781691, 0.484356, -0.392883,
		0.456811, 0.873547, 0.168047,
		34.255074, 36.588070, 42.358532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.907894, 36.348808, 41.572529>,  <33.935307, 35.976585, 42.240898>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.907894, 36.348808, 41.572529> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.198013, 36.539845, 41.770863>,  <34.372086, 36.654465, 41.889862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.198013, 36.539845, 41.770863>,  <33.907894, 36.348808, 41.572529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.198013, 36.539845, 41.770863> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397598, 0.297374, -0.868035,
		-0.562010, 0.826728, 0.025798,
		0.725300, 0.477587, 0.495832,
		34.415604, 36.683121, 41.919613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.008617, 36.998432, 41.245392>,  <33.907894, 36.348808, 41.572529>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.008617, 36.998432, 41.245392> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.356949, 36.913960, 41.422958>,  <34.565948, 36.863274, 41.529499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.356949, 36.913960, 41.422958>,  <34.008617, 36.998432, 41.245392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.356949, 36.913960, 41.422958> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486667, 0.242900, -0.839140,
		0.069388, 0.946784, 0.314301,
		0.870828, -0.211186, 0.443914,
		34.618198, 36.850605, 41.556133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.350826, 37.572041, 41.166893>,  <34.008617, 36.998432, 41.245392>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.350826, 37.572041, 41.166893> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.609962, 37.274071, 41.230640>,  <34.765442, 37.095287, 41.268887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.609962, 37.274071, 41.230640>,  <34.350826, 37.572041, 41.166893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.609962, 37.274071, 41.230640> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497819, 0.255641, -0.828748,
		0.576614, 0.616228, 0.536451,
		0.647837, -0.744923, 0.159364,
		34.804314, 37.050594, 41.278450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.959328, 38.009087, 40.997108>,  <34.350826, 37.572041, 41.166893>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.959328, 38.009087, 40.997108> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.061867, 37.622478, 41.001690>,  <35.123390, 37.390514, 41.004440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.061867, 37.622478, 41.001690>,  <34.959328, 38.009087, 40.997108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.061867, 37.622478, 41.001690> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606533, 0.151617, -0.780468,
		0.752599, 0.207019, 0.625091,
		0.256346, -0.966517, 0.011457,
		35.138771, 37.332523, 41.005127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.755943, 37.975822, 40.925499>,  <34.959328, 38.009087, 40.997108>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.755943, 37.975822, 40.925499> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.572010, 37.647469, 40.790028>,  <35.461651, 37.450459, 40.708744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.572010, 37.647469, 40.790028>,  <35.755943, 37.975822, 40.925499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.572010, 37.647469, 40.790028> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618744, -0.022620, -0.785267,
		0.636950, -0.570651, 0.518317,
		-0.459838, -0.820881, -0.338679,
		35.434059, 37.401203, 40.688423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.293423, 37.643127, 40.672749>,  <35.755943, 37.975822, 40.925499>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.293423, 37.643127, 40.672749> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.975834, 37.460484, 40.512196>,  <35.785278, 37.350895, 40.415863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.975834, 37.460484, 40.512196>,  <36.293423, 37.643127, 40.672749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.975834, 37.460484, 40.512196> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497209, -0.107786, -0.860910,
		0.349839, -0.883112, 0.312611,
		-0.793975, -0.456613, -0.401384,
		35.737640, 37.323498, 40.391781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.521244, 36.971512, 40.451187>,  <36.293423, 37.643127, 40.672749>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.521244, 36.971512, 40.451187> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.199154, 37.055111, 40.229218>,  <36.005901, 37.105270, 40.096035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.199154, 37.055111, 40.229218>,  <36.521244, 36.971512, 40.451187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.199154, 37.055111, 40.229218> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489439, -0.294072, -0.820958,
		-0.334770, -0.932652, 0.134498,
		-0.805220, 0.209003, -0.554922,
		35.957588, 37.117809, 40.062740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.562843, 36.408005, 40.027935>,  <36.521244, 36.971512, 40.451187>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.562843, 36.408005, 40.027935> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.351067, 36.700813, 39.856430>,  <36.223999, 36.876499, 39.753529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.351067, 36.700813, 39.856430>,  <36.562843, 36.408005, 40.027935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.351067, 36.700813, 39.856430> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450159, -0.185965, -0.873369,
		-0.719059, -0.655410, -0.231068,
		-0.529445, 0.732021, -0.428758,
		36.192234, 36.920418, 39.727802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.562557, 36.182716, 39.373981>,  <36.562843, 36.408005, 40.027935>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.562557, 36.182716, 39.373981> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.429066, 36.554955, 39.313816>,  <36.348972, 36.778297, 39.277718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.429066, 36.554955, 39.313816>,  <36.562557, 36.182716, 39.373981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.429066, 36.554955, 39.313816> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557367, 0.066108, -0.827631,
		-0.760242, -0.360040, -0.540743,
		-0.333727, 0.930592, -0.150416,
		36.328949, 36.834133, 39.268692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.248257, 36.268448, 38.600555>,  <36.562557, 36.182716, 39.373981>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.248257, 36.268448, 38.600555> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.350712, 36.622860, 38.755131>,  <36.412186, 36.835506, 38.847878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.350712, 36.622860, 38.755131>,  <36.248257, 36.268448, 38.600555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.350712, 36.622860, 38.755131> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561874, 0.188831, -0.805383,
		-0.786568, 0.423421, -0.449472,
		0.256142, 0.886035, 0.386437,
		36.427555, 36.888672, 38.871063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.208534, 36.754131, 38.118351>,  <36.248257, 36.268448, 38.600555>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.208534, 36.754131, 38.118351> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.461521, 36.954720, 38.354488>,  <36.613312, 37.075073, 38.496170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.461521, 36.954720, 38.354488>,  <36.208534, 36.754131, 38.118351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.461521, 36.954720, 38.354488> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535729, 0.267259, -0.800979,
		-0.559445, 0.822859, -0.099621,
		0.632468, 0.501474, 0.590346,
		36.651260, 37.105164, 38.531593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.603245, 37.221462, 37.698811>,  <36.208534, 36.754131, 38.118351>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.603245, 37.221462, 37.698811> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.850525, 37.237656, 38.012802>,  <36.998894, 37.247372, 38.201195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.850525, 37.237656, 38.012802>,  <36.603245, 37.221462, 37.698811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.850525, 37.237656, 38.012802> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778439, 0.106828, -0.618563,
		-0.108902, 0.993453, 0.034524,
		0.618202, 0.040488, 0.784976,
		37.035984, 37.249802, 38.248295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.992798, 37.839214, 37.704960>,  <36.603245, 37.221462, 37.698811>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.992798, 37.839214, 37.704960> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.219444, 37.618546, 37.949780>,  <37.355431, 37.486145, 38.096672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.219444, 37.618546, 37.949780>,  <36.992798, 37.839214, 37.704960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.219444, 37.618546, 37.949780> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811269, 0.243526, -0.531543,
		0.144188, 0.797717, 0.585540,
		0.566615, -0.551673, 0.612049,
		37.389427, 37.453045, 38.133396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.600384, 38.242420, 37.938183>,  <36.992798, 37.839214, 37.704960>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.600384, 38.242420, 37.938183> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.708656, 37.861111, 37.991840>,  <37.773621, 37.632324, 38.024036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.708656, 37.861111, 37.991840>,  <37.600384, 38.242420, 37.938183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.708656, 37.861111, 37.991840> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805777, 0.148108, -0.573400,
		0.526742, 0.263297, 0.808219,
		0.270678, -0.953278, 0.134144,
		37.789860, 37.575127, 38.032085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.343647, 38.290707, 38.057785>,  <37.600384, 38.242420, 37.938183>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.343647, 38.290707, 38.057785> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.272610, 37.906399, 37.972565>,  <38.229988, 37.675816, 37.921432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.272610, 37.906399, 37.972565>,  <38.343647, 38.290707, 38.057785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.272610, 37.906399, 37.972565> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737991, 0.013203, -0.674682,
		0.651024, -0.277048, 0.706691,
		-0.177589, -0.960765, -0.213054,
		38.219334, 37.618168, 37.908649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.011192, 38.108871, 37.955547>,  <38.343647, 38.290707, 38.057785>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.011192, 38.108871, 37.955547> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.803062, 37.820568, 37.772343>,  <38.678185, 37.647587, 37.662418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.803062, 37.820568, 37.772343>,  <39.011192, 38.108871, 37.955547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.803062, 37.820568, 37.772343> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626162, 0.042687, -0.778523,
		0.580676, -0.691874, 0.429099,
		-0.520323, -0.720755, -0.458013,
		38.646965, 37.604343, 37.634937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.563438, 37.629311, 37.849815>,  <39.011192, 38.108871, 37.955547>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.563438, 37.629311, 37.849815> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.857353, 37.896206, 37.898609>,  <40.033703, 38.056343, 37.927887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.857353, 37.896206, 37.898609>,  <39.563438, 37.629311, 37.849815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.857353, 37.896206, 37.898609> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482032, 0.387137, 0.785983,
		0.477216, -0.636329, 0.606094,
		0.734786, 0.667241, 0.121983,
		40.077789, 38.096378, 37.935204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.841999, 37.491661, 38.573193>,  <39.563438, 37.629311, 37.849815>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.841999, 37.491661, 38.573193> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.960560, 37.863297, 38.484695>,  <40.031696, 38.086277, 38.431599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.960560, 37.863297, 38.484695>,  <39.841999, 37.491661, 38.573193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.960560, 37.863297, 38.484695> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333435, 0.317740, 0.887616,
		0.894969, -0.189317, 0.403967,
		0.296397, 0.929086, -0.221243,
		40.049480, 38.142021, 38.418324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.425228, 37.829838, 39.086941>,  <39.841999, 37.491661, 38.573193>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.425228, 37.829838, 39.086941> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.184669, 38.094200, 38.907379>,  <40.040333, 38.252819, 38.799641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.184669, 38.094200, 38.907379>,  <40.425228, 37.829838, 39.086941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.184669, 38.094200, 38.907379> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419424, 0.217052, 0.881460,
		0.680002, 0.718392, 0.146666,
		-0.601399, 0.660910, -0.448906,
		40.004250, 38.292473, 38.772709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.267181, 38.180683, 39.615696>,  <40.425228, 37.829838, 39.086941>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.267181, 38.180683, 39.615696> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.024689, 38.396168, 39.381680>,  <39.879192, 38.525459, 39.241268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.024689, 38.396168, 39.381680>,  <40.267181, 38.180683, 39.615696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.024689, 38.396168, 39.381680> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499656, 0.314320, 0.807184,
		0.618733, 0.781657, 0.078623,
		-0.606229, 0.538716, -0.585040,
		39.842819, 38.557781, 39.206169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.199841, 38.884666, 39.890884>,  <40.267181, 38.180683, 39.615696>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.199841, 38.884666, 39.890884> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.878918, 38.817520, 39.661755>,  <39.686363, 38.777233, 39.524277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.878918, 38.817520, 39.661755>,  <40.199841, 38.884666, 39.890884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.878918, 38.817520, 39.661755> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590797, 0.360378, 0.721864,
		0.085255, 0.917577, -0.388308,
		-0.802303, -0.167869, -0.572826,
		39.638226, 38.767159, 39.489906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.676216, 39.277710, 40.160915>,  <40.199841, 38.884666, 39.890884>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.676216, 39.277710, 40.160915> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.443439, 39.067036, 39.913059>,  <39.303776, 38.940632, 39.764347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.443439, 39.067036, 39.913059>,  <39.676216, 39.277710, 40.160915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.443439, 39.067036, 39.913059> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789592, 0.183550, 0.585537,
		-0.194660, 0.830007, -0.522682,
		-0.581938, -0.526686, -0.619637,
		39.268860, 38.909031, 39.727169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.156837, 39.677002, 40.005863>,  <39.676216, 39.277710, 40.160915>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.156837, 39.677002, 40.005863> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.038731, 39.296761, 39.967567>,  <38.967869, 39.068615, 39.944588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.038731, 39.296761, 39.967567>,  <39.156837, 39.677002, 40.005863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.038731, 39.296761, 39.967567> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789936, 0.186525, 0.584132,
		-0.537421, 0.248104, -0.805992,
		-0.295263, -0.950607, -0.095743,
		38.950153, 39.011578, 39.938843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.413925, 39.752975, 39.912483>,  <39.156837, 39.677002, 40.005863>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.413925, 39.752975, 39.912483> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.474483, 39.378742, 40.040085>,  <38.510818, 39.154202, 40.116646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.474483, 39.378742, 40.040085>,  <38.413925, 39.752975, 39.912483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.474483, 39.378742, 40.040085> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726913, 0.113309, 0.677317,
		-0.669833, -0.334430, -0.662933,
		0.151398, -0.935584, 0.319000,
		38.519901, 39.098068, 40.135784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.728951, 39.447853, 39.874973>,  <38.413925, 39.752975, 39.912483>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.728951, 39.447853, 39.874973> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.967747, 39.246750, 40.125042>,  <38.111023, 39.126087, 40.275082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.967747, 39.246750, 40.125042>,  <37.728951, 39.447853, 39.874973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.967747, 39.246750, 40.125042> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696847, 0.061145, 0.714609,
		-0.397502, -0.862261, -0.313843,
		0.596990, -0.502759, 0.625169,
		38.146843, 39.095921, 40.312592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.251003, 38.992649, 40.202301>,  <37.728951, 39.447853, 39.874973>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.251003, 38.992649, 40.202301> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.572258, 38.964546, 40.438957>,  <37.765011, 38.947685, 40.580952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.572258, 38.964546, 40.438957>,  <37.251003, 38.992649, 40.202301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.572258, 38.964546, 40.438957> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595114, -0.047151, 0.802257,
		-0.028461, -0.996414, -0.079675,
		0.803137, -0.070249, 0.591638,
		37.813198, 38.943470, 40.616447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.120281, 38.407467, 40.532406>,  <37.251003, 38.992649, 40.202301>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.120281, 38.407467, 40.532406> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.375763, 38.635445, 40.739182>,  <37.529053, 38.772232, 40.863247>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.375763, 38.635445, 40.739182>,  <37.120281, 38.407467, 40.532406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.375763, 38.635445, 40.739182> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571595, -0.098311, 0.814625,
		0.515110, -0.815782, 0.262984,
		0.638703, 0.569942, 0.516938,
		37.567375, 38.806427, 40.894264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.320644, 38.008835, 41.146751>,  <37.120281, 38.407467, 40.532406>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.320644, 38.008835, 41.146751> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.377151, 38.389778, 41.254871>,  <37.411057, 38.618343, 41.319744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.377151, 38.389778, 41.254871>,  <37.320644, 38.008835, 41.146751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.377151, 38.389778, 41.254871> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519137, -0.161221, 0.839348,
		0.842936, -0.258895, 0.471628,
		0.141266, 0.952356, 0.270301,
		37.419533, 38.675484, 41.335960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.687809, 37.996777, 41.893112>,  <37.320644, 38.008835, 41.146751>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.687809, 37.996777, 41.893112> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.501503, 38.344868, 41.828907>,  <37.389721, 38.553722, 41.790386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.501503, 38.344868, 41.828907>,  <37.687809, 37.996777, 41.893112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.501503, 38.344868, 41.828907> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488728, -0.101757, 0.866482,
		0.737706, 0.482021, 0.472701,
		-0.465763, 0.870231, -0.160510,
		37.361774, 38.605938, 41.780754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.715176, 38.328224, 42.530205>,  <37.687809, 37.996777, 41.893112>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.715176, 38.328224, 42.530205> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.423527, 38.544174, 42.361954>,  <37.248539, 38.673744, 42.261005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.423527, 38.544174, 42.361954>,  <37.715176, 38.328224, 42.530205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.423527, 38.544174, 42.361954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607791, -0.228263, 0.760583,
		0.314605, 0.810206, 0.494560,
		-0.729119, 0.539872, -0.420624,
		37.204792, 38.706135, 42.235767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.437374, 38.872475, 42.960632>,  <37.715176, 38.328224, 42.530205>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.437374, 38.872475, 42.960632> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.146118, 38.776573, 42.703781>,  <36.971363, 38.719032, 42.549671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.146118, 38.776573, 42.703781>,  <37.437374, 38.872475, 42.960632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.146118, 38.776573, 42.703781> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633240, -0.123255, 0.764078,
		-0.262338, 0.962977, -0.062077,
		-0.728138, -0.239756, -0.642130,
		36.927677, 38.704647, 42.511143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.914886, 39.273479, 43.210041>,  <37.437374, 38.872475, 42.960632>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.914886, 39.273479, 43.210041> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.766647, 38.979156, 42.983330>,  <36.677704, 38.802563, 42.847301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.766647, 38.979156, 42.983330>,  <36.914886, 39.273479, 43.210041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.766647, 38.979156, 42.983330> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662342, -0.218427, 0.716653,
		-0.651121, 0.640994, -0.406409,
		-0.370599, -0.735810, -0.566780,
		36.655468, 38.758415, 42.813297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.274925, 39.459503, 43.265728>,  <36.914886, 39.273479, 43.210041>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.274925, 39.459503, 43.265728> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.299229, 39.077847, 43.148479>,  <36.313812, 38.848850, 43.078133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.299229, 39.077847, 43.148479>,  <36.274925, 39.459503, 43.265728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.299229, 39.077847, 43.148479> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662205, -0.258258, 0.703411,
		-0.746855, 0.151366, -0.647530,
		0.060757, -0.954144, -0.293117,
		36.317455, 38.791603, 43.060543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.622238, 39.280849, 43.180977>,  <36.274925, 39.459503, 43.265728>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.622238, 39.280849, 43.180977> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.828842, 38.941830, 43.229771>,  <35.952805, 38.738419, 43.259048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.828842, 38.941830, 43.229771>,  <35.622238, 39.280849, 43.180977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.828842, 38.941830, 43.229771> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647602, -0.293451, 0.703206,
		-0.560204, -0.442210, -0.700444,
		0.516511, -0.847547, 0.121984,
		35.983795, 38.687565, 43.266365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.096203, 38.608551, 43.407040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.466522, 38.495995, 43.508011>,  <35.688713, 38.428459, 43.568592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.466522, 38.495995, 43.508011>,  <35.096203, 38.608551, 43.407040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.466522, 38.495995, 43.508011> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326138, -0.256928, 0.909737,
		-0.191134, -0.924559, -0.329635,
		0.925798, -0.281389, 0.252426,
		35.744263, 38.411575, 43.583740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.928131, 38.162483, 43.953838>,  <35.096203, 38.608551, 43.407040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.928131, 38.162483, 43.953838> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.322948, 38.209675, 43.997322>,  <35.559841, 38.237988, 44.023411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.322948, 38.209675, 43.997322>,  <34.928131, 38.162483, 43.953838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.322948, 38.209675, 43.997322> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103937, -0.045887, 0.993525,
		0.122202, -0.991955, -0.033031,
		0.987048, 0.117978, 0.108709,
		35.619064, 38.245068, 44.029934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.257153, 37.544422, 44.292667>,  <34.928131, 38.162483, 43.953838>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.257153, 37.544422, 44.292667> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.473614, 37.873238, 44.363556>,  <35.603489, 38.070526, 44.406090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.473614, 37.873238, 44.363556>,  <35.257153, 37.544422, 44.292667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.473614, 37.873238, 44.363556> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135347, -0.122852, 0.983152,
		0.829964, -0.556017, 0.044779,
		0.541148, 0.822042, 0.177218,
		35.635960, 38.119850, 44.416721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.887424, 37.450859, 44.911865>,  <35.257153, 37.544422, 44.292667>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.887424, 37.450859, 44.911865> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.754288, 37.823559, 44.853832>,  <35.674404, 38.047180, 44.819012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.754288, 37.823559, 44.853832>,  <35.887424, 37.450859, 44.911865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.754288, 37.823559, 44.853832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286201, 0.046782, 0.957027,
		0.898501, 0.360065, 0.251098,
		-0.332845, 0.931754, -0.145084,
		35.654434, 38.103085, 44.810307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.994728, 37.593075, 45.637787>,  <35.887424, 37.450859, 44.911865>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.994728, 37.593075, 45.637787> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.830154, 37.920631, 45.477718>,  <35.731411, 38.117165, 45.381680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.830154, 37.920631, 45.477718>,  <35.994728, 37.593075, 45.637787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.830154, 37.920631, 45.477718> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428613, 0.213640, 0.877866,
		0.804371, 0.532702, 0.263089,
		-0.411434, 0.818893, -0.400169,
		35.706722, 38.166298, 45.357666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.031734, 38.129417, 46.229534>,  <35.994728, 37.593075, 45.637787>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.031734, 38.129417, 46.229534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.763180, 38.251572, 45.959427>,  <35.602047, 38.324863, 45.797363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.763180, 38.251572, 45.959427>,  <36.031734, 38.129417, 46.229534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.763180, 38.251572, 45.959427> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617229, 0.273922, 0.737561,
		0.410212, 0.911979, 0.004587,
		-0.671383, 0.305387, -0.675265,
		35.561764, 38.343189, 45.756847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.913910, 38.738327, 46.499790>,  <36.031734, 38.129417, 46.229534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.913910, 38.738327, 46.499790> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.583424, 38.675949, 46.283253>,  <35.385132, 38.638523, 46.153328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.583424, 38.675949, 46.283253>,  <35.913910, 38.738327, 46.499790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.583424, 38.675949, 46.283253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563229, 0.207853, 0.799732,
		-0.012192, 0.965649, -0.259562,
		-0.826211, -0.155943, -0.541347,
		35.335560, 38.629166, 46.120850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.498234, 39.303654, 46.631653>,  <35.913910, 38.738327, 46.499790>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.498234, 39.303654, 46.631653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.247345, 39.014671, 46.515266>,  <35.096813, 38.841282, 46.445435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.247345, 39.014671, 46.515266>,  <35.498234, 39.303654, 46.631653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.247345, 39.014671, 46.515266> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561828, 0.160963, 0.811443,
		-0.539395, 0.672423, -0.506853,
		-0.627218, -0.722453, -0.290964,
		35.059181, 38.797935, 46.427979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.830513, 39.537086, 46.764694>,  <35.498234, 39.303654, 46.631653>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.830513, 39.537086, 46.764694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.773743, 39.141136, 46.764084>,  <34.739681, 38.903564, 46.763718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.773743, 39.141136, 46.764084>,  <34.830513, 39.537086, 46.764694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.773743, 39.141136, 46.764084> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720366, 0.102228, 0.686019,
		-0.678918, 0.098458, -0.727582,
		-0.141923, -0.989877, -0.001522,
		34.731167, 38.844173, 46.763626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.187199, 39.542809, 46.975674>,  <34.830513, 39.537086, 46.764694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.187199, 39.542809, 46.975674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.293808, 39.159786, 47.019577>,  <34.357773, 38.929974, 47.045918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.293808, 39.159786, 47.019577>,  <34.187199, 39.542809, 46.975674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.293808, 39.159786, 47.019577> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473797, -0.030994, 0.880088,
		-0.839335, -0.286565, -0.461949,
		0.266520, -0.957559, 0.109759,
		34.373764, 38.872517, 47.052505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.620514, 39.174011, 47.214325>,  <34.187199, 39.542809, 46.975674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.620514, 39.174011, 47.214325> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.946457, 38.970524, 47.325470>,  <34.142021, 38.848431, 47.392159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.946457, 38.970524, 47.325470>,  <33.620514, 39.174011, 47.214325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.946457, 38.970524, 47.325470> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406767, -0.160319, 0.899354,
		-0.412974, -0.845872, -0.337568,
		0.814858, -0.508722, 0.277865,
		34.190914, 38.817909, 47.408829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.439987, 38.552071, 47.550438>,  <33.620514, 39.174011, 47.214325>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.439987, 38.552071, 47.550438> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.814884, 38.628353, 47.667202>,  <34.039822, 38.674122, 47.737263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.814884, 38.628353, 47.667202>,  <33.439987, 38.552071, 47.550438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.814884, 38.628353, 47.667202> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264996, -0.154555, 0.951782,
		0.226631, -0.969403, -0.094318,
		0.937238, 0.190710, 0.291915,
		34.096054, 38.685566, 47.754776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.562447, 37.985317, 48.032318>,  <33.439987, 38.552071, 47.550438>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.562447, 37.985317, 48.032318> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.839890, 38.266087, 48.097092>,  <34.006355, 38.434547, 48.135956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.839890, 38.266087, 48.097092>,  <33.562447, 37.985317, 48.032318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.839890, 38.266087, 48.097092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056331, -0.171254, 0.983615,
		0.718150, -0.691362, -0.079242,
		0.693604, 0.701919, 0.161931,
		34.047970, 38.476662, 48.145672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.820877, 37.697296, 48.614258>,  <33.562447, 37.985317, 48.032318>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.820877, 37.697296, 48.614258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.914116, 38.085991, 48.629189>,  <33.970058, 38.319206, 48.638149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.914116, 38.085991, 48.629189>,  <33.820877, 37.697296, 48.614258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.914116, 38.085991, 48.629189> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089239, -0.016850, 0.995867,
		0.968350, -0.235465, 0.082790,
		0.233097, 0.971737, 0.037329,
		33.984043, 38.377510, 48.640388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.267227, 37.842319, 49.178173>,  <33.820877, 37.697296, 48.614258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.267227, 37.842319, 49.178173> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.130650, 38.212746, 49.113903>,  <34.048702, 38.435001, 49.075340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.130650, 38.212746, 49.113903>,  <34.267227, 37.842319, 49.178173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.130650, 38.212746, 49.113903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151007, 0.114678, 0.981858,
		0.927692, 0.359513, 0.100687,
		-0.341445, 0.926066, -0.160675,
		34.028217, 38.490566, 49.065701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.750389, 38.409344, 49.452282>,  <34.267227, 37.842319, 49.178173>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.750389, 38.409344, 49.452282> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.371666, 38.538017, 49.448997>,  <34.144432, 38.615223, 49.447029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.371666, 38.538017, 49.448997>,  <34.750389, 38.409344, 49.452282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.371666, 38.538017, 49.448997> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037173, 0.134678, 0.990192,
		0.319633, 0.937221, -0.139472,
		-0.946812, 0.321683, -0.008208,
		34.087624, 38.634521, 49.446537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.738312, 38.795158, 50.060760>,  <34.750389, 38.409344, 49.452282>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.738312, 38.795158, 50.060760> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.356113, 38.865677, 49.966152>,  <34.126793, 38.907990, 49.909386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.356113, 38.865677, 49.966152>,  <34.738312, 38.795158, 50.060760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.356113, 38.865677, 49.966152> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213869, 0.138238, 0.967032,
		0.203181, 0.974582, -0.094382,
		-0.955499, 0.176297, -0.236520,
		34.069466, 38.918568, 49.895195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.542732, 39.383419, 50.376743>,  <34.738312, 38.795158, 50.060760>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.542732, 39.383419, 50.376743> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.180382, 39.226665, 50.312489>,  <33.962971, 39.132614, 50.273933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.180382, 39.226665, 50.312489>,  <34.542732, 39.383419, 50.376743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.180382, 39.226665, 50.312489> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238395, 0.158300, 0.958180,
		-0.350069, 0.906293, -0.236824,
		-0.905881, -0.391886, -0.160640,
		33.908619, 39.109100, 50.264297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.093235, 39.732533, 50.856438>,  <34.542732, 39.383419, 50.376743>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.093235, 39.732533, 50.856438> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.904118, 39.400486, 50.738197>,  <33.790649, 39.201260, 50.667252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.904118, 39.400486, 50.738197>,  <34.093235, 39.732533, 50.856438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.904118, 39.400486, 50.738197> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287551, -0.171758, 0.942239,
		-0.832937, 0.530483, -0.157494,
		-0.472790, -0.830113, -0.295604,
		33.762280, 39.151451, 50.649517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.359585, 39.710213, 51.025810>,  <34.093235, 39.732533, 50.856438>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.359585, 39.710213, 51.025810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.473507, 39.327446, 51.003181>,  <33.541862, 39.097786, 50.989605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.473507, 39.327446, 51.003181>,  <33.359585, 39.710213, 51.025810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.473507, 39.327446, 51.003181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297190, -0.144255, 0.943858,
		-0.911352, -0.252006, -0.325470,
		0.284809, -0.956913, -0.056573,
		33.558949, 39.040371, 50.986210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.795704, 39.330345, 51.224594>,  <33.359585, 39.710213, 51.025810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.795704, 39.330345, 51.224594> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.092617, 39.067593, 51.277531>,  <33.270767, 38.909939, 51.309292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.092617, 39.067593, 51.277531>,  <32.795704, 39.330345, 51.224594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.092617, 39.067593, 51.277531> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446972, -0.338242, 0.828135,
		-0.499225, -0.673867, -0.544681,
		0.742287, -0.656883, 0.132341,
		33.315304, 38.870529, 51.317234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.479092, 38.659336, 51.405548>,  <32.795704, 39.330345, 51.224594>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.479092, 38.659336, 51.405548> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.861347, 38.657612, 51.523354>,  <33.090702, 38.656578, 51.594036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.861347, 38.657612, 51.523354>,  <32.479092, 38.659336, 51.405548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.861347, 38.657612, 51.523354> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273971, -0.380137, 0.883423,
		0.108149, -0.924920, -0.364454,
		0.955638, -0.004308, 0.294512,
		33.148037, 38.656319, 51.611706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.852436, 38.063671, 51.716156>,  <32.479092, 38.659336, 51.405548>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.852436, 38.063671, 51.716156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.051868, 38.359592, 51.896873>,  <33.171528, 38.537144, 52.005302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.051868, 38.359592, 51.896873>,  <32.852436, 38.063671, 51.716156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.051868, 38.359592, 51.896873> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211683, -0.401502, 0.891060,
		0.840600, -0.539900, -0.043577,
		0.498579, 0.739800, 0.451790,
		33.201443, 38.581532, 52.032410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.089680, 37.405590, 52.119606>,  <32.852436, 38.063671, 51.716156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.089680, 37.405590, 52.119606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.991009, 37.035648, 52.235390>,  <32.931805, 36.813683, 52.304859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.991009, 37.035648, 52.235390>,  <33.089680, 37.405590, 52.119606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.991009, 37.035648, 52.235390> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211715, -0.240039, -0.947396,
		0.945688, -0.294987, -0.136593,
		-0.246682, -0.924859, 0.289455,
		32.917004, 36.758190, 52.322227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.521030, 36.989426, 51.674755>,  <33.089680, 37.405590, 52.119606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.521030, 36.989426, 51.674755> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.223751, 36.759872, 51.812336>,  <33.045383, 36.622139, 51.894886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.223751, 36.759872, 51.812336>,  <33.521030, 36.989426, 51.674755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.223751, 36.759872, 51.812336> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124122, -0.386893, -0.913733,
		0.657452, -0.721781, 0.216308,
		-0.743203, -0.573887, 0.343952,
		33.000790, 36.587708, 51.915524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.656464, 36.310577, 51.499916>,  <33.521030, 36.989426, 51.674755>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.656464, 36.310577, 51.499916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.262814, 36.359154, 51.551689>,  <33.026623, 36.388298, 51.582752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.262814, 36.359154, 51.551689>,  <33.656464, 36.310577, 51.499916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.262814, 36.359154, 51.551689> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153741, -0.218911, -0.963557,
		-0.088678, -0.968158, 0.234106,
		-0.984124, 0.121438, 0.129433,
		32.967575, 36.395588, 51.590519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.290352, 35.633938, 51.311241>,  <33.656464, 36.310577, 51.499916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.290352, 35.633938, 51.311241> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.006748, 35.913116, 51.270889>,  <32.836586, 36.080624, 51.246677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.006748, 35.913116, 51.270889>,  <33.290352, 35.633938, 51.311241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.006748, 35.913116, 51.270889> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149423, -0.288485, -0.945753,
		-0.689188, -0.655474, 0.308828,
		-0.709009, 0.697947, -0.100877,
		32.794044, 36.122501, 51.240627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.907524, 35.374134, 50.808403>,  <33.290352, 35.633938, 51.311241>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.907524, 35.374134, 50.808403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.758064, 35.743973, 50.838070>,  <32.668388, 35.965878, 50.855869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.758064, 35.743973, 50.838070>,  <32.907524, 35.374134, 50.808403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.758064, 35.743973, 50.838070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299916, -0.044767, -0.952915,
		-0.877745, -0.378299, 0.294030,
		-0.373650, 0.924600, 0.074164,
		32.645969, 36.021355, 50.860317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.291103, 35.362423, 50.443810>,  <32.907524, 35.374134, 50.808403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.291103, 35.362423, 50.443810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.379730, 35.752392, 50.435516>,  <32.432907, 35.986374, 50.430542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.379730, 35.752392, 50.435516>,  <32.291103, 35.362423, 50.443810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.379730, 35.752392, 50.435516> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244577, 0.034976, -0.968999,
		-0.943976, 0.219770, 0.246194,
		0.221568, 0.974925, -0.020734,
		32.446201, 36.044868, 50.429295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.686844, 35.781250, 50.084583>,  <32.291103, 35.362423, 50.443810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.686844, 35.781250, 50.084583> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.016632, 36.006611, 50.063301>,  <32.214504, 36.141827, 50.050533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.016632, 36.006611, 50.063301>,  <31.686844, 35.781250, 50.084583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.016632, 36.006611, 50.063301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123928, 0.088021, -0.988379,
		-0.552168, 0.821483, 0.142391,
		0.824471, 0.563398, -0.053203,
		32.263973, 36.175629, 50.047340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.486681, 36.357250, 49.728798>,  <31.686844, 35.781250, 50.084583>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.486681, 36.357250, 49.728798> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.885956, 36.360996, 49.705032>,  <32.125523, 36.363243, 49.690773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.885956, 36.360996, 49.705032>,  <31.486681, 36.357250, 49.728798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.885956, 36.360996, 49.705032> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059976, 0.230388, -0.971249,
		0.004590, 0.973054, 0.230532,
		0.998189, 0.009368, -0.059417,
		32.185413, 36.363808, 49.687206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.610577, 36.929398, 49.265095>,  <31.486681, 36.357250, 49.728798>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.610577, 36.929398, 49.265095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.948677, 36.716255, 49.281212>,  <32.151535, 36.588371, 49.290882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.948677, 36.716255, 49.281212>,  <31.610577, 36.929398, 49.265095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.948677, 36.716255, 49.281212> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097434, 0.079546, -0.992058,
		0.525415, 0.842461, 0.119154,
		0.845249, -0.532852, 0.040290,
		32.202251, 36.556400, 49.293301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.181526, 37.333256, 48.946163>,  <31.610577, 36.929398, 49.265095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.181526, 37.333256, 48.946163> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.281071, 36.946739, 48.919804>,  <32.340797, 36.714828, 48.903988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.281071, 36.946739, 48.919804>,  <32.181526, 37.333256, 48.946163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.281071, 36.946739, 48.919804> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272467, 0.135142, -0.952627,
		0.929423, 0.219121, 0.296915,
		0.248866, -0.966293, -0.065901,
		32.355732, 36.656853, 48.900032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.805214, 37.336979, 48.710388>,  <32.181526, 37.333256, 48.946163>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.805214, 37.336979, 48.710388> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.683025, 36.969082, 48.611782>,  <32.609711, 36.748344, 48.552620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.683025, 36.969082, 48.611782>,  <32.805214, 37.336979, 48.710388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.683025, 36.969082, 48.611782> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429293, 0.098062, -0.897826,
		0.849938, -0.380087, 0.364882,
		-0.305471, -0.919738, -0.246515,
		32.591385, 36.693161, 48.537827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.303547, 37.092148, 48.297989>,  <32.805214, 37.336979, 48.710388>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.303547, 37.092148, 48.297989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.998516, 36.849052, 48.209332>,  <32.815498, 36.703197, 48.156136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.998516, 36.849052, 48.209332>,  <33.303547, 37.092148, 48.297989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.998516, 36.849052, 48.209332> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284736, -0.007682, -0.958575,
		0.580857, -0.794103, 0.178902,
		-0.762581, -0.607735, -0.221648,
		32.769741, 36.666733, 48.142838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.618294, 36.533897, 47.995201>,  <33.303547, 37.092148, 48.297989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.618294, 36.533897, 47.995201> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.237350, 36.531162, 47.873238>,  <33.008785, 36.529522, 47.800060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.237350, 36.531162, 47.873238>,  <33.618294, 36.533897, 47.995201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.237350, 36.531162, 47.873238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304479, -0.079149, -0.949225,
		-0.017640, -0.996839, 0.077461,
		-0.952356, -0.006841, -0.304913,
		32.951645, 36.529110, 47.781765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.497322, 35.948467, 47.579670>,  <33.618294, 36.533897, 47.995201>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.497322, 35.948467, 47.579670> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.193775, 36.191864, 47.486843>,  <33.011646, 36.337902, 47.431149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.193775, 36.191864, 47.486843>,  <33.497322, 35.948467, 47.579670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.193775, 36.191864, 47.486843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228982, -0.084278, -0.969776,
		-0.609660, -0.789071, -0.075378,
		-0.758869, 0.608493, -0.232064,
		32.966114, 36.374413, 47.417225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.289150, 35.699112, 46.843407>,  <33.497322, 35.948467, 47.579670>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.289150, 35.699112, 46.843407> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.121403, 36.058685, 46.894081>,  <33.020756, 36.274429, 46.924488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.121403, 36.058685, 46.894081>,  <33.289150, 35.699112, 46.843407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.121403, 36.058685, 46.894081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242126, 0.245254, -0.938736,
		-0.874933, -0.362999, -0.320506,
		-0.419366, 0.898934, 0.126689,
		32.995594, 36.328365, 46.932087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.849693, 35.719658, 46.268562>,  <33.289150, 35.699112, 46.843407>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.849693, 35.719658, 46.268562> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.913258, 36.098568, 46.379860>,  <32.951397, 36.325912, 46.446640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.913258, 36.098568, 46.379860>,  <32.849693, 35.719658, 46.268562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.913258, 36.098568, 46.379860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172896, 0.250770, -0.952482,
		-0.972035, 0.199472, -0.123928,
		0.158915, 0.947273, 0.278246,
		32.960934, 36.382751, 46.463333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.648037, 36.077950, 45.660847>,  <32.849693, 35.719658, 46.268562>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.648037, 36.077950, 45.660847> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.835396, 36.373169, 45.855122>,  <32.947811, 36.550301, 45.971687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.835396, 36.373169, 45.855122>,  <32.648037, 36.077950, 45.660847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.835396, 36.373169, 45.855122> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263792, 0.407827, -0.874123,
		-0.843220, 0.537557, -0.003666,
		0.468396, 0.738045, 0.485690,
		32.975914, 36.594582, 46.000828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.251129, 36.723827, 45.660423>,  <32.648037, 36.077950, 45.660847>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.251129, 36.723827, 45.660423> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.628494, 36.849289, 45.703472>,  <32.854916, 36.924568, 45.729301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.628494, 36.849289, 45.703472>,  <32.251129, 36.723827, 45.660423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.628494, 36.849289, 45.703472> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016603, 0.279465, -0.960012,
		-0.331193, 0.907479, 0.258444,
		0.943417, 0.313658, 0.107624,
		32.911518, 36.943386, 45.735760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.359570, 37.387253, 45.272560>,  <32.251129, 36.723827, 45.660423>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.359570, 37.387253, 45.272560> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.721172, 37.224934, 45.326378>,  <32.938133, 37.127541, 45.358669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.721172, 37.224934, 45.326378>,  <32.359570, 37.387253, 45.272560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.721172, 37.224934, 45.326378> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212839, 0.154253, -0.964834,
		0.370775, 0.900851, 0.225816,
		0.904005, -0.405799, 0.134543,
		32.992374, 37.103195, 45.366741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.849556, 37.683819, 44.799385>,  <32.359570, 37.387253, 45.272560>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.849556, 37.683819, 44.799385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.069134, 37.366035, 44.903305>,  <33.200882, 37.175365, 44.965656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.069134, 37.366035, 44.903305>,  <32.849556, 37.683819, 44.799385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.069134, 37.366035, 44.903305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451439, 0.020207, -0.892073,
		0.703466, 0.606981, 0.369742,
		0.548943, -0.794459, 0.259800,
		33.233818, 37.127697, 44.981243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.543114, 37.819210, 44.712227>,  <32.849556, 37.683819, 44.799385>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.543114, 37.819210, 44.712227> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.521076, 37.419880, 44.705238>,  <33.507854, 37.180283, 44.701046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.521076, 37.419880, 44.705238>,  <33.543114, 37.819210, 44.712227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.521076, 37.419880, 44.705238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406432, -0.006442, -0.913658,
		0.912018, -0.057434, 0.406108,
		-0.055091, -0.998329, -0.017468,
		33.504547, 37.120380, 44.699997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.020744, 35.324223, 32.100201> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.710464, 35.452721, 32.317490>,  <37.524296, 35.529819, 32.447865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.710464, 35.452721, 32.317490>,  <38.020744, 35.324223, 32.100201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.710464, 35.452721, 32.317490> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629376, 0.330165, 0.703474,
		0.046635, 0.887577, -0.458293,
		-0.775700, 0.321246, 0.543223,
		37.477753, 35.549095, 32.480457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.070946, 36.059727, 32.311287>,  <38.020744, 35.324223, 32.100201>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.070946, 36.059727, 32.311287> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.832462, 35.882088, 32.578812>,  <37.689373, 35.775505, 32.739326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.832462, 35.882088, 32.578812>,  <38.070946, 36.059727, 32.311287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.832462, 35.882088, 32.578812> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606835, 0.296141, 0.737599,
		-0.525631, 0.845621, 0.092935,
		-0.596207, -0.444101, 0.668813,
		37.653599, 35.748856, 32.779457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.925751, 36.608387, 32.803028>,  <38.070946, 36.059727, 32.311287>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.925751, 36.608387, 32.803028> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.839046, 36.263721, 32.986572>,  <37.787022, 36.056923, 33.096699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.839046, 36.263721, 32.986572>,  <37.925751, 36.608387, 32.803028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.839046, 36.263721, 32.986572> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561075, 0.274681, 0.780862,
		-0.798880, 0.426715, 0.423917,
		-0.216763, -0.861664, 0.458856,
		37.774017, 36.005222, 33.124229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817181, 36.809166, 33.530109>,  <37.925751, 36.608387, 32.803028>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.817181, 36.809166, 33.530109> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.895958, 36.417156, 33.518982>,  <37.943226, 36.181950, 33.512306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.895958, 36.417156, 33.518982>,  <37.817181, 36.809166, 33.530109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.895958, 36.417156, 33.518982> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495035, 0.074912, 0.865637,
		-0.846258, -0.184255, 0.499898,
		0.196946, -0.980020, -0.027817,
		37.955040, 36.123150, 33.510635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.765121, 36.631618, 34.265652>,  <37.817181, 36.809166, 33.530109>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.765121, 36.631618, 34.265652> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.970413, 36.341129, 34.082699>,  <38.093586, 36.166836, 33.972927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.970413, 36.341129, 34.082699>,  <37.765121, 36.631618, 34.265652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.970413, 36.341129, 34.082699> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715264, 0.067383, 0.695599,
		-0.474340, -0.684149, 0.554023,
		0.513225, -0.726223, -0.457385,
		38.124382, 36.123264, 33.945484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.011913, 36.215511, 34.837360>,  <37.765121, 36.631618, 34.265652>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.011913, 36.215511, 34.837360> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.256996, 36.151356, 34.527813>,  <38.404045, 36.112862, 34.342087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.256996, 36.151356, 34.527813>,  <38.011913, 36.215511, 34.837360>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.256996, 36.151356, 34.527813> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790311, 0.123923, 0.600043,
		-0.000343, -0.979243, 0.202688,
		0.612706, -0.160392, -0.773865,
		38.440807, 36.103237, 34.295654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.700424, 35.886292, 35.092724>,  <38.011913, 36.215511, 34.837360>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.700424, 35.886292, 35.092724> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.800823, 35.999485, 34.722443>,  <38.861061, 36.067402, 34.500275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.800823, 35.999485, 34.722443>,  <38.700424, 35.886292, 35.092724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.800823, 35.999485, 34.722443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930273, 0.193823, 0.311488,
		0.267567, -0.939337, -0.214601,
		0.250997, 0.282982, -0.925701,
		38.876122, 36.084381, 34.444733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340893, 35.611965, 34.990414>,  <38.700424, 35.886292, 35.092724>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.340893, 35.611965, 34.990414> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.326458, 35.894573, 34.707703>,  <39.317799, 36.064137, 34.538074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.326458, 35.894573, 34.707703>,  <39.340893, 35.611965, 34.990414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.326458, 35.894573, 34.707703> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996981, 0.074110, 0.023184,
		0.068759, -0.703806, -0.707057,
		-0.036083, 0.706516, -0.706776,
		39.315632, 36.106529, 34.495670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.901035, 35.447445, 34.482037>,  <39.340893, 35.611965, 34.990414>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.901035, 35.447445, 34.482037> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.842491, 35.842491, 34.504662>,  <39.807365, 36.079517, 34.518238>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.842491, 35.842491, 34.504662>,  <39.901035, 35.447445, 34.482037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.842491, 35.842491, 34.504662> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988072, 0.143180, 0.056685,
		0.047883, 0.064188, -0.996788,
		-0.146359, 0.987613, 0.056567,
		39.798584, 36.138775, 34.521633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.447926, 35.760574, 34.097454>,  <39.901035, 35.447445, 34.482037>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.447926, 35.760574, 34.097454> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.312534, 36.080292, 34.296070>,  <40.231300, 36.272125, 34.415241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.312534, 36.080292, 34.296070>,  <40.447926, 35.760574, 34.097454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.312534, 36.080292, 34.296070> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939843, 0.313045, 0.136744,
		-0.046141, 0.512957, -0.857173,
		-0.338478, 0.799298, 0.496543,
		40.210991, 36.320080, 34.445034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.959213, 36.229538, 33.885338>,  <40.447926, 35.760574, 34.097454>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.959213, 36.229538, 33.885338> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.779350, 36.415546, 34.190380>,  <40.671432, 36.527149, 34.373405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.779350, 36.415546, 34.190380>,  <40.959213, 36.229538, 33.885338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.779350, 36.415546, 34.190380> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892773, 0.260441, 0.367596,
		-0.027674, 0.846125, -0.532266,
		-0.449655, 0.465019, 0.762605,
		40.644455, 36.555054, 34.419163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.307320, 36.887978, 33.940071>,  <40.959213, 36.229538, 33.885338>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.307320, 36.887978, 33.940071> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.166546, 36.760777, 34.292213>,  <41.082081, 36.684456, 34.503498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.166546, 36.760777, 34.292213>,  <41.307320, 36.887978, 33.940071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.166546, 36.760777, 34.292213> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906092, 0.120210, 0.405644,
		-0.234821, 0.940440, 0.245830,
		-0.351933, -0.317998, 0.880353,
		41.060966, 36.665379, 34.556320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.642921, 37.365208, 34.251823>,  <41.307320, 36.887978, 33.940071>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.642921, 37.365208, 34.251823> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.544281, 37.088879, 34.523693>,  <41.485096, 36.923080, 34.686813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.544281, 37.088879, 34.523693>,  <41.642921, 37.365208, 34.251823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.544281, 37.088879, 34.523693> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937278, 0.008280, 0.348484,
		-0.246368, 0.722978, 0.645451,
		-0.246602, -0.690822, 0.679671,
		41.470299, 36.881634, 34.727592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.092777, 37.516781, 34.801998>,  <41.642921, 37.365208, 34.251823>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.092777, 37.516781, 34.801998> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.956333, 37.151871, 34.892677>,  <41.874466, 36.932922, 34.947086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.956333, 37.151871, 34.892677>,  <42.092777, 37.516781, 34.801998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.956333, 37.151871, 34.892677> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843754, -0.190822, 0.501664,
		-0.414397, 0.362403, 0.834829,
		-0.341108, -0.912278, 0.226703,
		41.854000, 36.878189, 34.960690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.359303, 37.349060, 35.470776>,  <42.092777, 37.516781, 34.801998>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.359303, 37.349060, 35.470776> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.286304, 36.987785, 35.315365>,  <42.242504, 36.771019, 35.222118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.286304, 36.987785, 35.315365>,  <42.359303, 37.349060, 35.470776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.286304, 36.987785, 35.315365> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907353, -0.306909, 0.287260,
		-0.378691, -0.300103, 0.875518,
		-0.182497, -0.903186, -0.388523,
		42.231556, 36.716831, 35.198807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.567936, 36.837601, 35.996849>,  <42.359303, 37.349060, 35.470776>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.567936, 36.837601, 35.996849> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.552231, 36.621628, 35.660534>,  <42.542809, 36.492043, 35.458744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.552231, 36.621628, 35.660534>,  <42.567936, 36.837601, 35.996849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.552231, 36.621628, 35.660534> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815247, -0.503854, 0.285489,
		-0.577781, -0.674242, 0.459965,
		-0.039267, -0.539935, -0.840791,
		42.540451, 36.459648, 35.408298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.556156, 36.159901, 36.210438>,  <42.567936, 36.837601, 35.996849>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.556156, 36.159901, 36.210438> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.725677, 36.126255, 35.849701>,  <42.827389, 36.106068, 35.633259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.725677, 36.126255, 35.849701>,  <42.556156, 36.159901, 36.210438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.725677, 36.126255, 35.849701> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808388, -0.413970, 0.418494,
		-0.408531, -0.906397, -0.107456,
		0.423805, -0.084101, -0.901840,
		42.852818, 36.101021, 35.579147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.859829, 35.539345, 36.233322>,  <42.556156, 36.159901, 36.210438>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.859829, 35.539345, 36.233322> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.039227, 35.720833, 35.925297>,  <43.146866, 35.829723, 35.740482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.039227, 35.720833, 35.925297>,  <42.859829, 35.539345, 36.233322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.039227, 35.720833, 35.925297> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869216, -0.422035, 0.257584,
		-0.208122, -0.784874, -0.583659,
		0.448496, 0.453717, -0.770060,
		43.173775, 35.856949, 35.694279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.381065, 35.045254, 36.084202>,  <42.859829, 35.539345, 36.233322>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.381065, 35.045254, 36.084202> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.470173, 35.386627, 35.895721>,  <43.523636, 35.591450, 35.782635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.470173, 35.386627, 35.895721>,  <43.381065, 35.045254, 36.084202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.470173, 35.386627, 35.895721> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974844, -0.198673, 0.101035,
		-0.007387, -0.481851, -0.876222,
		0.222766, 0.853434, -0.471197,
		43.537003, 35.642658, 35.754364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.792797, 34.899071, 35.473389>,  <43.381065, 35.045254, 36.084202>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.792797, 34.899071, 35.473389> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.891926, 35.265194, 35.600384>,  <43.951405, 35.484867, 35.676582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.891926, 35.265194, 35.600384>,  <43.792797, 34.899071, 35.473389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.891926, 35.265194, 35.600384> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914914, -0.328891, 0.234016,
		0.318616, 0.232481, -0.918932,
		0.247824, 0.915305, 0.317490,
		43.966274, 35.539787, 35.695629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.495346, 34.854183, 35.296391>,  <43.792797, 34.899071, 35.473389>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.495346, 34.854183, 35.296391> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.455475, 35.152229, 35.560169>,  <44.431553, 35.331059, 35.718437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.455475, 35.152229, 35.560169>,  <44.495346, 34.854183, 35.296391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.455475, 35.152229, 35.560169> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880024, -0.243274, 0.407891,
		0.464351, 0.620985, -0.631471,
		-0.099674, 0.745114, 0.659447,
		44.425571, 35.375763, 35.758003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.121178, 35.204277, 35.043900>,  <44.495346, 34.854183, 35.296391>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.121178, 35.204277, 35.043900> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.241985, 34.948818, 34.760799>,  <45.314472, 34.795544, 34.590939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.241985, 34.948818, 34.760799>,  <45.121178, 35.204277, 35.043900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.241985, 34.948818, 34.760799> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.942666, -0.089493, -0.321513,
		0.141996, 0.764276, -0.629063,
		0.302022, -0.638650, -0.707749,
		45.332592, 34.757225, 34.548473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.788010, 35.455547, 34.466286>,  <45.121178, 35.204277, 35.043900>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.788010, 35.455547, 34.466286> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.885048, 35.074234, 34.394283>,  <44.943272, 34.845448, 34.351082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.885048, 35.074234, 34.394283>,  <44.788010, 35.455547, 34.466286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.885048, 35.074234, 34.394283> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.941420, -0.186528, -0.280954,
		0.234252, 0.237620, -0.942689,
		0.242599, -0.953281, -0.180005,
		44.957829, 34.788250, 34.340282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.383987, 35.233604, 33.882076>,  <44.788010, 35.455547, 34.466286>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.383987, 35.233604, 33.882076> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.510189, 34.889137, 34.041496>,  <44.585911, 34.682457, 34.137150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.510189, 34.889137, 34.041496>,  <44.383987, 35.233604, 33.882076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.510189, 34.889137, 34.041496> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.930801, -0.362553, -0.046526,
		0.184563, -0.356293, -0.915965,
		0.315508, -0.861168, 0.398552,
		44.604843, 34.630787, 34.161060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.352982, 34.749016, 33.330383>,  <44.383987, 35.233604, 33.882076>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.352982, 34.749016, 33.330383> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.302414, 34.557789, 33.678055>,  <44.272072, 34.443050, 33.886658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.302414, 34.557789, 33.678055>,  <44.352982, 34.749016, 33.330383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.302414, 34.557789, 33.678055> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.894927, -0.323020, -0.307837,
		0.427929, -0.816767, -0.387000,
		-0.126422, -0.478069, 0.869176,
		44.264488, 34.414368, 33.938808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.957031, 34.222645, 33.197582>,  <44.352982, 34.749016, 33.330383>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.957031, 34.222645, 33.197582> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.934361, 34.161659, 33.592255>,  <43.920757, 34.125069, 33.829060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.934361, 34.161659, 33.592255>,  <43.957031, 34.222645, 33.197582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.934361, 34.161659, 33.592255> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857809, -0.498219, -0.126261,
		0.510834, -0.853541, -0.102549,
		-0.056677, -0.152466, 0.986682,
		43.917358, 34.115921, 33.888260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.722401, 33.527779, 33.246422>,  <43.957031, 34.222645, 33.197582>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.722401, 33.527779, 33.246422> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.641537, 33.709248, 33.593597>,  <43.593018, 33.818127, 33.801903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.641537, 33.709248, 33.593597>,  <43.722401, 33.527779, 33.246422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.641537, 33.709248, 33.593597> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.927032, -0.374437, -0.020205,
		0.315821, -0.808691, 0.496263,
		-0.202159, 0.453670, 0.867938,
		43.580891, 33.845348, 33.853977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.457840, 33.104683, 33.651920>,  <43.722401, 33.527779, 33.246422>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.457840, 33.104683, 33.651920> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.313206, 33.453300, 33.784382>,  <43.226425, 33.662472, 33.863857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.313206, 33.453300, 33.784382>,  <43.457840, 33.104683, 33.651920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.313206, 33.453300, 33.784382> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931653, -0.351385, -0.092470,
		0.035770, -0.341954, 0.939036,
		-0.361584, 0.871548, 0.331152,
		43.204731, 33.714764, 33.883728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.991211, 32.951389, 34.147461>,  <43.457840, 33.104683, 33.651920>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.991211, 32.951389, 34.147461> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.881603, 33.326099, 34.060398>,  <42.815838, 33.550926, 34.008160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.881603, 33.326099, 34.060398>,  <42.991211, 32.951389, 34.147461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.881603, 33.326099, 34.060398> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.942261, -0.306809, -0.134212,
		-0.192504, 0.168310, 0.966754,
		-0.274020, 0.936771, -0.217654,
		42.799397, 33.607132, 33.995102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.320759, 33.039677, 34.426723>,  <42.991211, 32.951389, 34.147461>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.320759, 33.039677, 34.426723> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.336742, 33.369225, 34.200577>,  <42.346333, 33.566952, 34.064888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.336742, 33.369225, 34.200577>,  <42.320759, 33.039677, 34.426723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.336742, 33.369225, 34.200577> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.895746, -0.221188, -0.385634,
		-0.442765, 0.521837, 0.729140,
		0.039961, 0.823870, -0.565368,
		42.348732, 33.616386, 34.030968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.640251, 33.409878, 34.504841>,  <42.320759, 33.039677, 34.426723>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.640251, 33.409878, 34.504841> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.782459, 33.526989, 34.149788>,  <41.867786, 33.597256, 33.936756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.782459, 33.526989, 34.149788>,  <41.640251, 33.409878, 34.504841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.782459, 33.526989, 34.149788> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876217, -0.226167, -0.425549,
		-0.325343, 0.929049, 0.176125,
		0.355523, 0.292773, -0.887630,
		41.889114, 33.614822, 33.883499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.050503, 33.660816, 34.189552>,  <41.640251, 33.409878, 34.504841>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.050503, 33.660816, 34.189552> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.304218, 33.623802, 33.882534>,  <41.456448, 33.601593, 33.698326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.304218, 33.623802, 33.882534>,  <41.050503, 33.660816, 34.189552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.304218, 33.623802, 33.882534> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767547, -0.194142, -0.610884,
		-0.092483, 0.976599, -0.194168,
		0.634285, -0.092537, -0.767541,
		41.494503, 33.596043, 33.652271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.928608, 34.156502, 33.639637>,  <41.050503, 33.660816, 34.189552>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.928608, 34.156502, 33.639637> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.124321, 33.849632, 33.473724>,  <41.241749, 33.665508, 33.374176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.124321, 33.849632, 33.473724>,  <40.928608, 34.156502, 33.639637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.124321, 33.849632, 33.473724> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732005, -0.102702, -0.673514,
		0.474105, 0.633160, -0.611827,
		0.489278, -0.767177, -0.414784,
		41.271103, 33.619480, 33.349289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.881283, 34.260155, 32.864071>,  <40.928608, 34.156502, 33.639637>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.881283, 34.260155, 32.864071> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.940506, 33.865837, 32.895771>,  <40.976040, 33.629246, 32.914791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.940506, 33.865837, 32.895771>,  <40.881283, 34.260155, 32.864071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.940506, 33.865837, 32.895771> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759535, -0.164669, -0.629278,
		0.633391, 0.032975, -0.773129,
		0.148061, -0.985798, 0.079254,
		40.984924, 33.570099, 32.919548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.926491, 34.046825, 32.244843>,  <40.881283, 34.260155, 32.864071>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.926491, 34.046825, 32.244843> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.816002, 33.718445, 32.444740>,  <40.749710, 33.521416, 32.564678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.816002, 33.718445, 32.444740>,  <40.926491, 34.046825, 32.244843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.816002, 33.718445, 32.444740> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744088, -0.146434, -0.651836,
		0.608304, -0.551903, -0.570412,
		-0.276222, -0.820951, 0.499741,
		40.733135, 33.472160, 32.594662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.717812, 33.555595, 31.737150>,  <40.926491, 34.046825, 32.244843>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.717812, 33.555595, 31.737150> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.539261, 33.416553, 32.066978>,  <40.432129, 33.333130, 32.264877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.539261, 33.416553, 32.066978>,  <40.717812, 33.555595, 31.737150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.539261, 33.416553, 32.066978> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834813, -0.170057, -0.523611,
		0.322234, -0.922091, -0.214276,
		-0.446378, -0.347605, 0.824571,
		40.405346, 33.312271, 32.314350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.227547, 33.156761, 31.403475>,  <40.717812, 33.555595, 31.737150>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.227547, 33.156761, 31.403475> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.133869, 33.141262, 31.792042>,  <40.077663, 33.131962, 32.025181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.133869, 33.141262, 31.792042>,  <40.227547, 33.156761, 31.403475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.133869, 33.141262, 31.792042> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.905475, -0.355074, -0.232457,
		0.353932, -0.934035, 0.048072,
		-0.234192, -0.038746, 0.971418,
		40.063610, 33.129639, 32.083466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.016426, 32.508945, 31.458828>,  <40.227547, 33.156761, 31.403475>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.016426, 32.508945, 31.458828> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.875206, 32.727730, 31.762457>,  <39.790474, 32.859001, 31.944633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.875206, 32.727730, 31.762457>,  <40.016426, 32.508945, 31.458828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.875206, 32.727730, 31.762457> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.935530, -0.216514, -0.279115,
		0.011685, -0.808676, 0.588138,
		-0.353053, 0.546959, 0.759071,
		39.769291, 32.891819, 31.990179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.597214, 32.065887, 31.798986>,  <40.016426, 32.508945, 31.458828>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.597214, 32.065887, 31.798986> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.488022, 32.442009, 31.880291>,  <39.422504, 32.667683, 31.929073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.488022, 32.442009, 31.880291>,  <39.597214, 32.065887, 31.798986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.488022, 32.442009, 31.880291> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918819, -0.192234, -0.344700,
		-0.285048, -0.280855, 0.916443,
		-0.272983, 0.940301, 0.203259,
		39.406128, 32.724098, 31.941269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.989807, 31.990705, 32.203640>,  <39.597214, 32.065887, 31.798986>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.989807, 31.990705, 32.203640> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.966942, 32.362793, 32.058628>,  <38.953224, 32.586044, 31.971621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.966942, 32.362793, 32.058628>,  <38.989807, 31.990705, 32.203640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.966942, 32.362793, 32.058628> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.985334, -0.111043, -0.129563,
		-0.160778, 0.349807, 0.922922,
		-0.057162, 0.930218, -0.362530,
		38.949795, 32.641857, 31.949869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.305202, 32.344509, 32.464844>,  <38.989807, 31.990705, 32.203640>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.305202, 32.344509, 32.464844> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.391018, 32.582039, 32.154659>,  <38.442509, 32.724556, 31.968548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.391018, 32.582039, 32.154659>,  <38.305202, 32.344509, 32.464844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.391018, 32.582039, 32.154659> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.976451, 0.148876, -0.156141,
		0.022728, 0.790702, 0.611779,
		0.214540, 0.593823, -0.775465,
		38.455379, 32.760185, 31.922020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.910942, 32.987774, 32.472401>,  <38.305202, 32.344509, 32.464844>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.910942, 32.987774, 32.472401> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.011467, 32.978031, 32.085361>,  <38.071781, 32.972187, 31.853138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.011467, 32.978031, 32.085361>,  <37.910942, 32.987774, 32.472401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.011467, 32.978031, 32.085361> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.917403, 0.312702, -0.246147,
		0.308566, 0.949539, 0.056241,
		0.251313, -0.024357, -0.967599,
		38.086861, 32.970722, 31.795082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.788261, 39.898945, 41.672466> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676010, 39.527443, 41.575592>,  <37.608658, 39.304543, 41.517467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676010, 39.527443, 41.575592>,  <37.788261, 39.898945, 41.672466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.676010, 39.527443, 41.575592> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596061, 0.029138, -0.802410,
		0.752303, -0.369538, 0.545420,
		-0.280629, -0.928759, -0.242188,
		37.591820, 39.248814, 41.502937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.414604, 39.476234, 41.581429>,  <37.788261, 39.898945, 41.672466>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.414604, 39.476234, 41.581429> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.160561, 39.245960, 41.375427>,  <38.008137, 39.107796, 41.251827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.160561, 39.245960, 41.375427>,  <38.414604, 39.476234, 41.581429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.160561, 39.245960, 41.375427> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711002, -0.175150, -0.681028,
		0.301859, -0.798689, 0.520555,
		-0.635104, -0.575690, -0.514999,
		37.970028, 39.073254, 41.220928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.738411, 38.896389, 41.481098>,  <38.414604, 39.476234, 41.581429>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.738411, 38.896389, 41.481098> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.465420, 38.947468, 41.193233>,  <38.301624, 38.978115, 41.020515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.465420, 38.947468, 41.193233>,  <38.738411, 38.896389, 41.481098>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.465420, 38.947468, 41.193233> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702512, -0.157179, -0.694098,
		-0.201749, -0.979280, 0.017565,
		-0.682477, 0.127695, -0.719666,
		38.260677, 38.985775, 40.977333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.982819, 38.447838, 41.121490>,  <38.738411, 38.896389, 41.481098>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.982819, 38.447838, 41.121490> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.726681, 38.629284, 40.873558>,  <38.572998, 38.738152, 40.724796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.726681, 38.629284, 40.873558>,  <38.982819, 38.447838, 41.121490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.726681, 38.629284, 40.873558> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573476, -0.254484, -0.778693,
		-0.510962, -0.854093, -0.097178,
		-0.640346, 0.453612, -0.619834,
		38.534576, 38.765366, 40.687607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.804695, 37.870880, 40.601856>,  <38.982819, 38.447838, 41.121490>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.804695, 37.870880, 40.601856> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.717186, 38.239265, 40.472881>,  <38.664680, 38.460297, 40.395496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.717186, 38.239265, 40.472881>,  <38.804695, 37.870880, 40.601856>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.717186, 38.239265, 40.472881> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568568, -0.148233, -0.809171,
		-0.793012, -0.360354, -0.491200,
		-0.218776, 0.920962, -0.322437,
		38.651554, 38.515553, 40.376152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.644371, 37.766430, 39.901493>,  <38.804695, 37.870880, 40.601856>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.644371, 37.766430, 39.901493> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737278, 38.155468, 39.897320>,  <38.793022, 38.388889, 39.894814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737278, 38.155468, 39.897320>,  <38.644371, 37.766430, 39.901493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.737278, 38.155468, 39.897320> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494959, -0.127426, -0.859522,
		-0.837297, 0.194476, -0.510992,
		0.232270, 0.972595, -0.010436,
		38.806957, 38.447247, 39.894188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.542915, 37.996094, 39.162624>,  <38.644371, 37.766430, 39.901493>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.542915, 37.996094, 39.162624> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.753105, 38.294746, 39.325802>,  <38.879219, 38.473938, 39.423706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.753105, 38.294746, 39.325802>,  <38.542915, 37.996094, 39.162624>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.753105, 38.294746, 39.325802> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627926, -0.016805, -0.778091,
		-0.574091, 0.665027, -0.477659,
		0.525479, 0.746630, 0.407941,
		38.910748, 38.518734, 39.448185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.648003, 38.502460, 38.680519>,  <38.542915, 37.996094, 39.162624>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.648003, 38.502460, 38.680519> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.943436, 38.594223, 38.934090>,  <39.120697, 38.649281, 39.086231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.943436, 38.594223, 38.934090>,  <38.648003, 38.502460, 38.680519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.943436, 38.594223, 38.934090> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636033, 0.074645, -0.768043,
		-0.223517, 0.970463, -0.090782,
		0.738582, 0.229411, 0.633930,
		39.165009, 38.663048, 39.124268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.989067, 38.988583, 38.343887>,  <38.648003, 38.502460, 38.680519>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.989067, 38.988583, 38.343887> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.230949, 38.821651, 38.615231>,  <39.376080, 38.721493, 38.778038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.230949, 38.821651, 38.615231>,  <38.989067, 38.988583, 38.343887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.230949, 38.821651, 38.615231> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754784, 0.028408, -0.655358,
		0.254226, 0.908313, 0.332169,
		0.604706, -0.417325, 0.678359,
		39.412361, 38.696453, 38.818737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.654202, 39.397511, 38.235203>,  <38.989067, 38.988583, 38.343887>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.654202, 39.397511, 38.235203> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.762108, 39.065556, 38.430550>,  <39.826851, 38.866383, 38.547760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.762108, 39.065556, 38.430550>,  <39.654202, 39.397511, 38.235203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.762108, 39.065556, 38.430550> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784389, -0.104789, -0.611354,
		0.558533, 0.547995, 0.622689,
		0.269768, -0.829892, 0.488370,
		39.843037, 38.816589, 38.577061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.417168, 39.349186, 38.137230>,  <39.654202, 39.397511, 38.235203>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.417168, 39.349186, 38.137230> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.331112, 38.972507, 38.240707>,  <40.279480, 38.746502, 38.302795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.331112, 38.972507, 38.240707>,  <40.417168, 39.349186, 38.137230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.331112, 38.972507, 38.240707> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597440, -0.336455, -0.727917,
		0.772517, -0.002046, 0.634991,
		-0.215135, -0.941697, 0.258695,
		40.266571, 38.689999, 38.318317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.958828, 38.962547, 38.148338>,  <40.417168, 39.349186, 38.137230>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.958828, 38.962547, 38.148338> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.673641, 38.691662, 38.075615>,  <40.502529, 38.529129, 38.031982>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.673641, 38.691662, 38.075615>,  <40.958828, 38.962547, 38.148338>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.673641, 38.691662, 38.075615> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550787, -0.380423, -0.742908,
		0.433944, -0.629809, 0.644231,
		-0.712970, -0.677214, -0.181808,
		40.459751, 38.488499, 38.021072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.293434, 38.302547, 38.020203>,  <40.958828, 38.962547, 38.148338>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.293434, 38.302547, 38.020203> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.931587, 38.247578, 37.858822>,  <40.714478, 38.214596, 37.761993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.931587, 38.247578, 37.858822>,  <41.293434, 38.302547, 38.020203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.931587, 38.247578, 37.858822> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422581, -0.412588, -0.806968,
		-0.055564, -0.900492, 0.431308,
		-0.904620, -0.137424, -0.403456,
		40.660202, 38.206352, 37.737785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.147938, 37.546997, 37.753510>,  <41.293434, 38.302547, 38.020203>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.147938, 37.546997, 37.753510> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.940071, 37.829754, 37.561573>,  <40.815350, 37.999409, 37.446411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.940071, 37.829754, 37.561573>,  <41.147938, 37.546997, 37.753510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.940071, 37.829754, 37.561573> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267674, -0.398651, -0.877170,
		-0.811355, -0.584278, 0.017948,
		-0.519666, 0.706893, -0.479844,
		40.784172, 38.041821, 37.417622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.337437, 36.842411, 38.034321>,  <41.147938, 37.546997, 37.753510>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.337437, 36.842411, 38.034321> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.490124, 36.488873, 38.142475>,  <41.581738, 36.276749, 38.207367>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.490124, 36.488873, 38.142475>,  <41.337437, 36.842411, 38.034321>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.490124, 36.488873, 38.142475> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572686, 0.003446, 0.819767,
		-0.725479, -0.467767, -0.504851,
		0.381720, -0.883845, 0.270384,
		41.604641, 36.223721, 38.223591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.749489, 36.428555, 38.154510>,  <41.337437, 36.842411, 38.034321>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.749489, 36.428555, 38.154510> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.059967, 36.275387, 38.354870>,  <41.246254, 36.183487, 38.475086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.059967, 36.275387, 38.354870>,  <40.749489, 36.428555, 38.154510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.059967, 36.275387, 38.354870> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559619, -0.052453, 0.827089,
		-0.290434, -0.922292, -0.255002,
		0.776193, -0.382918, 0.500898,
		41.292824, 36.160511, 38.505138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.481693, 35.863235, 38.515049>,  <40.749489, 36.428555, 38.154510>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.481693, 35.863235, 38.515049> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.826546, 35.926605, 38.707561>,  <41.033459, 35.964626, 38.823067>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.826546, 35.926605, 38.707561>,  <40.481693, 35.863235, 38.515049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.826546, 35.926605, 38.707561> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465092, -0.129446, 0.875747,
		0.201041, -0.978849, -0.037917,
		0.862132, 0.158427, 0.481279,
		41.085186, 35.974133, 38.851944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.584972, 35.301937, 39.088070>,  <40.481693, 35.863235, 38.515049>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.584972, 35.301937, 39.088070> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.798347, 35.622364, 39.196686>,  <40.926373, 35.814621, 39.261856>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.798347, 35.622364, 39.196686>,  <40.584972, 35.301937, 39.088070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.798347, 35.622364, 39.196686> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301687, -0.119722, 0.945861,
		0.790206, -0.586480, 0.177807,
		0.533441, 0.801067, 0.271538,
		40.958382, 35.862682, 39.278149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.725712, 35.165089, 39.780819>,  <40.584972, 35.301937, 39.088070>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.725712, 35.165089, 39.780819> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.803074, 35.555912, 39.745159>,  <40.849491, 35.790405, 39.723763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.803074, 35.555912, 39.745159>,  <40.725712, 35.165089, 39.780819>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.803074, 35.555912, 39.745159> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236898, 0.134685, 0.962153,
		0.952089, -0.164964, 0.257513,
		0.193404, 0.977060, -0.089152,
		40.861095, 35.849030, 39.718414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.077381, 35.294159, 40.480457>,  <40.725712, 35.165089, 39.780819>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.077381, 35.294159, 40.480457> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.900082, 35.625916, 40.344437>,  <40.793701, 35.824970, 40.262825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.900082, 35.625916, 40.344437>,  <41.077381, 35.294159, 40.480457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.900082, 35.625916, 40.344437> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491331, 0.092498, 0.866047,
		0.749749, 0.550953, 0.366507,
		-0.443250, 0.829394, -0.340051,
		40.767105, 35.874733, 40.242420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.967907, 35.698181, 41.019886>,  <41.077381, 35.294159, 40.480457>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.967907, 35.698181, 41.019886> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.712807, 35.876667, 40.768757>,  <40.559746, 35.983761, 40.618080>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.712807, 35.876667, 40.768757>,  <40.967907, 35.698181, 41.019886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.712807, 35.876667, 40.768757> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492162, 0.390918, 0.777792,
		0.592492, 0.805029, -0.029698,
		-0.637754, 0.446219, -0.627820,
		40.521481, 36.010532, 40.580410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.762535, 36.286446, 41.455467>,  <40.967907, 35.698181, 41.019886>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.762535, 36.286446, 41.455467> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.497204, 36.226364, 41.162228>,  <40.338005, 36.190315, 40.986282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.497204, 36.226364, 41.162228>,  <40.762535, 36.286446, 41.455467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.497204, 36.226364, 41.162228> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748281, 0.144207, 0.647518,
		0.008457, 0.978081, -0.208053,
		-0.663328, -0.150206, -0.733099,
		40.298206, 36.181301, 40.942299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.312840, 36.796387, 41.554024>,  <40.762535, 36.286446, 41.455467>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.312840, 36.796387, 41.554024> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.096775, 36.533230, 41.344105>,  <39.967136, 36.375336, 41.218155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.096775, 36.533230, 41.344105>,  <40.312840, 36.796387, 41.554024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.096775, 36.533230, 41.344105> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752085, 0.097557, 0.651806,
		-0.377620, 0.746767, -0.547487,
		-0.540159, -0.657891, -0.524793,
		39.934727, 36.335861, 41.186668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.655460, 37.080559, 41.594887>,  <40.312840, 36.796387, 41.554024>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.655460, 37.080559, 41.594887> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.590073, 36.699142, 41.493656>,  <39.550838, 36.470295, 41.432919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.590073, 36.699142, 41.493656>,  <39.655460, 37.080559, 41.594887>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.590073, 36.699142, 41.493656> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761020, -0.041358, 0.647408,
		-0.627794, 0.298425, -0.718900,
		-0.163471, -0.953537, -0.253072,
		39.541031, 36.413082, 41.417736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.964355, 37.061226, 41.481743>,  <39.655460, 37.080559, 41.594887>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.964355, 37.061226, 41.481743> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.095921, 36.693222, 41.566975>,  <39.174858, 36.472420, 41.618114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.095921, 36.693222, 41.566975>,  <38.964355, 37.061226, 41.481743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.095921, 36.693222, 41.566975> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761151, -0.124712, 0.636472,
		-0.558986, -0.371526, -0.741284,
		0.328913, -0.920008, 0.213075,
		39.194595, 36.417221, 41.630898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.438309, 36.680073, 41.515926>,  <38.964355, 37.061226, 41.481743>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.438309, 36.680073, 41.515926> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.696671, 36.509007, 41.768883>,  <38.851685, 36.406364, 41.920654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.696671, 36.509007, 41.768883>,  <38.438309, 36.680073, 41.515926>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.696671, 36.509007, 41.768883> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666909, 0.087059, 0.740036,
		-0.371545, -0.899733, -0.228985,
		0.645900, -0.427669, 0.632386,
		38.890442, 36.380707, 41.958599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.012093, 36.384979, 41.925053>,  <38.438309, 36.680073, 41.515926>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.012093, 36.384979, 41.925053> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360386, 36.321743, 42.111309>,  <38.569363, 36.283802, 42.223064>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360386, 36.321743, 42.111309>,  <38.012093, 36.384979, 41.925053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.360386, 36.321743, 42.111309> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484950, -0.119127, 0.866391,
		-0.081496, -0.980213, -0.180393,
		0.870737, -0.158089, 0.465645,
		38.621605, 36.274315, 42.251003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.892967, 35.807911, 42.341713>,  <38.012093, 36.384979, 41.925053>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.892967, 35.807911, 42.341713> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.209507, 35.995827, 42.498207>,  <38.399429, 36.108574, 42.592102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.209507, 35.995827, 42.498207>,  <37.892967, 35.807911, 42.341713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.209507, 35.995827, 42.498207> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385176, -0.113843, 0.915794,
		0.474767, -0.875409, 0.090861,
		0.791350, 0.469786, 0.391235,
		38.446911, 36.136765, 42.615578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.097843, 35.214775, 41.986500>,  <37.892967, 35.807911, 42.341713>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.097843, 35.214775, 41.986500> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.961861, 34.852665, 42.088406>,  <37.880272, 34.635399, 42.149548>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.961861, 34.852665, 42.088406>,  <38.097843, 35.214775, 41.986500>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.961861, 34.852665, 42.088406> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286055, -0.357601, -0.888985,
		0.895879, -0.229343, 0.380529,
		-0.339960, -0.905275, 0.254763,
		37.859871, 34.581081, 42.164833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.589493, 34.710117, 41.746605>,  <38.097843, 35.214775, 41.986500>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.589493, 34.710117, 41.746605> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226799, 34.543468, 41.772697>,  <38.009182, 34.443478, 41.788353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226799, 34.543468, 41.772697>,  <38.589493, 34.710117, 41.746605>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.226799, 34.543468, 41.772697> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041943, -0.243021, -0.969114,
		0.419609, -0.875994, 0.237830,
		-0.906735, -0.416625, 0.065232,
		37.954777, 34.418480, 41.792267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.630642, 33.889656, 41.702560>,  <38.589493, 34.710117, 41.746605>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.630642, 33.889656, 41.702560> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.327583, 34.083649, 41.527855>,  <38.145748, 34.200043, 41.423031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.327583, 34.083649, 41.527855>,  <38.630642, 33.889656, 41.702560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.327583, 34.083649, 41.527855> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233172, -0.423904, -0.875178,
		-0.609591, -0.764918, 0.208086,
		-0.757648, 0.484980, -0.436765,
		38.100288, 34.229141, 41.396824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.699722, 33.655380, 41.000656>,  <38.630642, 33.889656, 41.702560>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.699722, 33.655380, 41.000656> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.373932, 33.887218, 41.011246>,  <38.178459, 34.026321, 41.017601>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.373932, 33.887218, 41.011246>,  <38.699722, 33.655380, 41.000656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.373932, 33.887218, 41.011246> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119259, -0.122583, -0.985267,
		-0.567807, -0.805634, 0.168963,
		-0.814477, 0.579592, 0.026476,
		38.129589, 34.061096, 41.019188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288849, 33.268967, 40.554111>,  <38.699722, 33.655380, 41.000656>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.288849, 33.268967, 40.554111> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.136368, 33.638184, 40.574825>,  <38.044880, 33.859715, 40.587254>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.136368, 33.638184, 40.574825>,  <38.288849, 33.268967, 40.554111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.136368, 33.638184, 40.574825> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340970, -0.088311, -0.935917,
		-0.859316, -0.374431, 0.348393,
		-0.381203, 0.923040, 0.051783,
		38.022007, 33.915096, 40.590359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.648502, 33.237602, 40.300213>,  <38.288849, 33.268967, 40.554111>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.648502, 33.237602, 40.300213> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.739494, 33.624435, 40.254620>,  <37.794090, 33.856537, 40.227264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.739494, 33.624435, 40.254620>,  <37.648502, 33.237602, 40.300213>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.739494, 33.624435, 40.254620> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123779, -0.087387, -0.988454,
		-0.965883, 0.238967, 0.099826,
		0.227485, 0.967088, -0.113985,
		37.807739, 33.914562, 40.220425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.076233, 33.528858, 40.007256>,  <37.648502, 33.237602, 40.300213>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.076233, 33.528858, 40.007256> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.372414, 33.789841, 39.942722>,  <37.550121, 33.946430, 39.904003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.372414, 33.789841, 39.942722>,  <37.076233, 33.528858, 40.007256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.372414, 33.789841, 39.942722> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327398, 0.140511, -0.934381,
		-0.586978, 0.744682, 0.317656,
		0.740451, 0.652461, -0.161330,
		37.594547, 33.985580, 39.894321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.843792, 33.945740, 39.519913>,  <37.076233, 33.528858, 40.007256>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.843792, 33.945740, 39.519913> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.235069, 34.012550, 39.470535>,  <37.469837, 34.052635, 39.440910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.235069, 34.012550, 39.470535>,  <36.843792, 33.945740, 39.519913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.235069, 34.012550, 39.470535> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143380, 0.113068, -0.983187,
		-0.150259, 0.979448, 0.134550,
		0.978194, 0.167025, -0.123444,
		37.528526, 34.062656, 39.433502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.989105, 34.666161, 39.187668>,  <36.843792, 33.945740, 39.519913>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.989105, 34.666161, 39.187668> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313278, 34.437271, 39.137451>,  <37.507782, 34.299938, 39.107323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313278, 34.437271, 39.137451>,  <36.989105, 34.666161, 39.187668>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.313278, 34.437271, 39.137451> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071341, 0.116301, -0.990648,
		0.581469, 0.811812, 0.053432,
		0.810435, -0.572219, -0.125541,
		37.556408, 34.265606, 39.099789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.259033, 34.961075, 38.592907>,  <36.989105, 34.666161, 39.187668>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.259033, 34.961075, 38.592907> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.434887, 34.604969, 38.640488>,  <37.540401, 34.391304, 38.669037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.434887, 34.604969, 38.640488>,  <37.259033, 34.961075, 38.592907>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.434887, 34.604969, 38.640488> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055367, -0.159051, -0.985717,
		0.896468, 0.426771, -0.119216,
		0.439637, -0.890264, 0.118955,
		37.566776, 34.337891, 38.676174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.740929, 34.861301, 37.974415>,  <37.259033, 34.961075, 38.592907>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.740929, 34.861301, 37.974415> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.701866, 34.494961, 38.130203>,  <37.678429, 34.275158, 38.223675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.701866, 34.494961, 38.130203>,  <37.740929, 34.861301, 37.974415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.701866, 34.494961, 38.130203> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082479, -0.382546, -0.920247,
		0.991797, -0.121987, -0.038182,
		-0.097652, -0.915848, 0.389470,
		37.672569, 34.220207, 38.247044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.213627, 34.329567, 37.675995>,  <37.740929, 34.861301, 37.974415>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.213627, 34.329567, 37.675995> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.896572, 34.128155, 37.813503>,  <37.706341, 34.007305, 37.896008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.896572, 34.128155, 37.813503>,  <38.213627, 34.329567, 37.675995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.896572, 34.128155, 37.813503> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188008, -0.334508, -0.923448,
		0.579983, -0.796592, 0.170475,
		-0.792637, -0.503533, 0.343775,
		37.658779, 33.977097, 37.916637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.484661, 34.209389, 45.683636> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.117615, 34.051796, 45.662647>,  <37.897385, 33.957241, 45.650055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.117615, 34.051796, 45.662647>,  <38.484661, 34.209389, 45.683636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.117615, 34.051796, 45.662647> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084867, -0.065257, -0.994253,
		0.388295, -0.916798, 0.093317,
		-0.917619, -0.393983, -0.052467,
		37.842331, 33.933601, 45.646908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.460358, 33.590595, 45.177696>,  <38.484661, 34.209389, 45.683636>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.460358, 33.590595, 45.177696> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.084370, 33.721939, 45.214859>,  <37.858776, 33.800747, 45.237156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.084370, 33.721939, 45.214859>,  <38.460358, 33.590595, 45.177696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.084370, 33.721939, 45.214859> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099571, -0.003493, -0.995024,
		-0.326405, -0.944545, 0.035979,
		-0.939971, 0.328363, 0.092909,
		37.802380, 33.820450, 45.242733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.107719, 33.248821, 44.635174>,  <38.460358, 33.590595, 45.177696>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.107719, 33.248821, 44.635174> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.843475, 33.534004, 44.729229>,  <37.684929, 33.705112, 44.785660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.843475, 33.534004, 44.729229>,  <38.107719, 33.248821, 44.635174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.843475, 33.534004, 44.729229> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259374, 0.077165, -0.962689,
		-0.704500, -0.696949, 0.133946,
		-0.660609, 0.712957, 0.235133,
		37.645294, 33.747890, 44.799770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.608383, 33.140587, 44.199501>,  <38.107719, 33.248821, 44.635174>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.608383, 33.140587, 44.199501> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.529331, 33.513954, 44.319279>,  <37.481899, 33.737976, 44.391148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.529331, 33.513954, 44.319279>,  <37.608383, 33.140587, 44.199501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.529331, 33.513954, 44.319279> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080187, 0.289054, -0.953948,
		-0.976991, -0.212541, 0.017723,
		-0.197631, 0.933420, 0.299447,
		37.470043, 33.793980, 44.409111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.104233, 33.357426, 43.856449>,  <37.608383, 33.140587, 44.199501>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.104233, 33.357426, 43.856449> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.271732, 33.699329, 43.979107>,  <37.372231, 33.904472, 44.052700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.271732, 33.699329, 43.979107>,  <37.104233, 33.357426, 43.856449>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.271732, 33.699329, 43.979107> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060789, 0.363304, -0.929686,
		-0.906066, 0.370662, 0.204092,
		0.418746, 0.854763, 0.306645,
		37.397358, 33.955757, 44.071102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.691841, 33.852806, 43.526779>,  <37.104233, 33.357426, 43.856449>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.691841, 33.852806, 43.526779> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.034950, 34.027870, 43.634617>,  <37.240814, 34.132908, 43.699318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.034950, 34.027870, 43.634617>,  <36.691841, 33.852806, 43.526779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.034950, 34.027870, 43.634617> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137141, 0.310616, -0.940590,
		-0.495398, 0.843785, 0.206417,
		0.857772, 0.437658, 0.269596,
		37.292282, 34.159168, 43.715496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.643864, 34.593674, 43.230305>,  <36.691841, 33.852806, 43.526779>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.643864, 34.593674, 43.230305> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.029282, 34.514908, 43.302753>,  <37.260532, 34.467648, 43.346222>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.029282, 34.514908, 43.302753>,  <36.643864, 34.593674, 43.230305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.029282, 34.514908, 43.302753> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216266, 0.174687, -0.960580,
		0.157512, 0.964733, 0.210905,
		0.963545, -0.196914, 0.181123,
		37.318344, 34.455833, 43.357090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.924801, 35.103504, 42.984329>,  <36.643864, 34.593674, 43.230305>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.924801, 35.103504, 42.984329> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.193680, 34.807503, 42.974979>,  <37.355007, 34.629902, 42.969368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.193680, 34.807503, 42.974979>,  <36.924801, 35.103504, 42.984329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.193680, 34.807503, 42.974979> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250746, 0.257249, -0.933247,
		0.696615, 0.621468, 0.358475,
		0.672200, -0.740000, -0.023373,
		37.395340, 34.585503, 42.967968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.500862, 35.286728, 42.670170>,  <36.924801, 35.103504, 42.984329>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.500862, 35.286728, 42.670170> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.545753, 34.889774, 42.649841>,  <37.572689, 34.651604, 42.637646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.545753, 34.889774, 42.649841>,  <37.500862, 35.286728, 42.670170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.545753, 34.889774, 42.649841> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184216, 0.071037, -0.980316,
		0.976458, 0.100658, 0.190785,
		0.112229, -0.992382, -0.050821,
		37.579422, 34.592060, 42.634594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.222660, 35.358234, 42.886818>,  <37.500862, 35.286728, 42.670170>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.222660, 35.358234, 42.886818> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.329487, 35.737892, 42.953514>,  <38.393581, 35.965687, 42.993530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.329487, 35.737892, 42.953514>,  <38.222660, 35.358234, 42.886818>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.329487, 35.737892, 42.953514> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097231, -0.145601, 0.984554,
		0.958760, -0.279155, 0.053401,
		0.267068, 0.949143, 0.166739,
		38.409607, 36.022636, 43.003536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.677502, 35.332218, 43.458282>,  <38.222660, 35.358234, 42.886818>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.677502, 35.332218, 43.458282> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.543163, 35.708649, 43.442398>,  <38.462559, 35.934509, 43.432869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.543163, 35.708649, 43.442398>,  <38.677502, 35.332218, 43.458282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.543163, 35.708649, 43.442398> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003357, 0.040959, 0.999155,
		0.941910, 0.335698, -0.010597,
		-0.335849, 0.941079, -0.039707,
		38.442410, 35.990971, 43.430485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.134178, 35.749344, 43.811527>,  <38.677502, 35.332218, 43.458282>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.134178, 35.749344, 43.811527> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.809654, 35.982719, 43.826393>,  <38.614941, 36.122746, 43.835312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.809654, 35.982719, 43.826393>,  <39.134178, 35.749344, 43.811527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.809654, 35.982719, 43.826393> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108458, 0.087733, 0.990222,
		0.574471, 0.807406, -0.134457,
		-0.811307, 0.583437, 0.037169,
		38.566261, 36.157749, 43.837543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.375389, 36.122311, 44.331928>,  <39.134178, 35.749344, 43.811527>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.375389, 36.122311, 44.331928> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.986637, 36.206837, 44.290352>,  <38.753387, 36.257553, 44.265408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.986637, 36.206837, 44.290352>,  <39.375389, 36.122311, 44.331928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.986637, 36.206837, 44.290352> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088777, 0.080037, 0.992831,
		0.218114, 0.974137, -0.059026,
		-0.971877, 0.211311, -0.103938,
		38.695072, 36.270229, 44.259171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.234333, 36.757248, 44.649147>,  <39.375389, 36.122311, 44.331928>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.234333, 36.757248, 44.649147> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.878410, 36.574745, 44.652405>,  <38.664856, 36.465244, 44.654362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.878410, 36.574745, 44.652405>,  <39.234333, 36.757248, 44.649147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.878410, 36.574745, 44.652405> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045830, 0.107114, 0.993190,
		-0.454027, 0.883375, -0.116221,
		-0.889808, -0.456262, 0.008147,
		38.611469, 36.437866, 44.654850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.813915, 37.204124, 45.111572>,  <39.234333, 36.757248, 44.649147>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.813915, 37.204124, 45.111572> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.648716, 36.840633, 45.087391>,  <38.549599, 36.622540, 45.072880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.648716, 36.840633, 45.087391>,  <38.813915, 37.204124, 45.111572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.648716, 36.840633, 45.087391> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216846, 0.033643, 0.975626,
		-0.884541, 0.416039, -0.210948,
		-0.412995, -0.908724, -0.060458,
		38.524818, 36.568016, 45.069252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.317932, 37.202663, 45.559601>,  <38.813915, 37.204124, 45.111572>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.317932, 37.202663, 45.559601> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.349407, 36.805721, 45.521587>,  <38.368294, 36.567554, 45.498779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.349407, 36.805721, 45.521587>,  <38.317932, 37.202663, 45.559601>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.349407, 36.805721, 45.521587> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303202, -0.114640, 0.946005,
		-0.949672, -0.045624, -0.309906,
		0.078688, -0.992359, -0.095037,
		38.373013, 36.508015, 45.493076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.729286, 36.989574, 45.876945>,  <38.317932, 37.202663, 45.559601>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.729286, 36.989574, 45.876945> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.987949, 36.685108, 45.896790>,  <38.143147, 36.502426, 45.908695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.987949, 36.685108, 45.896790>,  <37.729286, 36.989574, 45.876945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.987949, 36.685108, 45.896790> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159020, -0.070918, 0.984725,
		-0.746023, -0.644665, -0.166900,
		0.646654, -0.761168, 0.049608,
		38.181946, 36.456757, 45.911671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.420063, 36.461597, 46.277470>,  <37.729286, 36.989574, 45.876945>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.420063, 36.461597, 46.277470> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.808746, 36.367977, 46.290077>,  <38.041958, 36.311806, 46.297642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.808746, 36.367977, 46.290077>,  <37.420063, 36.461597, 46.277470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.808746, 36.367977, 46.290077> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081590, -0.207472, 0.974833,
		-0.221645, -0.949824, -0.220700,
		0.971708, -0.234073, 0.031511,
		38.100262, 36.297760, 46.299534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.474430, 35.803436, 46.545288>,  <37.420063, 36.461597, 46.277470>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.474430, 35.803436, 46.545288> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.829506, 35.981461, 46.592499>,  <38.042553, 36.088276, 46.620823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.829506, 35.981461, 46.592499>,  <37.474430, 35.803436, 46.545288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.829506, 35.981461, 46.592499> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039047, -0.182636, 0.982405,
		0.458786, -0.876678, -0.144746,
		0.887688, 0.445062, 0.118023,
		38.095814, 36.114979, 46.627907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.696503, 35.431194, 47.010727>,  <37.474430, 35.803436, 46.545288>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.696503, 35.431194, 47.010727> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.942188, 35.746731, 47.019344>,  <38.089600, 35.936054, 47.024513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.942188, 35.746731, 47.019344>,  <37.696503, 35.431194, 47.010727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.942188, 35.746731, 47.019344> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004715, -0.030965, 0.999509,
		0.789124, -0.613813, -0.022739,
		0.614216, 0.788844, 0.021541,
		38.126453, 35.983383, 47.025806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.248264, 35.334820, 47.388111>,  <37.696503, 35.431194, 47.010727>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.248264, 35.334820, 47.388111> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.230232, 35.733868, 47.408966>,  <38.219414, 35.973297, 47.421478>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.230232, 35.733868, 47.408966>,  <38.248264, 35.334820, 47.388111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.230232, 35.733868, 47.408966> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022245, -0.053180, 0.998337,
		0.998735, 0.043848, 0.024589,
		-0.045083, 0.997622, 0.052137,
		38.216709, 36.033154, 47.424606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.712162, 35.535774, 47.951237>,  <38.248264, 35.334820, 47.388111>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.712162, 35.535774, 47.951237> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.503098, 35.871010, 47.888721>,  <38.377659, 36.072151, 47.851212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.503098, 35.871010, 47.888721>,  <38.712162, 35.535774, 47.951237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.503098, 35.871010, 47.888721> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213502, 0.048810, 0.975722,
		0.825372, 0.543344, 0.153423,
		-0.522664, 0.838090, -0.156292,
		38.346298, 36.122437, 47.841835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.936382, 36.069290, 48.525375>,  <38.712162, 35.535774, 47.951237>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.936382, 36.069290, 48.525375> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.593498, 36.231144, 48.397964>,  <38.387768, 36.328259, 48.321518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.593498, 36.231144, 48.397964>,  <38.936382, 36.069290, 48.525375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.593498, 36.231144, 48.397964> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224678, 0.262694, 0.938356,
		0.463369, 0.875934, -0.134271,
		-0.857210, 0.404638, -0.318527,
		38.336334, 36.352535, 48.302406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.639084, 33.542866, 45.049809> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.938465, 33.703415, 45.260979>,  <33.118095, 33.799744, 45.387680>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.938465, 33.703415, 45.260979>,  <32.639084, 33.542866, 45.049809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.938465, 33.703415, 45.260979> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513430, 0.153167, -0.844352,
		-0.419763, 0.903016, -0.091439,
		0.748458, 0.401375, 0.527929,
		33.163002, 33.823826, 45.419357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.773445, 34.278393, 44.757317>,  <32.639084, 33.542866, 45.049809>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.773445, 34.278393, 44.757317> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.084801, 34.120914, 44.952915>,  <33.271614, 34.026428, 45.070274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.084801, 34.120914, 44.952915>,  <32.773445, 34.278393, 44.757317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.084801, 34.120914, 44.952915> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577839, 0.144850, -0.803194,
		0.245380, 0.907758, 0.340240,
		0.778390, -0.393692, 0.488995,
		33.318317, 34.002808, 45.099613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.288296, 34.765587, 44.603653>,  <32.773445, 34.278393, 44.757317>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.288296, 34.765587, 44.603653> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.450550, 34.418167, 44.717556>,  <33.547901, 34.209717, 44.785900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.450550, 34.418167, 44.717556>,  <33.288296, 34.765587, 44.603653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.450550, 34.418167, 44.717556> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684631, 0.082294, -0.724230,
		0.605593, 0.488727, 0.628015,
		0.405632, -0.868547, 0.284761,
		33.572239, 34.157604, 44.802986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.027004, 34.880997, 44.574108>,  <33.288296, 34.765587, 44.603653>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.027004, 34.880997, 44.574108> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.964424, 34.486530, 44.552208>,  <33.926876, 34.249851, 44.539066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.964424, 34.486530, 44.552208>,  <34.027004, 34.880997, 44.574108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.964424, 34.486530, 44.552208> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637627, -0.058511, -0.768120,
		0.754291, -0.155084, 0.637961,
		-0.156451, -0.986167, -0.054751,
		33.917488, 34.190681, 44.535782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.750332, 34.524364, 44.388805>,  <34.027004, 34.880997, 44.574108>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.750332, 34.524364, 44.388805> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.453617, 34.266289, 44.315605>,  <34.275589, 34.111443, 44.271687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.453617, 34.266289, 44.315605>,  <34.750332, 34.524364, 44.388805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.453617, 34.266289, 44.315605> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352714, -0.143241, -0.924703,
		0.570393, -0.750477, 0.333820,
		-0.741785, -0.645187, -0.183000,
		34.231083, 34.072731, 44.260704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.054371, 34.095692, 43.835712>,  <34.750332, 34.524364, 44.388805>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.054371, 34.095692, 43.835712> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.665081, 34.005066, 43.820171>,  <34.431507, 33.950691, 43.810848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.665081, 34.005066, 43.820171>,  <35.054371, 34.095692, 43.835712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.665081, 34.005066, 43.820171> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076291, -0.158922, -0.984339,
		0.216845, -0.960943, 0.171951,
		-0.973220, -0.226568, -0.038849,
		34.373116, 33.937096, 43.808517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.994244, 33.547600, 43.445431>,  <35.054371, 34.095692, 43.835712>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.994244, 33.547600, 43.445431> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.620029, 33.687649, 43.426739>,  <34.395500, 33.771679, 43.415524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.620029, 33.687649, 43.426739>,  <34.994244, 33.547600, 43.445431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.620029, 33.687649, 43.426739> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046268, -0.009680, -0.998882,
		-0.350180, -0.936655, -0.007144,
		-0.935539, 0.350119, -0.046727,
		34.339367, 33.792683, 43.412720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.632206, 33.232243, 42.881802>,  <34.994244, 33.547600, 43.445431>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.632206, 33.232243, 42.881802> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.417679, 33.562851, 42.950191>,  <34.288963, 33.761215, 42.991226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.417679, 33.562851, 42.950191>,  <34.632206, 33.232243, 42.881802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.417679, 33.562851, 42.950191> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090418, 0.257670, -0.961993,
		-0.839160, -0.500473, -0.212925,
		-0.536316, 0.826518, 0.170975,
		34.256783, 33.810806, 43.001484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.161671, 33.204216, 42.377468>,  <34.632206, 33.232243, 42.881802>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.161671, 33.204216, 42.377468> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.216858, 33.582623, 42.494785>,  <34.249969, 33.809666, 42.565174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.216858, 33.582623, 42.494785>,  <34.161671, 33.204216, 42.377468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.216858, 33.582623, 42.494785> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069501, 0.304640, -0.949929,
		-0.987995, 0.110677, 0.107780,
		0.137969, 0.946015, 0.293291,
		34.258247, 33.866428, 42.582771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.748001, 33.526863, 41.885506>,  <34.161671, 33.204216, 42.377468>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.748001, 33.526863, 41.885506> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.970711, 33.832794, 42.015148>,  <34.104336, 34.016350, 42.092934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.970711, 33.832794, 42.015148>,  <33.748001, 33.526863, 41.885506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.970711, 33.832794, 42.015148> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016975, 0.379624, -0.924985,
		-0.830490, 0.520510, 0.198383,
		0.556775, 0.764823, 0.324110,
		34.137745, 34.062241, 42.112381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.699833, 34.038033, 41.417130>,  <33.748001, 33.526863, 41.885506>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.699833, 34.038033, 41.417130> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.022736, 34.200436, 41.588474>,  <34.216476, 34.297878, 41.691280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.022736, 34.200436, 41.588474>,  <33.699833, 34.038033, 41.417130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.022736, 34.200436, 41.588474> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213513, 0.475736, -0.853280,
		-0.550229, 0.780275, 0.297351,
		0.807254, 0.406012, 0.428363,
		34.264912, 34.322239, 41.716984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.769455, 34.702106, 41.120682>,  <33.699833, 34.038033, 41.417130>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.769455, 34.702106, 41.120682> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.135494, 34.616413, 41.257320>,  <34.355118, 34.564999, 41.339306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.135494, 34.616413, 41.257320>,  <33.769455, 34.702106, 41.120682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.135494, 34.616413, 41.257320> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397730, 0.340241, -0.852084,
		0.066318, 0.915609, 0.396562,
		0.915103, -0.214233, 0.341601,
		34.410027, 34.552143, 41.359802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.196102, 35.209858, 40.840942>,  <33.769455, 34.702106, 41.120682>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.196102, 35.209858, 40.840942> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.483479, 34.953339, 40.948700>,  <34.655907, 34.799427, 41.013355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.483479, 34.953339, 40.948700>,  <34.196102, 35.209858, 40.840942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.483479, 34.953339, 40.948700> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457188, 0.143471, -0.877722,
		0.524231, 0.753759, 0.396270,
		0.718444, -0.641298, 0.269397,
		34.699013, 34.760948, 41.029518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.888966, 35.588837, 40.844055>,  <34.196102, 35.209858, 40.840942>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.888966, 35.588837, 40.844055> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.968670, 35.198868, 40.804401>,  <35.016491, 34.964886, 40.780609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.968670, 35.198868, 40.804401>,  <34.888966, 35.588837, 40.844055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.968670, 35.198868, 40.804401> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444326, 0.180055, -0.877585,
		0.873425, 0.130817, 0.469059,
		0.199259, -0.974919, -0.099139,
		35.028446, 34.906391, 40.774658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.513035, 36.093082, 40.922115>,  <34.888966, 35.588837, 40.844055>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.513035, 36.093082, 40.922115> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.403824, 36.476772, 40.951351>,  <35.338299, 36.706985, 40.968891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.403824, 36.476772, 40.951351>,  <35.513035, 36.093082, 40.922115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.403824, 36.476772, 40.951351> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237361, -0.140796, 0.961164,
		0.932265, 0.245072, 0.266124,
		-0.273024, 0.959227, 0.073089,
		35.321918, 36.764542, 40.973278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.833153, 36.284325, 41.505074>,  <35.513035, 36.093082, 40.922115>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.833153, 36.284325, 41.505074> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.521240, 36.523376, 41.430481>,  <35.334091, 36.666809, 41.385727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.521240, 36.523376, 41.430481>,  <35.833153, 36.284325, 41.505074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.521240, 36.523376, 41.430481> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307323, -0.105910, 0.945693,
		0.545425, 0.794746, 0.266252,
		-0.779785, 0.597630, -0.186478,
		35.287304, 36.702667, 41.374538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.717049, 36.588680, 42.204155>,  <35.833153, 36.284325, 41.505074>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.717049, 36.588680, 42.204155> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.379597, 36.662327, 42.002407>,  <35.177124, 36.706516, 41.881359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.379597, 36.662327, 42.002407>,  <35.717049, 36.588680, 42.204155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.379597, 36.662327, 42.002407> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492283, 0.109763, 0.863487,
		0.214345, 0.976756, -0.001961,
		-0.843631, 0.184119, -0.504368,
		35.126507, 36.717564, 41.851097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.364998, 37.242466, 42.581635>,  <35.717049, 36.588680, 42.204155>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.364998, 37.242466, 42.581635> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.071880, 37.065838, 42.374550>,  <34.896011, 36.959862, 42.250298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.071880, 37.065838, 42.374550>,  <35.364998, 37.242466, 42.581635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.071880, 37.065838, 42.374550> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606987, 0.080327, 0.790642,
		-0.307540, 0.893622, -0.326893,
		-0.732793, -0.441574, -0.517713,
		34.852043, 36.933365, 42.219234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.798859, 37.700397, 42.676769>,  <35.364998, 37.242466, 42.581635>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.798859, 37.700397, 42.676769> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.645733, 37.346069, 42.571873>,  <34.553860, 37.133472, 42.508934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.645733, 37.346069, 42.571873>,  <34.798859, 37.700397, 42.676769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.645733, 37.346069, 42.571873> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703640, 0.095639, 0.704090,
		-0.598620, 0.454058, -0.659913,
		-0.382811, -0.885824, -0.262242,
		34.530891, 37.080322, 42.493198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.127262, 37.840015, 42.659302>,  <34.798859, 37.700397, 42.676769>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.127262, 37.840015, 42.659302> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.190025, 37.447071, 42.699978>,  <34.227684, 37.211304, 42.724384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.190025, 37.447071, 42.699978>,  <34.127262, 37.840015, 42.659302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.190025, 37.447071, 42.699978> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434963, 0.023708, 0.900136,
		-0.886673, -0.185467, -0.423573,
		0.156903, -0.982364, 0.101692,
		34.237095, 37.152363, 42.730484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.514793, 37.464035, 42.887123>,  <34.127262, 37.840015, 42.659302>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.514793, 37.464035, 42.887123> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.762539, 37.159744, 42.964779>,  <33.911186, 36.977169, 43.011372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.762539, 37.159744, 42.964779>,  <33.514793, 37.464035, 42.887123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.762539, 37.159744, 42.964779> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432788, -0.124509, 0.892856,
		-0.655046, -0.637020, -0.406349,
		0.619362, -0.760725, 0.194135,
		33.948349, 36.931526, 43.023018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.136539, 36.932354, 43.137474>,  <33.514793, 37.464035, 42.887123>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.136539, 36.932354, 43.137474> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.501369, 36.848232, 43.278267>,  <33.720268, 36.797760, 43.362743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.501369, 36.848232, 43.278267>,  <33.136539, 36.932354, 43.137474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.501369, 36.848232, 43.278267> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352523, 0.036204, 0.935103,
		-0.209402, -0.976965, -0.041117,
		0.912074, -0.210307, 0.351983,
		33.774990, 36.785141, 43.383862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.976418, 36.378525, 43.562130>,  <33.136539, 36.932354, 43.137474>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.976418, 36.378525, 43.562130> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.312191, 36.549763, 43.696045>,  <33.513657, 36.652508, 43.776394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.312191, 36.549763, 43.696045>,  <32.976418, 36.378525, 43.562130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.312191, 36.549763, 43.696045> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346443, -0.053108, 0.936566,
		0.418722, -0.902171, 0.103731,
		0.839434, 0.428098, 0.334788,
		33.564022, 36.678192, 43.796482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.911804, 36.189407, 44.341507>,  <32.976418, 36.378525, 43.562130>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.911804, 36.189407, 44.341507> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.231419, 36.428719, 44.317505>,  <33.423187, 36.572304, 44.303104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.231419, 36.428719, 44.317505>,  <32.911804, 36.189407, 44.341507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.231419, 36.428719, 44.317505> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049709, 0.033728, 0.998194,
		0.599219, -0.800580, -0.002790,
		0.799040, 0.598276, -0.060007,
		33.471130, 36.608200, 44.299503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.519112, 35.872807, 44.729481>,  <32.911804, 36.189407, 44.341507>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.519112, 35.872807, 44.729481> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.518734, 36.272205, 44.707561>,  <33.518505, 36.511845, 44.694408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.518734, 36.272205, 44.707561>,  <33.519112, 35.872807, 44.729481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.518734, 36.272205, 44.707561> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251476, 0.052800, 0.966422,
		0.967863, 0.014698, 0.251048,
		-0.000949, 0.998497, -0.054800,
		33.518448, 36.571754, 44.691120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.872158, 36.050510, 45.317448>,  <33.519112, 35.872807, 44.729481>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.872158, 36.050510, 45.317448> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.700161, 36.395710, 45.211365>,  <33.596962, 36.602829, 45.147713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.700161, 36.395710, 45.211365>,  <33.872158, 36.050510, 45.317448>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.700161, 36.395710, 45.211365> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209551, 0.190333, 0.959094,
		0.878175, 0.467982, 0.099000,
		-0.429996, 0.862998, -0.265212,
		33.571163, 36.654610, 45.131802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.126278, 36.505161, 45.711006>,  <33.872158, 36.050510, 45.317448>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.126278, 36.505161, 45.711006> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.785870, 36.676872, 45.590019>,  <33.581627, 36.779900, 45.517426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.785870, 36.676872, 45.590019>,  <34.126278, 36.505161, 45.711006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.785870, 36.676872, 45.590019> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228604, 0.215692, 0.949324,
		0.472767, 0.877038, -0.085422,
		-0.851018, 0.429281, -0.302467,
		33.530563, 36.805656, 45.499279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.210724, 37.132435, 45.974602>,  <34.126278, 36.505161, 45.711006>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.210724, 37.132435, 45.974602> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.823982, 37.078190, 45.888069>,  <33.591938, 37.045643, 45.836151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.823982, 37.078190, 45.888069>,  <34.210724, 37.132435, 45.974602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.823982, 37.078190, 45.888069> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240744, 0.201992, 0.949337,
		-0.085045, 0.969953, -0.227945,
		-0.966856, -0.135613, -0.216332,
		33.533924, 37.037506, 45.823170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.283722, 37.858612, 46.018509>,  <34.210724, 37.132435, 45.974602>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.283722, 37.858612, 46.018509> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.527023, 38.149097, 46.146667>,  <34.673004, 38.323387, 46.223560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.527023, 38.149097, 46.146667>,  <34.283722, 37.858612, 46.018509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.527023, 38.149097, 46.146667> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380336, 0.087637, -0.920687,
		-0.696691, 0.681864, -0.222899,
		0.608249, 0.726210, 0.320393,
		34.709499, 38.366962, 46.242786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.247864, 38.364120, 45.526020>,  <34.283722, 37.858612, 46.018509>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.247864, 38.364120, 45.526020> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.596767, 38.434242, 45.708637>,  <34.806110, 38.476315, 45.818207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.596767, 38.434242, 45.708637>,  <34.247864, 38.364120, 45.526020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.596767, 38.434242, 45.708637> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424654, 0.191505, -0.884870,
		-0.242553, 0.965709, 0.092597,
		0.872260, 0.175306, 0.456542,
		34.858444, 38.486835, 45.845600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.594959, 38.834534, 45.001518>,  <34.247864, 38.364120, 45.526020>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.594959, 38.834534, 45.001518> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.881493, 38.691471, 45.241169>,  <35.053413, 38.605633, 45.384960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.881493, 38.691471, 45.241169>,  <34.594959, 38.834534, 45.001518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.881493, 38.691471, 45.241169> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562283, -0.212550, -0.799162,
		0.413167, 0.909344, 0.048845,
		0.716331, -0.357652, 0.599128,
		35.096394, 38.584175, 45.420906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.159508, 39.212749, 44.837337>,  <34.594959, 38.834534, 45.001518>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.159508, 39.212749, 44.837337> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.336948, 38.889439, 44.992210>,  <35.443413, 38.695454, 45.085133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.336948, 38.889439, 44.992210>,  <35.159508, 39.212749, 44.837337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336948, 38.889439, 44.992210> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688393, 0.030671, -0.724689,
		0.573872, 0.588006, 0.570017,
		0.443605, -0.808275, 0.387178,
		35.470028, 38.646957, 45.108364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.879303, 39.315018, 44.889587>,  <35.159508, 39.212749, 44.837337>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.879303, 39.315018, 44.889587> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.790989, 38.928406, 44.837326>,  <35.738003, 38.696438, 44.805969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.790989, 38.928406, 44.837326>,  <35.879303, 39.315018, 44.889587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.790989, 38.928406, 44.837326> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510471, -0.000370, -0.859894,
		0.831068, -0.256543, 0.493469,
		-0.220783, -0.966532, -0.130650,
		35.724754, 38.638447, 44.798130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.361282, 39.188850, 44.534447>,  <35.879303, 39.315018, 44.889587>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.361282, 39.188850, 44.534447> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.171860, 38.836983, 44.516914>,  <36.058205, 38.625862, 44.506393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.171860, 38.836983, 44.516914>,  <36.361282, 39.188850, 44.534447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.171860, 38.836983, 44.516914> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375001, -0.156349, -0.913745,
		0.796942, -0.449148, 0.403918,
		-0.473559, -0.879671, -0.043829,
		36.029793, 38.573082, 44.503765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.851730, 38.708984, 44.272770>,  <36.361282, 39.188850, 44.534447>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.851730, 38.708984, 44.272770> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.505695, 38.521385, 44.201584>,  <36.298077, 38.408825, 44.158875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.505695, 38.521385, 44.201584>,  <36.851730, 38.708984, 44.272770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.505695, 38.521385, 44.201584> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259936, -0.115695, -0.958670,
		0.429026, -0.875588, 0.221995,
		-0.865084, -0.468998, -0.177961,
		36.246170, 38.380684, 44.148197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.934784, 38.030899, 43.863487>,  <36.851730, 38.708984, 44.272770>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.934784, 38.030899, 43.863487> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.567924, 38.170086, 43.785774>,  <36.347809, 38.253597, 43.739147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.567924, 38.170086, 43.785774>,  <36.934784, 38.030899, 43.863487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.567924, 38.170086, 43.785774> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211570, 0.011980, -0.977289,
		-0.337740, -0.937429, -0.084608,
		-0.917153, 0.347970, -0.194286,
		36.292778, 38.274475, 43.727489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.671959, 37.559723, 43.416710>,  <36.934784, 38.030899, 43.863487>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.671959, 37.559723, 43.416710> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.463470, 37.897045, 43.364315>,  <36.338375, 38.099438, 43.332878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.463470, 37.897045, 43.364315>,  <36.671959, 37.559723, 43.416710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.463470, 37.897045, 43.364315> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241814, -0.001257, -0.970322,
		-0.818444, -0.537430, -0.203268,
		-0.521225, 0.843307, -0.130986,
		36.307102, 38.150036, 43.325020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.424438, 37.509457, 42.711601>,  <36.671959, 37.559723, 43.416710>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.424438, 37.509457, 42.711601> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.377003, 37.893379, 42.813358>,  <36.348541, 38.123734, 42.874413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.377003, 37.893379, 42.813358>,  <36.424438, 37.509457, 42.711601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.377003, 37.893379, 42.813358> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462936, 0.280097, -0.840973,
		-0.878423, 0.018042, -0.477543,
		-0.118586, 0.959802, 0.254396,
		36.341427, 38.181320, 42.889679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.165466, 37.830982, 42.108715>,  <36.424438, 37.509457, 42.711601>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.165466, 37.830982, 42.108715> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.278503, 38.152214, 42.318558>,  <36.346325, 38.344952, 42.444462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.278503, 38.152214, 42.318558>,  <36.165466, 37.830982, 42.108715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.278503, 38.152214, 42.318558> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442920, 0.375863, -0.813971,
		-0.850860, 0.462381, -0.249483,
		0.282593, 0.803076, 0.524604,
		36.363281, 38.393135, 42.475941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.915108, 38.392551, 41.782536>,  <36.165466, 37.830982, 42.108715>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.915108, 38.392551, 41.782536> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.247448, 38.509438, 41.971977>,  <36.446854, 38.579567, 42.085640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.247448, 38.509438, 41.971977>,  <35.915108, 38.392551, 41.782536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.247448, 38.509438, 41.971977> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384658, 0.313441, -0.868212,
		-0.402148, 0.903530, 0.148021,
		0.830852, 0.292213, 0.473600,
		36.496704, 38.597103, 42.114056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.164448, 39.160854, 41.608433>,  <35.915108, 38.392551, 41.782536>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.164448, 39.160854, 41.608433> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.496525, 39.034744, 41.792336>,  <36.695770, 38.959076, 41.902676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.496525, 39.034744, 41.792336>,  <36.164448, 39.160854, 41.608433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.496525, 39.034744, 41.792336> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549206, 0.321067, -0.771550,
		0.095642, 0.893037, 0.439702,
		0.830196, -0.315279, 0.459753,
		36.745583, 38.940159, 41.930260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.709068, 39.696117, 41.608124>,  <36.164448, 39.160854, 41.608433>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.709068, 39.696117, 41.608124> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.901440, 39.347843, 41.649345>,  <37.016861, 39.138878, 41.674080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.901440, 39.347843, 41.649345>,  <36.709068, 39.696117, 41.608124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.901440, 39.347843, 41.649345> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451469, 0.145164, -0.880400,
		0.751590, 0.469933, 0.462900,
		0.480925, -0.870684, 0.103056,
		37.045715, 39.086639, 41.680264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.874125, 29.674547, 29.097237> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.629028, 29.413740, 29.275862>,  <26.481970, 29.257256, 29.383038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.629028, 29.413740, 29.275862>,  <26.874125, 29.674547, 29.097237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.629028, 29.413740, 29.275862> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025851, 0.581304, 0.813276,
		-0.789860, 0.486784, -0.373044,
		-0.612741, -0.652018, 0.446565,
		26.445206, 29.218134, 29.409832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.315397, 30.032887, 29.211407>,  <26.874125, 29.674547, 29.097237>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.315397, 30.032887, 29.211407> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.336344, 29.737770, 29.480604>,  <26.348911, 29.560699, 29.642122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.336344, 29.737770, 29.480604>,  <26.315397, 30.032887, 29.211407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.336344, 29.737770, 29.480604> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030724, 0.672411, 0.739540,
		-0.998155, -0.059406, 0.012546,
		0.052369, -0.737791, 0.672995,
		26.352055, 29.516434, 29.682503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.870764, 30.191015, 29.644875>,  <26.315397, 30.032887, 29.211407>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.870764, 30.191015, 29.644875> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.113192, 29.959517, 29.863134>,  <26.258648, 29.820618, 29.994089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.113192, 29.959517, 29.863134>,  <25.870764, 30.191015, 29.644875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.113192, 29.959517, 29.863134> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129064, 0.748457, 0.650503,
		-0.784871, -0.323826, 0.528312,
		0.606069, -0.578748, 0.545648,
		26.295012, 29.785892, 30.026829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.647631, 30.361454, 30.216721>,  <25.870764, 30.191015, 29.644875>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.647631, 30.361454, 30.216721> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.993597, 30.181519, 30.305773>,  <26.201178, 30.073557, 30.359205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.993597, 30.181519, 30.305773>,  <25.647631, 30.361454, 30.216721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.993597, 30.181519, 30.305773> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109022, 0.601350, 0.791512,
		-0.489933, -0.660320, 0.569160,
		0.864916, -0.449840, 0.222632,
		26.253073, 30.046566, 30.372562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.672220, 30.315805, 30.945065>,  <25.647631, 30.361454, 30.216721>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.672220, 30.315805, 30.945065> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.061609, 30.285515, 30.858704>,  <26.295242, 30.267340, 30.806887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.061609, 30.285515, 30.858704>,  <25.672220, 30.315805, 30.945065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.061609, 30.285515, 30.858704> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213645, 0.638533, 0.739345,
		0.081872, -0.765860, 0.637774,
		0.973475, -0.075726, -0.215900,
		26.353651, 30.262796, 30.793934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.037443, 30.299404, 31.574001>,  <25.672220, 30.315805, 30.945065>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.037443, 30.299404, 31.574001> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.334620, 30.401814, 31.326618>,  <26.512926, 30.463259, 31.178188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.334620, 30.401814, 31.326618>,  <26.037443, 30.299404, 31.574001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.334620, 30.401814, 31.326618> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300482, 0.698062, 0.649938,
		0.598121, -0.668701, 0.441690,
		0.742941, 0.256022, -0.618459,
		26.557501, 30.478621, 31.141081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.697989, 30.274096, 31.977102>,  <26.037443, 30.299404, 31.574001>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.697989, 30.274096, 31.977102> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.766258, 30.498186, 31.652876>,  <26.807220, 30.632641, 31.458340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.766258, 30.498186, 31.652876>,  <26.697989, 30.274096, 31.977102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.766258, 30.498186, 31.652876> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226630, 0.778259, 0.585620,
		0.958911, -0.283648, 0.005863,
		0.170673, 0.560229, -0.810565,
		26.817461, 30.666254, 31.409706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.301044, 30.600117, 32.203171>,  <26.697989, 30.274096, 31.977102>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.301044, 30.600117, 32.203171> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.194105, 30.824724, 31.889936>,  <27.129942, 30.959488, 31.701996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.194105, 30.824724, 31.889936>,  <27.301044, 30.600117, 32.203171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.194105, 30.824724, 31.889936> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336201, 0.815954, 0.470306,
		0.903046, -0.137538, -0.406928,
		-0.267350, 0.561518, -0.783085,
		27.113901, 30.993179, 31.655010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.826864, 31.053427, 32.072739>,  <27.301044, 30.600117, 32.203171>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.826864, 31.053427, 32.072739> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.514536, 31.246550, 31.914135>,  <27.327139, 31.362423, 31.818974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.514536, 31.246550, 31.914135>,  <27.826864, 31.053427, 32.072739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.514536, 31.246550, 31.914135> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194826, 0.791181, 0.579720,
		0.593600, 0.375409, -0.711834,
		-0.780822, 0.482805, -0.396505,
		27.280289, 31.391392, 31.795183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.063231, 31.711535, 31.711277>,  <27.826864, 31.053427, 32.072739>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.063231, 31.711535, 31.711277> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.673807, 31.763786, 31.786242>,  <27.440153, 31.795137, 31.831221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.673807, 31.763786, 31.786242>,  <28.063231, 31.711535, 31.711277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.673807, 31.763786, 31.786242> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207663, 0.847937, 0.487729,
		-0.095201, 0.513750, -0.852642,
		-0.973557, 0.130629, 0.187411,
		27.381741, 31.802975, 31.842464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.996187, 32.399258, 31.601370>,  <28.063231, 31.711535, 31.711277>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.996187, 32.399258, 31.601370> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.669382, 32.303780, 31.811327>,  <27.473299, 32.246494, 31.937302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.669382, 32.303780, 31.811327>,  <27.996187, 32.399258, 31.601370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.669382, 32.303780, 31.811327> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031780, 0.890274, 0.454315,
		-0.575742, 0.387862, -0.719780,
		-0.817013, -0.238694, 0.524895,
		27.424278, 32.232170, 31.968796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.580616, 33.033424, 31.762022>,  <27.996187, 32.399258, 31.601370>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.580616, 33.033424, 31.762022> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.412476, 32.785057, 32.026680>,  <27.311592, 32.636036, 32.185474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.412476, 32.785057, 32.026680>,  <27.580616, 33.033424, 31.762022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.412476, 32.785057, 32.026680> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106203, 0.757850, 0.643728,
		-0.901126, 0.200322, -0.384504,
		-0.420349, -0.620915, 0.661643,
		27.286371, 32.598782, 32.225174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.049976, 33.434212, 32.045673>,  <27.580616, 33.033424, 31.762022>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.049976, 33.434212, 32.045673> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.139395, 33.137993, 32.299168>,  <27.193047, 32.960262, 32.451263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.139395, 33.137993, 32.299168>,  <27.049976, 33.434212, 32.045673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.139395, 33.137993, 32.299168> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102283, 0.664419, 0.740328,
		-0.969312, -0.100677, 0.224273,
		0.223546, -0.740548, 0.633731,
		27.206459, 32.915829, 32.489288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.585943, 33.601059, 32.496204>,  <27.049976, 33.434212, 32.045673>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.585943, 33.601059, 32.496204> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.855379, 33.364311, 32.673279>,  <27.017040, 33.222263, 32.779522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.855379, 33.364311, 32.673279>,  <26.585943, 33.601059, 32.496204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.855379, 33.364311, 32.673279> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066145, 0.644814, 0.761472,
		-0.736141, -0.483637, 0.473489,
		0.673588, -0.591870, 0.442683,
		27.057455, 33.186749, 32.806084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.335356, 33.461056, 33.131138>,  <26.585943, 33.601059, 32.496204>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.335356, 33.461056, 33.131138> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.729689, 33.394154, 33.136196>,  <26.966288, 33.354012, 33.139233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.729689, 33.394154, 33.136196>,  <26.335356, 33.461056, 33.131138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.729689, 33.394154, 33.136196> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090108, 0.591673, 0.801127,
		-0.141475, -0.788637, 0.598362,
		0.985833, -0.167256, 0.012644,
		27.025438, 33.343975, 33.139988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.480074, 33.572048, 33.778862>,  <26.335356, 33.461056, 33.131138>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.480074, 33.572048, 33.778862> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.855034, 33.562237, 33.639908>,  <27.080009, 33.556351, 33.556534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.855034, 33.562237, 33.639908>,  <26.480074, 33.572048, 33.778862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.855034, 33.562237, 33.639908> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288728, 0.612480, 0.735869,
		0.194713, -0.790105, 0.581223,
		0.937402, -0.024532, -0.347384,
		27.136255, 33.554878, 33.535694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.818672, 33.533222, 34.316624>,  <26.480074, 33.572048, 33.778862>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.818672, 33.533222, 34.316624> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.099924, 33.668606, 34.066486>,  <27.268675, 33.749836, 33.916405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.099924, 33.668606, 34.066486>,  <26.818672, 33.533222, 34.316624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.099924, 33.668606, 34.066486> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394298, 0.546265, 0.739002,
		0.591724, -0.766186, 0.250642,
		0.703130, 0.338458, -0.625343,
		27.310863, 33.770142, 33.878883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.549259, 33.325287, 34.543324>,  <26.818672, 33.533222, 34.316624>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.549259, 33.325287, 34.543324> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.532713, 33.656345, 34.319435>,  <27.522785, 33.854980, 34.185101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.532713, 33.656345, 34.319435>,  <27.549259, 33.325287, 34.543324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.532713, 33.656345, 34.319435> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326741, 0.540604, 0.775234,
		0.944208, -0.150813, -0.292790,
		-0.041368, 0.827649, -0.559720,
		27.520302, 33.904640, 34.151520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.919559, 33.845901, 34.920319>,  <27.549259, 33.325287, 34.543324>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.919559, 33.845901, 34.920319> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.802135, 34.082306, 34.619778>,  <27.731682, 34.224148, 34.439453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.802135, 34.082306, 34.619778>,  <27.919559, 33.845901, 34.920319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.802135, 34.082306, 34.619778> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136693, 0.803858, 0.578902,
		0.946117, 0.067237, -0.316767,
		-0.293559, 0.591009, -0.751353,
		27.714067, 34.259609, 34.394371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.370722, 34.388130, 35.056812>,  <27.919559, 33.845901, 34.920319>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.370722, 34.388130, 35.056812> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.048544, 34.515724, 34.857010>,  <27.855238, 34.592281, 34.737129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.048544, 34.515724, 34.857010>,  <28.370722, 34.388130, 35.056812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.048544, 34.515724, 34.857010> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026725, 0.822403, 0.568276,
		0.592068, 0.471064, -0.653876,
		-0.805445, 0.318984, -0.499508,
		27.806911, 34.611420, 34.707157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.465534, 35.001400, 35.115269>,  <28.370722, 34.388130, 35.056812>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.465534, 35.001400, 35.115269> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.087816, 35.016403, 34.984486>,  <27.861185, 35.025406, 34.906017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.087816, 35.016403, 34.984486>,  <28.465534, 35.001400, 35.115269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.087816, 35.016403, 34.984486> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155959, 0.823848, 0.544932,
		0.289801, 0.565569, -0.772106,
		-0.944294, 0.037505, -0.326958,
		27.804527, 35.027657, 34.886398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.043522, 35.400322, 34.879608>,  <28.465534, 35.001400, 35.115269>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.043522, 35.400322, 34.879608> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.440580, 35.371902, 34.918819>,  <29.678816, 35.354851, 34.942348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.440580, 35.371902, 34.918819>,  <29.043522, 35.400322, 34.879608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.440580, 35.371902, 34.918819> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077479, -0.249416, -0.965292,
		0.093030, 0.965787, -0.242077,
		0.992644, -0.071045, 0.098032,
		29.738373, 35.350590, 34.948231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.407570, 35.855671, 34.316998>,  <29.043522, 35.400322, 34.879608>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.407570, 35.855671, 34.316998> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.649469, 35.567261, 34.452290>,  <29.794609, 35.394215, 34.533463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.649469, 35.567261, 34.452290>,  <29.407570, 35.855671, 34.316998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.649469, 35.567261, 34.452290> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240053, -0.239907, -0.940648,
		0.759376, 0.650049, 0.028001,
		0.604750, -0.721027, 0.338226,
		29.830894, 35.350952, 34.553757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.957623, 35.984818, 34.104599>,  <29.407570, 35.855671, 34.316998>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.957623, 35.984818, 34.104599> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.967751, 35.589718, 34.166199>,  <29.973827, 35.352657, 34.203159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.967751, 35.589718, 34.166199>,  <29.957623, 35.984818, 34.104599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.967751, 35.589718, 34.166199> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203742, -0.145717, -0.968120,
		0.978697, 0.055891, 0.197556,
		0.025322, -0.987746, 0.154000,
		29.975348, 35.293392, 34.212399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.431578, 35.712677, 33.584282>,  <29.957623, 35.984818, 34.104599>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.431578, 35.712677, 33.584282> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.271051, 35.372463, 33.720249>,  <30.174736, 35.168335, 33.801830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.271051, 35.372463, 33.720249>,  <30.431578, 35.712677, 33.584282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.271051, 35.372463, 33.720249> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172858, -0.434771, -0.883795,
		0.899480, -0.295926, 0.321502,
		-0.401318, -0.850530, 0.339915,
		30.150656, 35.117306, 33.822224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.851900, 35.255650, 33.247360>,  <30.431578, 35.712677, 33.584282>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.851900, 35.255650, 33.247360> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.519230, 35.060829, 33.354015>,  <30.319628, 34.943935, 33.418011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.519230, 35.060829, 33.354015>,  <30.851900, 35.255650, 33.247360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.519230, 35.060829, 33.354015> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009566, -0.467570, -0.883904,
		0.555179, -0.737672, 0.384207,
		-0.831675, -0.487050, 0.266642,
		30.269728, 34.914715, 33.434010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.826653, 34.489319, 33.088505>,  <30.851900, 35.255650, 33.247360>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.826653, 34.489319, 33.088505> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.438046, 34.580250, 33.115276>,  <30.204882, 34.634808, 33.131340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.438046, 34.580250, 33.115276>,  <30.826653, 34.489319, 33.088505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.438046, 34.580250, 33.115276> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155892, -0.400375, -0.902994,
		-0.178481, -0.887705, 0.424410,
		-0.971516, 0.227329, 0.066927,
		30.146591, 34.648449, 33.135353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.477289, 33.882320, 32.984402>,  <30.826653, 34.489319, 33.088505>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.477289, 33.882320, 32.984402> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.208353, 34.171547, 32.920990>,  <30.046991, 34.345081, 32.882942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.208353, 34.171547, 32.920990>,  <30.477289, 33.882320, 32.984402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.208353, 34.171547, 32.920990> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342591, -0.493789, -0.799252,
		-0.656193, -0.483059, 0.579711,
		-0.672341, 0.723067, -0.158529,
		30.006651, 34.388466, 32.873432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.906841, 33.480038, 32.817520>,  <30.477289, 33.882320, 32.984402>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.906841, 33.480038, 32.817520> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.796600, 33.837070, 32.674778>,  <29.730455, 34.051289, 32.589134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.796600, 33.837070, 32.674778>,  <29.906841, 33.480038, 32.817520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.796600, 33.837070, 32.674778> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361864, -0.440258, -0.821722,
		-0.890561, -0.097333, 0.444328,
		-0.275600, 0.892580, -0.356855,
		29.713921, 34.104843, 32.567722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.306351, 33.392437, 32.522160>,  <29.906841, 33.480038, 32.817520>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.306351, 33.392437, 32.522160> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.448751, 33.724380, 32.350304>,  <29.534193, 33.923546, 32.247189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.448751, 33.724380, 32.350304>,  <29.306351, 33.392437, 32.522160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.448751, 33.724380, 32.350304> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323560, -0.321861, -0.889783,
		-0.876682, 0.455781, 0.153926,
		0.356004, 0.829861, -0.429642,
		29.555553, 33.973339, 32.221413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.823727, 33.637333, 32.087528>,  <29.306351, 33.392437, 32.522160>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.823727, 33.637333, 32.087528> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.161469, 33.803429, 31.952091>,  <29.364113, 33.903084, 31.870829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.161469, 33.803429, 31.952091>,  <28.823727, 33.637333, 32.087528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.161469, 33.803429, 31.952091> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174917, -0.383698, -0.906741,
		-0.506430, 0.824836, -0.251345,
		0.844353, 0.415237, -0.338594,
		29.414774, 33.928001, 31.850513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.706038, 34.008068, 31.374977>,  <28.823727, 33.637333, 32.087528>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.706038, 34.008068, 31.374977> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.102039, 33.954090, 31.391357>,  <29.339642, 33.921703, 31.401186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.102039, 33.954090, 31.391357>,  <28.706038, 34.008068, 31.374977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.102039, 33.954090, 31.391357> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028858, -0.478084, -0.877840,
		0.138039, 0.867886, -0.477200,
		0.990006, -0.134947, 0.040948,
		29.399042, 33.913605, 31.403643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.921822, 34.167507, 30.757788>,  <28.706038, 34.008068, 31.374977>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.921822, 34.167507, 30.757788> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.208397, 33.938904, 30.917833>,  <29.380342, 33.801743, 31.013861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.208397, 33.938904, 30.917833>,  <28.921822, 34.167507, 30.757788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.208397, 33.938904, 30.917833> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021820, -0.591594, -0.805940,
		0.697307, 0.568677, -0.436312,
		0.716440, -0.571509, 0.400114,
		29.423328, 33.767452, 31.037868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.434055, 34.083878, 30.180187>,  <28.921822, 34.167507, 30.757788>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.434055, 34.083878, 30.180187> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.472420, 33.802635, 30.462021>,  <29.495438, 33.633888, 30.631121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.472420, 33.802635, 30.462021>,  <29.434055, 34.083878, 30.180187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.472420, 33.802635, 30.462021> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078319, -0.700323, -0.709517,
		0.992304, 0.123233, -0.012102,
		0.095911, -0.703108, 0.704585,
		29.501194, 33.591702, 30.673397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.238586, 33.701523, 30.132347>,  <29.434055, 34.083878, 30.180187>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.238586, 33.701523, 30.132347> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.971046, 33.455425, 30.299257>,  <29.810522, 33.307766, 30.399405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.971046, 33.455425, 30.299257>,  <30.238586, 33.701523, 30.132347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.971046, 33.455425, 30.299257> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257651, -0.718370, -0.646189,
		0.697320, -0.324692, 0.638999,
		-0.668850, -0.615240, 0.417276,
		29.770391, 33.270855, 30.424440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.601074, 33.078411, 30.273932>,  <30.238586, 33.701523, 30.132347>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.601074, 33.078411, 30.273932> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.210712, 32.994831, 30.248804>,  <29.976496, 32.944683, 30.233728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.210712, 32.994831, 30.248804>,  <30.601074, 33.078411, 30.273932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.210712, 32.994831, 30.248804> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201297, -0.751132, -0.628713,
		0.084187, -0.626210, 0.775096,
		-0.975906, -0.208954, -0.062819,
		29.917940, 32.932144, 30.229958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.654282, 32.337540, 30.144854>,  <30.601074, 33.078411, 30.273932>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.654282, 32.337540, 30.144854> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.269392, 32.434528, 30.095316>,  <30.038458, 32.492722, 30.065594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.269392, 32.434528, 30.095316>,  <30.654282, 32.337540, 30.144854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.269392, 32.434528, 30.095316> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111858, -0.766753, -0.632121,
		-0.248228, -0.594388, 0.764909,
		-0.962221, 0.242471, -0.123843,
		29.980726, 32.507271, 30.058163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.288082, 31.766699, 30.197090>,  <30.654282, 32.337540, 30.144854>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.288082, 31.766699, 30.197090> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.052292, 32.010696, 29.985270>,  <29.910816, 32.157093, 29.858177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.052292, 32.010696, 29.985270>,  <30.288082, 31.766699, 30.197090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.052292, 32.010696, 29.985270> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409302, -0.790726, -0.455219,
		-0.696410, -0.051596, 0.715787,
		-0.589479, 0.609993, -0.529551,
		29.875448, 32.193695, 29.826405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.528353, 31.538433, 30.300095>,  <30.288082, 31.766699, 30.197090>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.528353, 31.538433, 30.300095> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.547432, 31.731493, 29.950289>,  <29.558880, 31.847328, 29.740406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.547432, 31.731493, 29.950289>,  <29.528353, 31.538433, 30.300095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.547432, 31.731493, 29.950289> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467632, -0.762846, -0.446527,
		-0.882635, 0.430249, 0.189315,
		0.047700, 0.482650, -0.874513,
		29.561741, 31.876287, 29.687935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.813486, 31.494783, 30.026278>,  <29.528353, 31.538433, 30.300095>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.813486, 31.494783, 30.026278> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.075884, 31.577679, 29.735973>,  <29.233322, 31.627415, 29.561790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.075884, 31.577679, 29.735973>,  <28.813486, 31.494783, 30.026278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.075884, 31.577679, 29.735973> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491239, -0.612799, -0.619000,
		-0.573024, 0.762581, -0.300190,
		0.655994, 0.207236, -0.725758,
		29.272682, 31.639849, 29.518246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.371469, 31.572664, 29.503059>,  <28.813486, 31.494783, 30.026278>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.371469, 31.572664, 29.503059> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.732265, 31.526917, 29.336527>,  <28.948744, 31.499468, 29.236607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.732265, 31.526917, 29.336527>,  <28.371469, 31.572664, 29.503059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.732265, 31.526917, 29.336527> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391417, -0.623582, -0.676711,
		-0.182221, 0.773346, -0.607232,
		0.901991, -0.114370, -0.416331,
		29.002863, 31.492605, 29.211628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.204769, 31.467077, 28.809643>,  <28.371469, 31.572664, 29.503059>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.204769, 31.467077, 28.809643> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.583576, 31.339424, 28.824141>,  <28.810860, 31.262833, 28.832840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.583576, 31.339424, 28.824141>,  <28.204769, 31.467077, 28.809643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.583576, 31.339424, 28.824141> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238695, -0.774807, -0.585405,
		0.214907, 0.545736, -0.809930,
		0.947016, -0.319134, 0.036247,
		28.867682, 31.243685, 28.835014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.928604, 36.767056, 48.873158> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.564468, 36.658978, 48.747761>,  <38.345985, 36.594131, 48.672523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.564468, 36.658978, 48.747761>,  <38.928604, 36.767056, 48.873158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.564468, 36.658978, 48.747761> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408113, 0.460265, 0.788416,
		-0.068739, 0.845665, -0.529269,
		-0.910340, -0.270197, -0.313489,
		38.291367, 36.577919, 48.653713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.482376, 37.329884, 48.938564>,  <38.928604, 36.767056, 48.873158>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.482376, 37.329884, 48.938564> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.229759, 37.020763, 48.913490>,  <38.078190, 36.835293, 48.898445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.229759, 37.020763, 48.913490>,  <38.482376, 37.329884, 48.938564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.229759, 37.020763, 48.913490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513173, 0.356025, 0.780961,
		-0.581208, 0.525383, -0.621426,
		-0.631547, -0.772799, -0.062688,
		38.040295, 36.788925, 48.894684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.795033, 37.601379, 48.922264>,  <38.482376, 37.329884, 48.938564>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.795033, 37.601379, 48.922264> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.689045, 37.226902, 49.014633>,  <37.625454, 37.002216, 49.070057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.689045, 37.226902, 49.014633>,  <37.795033, 37.601379, 48.922264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.689045, 37.226902, 49.014633> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590425, 0.346866, 0.728754,
		-0.762358, 0.056753, -0.644663,
		-0.264970, -0.936196, 0.230927,
		37.609554, 36.946045, 49.083912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.059994, 37.564934, 48.923889>,  <37.795033, 37.601379, 48.922264>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.059994, 37.564934, 48.923889> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.235214, 37.292675, 49.158779>,  <37.340347, 37.129318, 49.299713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.235214, 37.292675, 49.158779>,  <37.059994, 37.564934, 48.923889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.235214, 37.292675, 49.158779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505539, 0.353625, 0.787007,
		-0.743331, -0.641613, -0.189188,
		0.438052, -0.680648, 0.587220,
		37.366631, 37.088482, 49.334946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.472355, 37.353287, 49.377476>,  <37.059994, 37.564934, 48.923889>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.472355, 37.353287, 49.377476> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.806206, 37.209591, 49.544495>,  <37.006516, 37.123375, 49.644707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.806206, 37.209591, 49.544495>,  <36.472355, 37.353287, 49.377476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.806206, 37.209591, 49.544495> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404871, 0.113870, 0.907256,
		-0.373464, -0.926274, -0.050405,
		0.834628, -0.359235, 0.417548,
		37.056595, 37.101822, 49.669758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279762, 36.687584, 49.855686>,  <36.472355, 37.353287, 49.377476>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.279762, 36.687584, 49.855686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.623764, 36.859314, 49.966011>,  <36.830166, 36.962353, 50.032207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.623764, 36.859314, 49.966011>,  <36.279762, 36.687584, 49.855686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.623764, 36.859314, 49.966011> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374746, 0.164501, 0.912417,
		0.346354, -0.888042, 0.302359,
		0.860003, 0.429327, 0.275815,
		36.881763, 36.988110, 50.048756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.367653, 36.425430, 50.624828>,  <36.279762, 36.687584, 49.855686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.367653, 36.425430, 50.624828> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.625023, 36.730316, 50.596443>,  <36.779446, 36.913246, 50.579411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.625023, 36.730316, 50.596443>,  <36.367653, 36.425430, 50.624828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.625023, 36.730316, 50.596443> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090364, 0.167681, 0.981691,
		0.760161, -0.625228, 0.176767,
		0.643421, 0.762216, -0.070966,
		36.818050, 36.958981, 50.575153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.878357, 36.284492, 51.140633>,  <36.367653, 36.425430, 50.624828>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.878357, 36.284492, 51.140633> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.861031, 36.675327, 51.057270>,  <36.850636, 36.909828, 51.007252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.861031, 36.675327, 51.057270>,  <36.878357, 36.284492, 51.140633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.861031, 36.675327, 51.057270> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036449, 0.206915, 0.977680,
		0.998397, 0.049941, 0.026652,
		-0.043311, 0.977083, -0.208404,
		36.848038, 36.968452, 50.994747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.920135, 36.552567, 51.707111>,  <36.878357, 36.284492, 51.140633>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.920135, 36.552567, 51.707111> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.874935, 36.890537, 51.497986>,  <36.847816, 37.093319, 51.372509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.874935, 36.890537, 51.497986>,  <36.920135, 36.552567, 51.707111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.874935, 36.890537, 51.497986> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377267, 0.450293, 0.809263,
		0.919185, 0.288688, 0.267879,
		-0.113000, 0.844924, -0.522815,
		36.841034, 37.144012, 51.341141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.179356, 37.153240, 52.123478>,  <36.920135, 36.552567, 51.707111>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.179356, 37.153240, 52.123478> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.873352, 37.234467, 51.879009>,  <36.689751, 37.283203, 51.732327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.873352, 37.234467, 51.879009>,  <37.179356, 37.153240, 52.123478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.873352, 37.234467, 51.879009> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544807, 0.302022, 0.782284,
		0.343439, 0.931423, -0.120420,
		-0.765007, 0.203061, -0.611171,
		36.643848, 37.295383, 51.695660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.930130, 37.799976, 52.370041>,  <37.179356, 37.153240, 52.123478>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.930130, 37.799976, 52.370041> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.623489, 37.647984, 52.162991>,  <36.439503, 37.556789, 52.038761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.623489, 37.647984, 52.162991>,  <36.930130, 37.799976, 52.370041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.623489, 37.647984, 52.162991> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580639, 0.065994, 0.811482,
		-0.274186, 0.922638, -0.271221,
		-0.766603, -0.379979, -0.517625,
		36.393509, 37.533989, 52.007702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.312595, 38.246708, 52.494606>,  <36.930130, 37.799976, 52.370041>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.312595, 38.246708, 52.494606> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.165775, 37.910080, 52.336102>,  <36.077682, 37.708103, 52.240997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.165775, 37.910080, 52.336102>,  <36.312595, 38.246708, 52.494606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.165775, 37.910080, 52.336102> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837575, 0.113703, 0.534359,
		-0.404647, 0.528039, -0.746616,
		-0.367054, -0.841574, -0.396263,
		36.055660, 37.657608, 52.217224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.569195, 38.379135, 52.562702>,  <36.312595, 38.246708, 52.494606>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.569195, 38.379135, 52.562702> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.634769, 37.993759, 52.477940>,  <35.674114, 37.762535, 52.427082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.634769, 37.993759, 52.477940>,  <35.569195, 38.379135, 52.562702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.634769, 37.993759, 52.477940> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780970, -0.257997, 0.568792,
		-0.602669, 0.072246, -0.794714,
		0.163941, -0.963441, -0.211909,
		35.683952, 37.704727, 52.414368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.931881, 38.037079, 52.400257>,  <35.569195, 38.379135, 52.562702>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.931881, 38.037079, 52.400257> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.188107, 37.786144, 52.577400>,  <35.341843, 37.635582, 52.683685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.188107, 37.786144, 52.577400>,  <34.931881, 38.037079, 52.400257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.188107, 37.786144, 52.577400> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728386, -0.313766, 0.609101,
		-0.243161, -0.712739, -0.657933,
		0.640568, -0.627339, 0.442853,
		35.380276, 37.597942, 52.710255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.367962, 38.423344, 51.962627>,  <34.931881, 38.037079, 52.400257>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.367962, 38.423344, 51.962627> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.997356, 38.516167, 51.844154>,  <33.774994, 38.571861, 51.773071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.997356, 38.516167, 51.844154>,  <34.367962, 38.423344, 51.962627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.997356, 38.516167, 51.844154> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305115, 0.002744, -0.952312,
		-0.220178, -0.972699, -0.073346,
		-0.926513, 0.232057, -0.296180,
		33.719402, 38.585785, 51.755299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.226585, 37.981468, 51.394825>,  <34.367962, 38.423344, 51.962627>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.226585, 37.981468, 51.394825> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.948822, 38.268604, 51.374763>,  <33.782166, 38.440884, 51.362728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.948822, 38.268604, 51.374763>,  <34.226585, 37.981468, 51.394825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.948822, 38.268604, 51.374763> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157285, 0.083404, -0.984025,
		-0.702186, -0.691199, -0.170821,
		-0.694404, 0.717836, -0.050150,
		33.740501, 38.483955, 51.359718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.916988, 37.843952, 50.854012>,  <34.226585, 37.981468, 51.394825>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.916988, 37.843952, 50.854012> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.788170, 38.220814, 50.891178>,  <33.710876, 38.446930, 50.913479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.788170, 38.220814, 50.891178>,  <33.916988, 37.843952, 50.854012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.788170, 38.220814, 50.891178> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152414, 0.148460, -0.977103,
		-0.934374, -0.300513, -0.191408,
		-0.322048, 0.942153, 0.092915,
		33.691555, 38.503460, 50.919052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.384098, 37.926945, 50.405067>,  <33.916988, 37.843952, 50.854012>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.384098, 37.926945, 50.405067> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.534904, 38.293701, 50.457470>,  <33.625389, 38.513756, 50.488911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.534904, 38.293701, 50.457470>,  <33.384098, 37.926945, 50.405067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.534904, 38.293701, 50.457470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028829, 0.129760, -0.991126,
		-0.925758, 0.377447, 0.022488,
		0.377016, 0.916895, 0.131008,
		33.648010, 38.568771, 50.496773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.923210, 38.341068, 49.946274>,  <33.384098, 37.926945, 50.405067>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.923210, 38.341068, 49.946274> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.227859, 38.579773, 50.047310>,  <33.410648, 38.722996, 50.107929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.227859, 38.579773, 50.047310>,  <32.923210, 38.341068, 49.946274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.227859, 38.579773, 50.047310> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125616, 0.246427, -0.960986,
		-0.635728, 0.763639, 0.112721,
		0.761624, 0.596766, 0.252586,
		33.456348, 38.758804, 50.123085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.810020, 38.932045, 49.632393>,  <32.923210, 38.341068, 49.946274>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.810020, 38.932045, 49.632393> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.202057, 38.893497, 49.701828>,  <33.437279, 38.870369, 49.743488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.202057, 38.893497, 49.701828>,  <32.810020, 38.932045, 49.632393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.202057, 38.893497, 49.701828> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191478, 0.227667, -0.954727,
		0.052489, 0.968958, 0.241587,
		0.980092, -0.096371, 0.173584,
		33.496086, 38.864586, 49.753902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.122345, 39.445755, 49.159462>,  <32.810020, 38.932045, 49.632393>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.122345, 39.445755, 49.159462> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.431305, 39.205700, 49.242634>,  <33.616680, 39.061668, 49.292538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.431305, 39.205700, 49.242634>,  <33.122345, 39.445755, 49.159462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.431305, 39.205700, 49.242634> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264078, 0.005716, -0.964484,
		0.577635, 0.799876, 0.162898,
		0.772399, -0.600138, 0.207928,
		33.663025, 39.025658, 49.305012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.662533, 39.700653, 48.894562>,  <33.122345, 39.445755, 49.159462>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.662533, 39.700653, 48.894562> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.799606, 39.327328, 48.937454>,  <33.881851, 39.103333, 48.963188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.799606, 39.327328, 48.937454>,  <33.662533, 39.700653, 48.894562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.799606, 39.327328, 48.937454> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404236, 0.043453, -0.913622,
		0.848033, 0.356431, 0.392168,
		0.342685, -0.933311, 0.107233,
		33.902412, 39.047333, 48.969624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.302662, 39.691086, 48.604950>,  <33.662533, 39.700653, 48.894562>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.302662, 39.691086, 48.604950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.237778, 39.296936, 48.625832>,  <34.198849, 39.060448, 48.638363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.237778, 39.296936, 48.625832>,  <34.302662, 39.691086, 48.604950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.237778, 39.296936, 48.625832> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342000, -0.105768, -0.933729,
		0.925594, -0.133604, 0.354155,
		-0.162208, -0.985375, 0.052206,
		34.189114, 39.001324, 48.641495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.985703, 39.385521, 48.445526>,  <34.302662, 39.691086, 48.604950>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.985703, 39.385521, 48.445526> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.695400, 39.122711, 48.363945>,  <34.521217, 38.965027, 48.314995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.695400, 39.122711, 48.363945>,  <34.985703, 39.385521, 48.445526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.695400, 39.122711, 48.363945> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514116, -0.320992, -0.795392,
		0.457121, -0.682119, 0.570748,
		-0.725758, -0.657021, -0.203956,
		34.477673, 38.925606, 48.302757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.282513, 38.621834, 48.309040>,  <34.985703, 39.385521, 48.445526>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.282513, 38.621834, 48.309040> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.926235, 38.663258, 48.131977>,  <34.712471, 38.688114, 48.025742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.926235, 38.663258, 48.131977>,  <35.282513, 38.621834, 48.309040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.926235, 38.663258, 48.131977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396370, -0.299913, -0.867723,
		-0.222618, -0.948329, 0.226082,
		-0.890692, 0.103559, -0.442655,
		34.659027, 38.694324, 47.999180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.248867, 38.163563, 47.832417>,  <35.282513, 38.621834, 48.309040>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.248867, 38.163563, 47.832417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.921127, 38.340263, 47.686253>,  <34.724483, 38.446281, 47.598553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.921127, 38.340263, 47.686253>,  <35.248867, 38.163563, 47.832417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.921127, 38.340263, 47.686253> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287467, -0.234896, -0.928540,
		-0.496015, -0.865842, 0.065473,
		-0.819349, 0.441748, -0.365412,
		34.675323, 38.472786, 47.576630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.004799, 37.721859, 47.227520>,  <35.248867, 38.163563, 47.832417>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.004799, 37.721859, 47.227520> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.805950, 38.064236, 47.170620>,  <34.686642, 38.269661, 47.136478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.805950, 38.064236, 47.170620>,  <35.004799, 37.721859, 47.227520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.805950, 38.064236, 47.170620> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165351, -0.067488, -0.983923,
		-0.851780, -0.512651, -0.107980,
		-0.497122, 0.855941, -0.142253,
		34.656815, 38.321018, 47.127945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.439732, 37.618225, 46.719933>,  <35.004799, 37.721859, 47.227520>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.439732, 37.618225, 46.719933> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.580128, 37.992775, 46.720760>,  <34.664364, 38.217506, 46.721256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.580128, 37.992775, 46.720760>,  <34.439732, 37.618225, 46.719933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.580128, 37.992775, 46.720760> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027971, 0.012697, -0.999528,
		-0.935962, 0.350765, 0.030648,
		0.350989, 0.936377, 0.002072,
		34.685425, 38.273689, 46.721382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.731335, 37.528057, 46.480400>,  <34.439732, 37.618225, 46.719933>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.731335, 37.528057, 46.480400> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.486736, 37.240623, 46.347908>,  <33.339977, 37.068165, 46.268414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.486736, 37.240623, 46.347908>,  <33.731335, 37.528057, 46.480400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.486736, 37.240623, 46.347908> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252716, -0.219319, 0.942356,
		-0.749804, 0.659954, -0.047484,
		-0.611498, -0.718582, -0.331227,
		33.303288, 37.025047, 46.248539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.093109, 37.588669, 46.858482>,  <33.731335, 37.528057, 46.480400>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.093109, 37.588669, 46.858482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.047073, 37.215546, 46.721886>,  <33.019451, 36.991673, 46.639927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.047073, 37.215546, 46.721886>,  <33.093109, 37.588669, 46.858482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.047073, 37.215546, 46.721886> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459252, -0.254867, 0.850958,
		-0.880819, 0.254767, -0.399063,
		-0.115088, -0.932811, -0.341494,
		33.012547, 36.935703, 46.619438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.426720, 37.497982, 46.868267>,  <33.093109, 37.588669, 46.858482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.426720, 37.497982, 46.868267> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.614246, 37.146820, 46.907234>,  <32.726761, 36.936123, 46.930614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.614246, 37.146820, 46.907234>,  <32.426720, 37.497982, 46.868267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.614246, 37.146820, 46.907234> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490534, -0.167053, 0.855260,
		-0.734566, -0.448746, -0.508960,
		0.468818, -0.877907, 0.097413,
		32.754890, 36.883450, 46.936459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.918941, 37.173779, 47.226746>,  <32.426720, 37.497982, 46.868267>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.918941, 37.173779, 47.226746> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.230171, 36.927967, 47.278824>,  <32.416908, 36.780479, 47.310070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.230171, 36.927967, 47.278824>,  <31.918941, 37.173779, 47.226746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.230171, 36.927967, 47.278824> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354023, -0.257766, 0.899013,
		-0.518912, -0.745592, -0.418120,
		0.778074, -0.614533, 0.130199,
		32.463593, 36.743607, 47.317883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.645214, 36.579594, 47.462666>,  <31.918941, 37.173779, 47.226746>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.645214, 36.579594, 47.462666> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.030846, 36.558605, 47.566818>,  <32.262226, 36.546013, 47.629311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.030846, 36.558605, 47.566818>,  <31.645214, 36.579594, 47.462666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.030846, 36.558605, 47.566818> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265101, -0.128929, 0.955562,
		-0.016568, -0.990265, -0.138208,
		0.964078, -0.052470, 0.260385,
		32.320068, 36.542862, 47.644932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.738222, 35.992599, 47.848442>,  <31.645214, 36.579594, 47.462666>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.738222, 35.992599, 47.848442> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.067856, 36.204319, 47.929165>,  <32.265636, 36.331352, 47.977596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.067856, 36.204319, 47.929165>,  <31.738222, 35.992599, 47.848442>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.067856, 36.204319, 47.929165> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074639, -0.251685, 0.964927,
		0.561527, -0.810244, -0.167904,
		0.824085, 0.529300, 0.201804,
		32.315083, 36.363110, 47.989704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.101917, 35.563492, 48.212704>,  <31.738222, 35.992599, 47.848442>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.101917, 35.563492, 48.212704> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.257786, 35.915295, 48.321964>,  <32.351307, 36.126377, 48.387520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.257786, 35.915295, 48.321964>,  <32.101917, 35.563492, 48.212704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.257786, 35.915295, 48.321964> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076564, -0.264635, 0.961304,
		0.917765, -0.395509, -0.035782,
		0.389674, 0.879512, 0.273154,
		32.374687, 36.179150, 48.403912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.557560, 34.949104, 48.057232>,  <32.101917, 35.563492, 48.212704>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.557560, 34.949104, 48.057232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.522419, 34.559879, 48.142483>,  <32.501335, 34.326344, 48.193634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.522419, 34.559879, 48.142483>,  <32.557560, 34.949104, 48.057232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.522419, 34.559879, 48.142483> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493185, -0.228378, -0.839412,
		0.865477, 0.031361, 0.499967,
		-0.087856, -0.973067, 0.213123,
		32.496063, 34.267960, 48.206421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.282753, 34.695587, 48.118706>,  <32.557560, 34.949104, 48.057232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.282753, 34.695587, 48.118706> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.007851, 34.424244, 48.014774>,  <32.842911, 34.261436, 47.952415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.007851, 34.424244, 48.014774>,  <33.282753, 34.695587, 48.118706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.007851, 34.424244, 48.014774> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456980, -0.125696, -0.880551,
		0.564670, -0.723899, 0.396382,
		-0.687253, -0.678359, -0.259831,
		32.801674, 34.220737, 47.936825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.680687, 34.228359, 47.728203>,  <33.282753, 34.695587, 48.118706>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.680687, 34.228359, 47.728203> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.301140, 34.145481, 47.632938>,  <33.073410, 34.095757, 47.575779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.301140, 34.145481, 47.632938>,  <33.680687, 34.228359, 47.728203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.301140, 34.145481, 47.632938> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275067, -0.172538, -0.945817,
		0.154875, -0.962965, 0.220708,
		-0.948869, -0.207193, -0.238158,
		33.016479, 34.083324, 47.561489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.791397, 33.615540, 47.403759>,  <33.680687, 34.228359, 47.728203>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.791397, 33.615540, 47.403759> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.470470, 33.818310, 47.277702>,  <33.277916, 33.939972, 47.202068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.470470, 33.818310, 47.277702>,  <33.791397, 33.615540, 47.403759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.470470, 33.818310, 47.277702> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281299, -0.144553, -0.948670,
		-0.526459, -0.849784, -0.026620,
		-0.802317, 0.506924, -0.315145,
		33.229774, 33.970387, 47.183159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.449886, 33.139702, 46.939339>,  <33.791397, 33.615540, 47.403759>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.449886, 33.139702, 46.939339> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.275913, 33.493439, 46.871498>,  <33.171528, 33.705681, 46.830795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.275913, 33.493439, 46.871498>,  <33.449886, 33.139702, 46.939339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.275913, 33.493439, 46.871498> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256287, -0.058980, -0.964800,
		-0.863219, -0.463091, -0.200994,
		-0.434936, 0.884346, -0.169597,
		33.145432, 33.758743, 46.820618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.089046, 33.034786, 46.336365>,  <33.449886, 33.139702, 46.939339>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.089046, 33.034786, 46.336365> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.116005, 33.433468, 46.354408>,  <33.132179, 33.672676, 46.365234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.116005, 33.433468, 46.354408>,  <33.089046, 33.034786, 46.336365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.116005, 33.433468, 46.354408> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118983, 0.036857, -0.992212,
		-0.990606, 0.072239, -0.116107,
		0.067397, 0.996706, 0.045106,
		33.136223, 33.732479, 46.367939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.745598, 33.114811, 45.683529>,  <33.089046, 33.034786, 46.336365>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.745598, 33.114811, 45.683529> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.925205, 33.455196, 45.792526>,  <33.032970, 33.659428, 45.857925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.925205, 33.455196, 45.792526>,  <32.745598, 33.114811, 45.683529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.925205, 33.455196, 45.792526> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294606, 0.146923, -0.944257,
		-0.843560, 0.504264, -0.184727,
		0.449014, 0.850959, 0.272498,
		33.059910, 33.710484, 45.874275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<35.012947, 34.546616, 51.889885> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.105648, 34.878952, 51.687500>,  <35.161266, 35.078354, 51.566067>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.105648, 34.878952, 51.687500>,  <35.012947, 34.546616, 51.889885>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.105648, 34.878952, 51.687500> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282914, -0.555209, -0.782114,
		-0.930726, 0.038111, -0.363726,
		0.231751, 0.830837, -0.505965,
		35.175175, 35.128204, 51.535709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.667011, 34.497055, 51.184536>,  <35.012947, 34.546616, 51.889885>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.667011, 34.497055, 51.184536> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.968758, 34.751236, 51.118652>,  <35.149807, 34.903744, 51.079124>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.968758, 34.751236, 51.118652>,  <34.667011, 34.497055, 51.184536>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.968758, 34.751236, 51.118652> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257188, -0.516940, -0.816472,
		-0.603976, 0.573558, -0.553394,
		0.754365, 0.635456, -0.164707,
		35.195068, 34.941872, 51.069241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.696507, 34.636238, 50.489464>,  <34.667011, 34.497055, 51.184536>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.696507, 34.636238, 50.489464> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.062752, 34.720955, 50.626160>,  <35.282501, 34.771786, 50.708179>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.062752, 34.720955, 50.626160>,  <34.696507, 34.636238, 50.489464>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.062752, 34.720955, 50.626160> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401758, -0.449465, -0.797855,
		-0.015382, 0.867827, -0.496629,
		0.915617, 0.211797, 0.341743,
		35.337437, 34.784492, 50.728683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.054653, 34.887615, 49.787514>,  <34.696507, 34.636238, 50.489464>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.054653, 34.887615, 49.787514> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.336052, 34.803360, 50.059021>,  <35.504890, 34.752808, 50.221924>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.336052, 34.803360, 50.059021>,  <35.054653, 34.887615, 49.787514>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336052, 34.803360, 50.059021> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567642, -0.408154, -0.714978,
		0.427642, 0.888281, -0.167568,
		0.703495, -0.210636, 0.678770,
		35.547100, 34.740170, 50.262653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.788177, 35.079933, 49.524139>,  <35.054653, 34.887615, 49.787514>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.788177, 35.079933, 49.524139> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.855293, 34.795483, 49.797237>,  <35.895561, 34.624813, 49.961098>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.855293, 34.795483, 49.797237>,  <35.788177, 35.079933, 49.524139>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.855293, 34.795483, 49.797237> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561545, -0.500283, -0.659079,
		0.810256, 0.493978, 0.315390,
		0.167786, -0.711128, 0.682748,
		35.905628, 34.582146, 50.002060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.574310, 35.054878, 49.525654>,  <35.788177, 35.079933, 49.524139>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.574310, 35.054878, 49.525654> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.408176, 34.717819, 49.662731>,  <36.308495, 34.515583, 49.744976>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.408176, 34.717819, 49.662731>,  <36.574310, 35.054878, 49.525654>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.408176, 34.717819, 49.662731> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622720, -0.537987, -0.568145,
		0.663110, -0.022572, 0.748181,
		-0.415336, -0.842651, 0.342689,
		36.283577, 34.465023, 49.765537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.097828, 34.617542, 49.699108>,  <36.574310, 35.054878, 49.525654>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.097828, 34.617542, 49.699108> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.778461, 34.382679, 49.645790>,  <36.586842, 34.241760, 49.613800>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.778461, 34.382679, 49.645790>,  <37.097828, 34.617542, 49.699108>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.778461, 34.382679, 49.645790> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524462, -0.569465, -0.632968,
		0.295745, -0.575284, 0.762616,
		-0.798420, -0.587160, -0.133298,
		36.538937, 34.206532, 49.605801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.280319, 34.051830, 49.371864>,  <37.097828, 34.617542, 49.699108>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.280319, 34.051830, 49.371864> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.903778, 33.938389, 49.298744>,  <36.677853, 33.870323, 49.254871>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.903778, 33.938389, 49.298744>,  <37.280319, 34.051830, 49.371864>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.903778, 33.938389, 49.298744> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315904, -0.550485, -0.772768,
		0.118535, -0.785197, 0.607795,
		-0.941357, -0.283605, -0.182795,
		36.621372, 33.853306, 49.243904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.397205, 33.340588, 49.320644>,  <37.280319, 34.051830, 49.371864>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.397205, 33.340588, 49.320644> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.064903, 33.461895, 49.133938>,  <36.865520, 33.534679, 49.021915>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.064903, 33.461895, 49.133938>,  <37.397205, 33.340588, 49.320644>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.064903, 33.461895, 49.133938> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329067, -0.408755, -0.851254,
		-0.448957, -0.860781, 0.239778,
		-0.830754, 0.303274, -0.466768,
		36.815678, 33.552876, 48.993908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.283546, 32.788570, 48.782749>,  <37.397205, 33.340588, 49.320644>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.283546, 32.788570, 48.782749> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.061279, 33.106865, 48.686386>,  <36.927921, 33.297844, 48.628567>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.061279, 33.106865, 48.686386>,  <37.283546, 32.788570, 48.782749>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.061279, 33.106865, 48.686386> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231646, -0.130111, -0.964060,
		-0.798485, -0.591499, -0.112031,
		-0.555664, 0.795738, -0.240910,
		36.894581, 33.345585, 48.614113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.891788, 32.592899, 48.186497>,  <37.283546, 32.788570, 48.782749>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.891788, 32.592899, 48.186497> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.879772, 32.992638, 48.178394>,  <36.872562, 33.232479, 48.173534>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.879772, 32.992638, 48.178394>,  <36.891788, 32.592899, 48.186497>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.879772, 32.992638, 48.178394> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372420, -0.007612, -0.928033,
		-0.927578, -0.035425, -0.371947,
		-0.030044, 0.999343, -0.020254,
		36.870758, 33.292442, 48.172318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.483234, 32.790550, 47.657906>,  <36.891788, 32.592899, 48.186497>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.483234, 32.790550, 47.657906> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.762005, 33.071915, 47.713768>,  <36.929268, 33.240734, 47.747284>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.762005, 33.071915, 47.713768>,  <36.483234, 32.790550, 47.657906>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.762005, 33.071915, 47.713768> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058379, 0.138447, -0.988648,
		-0.714761, 0.697169, 0.055424,
		0.696927, 0.703412, 0.139657,
		36.971085, 33.282940, 47.755665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.755199, 32.738609, 47.467262>,  <36.483234, 32.790550, 47.657906>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.755199, 32.738609, 47.467262> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.545025, 32.401684, 47.419224>,  <35.418919, 32.199528, 47.390400>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.545025, 32.401684, 47.419224>,  <35.755199, 32.738609, 47.467262>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.545025, 32.401684, 47.419224> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499646, 0.191220, 0.844860,
		-0.688673, 0.503925, -0.521333,
		-0.525436, -0.842315, -0.120096,
		35.387394, 32.148991, 47.383194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.044563, 32.956871, 47.475258>,  <35.755199, 32.738609, 47.467262>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.044563, 32.956871, 47.475258> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.023270, 32.570751, 47.577530>,  <35.010494, 32.339081, 47.638893>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.023270, 32.570751, 47.577530>,  <35.044563, 32.956871, 47.475258>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.023270, 32.570751, 47.577530> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413292, 0.254381, 0.874345,
		-0.909041, -0.059123, -0.412492,
		-0.053236, -0.965295, 0.255677,
		35.007298, 32.281162, 47.654232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.390137, 32.832062, 47.876774>,  <35.044563, 32.956871, 47.475258>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.390137, 32.832062, 47.876774> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.597321, 32.509857, 47.991928>,  <34.721630, 32.316536, 48.061020>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.597321, 32.509857, 47.991928>,  <34.390137, 32.832062, 47.876774>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.597321, 32.509857, 47.991928> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407213, 0.063776, 0.911104,
		-0.752263, -0.589140, -0.294981,
		0.517956, -0.805510, 0.287882,
		34.752708, 32.268204, 48.078293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.935913, 32.393471, 48.404694>,  <34.390137, 32.832062, 47.876774>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.935913, 32.393471, 48.404694> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.284168, 32.208744, 48.472469>,  <34.493122, 32.097908, 48.513134>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.284168, 32.208744, 48.472469>,  <33.935913, 32.393471, 48.404694>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.284168, 32.208744, 48.472469> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186141, 0.009551, 0.982477,
		-0.455342, -0.886924, -0.077648,
		0.870641, -0.461816, 0.169442,
		34.545361, 32.070198, 48.523300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.817539, 31.719505, 48.724926>,  <33.935913, 32.393471, 48.404694>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.817539, 31.719505, 48.724926> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.190281, 31.841539, 48.803486>,  <34.413925, 31.914761, 48.850620>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.190281, 31.841539, 48.803486>,  <33.817539, 31.719505, 48.724926>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.190281, 31.841539, 48.803486> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206097, -0.000421, 0.978531,
		0.298620, -0.952325, 0.062485,
		0.931853, 0.305087, 0.196397,
		34.469837, 31.933065, 48.862404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.940964, 31.295576, 49.301544>,  <33.817539, 31.719505, 48.724926>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.940964, 31.295576, 49.301544> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.208092, 31.593304, 49.301571>,  <34.368370, 31.771940, 49.301586>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.208092, 31.593304, 49.301571>,  <33.940964, 31.295576, 49.301544>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.208092, 31.593304, 49.301571> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015202, 0.013550, 0.999793,
		0.744164, -0.667686, 0.020364,
		0.667824, 0.744319, 0.000067,
		34.408440, 31.816599, 49.301590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.396652, 31.037579, 49.906483>,  <33.940964, 31.295576, 49.301544>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.396652, 31.037579, 49.906483> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.427231, 31.424356, 49.809181>,  <34.445580, 31.656424, 49.750801>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.427231, 31.424356, 49.809181>,  <34.396652, 31.037579, 49.906483>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.427231, 31.424356, 49.809181> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000918, 0.243902, 0.969800,
		0.997073, -0.074365, 0.017758,
		0.076450, 0.966945, -0.243256,
		34.450165, 31.714439, 49.736206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.888054, 31.305134, 50.388470>,  <34.396652, 31.037579, 49.906483>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.888054, 31.305134, 50.388470> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.683430, 31.625021, 50.262764>,  <34.560654, 31.816954, 50.187340>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.683430, 31.625021, 50.262764>,  <34.888054, 31.305134, 50.388470>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.683430, 31.625021, 50.262764> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012378, 0.358842, 0.933316,
		0.859159, 0.481336, -0.173671,
		-0.511559, 0.799717, -0.314260,
		34.529961, 31.864937, 50.168488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.164371, 31.884624, 50.782860>,  <34.888054, 31.305134, 50.388470>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.164371, 31.884624, 50.782860> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.809479, 31.996170, 50.635864>,  <34.596542, 32.063099, 50.547668>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.809479, 31.996170, 50.635864>,  <35.164371, 31.884624, 50.782860>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.809479, 31.996170, 50.635864> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161676, 0.558112, 0.813863,
		0.432057, 0.781502, -0.450091,
		-0.887236, 0.278866, -0.367486,
		34.543308, 32.079830, 50.525620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.061913, 32.529903, 51.194012>,  <35.164371, 31.884624, 50.782860>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.061913, 32.529903, 51.194012> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.707806, 32.431995, 51.035824>,  <34.495342, 32.373249, 50.940910>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.707806, 32.431995, 51.035824>,  <35.061913, 32.529903, 51.194012>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.707806, 32.431995, 51.035824> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458923, 0.321755, 0.828169,
		-0.075467, 0.914637, -0.397169,
		-0.885265, -0.244769, -0.395466,
		34.442226, 32.358566, 50.917183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.584042, 33.162086, 51.201328>,  <35.061913, 32.529903, 51.194012>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.584042, 33.162086, 51.201328> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.388927, 32.813179, 51.187389>,  <34.271858, 32.603836, 51.179028>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.388927, 32.813179, 51.187389>,  <34.584042, 33.162086, 51.201328>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.388927, 32.813179, 51.187389> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361039, 0.165233, 0.917796,
		-0.794804, 0.460271, -0.395520,
		-0.487788, -0.872266, -0.034848,
		34.242592, 32.551498, 51.176933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.834877, 33.341465, 51.273815>,  <34.584042, 33.162086, 51.201328>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.834877, 33.341465, 51.273815> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.834660, 32.948807, 51.350094>,  <33.834530, 32.713211, 51.395863>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.834660, 32.948807, 51.350094>,  <33.834877, 33.341465, 51.273815>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.834660, 32.948807, 51.350094> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585960, 0.154847, 0.795408,
		-0.810340, -0.111306, -0.575291,
		-0.000548, -0.981648, 0.190699,
		33.834496, 32.654312, 51.407303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.077412, 33.161541, 51.309498>,  <33.834877, 33.341465, 51.273815>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.077412, 33.161541, 51.309498> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.298920, 32.897282, 51.512234>,  <33.431824, 32.738728, 51.633873>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.298920, 32.897282, 51.512234>,  <33.077412, 33.161541, 51.309498>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.298920, 32.897282, 51.512234> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620930, 0.077914, 0.779984,
		-0.554786, -0.746640, -0.367071,
		0.553768, -0.660650, 0.506836,
		33.465050, 32.699085, 51.664284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.619282, 32.714710, 51.536285>,  <33.077412, 33.161541, 51.309498>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.619282, 32.714710, 51.536285> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.927525, 32.675293, 51.788143>,  <33.112469, 32.651642, 51.939259>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.927525, 32.675293, 51.788143>,  <32.619282, 32.714710, 51.536285>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.927525, 32.675293, 51.788143> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620349, 0.110421, 0.776514,
		-0.146051, -0.988987, 0.023957,
		0.770607, -0.098549, 0.629644,
		33.158707, 32.645729, 51.977036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.116550, 32.532013, 50.865166>,  <32.619282, 32.714710, 51.536285>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.116550, 32.532013, 50.865166> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.889975, 32.860611, 50.891354>,  <31.754028, 33.057770, 50.907066>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.889975, 32.860611, 50.891354>,  <32.116550, 32.532013, 50.865166>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.889975, 32.860611, 50.891354> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265662, 0.257225, -0.929117,
		-0.780107, -0.508898, -0.363944,
		-0.566442, 0.821497, 0.065468,
		31.720041, 33.107059, 50.910995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.967667, 32.586502, 50.171085>,  <32.116550, 32.532013, 50.865166>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.967667, 32.586502, 50.171085> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.869848, 32.947998, 50.311630>,  <31.811157, 33.164894, 50.395958>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.869848, 32.947998, 50.311630>,  <31.967667, 32.586502, 50.171085>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.869848, 32.947998, 50.311630> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105841, 0.385076, -0.916795,
		-0.963844, -0.187009, -0.189820,
		-0.244544, 0.903739, 0.351360,
		31.796486, 33.219120, 50.417038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.417562, 32.919624, 49.766586>,  <31.967667, 32.586502, 50.171085>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.417562, 32.919624, 49.766586> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.601122, 33.248249, 49.901901>,  <31.711258, 33.445423, 49.983089>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.601122, 33.248249, 49.901901>,  <31.417562, 32.919624, 49.766586>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.601122, 33.248249, 49.901901> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008036, 0.376895, -0.926221,
		-0.888451, 0.427762, 0.166355,
		0.458900, 0.821566, 0.338290,
		31.738792, 33.494720, 50.003387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.202356, 33.269470, 49.284573>,  <31.417562, 32.919624, 49.766586>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.202356, 33.269470, 49.284573> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.464716, 33.506218, 49.471970>,  <31.622131, 33.648270, 49.584408>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.464716, 33.506218, 49.471970>,  <31.202356, 33.269470, 49.284573>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.464716, 33.506218, 49.471970> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324180, 0.339624, -0.882928,
		-0.681693, 0.730986, 0.030885,
		0.655897, 0.591874, 0.468491,
		31.661486, 33.683781, 49.612518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.122995, 33.867432, 48.967117>,  <31.202356, 33.269470, 49.284573>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.122995, 33.867432, 48.967117> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.492851, 33.884487, 49.118496>,  <31.714764, 33.894722, 49.209324>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.492851, 33.884487, 49.118496>,  <31.122995, 33.867432, 48.967117>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.492851, 33.884487, 49.118496> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339958, 0.355529, -0.870648,
		-0.171675, 0.933692, 0.314241,
		0.924639, 0.042640, 0.378451,
		31.770243, 33.897278, 49.232033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.445395, 34.484501, 48.800865>,  <31.122995, 33.867432, 48.967117>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.445395, 34.484501, 48.800865> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.780069, 34.276627, 48.870010>,  <31.980873, 34.151901, 48.911499>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.780069, 34.276627, 48.870010>,  <31.445395, 34.484501, 48.800865>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.780069, 34.276627, 48.870010> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430976, 0.429975, -0.793336,
		0.337961, 0.738272, 0.583727,
		0.836685, -0.519688, 0.172863,
		32.031075, 34.120720, 48.921867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.035789, 34.919838, 48.590099>,  <31.445395, 34.484501, 48.800865>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.035789, 34.919838, 48.590099> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.180943, 34.547478, 48.606743>,  <32.268036, 34.324062, 48.616730>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.180943, 34.547478, 48.606743>,  <32.035789, 34.919838, 48.590099>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.180943, 34.547478, 48.606743> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385976, 0.109523, -0.915984,
		0.848138, 0.348455, 0.399051,
		0.362884, -0.930905, 0.041605,
		32.289806, 34.268208, 48.619225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.611538, 35.382713, 48.874741>,  <32.035789, 34.919838, 48.590099>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.611538, 35.382713, 48.874741> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.530910, 35.774445, 48.868061>,  <32.482536, 36.009483, 48.864052>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.530910, 35.774445, 48.868061>,  <32.611538, 35.382713, 48.874741>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.530910, 35.774445, 48.868061> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105026, 0.038565, 0.993721,
		0.973828, 0.198546, -0.110629,
		-0.201566, 0.979333, -0.016703,
		32.470440, 36.068245, 48.863049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.161850, 35.666367, 49.305309>,  <32.611538, 35.382713, 48.874741>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.161850, 35.666367, 49.305309> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.876183, 35.945080, 49.278572>,  <32.704784, 36.112309, 49.262531>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.876183, 35.945080, 49.278572>,  <33.161850, 35.666367, 49.305309>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.876183, 35.945080, 49.278572> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243343, 0.336676, 0.909634,
		0.656318, 0.633363, -0.409998,
		-0.714165, 0.696779, -0.066842,
		32.661934, 36.154114, 49.258518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.524406, 36.261642, 49.608261>,  <33.161850, 35.666367, 49.305309>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.524406, 36.261642, 49.608261> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.126354, 36.296169, 49.627293>,  <32.887524, 36.316883, 49.638710>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.126354, 36.296169, 49.627293>,  <33.524406, 36.261642, 49.608261>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.126354, 36.296169, 49.627293> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071712, 0.302980, 0.950295,
		0.067610, 0.949080, -0.307695,
		-0.995131, 0.086315, 0.047576,
		32.827816, 36.322063, 49.641567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.287029, 36.899860, 49.919231>,  <33.524406, 36.261642, 49.608261>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.287029, 36.899860, 49.919231> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.961292, 36.669899, 49.951050>,  <32.765850, 36.531921, 49.970139>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.961292, 36.669899, 49.951050>,  <33.287029, 36.899860, 49.919231>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.961292, 36.669899, 49.951050> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028476, 0.176468, 0.983894,
		-0.579683, 0.798963, -0.160077,
		-0.814344, -0.574905, 0.079544,
		32.716988, 36.497429, 49.974915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.654930, 37.307392, 50.304173>,  <33.287029, 36.899860, 49.919231>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.654930, 37.307392, 50.304173> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.625694, 36.911209, 50.350918>,  <32.608154, 36.673500, 50.378963>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.625694, 36.911209, 50.350918>,  <32.654930, 37.307392, 50.304173>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.625694, 36.911209, 50.350918> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191961, 0.128955, 0.972893,
		-0.978677, 0.048671, -0.199554,
		-0.073085, -0.990455, 0.116862,
		32.603767, 36.614071, 50.385975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.201855, 37.244034, 50.846348>,  <32.654930, 37.307392, 50.304173>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.201855, 37.244034, 50.846348> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.358051, 36.875912, 50.836891>,  <32.451767, 36.655037, 50.831219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.358051, 36.875912, 50.836891>,  <32.201855, 37.244034, 50.846348>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.358051, 36.875912, 50.836891> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087595, 0.011580, 0.996089,
		-0.916431, -0.391031, 0.085136,
		0.390488, -0.920305, -0.023640,
		32.475197, 36.599819, 50.829800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.766077, 36.924641, 51.338844>,  <32.201855, 37.244034, 50.846348>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.766077, 36.924641, 51.338844> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.091946, 36.694218, 51.312107>,  <32.287468, 36.555965, 51.296066>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.091946, 36.694218, 51.312107>,  <31.766077, 36.924641, 51.338844>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.091946, 36.694218, 51.312107> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133650, 0.074342, 0.988236,
		-0.564312, -0.814022, 0.137554,
		0.814671, -0.576057, -0.066842,
		32.336346, 36.521400, 51.292053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.654585, 36.459957, 51.828224>,  <31.766077, 36.924641, 51.338844>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.654585, 36.459957, 51.828224> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.047466, 36.461880, 51.753120>,  <32.283195, 36.463032, 51.708057>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.047466, 36.461880, 51.753120>,  <31.654585, 36.459957, 51.828224>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.047466, 36.461880, 51.753120> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183845, -0.229095, 0.955885,
		-0.038421, -0.973392, -0.225901,
		0.982204, 0.004805, -0.187755,
		32.342129, 36.463322, 51.696793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.852877, 36.018703, 52.315079>,  <31.654585, 36.459957, 51.828224>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.852877, 36.018703, 52.315079> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.185165, 36.206150, 52.194878>,  <32.384541, 36.318619, 52.122757>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.185165, 36.206150, 52.194878>,  <31.852877, 36.018703, 52.315079>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.185165, 36.206150, 52.194878> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311569, 0.055961, 0.948574,
		0.461331, -0.881629, -0.099517,
		0.830722, 0.468613, -0.300505,
		32.434383, 36.346733, 52.104725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<37.976402, 36.708038, 37.017200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.202480, 36.950359, 37.241184>,  <38.338127, 37.095753, 37.375576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.202480, 36.950359, 37.241184>,  <37.976402, 36.708038, 37.017200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.202480, 36.950359, 37.241184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635120, -0.113645, 0.764008,
		0.526478, -0.787454, 0.320528,
		0.565194, 0.605807, 0.559959,
		38.372040, 37.132103, 37.409172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.942875, 36.352818, 37.623493>,  <37.976402, 36.708038, 37.017200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.942875, 36.352818, 37.623493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.047901, 36.725124, 37.725266>,  <38.110916, 36.948509, 37.786327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.047901, 36.725124, 37.725266>,  <37.942875, 36.352818, 37.623493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.047901, 36.725124, 37.725266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444619, -0.117314, 0.888004,
		0.856371, -0.346285, 0.383034,
		0.262567, 0.930765, 0.254429,
		38.126671, 37.004353, 37.801594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.210503, 36.390831, 38.340496>,  <37.942875, 36.352818, 37.623493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.210503, 36.390831, 38.340496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.069893, 36.751472, 38.239674>,  <37.985527, 36.967857, 38.179180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.069893, 36.751472, 38.239674>,  <38.210503, 36.390831, 38.340496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.069893, 36.751472, 38.239674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605900, -0.013867, 0.795420,
		0.713662, 0.432331, 0.551159,
		-0.351528, 0.901608, -0.252053,
		37.964436, 37.021954, 38.164059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.201962, 36.731071, 38.911522>,  <38.210503, 36.390831, 38.340496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.201962, 36.731071, 38.911522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.945377, 36.924179, 38.673042>,  <37.791428, 37.040043, 38.529953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.945377, 36.924179, 38.673042>,  <38.201962, 36.731071, 38.911522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.945377, 36.924179, 38.673042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670541, 0.024721, 0.741460,
		0.372694, 0.875398, 0.307860,
		-0.641462, 0.482771, -0.596204,
		37.752937, 37.069012, 38.494183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824787, 37.243938, 39.265598>,  <38.201962, 36.731071, 38.911522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.824787, 37.243938, 39.265598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.572357, 37.253582, 38.955460>,  <37.420898, 37.259369, 38.769375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.572357, 37.253582, 38.955460>,  <37.824787, 37.243938, 39.265598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.572357, 37.253582, 38.955460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758299, 0.191471, 0.623154,
		0.163480, 0.981202, -0.102552,
		-0.631076, 0.024108, -0.775347,
		37.383034, 37.260815, 38.722855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.292439, 37.690571, 39.425274>,  <37.824787, 37.243938, 39.265598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.292439, 37.690571, 39.425274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.091118, 37.519371, 39.125004>,  <36.970325, 37.416653, 38.944843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.091118, 37.519371, 39.125004>,  <37.292439, 37.690571, 39.425274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.091118, 37.519371, 39.125004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852628, 0.104803, 0.511901,
		-0.140419, 0.897684, -0.417668,
		-0.503298, -0.427996, -0.750674,
		36.940128, 37.390972, 38.899803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.775898, 38.113846, 39.343739>,  <37.292439, 37.690571, 39.425274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.775898, 38.113846, 39.343739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.658119, 37.770493, 39.175697>,  <36.587452, 37.564480, 39.074871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.658119, 37.770493, 39.175697>,  <36.775898, 38.113846, 39.343739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.658119, 37.770493, 39.175697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807107, -0.012033, 0.590282,
		-0.511741, 0.512874, -0.689261,
		-0.294446, -0.858380, -0.420103,
		36.569786, 37.512978, 39.049667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.010193, 38.130924, 39.168327>,  <36.775898, 38.113846, 39.343739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.010193, 38.130924, 39.168327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.139317, 37.755653, 39.218300>,  <36.216793, 37.530491, 39.248283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.139317, 37.755653, 39.218300>,  <36.010193, 38.130924, 39.168327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.139317, 37.755653, 39.218300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665889, -0.131326, 0.734402,
		-0.672595, -0.320265, -0.667118,
		0.322813, -0.938181, 0.124931,
		36.236160, 37.474197, 39.255779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375641, 37.855789, 39.289021>,  <36.010193, 38.130924, 39.168327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375641, 37.855789, 39.289021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.624599, 37.575756, 39.429020>,  <35.773975, 37.407738, 39.513020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.624599, 37.575756, 39.429020>,  <35.375641, 37.855789, 39.289021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.624599, 37.575756, 39.429020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591455, -0.127794, 0.796147,
		-0.512643, -0.702531, -0.493607,
		0.622398, -0.700085, 0.350003,
		35.811317, 37.365730, 39.534019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.923386, 37.278172, 39.329525>,  <35.375641, 37.855789, 39.289021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.923386, 37.278172, 39.329525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.237926, 37.219318, 39.569523>,  <35.426651, 37.184006, 39.713524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.237926, 37.219318, 39.569523>,  <34.923386, 37.278172, 39.329525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.237926, 37.219318, 39.569523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609578, -0.027102, 0.792263,
		-0.100311, -0.988744, -0.111004,
		0.786354, -0.147138, 0.599998,
		35.473831, 37.175179, 39.749523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.803486, 36.669247, 39.802956>,  <34.923386, 37.278172, 39.329525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.803486, 36.669247, 39.802956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.094673, 36.870766, 39.988972>,  <35.269386, 36.991676, 40.100582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.094673, 36.870766, 39.988972>,  <34.803486, 36.669247, 39.802956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.094673, 36.870766, 39.988972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410892, -0.222401, 0.884141,
		0.548850, -0.834704, 0.045104,
		0.727964, 0.503793, 0.465038,
		35.313061, 37.021904, 40.128483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.121052, 36.225388, 40.336601>,  <34.803486, 36.669247, 39.802956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.121052, 36.225388, 40.336601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.209366, 36.593262, 40.466488>,  <35.262356, 36.813984, 40.544418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.209366, 36.593262, 40.466488>,  <35.121052, 36.225388, 40.336601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.209366, 36.593262, 40.466488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133141, -0.301396, 0.944158,
		0.966193, -0.251688, 0.055904,
		0.220784, 0.919681, 0.324717,
		35.275600, 36.869167, 40.563904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.570240, 35.586845, 40.361038>,  <35.121052, 36.225388, 40.336601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.570240, 35.586845, 40.361038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.398228, 35.225788, 40.368088>,  <35.295021, 35.009155, 40.372318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.398228, 35.225788, 40.368088>,  <35.570240, 35.586845, 40.361038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.398228, 35.225788, 40.368088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228566, -0.127739, -0.965111,
		0.873401, -0.411000, 0.261245,
		-0.430033, -0.902641, 0.017627,
		35.269218, 34.954994, 40.373375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.065060, 35.185947, 40.046356>,  <35.570240, 35.586845, 40.361038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.065060, 35.185947, 40.046356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.721470, 34.982414, 40.023556>,  <35.515316, 34.860294, 40.009876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.721470, 34.982414, 40.023556>,  <36.065060, 35.185947, 40.046356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.721470, 34.982414, 40.023556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153518, -0.149744, -0.976734,
		0.488455, -0.847744, 0.206742,
		-0.858979, -0.508829, -0.057001,
		35.463776, 34.829765, 40.006454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.131470, 34.489094, 39.647888>,  <36.065060, 35.185947, 40.046356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.131470, 34.489094, 39.647888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.749252, 34.602505, 39.615505>,  <35.519924, 34.670551, 39.596073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.749252, 34.602505, 39.615505>,  <36.131470, 34.489094, 39.647888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.749252, 34.602505, 39.615505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008234, -0.248802, -0.968519,
		-0.294753, -0.926124, 0.235405,
		-0.955538, 0.283536, -0.080961,
		35.462589, 34.687565, 39.591217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.793999, 33.916504, 39.249733>,  <36.131470, 34.489094, 39.647888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.793999, 33.916504, 39.249733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.554958, 34.236740, 39.232216>,  <35.411533, 34.428883, 39.221706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.554958, 34.236740, 39.232216>,  <35.793999, 33.916504, 39.249733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.554958, 34.236740, 39.232216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114411, -0.139209, -0.983632,
		-0.793586, -0.582813, 0.174789,
		-0.597605, 0.800593, -0.043794,
		35.375675, 34.476917, 39.219078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.302078, 33.761497, 38.745399>,  <35.793999, 33.916504, 39.249733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.302078, 33.761497, 38.745399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.244762, 34.154900, 38.789547>,  <35.210373, 34.390942, 38.816036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.244762, 34.154900, 38.789547>,  <35.302078, 33.761497, 38.745399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.244762, 34.154900, 38.789547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356780, 0.052691, -0.932701,
		-0.923134, -0.173022, 0.343346,
		-0.143287, 0.983508, 0.110372,
		35.201775, 34.449951, 38.822659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.599537, 33.973721, 38.492889>,  <35.302078, 33.761497, 38.745399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.599537, 33.973721, 38.492889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.788342, 34.326328, 38.497585>,  <34.901623, 34.537891, 38.500404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.788342, 34.326328, 38.497585>,  <34.599537, 33.973721, 38.492889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.788342, 34.326328, 38.497585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393142, 0.222391, -0.892178,
		-0.789079, 0.416502, 0.451531,
		0.472011, 0.881515, 0.011739,
		34.929943, 34.590782, 38.501106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.081097, 34.423153, 38.358120>,  <34.599537, 33.973721, 38.492889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.081097, 34.423153, 38.358120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.427986, 34.584057, 38.240746>,  <34.636120, 34.680599, 38.170319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.427986, 34.584057, 38.240746>,  <34.081097, 34.423153, 38.358120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.427986, 34.584057, 38.240746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399586, 0.210647, -0.892166,
		-0.297068, 0.890964, 0.343415,
		0.867227, 0.402257, -0.293440,
		34.688152, 34.704735, 38.152714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.858990, 34.985260, 38.004913>,  <34.081097, 34.423153, 38.358120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.858990, 34.985260, 38.004913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.224304, 34.889309, 37.873241>,  <34.443493, 34.831738, 37.794239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.224304, 34.889309, 37.873241>,  <33.858990, 34.985260, 38.004913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.224304, 34.889309, 37.873241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334149, 0.020870, -0.942289,
		0.232908, 0.970578, -0.061096,
		0.913290, -0.239882, -0.329178,
		34.498291, 34.817345, 37.774487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.009018, 35.363422, 37.398235>,  <33.858990, 34.985260, 38.004913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.009018, 35.363422, 37.398235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.265102, 35.058212, 37.362617>,  <34.418755, 34.875088, 37.341248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.265102, 35.058212, 37.362617>,  <34.009018, 35.363422, 37.398235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.265102, 35.058212, 37.362617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215049, -0.066738, -0.974320,
		0.737484, 0.642920, -0.206813,
		0.640212, -0.763020, -0.089042,
		34.457165, 34.829308, 37.335903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.152931, 35.391506, 36.761265>,  <34.009018, 35.363422, 37.398235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.152931, 35.391506, 36.761265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.324543, 35.038166, 36.836765>,  <34.427509, 34.826160, 36.882065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.324543, 35.038166, 36.836765>,  <34.152931, 35.391506, 36.761265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.324543, 35.038166, 36.836765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009421, -0.204574, -0.978806,
		0.903243, 0.421711, -0.079445,
		0.429026, -0.883351, 0.188754,
		34.453251, 34.773159, 36.893391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.728745, 35.353363, 36.308369>,  <34.152931, 35.391506, 36.761265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.728745, 35.353363, 36.308369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.659630, 34.973454, 36.412727>,  <34.618160, 34.745506, 36.475342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.659630, 34.973454, 36.412727>,  <34.728745, 35.353363, 36.308369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.659630, 34.973454, 36.412727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200896, -0.293297, -0.934675,
		0.964254, -0.109084, 0.241484,
		-0.172785, -0.949778, 0.260898,
		34.607796, 34.688519, 36.490997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.288258, 34.904266, 36.022282>,  <34.728745, 35.353363, 36.308369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.288258, 34.904266, 36.022282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.975197, 34.667088, 36.098042>,  <34.787361, 34.524780, 36.143497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.975197, 34.667088, 36.098042>,  <35.288258, 34.904266, 36.022282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.975197, 34.667088, 36.098042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035333, -0.346110, -0.937529,
		0.621455, -0.727067, 0.291834,
		-0.782652, -0.592943, 0.189402,
		34.740402, 34.489204, 36.154861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.461250, 34.235550, 35.731773>,  <35.288258, 34.904266, 36.022282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.461250, 34.235550, 35.731773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.062412, 34.234432, 35.762207>,  <34.823109, 34.233761, 35.780468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.062412, 34.234432, 35.762207>,  <35.461250, 34.235550, 35.731773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.062412, 34.234432, 35.762207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068963, -0.390325, -0.918090,
		0.032265, -0.920673, 0.389000,
		-0.997097, -0.002796, 0.076087,
		34.763283, 34.233593, 35.785034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.301163, 33.546833, 35.574097>,  <35.461250, 34.235550, 35.731773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.301163, 33.546833, 35.574097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.980713, 33.766956, 35.479977>,  <34.788445, 33.899029, 35.423504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.980713, 33.766956, 35.479977>,  <35.301163, 33.546833, 35.574097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.980713, 33.766956, 35.479977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029143, -0.428556, -0.903045,
		-0.597793, -0.716591, 0.359362,
		-0.801121, 0.550307, -0.235304,
		34.740376, 33.932049, 35.409386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.660072, 32.959061, 35.906189>,  <35.301163, 33.546833, 35.574097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.660072, 32.959061, 35.906189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.974125, 32.797390, 36.093895>,  <36.162556, 32.700386, 36.206520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.974125, 32.797390, 36.093895>,  <35.660072, 32.959061, 35.906189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.974125, 32.797390, 36.093895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531618, -0.051092, 0.845442,
		-0.317735, -0.913251, -0.254983,
		0.785128, -0.404180, 0.469267,
		36.209663, 32.676136, 36.234676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.435802, 32.247211, 36.208607>,  <35.660072, 32.959061, 35.906189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.435802, 32.247211, 36.208607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.695805, 32.485336, 36.397541>,  <35.851807, 32.628212, 36.510902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.695805, 32.485336, 36.397541>,  <35.435802, 32.247211, 36.208607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.695805, 32.485336, 36.397541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483244, -0.155885, 0.861496,
		0.586486, -0.788230, 0.186353,
		0.650008, 0.595309, 0.472332,
		35.890808, 32.663929, 36.539242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.256634, 31.991028, 36.921906>,  <35.435802, 32.247211, 36.208607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.256634, 31.991028, 36.921906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.513649, 32.293720, 36.970089>,  <35.667858, 32.475334, 36.999001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.513649, 32.293720, 36.970089>,  <35.256634, 31.991028, 36.921906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.513649, 32.293720, 36.970089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027040, -0.179500, 0.983386,
		0.765780, -0.628601, -0.135797,
		0.642533, 0.756730, 0.120460,
		35.706409, 32.520741, 37.006226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.850273, 31.796955, 37.148907>,  <35.256634, 31.991028, 36.921906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.850273, 31.796955, 37.148907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.861660, 32.167969, 37.297966>,  <35.868492, 32.390575, 37.387402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.861660, 32.167969, 37.297966>,  <35.850273, 31.796955, 37.148907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.861660, 32.167969, 37.297966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029636, -0.373423, 0.927188,
		0.999155, -0.015352, -0.038119,
		0.028469, 0.927534, 0.372652,
		35.870201, 32.446228, 37.409763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.389893, 31.808132, 37.699821>,  <35.850273, 31.796955, 37.148907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.389893, 31.808132, 37.699821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.154179, 32.120998, 37.780777>,  <36.012749, 32.308720, 37.829350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.154179, 32.120998, 37.780777>,  <36.389893, 31.808132, 37.699821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.154179, 32.120998, 37.780777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059789, -0.292035, 0.954537,
		0.805710, 0.550394, 0.218857,
		-0.589285, 0.782165, 0.202388,
		35.977394, 32.355648, 37.841492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.651787, 32.115063, 38.243195>,  <36.389893, 31.808132, 37.699821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.651787, 32.115063, 38.243195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.277351, 32.255692, 38.238647>,  <36.052689, 32.340069, 38.235920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.277351, 32.255692, 38.238647>,  <36.651787, 32.115063, 38.243195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.277351, 32.255692, 38.238647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081977, -0.186615, 0.979007,
		0.342070, 0.917372, 0.203510,
		-0.936092, 0.351572, -0.011368,
		35.996525, 32.361164, 38.235237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.634315, 32.588539, 38.780029>,  <36.651787, 32.115063, 38.243195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.634315, 32.588539, 38.780029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.260471, 32.467323, 38.705547>,  <36.036163, 32.394596, 38.660858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.260471, 32.467323, 38.705547>,  <36.634315, 32.588539, 38.780029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.260471, 32.467323, 38.705547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178282, -0.053860, 0.982504,
		-0.307764, 0.951456, -0.003687,
		-0.934611, -0.303036, -0.186204,
		35.980087, 32.376411, 38.649685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.261494, 32.972668, 39.171539>,  <36.634315, 32.588539, 38.780029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.261494, 32.972668, 39.171539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.037907, 32.648296, 39.102322>,  <35.903755, 32.453674, 39.060791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.037907, 32.648296, 39.102322>,  <36.261494, 32.972668, 39.171539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.037907, 32.648296, 39.102322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053289, -0.173130, 0.983456,
		-0.827476, 0.558941, 0.053560,
		-0.558967, -0.810932, -0.173046,
		35.870216, 32.405018, 39.050407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.557110, 33.096870, 39.548363>,  <36.261494, 32.972668, 39.171539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.557110, 33.096870, 39.548363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.609825, 32.705261, 39.486202>,  <35.641457, 32.470295, 39.448906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.609825, 32.705261, 39.486202>,  <35.557110, 33.096870, 39.548363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.609825, 32.705261, 39.486202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103320, -0.169477, 0.980103,
		-0.985878, -0.113113, -0.123488,
		0.131791, -0.979021, -0.155397,
		35.649361, 32.411556, 39.439583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.242256, 32.833439, 40.085503>,  <35.557110, 33.096870, 39.548363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.242256, 32.833439, 40.085503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.447300, 32.510666, 39.968143>,  <35.570328, 32.317001, 39.897728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.447300, 32.510666, 39.968143>,  <35.242256, 32.833439, 40.085503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.447300, 32.510666, 39.968143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173031, -0.237616, 0.955824,
		-0.841005, -0.540734, 0.017820,
		0.512612, -0.806936, -0.293400,
		35.601082, 32.268585, 39.880123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.920563, 32.221981, 40.376770>,  <35.242256, 32.833439, 40.085503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.920563, 32.221981, 40.376770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.296108, 32.110676, 40.295685>,  <35.521435, 32.043892, 40.247032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.296108, 32.110676, 40.295685>,  <34.920563, 32.221981, 40.376770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.296108, 32.110676, 40.295685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083950, -0.386002, 0.918670,
		-0.333881, -0.879529, -0.339045,
		0.938869, -0.278264, -0.202716,
		35.577770, 32.027195, 40.234871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.868366, 31.517481, 40.396496>,  <34.920563, 32.221981, 40.376770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.868366, 31.517481, 40.396496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.250500, 31.619165, 40.456776>,  <35.479782, 31.680176, 40.492943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.250500, 31.619165, 40.456776>,  <34.868366, 31.517481, 40.396496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.250500, 31.619165, 40.456776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023846, -0.441959, 0.896718,
		0.294558, -0.860261, -0.416157,
		0.955336, 0.254212, 0.150696,
		35.537102, 31.695429, 40.501984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.103386, 30.994949, 40.656719>,  <34.868366, 31.517481, 40.396496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.103386, 30.994949, 40.656719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.363148, 31.284025, 40.751373>,  <35.519005, 31.457472, 40.808167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.363148, 31.284025, 40.751373>,  <35.103386, 30.994949, 40.656719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.363148, 31.284025, 40.751373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160183, -0.434194, 0.886463,
		0.743383, -0.537767, -0.397730,
		0.649402, 0.722691, 0.236631,
		35.557968, 31.500832, 40.822361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.750427, 30.673668, 40.984127>,  <35.103386, 30.994949, 40.656719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.750427, 30.673668, 40.984127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.750774, 31.060207, 41.087021>,  <35.750984, 31.292131, 41.148758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.750774, 31.060207, 41.087021>,  <35.750427, 30.673668, 40.984127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.750774, 31.060207, 41.087021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116878, -0.255573, 0.959699,
		0.993146, 0.029233, -0.113167,
		0.000867, 0.966348, 0.257238,
		35.751034, 31.350111, 41.164192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.240242, 30.602293, 41.452904>,  <35.750427, 30.673668, 40.984127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.240242, 30.602293, 41.452904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.046844, 30.937845, 41.552921>,  <35.930805, 31.139175, 41.612930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.046844, 30.937845, 41.552921>,  <36.240242, 30.602293, 41.452904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.046844, 30.937845, 41.552921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057353, -0.254674, 0.965325,
		0.873469, 0.481065, 0.075020,
		-0.483490, 0.838879, 0.250041,
		35.901798, 31.189508, 41.627934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.613964, 30.933496, 42.112118>,  <36.240242, 30.602293, 41.452904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.613964, 30.933496, 42.112118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.248348, 31.094984, 42.096443>,  <36.028976, 31.191877, 42.087036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.248348, 31.094984, 42.096443>,  <36.613964, 30.933496, 42.112118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.248348, 31.094984, 42.096443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021007, 0.143603, 0.989412,
		0.405073, 0.903542, -0.139741,
		-0.914043, 0.403720, -0.039189,
		35.974136, 31.216101, 42.084686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.649479, 31.599043, 42.421623>,  <36.613964, 30.933496, 42.112118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.649479, 31.599043, 42.421623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.257233, 31.522848, 42.440022>,  <36.021885, 31.477131, 42.451061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.257233, 31.522848, 42.440022>,  <36.649479, 31.599043, 42.421623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.257233, 31.522848, 42.440022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027863, 0.367873, 0.929459,
		-0.193971, 0.910156, -0.366048,
		-0.980611, -0.190487, 0.045997,
		35.963051, 31.465702, 42.453819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.344460, 32.100182, 42.931087>,  <36.649479, 31.599043, 42.421623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.344460, 32.100182, 42.931087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.039577, 31.842863, 42.902191>,  <35.856647, 31.688473, 42.884853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.039577, 31.842863, 42.902191>,  <36.344460, 32.100182, 42.931087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.039577, 31.842863, 42.902191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224439, 0.157935, 0.961605,
		-0.607183, 0.749154, -0.264759,
		-0.762205, -0.643292, -0.072244,
		35.810917, 31.649876, 42.880520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.723747, 32.386272, 43.186852>,  <36.344460, 32.100182, 42.931087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.723747, 32.386272, 43.186852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.688187, 31.990618, 43.233692>,  <35.666851, 31.753225, 43.261799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.688187, 31.990618, 43.233692>,  <35.723747, 32.386272, 43.186852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.688187, 31.990618, 43.233692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278273, 0.137554, 0.950602,
		-0.956379, 0.051926, -0.287478,
		-0.088905, -0.989132, 0.117104,
		35.661514, 31.693878, 43.268822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.044846, 32.345287, 43.577213>,  <35.723747, 32.386272, 43.186852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.044846, 32.345287, 43.577213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.212563, 31.990437, 43.654362>,  <35.313194, 31.777527, 43.700649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.212563, 31.990437, 43.654362>,  <35.044846, 32.345287, 43.577213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.212563, 31.990437, 43.654362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353006, 0.036412, 0.934912,
		-0.836408, -0.460088, -0.297893,
		0.419295, -0.887126, 0.192869,
		35.338352, 31.724298, 43.712223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.523544, 31.984390, 44.022606>,  <35.044846, 32.345287, 43.577213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.523544, 31.984390, 44.022606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.866913, 31.788763, 44.084488>,  <35.072933, 31.671387, 44.121616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.866913, 31.788763, 44.084488>,  <34.523544, 31.984390, 44.022606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.866913, 31.788763, 44.084488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124800, 0.093403, 0.987776,
		-0.497538, -0.867231, 0.019143,
		0.858418, -0.489067, 0.154702,
		35.124439, 31.642042, 44.130898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.421947, 31.616127, 44.557377>,  <34.523544, 31.984390, 44.022606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.421947, 31.616127, 44.557377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.820904, 31.592564, 44.540665>,  <35.060276, 31.578424, 44.530640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.820904, 31.592564, 44.540665>,  <34.421947, 31.616127, 44.557377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.820904, 31.592564, 44.540665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044257, 0.041400, 0.998162,
		-0.057075, -0.997404, 0.043899,
		0.997388, -0.058912, -0.041779,
		35.120121, 31.574890, 44.528130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.591530, 31.234076, 45.179054>,  <34.421947, 31.616127, 44.557377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.591530, 31.234076, 45.179054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.954071, 31.364750, 45.071873>,  <35.171597, 31.443155, 45.007565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.954071, 31.364750, 45.071873>,  <34.591530, 31.234076, 45.179054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.954071, 31.364750, 45.071873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305563, -0.068793, 0.949684,
		0.291815, -0.942626, -0.162174,
		0.906353, 0.326686, -0.267957,
		35.225975, 31.462755, 44.991486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.085064, 30.756111, 45.441273>,  <34.591530, 31.234076, 45.179054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.085064, 30.756111, 45.441273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.213722, 31.132114, 45.395786>,  <35.290916, 31.357716, 45.368496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.213722, 31.132114, 45.395786>,  <35.085064, 30.756111, 45.441273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.213722, 31.132114, 45.395786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123235, 0.077514, 0.989346,
		0.938807, -0.332231, -0.090910,
		0.321645, 0.940007, -0.113713,
		35.310215, 31.414116, 45.361671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.567764, 30.841568, 45.930649>,  <35.085064, 30.756111, 45.441273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.567764, 30.841568, 45.930649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.466888, 31.216852, 45.835857>,  <35.406364, 31.442022, 45.778980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.466888, 31.216852, 45.835857>,  <35.567764, 30.841568, 45.930649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.466888, 31.216852, 45.835857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134501, 0.276506, 0.951553,
		0.958286, 0.208094, -0.195922,
		-0.252186, 0.938212, -0.236983,
		35.391232, 31.498316, 45.764763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.138241, 31.208654, 46.103752>,  <35.567764, 30.841568, 45.930649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.138241, 31.208654, 46.103752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.825562, 31.458105, 46.106472>,  <35.637955, 31.607775, 46.108105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.825562, 31.458105, 46.106472>,  <36.138241, 31.208654, 46.103752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.825562, 31.458105, 46.106472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250229, 0.303632, 0.919344,
		0.571262, 0.720347, -0.393396,
		-0.781694, 0.623625, 0.006798,
		35.591053, 31.645193, 46.108513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.247997, 31.718748, 46.722565>,  <36.138241, 31.208654, 46.103752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.247997, 31.718748, 46.722565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.872070, 31.848591, 46.679913>,  <35.646515, 31.926497, 46.654320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.872070, 31.848591, 46.679913>,  <36.247997, 31.718748, 46.722565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.872070, 31.848591, 46.679913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054474, 0.165739, 0.984664,
		0.337300, 0.931215, -0.138082,
		-0.939820, 0.324605, -0.106630,
		35.590126, 31.945972, 46.647923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.158829, 32.375111, 47.005795>,  <36.247997, 31.718748, 46.722565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.158829, 32.375111, 47.005795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.798817, 32.200794, 47.008183>,  <35.582809, 32.096207, 47.009617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.798817, 32.200794, 47.008183>,  <36.158829, 32.375111, 47.005795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.798817, 32.200794, 47.008183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108113, 0.236519, 0.965593,
		-0.422205, 0.868418, -0.259988,
		-0.900030, -0.435786, 0.005973,
		35.528809, 32.070057, 47.009975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.323364, 33.199955, 47.043522>,  <36.158829, 32.375111, 47.005795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.323364, 33.199955, 47.043522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.668682, 33.323769, 47.202976>,  <36.875874, 33.398056, 47.298649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.668682, 33.323769, 47.202976>,  <36.323364, 33.199955, 47.043522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.668682, 33.323769, 47.202976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298054, 0.324729, -0.897616,
		-0.407293, 0.893722, 0.188078,
		0.863294, 0.309535, 0.398637,
		36.927670, 33.416630, 47.322567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.361397, 33.806503, 46.764366>,  <36.323364, 33.199955, 47.043522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.361397, 33.806503, 46.764366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.727528, 33.698685, 46.884045>,  <36.947205, 33.633995, 46.955853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.727528, 33.698685, 46.884045>,  <36.361397, 33.806503, 46.764366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.727528, 33.698685, 46.884045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396697, 0.475619, -0.785123,
		0.069320, 0.837337, 0.542275,
		0.915328, -0.269544, 0.299199,
		37.002125, 33.617821, 46.973804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.791981, 34.424908, 46.656696>,  <36.361397, 33.806503, 46.764366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.791981, 34.424908, 46.656696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.027805, 34.102512, 46.677876>,  <37.169300, 33.909077, 46.690582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.027805, 34.102512, 46.677876>,  <36.791981, 34.424908, 46.656696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.027805, 34.102512, 46.677876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572307, 0.370570, -0.731534,
		0.569987, 0.461585, 0.679746,
		0.589559, -0.805988, 0.052948,
		37.204674, 33.860718, 46.693760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.392792, 34.729298, 46.597923>,  <36.791981, 34.424908, 46.656696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.392792, 34.729298, 46.597923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.445744, 34.341335, 46.516174>,  <37.477512, 34.108559, 46.467125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.445744, 34.341335, 46.516174>,  <37.392792, 34.729298, 46.597923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.445744, 34.341335, 46.516174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455260, 0.242642, -0.856658,
		0.880463, 0.020360, 0.473678,
		0.132376, -0.969902, -0.204368,
		37.485455, 34.050365, 46.454865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.043919, 34.670929, 46.291576>,  <37.392792, 34.729298, 46.597923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.043919, 34.670929, 46.291576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.832626, 34.358677, 46.157955>,  <37.705849, 34.171326, 46.077782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.832626, 34.358677, 46.157955>,  <38.043919, 34.670929, 46.291576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.832626, 34.358677, 46.157955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322420, 0.179549, -0.929412,
		0.785503, -0.598652, 0.156846,
		-0.528233, -0.780627, -0.334054,
		37.674156, 34.124489, 46.057739>
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
