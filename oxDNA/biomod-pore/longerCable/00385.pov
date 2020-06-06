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
	<24.344654, 35.100964, 35.338783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.657181, 34.904808, 35.184349>,  <24.844698, 34.787117, 35.091690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.657181, 34.904808, 35.184349>,  <24.344654, 35.100964, 35.338783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.657181, 34.904808, 35.184349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622547, 0.568267, 0.538060,
		-0.044456, -0.660754, 0.749285,
		0.781319, -0.490385, -0.386087,
		24.891577, 34.757694, 35.068523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.749708, 34.976112, 35.935890>,  <24.344654, 35.100964, 35.338783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.749708, 34.976112, 35.935890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.001640, 34.990944, 35.625549>,  <25.152800, 34.999844, 35.439346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.001640, 34.990944, 35.625549>,  <24.749708, 34.976112, 35.935890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.001640, 34.990944, 35.625549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629079, 0.561543, 0.537521,
		0.455605, -0.826616, 0.330348,
		0.629829, 0.037083, -0.775849,
		25.190588, 35.002068, 35.392796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.445347, 34.766239, 36.168468>,  <24.749708, 34.976112, 35.935890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.445347, 34.766239, 36.168468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.469395, 35.013954, 35.855328>,  <25.483824, 35.162582, 35.667442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.469395, 35.013954, 35.855328>,  <25.445347, 34.766239, 36.168468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.469395, 35.013954, 35.855328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465071, 0.676572, 0.570929,
		0.883230, -0.398409, -0.247337,
		0.060121, 0.619291, -0.782856,
		25.487431, 35.199741, 35.620472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.073357, 35.011810, 36.143547>,  <25.445347, 34.766239, 36.168468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.073357, 35.011810, 36.143547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.836933, 35.283127, 35.968929>,  <25.695080, 35.445919, 35.864159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.836933, 35.283127, 35.968929>,  <26.073357, 35.011810, 36.143547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.836933, 35.283127, 35.968929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534447, 0.734663, 0.417894,
		0.604166, 0.013691, -0.796741,
		-0.591058, 0.678293, -0.436542,
		25.659616, 35.486614, 35.837967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.617922, 35.597286, 35.861004>,  <26.073357, 35.011810, 36.143547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.617922, 35.597286, 35.861004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.260784, 35.761311, 35.935493>,  <26.046501, 35.859726, 35.980186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.260784, 35.761311, 35.935493>,  <26.617922, 35.597286, 35.861004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.260784, 35.761311, 35.935493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450324, 0.807189, 0.381647,
		0.006178, 0.424614, -0.905354,
		-0.892844, 0.410061, 0.186227,
		25.992931, 35.884327, 35.991360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.607325, 36.258591, 35.660526>,  <26.617922, 35.597286, 35.861004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.607325, 36.258591, 35.660526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.383032, 36.290627, 35.990173>,  <26.248457, 36.309849, 36.187962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.383032, 36.290627, 35.990173>,  <26.607325, 36.258591, 35.660526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.383032, 36.290627, 35.990173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618150, 0.702690, 0.352303,
		-0.550884, 0.706975, -0.443525,
		-0.560730, 0.080086, 0.824117,
		26.214813, 36.314651, 36.237408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.308538, 36.961109, 35.796597>,  <26.607325, 36.258591, 35.660526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.308538, 36.961109, 35.796597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.374424, 36.753651, 36.132183>,  <26.413956, 36.629173, 36.333534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.374424, 36.753651, 36.132183>,  <26.308538, 36.961109, 35.796597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.374424, 36.753651, 36.132183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440131, 0.799857, 0.408060,
		-0.882697, 0.302044, 0.360021,
		0.164713, -0.518650, 0.838971,
		26.423838, 36.598057, 36.383873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.053825, 37.419758, 36.369995>,  <26.308538, 36.961109, 35.796597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.053825, 37.419758, 36.369995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.304106, 37.137699, 36.503418>,  <26.454275, 36.968464, 36.583473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.304106, 37.137699, 36.503418>,  <26.053825, 37.419758, 36.369995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.304106, 37.137699, 36.503418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404236, 0.658819, 0.634468,
		-0.667150, -0.262152, 0.697272,
		0.625703, -0.705148, 0.333560,
		26.491817, 36.926155, 36.603485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.023100, 37.333740, 37.157871>,  <26.053825, 37.419758, 36.369995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.023100, 37.333740, 37.157871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.380888, 37.212048, 37.026806>,  <26.595560, 37.139030, 36.948166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.380888, 37.212048, 37.026806>,  <26.023100, 37.333740, 37.157871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.380888, 37.212048, 37.026806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447106, 0.601641, 0.661909,
		-0.004240, -0.738559, 0.674176,
		0.894471, -0.304235, -0.327663,
		26.649229, 37.120777, 36.928505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.443913, 37.221893, 37.801323>,  <26.023100, 37.333740, 37.157871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.443913, 37.221893, 37.801323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.685276, 37.276150, 37.487000>,  <26.830095, 37.308704, 37.298405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.685276, 37.276150, 37.487000>,  <26.443913, 37.221893, 37.801323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.685276, 37.276150, 37.487000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601211, 0.569993, 0.560047,
		0.523871, -0.810376, 0.262392,
		0.603410, 0.135639, -0.785810,
		26.866299, 37.316841, 37.251255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.133984, 37.135002, 38.120644>,  <26.443913, 37.221893, 37.801323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.133984, 37.135002, 38.120644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.185005, 37.321274, 37.770359>,  <27.215618, 37.433037, 37.560188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.185005, 37.321274, 37.770359>,  <27.133984, 37.135002, 38.120644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.185005, 37.321274, 37.770359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465844, 0.751350, 0.467400,
		0.875625, -0.467563, -0.121098,
		0.127552, 0.465680, -0.875713,
		27.223270, 37.460979, 37.507645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.779844, 37.481670, 38.074326>,  <27.133984, 37.135002, 38.120644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.779844, 37.481670, 38.074326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.587955, 37.689949, 37.791840>,  <27.472822, 37.814915, 37.622349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.587955, 37.689949, 37.791840>,  <27.779844, 37.481670, 38.074326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.587955, 37.689949, 37.791840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197110, 0.848259, 0.491532,
		0.854993, 0.096597, -0.509564,
		-0.479723, 0.520697, -0.706215,
		27.444038, 37.846157, 37.579975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.166653, 38.089863, 37.617741>,  <27.779844, 37.481670, 38.074326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.166653, 38.089863, 37.617741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.777777, 38.173679, 37.659576>,  <27.544451, 38.223969, 37.684677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.777777, 38.173679, 37.659576>,  <28.166653, 38.089863, 37.617741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.777777, 38.173679, 37.659576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233167, 0.907800, 0.348615,
		-0.021896, 0.363307, -0.931412,
		-0.972190, 0.209542, 0.104588,
		27.486120, 38.236542, 37.690952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.931566, 38.612179, 37.188438>,  <28.166653, 38.089863, 37.617741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.931566, 38.612179, 37.188438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.717752, 38.588608, 37.525673>,  <27.589464, 38.574463, 37.728016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.717752, 38.588608, 37.525673>,  <27.931566, 38.612179, 37.188438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.717752, 38.588608, 37.525673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132978, 0.979276, 0.152759,
		-0.834619, 0.193768, -0.515622,
		-0.534536, -0.058930, 0.843089,
		27.557392, 38.570930, 37.778599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.533571, 39.294167, 37.141605>,  <27.931566, 38.612179, 37.188438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.533571, 39.294167, 37.141605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.550701, 39.127022, 37.504604>,  <27.560978, 39.026733, 37.722404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.550701, 39.127022, 37.504604>,  <27.533571, 39.294167, 37.141605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.550701, 39.127022, 37.504604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040930, 0.908306, 0.416299,
		-0.998244, 0.019317, 0.056000,
		0.042823, -0.417861, 0.907502,
		27.563549, 39.001663, 37.776855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.264307, 38.528404, 36.934067>,  <27.533571, 39.294167, 37.141605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.264307, 38.528404, 36.934067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.467653, 38.229996, 37.106121>,  <27.589661, 38.050949, 37.209354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.467653, 38.229996, 37.106121>,  <27.264307, 38.528404, 36.934067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.467653, 38.229996, 37.106121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619960, -0.663734, -0.418459,
		0.597673, -0.053933, -0.799924,
		0.508368, -0.746022, 0.430132,
		27.620163, 38.006187, 37.235161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.405916, 38.065697, 36.401287>,  <27.264307, 38.528404, 36.934067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.405916, 38.065697, 36.401287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.390314, 37.862587, 36.745529>,  <27.380953, 37.740723, 36.952076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.390314, 37.862587, 36.745529>,  <27.405916, 38.065697, 36.401287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.390314, 37.862587, 36.745529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570248, -0.695931, -0.436460,
		0.820546, -0.507784, -0.262411,
		-0.039007, -0.507774, 0.860606,
		27.378613, 37.710255, 37.003712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.800779, 37.400951, 36.365322>,  <27.405916, 38.065697, 36.401287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.800779, 37.400951, 36.365322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.522917, 37.374519, 36.651840>,  <27.356199, 37.358658, 36.823753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.522917, 37.374519, 36.651840>,  <27.800779, 37.400951, 36.365322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.522917, 37.374519, 36.651840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453131, -0.733172, -0.507080,
		0.558680, -0.676825, 0.479360,
		-0.694658, -0.066083, 0.716299,
		27.314520, 37.354694, 36.866730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.779461, 36.662571, 36.486549>,  <27.800779, 37.400951, 36.365322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.779461, 36.662571, 36.486549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.440653, 36.813297, 36.636517>,  <27.237368, 36.903732, 36.726498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.440653, 36.813297, 36.636517>,  <27.779461, 36.662571, 36.486549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.440653, 36.813297, 36.636517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518611, -0.740555, -0.427343,
		0.116619, -0.556406, 0.822686,
		-0.847020, 0.376818, 0.374920,
		27.186546, 36.926342, 36.748993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.503641, 36.093662, 36.940880>,  <27.779461, 36.662571, 36.486549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.503641, 36.093662, 36.940880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.219515, 36.353676, 36.832878>,  <27.049038, 36.509686, 36.768078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.219515, 36.353676, 36.832878>,  <27.503641, 36.093662, 36.940880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.219515, 36.353676, 36.832878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438788, -0.708863, -0.552248,
		-0.550376, -0.273798, 0.788746,
		-0.710318, 0.650037, -0.270002,
		27.006420, 36.548687, 36.751877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.771921, 35.817242, 37.100014>,  <27.503641, 36.093662, 36.940880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.771921, 35.817242, 37.100014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.739391, 36.060478, 36.784138>,  <26.719873, 36.206421, 36.594612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.739391, 36.060478, 36.784138>,  <26.771921, 35.817242, 37.100014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.739391, 36.060478, 36.784138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503058, -0.709033, -0.494172,
		-0.860418, 0.357073, 0.363565,
		-0.081324, 0.608088, -0.789693,
		26.714994, 36.242905, 36.547230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.996874, 36.097118, 37.367920>,  <26.771921, 35.817242, 37.100014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.996874, 36.097118, 37.367920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.058973, 36.355141, 37.068642>,  <26.096233, 36.509956, 36.889076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.058973, 36.355141, 37.068642>,  <25.996874, 36.097118, 37.367920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.058973, 36.355141, 37.068642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642957, -0.509029, -0.572272,
		-0.750003, 0.569903, 0.335718,
		0.155249, 0.645058, -0.748197,
		26.105549, 36.548656, 36.844181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.473141, 36.399822, 37.298832>,  <25.996874, 36.097118, 37.367920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.473141, 36.399822, 37.298832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.675289, 36.390766, 36.953789>,  <25.796577, 36.385330, 36.746765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.675289, 36.390766, 36.953789>,  <25.473141, 36.399822, 37.298832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.675289, 36.390766, 36.953789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726060, -0.551360, -0.410900,
		-0.466301, 0.833960, -0.295083,
		0.505371, -0.022645, -0.862605,
		25.826900, 36.383972, 36.695007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.108217, 36.137749, 36.669899>,  <25.473141, 36.399822, 37.298832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.108217, 36.137749, 36.669899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.440758, 36.241932, 36.473526>,  <25.640282, 36.304443, 36.355701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.440758, 36.241932, 36.473526>,  <25.108217, 36.137749, 36.669899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.440758, 36.241932, 36.473526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345965, -0.448784, -0.823955,
		-0.434931, 0.854841, -0.282986,
		0.831350, 0.260460, -0.490935,
		25.690163, 36.320068, 36.326244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.849756, 36.396557, 36.011097>,  <25.108217, 36.137749, 36.669899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.849756, 36.396557, 36.011097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.221731, 36.249760, 36.001862>,  <25.444916, 36.161682, 35.996319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.221731, 36.249760, 36.001862>,  <24.849756, 36.396557, 36.011097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.221731, 36.249760, 36.001862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285179, -0.680138, -0.675341,
		0.232141, 0.634610, -0.737144,
		0.929937, -0.366992, -0.023090,
		25.500713, 36.139664, 35.994934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.044483, 36.511929, 35.349586>,  <24.849756, 36.396557, 36.011097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.044483, 36.511929, 35.349586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.239426, 36.199615, 35.505978>,  <25.356392, 36.012226, 35.599812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.239426, 36.199615, 35.505978>,  <25.044483, 36.511929, 35.349586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.239426, 36.199615, 35.505978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292835, -0.567962, -0.769199,
		0.822636, 0.260383, -0.505441,
		0.487357, -0.780782, 0.390977,
		25.385633, 35.965382, 35.623272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.472466, 36.146618, 34.707729>,  <25.044483, 36.511929, 35.349586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.472466, 36.146618, 34.707729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.362976, 35.894878, 34.998657>,  <25.297283, 35.743835, 35.173214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.362976, 35.894878, 34.998657>,  <25.472466, 36.146618, 34.707729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.362976, 35.894878, 34.998657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291527, -0.666339, -0.686298,
		0.916563, -0.399889, -0.001080,
		-0.273723, -0.629350, 0.727320,
		25.280859, 35.706074, 35.216854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.300682, 35.965050, 34.674706>,  <25.472466, 36.146618, 34.707729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.300682, 35.965050, 34.674706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.070818, 35.984447, 34.347923>,  <25.932899, 35.996086, 34.151855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.070818, 35.984447, 34.347923>,  <26.300682, 35.965050, 34.674706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.070818, 35.984447, 34.347923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708862, 0.528376, -0.467261,
		0.408996, -0.847624, -0.338016,
		-0.574662, 0.048499, -0.816952,
		25.898420, 35.998997, 34.102837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.634558, 35.550953, 34.023865>,  <26.300682, 35.965050, 34.674706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.634558, 35.550953, 34.023865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.390844, 35.865135, 33.980358>,  <26.244616, 36.053646, 33.954254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.390844, 35.865135, 33.980358>,  <26.634558, 35.550953, 34.023865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.390844, 35.865135, 33.980358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753792, 0.531147, -0.386886,
		-0.246112, -0.317711, -0.915690,
		-0.609284, 0.785457, -0.108766,
		26.208059, 36.100773, 33.947727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.542013, 35.714111, 33.302479>,  <26.634558, 35.550953, 34.023865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.542013, 35.714111, 33.302479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.498987, 36.036739, 33.534988>,  <26.473171, 36.230316, 33.674492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.498987, 36.036739, 33.534988>,  <26.542013, 35.714111, 33.302479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.498987, 36.036739, 33.534988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790906, 0.423684, -0.441542,
		-0.602410, 0.412237, -0.683493,
		-0.107565, 0.806568, 0.581272,
		26.466717, 36.278709, 33.709370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.378454, 36.340904, 32.959763>,  <26.542013, 35.714111, 33.302479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.378454, 36.340904, 32.959763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.636261, 36.382816, 33.262714>,  <26.790945, 36.407963, 33.444485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.636261, 36.382816, 33.262714>,  <26.378454, 36.340904, 32.959763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.636261, 36.382816, 33.262714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694463, 0.334186, -0.637213,
		-0.319870, 0.936665, 0.142625,
		0.644518, 0.104778, 0.757376,
		26.829617, 36.414249, 33.489925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.829367, 36.926407, 32.849190>,  <26.378454, 36.340904, 32.959763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.829367, 36.926407, 32.849190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.038511, 36.734444, 33.130985>,  <27.163998, 36.619267, 33.300060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.038511, 36.734444, 33.130985>,  <26.829367, 36.926407, 32.849190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.038511, 36.734444, 33.130985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852059, 0.270305, -0.448254,
		0.024696, 0.834638, 0.550245,
		0.522864, -0.479911, 0.704485,
		27.195370, 36.590469, 33.342331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.403160, 37.348892, 32.972786>,  <26.829367, 36.926407, 32.849190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.403160, 37.348892, 32.972786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.514885, 37.001499, 33.136597>,  <27.581921, 36.793064, 33.234882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.514885, 37.001499, 33.136597>,  <27.403160, 37.348892, 32.972786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.514885, 37.001499, 33.136597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947443, 0.179985, -0.264495,
		0.156001, 0.461884, 0.873114,
		0.279313, -0.868487, 0.409531,
		27.598679, 36.740952, 33.259457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.843599, 37.457382, 33.586662>,  <27.403160, 37.348892, 32.972786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.843599, 37.457382, 33.586662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.954639, 37.097713, 33.451359>,  <28.021263, 36.881912, 33.370174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.954639, 37.097713, 33.451359>,  <27.843599, 37.457382, 33.586662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.954639, 37.097713, 33.451359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951389, 0.306199, -0.033171,
		0.133402, -0.312611, 0.940467,
		0.277601, -0.899175, -0.338262,
		28.037920, 36.827961, 33.349880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.431103, 37.210094, 34.075230>,  <27.843599, 37.457382, 33.586662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.431103, 37.210094, 34.075230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.412216, 37.041023, 33.713211>,  <28.400885, 36.939583, 33.495998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.412216, 37.041023, 33.713211>,  <28.431103, 37.210094, 34.075230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.412216, 37.041023, 33.713211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955215, 0.245870, -0.164661,
		0.292123, -0.872292, 0.392136,
		-0.047218, -0.422675, -0.905050,
		28.398050, 36.914219, 33.441696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.567314, 36.423676, 34.141449>,  <28.431103, 37.210094, 34.075230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.567314, 36.423676, 34.141449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.596434, 36.223240, 33.796516>,  <28.613905, 36.102978, 33.589558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.596434, 36.223240, 33.796516>,  <28.567314, 36.423676, 34.141449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.596434, 36.223240, 33.796516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991458, 0.130180, 0.008056,
		0.108221, -0.855550, 0.506284,
		0.072801, -0.501087, -0.862329,
		28.618275, 36.072914, 33.537819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.099897, 35.886452, 34.143864>,  <28.567314, 36.423676, 34.141449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.099897, 35.886452, 34.143864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.039639, 36.045364, 33.781765>,  <29.003483, 36.140713, 33.564507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.039639, 36.045364, 33.781765>,  <29.099897, 35.886452, 34.143864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.039639, 36.045364, 33.781765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988576, 0.065072, -0.135955,
		0.004893, -0.915387, -0.402546,
		-0.150646, 0.397282, -0.905247,
		28.994444, 36.164547, 33.510189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.606541, 35.633312, 33.824821>,  <29.099897, 35.886452, 34.143864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.606541, 35.633312, 33.824821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.526136, 35.924450, 33.562572>,  <29.477894, 36.099133, 33.405224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.526136, 35.924450, 33.562572>,  <29.606541, 35.633312, 33.824821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.526136, 35.924450, 33.562572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957517, 0.004714, -0.288339,
		-0.206776, -0.685724, -0.697872,
		-0.201010, 0.727846, -0.655618,
		29.465834, 36.142803, 33.365887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.804192, 35.393112, 33.029396>,  <29.606541, 35.633312, 33.824821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.804192, 35.393112, 33.029396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.813759, 35.786701, 33.100079>,  <29.819500, 36.022854, 33.142487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.813759, 35.786701, 33.100079>,  <29.804192, 35.393112, 33.029396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.813759, 35.786701, 33.100079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967992, 0.021376, -0.250067,
		-0.249837, 0.177030, -0.951967,
		0.023920, 0.983973, 0.176705,
		29.820934, 36.081894, 33.153091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.993662, 35.748234, 32.361610>,  <29.804192, 35.393112, 33.029396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.993662, 35.748234, 32.361610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.087896, 35.922081, 32.709312>,  <30.144438, 36.026390, 32.917934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.087896, 35.922081, 32.709312>,  <29.993662, 35.748234, 32.361610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.087896, 35.922081, 32.709312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956917, 0.052474, -0.285582,
		-0.169733, 0.899085, -0.403532,
		0.235588, 0.434619, 0.869255,
		30.158573, 36.052467, 32.970089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.307699, 36.394127, 32.205833>,  <29.993662, 35.748234, 32.361610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.307699, 36.394127, 32.205833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.426086, 36.199570, 32.534668>,  <30.497118, 36.082836, 32.731968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.426086, 36.199570, 32.534668>,  <30.307699, 36.394127, 32.205833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.426086, 36.199570, 32.534668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940689, -0.001019, -0.339269,
		0.165855, 0.873742, 0.457240,
		0.295968, -0.486390, 0.822088,
		30.514877, 36.053654, 32.781296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.608044, 36.837097, 32.674313>,  <30.307699, 36.394127, 32.205833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.608044, 36.837097, 32.674313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.746120, 36.463375, 32.638721>,  <30.828966, 36.239143, 32.617367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.746120, 36.463375, 32.638721>,  <30.608044, 36.837097, 32.674313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.746120, 36.463375, 32.638721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828453, 0.347885, -0.438908,
		0.441028, 0.077794, 0.894115,
		0.345194, -0.934304, -0.088978,
		30.849678, 36.183083, 32.612026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.791149, 37.106297, 32.803020>,  <30.608044, 36.837097, 32.674313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.791149, 37.106297, 32.803020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.814827, 36.707741, 32.778660>,  <29.829033, 36.468609, 32.764046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.814827, 36.707741, 32.778660>,  <29.791149, 37.106297, 32.803020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.814827, 36.707741, 32.778660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975334, -0.070723, 0.209097,
		-0.212648, 0.047020, -0.975997,
		0.059193, -0.996387, -0.060900,
		29.832584, 36.408825, 32.760391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.441790, 36.854858, 32.277161>,  <29.791149, 37.106297, 32.803020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.441790, 36.854858, 32.277161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.436499, 36.627209, 32.606018>,  <29.433323, 36.490620, 32.803333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.436499, 36.627209, 32.606018>,  <29.441790, 36.854858, 32.277161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.436499, 36.627209, 32.606018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.976449, 0.184424, 0.111956,
		-0.215340, -0.801300, -0.558164,
		-0.013229, -0.569128, 0.822143,
		29.432529, 36.456470, 32.852661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.749380, 36.728161, 32.390629>,  <29.441790, 36.854858, 32.277161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.749380, 36.728161, 32.390629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.823872, 36.550766, 32.741318>,  <28.868567, 36.444328, 32.951733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.823872, 36.550766, 32.741318>,  <28.749380, 36.728161, 32.390629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.823872, 36.550766, 32.741318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.981651, -0.121219, 0.147200,
		0.040994, -0.888047, -0.457921,
		0.186229, -0.443484, 0.876722,
		28.879740, 36.417721, 33.004333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.588705, 36.014763, 32.473816>,  <28.749380, 36.728161, 32.390629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.588705, 36.014763, 32.473816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.558775, 36.193203, 32.830555>,  <28.540817, 36.300266, 33.044598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.558775, 36.193203, 32.830555>,  <28.588705, 36.014763, 32.473816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.558775, 36.193203, 32.830555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.951974, -0.298233, 0.069304,
		0.296896, -0.843832, 0.446989,
		-0.074826, 0.446098, 0.891850,
		28.536327, 36.327034, 33.098110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.225193, 35.607201, 32.942627>,  <28.588705, 36.014763, 32.473816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.225193, 35.607201, 32.942627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.175438, 35.975185, 33.091328>,  <28.145584, 36.195976, 33.180546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.175438, 35.975185, 33.091328>,  <28.225193, 35.607201, 32.942627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.175438, 35.975185, 33.091328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.932279, -0.236620, 0.273619,
		0.339682, -0.312537, 0.887095,
		-0.124388, 0.919963, 0.371747,
		28.138121, 36.251175, 33.202850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.038290, 35.592834, 33.612831>,  <28.225193, 35.607201, 32.942627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.038290, 35.592834, 33.612831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.894386, 35.949970, 33.504459>,  <27.808044, 36.164253, 33.439434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.894386, 35.949970, 33.504459>,  <28.038290, 35.592834, 33.612831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.894386, 35.949970, 33.504459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834986, -0.178495, 0.520517,
		0.416380, 0.413486, 0.809727,
		-0.359759, 0.892843, -0.270933,
		27.786459, 36.217823, 33.423180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.844553, 35.805428, 34.211510>,  <28.038290, 35.592834, 33.612831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.844553, 35.805428, 34.211510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.632771, 36.010353, 33.941040>,  <27.505701, 36.133308, 33.778759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.632771, 36.010353, 33.941040>,  <27.844553, 35.805428, 34.211510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.632771, 36.010353, 33.941040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812569, -0.077255, 0.577722,
		0.243739, 0.855314, 0.457196,
		-0.529455, 0.512317, -0.676172,
		27.473934, 36.164047, 33.738190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.659765, 36.332405, 34.576397>,  <27.844553, 35.805428, 34.211510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.659765, 36.332405, 34.576397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.409935, 36.292786, 34.266533>,  <27.260036, 36.269016, 34.080616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.409935, 36.292786, 34.266533>,  <27.659765, 36.332405, 34.576397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.409935, 36.292786, 34.266533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780839, 0.061533, 0.621694,
		-0.013908, 0.993179, -0.115770,
		-0.624577, -0.099045, -0.774657,
		27.222561, 36.263073, 34.034134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.081100, 36.593597, 35.192905>,  <27.659765, 36.332405, 34.576397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.081100, 36.593597, 35.192905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.688992, 36.549763, 35.127106>,  <27.453726, 36.523460, 35.087627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.688992, 36.549763, 35.127106>,  <28.081100, 36.593597, 35.192905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.688992, 36.549763, 35.127106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155372, 0.087221, -0.983998,
		0.122184, -0.990143, -0.068473,
		-0.980271, -0.109590, -0.164498,
		27.394911, 36.516888, 35.077755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.514278, 37.166977, 35.037445>,  <28.081100, 36.593597, 35.192905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.514278, 37.166977, 35.037445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.737844, 37.086540, 34.715656>,  <28.871984, 37.038280, 34.522583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.737844, 37.086540, 34.715656>,  <28.514278, 37.166977, 35.037445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.737844, 37.086540, 34.715656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822808, 0.014032, 0.568145,
		-0.102960, -0.979472, 0.173301,
		0.558914, -0.201089, -0.804473,
		28.905519, 37.026215, 34.474316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.997387, 36.510513, 35.074944>,  <28.514278, 37.166977, 35.037445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.997387, 36.510513, 35.074944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.145262, 36.809334, 34.853947>,  <29.233986, 36.988625, 34.721348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.145262, 36.809334, 34.853947>,  <28.997387, 36.510513, 35.074944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.145262, 36.809334, 34.853947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837892, -0.011037, 0.545725,
		0.401585, -0.664678, -0.630026,
		0.369686, 0.747048, -0.552496,
		29.256168, 37.033447, 34.688198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.650486, 36.313095, 34.741665>,  <28.997387, 36.510513, 35.074944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.650486, 36.313095, 34.741665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.591013, 36.691349, 34.857368>,  <29.555330, 36.918301, 34.926788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.591013, 36.691349, 34.857368>,  <29.650486, 36.313095, 34.741665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.591013, 36.691349, 34.857368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816173, -0.047810, 0.575826,
		0.558351, 0.321697, -0.764693,
		-0.148681, 0.945635, 0.289255,
		29.546408, 36.975040, 34.944145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.206549, 36.783352, 34.606377>,  <29.650486, 36.313095, 34.741665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.206549, 36.783352, 34.606377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.013975, 36.947220, 34.916317>,  <29.898432, 37.045540, 35.102280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.013975, 36.947220, 34.916317>,  <30.206549, 36.783352, 34.606377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.013975, 36.947220, 34.916317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771763, -0.220905, 0.596308,
		0.415457, 0.885084, -0.209816,
		-0.481434, 0.409668, 0.774851,
		29.869545, 37.070122, 35.148773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.505188, 37.458797, 34.815079>,  <30.206549, 36.783352, 34.606377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.505188, 37.458797, 34.815079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.343090, 37.229919, 35.100277>,  <30.245831, 37.092590, 35.271397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.343090, 37.229919, 35.100277>,  <30.505188, 37.458797, 34.815079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.343090, 37.229919, 35.100277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856155, 0.035951, 0.515467,
		-0.320582, 0.819327, 0.475321,
		-0.405247, -0.572198, 0.712996,
		30.221516, 37.058262, 35.314175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.848843, 37.612186, 35.357254>,  <30.505188, 37.458797, 34.815079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.848843, 37.612186, 35.357254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.668533, 37.284473, 35.499001>,  <30.560349, 37.087845, 35.584049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.668533, 37.284473, 35.499001>,  <30.848843, 37.612186, 35.357254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.668533, 37.284473, 35.499001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834773, -0.246305, 0.492430,
		-0.316160, 0.517786, 0.794946,
		-0.450773, -0.819287, 0.354362,
		30.533302, 37.038689, 35.605309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.880569, 37.587902, 36.138134>,  <30.848843, 37.612186, 35.357254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.880569, 37.587902, 36.138134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.867228, 37.234177, 35.951859>,  <30.859222, 37.021942, 35.840092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.867228, 37.234177, 35.951859>,  <30.880569, 37.587902, 36.138134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.867228, 37.234177, 35.951859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737203, -0.336389, 0.585982,
		-0.674848, -0.323766, 0.663141,
		-0.033352, -0.884318, -0.465693,
		30.857222, 36.968880, 35.812149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.739334, 37.018841, 36.561329>,  <30.880569, 37.587902, 36.138134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.739334, 37.018841, 36.561329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.954725, 36.892151, 36.248989>,  <31.083960, 36.816135, 36.061584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.954725, 36.892151, 36.248989>,  <30.739334, 37.018841, 36.561329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.954725, 36.892151, 36.248989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620291, -0.478216, 0.621731,
		-0.570334, -0.819141, -0.061044,
		0.538478, -0.316729, -0.780849,
		31.116268, 36.797131, 36.014736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.998842, 36.202114, 36.410179>,  <30.739334, 37.018841, 36.561329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.998842, 36.202114, 36.410179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.270403, 36.476421, 36.305252>,  <31.433340, 36.641006, 36.242294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.270403, 36.476421, 36.305252>,  <30.998842, 36.202114, 36.410179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.270403, 36.476421, 36.305252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590420, -0.297522, 0.750257,
		0.436458, -0.664229, -0.606881,
		0.678903, 0.685770, -0.262318,
		31.474073, 36.682152, 36.226555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.608133, 35.906448, 36.417763>,  <30.998842, 36.202114, 36.410179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.608133, 35.906448, 36.417763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.689734, 36.292778, 36.481731>,  <31.738693, 36.524574, 36.520111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.689734, 36.292778, 36.481731>,  <31.608133, 35.906448, 36.417763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.689734, 36.292778, 36.481731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622600, -0.254057, 0.740151,
		0.755482, -0.051425, -0.653148,
		0.203999, 0.965821, 0.159918,
		31.750933, 36.582523, 36.529705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.039948, 35.969471, 35.854141>,  <31.608133, 35.906448, 36.417763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.039948, 35.969471, 35.854141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.194515, 36.214684, 35.578499>,  <32.287254, 36.361813, 35.413113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.194515, 36.214684, 35.578499>,  <32.039948, 35.969471, 35.854141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.194515, 36.214684, 35.578499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204027, 0.671818, 0.712063,
		0.899475, -0.415750, 0.134526,
		0.386417, 0.613036, -0.689107,
		32.310440, 36.398594, 35.371765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.406776, 35.792507, 35.184166>,  <32.039948, 35.969471, 35.854141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.406776, 35.792507, 35.184166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.738781, 35.713238, 35.392704>,  <32.937984, 35.665676, 35.517826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.738781, 35.713238, 35.392704>,  <32.406776, 35.792507, 35.184166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.738781, 35.713238, 35.392704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514766, -0.087604, -0.852843,
		0.214685, 0.976244, 0.029301,
		0.830016, -0.198175, 0.521344,
		32.987785, 35.653786, 35.549107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.088989, 36.065239, 34.880302>,  <32.406776, 35.792507, 35.184166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.088989, 36.065239, 34.880302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.282249, 35.795380, 35.103519>,  <33.398205, 35.633465, 35.237450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.282249, 35.795380, 35.103519>,  <33.088989, 36.065239, 34.880302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.282249, 35.795380, 35.103519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680248, -0.112007, -0.724374,
		0.551204, 0.729589, 0.404813,
		0.483153, -0.674651, 0.558040,
		33.427197, 35.592983, 35.270931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.898178, 36.241158, 35.011848>,  <33.088989, 36.065239, 34.880302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.898178, 36.241158, 35.011848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.760883, 35.865978, 34.992104>,  <33.678505, 35.640869, 34.980255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.760883, 35.865978, 34.992104>,  <33.898178, 36.241158, 35.011848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.760883, 35.865978, 34.992104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684637, -0.213867, -0.696802,
		0.643009, -0.272963, 0.715563,
		-0.343237, -0.937951, -0.049362,
		33.657913, 35.584595, 34.977295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.472336, 35.867775, 34.633049>,  <33.898178, 36.241158, 35.011848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.472336, 35.867775, 34.633049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.202301, 35.583347, 34.711670>,  <34.040279, 35.412689, 34.758842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.202301, 35.583347, 34.711670>,  <34.472336, 35.867775, 34.633049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.202301, 35.583347, 34.711670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553152, -0.664168, -0.502896,
		0.488142, -0.230773, 0.841701,
		-0.675086, -0.711073, 0.196556,
		33.999775, 35.370026, 34.770638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.763828, 35.317497, 34.981441>,  <34.472336, 35.867775, 34.633049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.763828, 35.317497, 34.981441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.446182, 35.182671, 34.779148>,  <34.255596, 35.101772, 34.657772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.446182, 35.182671, 34.779148>,  <34.763828, 35.317497, 34.981441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.446182, 35.182671, 34.779148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577937, -0.676297, -0.456740,
		-0.188072, -0.654986, 0.731863,
		-0.794115, -0.337070, -0.505733,
		34.207947, 35.081551, 34.627430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.671478, 34.556171, 35.036434>,  <34.763828, 35.317497, 34.981441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.671478, 34.556171, 35.036434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.509396, 34.686604, 34.694798>,  <34.412148, 34.764862, 34.489815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.509396, 34.686604, 34.694798>,  <34.671478, 34.556171, 35.036434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.509396, 34.686604, 34.694798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310674, -0.829520, -0.464089,
		-0.859820, -0.453397, 0.234820,
		-0.405205, 0.326080, -0.854097,
		34.387833, 34.784428, 34.438568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.486717, 33.987419, 34.668041>,  <34.671478, 34.556171, 35.036434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.486717, 33.987419, 34.668041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.490929, 34.256607, 34.372204>,  <34.493454, 34.418121, 34.194702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.490929, 34.256607, 34.372204>,  <34.486717, 33.987419, 34.668041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.490929, 34.256607, 34.372204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140729, -0.733270, -0.665214,
		-0.989992, -0.097082, -0.102423,
		0.010524, 0.672971, -0.739594,
		34.494087, 34.458500, 34.150326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.036324, 33.661476, 34.196678>,  <34.486717, 33.987419, 34.668041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.036324, 33.661476, 34.196678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.241898, 33.935276, 33.989861>,  <34.365242, 34.099556, 33.865772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.241898, 33.935276, 33.989861>,  <34.036324, 33.661476, 34.196678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.241898, 33.935276, 33.989861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204116, -0.682998, -0.701320,
		-0.833193, 0.254895, -0.490733,
		0.513933, 0.684501, -0.517041,
		34.396076, 34.140625, 33.834747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.804356, 33.598732, 33.527222>,  <34.036324, 33.661476, 34.196678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.804356, 33.598732, 33.527222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.172932, 33.754131, 33.528954>,  <34.394077, 33.847370, 33.529995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.172932, 33.754131, 33.528954>,  <33.804356, 33.598732, 33.527222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.172932, 33.754131, 33.528954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289858, -0.679971, -0.673515,
		-0.258714, 0.621858, -0.739161,
		0.921439, 0.388500, 0.004333,
		34.449364, 33.870682, 33.530254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.917793, 33.609882, 32.875946>,  <33.804356, 33.598732, 33.527222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.917793, 33.609882, 32.875946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.287914, 33.664005, 33.017651>,  <34.509987, 33.696480, 33.102673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.287914, 33.664005, 33.017651>,  <33.917793, 33.609882, 32.875946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.287914, 33.664005, 33.017651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355855, -0.632664, -0.687825,
		0.131064, 0.762515, -0.633556,
		0.925305, 0.135305, 0.354264,
		34.565506, 33.704597, 33.123928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.282993, 33.769543, 32.331093>,  <33.917793, 33.609882, 32.875946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.282993, 33.769543, 32.331093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.536083, 33.643341, 32.613968>,  <34.687939, 33.567619, 32.783691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.536083, 33.643341, 32.613968>,  <34.282993, 33.769543, 32.331093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.536083, 33.643341, 32.613968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350083, -0.698043, -0.624643,
		0.690723, 0.642803, -0.331219,
		0.632727, -0.315501, 0.707188,
		34.725903, 33.548691, 32.826126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.817497, 33.607613, 31.938326>,  <34.282993, 33.769543, 32.331093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.817497, 33.607613, 31.938326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.880295, 33.413647, 32.282467>,  <34.917973, 33.297268, 32.488953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.880295, 33.413647, 32.282467>,  <34.817497, 33.607613, 31.938326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.880295, 33.413647, 32.282467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402188, -0.764255, -0.504143,
		0.901996, 0.425173, 0.075042,
		0.156997, -0.484916, 0.860354,
		34.927395, 33.268173, 32.540573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.437893, 33.356098, 31.880186>,  <34.817497, 33.607613, 31.938326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.437893, 33.356098, 31.880186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.274208, 33.141598, 32.175476>,  <35.175999, 33.012897, 32.352650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.274208, 33.141598, 32.175476>,  <35.437893, 33.356098, 31.880186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.274208, 33.141598, 32.175476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363929, -0.837852, -0.406891,
		0.836721, 0.102158, 0.538016,
		-0.409211, -0.536254, 0.738227,
		35.151443, 32.980721, 32.396946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.969475, 32.859291, 32.068718>,  <35.437893, 33.356098, 31.880186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.969475, 32.859291, 32.068718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.643227, 32.692223, 32.228870>,  <35.447475, 32.591980, 32.324963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.643227, 32.692223, 32.228870>,  <35.969475, 32.859291, 32.068718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.643227, 32.692223, 32.228870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201261, -0.853606, -0.480469,
		0.542449, -0.311300, 0.780283,
		-0.815624, -0.417671, 0.400385,
		35.398540, 32.566921, 32.348988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.131340, 32.175491, 32.268002>,  <35.969475, 32.859291, 32.068718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.131340, 32.175491, 32.268002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.732155, 32.157669, 32.249718>,  <35.492645, 32.146976, 32.238747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.732155, 32.157669, 32.249718>,  <36.131340, 32.175491, 32.268002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.732155, 32.157669, 32.249718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062392, -0.832141, -0.551043,
		-0.013479, -0.552771, 0.833224,
		-0.997961, -0.044559, -0.045706,
		35.432766, 32.144302, 32.236008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.989670, 31.437363, 32.516113>,  <36.131340, 32.175491, 32.268002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.989670, 31.437363, 32.516113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.722977, 31.597527, 32.264675>,  <35.562962, 31.693624, 32.113811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.722977, 31.597527, 32.264675>,  <35.989670, 31.437363, 32.516113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.722977, 31.597527, 32.264675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020820, -0.853099, -0.521334,
		-0.745002, -0.334505, 0.577129,
		-0.666737, 0.400410, -0.628596,
		35.522957, 31.717649, 32.076096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.519012, 30.836929, 32.308079>,  <35.989670, 31.437363, 32.516113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.519012, 30.836929, 32.308079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.462906, 31.124542, 32.035809>,  <35.429241, 31.297110, 31.872446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.462906, 31.124542, 32.035809>,  <35.519012, 30.836929, 32.308079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.462906, 31.124542, 32.035809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089828, -0.693878, -0.714467,
		-0.986030, -0.039073, 0.161917,
		-0.140267, 0.719031, -0.680676,
		35.420826, 31.340252, 31.831606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.930096, 30.617825, 31.889183>,  <35.519012, 30.836929, 32.308079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.930096, 30.617825, 31.889183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.134144, 30.898922, 31.690819>,  <35.256573, 31.067581, 31.571800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.134144, 30.898922, 31.690819>,  <34.930096, 30.617825, 31.889183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.134144, 30.898922, 31.690819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068420, -0.541589, -0.837854,
		-0.857377, 0.461338, -0.228194,
		0.510121, 0.702744, -0.495911,
		35.287182, 31.109745, 31.542046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.627205, 30.805737, 31.342606>,  <34.930096, 30.617825, 31.889183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.627205, 30.805737, 31.342606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.996658, 30.922474, 31.243229>,  <35.218330, 30.992516, 31.183603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.996658, 30.922474, 31.243229>,  <34.627205, 30.805737, 31.342606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.996658, 30.922474, 31.243229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130371, -0.370331, -0.919706,
		-0.360416, 0.881863, -0.304003,
		0.923636, 0.291844, -0.248442,
		35.273750, 31.010027, 31.168695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.571468, 31.134933, 30.631435>,  <34.627205, 30.805737, 31.342606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.571468, 31.134933, 30.631435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.951023, 31.026085, 30.695395>,  <35.178757, 30.960775, 30.733770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.951023, 31.026085, 30.695395>,  <34.571468, 31.134933, 30.631435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.951023, 31.026085, 30.695395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026106, -0.437212, -0.898979,
		0.314540, 0.857202, -0.407761,
		0.948885, -0.272120, 0.159898,
		35.235687, 30.944448, 30.743364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.889641, 31.283434, 30.012213>,  <34.571468, 31.134933, 30.631435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.889641, 31.283434, 30.012213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.158257, 31.034191, 30.172598>,  <35.319427, 30.884645, 30.268829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.158257, 31.034191, 30.172598>,  <34.889641, 31.283434, 30.012213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.158257, 31.034191, 30.172598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109131, -0.452062, -0.885286,
		0.732888, 0.638262, -0.235578,
		0.671540, -0.623106, 0.400964,
		35.359718, 30.847260, 30.292887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.414673, 31.124495, 29.463915>,  <34.889641, 31.283434, 30.012213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.414673, 31.124495, 29.463915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.460175, 30.821930, 29.721565>,  <35.487476, 30.640390, 29.876156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.460175, 30.821930, 29.721565>,  <35.414673, 31.124495, 29.463915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.460175, 30.821930, 29.721565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105148, -0.635528, -0.764884,
		0.987929, 0.154736, 0.007242,
		0.113753, -0.756413, 0.644127,
		35.494301, 30.595005, 29.914803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.145012, 30.835217, 29.417028>,  <35.414673, 31.124495, 29.463915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.145012, 30.835217, 29.417028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.877319, 30.565567, 29.542048>,  <35.716702, 30.403778, 29.617060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.877319, 30.565567, 29.542048>,  <36.145012, 30.835217, 29.417028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.877319, 30.565567, 29.542048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275283, -0.615632, -0.738388,
		0.690178, -0.408114, 0.597575,
		-0.669233, -0.674122, 0.312549,
		35.676548, 30.363331, 29.635813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.467651, 30.238379, 29.300385>,  <36.145012, 30.835217, 29.417028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.467651, 30.238379, 29.300385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.086090, 30.125563, 29.341425>,  <35.857155, 30.057873, 29.366049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.086090, 30.125563, 29.341425>,  <36.467651, 30.238379, 29.300385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.086090, 30.125563, 29.341425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117131, -0.664606, -0.737956,
		0.276324, -0.691919, 0.667003,
		-0.953900, -0.282042, 0.102602,
		35.799919, 30.040951, 29.372206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.522781, 29.574581, 29.553072>,  <36.467651, 30.238379, 29.300385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.522781, 29.574581, 29.553072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.167217, 29.603157, 29.372080>,  <35.953880, 29.620302, 29.263485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.167217, 29.603157, 29.372080>,  <36.522781, 29.574581, 29.553072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.167217, 29.603157, 29.372080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192042, -0.838656, -0.509682,
		-0.415886, -0.539956, 0.731769,
		-0.888909, 0.071440, -0.452479,
		35.900543, 29.624590, 29.236336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.318737, 28.926365, 29.597219>,  <36.522781, 29.574581, 29.553072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.318737, 28.926365, 29.597219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.080833, 29.081936, 29.315796>,  <35.938091, 29.175278, 29.146942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.080833, 29.081936, 29.315796>,  <36.318737, 28.926365, 29.597219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.080833, 29.081936, 29.315796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186045, -0.784828, -0.591128,
		-0.782067, -0.482481, 0.394440,
		-0.594775, 0.388918, -0.703552,
		35.902405, 29.198614, 29.104729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.032928, 28.317194, 29.318316>,  <36.318737, 28.926365, 29.597219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.032928, 28.317194, 29.318316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.916279, 28.578638, 29.038960>,  <35.846291, 28.735504, 28.871346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.916279, 28.578638, 29.038960>,  <36.032928, 28.317194, 29.318316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.916279, 28.578638, 29.038960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042437, -0.738248, -0.673194,
		-0.955592, -0.166681, 0.243026,
		-0.291622, 0.653611, -0.698390,
		35.828793, 28.774721, 28.829443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.504116, 27.981321, 28.949659>,  <36.032928, 28.317194, 29.318316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.504116, 27.981321, 28.949659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.643864, 28.256130, 28.694805>,  <35.727715, 28.421015, 28.541893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.643864, 28.256130, 28.694805>,  <35.504116, 27.981321, 28.949659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.643864, 28.256130, 28.694805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041582, -0.690682, -0.721962,
		-0.936061, 0.225740, -0.269873,
		0.349372, 0.687022, -0.637134,
		35.748676, 28.462236, 28.503664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.130241, 27.969255, 28.239656>,  <35.504116, 27.981321, 28.949659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.130241, 27.969255, 28.239656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.471794, 28.152634, 28.141094>,  <35.676727, 28.262661, 28.081957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.471794, 28.152634, 28.141094>,  <35.130241, 27.969255, 28.239656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.471794, 28.152634, 28.141094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079964, -0.583367, -0.808263,
		-0.514288, 0.670457, -0.534785,
		0.853881, 0.458444, -0.246407,
		35.727959, 28.290167, 28.067173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.144974, 27.892479, 27.529512>,  <35.130241, 27.969255, 28.239656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.144974, 27.892479, 27.529512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.517117, 28.016573, 27.607687>,  <35.740402, 28.091030, 27.654591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.517117, 28.016573, 27.607687>,  <35.144974, 27.892479, 27.529512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.517117, 28.016573, 27.607687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322872, -0.440561, -0.837651,
		-0.173769, 0.842413, -0.510044,
		0.930354, 0.310237, 0.195435,
		35.796223, 28.109644, 27.666317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.390167, 28.284220, 26.908350>,  <35.144974, 27.892479, 27.529512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.390167, 28.284220, 26.908350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.722046, 28.175453, 27.103354>,  <35.921173, 28.110193, 27.220356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.722046, 28.175453, 27.103354>,  <35.390167, 28.284220, 26.908350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.722046, 28.175453, 27.103354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411207, -0.292894, -0.863204,
		0.377509, 0.916665, -0.131199,
		0.829696, -0.271917, 0.487509,
		35.970955, 28.093878, 27.249607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.915356, 28.570848, 26.490833>,  <35.390167, 28.284220, 26.908350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.915356, 28.570848, 26.490833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.108704, 28.309780, 26.724197>,  <36.224712, 28.153139, 26.864216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.108704, 28.309780, 26.724197>,  <35.915356, 28.570848, 26.490833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.108704, 28.309780, 26.724197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454844, -0.382176, -0.804399,
		0.747975, 0.654187, 0.112130,
		0.483374, -0.652672, 0.583411,
		36.253716, 28.113979, 26.899221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.649055, 28.576439, 26.357807>,  <35.915356, 28.570848, 26.490833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.649055, 28.576439, 26.357807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.589588, 28.226463, 26.542145>,  <36.553909, 28.016478, 26.652748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.589588, 28.226463, 26.542145>,  <36.649055, 28.576439, 26.357807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.589588, 28.226463, 26.542145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507486, -0.467478, -0.723825,
		0.848738, 0.126265, 0.513518,
		-0.148665, -0.874941, 0.460844,
		36.544991, 27.963982, 26.680397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.369389, 28.262714, 26.497307>,  <36.649055, 28.576439, 26.357807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.369389, 28.262714, 26.497307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.059010, 28.012318, 26.466219>,  <36.872784, 27.862080, 26.447567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.059010, 28.012318, 26.466219>,  <37.369389, 28.262714, 26.497307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.059010, 28.012318, 26.466219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462465, -0.480753, -0.744985,
		0.428991, -0.614011, 0.662538,
		-0.775946, -0.625993, -0.077720,
		36.826225, 27.824520, 26.442904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.678837, 27.452047, 26.373182>,  <37.369389, 28.262714, 26.497307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.678837, 27.452047, 26.373182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.300201, 27.505972, 26.256014>,  <37.073021, 27.538326, 26.185713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.300201, 27.505972, 26.256014>,  <37.678837, 27.452047, 26.373182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.300201, 27.505972, 26.256014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197109, -0.477014, -0.856508,
		-0.255194, -0.868495, 0.424962,
		-0.946586, 0.134812, -0.292919,
		37.016224, 27.546415, 26.168139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.597988, 26.937990, 26.001116>,  <37.678837, 27.452047, 26.373182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.597988, 26.937990, 26.001116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.279087, 27.157984, 25.901598>,  <37.087746, 27.289980, 25.841887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.279087, 27.157984, 25.901598>,  <37.597988, 26.937990, 26.001116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.279087, 27.157984, 25.901598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109120, -0.274058, -0.955503,
		-0.593697, -0.788928, 0.158479,
		-0.797256, 0.549986, -0.248795,
		37.039909, 27.322979, 25.826960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.073013, 26.530209, 25.640148>,  <37.597988, 26.937990, 26.001116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.073013, 26.530209, 25.640148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.024513, 26.914330, 25.539656>,  <36.995415, 27.144802, 25.479361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.024513, 26.914330, 25.539656>,  <37.073013, 26.530209, 25.640148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.024513, 26.914330, 25.539656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036206, -0.248652, -0.967916,
		-0.991961, -0.126457, -0.004619,
		-0.121251, 0.960303, -0.251232,
		36.988136, 27.202419, 25.464287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.796989, 26.504278, 24.930157>,  <37.073013, 26.530209, 25.640148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.796989, 26.504278, 24.930157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.852276, 26.900162, 24.944954>,  <36.885448, 27.137691, 24.953833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.852276, 26.900162, 24.944954>,  <36.796989, 26.504278, 24.930157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.852276, 26.900162, 24.944954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220017, 0.005734, -0.975479,
		-0.965654, 0.142970, -0.216961,
		0.138220, 0.989711, 0.036993,
		36.893742, 27.197075, 24.956051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.525425, 26.765684, 24.331579>,  <36.796989, 26.504278, 24.930157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.525425, 26.765684, 24.331579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.811859, 27.019270, 24.448414>,  <36.983719, 27.171421, 24.518515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.811859, 27.019270, 24.448414>,  <36.525425, 26.765684, 24.331579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.811859, 27.019270, 24.448414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283601, 0.118113, -0.951641,
		-0.637805, 0.764290, -0.095214,
		0.716084, 0.633963, 0.292086,
		37.026684, 27.209459, 24.536039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.532249, 27.270468, 23.832914>,  <36.525425, 26.765684, 24.331579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.532249, 27.270468, 23.832914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.882130, 27.338312, 24.014523>,  <37.092056, 27.379019, 24.123487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.882130, 27.338312, 24.014523>,  <36.532249, 27.270468, 23.832914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.882130, 27.338312, 24.014523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433129, 0.146814, -0.889295,
		-0.217490, 0.974514, 0.054955,
		0.874698, 0.169611, 0.454021,
		37.144539, 27.389194, 24.150728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.800079, 27.943007, 23.622757>,  <36.532249, 27.270468, 23.832914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.800079, 27.943007, 23.622757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.118004, 27.734179, 23.746510>,  <37.308758, 27.608881, 23.820761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.118004, 27.734179, 23.746510>,  <36.800079, 27.943007, 23.622757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.118004, 27.734179, 23.746510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436391, 0.137430, -0.889200,
		0.421706, 0.841758, 0.337057,
		0.794813, -0.522069, 0.309380,
		37.356449, 27.577559, 23.839323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.310699, 28.307535, 23.392170>,  <36.800079, 27.943007, 23.622757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.310699, 28.307535, 23.392170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.476288, 27.951269, 23.467365>,  <37.575642, 27.737509, 23.512484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.476288, 27.951269, 23.467365>,  <37.310699, 28.307535, 23.392170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.476288, 27.951269, 23.467365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543948, 0.076449, -0.835629,
		0.729895, 0.448185, 0.516124,
		0.413974, -0.890666, 0.187989,
		37.600479, 27.684069, 23.523762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.016014, 28.391003, 23.380541>,  <37.310699, 28.307535, 23.392170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.016014, 28.391003, 23.380541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.921211, 28.010443, 23.301891>,  <37.864330, 27.782106, 23.254702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.921211, 28.010443, 23.301891>,  <38.016014, 28.391003, 23.380541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.921211, 28.010443, 23.301891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272568, 0.129142, -0.953430,
		0.932487, -0.279567, 0.228713,
		-0.237011, -0.951401, -0.196625,
		37.850109, 27.725023, 23.242905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.483719, 28.129564, 22.856058>,  <38.016014, 28.391003, 23.380541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.483719, 28.129564, 22.856058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.230576, 27.819902, 22.850807>,  <38.078690, 27.634106, 22.847656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.230576, 27.819902, 22.850807>,  <38.483719, 28.129564, 22.856058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.230576, 27.819902, 22.850807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090476, -0.057101, -0.994260,
		0.768962, -0.630415, 0.106179,
		-0.632859, -0.774155, -0.013129,
		38.040718, 27.587656, 22.846869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.810268, 27.614708, 22.396978>,  <38.483719, 28.129564, 22.856058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.810268, 27.614708, 22.396978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.415516, 27.552158, 22.413004>,  <38.178665, 27.514627, 22.422619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.415516, 27.552158, 22.413004>,  <38.810268, 27.614708, 22.396978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.415516, 27.552158, 22.413004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022394, -0.113173, -0.993323,
		0.159867, -0.981192, 0.108186,
		-0.986884, -0.156376, 0.040066,
		38.119450, 27.505245, 22.425024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.677692, 26.914062, 21.997992>,  <38.810268, 27.614708, 22.396978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.677692, 26.914062, 21.997992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.330204, 27.111883, 22.008829>,  <38.121712, 27.230576, 22.015331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.330204, 27.111883, 22.008829>,  <38.677692, 26.914062, 21.997992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.330204, 27.111883, 22.008829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103474, -0.127718, -0.986398,
		-0.484364, -0.859713, 0.162125,
		-0.868726, 0.494552, 0.027096,
		38.069588, 27.260248, 22.016958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.278290, 26.627533, 21.504335>,  <38.677692, 26.914062, 21.997992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.278290, 26.627533, 21.504335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.072815, 26.966114, 21.560400>,  <37.949532, 27.169264, 21.594038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.072815, 26.966114, 21.560400>,  <38.278290, 26.627533, 21.504335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.072815, 26.966114, 21.560400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045600, 0.136195, -0.989632,
		-0.856767, -0.514749, -0.031363,
		-0.513683, 0.846454, 0.140160,
		37.918709, 27.220051, 21.602448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.705475, 26.625263, 20.979107>,  <38.278290, 26.627533, 21.504335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.705475, 26.625263, 20.979107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.761341, 27.002871, 21.098652>,  <37.794861, 27.229435, 21.170380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.761341, 27.002871, 21.098652>,  <37.705475, 26.625263, 20.979107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.761341, 27.002871, 21.098652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109937, 0.314739, -0.942790,
		-0.984077, 0.098819, 0.147740,
		0.139665, 0.944020, 0.298864,
		37.803242, 27.286077, 21.188311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.165298, 27.066538, 20.664639>,  <37.705475, 26.625263, 20.979107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.165298, 27.066538, 20.664639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.502689, 27.267603, 20.740410>,  <37.705124, 27.388243, 20.785872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.502689, 27.267603, 20.740410>,  <37.165298, 27.066538, 20.664639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.502689, 27.267603, 20.740410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103146, 0.497633, -0.861233,
		-0.527174, 0.706889, 0.471588,
		0.843474, 0.502662, 0.189426,
		37.755733, 27.418402, 20.797237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.054070, 27.825407, 20.667919>,  <37.165298, 27.066538, 20.664639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.054070, 27.825407, 20.667919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.374329, 27.659695, 20.494793>,  <37.566486, 27.560266, 20.390917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.374329, 27.659695, 20.494793>,  <37.054070, 27.825407, 20.667919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.374329, 27.659695, 20.494793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264816, 0.403307, -0.875909,
		0.537431, 0.815913, 0.213199,
		0.800650, -0.414282, -0.432817,
		37.614525, 27.535410, 20.364948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.600391, 28.263798, 20.233170>,  <37.054070, 27.825407, 20.667919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.600391, 28.263798, 20.233170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.568535, 27.894112, 20.083782>,  <37.549419, 27.672300, 19.994150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.568535, 27.894112, 20.083782>,  <37.600391, 28.263798, 20.233170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.568535, 27.894112, 20.083782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026475, 0.372566, -0.927628,
		0.996472, -0.083764, -0.005202,
		-0.079640, -0.924218, -0.373469,
		37.544643, 27.616846, 19.971741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.137585, 28.167446, 19.813675>,  <37.600391, 28.263798, 20.233170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.137585, 28.167446, 19.813675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.851940, 27.924074, 19.675196>,  <37.680553, 27.778051, 19.592108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.851940, 27.924074, 19.675196>,  <38.137585, 28.167446, 19.813675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.851940, 27.924074, 19.675196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038031, 0.460099, -0.887053,
		0.698996, -0.646623, -0.305424,
		-0.714113, -0.608431, -0.346199,
		37.637707, 27.741545, 19.571337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.202850, 27.749811, 20.466955>,  <38.137585, 28.167446, 19.813675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.202850, 27.749811, 20.466955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.473824, 27.515450, 20.644854>,  <38.636406, 27.374832, 20.751593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.473824, 27.515450, 20.644854>,  <38.202850, 27.749811, 20.466955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.473824, 27.515450, 20.644854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731766, 0.475253, -0.488522,
		0.074860, 0.656391, 0.750697,
		0.677433, -0.585905, 0.444747,
		38.677052, 27.339678, 20.778278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.742397, 28.148767, 20.685596>,  <38.202850, 27.749811, 20.466955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.742397, 28.148767, 20.685596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.893394, 27.779913, 20.651747>,  <38.983994, 27.558599, 20.631437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.893394, 27.779913, 20.651747>,  <38.742397, 28.148767, 20.685596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.893394, 27.779913, 20.651747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766921, 0.362547, -0.529520,
		0.518971, 0.134989, 0.844066,
		0.377493, -0.922138, -0.084625,
		39.006641, 27.503271, 20.626360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.906292, 27.921398, 19.994158>,  <38.742397, 28.148767, 20.685596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.906292, 27.921398, 19.994158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.243362, 28.007711, 19.796844>,  <39.445606, 28.059500, 19.678457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.243362, 28.007711, 19.796844>,  <38.906292, 27.921398, 19.994158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.243362, 28.007711, 19.796844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179104, 0.751656, 0.634772,
		0.507753, -0.623258, 0.594758,
		0.842680, 0.215784, -0.493283,
		39.496166, 28.072447, 19.648859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.530407, 27.791485, 20.430908>,  <38.906292, 27.921398, 19.994158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.530407, 27.791485, 20.430908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.588097, 28.088779, 20.169588>,  <39.622711, 28.267157, 20.012796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.588097, 28.088779, 20.169588>,  <39.530407, 27.791485, 20.430908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.588097, 28.088779, 20.169588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147842, 0.636608, 0.756884,
		0.978438, -0.205749, -0.018064,
		0.144229, 0.743234, -0.653300,
		39.631367, 28.311750, 19.973598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.173248, 28.266272, 20.470253>,  <39.530407, 27.791485, 20.430908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.173248, 28.266272, 20.470253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.826565, 28.425339, 20.349804>,  <39.618553, 28.520779, 20.277534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.826565, 28.425339, 20.349804>,  <40.173248, 28.266272, 20.470253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.826565, 28.425339, 20.349804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000351, 0.604163, 0.796861,
		0.498812, 0.690542, -0.523774,
		-0.866710, 0.397667, -0.301121,
		39.566551, 28.544640, 20.259468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.129543, 28.955105, 20.602161>,  <40.173248, 28.266272, 20.470253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.129543, 28.955105, 20.602161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.737747, 28.923044, 20.528212>,  <39.502670, 28.903807, 20.483841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.737747, 28.923044, 20.528212>,  <40.129543, 28.955105, 20.602161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.737747, 28.923044, 20.528212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197294, 0.568038, 0.799004,
		0.040975, 0.819090, -0.572200,
		-0.979488, -0.080153, -0.184877,
		39.443901, 28.898998, 20.472748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.826569, 29.658371, 20.358152>,  <40.129543, 28.955105, 20.602161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.826569, 29.658371, 20.358152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.594749, 29.421597, 20.582201>,  <39.455658, 29.279531, 20.716631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.594749, 29.421597, 20.582201>,  <39.826569, 29.658371, 20.358152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.594749, 29.421597, 20.582201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077045, 0.724035, 0.685446,
		-0.811289, 0.354094, -0.465218,
		-0.579547, -0.591938, 0.560121,
		39.420887, 29.244015, 20.750237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.133572, 30.120502, 20.578217>,  <39.826569, 29.658371, 20.358152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.133572, 30.120502, 20.578217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.171410, 29.806385, 20.822958>,  <39.194111, 29.617914, 20.969803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.171410, 29.806385, 20.822958>,  <39.133572, 30.120502, 20.578217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.171410, 29.806385, 20.822958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058973, 0.609111, 0.790889,
		-0.993768, -0.110897, 0.011307,
		0.094595, -0.785293, 0.611855,
		39.199787, 29.570797, 21.006516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.458393, 30.167446, 21.002075>,  <39.133572, 30.120502, 20.578217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.458393, 30.167446, 21.002075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.753967, 29.978441, 21.194202>,  <38.931313, 29.865038, 21.309479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.753967, 29.978441, 21.194202>,  <38.458393, 30.167446, 21.002075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.753967, 29.978441, 21.194202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039716, 0.742185, 0.669018,
		-0.672603, -0.475286, 0.567194,
		0.738937, -0.472510, 0.480319,
		38.975647, 29.836689, 21.338299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111973, 30.079922, 21.665817>,  <38.458393, 30.167446, 21.002075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.111973, 30.079922, 21.665817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.503719, 30.036003, 21.733677>,  <38.738770, 30.009653, 21.774393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.503719, 30.036003, 21.733677>,  <38.111973, 30.079922, 21.665817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.503719, 30.036003, 21.733677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080067, 0.559976, 0.824631,
		-0.185541, -0.821202, 0.539632,
		0.979369, -0.109796, 0.169649,
		38.797531, 30.003065, 21.784573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167797, 30.121708, 22.414839>,  <38.111973, 30.079922, 21.665817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.167797, 30.121708, 22.414839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.543156, 30.174799, 22.287222>,  <38.768372, 30.206654, 22.210651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.543156, 30.174799, 22.287222>,  <38.167797, 30.121708, 22.414839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.543156, 30.174799, 22.287222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200420, 0.543068, 0.815420,
		0.281489, -0.829133, 0.483014,
		0.938400, 0.132726, -0.319042,
		38.824677, 30.214617, 22.191509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.592503, 29.921713, 22.973972>,  <38.167797, 30.121708, 22.414839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.592503, 29.921713, 22.973972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.753860, 30.197863, 22.733755>,  <38.850677, 30.363552, 22.589624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.753860, 30.197863, 22.733755>,  <38.592503, 29.921713, 22.973972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.753860, 30.197863, 22.733755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081230, 0.626704, 0.775012,
		0.911412, -0.361420, 0.196732,
		0.403398, 0.690375, -0.600544,
		38.874882, 30.404976, 22.553593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.250614, 30.236040, 23.330065>,  <38.592503, 29.921713, 22.973972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.250614, 30.236040, 23.330065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.158627, 30.492853, 23.037516>,  <39.103436, 30.646942, 22.861986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.158627, 30.492853, 23.037516>,  <39.250614, 30.236040, 23.330065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.158627, 30.492853, 23.037516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054365, 0.758818, 0.649031,
		0.971679, 0.109494, -0.209406,
		-0.229966, 0.642034, -0.731374,
		39.089638, 30.685463, 22.818104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.625118, 30.719872, 23.587908>,  <39.250614, 30.236040, 23.330065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.625118, 30.719872, 23.587908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.382141, 30.895052, 23.322815>,  <39.236355, 31.000160, 23.163759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.382141, 30.895052, 23.322815>,  <39.625118, 30.719872, 23.587908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.382141, 30.895052, 23.322815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016502, 0.827156, 0.561730,
		0.794194, 0.352154, -0.495221,
		-0.607440, 0.437950, -0.662734,
		39.199909, 31.026438, 23.123995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.984413, 31.330971, 23.380711>,  <39.625118, 30.719872, 23.587908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.984413, 31.330971, 23.380711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.592472, 31.394375, 23.332111>,  <39.357307, 31.432417, 23.302952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.592472, 31.394375, 23.332111>,  <39.984413, 31.330971, 23.380711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.592472, 31.394375, 23.332111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065225, 0.828968, 0.555480,
		0.188766, 0.536364, -0.822606,
		-0.979854, 0.158510, -0.121496,
		39.298515, 31.441927, 23.295662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.833958, 32.064911, 23.230440>,  <39.984413, 31.330971, 23.380711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.833958, 32.064911, 23.230440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.496582, 31.915339, 23.384729>,  <39.294155, 31.825596, 23.477303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.496582, 31.915339, 23.384729>,  <39.833958, 32.064911, 23.230440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.496582, 31.915339, 23.384729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048864, 0.768423, 0.638074,
		-0.534992, 0.519331, -0.666392,
		-0.843443, -0.373927, 0.385724,
		39.243549, 31.803160, 23.500446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.257385, 32.609329, 23.209846>,  <39.833958, 32.064911, 23.230440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.257385, 32.609329, 23.209846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.135708, 32.324379, 23.462826>,  <39.062702, 32.153408, 23.614613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.135708, 32.324379, 23.462826>,  <39.257385, 32.609329, 23.209846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.135708, 32.324379, 23.462826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399004, 0.698146, 0.594465,
		-0.865021, -0.071516, -0.496612,
		-0.304194, -0.712375, 0.632446,
		39.044449, 32.110668, 23.652559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.678707, 32.888355, 23.471178>,  <39.257385, 32.609329, 23.209846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.678707, 32.888355, 23.471178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.735783, 32.580978, 23.720699>,  <38.770027, 32.396553, 23.870413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.735783, 32.580978, 23.720699>,  <38.678707, 32.888355, 23.471178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.735783, 32.580978, 23.720699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270245, 0.576057, 0.771444,
		-0.952159, -0.278660, -0.125469,
		0.142693, -0.768444, 0.623804,
		38.778591, 32.350445, 23.907841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.056107, 32.885803, 23.984674>,  <38.678707, 32.888355, 23.471178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.056107, 32.885803, 23.984674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.309155, 32.660904, 24.197716>,  <38.460983, 32.525963, 24.325541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.309155, 32.660904, 24.197716>,  <38.056107, 32.885803, 23.984674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.309155, 32.660904, 24.197716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516157, 0.206616, 0.831199,
		-0.577386, -0.800740, -0.159500,
		0.632619, -0.562249, 0.532605,
		38.498940, 32.492229, 24.357498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.631020, 32.409924, 24.459364>,  <38.056107, 32.885803, 23.984674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.631020, 32.409924, 24.459364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.000294, 32.480938, 24.595726>,  <38.221859, 32.523548, 24.677544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.000294, 32.480938, 24.595726>,  <37.631020, 32.409924, 24.459364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.000294, 32.480938, 24.595726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384317, 0.412403, 0.825968,
		0.006047, -0.893535, 0.448953,
		0.923181, 0.177535, 0.340907,
		38.277248, 32.534199, 24.697998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.579529, 32.199734, 25.113873>,  <37.631020, 32.409924, 24.459364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.579529, 32.199734, 25.113873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.888477, 32.451412, 25.079105>,  <38.073845, 32.602421, 25.058245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.888477, 32.451412, 25.079105>,  <37.579529, 32.199734, 25.113873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.888477, 32.451412, 25.079105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141078, 0.303362, 0.942374,
		0.619305, -0.715601, 0.323074,
		0.772372, 0.629195, -0.086918,
		38.120190, 32.640171, 25.053030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.803993, 32.185543, 25.789522>,  <37.579529, 32.199734, 25.113873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.803993, 32.185543, 25.789522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.980373, 32.492569, 25.603445>,  <38.086201, 32.676785, 25.491798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.980373, 32.492569, 25.603445>,  <37.803993, 32.185543, 25.789522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.980373, 32.492569, 25.603445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130843, 0.567740, 0.812743,
		0.887945, -0.297508, 0.350773,
		0.440946, 0.767568, -0.465195,
		38.112656, 32.722839, 25.463886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.268421, 32.561935, 26.220886>,  <37.803993, 32.185543, 25.789522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.268421, 32.561935, 26.220886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.156490, 32.838066, 25.954010>,  <38.089333, 33.003746, 25.793884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.156490, 32.838066, 25.954010>,  <38.268421, 32.561935, 26.220886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.156490, 32.838066, 25.954010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168375, 0.648895, 0.742014,
		0.945169, 0.319976, -0.065347,
		-0.279830, 0.690326, -0.667192,
		38.072540, 33.045162, 25.753853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.551483, 33.064514, 26.551500>,  <38.268421, 32.561935, 26.220886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.551483, 33.064514, 26.551500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.307518, 33.227314, 26.279514>,  <38.161137, 33.324993, 26.116322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.307518, 33.227314, 26.279514>,  <38.551483, 33.064514, 26.551500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.307518, 33.227314, 26.279514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377350, 0.605360, 0.700818,
		0.696856, 0.684026, -0.215639,
		-0.609917, 0.406998, -0.679966,
		38.124542, 33.349415, 26.075525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.454575, 33.774662, 26.671408>,  <38.551483, 33.064514, 26.551500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.454575, 33.774662, 26.671408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.121990, 33.694550, 26.464115>,  <37.922440, 33.646484, 26.339739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.121990, 33.694550, 26.464115>,  <38.454575, 33.774662, 26.671408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.121990, 33.694550, 26.464115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521870, 0.601528, 0.604827,
		0.190598, 0.773339, -0.604665,
		-0.831459, -0.200278, -0.518232,
		37.872551, 33.634468, 26.308645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.223392, 34.380520, 26.481005>,  <38.454575, 33.774662, 26.671408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.223392, 34.380520, 26.481005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.891357, 34.158203, 26.462873>,  <37.692135, 34.024815, 26.451994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.891357, 34.158203, 26.462873>,  <38.223392, 34.380520, 26.481005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.891357, 34.158203, 26.462873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525705, 0.752858, 0.396030,
		-0.185983, 0.352569, -0.917118,
		-0.830087, -0.555788, -0.045329,
		37.642330, 33.991467, 26.449274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.597195, 34.865955, 26.573666>,  <38.223392, 34.380520, 26.481005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.597195, 34.865955, 26.573666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.438034, 34.505016, 26.639917>,  <37.342537, 34.288452, 26.679668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.438034, 34.505016, 26.639917>,  <37.597195, 34.865955, 26.573666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.438034, 34.505016, 26.639917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573393, 0.385537, 0.722898,
		-0.716165, 0.192672, -0.670809,
		-0.397904, -0.902352, 0.165631,
		37.318665, 34.234310, 26.689608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.909954, 34.993225, 26.423573>,  <37.597195, 34.865955, 26.573666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.909954, 34.993225, 26.423573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.940247, 34.662254, 26.646149>,  <36.958424, 34.463673, 26.779694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.940247, 34.662254, 26.646149>,  <36.909954, 34.993225, 26.423573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.940247, 34.662254, 26.646149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604183, 0.405856, 0.685743,
		-0.793239, -0.388123, -0.469184,
		0.075731, -0.827431, 0.556438,
		36.962967, 34.414024, 26.813080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.303715, 34.958359, 26.781170>,  <36.909954, 34.993225, 26.423573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.303715, 34.958359, 26.781170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.497562, 34.696362, 27.013075>,  <36.613873, 34.539162, 27.152218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.497562, 34.696362, 27.013075>,  <36.303715, 34.958359, 26.781170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.497562, 34.696362, 27.013075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538168, 0.299247, 0.787925,
		-0.689579, -0.693855, -0.207476,
		0.484619, -0.654994, 0.579765,
		36.642948, 34.499863, 27.187004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.775856, 34.524982, 27.084747>,  <36.303715, 34.958359, 26.781170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.775856, 34.524982, 27.084747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.113358, 34.478065, 27.294250>,  <36.315857, 34.449917, 27.419952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.113358, 34.478065, 27.294250>,  <35.775856, 34.524982, 27.084747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.113358, 34.478065, 27.294250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495257, 0.205997, 0.843970,
		-0.206885, -0.971497, 0.115720,
		0.843753, -0.117294, 0.523758,
		36.366482, 34.442879, 27.451378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.549660, 34.193142, 27.640694>,  <35.775856, 34.524982, 27.084747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.549660, 34.193142, 27.640694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.890556, 34.349831, 27.779394>,  <36.095093, 34.443844, 27.862616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.890556, 34.349831, 27.779394>,  <35.549660, 34.193142, 27.640694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.890556, 34.349831, 27.779394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459232, 0.242708, 0.854517,
		0.250610, -0.887478, 0.386752,
		0.852233, 0.391759, 0.346733,
		36.146229, 34.467346, 27.883421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.673161, 33.971390, 28.356960>,  <35.549660, 34.193142, 27.640694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.673161, 33.971390, 28.356960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.905117, 34.296883, 28.341122>,  <36.044292, 34.492180, 28.331619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.905117, 34.296883, 28.341122>,  <35.673161, 33.971390, 28.356960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.905117, 34.296883, 28.341122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392683, 0.321761, 0.861551,
		0.713812, -0.484056, 0.506125,
		0.579890, 0.813732, -0.039596,
		36.079082, 34.541000, 28.329243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.959381, 34.090790, 29.074825>,  <35.673161, 33.971390, 28.356960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.959381, 34.090790, 29.074825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.963676, 34.425610, 28.856016>,  <35.966251, 34.626503, 28.724731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.963676, 34.425610, 28.856016>,  <35.959381, 34.090790, 29.074825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.963676, 34.425610, 28.856016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500561, 0.478075, 0.721722,
		0.865635, 0.266070, 0.424127,
		0.010736, 0.837049, -0.547022,
		35.966896, 34.676723, 28.691910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.305828, 34.617504, 29.511028>,  <35.959381, 34.090790, 29.074825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.305828, 34.617504, 29.511028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.096115, 34.819374, 29.236675>,  <35.970287, 34.940495, 29.072063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.096115, 34.819374, 29.236675>,  <36.305828, 34.617504, 29.511028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.096115, 34.819374, 29.236675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371561, 0.589156, 0.717522,
		0.766205, 0.631031, -0.121368,
		-0.524283, 0.504673, -0.685881,
		35.938831, 34.970776, 29.030910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.473965, 35.346931, 29.537312>,  <36.305828, 34.617504, 29.511028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.473965, 35.346931, 29.537312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.104237, 35.335941, 29.385057>,  <35.882401, 35.329346, 29.293705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.104237, 35.335941, 29.385057>,  <36.473965, 35.346931, 29.537312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.104237, 35.335941, 29.385057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302494, 0.660853, 0.686856,
		0.232674, 0.750012, -0.619149,
		-0.924316, -0.027475, -0.380637,
		35.826942, 35.327698, 29.270866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.345493, 36.016602, 29.413494>,  <36.473965, 35.346931, 29.537312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.345493, 36.016602, 29.413494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.991779, 35.829823, 29.413254>,  <35.779552, 35.717754, 29.413111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.991779, 35.829823, 29.413254>,  <36.345493, 36.016602, 29.413494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.991779, 35.829823, 29.413254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333219, 0.630132, 0.701355,
		-0.327120, 0.620396, -0.712812,
		-0.884284, -0.466950, -0.000599,
		35.726494, 35.689739, 29.413074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.924347, 36.510109, 29.708155>,  <36.345493, 36.016602, 29.413494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.924347, 36.510109, 29.708155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.684731, 36.190079, 29.695326>,  <35.540962, 35.998058, 29.687628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.684731, 36.190079, 29.695326>,  <35.924347, 36.510109, 29.708155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.684731, 36.190079, 29.695326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553971, 0.385184, 0.738071,
		-0.578161, 0.459899, -0.673961,
		-0.599037, -0.800079, -0.032072,
		35.505020, 35.950054, 29.685703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.159195, 36.723598, 29.678991>,  <35.924347, 36.510109, 29.708155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.159195, 36.723598, 29.678991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.200466, 36.366692, 29.854816>,  <35.225227, 36.152550, 29.960312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.200466, 36.366692, 29.854816>,  <35.159195, 36.723598, 29.678991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.200466, 36.366692, 29.854816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643747, 0.276984, 0.713351,
		-0.758250, -0.356570, -0.545815,
		0.103177, -0.892265, 0.439565,
		35.231419, 36.099010, 29.986687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.398365, 36.506374, 29.812370>,  <35.159195, 36.723598, 29.678991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.398365, 36.506374, 29.812370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.643253, 36.287502, 30.040680>,  <34.790184, 36.156178, 30.177666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.643253, 36.287502, 30.040680>,  <34.398365, 36.506374, 29.812370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.643253, 36.287502, 30.040680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556159, 0.215109, 0.802755,
		-0.562031, -0.808901, -0.172626,
		0.612216, -0.547181, 0.570775,
		34.826920, 36.123348, 30.211912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.993866, 36.315750, 30.287571>,  <34.398365, 36.506374, 29.812370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.993866, 36.315750, 30.287571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.333046, 36.214722, 30.473984>,  <34.536556, 36.154106, 30.585831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.333046, 36.214722, 30.473984>,  <33.993866, 36.315750, 30.287571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.333046, 36.214722, 30.473984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511446, -0.158820, 0.844511,
		-0.139261, -0.954462, -0.263836,
		0.847956, -0.252546, 0.466038,
		34.587433, 36.138950, 30.613792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.051102, 35.640057, 30.725050>,  <33.993866, 36.315750, 30.287571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.051102, 35.640057, 30.725050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.337200, 35.841896, 30.918459>,  <34.508862, 35.963001, 31.034504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.337200, 35.841896, 30.918459>,  <34.051102, 35.640057, 30.725050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.337200, 35.841896, 30.918459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428143, -0.230457, 0.873832,
		0.552370, -0.832025, 0.051208,
		0.715249, 0.504603, 0.483523,
		34.551773, 35.993279, 31.063517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.220009, 35.356346, 31.348690>,  <34.051102, 35.640057, 30.725050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.220009, 35.356346, 31.348690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.382175, 35.712101, 31.433186>,  <34.479477, 35.925556, 31.483883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.382175, 35.712101, 31.433186>,  <34.220009, 35.356346, 31.348690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.382175, 35.712101, 31.433186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253168, -0.112800, 0.960823,
		0.878375, -0.443013, 0.179434,
		0.405417, 0.889390, 0.211238,
		34.503799, 35.978920, 31.496557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.402672, 35.217690, 32.013554>,  <34.220009, 35.356346, 31.348690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.402672, 35.217690, 32.013554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.424633, 35.615749, 31.980883>,  <34.437809, 35.854584, 31.961279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.424633, 35.615749, 31.980883>,  <34.402672, 35.217690, 32.013554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.424633, 35.615749, 31.980883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356041, 0.095938, 0.929533,
		0.932856, -0.021951, 0.359579,
		0.054902, 0.995145, -0.081681,
		34.441105, 35.914291, 31.956379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.817650, 35.428883, 32.507992>,  <34.402672, 35.217690, 32.013554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.817650, 35.428883, 32.507992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.605473, 35.755032, 32.415222>,  <34.478165, 35.950722, 32.359562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.605473, 35.755032, 32.415222>,  <34.817650, 35.428883, 32.507992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.605473, 35.755032, 32.415222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217735, 0.133363, 0.966853,
		0.819279, 0.563362, 0.106793,
		-0.530447, 0.815375, -0.231925,
		34.446339, 35.999645, 32.345646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.054993, 36.021324, 32.977924>,  <34.817650, 35.428883, 32.507992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.054993, 36.021324, 32.977924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.686943, 36.099705, 32.842297>,  <34.466114, 36.146732, 32.760918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.686943, 36.099705, 32.842297>,  <35.054993, 36.021324, 32.977924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.686943, 36.099705, 32.842297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279289, 0.278598, 0.918902,
		0.274529, 0.940205, -0.201617,
		-0.920126, 0.195955, -0.339072,
		34.410904, 36.158493, 32.740574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.562069, 36.513657, 33.411865>,  <35.054993, 36.021324, 32.977924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.562069, 36.513657, 33.411865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.903088, 36.721939, 33.429935>,  <36.107697, 36.846909, 33.440777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.903088, 36.721939, 33.429935>,  <35.562069, 36.513657, 33.411865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.903088, 36.721939, 33.429935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308617, -0.431763, -0.847547,
		-0.421815, 0.736512, -0.528794,
		0.852542, 0.520703, 0.045176,
		36.158852, 36.878151, 33.443489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.725788, 36.924908, 32.665123>,  <35.562069, 36.513657, 33.411865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.725788, 36.924908, 32.665123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.059399, 36.859444, 32.875881>,  <36.259563, 36.820164, 33.002335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.059399, 36.859444, 32.875881>,  <35.725788, 36.924908, 32.665123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.059399, 36.859444, 32.875881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470877, -0.286553, -0.834364,
		0.287537, 0.943982, -0.161927,
		0.834025, -0.163663, 0.526893,
		36.309605, 36.810345, 33.033951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223114, 37.142265, 32.198414>,  <35.725788, 36.924908, 32.665123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.223114, 37.142265, 32.198414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.450504, 36.942612, 32.460007>,  <36.586937, 36.822819, 32.616962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.450504, 36.942612, 32.460007>,  <36.223114, 37.142265, 32.198414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.450504, 36.942612, 32.460007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592823, -0.302649, -0.746300,
		0.570435, 0.811951, 0.123852,
		0.568475, -0.499138, 0.653985,
		36.621048, 36.792870, 32.656200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.962997, 37.322369, 32.132915>,  <36.223114, 37.142265, 32.198414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.962997, 37.322369, 32.132915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.959232, 36.966057, 32.314648>,  <36.956974, 36.752270, 32.423687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.959232, 36.966057, 32.314648>,  <36.962997, 37.322369, 32.132915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.959232, 36.966057, 32.314648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609782, -0.365210, -0.703411,
		0.792513, 0.270420, 0.546623,
		-0.009416, -0.890783, 0.454331,
		36.956409, 36.698822, 32.450947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695045, 37.237495, 32.265110>,  <36.962997, 37.322369, 32.132915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.695045, 37.237495, 32.265110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.484020, 36.897732, 32.259682>,  <37.357403, 36.693874, 32.256424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.484020, 36.897732, 32.259682>,  <37.695045, 37.237495, 32.265110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.484020, 36.897732, 32.259682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622353, -0.375575, -0.686746,
		0.578231, -0.370747, 0.726770,
		-0.527566, -0.849406, -0.013566,
		37.325752, 36.642910, 32.255611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226490, 36.721134, 32.360085>,  <37.695045, 37.237495, 32.265110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.226490, 36.721134, 32.360085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.930923, 36.529316, 32.170753>,  <37.753586, 36.414223, 32.057156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.930923, 36.529316, 32.170753>,  <38.226490, 36.721134, 32.360085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.930923, 36.529316, 32.170753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661792, -0.384478, -0.643591,
		0.126650, -0.788802, 0.601458,
		-0.738913, -0.479550, -0.473328,
		37.709251, 36.385452, 32.028755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.435360, 35.943027, 32.345520>,  <38.226490, 36.721134, 32.360085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.435360, 35.943027, 32.345520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.151134, 36.030090, 32.077873>,  <37.980598, 36.082329, 31.917284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.151134, 36.030090, 32.077873>,  <38.435360, 35.943027, 32.345520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.151134, 36.030090, 32.077873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617082, -0.264158, -0.741235,
		-0.338093, -0.939597, 0.053385,
		-0.710565, 0.217663, -0.669119,
		37.937965, 36.095390, 31.877138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.438572, 35.387226, 31.937641>,  <38.435360, 35.943027, 32.345520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.438572, 35.387226, 31.937641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.267090, 35.652122, 31.691830>,  <38.164200, 35.811062, 31.544342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.267090, 35.652122, 31.691830>,  <38.438572, 35.387226, 31.937641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.267090, 35.652122, 31.691830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541557, -0.356080, -0.761526,
		-0.723137, -0.659273, -0.205989,
		-0.428706, 0.662243, -0.614529,
		38.138477, 35.850796, 31.507471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.167824, 35.094540, 31.309259>,  <38.438572, 35.387226, 31.937641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.167824, 35.094540, 31.309259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.184875, 35.479111, 31.200562>,  <38.195107, 35.709854, 31.135344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.184875, 35.479111, 31.200562>,  <38.167824, 35.094540, 31.309259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.184875, 35.479111, 31.200562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401077, -0.265579, -0.876701,
		-0.915052, -0.071621, -0.396926,
		0.042625, 0.961425, -0.271744,
		38.197662, 35.767540, 31.119038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.082409, 35.045052, 30.620564>,  <38.167824, 35.094540, 31.309259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.082409, 35.045052, 30.620564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.232895, 35.413410, 30.661367>,  <38.323185, 35.634426, 30.685850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.232895, 35.413410, 30.661367>,  <38.082409, 35.045052, 30.620564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.232895, 35.413410, 30.661367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449180, -0.084979, -0.889391,
		-0.810372, 0.380420, -0.445620,
		0.376211, 0.920901, 0.102012,
		38.345757, 35.689682, 30.691971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.016235, 35.361248, 29.935946>,  <38.082409, 35.045052, 30.620564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.016235, 35.361248, 29.935946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.279675, 35.599895, 30.119377>,  <38.437740, 35.743084, 30.229437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.279675, 35.599895, 30.119377>,  <38.016235, 35.361248, 29.935946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.279675, 35.599895, 30.119377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451145, 0.174685, -0.875188,
		-0.602257, 0.783285, -0.154112,
		0.658601, 0.596615, 0.458580,
		38.477253, 35.778881, 30.256950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.037029, 36.002190, 29.558689>,  <38.016235, 35.361248, 29.935946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.037029, 36.002190, 29.558689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.392208, 35.953400, 29.736082>,  <38.605316, 35.924126, 29.842518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.392208, 35.953400, 29.736082>,  <38.037029, 36.002190, 29.558689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.392208, 35.953400, 29.736082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448945, 0.020172, -0.893331,
		0.100020, 0.992328, 0.072672,
		0.887944, -0.121977, 0.443483,
		38.658592, 35.916805, 29.869127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.439934, 36.604675, 29.372833>,  <38.037029, 36.002190, 29.558689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.439934, 36.604675, 29.372833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.701866, 36.315273, 29.460226>,  <38.859024, 36.141632, 29.512661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.701866, 36.315273, 29.460226>,  <38.439934, 36.604675, 29.372833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.701866, 36.315273, 29.460226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354656, 0.038889, -0.934188,
		0.667396, 0.689219, 0.282062,
		0.654830, -0.723508, 0.218481,
		38.898315, 36.098221, 29.525770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.096909, 36.810833, 29.073719>,  <38.439934, 36.604675, 29.372833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.096909, 36.810833, 29.073719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.169106, 36.423283, 29.141491>,  <39.212421, 36.190754, 29.182154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.169106, 36.423283, 29.141491>,  <39.096909, 36.810833, 29.073719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.169106, 36.423283, 29.141491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398535, -0.085447, -0.913164,
		0.899218, 0.232340, 0.370708,
		0.180489, -0.968874, 0.169431,
		39.223251, 36.132622, 29.192320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.820118, 36.677273, 28.941534>,  <39.096909, 36.810833, 29.073719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.820118, 36.677273, 28.941534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.650585, 36.318375, 28.892023>,  <39.548866, 36.103035, 28.862316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.650585, 36.318375, 28.892023>,  <39.820118, 36.677273, 28.941534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.650585, 36.318375, 28.892023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504994, -0.120644, -0.854650,
		0.751897, -0.424732, 0.504236,
		-0.423830, -0.897244, -0.123776,
		39.523438, 36.049202, 28.854891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.372940, 36.215172, 28.713898>,  <39.820118, 36.677273, 28.941534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.372940, 36.215172, 28.713898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.031796, 36.054615, 28.580326>,  <39.827110, 35.958279, 28.500183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.031796, 36.054615, 28.580326>,  <40.372940, 36.215172, 28.713898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.031796, 36.054615, 28.580326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459163, -0.272080, -0.845660,
		0.248587, -0.874560, 0.416352,
		-0.852862, -0.401394, -0.333930,
		39.775936, 35.934196, 28.480146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.523399, 35.458984, 28.607777>,  <40.372940, 36.215172, 28.713898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.523399, 35.458984, 28.607777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.188572, 35.531948, 28.401457>,  <39.987675, 35.575726, 28.277666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.188572, 35.531948, 28.401457>,  <40.523399, 35.458984, 28.607777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.188572, 35.531948, 28.401457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385315, -0.472745, -0.792493,
		-0.388393, -0.862115, 0.325437,
		-0.837068, 0.182403, -0.515796,
		39.937450, 35.586670, 28.246717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.309933, 34.813763, 28.384855>,  <40.523399, 35.458984, 28.607777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.309933, 34.813763, 28.384855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.129208, 35.069561, 28.136047>,  <40.020771, 35.223042, 27.986763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.129208, 35.069561, 28.136047>,  <40.309933, 34.813763, 28.384855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.129208, 35.069561, 28.136047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316011, -0.537307, -0.781945,
		-0.834268, -0.549856, 0.040673,
		-0.451811, 0.639499, -0.622019,
		39.993664, 35.261410, 27.949442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.866924, 34.485897, 27.996489>,  <40.309933, 34.813763, 28.384855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.866924, 34.485897, 27.996489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.925533, 34.815376, 27.777382>,  <39.960701, 35.013065, 27.645918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.925533, 34.815376, 27.777382>,  <39.866924, 34.485897, 27.996489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.925533, 34.815376, 27.777382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257548, -0.566412, -0.782845,
		-0.955091, -0.026370, -0.295136,
		0.146525, 0.823700, -0.547766,
		39.969490, 35.062485, 27.613052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.540829, 34.287971, 27.493500>,  <39.866924, 34.485897, 27.996489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.540829, 34.287971, 27.493500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.752911, 34.587326, 27.334101>,  <39.880157, 34.766937, 27.238461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.752911, 34.587326, 27.334101>,  <39.540829, 34.287971, 27.493500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.752911, 34.587326, 27.334101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241813, -0.583952, -0.774937,
		-0.812657, 0.314512, -0.490583,
		0.530203, 0.748387, -0.398500,
		39.911972, 34.811844, 27.214550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.302032, 34.282356, 26.831537>,  <39.540829, 34.287971, 27.493500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.302032, 34.282356, 26.831537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.666763, 34.446583, 26.832682>,  <39.885601, 34.545120, 26.833368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.666763, 34.446583, 26.832682>,  <39.302032, 34.282356, 26.831537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.666763, 34.446583, 26.832682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272948, -0.600949, -0.751239,
		-0.306717, 0.685779, -0.660025,
		0.911825, 0.410570, 0.002861,
		39.940311, 34.569756, 26.833540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.484745, 34.372261, 26.183895>,  <39.302032, 34.282356, 26.831537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.484745, 34.372261, 26.183895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.823185, 34.321091, 26.390871>,  <40.026249, 34.290390, 26.515057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.823185, 34.321091, 26.390871>,  <39.484745, 34.372261, 26.183895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.823185, 34.321091, 26.390871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305504, -0.679103, -0.667448,
		0.436777, 0.722810, -0.535510,
		0.846105, -0.127926, 0.517438,
		40.077015, 34.282715, 26.546103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.968414, 34.263664, 25.703365>,  <39.484745, 34.372261, 26.183895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.968414, 34.263664, 25.703365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.114525, 34.092876, 26.034246>,  <40.202190, 33.990402, 26.232775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.114525, 34.092876, 26.034246>,  <39.968414, 34.263664, 25.703365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.114525, 34.092876, 26.034246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270262, -0.801692, -0.533149,
		0.890802, 0.418310, -0.177447,
		0.365280, -0.426973, 0.827203,
		40.224110, 33.964783, 26.282408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.630138, 33.836571, 25.454264>,  <39.968414, 34.263664, 25.703365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.630138, 33.836571, 25.454264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.522053, 33.681393, 25.806738>,  <40.457203, 33.588287, 26.018223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.522053, 33.681393, 25.806738>,  <40.630138, 33.836571, 25.454264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.522053, 33.681393, 25.806738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424753, -0.869384, -0.252500,
		0.864043, 0.306057, 0.399699,
		-0.270213, -0.387944, 0.881184,
		40.440990, 33.565010, 26.071093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.229862, 33.586708, 25.639736>,  <40.630138, 33.836571, 25.454264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.229862, 33.586708, 25.639736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.957375, 33.383022, 25.850121>,  <40.793880, 33.260811, 25.976351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.957375, 33.383022, 25.850121>,  <41.229862, 33.586708, 25.639736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.957375, 33.383022, 25.850121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422148, -0.860209, -0.286063,
		0.598106, 0.027162, 0.800957,
		-0.681220, -0.509218, 0.525962,
		40.753010, 33.230255, 26.007910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.577629, 33.089851, 26.074692>,  <41.229862, 33.586708, 25.639736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.577629, 33.089851, 26.074692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.209335, 32.937798, 26.039501>,  <40.988358, 32.846565, 26.018387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.209335, 32.937798, 26.039501>,  <41.577629, 33.089851, 26.074692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.209335, 32.937798, 26.039501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389809, -0.886296, -0.250055,
		0.017083, -0.264529, 0.964226,
		-0.920737, -0.380136, -0.087975,
		40.933113, 32.823757, 26.013109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.641121, 32.411102, 26.402321>,  <41.577629, 33.089851, 26.074692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.641121, 32.411102, 26.402321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.316601, 32.391548, 26.169287>,  <41.121887, 32.379818, 26.029467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.316601, 32.391548, 26.169287>,  <41.641121, 32.411102, 26.402321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.316601, 32.391548, 26.169287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331611, -0.859163, -0.389709,
		-0.481484, -0.509362, 0.713248,
		-0.811299, -0.048883, -0.582584,
		41.073212, 32.376884, 25.994511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.321182, 31.704721, 26.461765>,  <41.641121, 32.411102, 26.402321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.321182, 31.704721, 26.461765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.208923, 31.842432, 26.103388>,  <41.141567, 31.925058, 25.888361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.208923, 31.842432, 26.103388>,  <41.321182, 31.704721, 26.461765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.208923, 31.842432, 26.103388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281914, -0.862715, -0.419817,
		-0.917477, -0.370398, 0.145059,
		-0.280644, 0.344279, -0.895941,
		41.124729, 31.945715, 25.834606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.307430, 31.110378, 26.099976>,  <41.321182, 31.704721, 26.461765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.307430, 31.110378, 26.099976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.246807, 31.357828, 25.791603>,  <41.210434, 31.506298, 25.606581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.246807, 31.357828, 25.791603>,  <41.307430, 31.110378, 26.099976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.246807, 31.357828, 25.791603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421561, -0.664996, -0.616496,
		-0.894045, -0.418429, -0.160002,
		-0.151559, 0.618626, -0.770929,
		41.201340, 31.543415, 25.560324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.209492, 30.658255, 25.595629>,  <41.307430, 31.110378, 26.099976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.209492, 30.658255, 25.595629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.269508, 31.002640, 25.401215>,  <41.305519, 31.209270, 25.284567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.269508, 31.002640, 25.401215>,  <41.209492, 30.658255, 25.595629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.269508, 31.002640, 25.401215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367464, -0.504944, -0.781026,
		-0.917856, -0.061417, -0.392134,
		0.150038, 0.860964, -0.486034,
		41.314518, 31.260929, 25.255404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.897369, 30.680534, 24.937330>,  <41.209492, 30.658255, 25.595629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.897369, 30.680534, 24.937330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.187656, 30.953255, 24.900497>,  <41.361828, 31.116886, 24.878397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.187656, 30.953255, 24.900497>,  <40.897369, 30.680534, 24.937330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.187656, 30.953255, 24.900497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382950, -0.511510, -0.769225,
		-0.571558, 0.522979, -0.632308,
		0.725721, 0.681799, -0.092083,
		41.405373, 31.157795, 24.872873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.896130, 30.950113, 24.223042>,  <40.897369, 30.680534, 24.937330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.896130, 30.950113, 24.223042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.261227, 31.026962, 24.367256>,  <41.480286, 31.073071, 24.453785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.261227, 31.026962, 24.367256>,  <40.896130, 30.950113, 24.223042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.261227, 31.026962, 24.367256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406745, -0.344997, -0.845893,
		-0.038130, 0.918731, -0.393039,
		0.912746, 0.192121, 0.360535,
		41.535049, 31.084599, 24.475416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.219334, 31.287724, 23.699451>,  <40.896130, 30.950113, 24.223042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.219334, 31.287724, 23.699451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.508240, 31.134874, 23.930038>,  <41.681583, 31.043165, 24.068390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.508240, 31.134874, 23.930038>,  <41.219334, 31.287724, 23.699451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.508240, 31.134874, 23.930038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415406, -0.426724, -0.803334,
		0.552963, 0.819689, -0.149473,
		0.722268, -0.382122, 0.576466,
		41.724918, 31.020237, 24.102978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.871738, 31.425917, 23.384890>,  <41.219334, 31.287724, 23.699451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.871738, 31.425917, 23.384890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.910995, 31.108196, 23.624708>,  <41.934551, 30.917564, 23.768599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.910995, 31.108196, 23.624708>,  <41.871738, 31.425917, 23.384890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.910995, 31.108196, 23.624708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484556, -0.488073, -0.725941,
		0.869237, 0.361762, 0.336980,
		0.098147, -0.794300, 0.599545,
		41.940441, 30.869905, 23.804571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.563923, 31.338898, 23.416304>,  <41.871738, 31.425917, 23.384890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.563923, 31.338898, 23.416304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.424419, 30.982571, 23.532795>,  <42.340717, 30.768774, 23.602690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.424419, 30.982571, 23.532795>,  <42.563923, 31.338898, 23.416304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.424419, 30.982571, 23.532795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705619, -0.454091, -0.543970,
		0.616820, 0.015779, 0.786946,
		-0.348762, -0.890816, 0.291226,
		42.319790, 30.715326, 23.620163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.183517, 30.879620, 23.347120>,  <42.563923, 31.338898, 23.416304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.183517, 30.879620, 23.347120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.892658, 30.615320, 23.421604>,  <42.718143, 30.456741, 23.466295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.892658, 30.615320, 23.421604>,  <43.183517, 30.879620, 23.347120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.892658, 30.615320, 23.421604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490824, -0.690048, -0.531908,
		0.479951, -0.295377, 0.826075,
		-0.727145, -0.660747, 0.186211,
		42.674515, 30.417097, 23.477467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.424709, 30.251083, 23.780050>,  <43.183517, 30.879620, 23.347120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.424709, 30.251083, 23.780050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.106258, 30.170828, 23.551689>,  <42.915188, 30.122675, 23.414673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.106258, 30.170828, 23.551689>,  <43.424709, 30.251083, 23.780050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.106258, 30.170828, 23.551689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550580, -0.631631, -0.545806,
		-0.251091, -0.748857, 0.613324,
		-0.796125, -0.200637, -0.570902,
		42.867420, 30.110638, 23.380419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.442421, 29.592918, 23.898172>,  <43.424709, 30.251083, 23.780050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.442421, 29.592918, 23.898172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.247429, 29.681328, 23.560295>,  <43.130432, 29.734373, 23.357569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.247429, 29.681328, 23.560295>,  <43.442421, 29.592918, 23.898172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.247429, 29.681328, 23.560295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522787, -0.700964, -0.485121,
		-0.699337, -0.678078, 0.226137,
		-0.487464, 0.221042, -0.844701,
		43.101185, 29.747635, 23.306887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.841911, 29.099949, 24.238142>,  <43.442421, 29.592918, 23.898172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.841911, 29.099949, 24.238142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.162956, 28.861759, 24.224091>,  <44.355583, 28.718845, 24.215660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.162956, 28.861759, 24.224091>,  <43.841911, 29.099949, 24.238142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.162956, 28.861759, 24.224091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337294, 0.404474, 0.850079,
		-0.491990, -0.694128, 0.525482,
		0.802607, -0.595472, -0.035128,
		44.403740, 28.683117, 24.213552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.807423, 28.669638, 24.774279>,  <43.841911, 29.099949, 24.238142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.807423, 28.669638, 24.774279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.194008, 28.731602, 24.692356>,  <44.425961, 28.768780, 24.643202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.194008, 28.731602, 24.692356>,  <43.807423, 28.669638, 24.774279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.194008, 28.731602, 24.692356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133968, 0.376268, 0.916774,
		0.219078, -0.913469, 0.342897,
		0.966467, 0.154908, -0.204808,
		44.483948, 28.778074, 24.630913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.120274, 28.643562, 25.472149>,  <43.807423, 28.669638, 24.774279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.120274, 28.643562, 25.472149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.406837, 28.807396, 25.246231>,  <44.578777, 28.905697, 25.110680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.406837, 28.807396, 25.246231>,  <44.120274, 28.643562, 25.472149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.406837, 28.807396, 25.246231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319071, 0.527570, 0.787314,
		0.620442, -0.744250, 0.247270,
		0.716412, 0.409586, -0.564795,
		44.621761, 28.930271, 25.076792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.774609, 28.652735, 25.922318>,  <44.120274, 28.643562, 25.472149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.774609, 28.652735, 25.922318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.798077, 28.912663, 25.619188>,  <44.812157, 29.068619, 25.437311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.798077, 28.912663, 25.619188>,  <44.774609, 28.652735, 25.922318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.798077, 28.912663, 25.619188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174103, 0.740835, 0.648730,
		0.982978, -0.169998, -0.069674,
		0.058666, 0.649818, -0.757822,
		44.815678, 29.107609, 25.391842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.422947, 28.975441, 25.892708>,  <44.774609, 28.652735, 25.922318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.422947, 28.975441, 25.892708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.165123, 29.220312, 25.709501>,  <45.010429, 29.367235, 25.599577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.165123, 29.220312, 25.709501>,  <45.422947, 28.975441, 25.892708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.165123, 29.220312, 25.709501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213368, 0.719295, 0.661127,
		0.734174, 0.328413, -0.594250,
		-0.644563, 0.612176, -0.458015,
		44.971752, 29.403965, 25.572096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.687073, 29.645369, 25.990919>,  <45.422947, 28.975441, 25.892708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.687073, 29.645369, 25.990919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.300087, 29.711224, 25.914070>,  <45.067898, 29.750736, 25.867960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.300087, 29.711224, 25.914070>,  <45.687073, 29.645369, 25.990919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.300087, 29.711224, 25.914070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023994, 0.815607, 0.578108,
		0.251877, 0.554688, -0.793019,
		-0.967462, 0.164640, -0.192124,
		45.009850, 29.760616, 25.856434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.602638, 30.311499, 25.951361>,  <45.687073, 29.645369, 25.990919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.602638, 30.311499, 25.951361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.207214, 30.260096, 25.982965>,  <44.969959, 30.229254, 26.001928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.207214, 30.260096, 25.982965>,  <45.602638, 30.311499, 25.951361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.207214, 30.260096, 25.982965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095864, 0.939555, 0.328704,
		-0.116478, 0.317368, -0.941122,
		-0.988556, -0.128507, 0.079013,
		44.910648, 30.221544, 26.006670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.263226, 30.841913, 25.519108>,  <45.602638, 30.311499, 25.951361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.263226, 30.841913, 25.519108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.983707, 30.702864, 25.769176>,  <44.815998, 30.619434, 25.919218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.983707, 30.702864, 25.769176>,  <45.263226, 30.841913, 25.519108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.983707, 30.702864, 25.769176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295582, 0.936197, 0.190173,
		-0.651394, -0.051898, -0.756962,
		-0.698797, -0.347623, 0.625174,
		44.774067, 30.598577, 25.956728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.731918, 31.366598, 25.606258>,  <45.263226, 30.841913, 25.519108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.731918, 31.366598, 25.606258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.616398, 31.126698, 25.904760>,  <44.547085, 30.982758, 26.083860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.616398, 31.126698, 25.904760>,  <44.731918, 31.366598, 25.606258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.616398, 31.126698, 25.904760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259589, 0.799322, 0.541939,
		-0.921525, -0.037207, -0.386533,
		-0.288800, -0.599750, 0.746254,
		44.529758, 30.946772, 26.128637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.984348, 31.419765, 25.754948>,  <44.731918, 31.366598, 25.606258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.984348, 31.419765, 25.754948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.169773, 31.313517, 26.093073>,  <44.281029, 31.249767, 26.295948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.169773, 31.313517, 26.093073>,  <43.984348, 31.419765, 25.754948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.169773, 31.313517, 26.093073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476339, 0.729720, 0.490520,
		-0.747134, -0.630043, 0.211747,
		0.463565, -0.265621, 0.845313,
		44.308842, 31.233829, 26.346666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.484436, 31.617598, 26.252857>,  <43.984348, 31.419765, 25.754948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.484436, 31.617598, 26.252857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.773952, 31.506626, 26.505575>,  <43.947662, 31.440044, 26.657206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.773952, 31.506626, 26.505575>,  <43.484436, 31.617598, 26.252857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.773952, 31.506626, 26.505575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424569, 0.542723, 0.724702,
		-0.543942, -0.792771, 0.275029,
		0.723787, -0.277427, 0.631796,
		43.991089, 31.423399, 26.695114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.182579, 31.481451, 26.884754>,  <43.484436, 31.617598, 26.252857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.182579, 31.481451, 26.884754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.560318, 31.595667, 26.950092>,  <43.786961, 31.664196, 26.989296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.560318, 31.595667, 26.950092>,  <43.182579, 31.481451, 26.884754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.560318, 31.595667, 26.950092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284821, 0.461251, 0.840312,
		0.164600, -0.840068, 0.516907,
		0.944343, 0.285541, 0.163347,
		43.843620, 31.681330, 26.999096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.367390, 31.277319, 27.583599>,  <43.182579, 31.481451, 26.884754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.367390, 31.277319, 27.583599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.571411, 31.597246, 27.457026>,  <43.693825, 31.789202, 27.381081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.571411, 31.597246, 27.457026>,  <43.367390, 31.277319, 27.583599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.571411, 31.597246, 27.457026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267992, 0.497349, 0.825121,
		0.817326, -0.336057, 0.468021,
		0.510057, 0.799818, -0.316436,
		43.724430, 31.837193, 27.362095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.563210, 31.548841, 28.248217>,  <43.367390, 31.277319, 27.583599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.563210, 31.548841, 28.248217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.618454, 31.839142, 27.978636>,  <43.651600, 32.013321, 27.816887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.618454, 31.839142, 27.978636>,  <43.563210, 31.548841, 28.248217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.618454, 31.839142, 27.978636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186244, 0.687365, 0.702027,
		0.972748, 0.028564, 0.230098,
		0.138108, 0.725750, -0.673953,
		43.659885, 32.056866, 27.776449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.904778, 32.080639, 28.601360>,  <43.563210, 31.548841, 28.248217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.904778, 32.080639, 28.601360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.773857, 32.288128, 28.285437>,  <43.695305, 32.412621, 28.095882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.773857, 32.288128, 28.285437>,  <43.904778, 32.080639, 28.601360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.773857, 32.288128, 28.285437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167634, 0.790717, 0.588783,
		0.929931, 0.325111, -0.171849,
		-0.327304, 0.518719, -0.789812,
		43.675667, 32.443745, 28.048492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.276913, 32.763283, 28.621796>,  <43.904778, 32.080639, 28.601360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.276913, 32.763283, 28.621796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.930962, 32.796124, 28.423710>,  <43.723389, 32.815826, 28.304857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.930962, 32.796124, 28.423710>,  <44.276913, 32.763283, 28.621796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.930962, 32.796124, 28.423710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206520, 0.840981, 0.500101,
		0.457525, 0.534800, -0.710394,
		-0.864882, 0.082098, -0.495216,
		43.671497, 32.820751, 28.275145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.245365, 33.495930, 28.451469>,  <44.276913, 32.763283, 28.621796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.245365, 33.495930, 28.451469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.870049, 33.377987, 28.379166>,  <43.644859, 33.307220, 28.335783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.870049, 33.377987, 28.379166>,  <44.245365, 33.495930, 28.451469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.870049, 33.377987, 28.379166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345778, 0.788720, 0.508289,
		-0.007303, 0.539425, -0.842002,
		-0.938288, -0.294858, -0.180761,
		43.588562, 33.289528, 28.324938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.817795, 34.162487, 28.373884>,  <44.245365, 33.495930, 28.451469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.817795, 34.162487, 28.373884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.541569, 33.877956, 28.426247>,  <43.375832, 33.707237, 28.457664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.541569, 33.877956, 28.426247>,  <43.817795, 34.162487, 28.373884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.541569, 33.877956, 28.426247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551959, 0.635256, 0.540177,
		-0.467400, 0.300772, -0.831308,
		-0.690564, -0.711327, 0.130905,
		43.334400, 33.664558, 28.465519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.175068, 34.407562, 28.159935>,  <43.817795, 34.162487, 28.373884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.175068, 34.407562, 28.159935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.104568, 34.122089, 28.431110>,  <43.062271, 33.950806, 28.593815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.104568, 34.122089, 28.431110>,  <43.175068, 34.407562, 28.159935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.104568, 34.122089, 28.431110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537420, 0.646779, 0.541162,
		-0.824692, -0.268960, -0.497537,
		-0.176246, -0.713678, 0.677938,
		43.051693, 33.907986, 28.634493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.444736, 34.528858, 28.360184>,  <43.175068, 34.407562, 28.159935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.444736, 34.528858, 28.360184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.570526, 34.312519, 28.672234>,  <42.646000, 34.182716, 28.859463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.570526, 34.312519, 28.672234>,  <42.444736, 34.528858, 28.360184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.570526, 34.312519, 28.672234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642197, 0.483995, 0.594417,
		-0.699065, -0.687920, -0.195128,
		0.314470, -0.540847, 0.780124,
		42.664867, 34.150265, 28.906271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.866043, 34.360100, 28.669685>,  <42.444736, 34.528858, 28.360184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.866043, 34.360100, 28.669685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.131424, 34.291172, 28.960926>,  <42.290653, 34.249817, 29.135672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.131424, 34.291172, 28.960926>,  <41.866043, 34.360100, 28.669685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.131424, 34.291172, 28.960926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638249, 0.377499, 0.670920,
		-0.390470, -0.909836, 0.140471,
		0.663455, -0.172319, 0.728104,
		42.330460, 34.239475, 29.179358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.447342, 34.125626, 29.218477>,  <41.866043, 34.360100, 28.669685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.447342, 34.125626, 29.218477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.799000, 34.236919, 29.373236>,  <42.009995, 34.303696, 29.466091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.799000, 34.236919, 29.373236>,  <41.447342, 34.125626, 29.218477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.799000, 34.236919, 29.373236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472992, 0.410386, 0.779655,
		0.058147, -0.868430, 0.492390,
		0.879146, 0.278231, 0.386898,
		42.062744, 34.320389, 29.489305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.470745, 33.818298, 29.812162>,  <41.447342, 34.125626, 29.218477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.470745, 33.818298, 29.812162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.706123, 34.134590, 29.879663>,  <41.847351, 34.324364, 29.920164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.706123, 34.134590, 29.879663>,  <41.470745, 33.818298, 29.812162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.706123, 34.134590, 29.879663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536482, 0.225702, 0.813170,
		0.604909, -0.569040, 0.557026,
		0.588448, 0.790729, 0.168751,
		41.882656, 34.371807, 29.930288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.464699, 33.832329, 30.579538>,  <41.470745, 33.818298, 29.812162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.464699, 33.832329, 30.579538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.596214, 34.189030, 30.455164>,  <41.675125, 34.403049, 30.380539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.596214, 34.189030, 30.455164>,  <41.464699, 33.832329, 30.579538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.596214, 34.189030, 30.455164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477139, 0.440982, 0.760180,
		0.815008, -0.101577, 0.570477,
		0.328787, 0.891749, -0.310938,
		41.694851, 34.456554, 30.361883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.637066, 34.201862, 31.222597>,  <41.464699, 33.832329, 30.579538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.637066, 34.201862, 31.222597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.634495, 34.500084, 30.956034>,  <41.632950, 34.679016, 30.796095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.634495, 34.500084, 30.956034>,  <41.637066, 34.201862, 31.222597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.634495, 34.500084, 30.956034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374701, 0.616074, 0.692858,
		0.927123, 0.254162, 0.275398,
		-0.006432, 0.745557, -0.666411,
		41.632565, 34.723751, 30.756111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.939236, 34.801792, 31.515396>,  <41.637066, 34.201862, 31.222597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.939236, 34.801792, 31.515396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.668003, 34.928047, 31.249891>,  <41.505264, 35.003799, 31.090590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.668003, 34.928047, 31.249891>,  <41.939236, 34.801792, 31.515396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.668003, 34.928047, 31.249891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331568, 0.674609, 0.659519,
		0.655948, 0.667289, -0.352785,
		-0.678082, 0.315638, -0.663760,
		41.464577, 35.022739, 31.050762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.033108, 35.550049, 31.422066>,  <41.939236, 34.801792, 31.515396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.033108, 35.550049, 31.422066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.672558, 35.458897, 31.274769>,  <41.456230, 35.404205, 31.186392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.672558, 35.458897, 31.274769>,  <42.033108, 35.550049, 31.422066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.672558, 35.458897, 31.274769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370964, 0.845041, 0.385086,
		0.223423, 0.483709, -0.846231,
		-0.901370, -0.227884, -0.368240,
		41.402145, 35.390530, 31.164297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.789585, 36.171722, 31.288652>,  <42.033108, 35.550049, 31.422066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.789585, 36.171722, 31.288652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.475449, 35.925789, 31.317560>,  <41.286968, 35.778229, 31.334906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.475449, 35.925789, 31.317560>,  <41.789585, 36.171722, 31.288652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.475449, 35.925789, 31.317560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437917, 0.634253, 0.637143,
		-0.437574, 0.468725, -0.767350,
		-0.785339, -0.614833, 0.072270,
		41.239845, 35.741341, 31.339241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.152020, 36.616230, 31.393297>,  <41.789585, 36.171722, 31.288652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.152020, 36.616230, 31.393297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.040394, 36.252201, 31.515860>,  <40.973419, 36.033783, 31.589397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.040394, 36.252201, 31.515860>,  <41.152020, 36.616230, 31.393297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.040394, 36.252201, 31.515860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601818, 0.414398, 0.682708,
		-0.748290, 0.006119, -0.663344,
		-0.279066, -0.910075, 0.306408,
		40.956673, 35.979179, 31.607782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.417286, 36.566681, 31.346470>,  <41.152020, 36.616230, 31.393297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.417286, 36.566681, 31.346470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.542889, 36.317722, 31.633253>,  <40.618252, 36.168346, 31.805323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.542889, 36.317722, 31.633253>,  <40.417286, 36.566681, 31.346470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.542889, 36.317722, 31.633253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644147, 0.415099, 0.642470,
		-0.697476, -0.663567, -0.270567,
		0.314010, -0.622392, 0.716956,
		40.637093, 36.131004, 31.848339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.778996, 36.460239, 31.640909>,  <40.417286, 36.566681, 31.346470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.778996, 36.460239, 31.640909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.032005, 36.278084, 31.891518>,  <40.183811, 36.168789, 32.041882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.032005, 36.278084, 31.891518>,  <39.778996, 36.460239, 31.640909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.032005, 36.278084, 31.891518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542699, 0.316551, 0.777993,
		-0.552617, -0.832114, -0.046914,
		0.632528, -0.455393, 0.626519,
		40.221764, 36.141468, 32.079472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.367439, 36.223732, 32.149582>,  <39.778996, 36.460239, 31.640909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.367439, 36.223732, 32.149582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.726654, 36.193317, 32.322903>,  <39.942184, 36.175068, 32.426895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.726654, 36.193317, 32.322903>,  <39.367439, 36.223732, 32.149582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.726654, 36.193317, 32.322903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394510, 0.296636, 0.869694,
		-0.194662, -0.951959, 0.236392,
		0.898036, -0.076038, 0.433301,
		39.996063, 36.170506, 32.452892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.323196, 35.763748, 32.769669>,  <39.367439, 36.223732, 32.149582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.323196, 35.763748, 32.769669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.623299, 36.023819, 32.817635>,  <39.803360, 36.179863, 32.846416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.623299, 36.023819, 32.817635>,  <39.323196, 35.763748, 32.769669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.623299, 36.023819, 32.817635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313129, 0.189691, 0.930574,
		0.582295, -0.735717, 0.345908,
		0.750255, 0.650182, 0.119918,
		39.848373, 36.218872, 32.853611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.585716, 35.657299, 33.497589>,  <39.323196, 35.763748, 32.769669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.585716, 35.657299, 33.497589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.721180, 36.011292, 33.369770>,  <39.802460, 36.223686, 33.293079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.721180, 36.011292, 33.369770>,  <39.585716, 35.657299, 33.497589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.721180, 36.011292, 33.369770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108671, 0.374129, 0.920988,
		0.934611, -0.277179, 0.222876,
		0.338663, 0.884986, -0.319544,
		39.822781, 36.276787, 33.273907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.076878, 35.783955, 33.968540>,  <39.585716, 35.657299, 33.497589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.076878, 35.783955, 33.968540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.003330, 36.145340, 33.813652>,  <39.959202, 36.362171, 33.720718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.003330, 36.145340, 33.813652>,  <40.076878, 35.783955, 33.968540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.003330, 36.145340, 33.813652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123961, 0.412106, 0.902664,
		0.975104, 0.117967, -0.187766,
		-0.183864, 0.903467, -0.387223,
		39.948170, 36.416382, 33.697487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.542698, 36.194836, 34.212250>,  <40.076878, 35.783955, 33.968540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.542698, 36.194836, 34.212250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.242088, 36.433609, 34.099907>,  <40.061722, 36.576874, 34.032501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.242088, 36.433609, 34.099907>,  <40.542698, 36.194836, 34.212250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.242088, 36.433609, 34.099907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031343, 0.392946, 0.919027,
		0.658961, 0.699474, -0.276599,
		-0.751524, 0.596934, -0.280860,
		40.016632, 36.612690, 34.015648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.697483, 36.846523, 34.485966>,  <40.542698, 36.194836, 34.212250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.697483, 36.846523, 34.485966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.304874, 36.886158, 34.420486>,  <40.069309, 36.909939, 34.381199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.304874, 36.886158, 34.420486>,  <40.697483, 36.846523, 34.485966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.304874, 36.886158, 34.420486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072857, 0.597530, 0.798530,
		0.176942, 0.795700, -0.579269,
		-0.981521, 0.099090, -0.163700,
		40.010418, 36.915886, 34.371376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.455898, 37.670265, 34.591801>,  <40.697483, 36.846523, 34.485966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.455898, 37.670265, 34.591801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.135414, 37.431705, 34.611263>,  <39.943123, 37.288570, 34.622940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.135414, 37.431705, 34.611263>,  <40.455898, 37.670265, 34.591801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.135414, 37.431705, 34.611263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263358, 0.424481, 0.866290,
		-0.537306, 0.681269, -0.497166,
		-0.801215, -0.596395, 0.048659,
		39.895050, 37.252789, 34.625862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.012066, 38.131599, 34.809475>,  <40.455898, 37.670265, 34.591801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.012066, 38.131599, 34.809475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.855766, 37.773716, 34.896015>,  <39.761986, 37.558987, 34.947941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.855766, 37.773716, 34.896015>,  <40.012066, 38.131599, 34.809475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.855766, 37.773716, 34.896015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169270, 0.300870, 0.938523,
		-0.904799, 0.330107, -0.269013,
		-0.390750, -0.894710, 0.216350,
		39.738541, 37.505302, 34.960918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.434292, 38.357105, 35.252869>,  <40.012066, 38.131599, 34.809475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.434292, 38.357105, 35.252869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.512608, 37.971912, 35.326973>,  <39.559597, 37.740795, 35.371437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.512608, 37.971912, 35.326973>,  <39.434292, 38.357105, 35.252869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.512608, 37.971912, 35.326973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016710, 0.185615, 0.982480,
		-0.980503, -0.195457, 0.020251,
		0.195791, -0.962987, 0.185262,
		39.571346, 37.683018, 35.382553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.959370, 38.087872, 35.665688>,  <39.434292, 38.357105, 35.252869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.959370, 38.087872, 35.665688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.249413, 37.817608, 35.718906>,  <39.423439, 37.655449, 35.750835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.249413, 37.817608, 35.718906>,  <38.959370, 38.087872, 35.665688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.249413, 37.817608, 35.718906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150449, 0.033100, 0.988063,
		-0.672002, -0.736467, -0.077651,
		0.725106, -0.675663, 0.133044,
		39.466946, 37.614910, 35.758820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.772774, 37.663280, 36.255424>,  <38.959370, 38.087872, 35.665688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.772774, 37.663280, 36.255424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.154987, 37.551239, 36.218548>,  <39.384315, 37.484013, 36.196423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.154987, 37.551239, 36.218548>,  <38.772774, 37.663280, 36.255424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.154987, 37.551239, 36.218548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055663, -0.135698, 0.989185,
		-0.289590, -0.950329, -0.114072,
		0.955531, -0.280109, -0.092195,
		39.441647, 37.467205, 36.190887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.813969, 37.030556, 36.633877>,  <38.772774, 37.663280, 36.255424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.813969, 37.030556, 36.633877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.178188, 37.192711, 36.601452>,  <39.396721, 37.290005, 36.581997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.178188, 37.192711, 36.601452>,  <38.813969, 37.030556, 36.633877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.178188, 37.192711, 36.601452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111162, -0.051227, 0.992481,
		0.398185, -0.912710, -0.091707,
		0.910545, 0.405385, -0.081061,
		39.451351, 37.314327, 36.577133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.174259, 36.649239, 37.025768>,  <38.813969, 37.030556, 36.633877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.174259, 36.649239, 37.025768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.427700, 36.956348, 36.987682>,  <39.579765, 37.140614, 36.964828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.427700, 36.956348, 36.987682>,  <39.174259, 36.649239, 37.025768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.427700, 36.956348, 36.987682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176146, -0.023318, 0.984088,
		0.753339, -0.640293, -0.150015,
		0.633603, 0.767777, -0.095219,
		39.617783, 37.186680, 36.959118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.760944, 36.504452, 37.290890>,  <39.174259, 36.649239, 37.025768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.760944, 36.504452, 37.290890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.754753, 36.903008, 37.324261>,  <39.751038, 37.142143, 37.344284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.754753, 36.903008, 37.324261>,  <39.760944, 36.504452, 37.290890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.754753, 36.903008, 37.324261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209179, -0.078362, 0.974733,
		0.977755, 0.032537, -0.207212,
		-0.015477, 0.996394, 0.083425,
		39.750111, 37.201927, 37.349289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.166283, 36.665916, 37.826042>,  <39.760944, 36.504452, 37.290890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.166283, 36.665916, 37.826042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.002514, 37.030636, 37.813408>,  <39.904251, 37.249466, 37.805828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.002514, 37.030636, 37.813408>,  <40.166283, 36.665916, 37.826042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.002514, 37.030636, 37.813408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116502, 0.086586, 0.989409,
		0.904875, 0.401408, -0.141677,
		-0.409424, 0.911797, -0.031584,
		39.879688, 37.304176, 37.803932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.754555, 37.242401, 37.942513>,  <40.166283, 36.665916, 37.826042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.754555, 37.242401, 37.942513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.409477, 37.403519, 38.064835>,  <40.202431, 37.500187, 38.138229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.409477, 37.403519, 38.064835>,  <40.754555, 37.242401, 37.942513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.409477, 37.403519, 38.064835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305193, -0.067520, 0.949894,
		0.403256, 0.912798, -0.064680,
		-0.862694, 0.402790, 0.305808,
		40.150669, 37.524357, 38.156578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.923492, 37.868759, 38.325886>,  <40.754555, 37.242401, 37.942513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.923492, 37.868759, 38.325886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.561539, 37.749668, 38.447571>,  <40.344368, 37.678215, 38.520580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.561539, 37.749668, 38.447571>,  <40.923492, 37.868759, 38.325886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.561539, 37.749668, 38.447571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315205, 0.011606, 0.948953,
		-0.286060, 0.954580, 0.083343,
		-0.904884, -0.297727, 0.304208,
		40.290073, 37.660351, 38.538834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.600372, 38.172924, 38.902771>,  <40.923492, 37.868759, 38.325886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.600372, 38.172924, 38.902771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.427933, 37.814541, 38.945499>,  <40.324467, 37.599510, 38.971138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.427933, 37.814541, 38.945499>,  <40.600372, 38.172924, 38.902771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.427933, 37.814541, 38.945499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222970, 0.008939, 0.974784,
		-0.874321, 0.444049, 0.195918,
		-0.431101, -0.895958, 0.106826,
		40.298603, 37.545753, 38.977547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.110722, 38.220619, 39.493774>,  <40.600372, 38.172924, 38.902771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.110722, 38.220619, 39.493774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.265167, 37.859245, 39.419239>,  <40.357834, 37.642422, 39.374519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.265167, 37.859245, 39.419239>,  <40.110722, 38.220619, 39.493774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.265167, 37.859245, 39.419239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256283, -0.088988, 0.962497,
		-0.886133, -0.419393, 0.197175,
		0.386118, -0.903433, -0.186339,
		40.381004, 37.588215, 39.363338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.772758, 37.609505, 39.796139>,  <40.110722, 38.220619, 39.493774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.772758, 37.609505, 39.796139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.170383, 37.608372, 39.752636>,  <40.408958, 37.607693, 39.726536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.170383, 37.608372, 39.752636>,  <39.772758, 37.609505, 39.796139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.170383, 37.608372, 39.752636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106965, -0.156970, 0.981794,
		-0.019848, -0.987599, -0.155736,
		0.994065, -0.002828, -0.108754,
		40.468601, 37.607521, 39.720009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.407078, 37.128880, 40.270504>,  <39.772758, 37.609505, 39.796139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.407078, 37.128880, 40.270504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.740482, 36.967518, 40.119492>,  <39.940525, 36.870701, 40.028885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.740482, 36.967518, 40.119492>,  <39.407078, 37.128880, 40.270504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.740482, 36.967518, 40.119492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378331, -0.081251, 0.922098,
		-0.402654, -0.911407, 0.084898,
		0.833508, -0.403406, -0.377529,
		39.990536, 36.846497, 40.006233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.689835, 36.438015, 40.617489>,  <39.407078, 37.128880, 40.270504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.689835, 36.438015, 40.617489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.981129, 36.678810, 40.486469>,  <40.155907, 36.823288, 40.407856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.981129, 36.678810, 40.486469>,  <39.689835, 36.438015, 40.617489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.981129, 36.678810, 40.486469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464077, -0.081475, 0.882040,
		0.504287, -0.794341, -0.338700,
		0.728236, 0.601984, -0.327548,
		40.199600, 36.859406, 40.388206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.308598, 36.207047, 41.007038>,  <39.689835, 36.438015, 40.617489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.308598, 36.207047, 41.007038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.424343, 36.564941, 40.870975>,  <40.493790, 36.779678, 40.789337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.424343, 36.564941, 40.870975>,  <40.308598, 36.207047, 41.007038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.424343, 36.564941, 40.870975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538080, 0.141860, 0.830870,
		0.791667, -0.423458, -0.440393,
		0.289365, 0.894740, -0.340160,
		40.511154, 36.833363, 40.768929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.034424, 36.221840, 40.890511>,  <40.308598, 36.207047, 41.007038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.034424, 36.221840, 40.890511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.894859, 36.581203, 40.997189>,  <40.811119, 36.796822, 41.061195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.894859, 36.581203, 40.997189>,  <41.034424, 36.221840, 40.890511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.894859, 36.581203, 40.997189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448565, -0.089763, 0.889231,
		0.822830, 0.429894, -0.371674,
		-0.348913, 0.898406, 0.266695,
		40.790184, 36.850727, 41.077198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.549358, 36.490852, 41.324348>,  <41.034424, 36.221840, 40.890511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.549358, 36.490852, 41.324348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.229206, 36.724636, 41.377720>,  <41.037117, 36.864906, 41.409744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.229206, 36.724636, 41.377720>,  <41.549358, 36.490852, 41.324348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.229206, 36.724636, 41.377720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295705, 0.191281, 0.935933,
		0.521494, 0.788554, -0.325925,
		-0.800377, 0.584461, 0.133428,
		40.989094, 36.899975, 41.417747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.778275, 37.179607, 41.583534>,  <41.549358, 36.490852, 41.324348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.778275, 37.179607, 41.583534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.400051, 37.149971, 41.710293>,  <41.173115, 37.132191, 41.786346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.400051, 37.149971, 41.710293>,  <41.778275, 37.179607, 41.583534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.400051, 37.149971, 41.710293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305894, 0.130047, 0.943142,
		-0.111091, 0.988736, -0.100303,
		-0.945562, -0.074092, 0.316896,
		41.116383, 37.127743, 41.805363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.691998, 37.727898, 42.034500>,  <41.778275, 37.179607, 41.583534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.691998, 37.727898, 42.034500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.416752, 37.458561, 42.142654>,  <41.251606, 37.296959, 42.207546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.416752, 37.458561, 42.142654>,  <41.691998, 37.727898, 42.034500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.416752, 37.458561, 42.142654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292905, 0.083160, 0.952518,
		-0.663860, 0.734636, 0.140003,
		-0.688111, -0.673346, 0.270385,
		41.210320, 37.256557, 42.223770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.384132, 37.966587, 42.581982>,  <41.691998, 37.727898, 42.034500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.384132, 37.966587, 42.581982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.305744, 37.576382, 42.621914>,  <41.258709, 37.342258, 42.645874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.305744, 37.576382, 42.621914>,  <41.384132, 37.966587, 42.581982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.305744, 37.576382, 42.621914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313690, 0.034088, 0.948913,
		-0.929082, 0.217277, 0.299329,
		-0.195973, -0.975515, 0.099828,
		41.246952, 37.283726, 42.651863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.934948, 37.837334, 43.193264>,  <41.384132, 37.966587, 42.581982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.934948, 37.837334, 43.193264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.162022, 37.521496, 43.100071>,  <41.298267, 37.331993, 43.044155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.162022, 37.521496, 43.100071>,  <40.934948, 37.837334, 43.193264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.162022, 37.521496, 43.100071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407353, 0.023483, 0.912969,
		-0.715401, -0.613183, 0.334974,
		0.567683, -0.789592, -0.232983,
		41.332325, 37.284618, 43.030178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.898342, 37.416912, 43.789619>,  <40.934948, 37.837334, 43.193264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.898342, 37.416912, 43.789619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.215153, 37.267967, 43.596111>,  <41.405239, 37.178600, 43.480007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.215153, 37.267967, 43.596111>,  <40.898342, 37.416912, 43.789619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.215153, 37.267967, 43.596111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432685, -0.216637, 0.875130,
		-0.430672, -0.902448, -0.010465,
		0.792026, -0.372366, -0.483775,
		41.452759, 37.156258, 43.450977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.288914, 37.968109, 44.095726>,  <40.898342, 37.416912, 43.789619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.288914, 37.968109, 44.095726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.220707, 38.346859, 43.986649>,  <41.179783, 38.574108, 43.921204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.220707, 38.346859, 43.986649>,  <41.288914, 37.968109, 44.095726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.220707, 38.346859, 43.986649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941789, 0.075229, -0.327681,
		-0.289758, -0.312689, -0.904580,
		-0.170514, 0.946872, -0.272689,
		41.169552, 38.630920, 43.904842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.998772, 37.836510, 43.775337>,  <41.288914, 37.968109, 44.095726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.998772, 37.836510, 43.775337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.090832, 37.468349, 43.901760>,  <42.146069, 37.247452, 43.977612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.090832, 37.468349, 43.901760>,  <41.998772, 37.836510, 43.775337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.090832, 37.468349, 43.901760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613365, -0.389341, -0.687166,
		0.755521, -0.035702, -0.654151,
		0.230154, -0.920402, 0.316053,
		42.159878, 37.192230, 43.996574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.227795, 37.456444, 43.231384>,  <41.998772, 37.836510, 43.775337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.227795, 37.456444, 43.231384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.071453, 37.153904, 43.441212>,  <41.977646, 36.972382, 43.567108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.071453, 37.153904, 43.441212>,  <42.227795, 37.456444, 43.231384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.071453, 37.153904, 43.441212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556723, -0.259584, -0.789098,
		0.733002, -0.600462, -0.319616,
		-0.390856, -0.756348, 0.524566,
		41.954197, 36.926998, 43.598583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.250153, 36.793827, 42.733742>,  <42.227795, 37.456444, 43.231384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.250153, 36.793827, 42.733742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.958164, 36.761078, 43.005165>,  <41.782974, 36.741428, 43.168018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.958164, 36.761078, 43.005165>,  <42.250153, 36.793827, 42.733742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.958164, 36.761078, 43.005165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666660, -0.133626, -0.733286,
		0.150710, -0.987644, 0.042961,
		-0.729966, -0.081873, 0.678562,
		41.739174, 36.736515, 43.208733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.738277, 36.111454, 42.711021>,  <42.250153, 36.793827, 42.733742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.738277, 36.111454, 42.711021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.548931, 36.436291, 42.847511>,  <41.435322, 36.631191, 42.929405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.548931, 36.436291, 42.847511>,  <41.738277, 36.111454, 42.711021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.548931, 36.436291, 42.847511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668064, -0.078495, -0.739951,
		-0.574122, -0.578230, 0.579685,
		-0.473364, 0.812089, 0.341229,
		41.406921, 36.679916, 42.949879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.971134, 36.077843, 42.929260>,  <41.738277, 36.111454, 42.711021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.971134, 36.077843, 42.929260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.032341, 36.459862, 42.827698>,  <41.069065, 36.689072, 42.766758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.032341, 36.459862, 42.827698>,  <40.971134, 36.077843, 42.929260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.032341, 36.459862, 42.827698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498252, -0.147329, -0.854423,
		-0.853423, 0.257253, 0.453310,
		0.153016, 0.955047, -0.253911,
		41.078247, 36.746376, 42.751526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.340168, 36.357208, 42.574528>,  <40.971134, 36.077843, 42.929260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.340168, 36.357208, 42.574528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.631062, 36.606255, 42.458946>,  <40.805595, 36.755680, 42.389599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.631062, 36.606255, 42.458946>,  <40.340168, 36.357208, 42.574528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.631062, 36.606255, 42.458946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370380, 0.001529, -0.928879,
		-0.577889, 0.782530, 0.231715,
		0.727230, 0.622611, -0.288950,
		40.849232, 36.793037, 42.372261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.908154, 36.870815, 42.180801>,  <40.340168, 36.357208, 42.574528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.908154, 36.870815, 42.180801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.291317, 36.914188, 42.074482>,  <40.521214, 36.940212, 42.010689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.291317, 36.914188, 42.074482>,  <39.908154, 36.870815, 42.180801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.291317, 36.914188, 42.074482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250462, -0.136744, -0.958421,
		-0.140275, 0.984653, -0.103829,
		0.957910, 0.108437, -0.265800,
		40.578690, 36.946720, 41.994743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.823357, 37.487865, 41.681313>,  <39.908154, 36.870815, 42.180801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.823357, 37.487865, 41.681313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.139462, 37.247677, 41.632442>,  <40.329124, 37.103565, 41.603123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.139462, 37.247677, 41.632442>,  <39.823357, 37.487865, 41.681313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.139462, 37.247677, 41.632442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234311, -0.111890, -0.965701,
		0.566202, 0.791783, -0.229119,
		0.790262, -0.600467, -0.122171,
		40.376541, 37.067535, 41.595791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.293510, 37.996815, 41.484451>,  <39.823357, 37.487865, 41.681313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.293510, 37.996815, 41.484451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.563499, 37.702988, 41.456661>,  <40.725494, 37.526691, 41.439987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.563499, 37.702988, 41.456661>,  <40.293510, 37.996815, 41.484451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.563499, 37.702988, 41.456661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107613, -0.004859, -0.994181,
		0.729953, 0.678520, -0.082328,
		0.674972, -0.734565, -0.069471,
		40.765991, 37.482616, 41.435822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.001804, 38.112774, 41.065048>,  <40.293510, 37.996815, 41.484451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.001804, 38.112774, 41.065048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.882065, 37.732319, 41.034782>,  <40.810223, 37.504044, 41.016621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.882065, 37.732319, 41.034782>,  <41.001804, 38.112774, 41.065048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.882065, 37.732319, 41.034782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264946, 0.159047, -0.951056,
		0.916622, -0.264646, -0.299611,
		-0.299345, -0.951140, -0.075669,
		40.792263, 37.446976, 41.012081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.932590, 37.970161, 40.307899>,  <41.001804, 38.112774, 41.065048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.932590, 37.970161, 40.307899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.791111, 37.625103, 40.452526>,  <40.706223, 37.418068, 40.539303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.791111, 37.625103, 40.452526>,  <40.932590, 37.970161, 40.307899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.791111, 37.625103, 40.452526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425469, -0.195871, -0.883522,
		0.832991, -0.466336, -0.297752,
		-0.353697, -0.862650, 0.361570,
		40.685001, 37.366306, 40.560997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.227806, 37.455379, 39.865898>,  <40.932590, 37.970161, 40.307899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.227806, 37.455379, 39.865898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.894707, 37.310120, 40.033066>,  <40.694847, 37.222965, 40.133366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.894707, 37.310120, 40.033066>,  <41.227806, 37.455379, 39.865898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.894707, 37.310120, 40.033066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392555, -0.145027, -0.908222,
		0.390430, -0.920375, -0.021786,
		-0.832745, -0.363149, 0.417921,
		40.644882, 37.201176, 40.158443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.971962, 36.748703, 39.569233>,  <41.227806, 37.455379, 39.865898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.971962, 36.748703, 39.569233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.674820, 36.972107, 39.716869>,  <40.496532, 37.106148, 39.805450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.674820, 36.972107, 39.716869>,  <40.971962, 36.748703, 39.569233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.674820, 36.972107, 39.716869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541311, -0.176734, -0.822039,
		-0.393884, -0.810453, 0.433615,
		-0.742858, 0.558508, 0.369094,
		40.451962, 37.139660, 39.827599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.260921, 36.344154, 39.458042>,  <40.971962, 36.748703, 39.569233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.260921, 36.344154, 39.458042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.210953, 36.740513, 39.478130>,  <40.180973, 36.978329, 39.490181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.210953, 36.740513, 39.478130>,  <40.260921, 36.344154, 39.458042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.210953, 36.740513, 39.478130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401955, -0.004272, -0.915649,
		-0.907098, -0.134569, 0.398829,
		-0.124921, 0.990895, 0.050216,
		40.173477, 37.037781, 39.493195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.664501, 36.425480, 39.109818>,  <40.260921, 36.344154, 39.458042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.664501, 36.425480, 39.109818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.875828, 36.764427, 39.088478>,  <40.002625, 36.967796, 39.075676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.875828, 36.764427, 39.088478>,  <39.664501, 36.425480, 39.109818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.875828, 36.764427, 39.088478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210888, 0.070100, -0.974993,
		-0.822442, 0.526352, 0.215736,
		0.528313, 0.847372, -0.053348,
		40.034321, 37.018639, 39.072475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.326614, 36.679768, 38.576851>,  <39.664501, 36.425480, 39.109818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.326614, 36.679768, 38.576851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.643814, 36.920593, 38.614101>,  <39.834133, 37.065090, 38.636452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.643814, 36.920593, 38.614101>,  <39.326614, 36.679768, 38.576851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.643814, 36.920593, 38.614101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026758, 0.187135, -0.981970,
		-0.608638, 0.776207, 0.164507,
		0.792997, 0.602066, 0.093128,
		39.881714, 37.101212, 38.642040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.028610, 37.291451, 38.767548>,  <39.326614, 36.679768, 38.576851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.028610, 37.291451, 38.767548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.400520, 37.424973, 38.705452>,  <39.623665, 37.505085, 38.668194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.400520, 37.424973, 38.705452>,  <39.028610, 37.291451, 38.767548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.400520, 37.424973, 38.705452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252068, 0.269931, -0.929300,
		-0.268299, 0.903168, 0.335116,
		0.929773, 0.333802, -0.155238,
		39.679451, 37.525112, 38.658882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.939587, 37.902740, 38.415466>,  <39.028610, 37.291451, 38.767548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.939587, 37.902740, 38.415466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.317623, 37.797417, 38.338032>,  <39.544445, 37.734222, 38.291569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.317623, 37.797417, 38.338032>,  <38.939587, 37.902740, 38.415466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.317623, 37.797417, 38.338032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115601, 0.284718, -0.951615,
		0.305687, 0.921739, 0.238645,
		0.945088, -0.263309, -0.193589,
		39.601151, 37.718426, 38.279957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.170280, 38.335747, 37.958252>,  <38.939587, 37.902740, 38.415466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.170280, 38.335747, 37.958252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.402390, 38.012615, 37.916901>,  <39.541656, 37.818737, 37.892090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.402390, 38.012615, 37.916901>,  <39.170280, 38.335747, 37.958252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.402390, 38.012615, 37.916901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083979, 0.185613, -0.979028,
		0.810078, 0.559426, 0.175547,
		0.580277, -0.807831, -0.103381,
		39.576473, 37.770267, 37.885887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.682667, 38.475452, 37.425205>,  <39.170280, 38.335747, 37.958252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.682667, 38.475452, 37.425205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.699482, 38.075893, 37.416904>,  <39.709572, 37.836159, 37.411922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.699482, 38.075893, 37.416904>,  <39.682667, 38.475452, 37.425205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.699482, 38.075893, 37.416904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040670, 0.019045, -0.998991,
		0.998288, 0.042843, -0.039825,
		0.042042, -0.998900, -0.020755,
		39.712093, 37.776222, 37.410679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.012405, 38.389908, 36.847122>,  <39.682667, 38.475452, 37.425205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.012405, 38.389908, 36.847122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.883308, 38.017933, 36.917618>,  <39.805851, 37.794750, 36.959915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.883308, 38.017933, 36.917618>,  <40.012405, 38.389908, 36.847122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.883308, 38.017933, 36.917618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058544, -0.205461, -0.976912,
		0.944674, -0.304973, 0.120753,
		-0.322743, -0.929934, 0.176240,
		39.786484, 37.738953, 36.970490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.602947, 37.876476, 36.626080>,  <40.012405, 38.389908, 36.847122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.602947, 37.876476, 36.626080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.241341, 37.707340, 36.600918>,  <40.024376, 37.605858, 36.585823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.241341, 37.707340, 36.600918>,  <40.602947, 37.876476, 36.626080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.241341, 37.707340, 36.600918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139915, -0.153620, -0.978174,
		0.403946, -0.893090, 0.198037,
		-0.904019, -0.422838, -0.062902,
		39.970135, 37.580490, 36.582047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.718010, 37.353722, 36.191628>,  <40.602947, 37.876476, 36.626080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.718010, 37.353722, 36.191628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.318199, 37.364807, 36.196892>,  <40.078312, 37.371456, 36.200050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.318199, 37.364807, 36.196892>,  <40.718010, 37.353722, 36.191628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.318199, 37.364807, 36.196892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018195, -0.190194, -0.981578,
		-0.024694, -0.981355, 0.190608,
		-0.999530, 0.027707, 0.013159,
		40.018341, 37.373119, 36.200840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.460129, 36.757839, 36.002998>,  <40.718010, 37.353722, 36.191628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.460129, 36.757839, 36.002998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.178162, 37.025200, 35.908062>,  <40.008984, 37.185616, 35.851101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.178162, 37.025200, 35.908062>,  <40.460129, 36.757839, 36.002998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.178162, 37.025200, 35.908062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004002, -0.338362, -0.941008,
		-0.709281, -0.662380, 0.241191,
		-0.704914, 0.668404, -0.237343,
		39.966686, 37.225719, 35.836861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.777901, 36.975887, 35.301796>,  <40.460129, 36.757839, 36.002998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.777901, 36.975887, 35.301796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.153275, 36.857094, 35.372387>,  <41.378498, 36.785816, 35.414742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.153275, 36.857094, 35.372387>,  <40.777901, 36.975887, 35.301796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.153275, 36.857094, 35.372387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292545, -0.411472, 0.863196,
		-0.183738, -0.861680, -0.473020,
		0.938433, -0.296982, 0.176477,
		41.434803, 36.767998, 35.425331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.865181, 36.338341, 35.529522>,  <40.777901, 36.975887, 35.301796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.865181, 36.338341, 35.529522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.169376, 36.516792, 35.718254>,  <41.351894, 36.623863, 35.831493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.169376, 36.516792, 35.718254>,  <40.865181, 36.338341, 35.529522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.169376, 36.516792, 35.718254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333068, -0.355763, 0.873211,
		0.557422, -0.821222, -0.121964,
		0.760490, 0.446125, 0.471834,
		41.397522, 36.650631, 35.859802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.318813, 36.080109, 35.993942>,  <40.865181, 36.338341, 35.529522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.318813, 36.080109, 35.993942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.379059, 36.451977, 36.128422>,  <41.415207, 36.675098, 36.209110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.379059, 36.451977, 36.128422>,  <41.318813, 36.080109, 35.993942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.379059, 36.451977, 36.128422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490911, -0.224848, 0.841694,
		0.858092, -0.291813, 0.422521,
		0.150614, 0.929671, 0.336195,
		41.424244, 36.730877, 36.229279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.528786, 36.141350, 36.697994>,  <41.318813, 36.080109, 35.993942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.528786, 36.141350, 36.697994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.340565, 36.486828, 36.625755>,  <41.227631, 36.694115, 36.582413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.340565, 36.486828, 36.625755>,  <41.528786, 36.141350, 36.697994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.340565, 36.486828, 36.625755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580169, -0.148640, 0.800818,
		0.664817, 0.481603, 0.571031,
		-0.470554, 0.863693, -0.180593,
		41.199398, 36.745937, 36.571579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.294018, 36.267624, 36.777214>,  <41.528786, 36.141350, 36.697994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.294018, 36.267624, 36.777214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.427399, 36.159279, 37.138424>,  <42.507427, 36.094273, 37.355148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.427399, 36.159279, 37.138424>,  <42.294018, 36.267624, 36.777214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.427399, 36.159279, 37.138424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779687, 0.617701, -0.102630,
		-0.529998, 0.738296, 0.417158,
		0.333450, -0.270859, 0.903020,
		42.527435, 36.078022, 37.409328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.490658, 36.865685, 37.182804>,  <42.294018, 36.267624, 36.777214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.490658, 36.865685, 37.182804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.704704, 36.557793, 37.322044>,  <42.833134, 36.373058, 37.405590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.704704, 36.557793, 37.322044>,  <42.490658, 36.865685, 37.182804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.704704, 36.557793, 37.322044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843621, 0.508471, -0.172512,
		-0.044211, 0.385978, 0.921448,
		0.535116, -0.769726, 0.348100,
		42.865238, 36.326874, 37.426476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.912262, 37.171452, 37.597080>,  <42.490658, 36.865685, 37.182804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.912262, 37.171452, 37.597080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.091965, 36.821087, 37.526707>,  <43.199787, 36.610870, 37.484482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.091965, 36.821087, 37.526707>,  <42.912262, 37.171452, 37.597080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.091965, 36.821087, 37.526707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876143, 0.470471, -0.105029,
		0.174767, -0.106956, 0.978783,
		0.449255, -0.875910, -0.175931,
		43.226742, 36.558315, 37.473927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.493279, 37.212971, 37.838486>,  <42.912262, 37.171452, 37.597080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.493279, 37.212971, 37.838486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.567886, 36.920322, 37.576206>,  <43.612652, 36.744732, 37.418839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.567886, 36.920322, 37.576206>,  <43.493279, 37.212971, 37.838486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.567886, 36.920322, 37.576206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937192, 0.332740, -0.104669,
		0.294755, -0.594991, 0.747734,
		0.186524, -0.731622, -0.655697,
		43.623844, 36.700836, 37.379498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.195465, 36.888626, 37.983921>,  <43.493279, 37.212971, 37.838486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.195465, 36.888626, 37.983921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.113617, 36.825851, 37.597450>,  <44.064510, 36.788185, 37.365566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.113617, 36.825851, 37.597450>,  <44.195465, 36.888626, 37.983921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.113617, 36.825851, 37.597450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972024, 0.083720, -0.219455,
		0.115330, -0.984054, 0.135417,
		-0.204618, -0.156938, -0.966179,
		44.052231, 36.778770, 37.307598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.668358, 36.420532, 37.781956>,  <44.195465, 36.888626, 37.983921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.668358, 36.420532, 37.781956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.524532, 36.580906, 37.444920>,  <44.438236, 36.677132, 37.242699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.524532, 36.580906, 37.444920>,  <44.668358, 36.420532, 37.781956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.524532, 36.580906, 37.444920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888435, -0.128989, -0.440505,
		-0.285300, -0.906979, -0.309827,
		-0.359564, 0.400937, -0.842593,
		44.416664, 36.701187, 37.192142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.089401, 36.130253, 37.358437>,  <44.668358, 36.420532, 37.781956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.089401, 36.130253, 37.358437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.910057, 36.392223, 37.115112>,  <44.802452, 36.549408, 36.969120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.910057, 36.392223, 37.115112>,  <45.089401, 36.130253, 37.358437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.910057, 36.392223, 37.115112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780701, -0.044485, -0.623320,
		-0.435291, -0.754379, -0.491360,
		-0.448361, 0.654931, -0.608308,
		44.775547, 36.588703, 36.932621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.847355, 35.615814, 37.672485>,  <45.089401, 36.130253, 37.358437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.847355, 35.615814, 37.672485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.610165, 35.449070, 37.396919>,  <44.467850, 35.349022, 37.231579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.610165, 35.449070, 37.396919>,  <44.847355, 35.615814, 37.672485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.610165, 35.449070, 37.396919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606413, 0.331691, -0.722665,
		0.529761, -0.846289, 0.056108,
		-0.592973, -0.416864, -0.688918,
		44.432274, 35.324013, 37.190243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.252998, 35.097042, 37.212646>,  <44.847355, 35.615814, 37.672485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.252998, 35.097042, 37.212646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.945755, 35.267635, 37.021599>,  <44.761410, 35.369991, 36.906971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.945755, 35.267635, 37.021599>,  <45.252998, 35.097042, 37.212646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.945755, 35.267635, 37.021599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629096, 0.363587, -0.687054,
		-0.119360, -0.828201, -0.547573,
		-0.768109, 0.426483, -0.477620,
		44.715321, 35.395580, 36.878311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.226116, 34.824657, 36.547920>,  <45.252998, 35.097042, 37.212646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.226116, 34.824657, 36.547920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.087311, 35.199314, 36.567032>,  <45.004028, 35.424107, 36.578499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.087311, 35.199314, 36.567032>,  <45.226116, 34.824657, 36.547920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.087311, 35.199314, 36.567032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757289, 0.309892, -0.574874,
		-0.553259, -0.163305, -0.816845,
		-0.347014, 0.936642, 0.047781,
		44.983208, 35.480309, 36.581367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.192646, 34.253502, 37.028996>,  <45.226116, 34.824657, 36.547920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.192646, 34.253502, 37.028996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.222485, 33.859894, 37.093674>,  <45.240387, 33.623730, 37.132481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.222485, 33.859894, 37.093674>,  <45.192646, 34.253502, 37.028996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.222485, 33.859894, 37.093674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736143, -0.055043, -0.674584,
		0.672702, 0.169355, 0.720271,
		0.074598, -0.984017, 0.161697,
		45.244865, 33.564690, 37.142181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.858627, 34.151894, 37.076057>,  <45.192646, 34.253502, 37.028996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.858627, 34.151894, 37.076057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.683678, 33.800114, 37.000938>,  <45.578709, 33.589046, 36.955868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.683678, 33.800114, 37.000938>,  <45.858627, 34.151894, 37.076057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.683678, 33.800114, 37.000938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635720, -0.154667, -0.756266,
		0.636052, -0.450162, 0.626732,
		-0.437377, -0.879450, -0.187800,
		45.552464, 33.536278, 36.944599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.361683, 33.687153, 36.996502>,  <45.858627, 34.151894, 37.076057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.361683, 33.687153, 36.996502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.057686, 33.520111, 36.797298>,  <45.875286, 33.419888, 36.677776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.057686, 33.520111, 36.797298>,  <46.361683, 33.687153, 36.996502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.057686, 33.520111, 36.797298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573146, -0.069331, -0.816515,
		0.306454, -0.905979, 0.292040,
		-0.759993, -0.417606, -0.498011,
		45.829689, 33.394829, 36.647896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.127705, 33.602428, 36.289394>,  <46.361683, 33.687153, 36.996502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.127705, 33.602428, 36.289394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.139740, 33.530769, 35.896049>,  <46.146961, 33.487774, 35.660042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.139740, 33.530769, 35.896049>,  <46.127705, 33.602428, 36.289394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.139740, 33.530769, 35.896049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387682, 0.904703, -0.176680,
		0.921302, 0.386547, -0.042236,
		0.030084, -0.179149, -0.983362,
		46.148766, 33.477024, 35.601040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.468472, 33.988369, 35.792244>,  <46.127705, 33.602428, 36.289394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.468472, 33.988369, 35.792244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.129066, 33.851017, 35.631187>,  <45.925423, 33.768604, 35.534554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.129066, 33.851017, 35.631187>,  <46.468472, 33.988369, 35.792244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.129066, 33.851017, 35.631187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351457, 0.934508, -0.056323,
		0.395615, 0.093721, -0.913622,
		-0.848509, -0.343381, -0.402644,
		45.874516, 33.748001, 35.510395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.010338, 34.241943, 35.363049>,  <46.468472, 33.988369, 35.792244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.010338, 34.241943, 35.363049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.913826, 34.542740, 35.117680>,  <46.855919, 34.723217, 34.970459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.913826, 34.542740, 35.117680>,  <47.010338, 34.241943, 35.363049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.913826, 34.542740, 35.117680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823704, -0.492911, -0.280268,
		-0.513126, 0.437664, 0.738344,
		-0.241275, 0.751990, -0.613431,
		46.841442, 34.768337, 34.933651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.383640, 34.754162, 34.809807>,  <47.010338, 34.241943, 35.363049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.383640, 34.754162, 34.809807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.760166, 34.774570, 34.943272>,  <47.986080, 34.786816, 35.023350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.760166, 34.774570, 34.943272>,  <47.383640, 34.754162, 34.809807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.760166, 34.774570, 34.943272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221973, -0.838261, -0.498043,
		0.254289, 0.542877, -0.800388,
		0.941310, 0.051018, 0.333664,
		48.042561, 34.789875, 35.043369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<39.411751, 28.423018, 29.466541> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.025890, 28.365620, 29.378132>,  <38.794373, 28.331181, 29.325087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.025890, 28.365620, 29.378132>,  <39.411751, 28.423018, 29.466541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.025890, 28.365620, 29.378132> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259861, 0.657267, 0.707441,
		0.043759, 0.739872, -0.671323,
		-0.964654, -0.143494, -0.221025,
		38.736496, 28.322571, 29.311825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.158867, 29.053051, 29.412258>,  <39.411751, 28.423018, 29.466541>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.158867, 29.053051, 29.412258> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.839092, 28.819408, 29.468439>,  <38.647228, 28.679222, 29.502148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.839092, 28.819408, 29.468439>,  <39.158867, 29.053051, 29.412258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.839092, 28.819408, 29.468439> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359204, 0.652147, 0.667590,
		-0.481538, 0.483244, -0.731161,
		-0.799434, -0.584106, 0.140450,
		38.599262, 28.644176, 29.510574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.677700, 29.512398, 29.376053>,  <39.158867, 29.053051, 29.412258>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.677700, 29.512398, 29.376053> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.527248, 29.196648, 29.570129>,  <38.436977, 29.007198, 29.686575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.527248, 29.196648, 29.570129>,  <38.677700, 29.512398, 29.376053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.527248, 29.196648, 29.570129> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546278, 0.611880, 0.571999,
		-0.748402, -0.049903, -0.661365,
		-0.376132, -0.789374, 0.485194,
		38.414410, 28.959835, 29.715687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.906033, 29.692455, 29.334751>,  <38.677700, 29.512398, 29.376053>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.906033, 29.692455, 29.334751> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.968563, 29.419456, 29.620340>,  <38.006081, 29.255657, 29.791695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.968563, 29.419456, 29.620340>,  <37.906033, 29.692455, 29.334751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.968563, 29.419456, 29.620340> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618028, 0.496276, 0.609714,
		-0.770457, -0.536570, -0.344222,
		0.156325, -0.682497, 0.713975,
		38.015461, 29.214706, 29.834534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.306160, 29.636024, 29.714022>,  <37.906033, 29.692455, 29.334751>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.306160, 29.636024, 29.714022> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.577805, 29.461777, 29.950340>,  <37.740791, 29.357227, 30.092133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.577805, 29.461777, 29.950340>,  <37.306160, 29.636024, 29.714022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.577805, 29.461777, 29.950340> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328662, 0.539225, 0.775383,
		-0.656346, -0.720744, 0.223022,
		0.679111, -0.435621, 0.590799,
		37.781536, 29.331091, 30.127581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.924580, 29.454882, 30.388123>,  <37.306160, 29.636024, 29.714022>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.924580, 29.454882, 30.388123> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.315716, 29.475727, 30.469231>,  <37.550396, 29.488234, 30.517897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.315716, 29.475727, 30.469231>,  <36.924580, 29.454882, 30.388123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.315716, 29.475727, 30.469231> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200863, 0.506664, 0.838419,
		-0.059046, -0.860567, 0.505903,
		0.977838, 0.052112, 0.202773,
		37.609066, 29.491362, 30.530062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043133, 29.357588, 31.151703>,  <36.924580, 29.454882, 30.388123>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.043133, 29.357588, 31.151703> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.381718, 29.536079, 31.035511>,  <37.584869, 29.643173, 30.965796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.381718, 29.536079, 31.035511>,  <37.043133, 29.357588, 31.151703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.381718, 29.536079, 31.035511> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152934, 0.726331, 0.670115,
		0.510008, -0.522805, 0.683057,
		0.846465, 0.446227, -0.290480,
		37.635658, 29.669947, 30.948366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400787, 29.599163, 31.821627>,  <37.043133, 29.357588, 31.151703>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.400787, 29.599163, 31.821627> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.568279, 29.812864, 31.527897>,  <37.668774, 29.941086, 31.351658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.568279, 29.812864, 31.527897>,  <37.400787, 29.599163, 31.821627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.568279, 29.812864, 31.527897> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053096, 0.792845, 0.607107,
		0.906555, -0.293206, 0.303624,
		0.418734, 0.534255, -0.734325,
		37.693901, 29.973141, 31.307600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.718834, 29.950222, 32.275322>,  <37.400787, 29.599163, 31.821627>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.718834, 29.950222, 32.275322> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.727188, 30.147953, 31.927711>,  <37.732201, 30.266592, 31.719145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.727188, 30.147953, 31.927711>,  <37.718834, 29.950222, 32.275322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.727188, 30.147953, 31.927711> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080519, 0.865559, 0.494291,
		0.996534, -0.080295, -0.021727,
		0.020884, 0.494328, -0.869025,
		37.733452, 30.296251, 31.667004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364899, 30.429417, 32.326756>,  <37.718834, 29.950222, 32.275322>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.364899, 30.429417, 32.326756> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.097034, 30.552441, 32.056362>,  <37.936317, 30.626255, 31.894125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.097034, 30.552441, 32.056362>,  <38.364899, 30.429417, 32.326756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.097034, 30.552441, 32.056362> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030853, 0.897910, 0.439097,
		0.742025, 0.314903, -0.591807,
		-0.669662, 0.307562, -0.675987,
		37.896137, 30.644709, 31.853565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.523739, 31.118847, 32.158318>,  <38.364899, 30.429417, 32.326756>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.523739, 31.118847, 32.158318> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.137714, 31.099611, 32.055283>,  <37.906101, 31.088070, 31.993464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.137714, 31.099611, 32.055283>,  <38.523739, 31.118847, 32.158318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.137714, 31.099611, 32.055283> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139670, 0.926129, 0.350395,
		0.221706, 0.374128, -0.900486,
		-0.965059, -0.048087, -0.257583,
		37.848198, 31.085186, 31.978008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.412994, 31.814825, 31.983530>,  <38.523739, 31.118847, 32.158318>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.412994, 31.814825, 31.983530> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.049500, 31.655935, 32.034760>,  <37.831402, 31.560602, 32.065498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.049500, 31.655935, 32.034760>,  <38.412994, 31.814825, 31.983530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.049500, 31.655935, 32.034760> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385687, 0.916521, 0.105995,
		-0.159487, 0.046926, -0.986084,
		-0.908741, -0.397224, 0.128074,
		37.776878, 31.536768, 32.073181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.924427, 32.313305, 31.723633>,  <38.412994, 31.814825, 31.983530>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.924427, 32.313305, 31.723633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.700932, 32.049889, 31.925278>,  <37.566833, 31.891838, 32.046265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.700932, 32.049889, 31.925278>,  <37.924427, 32.313305, 31.723633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.700932, 32.049889, 31.925278> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559601, 0.747985, 0.356883,
		-0.612092, -0.082697, -0.786451,
		-0.558740, -0.658544, 0.504112,
		37.533310, 31.852325, 32.076511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.254932, 32.525936, 31.622442>,  <37.924427, 32.313305, 31.723633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.254932, 32.525936, 31.622442> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.277256, 32.319332, 31.964226>,  <37.290649, 32.195370, 32.169296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.277256, 32.319332, 31.964226>,  <37.254932, 32.525936, 31.622442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.277256, 32.319332, 31.964226> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251614, 0.820897, 0.512659,
		-0.966217, -0.243607, -0.084145,
		0.055813, -0.516511, 0.854459,
		37.293999, 32.164379, 32.220562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.704403, 32.828873, 32.058289>,  <37.254932, 32.525936, 31.622442>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.704403, 32.828873, 32.058289> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.933762, 32.616203, 32.307621>,  <37.071377, 32.488602, 32.457222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.933762, 32.616203, 32.307621>,  <36.704403, 32.828873, 32.058289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.933762, 32.616203, 32.307621> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167859, 0.668451, 0.724566,
		-0.801898, -0.520096, 0.294042,
		0.573396, -0.531671, 0.623332,
		37.105782, 32.456703, 32.494621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.295815, 32.789318, 32.717583>,  <36.704403, 32.828873, 32.058289>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.295815, 32.789318, 32.717583> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.675880, 32.703114, 32.807678>,  <36.903919, 32.651390, 32.861736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.675880, 32.703114, 32.807678>,  <36.295815, 32.789318, 32.717583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.675880, 32.703114, 32.807678> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080882, 0.527358, 0.845784,
		-0.301062, -0.821855, 0.483648,
		0.950168, -0.215515, 0.225241,
		36.960930, 32.638458, 32.875252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.323921, 32.529053, 33.453667>,  <36.295815, 32.789318, 32.717583>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.323921, 32.529053, 33.453667> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.694256, 32.655235, 33.370415>,  <36.916454, 32.730946, 33.320461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.694256, 32.655235, 33.370415>,  <36.323921, 32.529053, 33.453667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.694256, 32.655235, 33.370415> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122796, 0.269744, 0.955070,
		0.357427, -0.909794, 0.211001,
		0.925833, 0.315457, -0.208132,
		36.972008, 32.749870, 33.307976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755692, 32.359131, 33.988068>,  <36.323921, 32.529053, 33.453667>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.755692, 32.359131, 33.988068> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.989098, 32.645901, 33.835472>,  <37.129139, 32.817963, 33.743916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.989098, 32.645901, 33.835472>,  <36.755692, 32.359131, 33.988068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.989098, 32.645901, 33.835472> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175185, 0.347572, 0.921143,
		0.792985, -0.604328, 0.077217,
		0.583511, 0.716925, -0.381489,
		37.164150, 32.860977, 33.721024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.306068, 32.520027, 34.504734>,  <36.755692, 32.359131, 33.988068>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.306068, 32.520027, 34.504734> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.355019, 32.839756, 34.269413>,  <37.384388, 33.031593, 34.128220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.355019, 32.839756, 34.269413>,  <37.306068, 32.520027, 34.504734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.355019, 32.839756, 34.269413> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003079, 0.593063, 0.805151,
		0.992479, -0.096722, 0.075040,
		0.122379, 0.799326, -0.588304,
		37.391731, 33.079556, 34.092922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894638, 32.956654, 34.839321>,  <37.306068, 32.520027, 34.504734>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.894638, 32.956654, 34.839321> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.677032, 33.196903, 34.604954>,  <37.546467, 33.341053, 34.464333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.677032, 33.196903, 34.604954>,  <37.894638, 32.956654, 34.839321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.677032, 33.196903, 34.604954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077324, 0.659435, 0.747775,
		0.835504, 0.452107, -0.312300,
		-0.544016, 0.600621, -0.585919,
		37.513828, 33.377090, 34.429176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.168377, 33.488907, 35.008022>,  <37.894638, 32.956654, 34.839321>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.168377, 33.488907, 35.008022> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.806156, 33.560738, 34.854286>,  <37.588821, 33.603836, 34.762043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.806156, 33.560738, 34.854286>,  <38.168377, 33.488907, 35.008022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.806156, 33.560738, 34.854286> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120304, 0.760086, 0.638589,
		0.406813, 0.624516, -0.666696,
		-0.905555, 0.179580, -0.384344,
		37.534489, 33.614613, 34.738983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.154037, 34.169209, 34.809196>,  <38.168377, 33.488907, 35.008022>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.154037, 34.169209, 34.809196> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.789303, 34.036579, 34.906033>,  <37.570461, 33.957001, 34.964134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.789303, 34.036579, 34.906033>,  <38.154037, 34.169209, 34.809196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.789303, 34.036579, 34.906033> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124818, 0.785664, 0.605931,
		-0.391110, 0.522295, -0.757787,
		-0.911841, -0.331571, 0.242089,
		37.515751, 33.937107, 34.978661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.720394, 34.607742, 34.850948>,  <38.154037, 34.169209, 34.809196>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.720394, 34.607742, 34.850948> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.008141, 34.629620, 35.127937>,  <39.180790, 34.642746, 35.294128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.008141, 34.629620, 35.127937>,  <38.720394, 34.607742, 34.850948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.008141, 34.629620, 35.127937> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417837, -0.830446, -0.368472,
		0.554904, 0.554407, -0.620253,
		0.719371, 0.054698, 0.692470,
		39.223953, 34.646030, 35.335678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330322, 34.655037, 34.520721>,  <38.720394, 34.607742, 34.850948>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.330322, 34.655037, 34.520721> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.408230, 34.475620, 34.869633>,  <39.454975, 34.367970, 35.078979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.408230, 34.475620, 34.869633>,  <39.330322, 34.655037, 34.520721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.408230, 34.475620, 34.869633> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580772, -0.663918, -0.471081,
		0.790422, 0.598349, 0.131189,
		0.194772, -0.448544, 0.872280,
		39.466660, 34.341057, 35.131317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.943920, 34.296856, 34.444923>,  <39.330322, 34.655037, 34.520721>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.943920, 34.296856, 34.444923> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.802299, 34.140083, 34.784580>,  <39.717327, 34.046021, 34.988373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.802299, 34.140083, 34.784580>,  <39.943920, 34.296856, 34.444923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.802299, 34.140083, 34.784580> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497459, -0.847774, -0.183883,
		0.791950, 0.357310, 0.495122,
		-0.354048, -0.391929, 0.849142,
		39.696087, 34.022503, 35.039322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.539963, 34.182217, 34.741093>,  <39.943920, 34.296856, 34.444923>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.539963, 34.182217, 34.741093> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.271317, 33.928349, 34.894001>,  <40.110130, 33.776028, 34.985744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.271317, 33.928349, 34.894001>,  <40.539963, 34.182217, 34.741093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.271317, 33.928349, 34.894001> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520672, -0.771369, -0.365912,
		0.527104, -0.046714, 0.848516,
		-0.671612, -0.634672, 0.382269,
		40.069832, 33.737946, 35.008682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.884911, 33.686726, 35.194809>,  <40.539963, 34.182217, 34.741093>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.884911, 33.686726, 35.194809> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.538517, 33.508232, 35.104523>,  <40.330681, 33.401134, 35.050350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.538517, 33.508232, 35.104523>,  <40.884911, 33.686726, 35.194809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.538517, 33.508232, 35.104523> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498761, -0.803439, -0.325152,
		-0.036255, -0.394155, 0.918329,
		-0.865981, -0.446238, -0.225718,
		40.278721, 33.374359, 35.036808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.105293, 32.948685, 35.262802>,  <40.884911, 33.686726, 35.194809>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.105293, 32.948685, 35.262802> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.758938, 32.930878, 35.063499>,  <40.551125, 32.920193, 34.943916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.758938, 32.930878, 35.063499>,  <41.105293, 32.948685, 35.262802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.758938, 32.930878, 35.063499> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397722, -0.665392, -0.631720,
		-0.303409, -0.745165, 0.593862,
		-0.865887, -0.044523, -0.498255,
		40.499172, 32.917522, 34.914024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.974731, 32.229229, 35.132675>,  <41.105293, 32.948685, 35.262802>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.974731, 32.229229, 35.132675> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.778103, 32.419300, 34.840767>,  <40.660126, 32.533344, 34.665623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.778103, 32.419300, 34.840767>,  <40.974731, 32.229229, 35.132675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.778103, 32.419300, 34.840767> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344458, -0.663569, -0.664097,
		-0.799817, -0.577826, 0.162512,
		-0.491570, 0.475177, -0.729771,
		40.630630, 32.561852, 34.621834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.877316, 31.652512, 34.739235>,  <40.974731, 32.229229, 35.132675>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.877316, 31.652512, 34.739235> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.771309, 31.953554, 34.498119>,  <40.707706, 32.134178, 34.353451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.771309, 31.953554, 34.498119>,  <40.877316, 31.652512, 34.739235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.771309, 31.953554, 34.498119> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033115, -0.631873, -0.774364,
		-0.963676, -0.185255, 0.192377,
		-0.265013, 0.752607, -0.602786,
		40.691807, 32.179337, 34.317284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.335033, 31.448336, 34.409016>,  <40.877316, 31.652512, 34.739235>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.335033, 31.448336, 34.409016> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.432003, 31.747227, 34.161507>,  <40.490185, 31.926561, 34.013000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.432003, 31.747227, 34.161507>,  <40.335033, 31.448336, 34.409016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.432003, 31.747227, 34.161507> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193287, -0.587815, -0.785566,
		-0.950721, 0.310042, 0.001928,
		0.242425, 0.747226, -0.618775,
		40.504730, 31.971395, 33.975876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.867611, 31.435755, 33.863785>,  <40.335033, 31.448336, 34.409016>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.867611, 31.435755, 33.863785> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.184811, 31.633066, 33.720772>,  <40.375130, 31.751453, 33.634964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.184811, 31.633066, 33.720772>,  <39.867611, 31.435755, 33.863785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.184811, 31.633066, 33.720772> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012947, -0.600383, -0.799608,
		-0.609085, 0.629459, -0.482490,
		0.792999, 0.493276, -0.357535,
		40.422710, 31.781050, 33.613510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.753399, 31.653044, 33.186790>,  <39.867611, 31.435755, 33.863785>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.753399, 31.653044, 33.186790> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.150799, 31.664942, 33.230732>,  <40.389240, 31.672081, 33.257095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.150799, 31.664942, 33.230732>,  <39.753399, 31.653044, 33.186790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.150799, 31.664942, 33.230732> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109433, -0.514761, -0.850321,
		0.031257, 0.856817, -0.514672,
		0.993503, 0.029744, 0.109854,
		40.448849, 31.673864, 33.263687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.170120, 31.785433, 32.519184>,  <39.753399, 31.653044, 33.186790>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.170120, 31.785433, 32.519184> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.458473, 31.594431, 32.720108>,  <40.631485, 31.479830, 32.840660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.458473, 31.594431, 32.720108>,  <40.170120, 31.785433, 32.519184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.458473, 31.594431, 32.720108> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202851, -0.547658, -0.811740,
		0.662702, 0.687066, -0.297937,
		0.720886, -0.477505, 0.502307,
		40.674740, 31.451180, 32.870800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.626984, 31.660107, 32.022736>,  <40.170120, 31.785433, 32.519184>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.626984, 31.660107, 32.022736> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.739006, 31.419498, 32.321999>,  <40.806221, 31.275133, 32.501556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.739006, 31.419498, 32.321999>,  <40.626984, 31.660107, 32.022736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.739006, 31.419498, 32.321999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369048, -0.651995, -0.662349,
		0.886213, 0.461600, 0.039396,
		0.280055, -0.601521, 0.748159,
		40.823021, 31.239042, 32.546448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.382931, 31.534679, 32.006519>,  <40.626984, 31.660107, 32.022736>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.382931, 31.534679, 32.006519> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.197296, 31.226845, 32.181953>,  <41.085915, 31.042143, 32.287212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.197296, 31.226845, 32.181953>,  <41.382931, 31.534679, 32.006519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.197296, 31.226845, 32.181953> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196364, -0.572197, -0.796261,
		0.863749, -0.283415, 0.416670,
		-0.464090, -0.769588, 0.438582,
		41.058067, 30.995968, 32.313530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.846130, 30.966232, 31.924114>,  <41.382931, 31.534679, 32.006519>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.846130, 30.966232, 31.924114> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.493298, 30.795498, 32.003857>,  <41.281597, 30.693058, 32.051704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.493298, 30.795498, 32.003857>,  <41.846130, 30.966232, 31.924114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.493298, 30.795498, 32.003857> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168215, -0.680655, -0.713031,
		0.440041, -0.595416, 0.672193,
		-0.882082, -0.426836, 0.199358,
		41.228672, 30.667448, 32.063663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.958534, 30.286446, 31.861595>,  <41.846130, 30.966232, 31.924114>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.958534, 30.286446, 31.861595> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.559784, 30.269720, 31.834770>,  <41.320534, 30.259684, 31.818676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.559784, 30.269720, 31.834770>,  <41.958534, 30.286446, 31.861595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.559784, 30.269720, 31.834770> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078912, -0.573162, -0.815633,
		-0.004331, -0.818374, 0.574669,
		-0.996872, -0.041816, -0.067062,
		41.260723, 30.257175, 31.814651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.822021, 29.660929, 31.718651>,  <41.958534, 30.286446, 31.861595>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.822021, 29.660929, 31.718651> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.487011, 29.840202, 31.593632>,  <41.286007, 29.947767, 31.518620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.487011, 29.840202, 31.593632>,  <41.822021, 29.660929, 31.718651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.487011, 29.840202, 31.593632> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010784, -0.585458, -0.810631,
		-0.546296, -0.675552, 0.495168,
		-0.837523, 0.448184, -0.312548,
		41.235756, 29.974659, 31.499866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.335636, 29.155285, 31.450117>,  <41.822021, 29.660929, 31.718651>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.335636, 29.155285, 31.450117> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.231033, 29.497501, 31.271381>,  <41.168274, 29.702831, 31.164141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.231033, 29.497501, 31.271381>,  <41.335636, 29.155285, 31.450117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.231033, 29.497501, 31.271381> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076673, -0.443072, -0.893201,
		-0.962152, -0.267835, 0.050268,
		-0.261503, 0.855542, -0.446838,
		41.152584, 29.754164, 31.137329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.632629, 28.975554, 31.041416> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.731251, 29.328577, 30.881266>,  <40.790424, 29.540392, 30.785175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.731251, 29.328577, 30.881266>,  <40.632629, 28.975554, 31.041416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.731251, 29.328577, 30.881266> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136672, -0.377338, -0.915935,
		-0.959444, 0.280547, 0.027587,
		0.246553, 0.882559, -0.400378,
		40.805218, 29.593344, 30.761152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.061756, 29.215525, 30.585711>,  <40.632629, 28.975554, 31.041416>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.061756, 29.215525, 30.585711> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.391174, 29.396933, 30.449415>,  <40.588825, 29.505777, 30.367638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.391174, 29.396933, 30.449415>,  <40.061756, 29.215525, 30.585711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.391174, 29.396933, 30.449415> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159919, -0.390692, -0.906524,
		-0.544248, 0.801050, -0.249225,
		0.823541, 0.453518, -0.340737,
		40.638237, 29.532988, 30.347195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.919434, 29.399660, 29.897461>,  <40.061756, 29.215525, 30.585711>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.919434, 29.399660, 29.897461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.317863, 29.371202, 29.918503>,  <40.556923, 29.354128, 29.931128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.317863, 29.371202, 29.918503>,  <39.919434, 29.399660, 29.897461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.317863, 29.371202, 29.918503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020516, -0.392645, -0.919461,
		0.086070, 0.916934, -0.389645,
		0.996078, -0.071145, 0.052607,
		40.616688, 29.349859, 29.934284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.092297, 29.705179, 29.214666>,  <39.919434, 29.399660, 29.897461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.092297, 29.705179, 29.214666> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.390755, 29.488354, 29.369289>,  <40.569832, 29.358257, 29.462063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.390755, 29.488354, 29.369289>,  <40.092297, 29.705179, 29.214666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.390755, 29.488354, 29.369289> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130437, -0.450338, -0.883279,
		0.652876, 0.709480, -0.265314,
		0.746149, -0.542065, 0.386557,
		40.614601, 29.325735, 29.485256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.462540, 29.594227, 28.644514>,  <40.092297, 29.705179, 29.214666>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.462540, 29.594227, 28.644514> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.631874, 29.321199, 28.882803>,  <40.733475, 29.157383, 29.025776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.631874, 29.321199, 28.882803>,  <40.462540, 29.594227, 28.644514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.631874, 29.321199, 28.882803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390954, -0.455543, -0.799772,
		0.817277, 0.571473, 0.074006,
		0.423335, -0.682568, 0.595724,
		40.758873, 29.116428, 29.061520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.183762, 29.520805, 28.502928>,  <40.462540, 29.594227, 28.644514>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.183762, 29.520805, 28.502928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.110195, 29.170254, 28.680977>,  <41.066055, 28.959923, 28.787807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.110195, 29.170254, 28.680977>,  <41.183762, 29.520805, 28.502928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.110195, 29.170254, 28.680977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603099, -0.458198, -0.652937,
		0.776175, 0.148372, 0.612811,
		-0.183911, -0.876379, 0.445125,
		41.055023, 28.907339, 28.814514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.834721, 29.217705, 28.384607>,  <41.183762, 29.520805, 28.502928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.834721, 29.217705, 28.384607> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.561096, 28.940331, 28.475122>,  <41.396923, 28.773905, 28.529432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.561096, 28.940331, 28.475122>,  <41.834721, 29.217705, 28.384607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.561096, 28.940331, 28.475122> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336848, -0.575482, -0.745221,
		0.646990, -0.433551, 0.627246,
		-0.684060, -0.693437, 0.226290,
		41.355877, 28.732300, 28.543009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.200600, 28.586908, 28.495445>,  <41.834721, 29.217705, 28.384607>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.200600, 28.586908, 28.495445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.827629, 28.485325, 28.392618>,  <41.603848, 28.424374, 28.330921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.827629, 28.485325, 28.392618>,  <42.200600, 28.586908, 28.495445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.827629, 28.485325, 28.392618> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358468, -0.739851, -0.569317,
		-0.045608, -0.622997, 0.780894,
		-0.932427, -0.253960, -0.257068,
		41.547901, 28.409138, 28.315498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.244537, 27.916441, 28.602402>,  <42.200600, 28.586908, 28.495445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.244537, 27.916441, 28.602402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.946667, 27.968929, 28.340645>,  <41.767944, 28.000422, 28.183590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.946667, 27.968929, 28.340645>,  <42.244537, 27.916441, 28.602402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.946667, 27.968929, 28.340645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379525, -0.723273, -0.576921,
		-0.549009, -0.677981, 0.488806,
		-0.744681, 0.131220, -0.654394,
		41.723263, 28.008295, 28.144327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.996502, 27.240854, 28.475767>,  <42.244537, 27.916441, 28.602402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.996502, 27.240854, 28.475767> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.872627, 27.449469, 28.157749>,  <41.798302, 27.574638, 27.966938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.872627, 27.449469, 28.157749>,  <41.996502, 27.240854, 28.475767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.872627, 27.449469, 28.157749> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401844, -0.686021, -0.606544,
		-0.861752, -0.507321, 0.002873,
		-0.309684, 0.521537, -0.795045,
		41.779720, 27.605930, 27.919235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.938408, 26.678785, 27.953049>,  <41.996502, 27.240854, 28.475767>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.938408, 26.678785, 27.953049> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.905235, 27.006924, 27.726719>,  <41.885334, 27.203806, 27.590921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.905235, 27.006924, 27.726719>,  <41.938408, 26.678785, 27.953049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.905235, 27.006924, 27.726719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305527, -0.519511, -0.797973,
		-0.948566, -0.239048, -0.207555,
		-0.082927, 0.820344, -0.565826,
		41.880356, 27.253027, 27.556971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.538017, 26.545557, 27.469082>,  <41.938408, 26.678785, 27.953049>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.538017, 26.545557, 27.469082> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.747627, 26.851589, 27.319391>,  <41.873394, 27.035208, 27.229576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.747627, 26.851589, 27.319391>,  <41.538017, 26.545557, 27.469082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.747627, 26.851589, 27.319391> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181991, -0.529826, -0.828350,
		-0.832029, 0.365974, -0.416882,
		0.524029, 0.765080, -0.374227,
		41.904835, 27.081114, 27.207123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.273754, 26.723421, 26.783211>,  <41.538017, 26.545557, 27.469082>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.273754, 26.723421, 26.783211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.643745, 26.874945, 26.771097>,  <41.865742, 26.965858, 26.763830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.643745, 26.874945, 26.771097>,  <41.273754, 26.723421, 26.783211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.643745, 26.874945, 26.771097> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114062, -0.352760, -0.928736,
		-0.362498, 0.855607, -0.369503,
		0.924978, 0.378811, -0.030283,
		41.921238, 26.988588, 26.762012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.320961, 27.025421, 26.125486>,  <41.273754, 26.723421, 26.783211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.320961, 27.025421, 26.125486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.696045, 26.980787, 26.257088>,  <41.921097, 26.954006, 26.336048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.696045, 26.980787, 26.257088>,  <41.320961, 27.025421, 26.125486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.696045, 26.980787, 26.257088> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313330, -0.137415, -0.939650,
		0.150062, 0.984208, -0.093892,
		0.937713, -0.111586, 0.329003,
		41.977360, 26.947311, 26.355789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.657135, 27.468449, 25.695301>,  <41.320961, 27.025421, 26.125486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.657135, 27.468449, 25.695301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.940655, 27.222956, 25.834408>,  <42.110767, 27.075661, 25.917871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.940655, 27.222956, 25.834408>,  <41.657135, 27.468449, 25.695301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.940655, 27.222956, 25.834408> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324395, -0.154188, -0.933270,
		0.626400, 0.774312, 0.089804,
		0.708795, -0.613732, 0.347766,
		42.153294, 27.038836, 25.938738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.342850, 27.724457, 25.403439>,  <41.657135, 27.468449, 25.695301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.342850, 27.724457, 25.403439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.385254, 27.343258, 25.516968>,  <42.410698, 27.114538, 25.585085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.385254, 27.343258, 25.516968>,  <42.342850, 27.724457, 25.403439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.385254, 27.343258, 25.516968> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375001, -0.226037, -0.899045,
		0.920942, 0.201745, 0.333412,
		0.106015, -0.952998, 0.283822,
		42.417057, 27.057358, 25.602114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.065960, 27.663208, 25.396893>,  <42.342850, 27.724457, 25.403439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.065960, 27.663208, 25.396893> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.883755, 27.309563, 25.355219>,  <42.774433, 27.097376, 25.330215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.883755, 27.309563, 25.355219>,  <43.065960, 27.663208, 25.396893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.883755, 27.309563, 25.355219> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518041, -0.168073, -0.838681,
		0.723979, -0.435999, 0.534565,
		-0.455509, -0.884114, -0.104184,
		42.747101, 27.044329, 25.323963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.648277, 27.062180, 25.387424>,  <43.065960, 27.663208, 25.396893>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.648277, 27.062180, 25.387424> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.330177, 26.904415, 25.203241>,  <43.139317, 26.809757, 25.092731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.330177, 26.904415, 25.203241>,  <43.648277, 27.062180, 25.387424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.330177, 26.904415, 25.203241> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570512, -0.229799, -0.788485,
		0.205174, -0.889737, 0.407763,
		-0.795248, -0.394411, -0.460457,
		43.091602, 26.786093, 25.065104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.934155, 26.553787, 25.045244>,  <43.648277, 27.062180, 25.387424>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.934155, 26.553787, 25.045244> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.579758, 26.576429, 24.861149>,  <43.367119, 26.590015, 24.750692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.579758, 26.576429, 24.861149>,  <43.934155, 26.553787, 25.045244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.579758, 26.576429, 24.861149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445025, -0.175078, -0.878237,
		-0.130290, -0.982926, 0.129927,
		-0.885989, 0.056604, -0.460238,
		43.313961, 26.593410, 24.723078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.861771, 25.945543, 24.522972>,  <43.934155, 26.553787, 25.045244>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.861771, 25.945543, 24.522972> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.599037, 26.217457, 24.392452>,  <43.441399, 26.380604, 24.314140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.599037, 26.217457, 24.392452>,  <43.861771, 25.945543, 24.522972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.599037, 26.217457, 24.392452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419719, -0.029894, -0.907162,
		-0.626427, -0.732804, -0.265682,
		-0.656830, 0.679783, -0.326298,
		43.401989, 26.421392, 24.294563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.762108, 25.677740, 23.832928>,  <43.861771, 25.945543, 24.522972>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.762108, 25.677740, 23.832928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.603348, 26.044874, 23.835707>,  <43.508091, 26.265156, 23.837374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.603348, 26.044874, 23.835707>,  <43.762108, 25.677740, 23.832928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.603348, 26.044874, 23.835707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307828, 0.140237, -0.941050,
		-0.864705, -0.371360, -0.338196,
		-0.396896, 0.917837, 0.006949,
		43.484280, 26.320225, 23.837791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.893997, 25.689114, 23.115040>,  <43.762108, 25.677740, 23.832928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.893997, 25.689114, 23.115040> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.147545, 25.395119, 23.018703>,  <44.299675, 25.218721, 22.960901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.147545, 25.395119, 23.018703>,  <43.893997, 25.689114, 23.115040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.147545, 25.395119, 23.018703> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577577, -0.242716, -0.779419,
		0.514407, 0.633153, -0.578362,
		0.633869, -0.734987, -0.240840,
		44.337708, 25.174623, 22.946451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.398514, 25.925463, 22.685820>,  <43.893997, 25.689114, 23.115040>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.398514, 25.925463, 22.685820> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.513779, 25.558599, 22.575705>,  <43.582939, 25.338482, 22.509636>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.513779, 25.558599, 22.575705>,  <43.398514, 25.925463, 22.685820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.513779, 25.558599, 22.575705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082397, -0.262667, 0.961362,
		-0.954030, -0.299710, -0.000120,
		0.288161, -0.917159, -0.275287,
		43.600227, 25.283451, 22.493118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.972389, 25.462660, 23.149717>,  <43.398514, 25.925463, 22.685820>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.972389, 25.462660, 23.149717> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.306366, 25.303974, 22.997145>,  <43.506752, 25.208763, 22.905602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.306366, 25.303974, 22.997145>,  <42.972389, 25.462660, 23.149717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.306366, 25.303974, 22.997145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171070, -0.471660, 0.865027,
		-0.523081, -0.787496, -0.325940,
		0.834938, -0.396720, -0.381434,
		43.556847, 25.184959, 22.882715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.308121, 25.731174, 23.404667>,  <42.972389, 25.462660, 23.149717>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.308121, 25.731174, 23.404667> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.107182, 25.486214, 23.160500>,  <41.986618, 25.339237, 23.014000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.107182, 25.486214, 23.160500>,  <42.308121, 25.731174, 23.404667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.107182, 25.486214, 23.160500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848216, 0.486069, 0.210398,
		0.167858, 0.623459, -0.763625,
		-0.502349, -0.612402, -0.610418,
		41.956478, 25.302494, 22.977375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.798740, 26.159254, 23.171896>,  <42.308121, 25.731174, 23.404667>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.798740, 26.159254, 23.171896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.680626, 25.782831, 23.105904>,  <41.609756, 25.556976, 23.066309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.680626, 25.782831, 23.105904>,  <41.798740, 26.159254, 23.171896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.680626, 25.782831, 23.105904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.907425, 0.222202, 0.356661,
		-0.298980, 0.255022, -0.919552,
		-0.295282, -0.941058, -0.164979,
		41.592041, 25.500513, 23.056410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.259514, 26.314693, 22.711990>,  <41.798740, 26.159254, 23.171896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.259514, 26.314693, 22.711990> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.227295, 25.964939, 22.903389>,  <41.207962, 25.755087, 23.018229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.227295, 25.964939, 22.903389>,  <41.259514, 26.314693, 22.711990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.227295, 25.964939, 22.903389> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861362, 0.302628, 0.408011,
		-0.501566, -0.379295, -0.777539,
		-0.080548, -0.874387, 0.478498,
		41.203129, 25.702623, 23.046938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.469460, 26.243486, 22.810728>,  <41.259514, 26.314693, 22.711990>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.469460, 26.243486, 22.810728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.642788, 25.966467, 23.041416>,  <40.746784, 25.800255, 23.179829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.642788, 25.966467, 23.041416>,  <40.469460, 26.243486, 22.810728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.642788, 25.966467, 23.041416> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704517, 0.138769, 0.695988,
		-0.562036, -0.707898, -0.427781,
		0.433326, -0.692549, 0.576719,
		40.772785, 25.758701, 23.214432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.985474, 25.864229, 22.947298>,  <40.469460, 26.243486, 22.810728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.985474, 25.864229, 22.947298> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.263924, 25.838997, 23.233355>,  <40.430992, 25.823858, 23.404989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.263924, 25.838997, 23.233355>,  <39.985474, 25.864229, 22.947298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.263924, 25.838997, 23.233355> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678517, 0.267669, 0.684082,
		-0.234574, -0.961444, 0.143530,
		0.696125, -0.063081, 0.715144,
		40.472763, 25.820072, 23.447897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.624084, 25.446268, 23.447147>,  <39.985474, 25.864229, 22.947298>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.624084, 25.446268, 23.447147> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.929138, 25.638523, 23.620293>,  <40.112171, 25.753876, 23.724180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.929138, 25.638523, 23.620293>,  <39.624084, 25.446268, 23.447147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.929138, 25.638523, 23.620293> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608008, 0.304344, 0.733281,
		0.220701, -0.822414, 0.524334,
		0.762639, 0.480635, 0.432865,
		40.157928, 25.782715, 23.750151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.578487, 25.278278, 24.083265>,  <39.624084, 25.446268, 23.447147>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.578487, 25.278278, 24.083265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.766010, 25.631260, 24.098732>,  <39.878525, 25.843048, 24.108011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.766010, 25.631260, 24.098732>,  <39.578487, 25.278278, 24.083265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.766010, 25.631260, 24.098732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503978, 0.231281, 0.832175,
		0.725412, -0.409619, 0.553163,
		0.468811, 0.882452, 0.038665,
		39.906654, 25.895996, 24.110332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.711662, 25.464752, 24.856192>,  <39.578487, 25.278278, 24.083265>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.711662, 25.464752, 24.856192> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.802166, 25.810253, 24.676085>,  <39.856468, 26.017553, 24.568020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.802166, 25.810253, 24.676085>,  <39.711662, 25.464752, 24.856192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.802166, 25.810253, 24.676085> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368718, 0.503804, 0.781171,
		0.901583, -0.010729, 0.432472,
		0.226262, 0.863751, -0.450266,
		39.870045, 26.069378, 24.541004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.160416, 25.834785, 25.326336>,  <39.711662, 25.464752, 24.856192>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.160416, 25.834785, 25.326336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.977928, 26.113312, 25.104702>,  <39.868435, 26.280428, 24.971722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.977928, 26.113312, 25.104702>,  <40.160416, 25.834785, 25.326336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.977928, 26.113312, 25.104702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172531, 0.541628, 0.822722,
		0.872984, 0.470935, -0.126962,
		-0.456215, 0.696318, -0.554084,
		39.841064, 26.322206, 24.938477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.545059, 26.476786, 25.428726>,  <40.160416, 25.834785, 25.326336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.545059, 26.476786, 25.428726> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.170769, 26.560724, 25.315325>,  <39.946194, 26.611088, 25.247284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.170769, 26.560724, 25.315325>,  <40.545059, 26.476786, 25.428726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.170769, 26.560724, 25.315325> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138579, 0.520410, 0.842597,
		0.324352, 0.827731, -0.457884,
		-0.935730, 0.209845, -0.283502,
		39.890049, 26.623678, 25.230274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.438793, 27.121151, 25.578875>,  <40.545059, 26.476786, 25.428726>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.438793, 27.121151, 25.578875> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.051853, 27.024183, 25.549320>,  <39.819687, 26.966003, 25.531588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.051853, 27.024183, 25.549320>,  <40.438793, 27.121151, 25.578875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.051853, 27.024183, 25.549320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205642, 0.580469, 0.787888,
		-0.148111, 0.777361, -0.611370,
		-0.967354, -0.242418, -0.073884,
		39.761646, 26.951458, 25.527155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.029175, 27.740747, 25.695423>,  <40.438793, 27.121151, 25.578875>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.029175, 27.740747, 25.695423> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.755672, 27.458162, 25.768509>,  <39.591572, 27.288612, 25.812361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.755672, 27.458162, 25.768509>,  <40.029175, 27.740747, 25.695423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.755672, 27.458162, 25.768509> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167696, 0.395822, 0.902886,
		-0.710176, 0.586717, -0.389118,
		-0.683760, -0.706462, 0.182713,
		39.550545, 27.246223, 25.823322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.600506, 28.154577, 26.085247>,  <40.029175, 27.740747, 25.695423>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.600506, 28.154577, 26.085247> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.464268, 27.787920, 26.168921>,  <39.382523, 27.567926, 26.219126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.464268, 27.787920, 26.168921>,  <39.600506, 28.154577, 26.085247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.464268, 27.787920, 26.168921> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339486, 0.327378, 0.881801,
		-0.876779, 0.229325, -0.422692,
		-0.340599, -0.916643, 0.209186,
		39.362087, 27.512928, 26.231676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.839352, 28.154507, 26.332355>,  <39.600506, 28.154577, 26.085247>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.839352, 28.154507, 26.332355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.009823, 27.816208, 26.460783>,  <39.112106, 27.613230, 26.537840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.009823, 27.816208, 26.460783>,  <38.839352, 28.154507, 26.332355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.009823, 27.816208, 26.460783> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355210, 0.169963, 0.919205,
		-0.831984, -0.505793, -0.227983,
		0.426179, -0.845746, 0.321069,
		39.137676, 27.562485, 26.557104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.349449, 28.039309, 26.818607>,  <38.839352, 28.154507, 26.332355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.349449, 28.039309, 26.818607> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.649433, 27.788149, 26.901844>,  <38.829426, 27.637453, 26.951786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.649433, 27.788149, 26.901844>,  <38.349449, 28.039309, 26.818607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.649433, 27.788149, 26.901844> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221626, 0.057889, 0.973412,
		-0.623248, -0.776141, -0.095744,
		0.749963, -0.627897, 0.208092,
		38.874420, 27.599779, 26.964272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.032860, 27.518068, 27.257421>,  <38.349449, 28.039309, 26.818607>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.032860, 27.518068, 27.257421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.428734, 27.547892, 27.306364>,  <38.666256, 27.565786, 27.335730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.428734, 27.547892, 27.306364>,  <38.032860, 27.518068, 27.257421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.428734, 27.547892, 27.306364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121883, -0.010891, 0.992485,
		0.075328, -0.997157, -0.001691,
		0.989682, 0.074556, 0.122357,
		38.725639, 27.570259, 27.343071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.213505, 27.026018, 27.857841>,  <38.032860, 27.518068, 27.257421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.213505, 27.026018, 27.857841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.514778, 27.286009, 27.817335>,  <38.695541, 27.442003, 27.793032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.514778, 27.286009, 27.817335>,  <38.213505, 27.026018, 27.857841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.514778, 27.286009, 27.817335> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004642, 0.148687, 0.988873,
		0.657799, -0.745268, 0.108971,
		0.753179, 0.649974, -0.101266,
		38.740730, 27.481001, 27.786955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.574615, 26.939962, 28.457468>,  <38.213505, 27.026018, 27.857841>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.574615, 26.939962, 28.457468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.710773, 27.290133, 28.320202>,  <38.792469, 27.500235, 28.237843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.710773, 27.290133, 28.320202>,  <38.574615, 26.939962, 28.457468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.710773, 27.290133, 28.320202> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095898, 0.330736, 0.938838,
		0.935381, -0.352480, 0.028628,
		0.340390, 0.875426, -0.343167,
		38.812889, 27.552761, 28.217253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.201283, 27.055456, 28.837162>,  <38.574615, 26.939962, 28.457468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.201283, 27.055456, 28.837162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.979885, 27.365547, 28.715399>,  <38.847046, 27.551601, 28.642342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.979885, 27.365547, 28.715399>,  <39.201283, 27.055456, 28.837162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.979885, 27.365547, 28.715399> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000855, 0.364973, 0.931018,
		0.832852, 0.515574, -0.201348,
		-0.553495, 0.775228, -0.304409,
		38.813835, 27.598116, 28.624077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.321934, 27.528624, 29.391844>,  <39.201283, 27.055456, 28.837162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.321934, 27.528624, 29.391844> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.031338, 27.718893, 29.193470>,  <38.856979, 27.833055, 29.074446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.031338, 27.718893, 29.193470>,  <39.321934, 27.528624, 29.391844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.031338, 27.718893, 29.193470> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296002, 0.434695, 0.850543,
		0.620162, 0.764706, -0.175000,
		-0.726486, 0.475674, -0.495935,
		38.813393, 27.861595, 29.044689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.633228, 31.050213, 33.577168> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.328541, 31.172543, 33.348690>,  <41.145729, 31.245939, 33.211605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.328541, 31.172543, 33.348690>,  <41.633228, 31.050213, 33.577168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.328541, 31.172543, 33.348690> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075453, 0.833724, 0.547003,
		0.643504, 0.459758, -0.611985,
		-0.761715, 0.305822, -0.571194,
		41.100025, 31.264290, 33.177330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.764023, 31.733408, 33.409401>,  <41.633228, 31.050213, 33.577168>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.764023, 31.733408, 33.409401> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.367802, 31.701647, 33.364674>,  <41.130070, 31.682590, 33.337837>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.367802, 31.701647, 33.364674>,  <41.764023, 31.733408, 33.409401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.367802, 31.701647, 33.364674> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130495, 0.796490, 0.590403,
		0.042183, 0.599416, -0.799326,
		-0.990551, -0.079403, -0.111819,
		41.070637, 31.677826, 33.331127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.490059, 32.348152, 33.202110>,  <41.764023, 31.733408, 33.409401>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.490059, 32.348152, 33.202110> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.175224, 32.161041, 33.362949>,  <40.986324, 32.048775, 33.459454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.175224, 32.161041, 33.362949>,  <41.490059, 32.348152, 33.202110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.175224, 32.161041, 33.362949> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190075, 0.804060, 0.563346,
		-0.586830, 0.366973, -0.721776,
		-0.787084, -0.467780, 0.402095,
		40.939098, 32.020706, 33.483578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.029163, 32.965664, 33.206932>,  <41.490059, 32.348152, 33.202110>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.029163, 32.965664, 33.206932> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.904034, 32.666912, 33.441647>,  <40.828957, 32.487663, 33.582474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.904034, 32.666912, 33.441647>,  <41.029163, 32.965664, 33.206932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.904034, 32.666912, 33.441647> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360918, 0.664922, 0.653924,
		-0.878568, -0.007219, -0.477564,
		-0.312822, -0.746878, 0.586785,
		40.810188, 32.442848, 33.617683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.437065, 33.232597, 33.511299>,  <41.029163, 32.965664, 33.206932>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.437065, 33.232597, 33.511299> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.515808, 32.925812, 33.755596>,  <40.563053, 32.741741, 33.902176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.515808, 32.925812, 33.755596>,  <40.437065, 33.232597, 33.511299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.515808, 32.925812, 33.755596> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332820, 0.533668, 0.777450,
		-0.922213, -0.356316, -0.150205,
		0.196858, -0.766966, 0.610745,
		40.574867, 32.695721, 33.938820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.712650, 32.862026, 33.772972>,  <40.437065, 33.232597, 33.511299>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.712650, 32.862026, 33.772972> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.012455, 32.813469, 34.033279>,  <40.192337, 32.784336, 34.189465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.012455, 32.813469, 34.033279>,  <39.712650, 32.862026, 33.772972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.012455, 32.813469, 34.033279> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519877, 0.500654, 0.692151,
		-0.409831, -0.857094, 0.312136,
		0.749511, -0.121392, 0.650767,
		40.237309, 32.777050, 34.228508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.357769, 32.862663, 34.326431>,  <39.712650, 32.862026, 33.772972>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.357769, 32.862663, 34.326431> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.709904, 32.890697, 34.514088>,  <39.921185, 32.907516, 34.626682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.709904, 32.890697, 34.514088>,  <39.357769, 32.862663, 34.326431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.709904, 32.890697, 34.514088> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398107, 0.646900, 0.650409,
		-0.257903, -0.759347, 0.597392,
		0.880339, 0.070083, 0.469139,
		39.974007, 32.911724, 34.654831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.269917, 32.608505, 34.994709>,  <39.357769, 32.862663, 34.326431>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.269917, 32.608505, 34.994709> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.576805, 32.865021, 34.990475>,  <39.760941, 33.018932, 34.987934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.576805, 32.865021, 34.990475>,  <39.269917, 32.608505, 34.994709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.576805, 32.865021, 34.990475> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466921, 0.569771, 0.676273,
		0.439718, -0.513912, 0.736575,
		0.767224, 0.641292, -0.010582,
		39.806973, 33.057407, 34.987301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.058144, 33.073833, 35.553543>,  <39.269917, 32.608505, 34.994709>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.058144, 33.073833, 35.553543> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.381752, 33.267258, 35.419888>,  <39.575916, 33.383312, 35.339695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.381752, 33.267258, 35.419888>,  <39.058144, 33.073833, 35.553543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.381752, 33.267258, 35.419888> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362062, 0.857811, 0.364789,
		0.463026, -0.174144, 0.869069,
		0.809023, 0.483564, -0.334138,
		39.624458, 33.412327, 35.319645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.275585, 33.424072, 36.131332>,  <39.058144, 33.073833, 35.553543>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.275585, 33.424072, 36.131332> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.410667, 33.603683, 35.800438>,  <39.491718, 33.711449, 35.601902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.410667, 33.603683, 35.800438>,  <39.275585, 33.424072, 36.131332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.410667, 33.603683, 35.800438> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245436, 0.890478, 0.383159,
		0.908689, 0.073639, 0.410928,
		0.337706, 0.449029, -0.827241,
		39.511982, 33.738392, 35.552265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.713947, 33.949970, 36.346428>,  <39.275585, 33.424072, 36.131332>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.713947, 33.949970, 36.346428> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.619801, 34.074379, 35.978107>,  <39.563313, 34.149025, 35.757114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.619801, 34.074379, 35.978107>,  <39.713947, 33.949970, 36.346428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.619801, 34.074379, 35.978107> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277247, 0.886562, 0.370327,
		0.931525, 0.342449, -0.122433,
		-0.235362, 0.311024, -0.920798,
		39.549191, 34.167686, 35.701870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.056259, 34.671524, 36.294014>,  <39.713947, 33.949970, 36.346428>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.056259, 34.671524, 36.294014> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.809219, 34.666409, 35.979458>,  <39.660995, 34.663338, 35.790726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.809219, 34.666409, 35.979458>,  <40.056259, 34.671524, 36.294014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.809219, 34.666409, 35.979458> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334686, 0.909092, 0.248064,
		0.711729, 0.416398, -0.565734,
		-0.617598, -0.012789, -0.786390,
		39.623940, 34.662571, 35.743542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.138187, 35.272533, 35.809368>,  <40.056259, 34.671524, 36.294014>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.138187, 35.272533, 35.809368> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.757896, 35.149509, 35.825020>,  <39.529724, 35.075695, 35.834412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.757896, 35.149509, 35.825020>,  <40.138187, 35.272533, 35.809368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.757896, 35.149509, 35.825020> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292797, 0.932171, 0.212899,
		-0.101953, 0.190952, -0.976290,
		-0.950723, -0.307561, 0.039127,
		39.472679, 35.057240, 35.836758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.636414, 35.757660, 35.354256>,  <40.138187, 35.272533, 35.809368>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.636414, 35.757660, 35.354256> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.423687, 35.549400, 35.621418>,  <39.296051, 35.424446, 35.781715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.423687, 35.549400, 35.621418>,  <39.636414, 35.757660, 35.354256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.423687, 35.549400, 35.621418> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475208, 0.836282, 0.273515,
		-0.700963, -0.171935, -0.692163,
		-0.531816, -0.520645, 0.667908,
		39.264141, 35.393208, 35.821789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.742378, 36.431122, 35.621239>,  <39.636414, 35.757660, 35.354256>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.742378, 36.431122, 35.621239> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.683361, 36.820957, 35.553829>,  <39.647953, 37.054859, 35.513382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.683361, 36.820957, 35.553829>,  <39.742378, 36.431122, 35.621239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.683361, 36.820957, 35.553829> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271205, -0.203722, -0.940715,
		-0.951146, -0.093089, 0.294372,
		-0.147540, 0.974593, -0.168523,
		39.639099, 37.113335, 35.503273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.101170, 36.498581, 35.302044>,  <39.742378, 36.431122, 35.621239>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.101170, 36.498581, 35.302044> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.350025, 36.783672, 35.172451>,  <39.499336, 36.954727, 35.094696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.350025, 36.783672, 35.172451>,  <39.101170, 36.498581, 35.302044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.350025, 36.783672, 35.172451> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326668, -0.139762, -0.934748,
		-0.711503, 0.687375, 0.145875,
		0.622135, 0.712729, -0.323984,
		39.536667, 36.997490, 35.075256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.749660, 36.698460, 34.753601>,  <39.101170, 36.498581, 35.302044>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.749660, 36.698460, 34.753601> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.114872, 36.854923, 34.707355>,  <39.334000, 36.948803, 34.679607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.114872, 36.854923, 34.707355>,  <38.749660, 36.698460, 34.753601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.114872, 36.854923, 34.707355> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053157, -0.166927, -0.984535,
		-0.404408, 0.905059, -0.131617,
		0.913032, 0.391158, -0.115617,
		39.388783, 36.972271, 34.672668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.725880, 37.173248, 34.171764>,  <38.749660, 36.698460, 34.753601>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.725880, 37.173248, 34.171764> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.114323, 37.087864, 34.214447>,  <39.347389, 37.036633, 34.240059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.114323, 37.087864, 34.214447>,  <38.725880, 37.173248, 34.171764>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.114323, 37.087864, 34.214447> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102702, -0.029806, -0.994265,
		0.215418, 0.976496, -0.007022,
		0.971106, -0.213462, 0.106709,
		39.405655, 37.023827, 34.246460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.145996, 37.508736, 33.685600>,  <38.725880, 37.173248, 34.171764>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.145996, 37.508736, 33.685600> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.403587, 37.220909, 33.789539>,  <39.558140, 37.048214, 33.851902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.403587, 37.220909, 33.789539>,  <39.145996, 37.508736, 33.685600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.403587, 37.220909, 33.789539> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285947, -0.088643, -0.954137,
		0.709598, 0.688742, 0.148674,
		0.643975, -0.719567, 0.259845,
		39.596779, 37.005039, 33.867493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.600449, 37.486263, 33.111591>,  <39.145996, 37.508736, 33.685600>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.600449, 37.486263, 33.111591> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.739960, 37.171890, 33.315815>,  <39.823666, 36.983269, 33.438347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.739960, 37.171890, 33.315815>,  <39.600449, 37.486263, 33.111591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.739960, 37.171890, 33.315815> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425771, -0.352428, -0.833375,
		0.834907, 0.508047, 0.211705,
		0.348782, -0.785928, 0.510556,
		39.844593, 36.936111, 33.468983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.327938, 37.477398, 33.028599>,  <39.600449, 37.486263, 33.111591>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.327938, 37.477398, 33.028599> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.178196, 37.111530, 33.089561>,  <40.088348, 36.892010, 33.126141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.178196, 37.111530, 33.089561>,  <40.327938, 37.477398, 33.028599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.178196, 37.111530, 33.089561> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421450, -0.314234, -0.850668,
		0.825975, -0.254223, 0.503125,
		-0.374359, -0.914673, 0.152407,
		40.065887, 36.837128, 33.135284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.883060, 36.992355, 32.999920>,  <40.327938, 37.477398, 33.028599>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.883060, 36.992355, 32.999920> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.565308, 36.754047, 32.952557>,  <40.374657, 36.611065, 32.924141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.565308, 36.754047, 32.952557>,  <40.883060, 36.992355, 32.999920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.565308, 36.754047, 32.952557> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538091, -0.599772, -0.592226,
		0.281813, -0.534166, 0.797025,
		-0.794380, -0.595768, -0.118406,
		40.326992, 36.575317, 32.917034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.144333, 36.349682, 32.885361>,  <40.883060, 36.992355, 32.999920>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.144333, 36.349682, 32.885361> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.762978, 36.270103, 32.794613>,  <40.534164, 36.222359, 32.740166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.762978, 36.270103, 32.794613>,  <41.144333, 36.349682, 32.885361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.762978, 36.270103, 32.794613> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297810, -0.741342, -0.601433,
		-0.048535, -0.640963, 0.766036,
		-0.953391, -0.198943, -0.226867,
		40.476959, 36.210423, 32.726551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.032982, 35.696285, 33.039295>,  <41.144333, 36.349682, 32.885361>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.032982, 35.696285, 33.039295> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.786312, 35.813564, 32.747063>,  <40.638309, 35.883934, 32.571724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.786312, 35.813564, 32.747063>,  <41.032982, 35.696285, 33.039295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.786312, 35.813564, 32.747063> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448017, -0.632384, -0.631958,
		-0.647302, -0.717022, 0.258611,
		-0.616669, 0.293205, -0.730582,
		40.601311, 35.901524, 32.527889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.937641, 35.184219, 32.655762>,  <41.032982, 35.696285, 33.039295>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.937641, 35.184219, 32.655762> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.796047, 35.466015, 32.409706>,  <40.711090, 35.635090, 32.262074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.796047, 35.466015, 32.409706>,  <40.937641, 35.184219, 32.655762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.796047, 35.466015, 32.409706> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357873, -0.505634, -0.785023,
		-0.864072, -0.498028, -0.073129,
		-0.353987, 0.704487, -0.615135,
		40.689850, 35.677361, 32.225166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.600025, 34.809875, 32.054520>,  <40.937641, 35.184219, 32.655762>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.600025, 34.809875, 32.054520> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.668926, 35.178963, 31.916576>,  <40.710266, 35.400414, 31.833811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.668926, 35.178963, 31.916576>,  <40.600025, 34.809875, 32.054520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.668926, 35.178963, 31.916576> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179535, -0.373634, -0.910036,
		-0.968554, 0.094838, -0.230017,
		0.172249, 0.922715, -0.344858,
		40.720600, 35.455776, 31.813118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.168076, 34.973312, 31.479387>,  <40.600025, 34.809875, 32.054520>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.168076, 34.973312, 31.479387> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.479919, 35.218376, 31.427462>,  <40.667027, 35.365414, 31.396307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.479919, 35.218376, 31.427462>,  <40.168076, 34.973312, 31.479387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.479919, 35.218376, 31.427462> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272705, -0.518704, -0.810295,
		-0.563774, 0.596312, -0.571463,
		0.779609, 0.612664, -0.129815,
		40.713802, 35.402176, 31.388517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.162823, 35.177383, 30.792686>,  <40.168076, 34.973312, 31.479387>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.162823, 35.177383, 30.792686> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.541615, 35.223671, 30.912573>,  <40.768890, 35.251442, 30.984505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.541615, 35.223671, 30.912573>,  <40.162823, 35.177383, 30.792686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.541615, 35.223671, 30.912573> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312273, -0.550880, -0.773961,
		0.075546, 0.826523, -0.557811,
		0.946984, 0.115719, 0.299718,
		40.825710, 35.258389, 31.002489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.831135, 35.839489, 30.446175>,  <40.162823, 35.177383, 30.792686>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.831135, 35.839489, 30.446175> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.469681, 35.855576, 30.275610>,  <39.252808, 35.865227, 30.173271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.469681, 35.855576, 30.275610>,  <39.831135, 35.839489, 30.446175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.469681, 35.855576, 30.275610> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389035, 0.339384, 0.856429,
		0.179159, 0.939788, -0.291034,
		-0.903634, 0.040214, -0.426414,
		39.198589, 35.867641, 30.147686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.456978, 36.495445, 30.682619>,  <39.831135, 35.839489, 30.446175>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.456978, 36.495445, 30.682619> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.160702, 36.256565, 30.559505>,  <38.982937, 36.113239, 30.485638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.160702, 36.256565, 30.559505>,  <39.456978, 36.495445, 30.682619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.160702, 36.256565, 30.559505> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502479, 0.188319, 0.843831,
		-0.445972, 0.779674, -0.439566,
		-0.740691, -0.597197, -0.307785,
		38.938496, 36.077404, 30.467171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.849785, 36.862499, 30.919924>,  <39.456978, 36.495445, 30.682619>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.849785, 36.862499, 30.919924> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.690933, 36.506001, 30.832321>,  <38.595623, 36.292103, 30.779758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.690933, 36.506001, 30.832321>,  <38.849785, 36.862499, 30.919924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.690933, 36.506001, 30.832321> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740459, 0.170166, 0.650203,
		-0.542224, 0.420383, -0.727510,
		-0.397132, -0.891247, -0.219008,
		38.571793, 36.238625, 30.766619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.130478, 36.992325, 30.789001>,  <38.849785, 36.862499, 30.919924>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.130478, 36.992325, 30.789001> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.162079, 36.605434, 30.885525>,  <38.181042, 36.373299, 30.943438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.162079, 36.605434, 30.885525>,  <38.130478, 36.992325, 30.789001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.162079, 36.605434, 30.885525> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863180, 0.054715, 0.501924,
		-0.498678, -0.247946, -0.830568,
		0.079006, -0.967228, 0.241307,
		38.185780, 36.315266, 30.957916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.491329, 36.703510, 30.839005>,  <38.130478, 36.992325, 30.789001>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.491329, 36.703510, 30.839005> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.699112, 36.423653, 31.035234>,  <37.823780, 36.255737, 31.152973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.699112, 36.423653, 31.035234>,  <37.491329, 36.703510, 30.839005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.699112, 36.423653, 31.035234> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669572, 0.023415, 0.742378,
		-0.530888, -0.714106, -0.456300,
		0.519453, -0.699646, 0.490577,
		37.854946, 36.213760, 31.182407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028622, 36.188408, 30.988417>,  <37.491329, 36.703510, 30.839005>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.028622, 36.188408, 30.988417> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.323776, 36.142830, 31.254511>,  <37.500870, 36.115482, 31.414167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.323776, 36.142830, 31.254511>,  <37.028622, 36.188408, 30.988417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.323776, 36.142830, 31.254511> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667289, 0.024685, 0.744390,
		-0.101241, -0.993180, -0.057820,
		0.737886, -0.113946, 0.665237,
		37.545143, 36.108646, 31.454082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.767742, 35.629162, 31.552851>,  <37.028622, 36.188408, 30.988417>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.767742, 35.629162, 31.552851> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.054581, 35.860722, 31.708099>,  <37.226685, 35.999657, 31.801249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.054581, 35.860722, 31.708099>,  <36.767742, 35.629162, 31.552851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.054581, 35.860722, 31.708099> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633375, 0.308875, 0.709530,
		0.290855, -0.754640, 0.588150,
		0.717105, 0.578890, 0.388132,
		37.269711, 36.034393, 31.824537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.630753, 35.508747, 32.319214>,  <36.767742, 35.629162, 31.552851>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.630753, 35.508747, 32.319214> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.851326, 35.841812, 32.298847>,  <36.983669, 36.041653, 32.286629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.851326, 35.841812, 32.298847>,  <36.630753, 35.508747, 32.319214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.851326, 35.841812, 32.298847> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464838, 0.357372, 0.810069,
		0.692711, -0.423032, 0.584120,
		0.551433, 0.832664, -0.050914,
		37.016754, 36.091610, 32.283573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.804485, 35.544998, 32.975906>,  <36.630753, 35.508747, 32.319214>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.804485, 35.544998, 32.975906> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.870514, 35.903694, 32.811653>,  <36.910130, 36.118912, 32.713100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.870514, 35.903694, 32.811653>,  <36.804485, 35.544998, 32.975906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.870514, 35.903694, 32.811653> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382101, 0.441970, 0.811580,
		0.909259, 0.022936, 0.415599,
		0.165068, 0.896737, -0.410628,
		36.920033, 36.172714, 32.688465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.225906, 35.901493, 33.437500>,  <36.804485, 35.544998, 32.975906>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.225906, 35.901493, 33.437500> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.046234, 36.169163, 33.200706>,  <36.938431, 36.329765, 33.058632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.046234, 36.169163, 33.200706>,  <37.225906, 35.901493, 33.437500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.046234, 36.169163, 33.200706> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254826, 0.539107, 0.802762,
		0.856328, 0.511440, -0.071636,
		-0.449184, 0.669173, -0.591980,
		36.911480, 36.369915, 33.023113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467216, 36.552689, 33.586884>,  <37.225906, 35.901493, 33.437500>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467216, 36.552689, 33.586884> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.109741, 36.626041, 33.423080>,  <36.895256, 36.670055, 33.324799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.109741, 36.626041, 33.423080>,  <37.467216, 36.552689, 33.586884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.109741, 36.626041, 33.423080> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203187, 0.648318, 0.733757,
		0.400049, 0.738955, -0.542131,
		-0.893687, 0.183384, -0.409505,
		36.841637, 36.681057, 33.300228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.434181, 37.160526, 33.768211>,  <37.467216, 36.552689, 33.586884>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.434181, 37.160526, 33.768211> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.052517, 37.112988, 33.658337>,  <36.823517, 37.084465, 33.592411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.052517, 37.112988, 33.658337>,  <37.434181, 37.160526, 33.768211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.052517, 37.112988, 33.658337> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296444, 0.501625, 0.812707,
		0.041206, 0.856883, -0.513861,
		-0.954161, -0.118843, -0.274688,
		36.766270, 37.077335, 33.575932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.066631, 35.196781, 26.799398> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.708851, 35.017952, 26.795822>,  <40.494183, 34.910656, 26.793676>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.708851, 35.017952, 26.795822>,  <41.066631, 35.196781, 26.799398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.708851, 35.017952, 26.795822> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345459, 0.678191, 0.648626,
		-0.283918, 0.583254, -0.761055,
		-0.894454, -0.447070, -0.008940,
		40.440514, 34.883831, 26.793140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.649799, 35.749714, 26.725580>,  <41.066631, 35.196781, 26.799398>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.649799, 35.749714, 26.725580> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.419262, 35.462090, 26.880903>,  <40.280941, 35.289516, 26.974096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.419262, 35.462090, 26.880903>,  <40.649799, 35.749714, 26.725580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.419262, 35.462090, 26.880903> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431241, 0.671224, 0.602901,
		-0.694165, 0.180021, -0.696942,
		-0.576339, -0.719062, 0.388308,
		40.246361, 35.246372, 26.997396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.887058, 36.006470, 26.760038>,  <40.649799, 35.749714, 26.725580>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.887058, 36.006470, 26.760038> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.942753, 35.711998, 27.024961>,  <39.976170, 35.535316, 27.183916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.942753, 35.711998, 27.024961>,  <39.887058, 36.006470, 26.760038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.942753, 35.711998, 27.024961> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359417, 0.585646, 0.726525,
		-0.922731, -0.339204, -0.183052,
		0.139237, -0.736179, 0.662310,
		39.984524, 35.491146, 27.223654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.214535, 35.974014, 27.145086>,  <39.887058, 36.006470, 26.760038>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.214535, 35.974014, 27.145086> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.458740, 35.784206, 27.398731>,  <39.605263, 35.670322, 27.550919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.458740, 35.784206, 27.398731>,  <39.214535, 35.974014, 27.145086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.458740, 35.784206, 27.398731> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423454, 0.481022, 0.767662,
		-0.669295, -0.737187, 0.092733,
		0.610517, -0.474524, 0.634110,
		39.641895, 35.641850, 27.588964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.785488, 35.694553, 27.648270>,  <39.214535, 35.974014, 27.145086>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.785488, 35.694553, 27.648270> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.146996, 35.677788, 27.818657>,  <39.363899, 35.667728, 27.920889>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.146996, 35.677788, 27.818657>,  <38.785488, 35.694553, 27.648270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.146996, 35.677788, 27.818657> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413975, 0.167287, 0.894785,
		-0.108768, -0.985017, 0.133835,
		0.903767, -0.041919, 0.425967,
		39.418125, 35.665211, 27.946447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.648140, 35.350853, 28.283600>,  <38.785488, 35.694553, 27.648270>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.648140, 35.350853, 28.283600> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.017693, 35.496799, 28.329775>,  <39.239422, 35.584366, 28.357481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.017693, 35.496799, 28.329775>,  <38.648140, 35.350853, 28.283600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.017693, 35.496799, 28.329775> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152611, 0.074637, 0.985464,
		0.350944, -0.928064, 0.124638,
		0.923877, 0.364864, 0.115439,
		39.294857, 35.606258, 28.364407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.994354, 34.841728, 28.809135>,  <38.648140, 35.350853, 28.283600>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.994354, 34.841728, 28.809135> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.128227, 35.218658, 28.808165>,  <39.208549, 35.444817, 28.807583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.128227, 35.218658, 28.808165>,  <38.994354, 34.841728, 28.809135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.128227, 35.218658, 28.808165> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058772, -0.018302, 0.998104,
		0.940498, -0.334187, -0.061508,
		0.334679, 0.942329, -0.002428,
		39.228630, 35.501358, 28.807436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.536716, 34.883892, 29.334864>,  <38.994354, 34.841728, 28.809135>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.536716, 34.883892, 29.334864> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.404549, 35.258160, 29.285301>,  <39.325249, 35.482719, 29.255564>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.404549, 35.258160, 29.285301>,  <39.536716, 34.883892, 29.334864>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.404549, 35.258160, 29.285301> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014039, 0.126391, 0.991881,
		0.943730, 0.329475, -0.028626,
		-0.330418, 0.935666, -0.123905,
		39.305424, 35.538860, 29.248129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.905022, 35.237450, 29.827362>,  <39.536716, 34.883892, 29.334864>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.905022, 35.237450, 29.827362> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.615646, 35.494514, 29.726471>,  <39.442020, 35.648754, 29.665936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.615646, 35.494514, 29.726471>,  <39.905022, 35.237450, 29.827362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.615646, 35.494514, 29.726471> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106554, 0.257030, 0.960511,
		0.682116, 0.721747, -0.117467,
		-0.723439, 0.642664, -0.252229,
		39.398613, 35.687313, 29.650803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.632595, 35.365288, 30.195164>,  <39.905022, 35.237450, 29.827362>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.632595, 35.365288, 30.195164> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.927055, 35.280666, 30.452326>,  <41.103733, 35.229893, 30.606623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.927055, 35.280666, 30.452326>,  <40.632595, 35.365288, 30.195164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.927055, 35.280666, 30.452326> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510954, -0.449226, -0.732886,
		0.443857, 0.868009, -0.222602,
		0.736150, -0.211558, 0.642904,
		41.147900, 35.217197, 30.645197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.290455, 35.522728, 29.853806>,  <40.632595, 35.365288, 30.195164>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.290455, 35.522728, 29.853806> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.388149, 35.267189, 30.145620>,  <41.446766, 35.113865, 30.320709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.388149, 35.267189, 30.145620>,  <41.290455, 35.522728, 29.853806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.388149, 35.267189, 30.145620> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769689, -0.329907, -0.546572,
		0.589856, 0.695005, 0.411142,
		0.244232, -0.638850, 0.729535,
		41.461418, 35.075535, 30.364481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.936962, 35.638180, 29.937967>,  <41.290455, 35.522728, 29.853806>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.936962, 35.638180, 29.937967> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.882931, 35.261929, 30.062525>,  <41.850513, 35.036179, 30.137259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.882931, 35.261929, 30.062525>,  <41.936962, 35.638180, 29.937967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.882931, 35.261929, 30.062525> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694163, -0.314096, -0.647674,
		0.707030, 0.128672, 0.695379,
		-0.135079, -0.940631, 0.311394,
		41.842407, 34.979740, 30.155943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.683701, 35.339775, 30.142134>,  <41.936962, 35.638180, 29.937967>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.683701, 35.339775, 30.142134> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.441929, 35.028522, 30.073820>,  <42.296864, 34.841770, 30.032831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.441929, 35.028522, 30.073820>,  <42.683701, 35.339775, 30.142134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.441929, 35.028522, 30.073820> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756466, -0.493366, -0.429360,
		0.249839, -0.388713, 0.886839,
		-0.604434, -0.778134, -0.170786,
		42.260597, 34.795082, 30.022585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.116333, 34.658939, 30.247532>,  <42.683701, 35.339775, 30.142134>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.116333, 34.658939, 30.247532> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.806400, 34.569138, 30.011147>,  <42.620441, 34.515259, 29.869316>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.806400, 34.569138, 30.011147>,  <43.116333, 34.658939, 30.247532>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.806400, 34.569138, 30.011147> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584070, -0.611885, -0.533347,
		-0.241863, -0.758417, 0.605232,
		-0.774832, -0.224501, -0.590961,
		42.573952, 34.501789, 29.833858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.151340, 33.998158, 30.190306>,  <43.116333, 34.658939, 30.247532>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.151340, 33.998158, 30.190306> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.922710, 34.083607, 29.873404>,  <42.785530, 34.134876, 29.683262>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.922710, 34.083607, 29.873404>,  <43.151340, 33.998158, 30.190306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.922710, 34.083607, 29.873404> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572596, -0.587735, -0.571577,
		-0.587735, -0.780342, 0.213619,
		0.571577, -0.213619, 0.792254,
		42.751236, 34.147694, 29.635727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.167091, 33.343887, 29.860847>,  <43.151340, 33.998158, 30.190306>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.167091, 33.343887, 29.860847> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.005432, 33.582253, 29.583271>,  <42.908436, 33.725269, 29.416725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.005432, 33.582253, 29.583271>,  <43.167091, 33.343887, 29.860847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.005432, 33.582253, 29.583271> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440095, -0.538393, -0.718644,
		-0.801861, -0.595839, -0.044667,
		-0.404148, 0.595910, -0.693942,
		42.884190, 33.761024, 29.375088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.846035, 32.930988, 29.419525>,  <43.167091, 33.343887, 29.860847>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.846035, 32.930988, 29.419525> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.907131, 33.251247, 29.187790>,  <42.943790, 33.443401, 29.048750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.907131, 33.251247, 29.187790>,  <42.846035, 32.930988, 29.419525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.907131, 33.251247, 29.187790> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316753, -0.594951, -0.738716,
		-0.936129, -0.070672, -0.344483,
		0.152744, 0.800649, -0.579337,
		42.952953, 33.491444, 29.013988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.463989, 32.777058, 28.807278>,  <42.846035, 32.930988, 29.419525>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.463989, 32.777058, 28.807278> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.736767, 33.053490, 28.711479>,  <42.900433, 33.219349, 28.654001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.736767, 33.053490, 28.711479>,  <42.463989, 32.777058, 28.807278>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.736767, 33.053490, 28.711479> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252481, -0.529747, -0.809705,
		-0.686442, 0.491708, -0.535744,
		0.681947, 0.691080, -0.239494,
		42.941349, 33.260815, 28.639631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.397678, 32.890980, 28.038441>,  <42.463989, 32.777058, 28.807278>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.397678, 32.890980, 28.038441> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.769699, 33.019512, 28.109711>,  <42.992912, 33.096630, 28.152473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.769699, 33.019512, 28.109711>,  <42.397678, 32.890980, 28.038441>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.769699, 33.019512, 28.109711> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360761, -0.706694, -0.608634,
		-0.069657, 0.630341, -0.773187,
		0.930053, 0.321331, 0.178176,
		43.048714, 33.115913, 28.163164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.682549, 32.959812, 27.339569>,  <42.397678, 32.890980, 28.038441>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.682549, 32.959812, 27.339569> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.986149, 32.953293, 27.599924>,  <43.168308, 32.949383, 27.756138>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.986149, 32.953293, 27.599924>,  <42.682549, 32.959812, 27.339569>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.986149, 32.953293, 27.599924> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520325, -0.585748, -0.621418,
		0.391384, 0.810329, -0.436102,
		0.758999, -0.016299, 0.650887,
		43.213848, 32.948402, 27.795191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.292747, 33.176033, 27.075495>,  <42.682549, 32.959812, 27.339569>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.292747, 33.176033, 27.075495> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.416008, 32.935410, 27.370295>,  <43.489964, 32.791035, 27.547174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.416008, 32.935410, 27.370295>,  <43.292747, 33.176033, 27.075495>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.416008, 32.935410, 27.370295> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483476, -0.568170, -0.665908,
		0.819324, 0.561525, 0.115754,
		0.308156, -0.601559, 0.736999,
		43.508453, 32.754944, 27.591394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.898945, 32.915401, 26.875971>,  <43.292747, 33.176033, 27.075495>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.898945, 32.915401, 26.875971> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.827663, 32.645725, 27.162666>,  <43.784893, 32.483921, 27.334682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.827663, 32.645725, 27.162666>,  <43.898945, 32.915401, 26.875971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.827663, 32.645725, 27.162666> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471334, -0.697884, -0.539262,
		0.863763, 0.241722, 0.442136,
		-0.178208, -0.674188, 0.716738,
		43.774200, 32.443470, 27.377687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.570812, 32.781937, 27.083883>,  <43.898945, 32.915401, 26.875971>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.570812, 32.781937, 27.083883> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.294983, 32.497311, 27.137783>,  <44.129486, 32.326534, 27.170124>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.294983, 32.497311, 27.137783>,  <44.570812, 32.781937, 27.083883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.294983, 32.497311, 27.137783> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554259, -0.638296, -0.534205,
		0.466132, -0.293689, 0.834546,
		-0.689577, -0.711565, 0.134751,
		44.088108, 32.283840, 27.178207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.325047, 26.767578, 27.106407> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.358799, 27.143085, 26.972784>,  <36.379051, 27.368389, 26.892611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.358799, 27.143085, 26.972784>,  <36.325047, 26.767578, 27.106407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.358799, 27.143085, 26.972784> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165807, 0.343807, 0.924286,
		0.982541, -0.022606, 0.184666,
		0.084384, 0.938768, -0.334056,
		36.384113, 27.424715, 26.872566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.771889, 27.209637, 27.645235>,  <36.325047, 26.767578, 27.106407>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.771889, 27.209637, 27.645235> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.611557, 27.492613, 27.412388>,  <36.515358, 27.662399, 27.272680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.611557, 27.492613, 27.412388>,  <36.771889, 27.209637, 27.645235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611557, 27.492613, 27.412388> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203826, 0.550608, 0.809497,
		0.893190, 0.443123, -0.076507,
		-0.400833, 0.707440, -0.582118,
		36.491306, 27.704845, 27.237753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.096695, 27.790733, 27.770363>,  <36.771889, 27.209637, 27.645235>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.096695, 27.790733, 27.770363> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.741890, 27.894489, 27.617559>,  <36.529007, 27.956743, 27.525877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.741890, 27.894489, 27.617559>,  <37.096695, 27.790733, 27.770363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.741890, 27.894489, 27.617559> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179857, 0.567880, 0.803221,
		0.425280, 0.781173, -0.457063,
		-0.887011, 0.259388, -0.382008,
		36.475788, 27.972305, 27.502956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.042194, 28.428635, 27.942865>,  <37.096695, 27.790733, 27.770363>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.042194, 28.428635, 27.942865> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.660767, 28.327774, 27.876976>,  <36.431911, 28.267258, 27.837442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.660767, 28.327774, 27.876976>,  <37.042194, 28.428635, 27.942865>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.660767, 28.327774, 27.876976> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295808, 0.681151, 0.669724,
		-0.056668, 0.687353, -0.724110,
		-0.953565, -0.252149, -0.164725,
		36.374699, 28.252129, 27.827559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.819611, 29.048044, 27.834923>,  <37.042194, 28.428635, 27.942865>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.819611, 29.048044, 27.834923> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.518669, 28.797827, 27.917534>,  <36.338104, 28.647697, 27.967100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.518669, 28.797827, 27.917534>,  <36.819611, 29.048044, 27.834923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.518669, 28.797827, 27.917534> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417395, 0.695220, 0.585193,
		-0.509646, 0.354071, -0.784152,
		-0.752358, -0.625542, 0.206529,
		36.292961, 28.610165, 27.979492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.254696, 29.451141, 27.789841>,  <36.819611, 29.048044, 27.834923>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.254696, 29.451141, 27.789841> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.085655, 29.150017, 27.991707>,  <35.984230, 28.969341, 28.112827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.085655, 29.150017, 27.991707>,  <36.254696, 29.451141, 27.789841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.085655, 29.150017, 27.991707> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415618, 0.655800, 0.630228,
		-0.805402, 0.056585, -0.590021,
		-0.422597, -0.752811, 0.504665,
		35.958878, 28.924173, 28.143106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.641289, 29.737429, 27.869282>,  <36.254696, 29.451141, 27.789841>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.641289, 29.737429, 27.869282> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.678360, 29.447973, 28.142853>,  <35.700603, 29.274300, 28.306995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.678360, 29.447973, 28.142853>,  <35.641289, 29.737429, 27.869282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.678360, 29.447973, 28.142853> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319824, 0.628849, 0.708704,
		-0.942933, -0.284418, -0.173157,
		0.092679, -0.723641, 0.683926,
		35.706165, 29.230881, 28.348030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.108269, 29.663408, 28.227280>,  <35.641289, 29.737429, 27.869282>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.108269, 29.663408, 28.227280> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.348167, 29.503735, 28.504684>,  <35.492107, 29.407930, 28.671127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.348167, 29.503735, 28.504684>,  <35.108269, 29.663408, 28.227280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.348167, 29.503735, 28.504684> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427835, 0.572433, 0.699484,
		-0.676209, -0.716222, 0.172532,
		0.599749, -0.399182, 0.693510,
		35.528091, 29.383980, 28.712738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.650074, 29.743303, 28.807211>,  <35.108269, 29.663408, 28.227280>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.650074, 29.743303, 28.807211> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.026314, 29.694714, 28.934025>,  <35.252060, 29.665560, 29.010113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.026314, 29.694714, 28.934025>,  <34.650074, 29.743303, 28.807211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.026314, 29.694714, 28.934025> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192721, 0.577740, 0.793143,
		-0.279508, -0.807131, 0.520014,
		0.940603, -0.121473, 0.317034,
		35.308495, 29.658272, 29.029135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.575062, 29.652737, 29.546000>,  <34.650074, 29.743303, 28.807211>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.575062, 29.652737, 29.546000> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.963512, 29.743729, 29.517235>,  <35.196583, 29.798325, 29.499975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.963512, 29.743729, 29.517235>,  <34.575062, 29.652737, 29.546000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.963512, 29.743729, 29.517235> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054243, 0.504057, 0.861965,
		0.232329, -0.833174, 0.501841,
		0.971124, 0.227480, -0.071913,
		35.254848, 29.811974, 29.495661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.975948, 29.449919, 30.197712>,  <34.575062, 29.652737, 29.546000>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.975948, 29.449919, 30.197712> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.161678, 29.752098, 30.012804>,  <35.273117, 29.933407, 29.901859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.161678, 29.752098, 30.012804>,  <34.975948, 29.449919, 30.197712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.161678, 29.752098, 30.012804> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062410, 0.548561, 0.833778,
		0.883462, -0.358296, 0.301860,
		0.464328, 0.755450, -0.462271,
		35.300976, 29.978733, 29.874123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.481316, 29.599314, 30.741945>,  <34.975948, 29.449919, 30.197712>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.481316, 29.599314, 30.741945> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.488693, 29.907095, 30.486570>,  <35.493118, 30.091763, 30.333345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.488693, 29.907095, 30.486570>,  <35.481316, 29.599314, 30.741945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.488693, 29.907095, 30.486570> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142980, 0.629955, 0.763357,
		0.989554, -0.105362, -0.098398,
		0.018442, 0.769452, -0.638439,
		35.494225, 30.137930, 30.295038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.079651, 29.934988, 30.828293>,  <35.481316, 29.599314, 30.741945>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.079651, 29.934988, 30.828293> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.862129, 30.227707, 30.663977>,  <35.731617, 30.403337, 30.565388>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.862129, 30.227707, 30.663977>,  <36.079651, 29.934988, 30.828293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.862129, 30.227707, 30.663977> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171781, 0.576197, 0.799055,
		0.821442, 0.363964, -0.439047,
		-0.543805, 0.731797, -0.410790,
		35.698986, 30.447247, 30.540739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.520477, 30.595526, 30.906363>,  <36.079651, 29.934988, 30.828293>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.520477, 30.595526, 30.906363> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.136963, 30.699997, 30.861624>,  <35.906853, 30.762680, 30.834780>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.136963, 30.699997, 30.861624>,  <36.520477, 30.595526, 30.906363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.136963, 30.699997, 30.861624> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121883, 0.733697, 0.668455,
		0.256647, 0.627275, -0.735294,
		-0.958789, 0.261177, -0.111847,
		35.849327, 30.778351, 30.828070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.018864, 31.091978, 30.946754>,  <36.520477, 30.595526, 30.906363>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.018864, 31.091978, 30.946754> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.293159, 30.949492, 31.200644>,  <37.457737, 30.864000, 31.352978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.293159, 30.949492, 31.200644>,  <37.018864, 31.091978, 30.946754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.293159, 30.949492, 31.200644> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366370, -0.584592, -0.723896,
		0.628919, 0.728945, -0.270368,
		0.685736, -0.356217, 0.634725,
		37.498878, 30.842627, 31.391062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.581799, 30.960918, 30.572882>,  <37.018864, 31.091978, 30.946754>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.581799, 30.960918, 30.572882> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.658646, 30.758474, 30.909203>,  <37.704754, 30.637009, 31.110994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.658646, 30.758474, 30.909203>,  <37.581799, 30.960918, 30.572882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.658646, 30.758474, 30.909203> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409530, -0.737250, -0.537352,
		0.891839, 0.447566, 0.065630,
		0.192115, -0.506109, 0.840801,
		37.716282, 30.606642, 31.161442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.366558, 30.677895, 30.486866>,  <37.581799, 30.960918, 30.572882>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.366558, 30.677895, 30.486866> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.177982, 30.447149, 30.753693>,  <38.064838, 30.308702, 30.913790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.177982, 30.447149, 30.753693>,  <38.366558, 30.677895, 30.486866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.177982, 30.447149, 30.753693> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176040, -0.802731, -0.569766,
		0.864152, -0.151177, 0.479986,
		-0.471435, -0.576861, 0.667068,
		38.036552, 30.274092, 30.953814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.821590, 30.110420, 30.643330>,  <38.366558, 30.677895, 30.486866>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.821590, 30.110420, 30.643330> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.453583, 29.986271, 30.739029>,  <38.232780, 29.911781, 30.796448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.453583, 29.986271, 30.739029>,  <38.821590, 30.110420, 30.643330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.453583, 29.986271, 30.739029> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158843, -0.853460, -0.496362,
		0.358246, -0.418658, 0.834497,
		-0.920015, -0.310374, 0.239248,
		38.177578, 29.893158, 30.810802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.906265, 29.462137, 30.738186>,  <38.821590, 30.110420, 30.643330>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.906265, 29.462137, 30.738186> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.509369, 29.472988, 30.689665>,  <38.271229, 29.479500, 30.660553>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.509369, 29.472988, 30.689665>,  <38.906265, 29.462137, 30.738186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.509369, 29.472988, 30.689665> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042416, -0.843415, -0.535586,
		-0.116837, -0.536578, 0.835723,
		-0.992245, 0.027128, -0.121302,
		38.211697, 29.481127, 30.653275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.660934, 28.805309, 30.967896>,  <38.906265, 29.462137, 30.738186>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.660934, 28.805309, 30.967896> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.397255, 28.971317, 30.717068>,  <38.239048, 29.070923, 30.566570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.397255, 28.971317, 30.717068>,  <38.660934, 28.805309, 30.967896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.397255, 28.971317, 30.717068> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195915, -0.710317, -0.676067,
		-0.726008, -0.568509, 0.386923,
		-0.659188, 0.415026, -0.627076,
		38.199497, 29.095823, 30.528946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.253010, 28.285337, 30.730736>,  <38.660934, 28.805309, 30.967896>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.253010, 28.285337, 30.730736> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.181801, 28.573500, 30.462608>,  <38.139076, 28.746397, 30.301733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.181801, 28.573500, 30.462608>,  <38.253010, 28.285337, 30.730736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.181801, 28.573500, 30.462608> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218439, -0.635270, -0.740753,
		-0.959475, -0.278295, -0.044272,
		-0.178023, 0.720405, -0.670317,
		38.128395, 28.789621, 30.261513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.892986, 27.922060, 30.244211>,  <38.253010, 28.285337, 30.730736>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.892986, 27.922060, 30.244211> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.000362, 28.255226, 30.050636>,  <38.064789, 28.455126, 29.934492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.000362, 28.255226, 30.050636>,  <37.892986, 27.922060, 30.244211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.000362, 28.255226, 30.050636> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178681, -0.536712, -0.824629,
		-0.946579, 0.134894, -0.292902,
		0.268441, 0.832913, -0.483937,
		38.080894, 28.505100, 29.905455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.588249, 27.799376, 29.608618>,  <37.892986, 27.922060, 30.244211>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.588249, 27.799376, 29.608618> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.899658, 28.049265, 29.584562>,  <38.086506, 28.199200, 29.570129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.899658, 28.049265, 29.584562>,  <37.588249, 27.799376, 29.608618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.899658, 28.049265, 29.584562> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260483, -0.408811, -0.874655,
		-0.571004, 0.665277, -0.481000,
		0.778526, 0.624724, -0.060140,
		38.133217, 28.236683, 29.566521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.532669, 28.008087, 28.991987>,  <37.588249, 27.799376, 29.608618>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.532669, 28.008087, 28.991987> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.905716, 28.118023, 29.085535>,  <38.129543, 28.183985, 29.141665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.905716, 28.118023, 29.085535>,  <37.532669, 28.008087, 28.991987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.905716, 28.118023, 29.085535> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320556, -0.333242, -0.886675,
		-0.165758, 0.901894, -0.398888,
		0.932614, 0.274840, 0.233870,
		38.185501, 28.200476, 29.155697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.758644, 28.306635, 28.482981>,  <37.532669, 28.008087, 28.991987>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.758644, 28.306635, 28.482981> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.100353, 28.197704, 28.660093>,  <38.305378, 28.132345, 28.766361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.100353, 28.197704, 28.660093>,  <37.758644, 28.306635, 28.482981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.100353, 28.197704, 28.660093> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382661, -0.247072, -0.890239,
		0.351836, 0.929942, -0.106857,
		0.854273, -0.272328, 0.442782,
		38.356636, 28.116005, 28.792929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.362568, 28.718372, 28.189800>,  <37.758644, 28.306635, 28.482981>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.362568, 28.718372, 28.189800> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.506664, 28.367929, 28.317965>,  <38.593124, 28.157663, 28.394863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.506664, 28.367929, 28.317965>,  <38.362568, 28.718372, 28.189800>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.506664, 28.367929, 28.317965> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423195, -0.152610, -0.893094,
		0.831343, 0.457328, 0.315786,
		0.360244, -0.876106, 0.320410,
		38.614738, 28.105097, 28.414087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.154682, 28.761007, 27.906944>,  <38.362568, 28.718372, 28.189800>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.154682, 28.761007, 27.906944> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.064804, 28.382301, 27.999159>,  <39.010880, 28.155077, 28.054487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.064804, 28.382301, 27.999159>,  <39.154682, 28.761007, 27.906944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.064804, 28.382301, 27.999159> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519295, -0.316535, -0.793812,
		0.824528, -0.058646, 0.562774,
		-0.224692, -0.946766, 0.230537,
		38.997398, 28.098272, 28.068319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.702908, 28.300222, 27.626144>,  <39.154682, 28.761007, 27.906944>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.702908, 28.300222, 27.626144> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.410095, 28.032068, 27.674664>,  <39.234406, 27.871176, 27.703775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.410095, 28.032068, 27.674664>,  <39.702908, 28.300222, 27.626144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.410095, 28.032068, 27.674664> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310427, -0.486719, -0.816541,
		0.606434, -0.560081, 0.564400,
		-0.732033, -0.670384, 0.121298,
		39.190487, 27.830954, 27.711054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.306152, 28.053236, 28.034468>,  <39.702908, 28.300222, 27.626144>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.306152, 28.053236, 28.034468> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.688652, 28.139727, 28.113298>,  <40.918152, 28.191622, 28.160597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.688652, 28.139727, 28.113298>,  <40.306152, 28.053236, 28.034468>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.688652, 28.139727, 28.113298> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288141, 0.579348, 0.762451,
		0.050685, -0.785877, 0.616303,
		0.956246, 0.216227, 0.197078,
		40.975525, 28.204596, 28.172422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.383411, 27.896807, 28.737246>,  <40.306152, 28.053236, 28.034468>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.383411, 27.896807, 28.737246> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.686523, 28.152746, 28.686073>,  <40.868389, 28.306311, 28.655369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.686523, 28.152746, 28.686073>,  <40.383411, 27.896807, 28.737246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.686523, 28.152746, 28.686073> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147098, 0.358525, 0.921858,
		0.635719, -0.679743, 0.365802,
		0.757776, 0.639851, -0.127933,
		40.913857, 28.344702, 28.647694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.861652, 27.800909, 29.341373>,  <40.383411, 27.896807, 28.737246>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.861652, 27.800909, 29.341373> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.900013, 28.166008, 29.182529>,  <40.923027, 28.385067, 29.087223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.900013, 28.166008, 29.182529>,  <40.861652, 27.800909, 29.341373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.900013, 28.166008, 29.182529> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080710, 0.404766, 0.910852,
		0.992114, -0.055298, 0.112484,
		0.095898, 0.912747, -0.397111,
		40.928783, 28.439833, 29.063396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.276447, 28.270239, 29.856874>,  <40.861652, 27.800909, 29.341373>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.276447, 28.270239, 29.856874> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.088364, 28.522408, 29.609821>,  <40.975513, 28.673710, 29.461590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.088364, 28.522408, 29.609821>,  <41.276447, 28.270239, 29.856874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.088364, 28.522408, 29.609821> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163263, 0.625612, 0.762859,
		0.867323, 0.459540, -0.191244,
		-0.470208, 0.630422, -0.617634,
		40.947300, 28.711535, 29.424532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.706089, 28.726166, 30.020151>,  <41.276447, 28.270239, 29.856874>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.706089, 28.726166, 30.020151> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.365093, 28.868931, 29.867374>,  <41.160496, 28.954590, 29.775709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.365093, 28.868931, 29.867374>,  <41.706089, 28.726166, 30.020151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.365093, 28.868931, 29.867374> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056893, 0.662951, 0.746498,
		0.519643, 0.658109, -0.544851,
		-0.852487, 0.356914, -0.381940,
		41.109348, 28.976006, 29.752792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.879456, 29.325621, 30.058603>,  <41.706089, 28.726166, 30.020151>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.879456, 29.325621, 30.058603> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.485649, 29.363113, 29.999352>,  <41.249367, 29.385609, 29.963800>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.485649, 29.363113, 29.999352>,  <41.879456, 29.325621, 30.058603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.485649, 29.363113, 29.999352> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055764, 0.633654, 0.771604,
		0.166187, 0.767917, -0.618616,
		-0.984516, 0.093734, -0.148127,
		41.190292, 29.391233, 29.954914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.772877, 30.062168, 30.206932>,  <41.879456, 29.325621, 30.058603>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.772877, 30.062168, 30.206932> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.402119, 29.913200, 30.225567>,  <41.179665, 29.823820, 30.236748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.402119, 29.913200, 30.225567>,  <41.772877, 30.062168, 30.206932>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.402119, 29.913200, 30.225567> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187652, 0.567333, 0.801823,
		-0.325044, 0.734463, -0.595743,
		-0.926894, -0.372420, 0.046585,
		41.124050, 29.801474, 30.239542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.259579, 30.692282, 30.227783>,  <41.772877, 30.062168, 30.206932>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.259579, 30.692282, 30.227783> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.124813, 30.349571, 30.383949>,  <41.043953, 30.143946, 30.477650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.124813, 30.349571, 30.383949>,  <41.259579, 30.692282, 30.227783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.124813, 30.349571, 30.383949> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159935, 0.460710, 0.873022,
		-0.927852, 0.231692, -0.292248,
		-0.336914, -0.856776, 0.390415,
		41.023739, 30.092539, 30.501074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.581619, 30.804058, 30.653732>,  <41.259579, 30.692282, 30.227783>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.581619, 30.804058, 30.653732> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.738529, 30.464895, 30.796381>,  <40.832676, 30.261398, 30.881969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.738529, 30.464895, 30.796381>,  <40.581619, 30.804058, 30.653732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.738529, 30.464895, 30.796381> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137719, 0.329187, 0.934168,
		-0.909481, -0.415562, 0.012358,
		0.392272, -0.847906, 0.356620,
		40.856213, 30.210524, 30.903366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.115654, 30.567993, 31.103018>,  <40.581619, 30.804058, 30.653732>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.115654, 30.567993, 31.103018> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.454472, 30.403154, 31.237301>,  <40.657761, 30.304251, 31.317871>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.454472, 30.403154, 31.237301>,  <40.115654, 30.567993, 31.103018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.454472, 30.403154, 31.237301> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139030, 0.437828, 0.888244,
		-0.513023, -0.799052, 0.313565,
		0.847041, -0.412095, 0.335708,
		40.708584, 30.279526, 31.338013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.966049, 30.327543, 31.712019>,  <40.115654, 30.567993, 31.103018>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.966049, 30.327543, 31.712019> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.365673, 30.343483, 31.718927>,  <40.605446, 30.353046, 31.723072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.365673, 30.343483, 31.718927>,  <39.966049, 30.327543, 31.712019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.365673, 30.343483, 31.718927> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037748, 0.600041, 0.799078,
		0.021481, -0.798976, 0.600980,
		0.999056, 0.039851, 0.017270,
		40.665390, 30.355438, 31.724108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.097500, 30.171516, 32.383480>,  <39.966049, 30.327543, 31.712019>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.097500, 30.171516, 32.383480> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.443459, 30.329391, 32.259426>,  <40.651031, 30.424116, 32.184994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.443459, 30.329391, 32.259426>,  <40.097500, 30.171516, 32.383480>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.443459, 30.329391, 32.259426> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132557, 0.416330, 0.899499,
		0.484141, -0.819079, 0.307762,
		0.864891, 0.394689, -0.310137,
		40.702927, 30.447798, 32.166386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.519310, 30.017065, 32.961327>,  <40.097500, 30.171516, 32.383480>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.519310, 30.017065, 32.961327> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.684845, 30.316826, 32.754585>,  <40.784164, 30.496683, 32.630543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.684845, 30.316826, 32.754585>,  <40.519310, 30.017065, 32.961327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.684845, 30.316826, 32.754585> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223619, 0.466670, 0.855695,
		0.882459, -0.469695, 0.025545,
		0.413837, 0.749403, -0.516850,
		40.808994, 30.541647, 32.599529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.938972, 30.378258, 33.493168>,  <40.519310, 30.017065, 32.961327>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.938972, 30.378258, 33.493168> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.890347, 30.640991, 33.195499>,  <40.861172, 30.798632, 33.016899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.890347, 30.640991, 33.195499>,  <40.938972, 30.378258, 33.493168>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.890347, 30.640991, 33.195499> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090677, 0.753946, 0.650648,
		0.988433, 0.011614, -0.151210,
		-0.121560, 0.656834, -0.744172,
		40.853878, 30.838041, 32.972248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<45.056850, 32.190311, 27.076757> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.683441, 32.047215, 27.067387>,  <44.459396, 31.961355, 27.061764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.683441, 32.047215, 27.067387>,  <45.056850, 32.190311, 27.076757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.683441, 32.047215, 27.067387> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354131, -0.909974, -0.215728,
		0.055858, -0.209684, 0.976172,
		-0.933526, -0.357744, -0.023426,
		44.403385, 31.939892, 27.060358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.084003, 31.495745, 27.365934>,  <45.056850, 32.190311, 27.076757>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.084003, 31.495745, 27.365934> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.740387, 31.472166, 27.162537>,  <44.534218, 31.458019, 27.040497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.740387, 31.472166, 27.162537>,  <45.084003, 31.495745, 27.365934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.740387, 31.472166, 27.162537> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238630, -0.924925, -0.295920,
		-0.452878, -0.375551, 0.808617,
		-0.859044, -0.058944, -0.508497,
		44.482674, 31.454483, 27.009987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.777279, 30.753044, 27.464474>,  <45.084003, 31.495745, 27.365934>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.777279, 30.753044, 27.464474> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.646503, 30.910786, 27.120941>,  <44.568039, 31.005430, 26.914822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.646503, 30.910786, 27.120941>,  <44.777279, 30.753044, 27.464474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.646503, 30.910786, 27.120941> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087079, -0.892337, -0.442890,
		-0.941025, -0.219584, 0.257400,
		-0.326940, 0.394356, -0.858833,
		44.548420, 31.029093, 26.863291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.321960, 30.246134, 27.146839>,  <44.777279, 30.753044, 27.464474>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.321960, 30.246134, 27.146839> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.412842, 30.473776, 26.830738>,  <44.467369, 30.610361, 26.641077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.412842, 30.473776, 26.830738>,  <44.321960, 30.246134, 27.146839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.412842, 30.473776, 26.830738> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018328, -0.808831, -0.587755,
		-0.973676, 0.148021, -0.173335,
		0.227199, 0.569106, -0.790252,
		44.481003, 30.644508, 26.593662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.825623, 30.104939, 26.720963>,  <44.321960, 30.246134, 27.146839>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.825623, 30.104939, 26.720963> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.115337, 30.252359, 26.487871>,  <44.289165, 30.340813, 26.348017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.115337, 30.252359, 26.487871>,  <43.825623, 30.104939, 26.720963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.115337, 30.252359, 26.487871> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084498, -0.791337, -0.605513,
		-0.684299, 0.487807, -0.542015,
		0.724290, 0.368553, -0.582729,
		44.332623, 30.362925, 26.313053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.638649, 30.122000, 25.941591>,  <43.825623, 30.104939, 26.720963>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.638649, 30.122000, 25.941591> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.035168, 30.121799, 25.994240>,  <44.273079, 30.121679, 26.025829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.035168, 30.121799, 25.994240>,  <43.638649, 30.122000, 25.941591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.035168, 30.121799, 25.994240> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095109, -0.688567, -0.718909,
		0.090991, 0.725173, -0.682528,
		0.991300, -0.000499, 0.131624,
		44.332558, 30.121649, 26.033728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.835300, 30.087965, 25.345764>,  <43.638649, 30.122000, 25.941591>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.835300, 30.087965, 25.345764> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.208065, 29.997631, 25.459288>,  <44.431725, 29.943432, 25.527403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.208065, 29.997631, 25.459288>,  <43.835300, 30.087965, 25.345764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.208065, 29.997631, 25.459288> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094354, -0.604610, -0.790914,
		0.350209, 0.763837, -0.542132,
		0.931907, -0.225833, 0.283810,
		44.487637, 29.929882, 25.544432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.265095, 30.209011, 24.771782>,  <43.835300, 30.087965, 25.345764>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.265095, 30.209011, 24.771782> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.440750, 29.949238, 25.020102>,  <44.546143, 29.793373, 25.169094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.440750, 29.949238, 25.020102>,  <44.265095, 30.209011, 24.771782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.440750, 29.949238, 25.020102> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241487, -0.580238, -0.777822,
		0.865355, 0.491489, -0.097977,
		0.439141, -0.649432, 0.620800,
		44.572491, 29.754408, 25.206341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.857281, 29.980892, 24.399857>,  <44.265095, 30.209011, 24.771782>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.857281, 29.980892, 24.399857> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.842991, 29.727188, 24.708775>,  <44.834415, 29.574966, 24.894125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.842991, 29.727188, 24.708775>,  <44.857281, 29.980892, 24.399857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.842991, 29.727188, 24.708775> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101749, -0.771081, -0.628554,
		0.994168, 0.056123, 0.092084,
		-0.035728, -0.634258, 0.772295,
		44.832272, 29.536911, 24.940464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.516048, 29.588205, 24.362091>,  <44.857281, 29.980892, 24.399857>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.516048, 29.588205, 24.362091> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.230904, 29.390900, 24.561495>,  <45.059814, 29.272516, 24.681137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.230904, 29.390900, 24.561495>,  <45.516048, 29.588205, 24.362091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.230904, 29.390900, 24.561495> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084113, -0.765842, -0.637505,
		0.696240, -0.412523, 0.587431,
		-0.712864, -0.493266, 0.498511,
		45.017044, 29.242920, 24.711048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.736565, 28.816807, 24.339621>,  <45.516048, 29.588205, 24.362091>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.736565, 28.816807, 24.339621> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.343338, 28.808823, 24.412477>,  <45.107403, 28.804033, 24.456192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.343338, 28.808823, 24.412477>,  <45.736565, 28.816807, 24.339621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.343338, 28.808823, 24.412477> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086284, -0.826515, -0.556262,
		0.161647, -0.562560, 0.810800,
		-0.983069, -0.019959, 0.182144,
		45.048416, 28.802835, 24.467121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.625443, 28.138340, 24.213684>,  <45.736565, 28.816807, 24.339621>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.625443, 28.138340, 24.213684> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.264568, 28.310558, 24.203117>,  <45.048046, 28.413889, 24.196777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.264568, 28.310558, 24.203117>,  <45.625443, 28.138340, 24.213684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.264568, 28.310558, 24.203117> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332939, -0.733967, -0.591983,
		-0.274264, -0.525282, 0.805517,
		-0.902181, 0.430548, -0.026415,
		44.993916, 28.439722, 24.195192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.155849, 27.597040, 24.301224>,  <45.625443, 28.138340, 24.213684>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.155849, 27.597040, 24.301224> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.977139, 27.907890, 24.123926>,  <44.869911, 28.094400, 24.017548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.977139, 27.907890, 24.123926>,  <45.155849, 27.597040, 24.301224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.977139, 27.907890, 24.123926> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219279, -0.575448, -0.787894,
		-0.867357, -0.254819, 0.427504,
		-0.446777, 0.777127, -0.443242,
		44.843105, 28.141029, 23.990953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.556152, 27.383377, 24.116739>,  <45.155849, 27.597040, 24.301224>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.556152, 27.383377, 24.116739> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.595982, 27.678715, 23.849928>,  <44.619881, 27.855917, 23.689840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.595982, 27.678715, 23.849928>,  <44.556152, 27.383377, 24.116739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.595982, 27.678715, 23.849928> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403027, -0.582984, -0.705477,
		-0.909755, 0.339078, 0.239524,
		0.099573, 0.738346, -0.667031,
		44.625854, 27.900219, 23.649818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.876129, 27.399355, 23.791399>,  <44.556152, 27.383377, 24.116739>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.876129, 27.399355, 23.791399> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.619289, 27.145069, 23.620018>,  <43.465183, 26.992496, 23.517189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.619289, 27.145069, 23.620018>,  <43.876129, 27.399355, 23.791399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.619289, 27.145069, 23.620018> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461496, -0.125738, 0.878187,
		-0.612150, 0.761613, -0.212644,
		-0.642101, -0.635716, -0.428452,
		43.426659, 26.954353, 23.491482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.114380, 27.555759, 23.858393>,  <43.876129, 27.399355, 23.791399>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.114380, 27.555759, 23.858393> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.200768, 27.166063, 23.832439>,  <43.252602, 26.932245, 23.816868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.200768, 27.166063, 23.832439>,  <43.114380, 27.555759, 23.858393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.200768, 27.166063, 23.832439> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553352, -0.176873, 0.813952,
		-0.804462, -0.139884, -0.577298,
		0.215967, -0.974243, -0.064883,
		43.265556, 26.873791, 23.812975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.498833, 27.193886, 23.801872>,  <43.114380, 27.555759, 23.858393>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.498833, 27.193886, 23.801872> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.769093, 26.942461, 23.955963>,  <42.931248, 26.791605, 24.048418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.769093, 26.942461, 23.955963>,  <42.498833, 27.193886, 23.801872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.769093, 26.942461, 23.955963> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557092, -0.093080, 0.825218,
		-0.482846, -0.772168, -0.413058,
		0.675654, -0.628564, 0.385225,
		42.971790, 26.753891, 24.071531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.116180, 26.665339, 24.192841>,  <42.498833, 27.193886, 23.801872>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.116180, 26.665339, 24.192841> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.491302, 26.658262, 24.331524>,  <42.716377, 26.654016, 24.414734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.491302, 26.658262, 24.331524>,  <42.116180, 26.665339, 24.192841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.491302, 26.658262, 24.331524> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346844, -0.005209, 0.937909,
		-0.014771, -0.999830, -0.011016,
		0.937806, -0.017675, 0.346708,
		42.772644, 26.652956, 24.435535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.044613, 26.146074, 24.720167>,  <42.116180, 26.665339, 24.192841>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.044613, 26.146074, 24.720167> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.367016, 26.363663, 24.813505>,  <42.560455, 26.494215, 24.869509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.367016, 26.363663, 24.813505>,  <42.044613, 26.146074, 24.720167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.367016, 26.363663, 24.813505> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181508, -0.148088, 0.972175,
		0.563391, -0.825933, -0.020625,
		0.806006, 0.543971, 0.233345,
		42.608818, 26.526854, 24.883509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.476589, 25.776211, 25.131279>,  <42.044613, 26.146074, 24.720167>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.476589, 25.776211, 25.131279> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.530022, 26.164919, 25.209066>,  <42.562080, 26.398144, 25.255739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.530022, 26.164919, 25.209066>,  <42.476589, 25.776211, 25.131279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.530022, 26.164919, 25.209066> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199160, -0.165904, 0.965821,
		0.970820, -0.167742, 0.171377,
		0.133577, 0.971771, 0.194471,
		42.570095, 26.456450, 25.267408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.576363, 25.812466, 25.946869>,  <42.476589, 25.776211, 25.131279>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.576363, 25.812466, 25.946869> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.534992, 26.191872, 25.827122>,  <42.510170, 26.419516, 25.755274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.534992, 26.191872, 25.827122>,  <42.576363, 25.812466, 25.946869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.534992, 26.191872, 25.827122> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094859, 0.290203, 0.952252,
		0.990103, 0.126889, 0.059960,
		-0.103430, 0.948516, -0.299367,
		42.503963, 26.476427, 25.737312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.069000, 26.217453, 26.362782>,  <42.576363, 25.812466, 25.946869>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.069000, 26.217453, 26.362782> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.794170, 26.473755, 26.225748>,  <42.629272, 26.627537, 26.143528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.794170, 26.473755, 26.225748>,  <43.069000, 26.217453, 26.362782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.794170, 26.473755, 26.225748> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057148, 0.422376, 0.904617,
		0.724338, 0.641116, -0.253585,
		-0.687072, 0.640757, -0.342582,
		42.588047, 26.665981, 26.122974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.261536, 26.871319, 26.614136>,  <43.069000, 26.217453, 26.362782>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.261536, 26.871319, 26.614136> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.866714, 26.884600, 26.551378>,  <42.629822, 26.892569, 26.513723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.866714, 26.884600, 26.551378>,  <43.261536, 26.871319, 26.614136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.866714, 26.884600, 26.551378> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113049, 0.549828, 0.827592,
		0.113743, 0.834618, -0.538958,
		-0.987058, 0.033204, -0.156892,
		42.570599, 26.894562, 26.504311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.085178, 27.580196, 26.794895>,  <43.261536, 26.871319, 26.614136>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.085178, 27.580196, 26.794895> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.722427, 27.415024, 26.761269>,  <42.504776, 27.315920, 26.741093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.722427, 27.415024, 26.761269>,  <43.085178, 27.580196, 26.794895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.722427, 27.415024, 26.761269> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307585, 0.512267, 0.801857,
		-0.288046, 0.753041, -0.591573,
		-0.906874, -0.412931, -0.084068,
		42.450367, 27.291145, 26.736048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.583950, 28.111542, 26.733391>,  <43.085178, 27.580196, 26.794895>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.583950, 28.111542, 26.733391> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.391323, 27.795919, 26.885962>,  <42.275749, 27.606546, 26.977503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.391323, 27.795919, 26.885962>,  <42.583950, 28.111542, 26.733391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.391323, 27.795919, 26.885962> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427447, 0.591399, 0.683766,
		-0.765105, 0.166238, -0.622076,
		-0.481563, -0.789058, 0.381425,
		42.246853, 27.559202, 27.000389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.916885, 28.371395, 26.881355>,  <42.583950, 28.111542, 26.733391>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.916885, 28.371395, 26.881355> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.916145, 28.023783, 27.079256>,  <41.915703, 27.815216, 27.197996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.916145, 28.023783, 27.079256>,  <41.916885, 28.371395, 26.881355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.916145, 28.023783, 27.079256> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380248, 0.458202, 0.803407,
		-0.924883, -0.186644, -0.331294,
		-0.001849, -0.869031, 0.494754,
		41.915592, 27.763073, 27.227682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.238476, 28.304354, 27.009047>,  <41.916885, 28.371395, 26.881355>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.238476, 28.304354, 27.009047> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.395458, 28.074064, 27.295967>,  <41.489647, 27.935890, 27.468119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.395458, 28.074064, 27.295967>,  <41.238476, 28.304354, 27.009047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.395458, 28.074064, 27.295967> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533280, 0.492977, 0.687449,
		-0.749392, -0.652317, -0.113548,
		0.392458, -0.575722, 0.717301,
		41.513195, 27.901348, 27.511158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.674805, 27.984369, 27.355061>,  <41.238476, 28.304354, 27.009047>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.674805, 27.984369, 27.355061> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.995880, 28.019650, 27.590994>,  <41.188526, 28.040817, 27.732553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.995880, 28.019650, 27.590994>,  <40.674805, 27.984369, 27.355061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.995880, 28.019650, 27.590994> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529776, 0.559659, 0.637275,
		-0.273899, -0.824016, 0.495960,
		0.802693, 0.088199, 0.589835,
		41.236687, 28.046108, 27.767944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.993458, 27.598543, 27.520611>,  <40.674805, 27.984369, 27.355061>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.993458, 27.598543, 27.520611> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.600220, 27.548559, 27.467087>,  <39.364277, 27.518568, 27.434973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.600220, 27.548559, 27.467087>,  <39.993458, 27.598543, 27.520611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.600220, 27.548559, 27.467087> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178053, -0.482403, -0.857662,
		0.042624, -0.866990, 0.496499,
		-0.983097, -0.124960, -0.133808,
		39.305290, 27.511070, 27.426945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.977390, 26.899923, 27.410538>,  <39.993458, 27.598543, 27.520611>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.977390, 26.899923, 27.410538> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.652981, 27.088905, 27.272533>,  <39.458336, 27.202293, 27.189730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.652981, 27.088905, 27.272533>,  <39.977390, 26.899923, 27.410538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.652981, 27.088905, 27.272533> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165383, -0.380531, -0.909860,
		-0.561155, -0.794973, 0.230482,
		-0.811020, 0.472455, -0.345012,
		39.409676, 27.230642, 27.169029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.582905, 26.413681, 26.923777>,  <39.977390, 26.899923, 27.410538>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.582905, 26.413681, 26.923777> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.414825, 26.759130, 26.812361>,  <39.313976, 26.966400, 26.745510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.414825, 26.759130, 26.812361>,  <39.582905, 26.413681, 26.923777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.414825, 26.759130, 26.812361> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050426, -0.284258, -0.957421,
		-0.906030, -0.416352, 0.075895,
		-0.420198, 0.863626, -0.278541,
		39.288765, 27.018219, 26.728798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.045853, 26.218664, 26.507500>,  <39.582905, 26.413681, 26.923777>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.045853, 26.218664, 26.507500> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.135609, 26.596855, 26.413082>,  <39.189465, 26.823771, 26.356432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.135609, 26.596855, 26.413082>,  <39.045853, 26.218664, 26.507500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.135609, 26.596855, 26.413082> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016748, -0.245927, -0.969144,
		-0.974354, 0.213517, -0.071020,
		0.224395, 0.945479, -0.236044,
		39.202927, 26.880499, 26.342270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.666771, 26.335171, 25.963718>,  <39.045853, 26.218664, 26.507500>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.666771, 26.335171, 25.963718> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.944176, 26.620644, 25.924335>,  <39.110619, 26.791927, 25.900705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.944176, 26.620644, 25.924335>,  <38.666771, 26.335171, 25.963718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.944176, 26.620644, 25.924335> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043571, -0.177964, -0.983072,
		-0.719125, 0.677484, -0.154516,
		0.693514, 0.713684, -0.098459,
		39.152229, 26.834749, 25.894798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.548813, 26.501684, 25.307125>,  <38.666771, 26.335171, 25.963718>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.548813, 26.501684, 25.307125> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.906330, 26.666927, 25.376959>,  <39.120838, 26.766073, 25.418859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.906330, 26.666927, 25.376959>,  <38.548813, 26.501684, 25.307125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.906330, 26.666927, 25.376959> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207089, -0.034868, -0.977701,
		-0.397809, 0.910014, -0.116715,
		0.893791, 0.413109, 0.174583,
		39.174469, 26.790859, 25.429333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.781448, 27.148500, 24.866800>,  <38.548813, 26.501684, 25.307125>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.781448, 27.148500, 24.866800> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.098099, 26.936003, 24.987539>,  <39.288090, 26.808504, 25.059982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.098099, 26.936003, 24.987539>,  <38.781448, 27.148500, 24.866800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.098099, 26.936003, 24.987539> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261208, -0.152354, -0.953184,
		0.552362, 0.833407, 0.018159,
		0.791623, -0.531245, 0.301846,
		39.335587, 26.776628, 25.078093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.309917, 27.541321, 24.640034>,  <38.781448, 27.148500, 24.866800>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.309917, 27.541321, 24.640034> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.941002, 27.497469, 24.491785>,  <37.719654, 27.471159, 24.402836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.941002, 27.497469, 24.491785>,  <38.309917, 27.541321, 24.640034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.941002, 27.497469, 24.491785> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385745, 0.201276, 0.900383,
		-0.024109, 0.973381, -0.227923,
		-0.922290, -0.109628, -0.370624,
		37.664314, 27.464581, 24.380598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.840977, 28.104689, 24.839870>,  <38.309917, 27.541321, 24.640034>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.840977, 28.104689, 24.839870> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.567860, 27.834166, 24.729305>,  <37.403992, 27.671852, 24.662966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.567860, 27.834166, 24.729305>,  <37.840977, 28.104689, 24.839870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.567860, 27.834166, 24.729305> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523096, 0.188396, 0.831190,
		-0.510067, 0.712118, -0.482410,
		-0.682790, -0.676310, -0.276412,
		37.363022, 27.631273, 24.646381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.193882, 28.432922, 24.953426>,  <37.840977, 28.104689, 24.839870>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.193882, 28.432922, 24.953426> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.103111, 28.043428, 24.946033>,  <37.048649, 27.809732, 24.941597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.103111, 28.043428, 24.946033>,  <37.193882, 28.432922, 24.953426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.103111, 28.043428, 24.946033> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426625, 0.082329, 0.900674,
		-0.875497, 0.212272, -0.434103,
		-0.226927, -0.973736, -0.018482,
		37.035034, 27.751308, 24.940489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.596985, 28.422791, 25.198141>,  <37.193882, 28.432922, 24.953426>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.596985, 28.422791, 25.198141> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.751205, 28.064529, 25.286825>,  <36.843739, 27.849573, 25.340036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.751205, 28.064529, 25.286825>,  <36.596985, 28.422791, 25.198141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.751205, 28.064529, 25.286825> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473447, 0.014208, 0.880708,
		-0.791960, -0.444523, -0.418567,
		0.385548, -0.895655, 0.221710,
		36.866871, 27.795834, 25.353338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.001373, 27.997486, 25.457962>,  <36.596985, 28.422791, 25.198141>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.001373, 27.997486, 25.457962> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.328522, 27.802053, 25.579535>,  <36.524811, 27.684793, 25.652477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.328522, 27.802053, 25.579535>,  <36.001373, 27.997486, 25.457962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.328522, 27.802053, 25.579535> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343932, 0.008357, 0.938957,
		-0.461296, -0.872479, -0.161203,
		0.817873, -0.488581, 0.303929,
		36.573883, 27.655479, 25.670713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.779572, 27.422117, 25.840624>,  <36.001373, 27.997486, 25.457962>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.779572, 27.422117, 25.840624> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.159882, 27.496689, 25.939632>,  <36.388069, 27.541431, 25.999037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.159882, 27.496689, 25.939632>,  <35.779572, 27.422117, 25.840624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.159882, 27.496689, 25.939632> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253571, 0.008953, 0.967275,
		0.178116, -0.982427, 0.055786,
		0.950777, 0.186433, 0.247520,
		36.445114, 27.552618, 26.013889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.812054, 26.997271, 26.442694>,  <35.779572, 27.422117, 25.840624>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.812054, 26.997271, 26.442694> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.114632, 27.258776, 26.434772>,  <36.296177, 27.415678, 26.430019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.114632, 27.258776, 26.434772>,  <35.812054, 26.997271, 26.442694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.114632, 27.258776, 26.434772> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136467, 0.187365, 0.972765,
		0.639666, -0.733138, 0.230948,
		0.756442, 0.653761, -0.019801,
		36.341564, 27.454905, 26.428833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<42.417442, 29.966825, 22.352114> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.583633, 29.785215, 22.667389>,  <42.683350, 29.676249, 22.856554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.583633, 29.785215, 22.667389>,  <42.417442, 29.966825, 22.352114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.583633, 29.785215, 22.667389> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632584, 0.478430, 0.609050,
		-0.653618, -0.751640, -0.088433,
		0.415477, -0.454027, 0.788186,
		42.708275, 29.649008, 22.903845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.866264, 29.691797, 22.744328>,  <42.417442, 29.966825, 22.352114>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.866264, 29.691797, 22.744328> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.184242, 29.801306, 22.960886>,  <42.375031, 29.867010, 23.090822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.184242, 29.801306, 22.960886>,  <41.866264, 29.691797, 22.744328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.184242, 29.801306, 22.960886> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588848, 0.562955, 0.579948,
		-0.146010, -0.779828, 0.608727,
		0.794946, 0.273770, 0.541398,
		42.422726, 29.883436, 23.123304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.577721, 29.626102, 23.395800>,  <41.866264, 29.691797, 22.744328>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.577721, 29.626102, 23.395800> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.916164, 29.834295, 23.441759>,  <42.119228, 29.959211, 23.469336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.916164, 29.834295, 23.441759>,  <41.577721, 29.626102, 23.395800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.916164, 29.834295, 23.441759> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476102, 0.641079, 0.601951,
		0.239645, -0.564018, 0.790224,
		0.846107, 0.520482, 0.114899,
		42.169998, 29.990440, 23.476229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.816448, 29.642950, 24.153685>,  <41.577721, 29.626102, 23.395800>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.816448, 29.642950, 24.153685> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.007847, 29.962048, 24.006910>,  <42.122688, 30.153507, 23.918846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.007847, 29.962048, 24.006910>,  <41.816448, 29.642950, 24.153685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.007847, 29.962048, 24.006910> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492221, 0.589737, 0.640257,
		0.727156, -0.125750, 0.674856,
		0.478500, 0.797745, -0.366934,
		42.151398, 30.201370, 23.896830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.071220, 29.922991, 24.704643>,  <41.816448, 29.642950, 24.153685>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.071220, 29.922991, 24.704643> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.016510, 30.209759, 24.431200>,  <41.983685, 30.381819, 24.267134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.016510, 30.209759, 24.431200>,  <42.071220, 29.922991, 24.704643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.016510, 30.209759, 24.431200> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449400, 0.570084, 0.687781,
		0.882797, 0.401288, 0.244206,
		-0.136781, 0.716918, -0.683608,
		41.975475, 30.424833, 24.226118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.563232, 30.443888, 24.890535>,  <42.071220, 29.922991, 24.704643>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.563232, 30.443888, 24.890535> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.315060, 30.640497, 24.646088>,  <42.166157, 30.758463, 24.499418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.315060, 30.640497, 24.646088>,  <42.563232, 30.443888, 24.890535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.315060, 30.640497, 24.646088> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320458, 0.552322, 0.769576,
		0.715800, 0.673308, -0.185166,
		-0.620433, 0.491524, -0.611119,
		42.128929, 30.787954, 24.462751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.723995, 31.072577, 25.020174>,  <42.563232, 30.443888, 24.890535>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.723995, 31.072577, 25.020174> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.364597, 31.101202, 24.846931>,  <42.148956, 31.118378, 24.742985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.364597, 31.101202, 24.846931>,  <42.723995, 31.072577, 25.020174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.364597, 31.101202, 24.846931> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261454, 0.705302, 0.658932,
		0.352626, 0.705286, -0.615001,
		-0.898497, 0.071562, -0.433108,
		42.095047, 31.122671, 24.716999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.480930, 31.886944, 24.872400>,  <42.723995, 31.072577, 25.020174>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.480930, 31.886944, 24.872400> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.171669, 31.635069, 24.902674>,  <41.986111, 31.483944, 24.920837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.171669, 31.635069, 24.902674>,  <42.480930, 31.886944, 24.872400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.171669, 31.635069, 24.902674> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466586, 0.645560, 0.604607,
		-0.429573, 0.432140, -0.792920,
		-0.773152, -0.629688, 0.075685,
		41.939724, 31.446163, 24.925379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.966148, 32.313156, 24.861610>,  <42.480930, 31.886944, 24.872400>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.966148, 32.313156, 24.861610> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.760235, 31.992157, 24.982267>,  <41.636684, 31.799557, 25.054661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.760235, 31.992157, 24.982267>,  <41.966148, 32.313156, 24.861610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.760235, 31.992157, 24.982267> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719071, 0.595755, 0.357789,
		-0.466829, -0.032715, -0.883742,
		-0.514789, -0.802500, 0.301640,
		41.605797, 31.751408, 25.072760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.313812, 32.429451, 24.628864>,  <41.966148, 32.313156, 24.861610>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.313812, 32.429451, 24.628864> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.289444, 32.154324, 24.918194>,  <41.274822, 31.989248, 25.091791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.289444, 32.154324, 24.918194>,  <41.313812, 32.429451, 24.628864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.289444, 32.154324, 24.918194> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781456, 0.483709, 0.394146,
		-0.620979, -0.541233, -0.566968,
		-0.060922, -0.687817, 0.723323,
		41.271168, 31.947979, 25.135191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.689663, 32.349049, 24.679358>,  <41.313812, 32.429451, 24.628864>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.689663, 32.349049, 24.679358> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.818020, 32.236538, 25.041111>,  <40.895035, 32.169029, 25.258163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.818020, 32.236538, 25.041111>,  <40.689663, 32.349049, 24.679358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.818020, 32.236538, 25.041111> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644247, 0.635109, 0.426125,
		-0.694243, -0.719386, 0.022588,
		0.320894, -0.281281, 0.904382,
		40.914288, 32.152153, 25.312426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.112579, 32.307442, 25.143723>,  <40.689663, 32.349049, 24.679358>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.112579, 32.307442, 25.143723> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.409061, 32.334076, 25.410912>,  <40.586948, 32.350056, 25.571224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.409061, 32.334076, 25.410912>,  <40.112579, 32.307442, 25.143723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.409061, 32.334076, 25.410912> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584699, 0.552869, 0.593686,
		-0.329768, -0.830603, 0.448722,
		0.741202, 0.066588, 0.667971,
		40.631424, 32.354053, 25.611303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.484959, 31.898046, 24.879927>,  <40.112579, 32.307442, 25.143723>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.484959, 31.898046, 24.879927> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.181522, 32.110069, 24.728361>,  <38.999458, 32.237282, 24.637423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.181522, 32.110069, 24.728361>,  <39.484959, 31.898046, 24.879927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.181522, 32.110069, 24.728361> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005973, -0.575864, -0.817524,
		-0.651538, -0.622430, 0.433680,
		-0.758592, 0.530058, -0.378915,
		38.953945, 32.269085, 24.614687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.138371, 31.379892, 24.677570>,  <39.484959, 31.898046, 24.879927>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.138371, 31.379892, 24.677570> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.988300, 31.684694, 24.466444>,  <38.898258, 31.867577, 24.339767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.988300, 31.684694, 24.466444>,  <39.138371, 31.379892, 24.677570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.988300, 31.684694, 24.466444> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157374, -0.613505, -0.773850,
		-0.913498, -0.207264, 0.350092,
		-0.375174, 0.762006, -0.527818,
		38.875748, 31.913296, 24.308098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.574638, 31.150986, 24.384069>,  <39.138371, 31.379892, 24.677570>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.574638, 31.150986, 24.384069> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.699345, 31.461666, 24.165150>,  <38.774166, 31.648075, 24.033798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.699345, 31.461666, 24.165150>,  <38.574638, 31.150986, 24.384069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.699345, 31.461666, 24.165150> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182744, -0.516241, -0.836720,
		-0.932421, 0.360875, -0.019007,
		0.311763, 0.776702, -0.547301,
		38.792873, 31.694677, 24.000959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.143539, 31.220474, 23.804819>,  <38.574638, 31.150986, 24.384069>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.143539, 31.220474, 23.804819> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.483692, 31.410543, 23.714432>,  <38.687782, 31.524584, 23.660198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.483692, 31.410543, 23.714432>,  <38.143539, 31.220474, 23.804819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.483692, 31.410543, 23.714432> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031657, -0.474892, -0.879475,
		-0.525212, 0.740736, -0.418882,
		0.850382, 0.475171, -0.225970,
		38.738808, 31.553095, 23.646641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.013660, 31.499731, 23.157019>,  <38.143539, 31.220474, 23.804819>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.013660, 31.499731, 23.157019> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.409416, 31.473431, 23.208832>,  <38.646870, 31.457651, 23.239920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.409416, 31.473431, 23.208832>,  <38.013660, 31.499731, 23.157019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.409416, 31.473431, 23.208832> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097083, -0.364029, -0.926314,
		0.108060, 0.929064, -0.353785,
		0.989393, -0.065750, 0.129534,
		38.706234, 31.453705, 23.247692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.341537, 31.709482, 22.409388>,  <38.013660, 31.499731, 23.157019>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.341537, 31.709482, 22.409388> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.614098, 31.512461, 22.625935>,  <38.777634, 31.394247, 22.755863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.614098, 31.512461, 22.625935>,  <38.341537, 31.709482, 22.409388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.614098, 31.512461, 22.625935> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135600, -0.641903, -0.754701,
		0.719236, 0.587666, -0.370605,
		0.681405, -0.492554, 0.541367,
		38.818520, 31.364695, 22.788345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.880390, 31.564966, 21.933273>,  <38.341537, 31.709482, 22.409388>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.880390, 31.564966, 21.933273> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.926426, 31.283161, 22.213392>,  <38.954048, 31.114079, 22.381464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.926426, 31.283161, 22.213392>,  <38.880390, 31.564966, 21.933273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.926426, 31.283161, 22.213392> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012214, -0.703927, -0.710167,
		0.993281, 0.090283, -0.072407,
		0.115085, -0.704511, 0.700300,
		38.960953, 31.071808, 22.423483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.535877, 31.216427, 21.808718>,  <38.880390, 31.564966, 21.933273>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.535877, 31.216427, 21.808718> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.321335, 30.959333, 22.027521>,  <39.192612, 30.805077, 22.158802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.321335, 30.959333, 22.027521>,  <39.535877, 31.216427, 21.808718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.321335, 30.959333, 22.027521> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232028, -0.735435, -0.636630,
		0.811473, -0.214538, 0.543585,
		-0.536353, -0.642736, 0.547007,
		39.160427, 30.766512, 22.191624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.008091, 30.610447, 21.746462>,  <39.535877, 31.216427, 21.808718>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.008091, 30.610447, 21.746462> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.652866, 30.480986, 21.877062>,  <39.439732, 30.403309, 21.955421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.652866, 30.480986, 21.877062>,  <40.008091, 30.610447, 21.746462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.652866, 30.480986, 21.877062> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087679, -0.816400, -0.570792,
		0.451294, -0.478269, 0.753388,
		-0.888057, -0.323651, 0.326502,
		39.386448, 30.383890, 21.975012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.100269, 29.912979, 21.972069>,  <40.008091, 30.610447, 21.746462>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.100269, 29.912979, 21.972069> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.704800, 29.915777, 21.912094>,  <39.467518, 29.917456, 21.876110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.704800, 29.915777, 21.912094>,  <40.100269, 29.912979, 21.972069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.704800, 29.915777, 21.912094> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079994, -0.820685, -0.565754,
		-0.127008, -0.571339, 0.810827,
		-0.988671, 0.006994, -0.149937,
		39.408199, 29.917875, 21.867113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.876080, 29.194063, 21.979355>,  <40.100269, 29.912979, 21.972069>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.876080, 29.194063, 21.979355> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.581337, 29.384655, 21.787516>,  <39.404491, 29.499010, 21.672413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.581337, 29.384655, 21.787516>,  <39.876080, 29.194063, 21.979355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.581337, 29.384655, 21.787516> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104518, -0.781170, -0.615508,
		-0.667922, -0.403414, 0.625410,
		-0.736856, 0.476478, -0.479596,
		39.360279, 29.527599, 21.643637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.378532, 28.713974, 21.971746>,  <39.876080, 29.194063, 21.979355>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.378532, 28.713974, 21.971746> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.306942, 28.956600, 21.661896>,  <39.263988, 29.102177, 21.475986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.306942, 28.956600, 21.661896>,  <39.378532, 28.713974, 21.971746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.306942, 28.956600, 21.661896> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059450, -0.792566, -0.606881,
		-0.982056, -0.062566, 0.177911,
		-0.178976, 0.606568, -0.774625,
		39.253250, 29.138571, 21.429508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.744881, 28.496756, 21.540823>,  <39.378532, 28.713974, 21.971746>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.744881, 28.496756, 21.540823> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.986897, 28.704029, 21.299026>,  <39.132107, 28.828394, 21.153950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.986897, 28.704029, 21.299026>,  <38.744881, 28.496756, 21.540823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.986897, 28.704029, 21.299026> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028175, -0.744814, -0.666677,
		-0.795695, 0.420399, -0.436044,
		0.605042, 0.518185, -0.604490,
		39.168407, 28.859486, 21.117680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.913593, 28.492914, 21.612514>,  <38.744881, 28.496756, 21.540823>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.913593, 28.492914, 21.612514> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.858379, 28.118809, 21.482141>,  <37.825253, 27.894346, 21.403917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.858379, 28.118809, 21.482141>,  <37.913593, 28.492914, 21.612514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.858379, 28.118809, 21.482141> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304565, -0.273054, 0.912514,
		-0.942437, 0.225224, -0.247158,
		-0.138033, -0.935262, -0.325931,
		37.816971, 27.838230, 21.384361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.317875, 28.310389, 21.918324>,  <37.913593, 28.492914, 21.612514>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.317875, 28.310389, 21.918324> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.501751, 27.970612, 21.814682>,  <37.612076, 27.766747, 21.752497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.501751, 27.970612, 21.814682>,  <37.317875, 28.310389, 21.918324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.501751, 27.970612, 21.814682> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170570, -0.370776, 0.912925,
		-0.871544, -0.375469, -0.315331,
		0.459692, -0.849440, -0.259104,
		37.639660, 27.715780, 21.736950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.901051, 27.782703, 22.093561>,  <37.317875, 28.310389, 21.918324>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.901051, 27.782703, 22.093561> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.278610, 27.650640, 22.096556>,  <37.505146, 27.571402, 22.098352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.278610, 27.650640, 22.096556>,  <36.901051, 27.782703, 22.093561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.278610, 27.650640, 22.096556> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138217, -0.374357, 0.916926,
		-0.299926, -0.866518, -0.398987,
		0.943897, -0.330157, 0.007488,
		37.561779, 27.551592, 22.098803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.863354, 27.167257, 22.388048>,  <36.901051, 27.782703, 22.093561>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.863354, 27.167257, 22.388048> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.250504, 27.261074, 22.424307>,  <37.482792, 27.317364, 22.446062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.250504, 27.261074, 22.424307>,  <36.863354, 27.167257, 22.388048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.250504, 27.261074, 22.424307> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005768, -0.381117, 0.924509,
		0.251386, -0.894281, -0.370224,
		0.967870, 0.234544, 0.090649,
		37.540863, 27.331438, 22.451502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.188309, 26.618797, 22.700245>,  <36.863354, 27.167257, 22.388048>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.188309, 26.618797, 22.700245> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.441330, 26.922728, 22.760298>,  <37.593143, 27.105085, 22.796329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.441330, 26.922728, 22.760298>,  <37.188309, 26.618797, 22.700245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.441330, 26.922728, 22.760298> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184850, -0.336343, 0.923420,
		0.752133, -0.556362, -0.353210,
		0.632555, 0.759826, 0.150131,
		37.631096, 27.150675, 22.805338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.672070, 26.442513, 23.231695>,  <37.188309, 26.618797, 22.700245>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.672070, 26.442513, 23.231695> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.694344, 26.841761, 23.221460>,  <37.707710, 27.081310, 23.215319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.694344, 26.841761, 23.221460>,  <37.672070, 26.442513, 23.231695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.694344, 26.841761, 23.221460> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171485, 0.034807, 0.984572,
		0.983611, -0.050442, 0.173101,
		0.055689, 0.998120, -0.025587,
		37.711052, 27.141197, 23.213785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.243591, 26.602175, 23.715908>,  <37.672070, 26.442513, 23.231695>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.243591, 26.602175, 23.715908> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.002029, 26.915743, 23.658274>,  <37.857090, 27.103884, 23.623693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.002029, 26.915743, 23.658274>,  <38.243591, 26.602175, 23.715908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.002029, 26.915743, 23.658274> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160443, 0.057511, 0.985368,
		0.780738, 0.618190, 0.091044,
		-0.603909, 0.783922, -0.144085,
		37.820858, 27.150919, 23.615047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415646, 26.912706, 24.209229>,  <38.243591, 26.602175, 23.715908>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.415646, 26.912706, 24.209229> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.085217, 27.109497, 24.099279>,  <37.886959, 27.227571, 24.033310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.085217, 27.109497, 24.099279>,  <38.415646, 26.912706, 24.209229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.085217, 27.109497, 24.099279> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273340, 0.076755, 0.958850,
		0.492830, 0.867218, 0.071071,
		-0.826077, 0.491977, -0.274872,
		37.837395, 27.257090, 24.016817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.156055, 27.186825, 24.235081>,  <38.415646, 26.912706, 24.209229>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.156055, 27.186825, 24.235081> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.368828, 26.921041, 24.445049>,  <39.496490, 26.761572, 24.571032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.368828, 26.921041, 24.445049>,  <39.156055, 27.186825, 24.235081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.368828, 26.921041, 24.445049> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446510, -0.306623, -0.840601,
		0.719498, 0.681526, 0.133585,
		0.531932, -0.664458, 0.524923,
		39.528408, 26.721704, 24.602526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.949745, 27.216606, 23.998631>,  <39.156055, 27.186825, 24.235081>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.949745, 27.216606, 23.998631> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.952610, 26.860659, 24.181097>,  <39.954327, 26.647091, 24.290577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.952610, 26.860659, 24.181097>,  <39.949745, 27.216606, 23.998631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.952610, 26.860659, 24.181097> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554404, -0.376115, -0.742411,
		0.832217, 0.258215, 0.490653,
		0.007160, -0.889867, 0.456164,
		39.954758, 26.593699, 24.317945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.685230, 26.972971, 24.157337>,  <39.949745, 27.216606, 23.998631>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.685230, 26.972971, 24.157337> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.462627, 26.640959, 24.172014>,  <40.329063, 26.441751, 24.180820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.462627, 26.640959, 24.172014>,  <40.685230, 26.972971, 24.157337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.462627, 26.640959, 24.172014> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685071, -0.483409, -0.544971,
		0.470080, -0.278144, 0.837652,
		-0.556509, -0.830031, 0.036692,
		40.295673, 26.391949, 24.183022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.068245, 26.384439, 24.477196>,  <40.685230, 26.972971, 24.157337>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.068245, 26.384439, 24.477196> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.788788, 26.226187, 24.238745>,  <40.621113, 26.131235, 24.095675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.788788, 26.226187, 24.238745>,  <41.068245, 26.384439, 24.477196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.788788, 26.226187, 24.238745> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708982, -0.494783, -0.502529,
		-0.096137, -0.773733, 0.626174,
		-0.698644, -0.395634, -0.596130,
		40.579193, 26.107496, 24.059906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.315220, 25.759634, 24.470158>,  <41.068245, 26.384439, 24.477196>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.315220, 25.759634, 24.470158> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.059605, 25.765135, 24.162537>,  <40.906235, 25.768435, 23.977964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.059605, 25.765135, 24.162537>,  <41.315220, 25.759634, 24.470158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.059605, 25.765135, 24.162537> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585373, -0.639903, -0.497857,
		-0.498964, -0.768332, 0.400874,
		-0.639040, 0.013752, -0.769050,
		40.867893, 25.769260, 23.931822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.427357, 25.101177, 24.124996>,  <41.315220, 25.759634, 24.470158>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.427357, 25.101177, 24.124996> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.221104, 25.289282, 23.838507>,  <41.097351, 25.402143, 23.666613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.221104, 25.289282, 23.838507>,  <41.427357, 25.101177, 24.124996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.221104, 25.289282, 23.838507> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554519, -0.454085, -0.697364,
		-0.653168, -0.756744, -0.026626,
		-0.515636, 0.470260, -0.716223,
		41.066414, 25.430359, 23.623640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.075859, 24.584393, 23.717472>,  <41.427357, 25.101177, 24.124996>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.075859, 24.584393, 23.717472> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.107735, 24.920092, 23.502321>,  <41.126862, 25.121511, 23.373232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.107735, 24.920092, 23.502321>,  <41.075859, 24.584393, 23.717472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.107735, 24.920092, 23.502321> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554949, -0.485592, -0.675450,
		-0.828059, -0.244666, -0.504438,
		0.079691, 0.839249, -0.537875,
		41.131641, 25.171867, 23.340958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.020050, 24.357391, 22.924137>,  <41.075859, 24.584393, 23.717472>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.020050, 24.357391, 22.924137> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.223042, 24.700115, 22.960678>,  <41.344837, 24.905748, 22.982603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.223042, 24.700115, 22.960678>,  <41.020050, 24.357391, 22.924137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.223042, 24.700115, 22.960678> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695962, -0.345069, -0.629734,
		-0.508037, 0.383156, -0.771421,
		0.507480, 0.856807, 0.091354,
		41.375286, 24.957157, 22.988085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.281651, 24.458025, 22.212549>,  <41.020050, 24.357391, 22.924137>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.281651, 24.458025, 22.212549> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.479462, 24.677158, 22.482458>,  <41.598148, 24.808640, 22.644403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.479462, 24.677158, 22.482458>,  <41.281651, 24.458025, 22.212549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.479462, 24.677158, 22.482458> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867692, -0.266050, -0.419915,
		-0.050521, 0.793154, -0.606922,
		0.494529, 0.547835, 0.674772,
		41.627819, 24.841509, 22.684891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.219872, 33.723442, 34.864231> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.607769, 33.816349, 34.894310>,  <36.840508, 33.872093, 34.912357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.607769, 33.816349, 34.894310>,  <36.219872, 33.723442, 34.864231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.607769, 33.816349, 34.894310> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145457, -0.302302, -0.942049,
		-0.196078, 0.924480, -0.326940,
		0.969740, 0.232271, 0.075198,
		36.898689, 33.886032, 34.916870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.391163, 33.946247, 34.235638>,  <36.219872, 33.723442, 34.864231>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.391163, 33.946247, 34.235638> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.744106, 33.846672, 34.395374>,  <36.955872, 33.786926, 34.491219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.744106, 33.846672, 34.395374>,  <36.391163, 33.946247, 34.235638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.744106, 33.846672, 34.395374> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295071, -0.368385, -0.881604,
		0.366578, 0.895724, -0.251592,
		0.882357, -0.248939, 0.399344,
		37.008812, 33.771992, 34.515179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.712437, 34.057831, 33.661098>,  <36.391163, 33.946247, 34.235638>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.712437, 34.057831, 33.661098> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.977844, 33.865349, 33.890247>,  <37.137089, 33.749859, 34.027737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.977844, 33.865349, 33.890247>,  <36.712437, 34.057831, 33.661098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.977844, 33.865349, 33.890247> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250454, -0.578672, -0.776152,
		0.704992, 0.658472, -0.263443,
		0.663521, -0.481200, 0.572876,
		37.176899, 33.720989, 34.062111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.414215, 34.155140, 33.422985>,  <36.712437, 34.057831, 33.661098>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.414215, 34.155140, 33.422985> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.385391, 33.809063, 33.621483>,  <37.368099, 33.601418, 33.740582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.385391, 33.809063, 33.621483>,  <37.414215, 34.155140, 33.422985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.385391, 33.809063, 33.621483> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262836, -0.496419, -0.827336,
		0.962146, 0.070816, 0.263173,
		-0.072055, -0.865190, 0.496240,
		37.363773, 33.549507, 33.770355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.735569, 33.702106, 32.937946>,  <37.414215, 34.155140, 33.422985>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.735569, 33.702106, 32.937946> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.596104, 33.433422, 33.199398>,  <37.512424, 33.272209, 33.356270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.596104, 33.433422, 33.199398>,  <37.735569, 33.702106, 32.937946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.596104, 33.433422, 33.199398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144477, -0.727579, -0.670638,
		0.926047, -0.139389, 0.350725,
		-0.348660, -0.671714, 0.653634,
		37.491505, 33.231907, 33.395489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.149990, 33.136978, 33.001530>,  <37.735569, 33.702106, 32.937946>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.149990, 33.136978, 33.001530> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.774178, 33.024879, 33.080261>,  <37.548691, 32.957623, 33.127499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.774178, 33.024879, 33.080261>,  <38.149990, 33.136978, 33.001530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.774178, 33.024879, 33.080261> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092335, -0.760769, -0.642422,
		0.329775, -0.585402, 0.740644,
		-0.939533, -0.280242, 0.196829,
		37.492317, 32.940807, 33.139309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.243649, 32.464756, 33.120667>,  <38.149990, 33.136978, 33.001530>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.243649, 32.464756, 33.120667> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.856586, 32.515739, 33.033577>,  <37.624352, 32.546329, 32.981323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.856586, 32.515739, 33.033577>,  <38.243649, 32.464756, 33.120667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.856586, 32.515739, 33.033577> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052218, -0.743134, -0.667102,
		-0.246829, -0.656892, 0.712439,
		-0.967651, 0.127458, -0.217728,
		37.566292, 32.553978, 32.968258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.885750, 31.903233, 33.373352>,  <38.243649, 32.464756, 33.120667>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.885750, 31.903233, 33.373352> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.661018, 32.081070, 33.094299>,  <37.526180, 32.187771, 32.926868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.661018, 32.081070, 33.094299>,  <37.885750, 31.903233, 33.373352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.661018, 32.081070, 33.094299> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043008, -0.857865, -0.512072,
		-0.826134, -0.257693, 0.501095,
		-0.561830, 0.444591, -0.697629,
		37.492470, 32.214447, 32.885010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.307095, 31.552158, 33.358101>,  <37.885750, 31.903233, 33.373352>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.307095, 31.552158, 33.358101> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.315697, 31.744001, 33.007214>,  <37.320858, 31.859108, 32.796680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.315697, 31.744001, 33.007214>,  <37.307095, 31.552158, 33.358101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.315697, 31.744001, 33.007214> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113537, -0.870574, -0.478759,
		-0.993301, 0.109895, 0.035727,
		0.021510, 0.479609, -0.877219,
		37.322151, 31.887884, 32.744049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.777023, 31.290106, 32.908955>,  <37.307095, 31.552158, 33.358101>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.777023, 31.290106, 32.908955> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.055283, 31.432350, 32.659279>,  <37.222237, 31.517696, 32.509472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.055283, 31.432350, 32.659279>,  <36.777023, 31.290106, 32.908955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.055283, 31.432350, 32.659279> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067054, -0.832948, -0.549274,
		-0.715245, 0.423957, -0.555594,
		0.695649, 0.355610, -0.624190,
		37.263977, 31.539034, 32.472023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.658840, 30.883480, 32.305984>,  <36.777023, 31.290106, 32.908955>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.658840, 30.883480, 32.305984> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.993549, 31.088768, 32.229641>,  <37.194374, 31.211941, 32.183834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.993549, 31.088768, 32.229641>,  <36.658840, 30.883480, 32.305984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.993549, 31.088768, 32.229641> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289611, -0.710638, -0.641185,
		-0.464698, 0.481249, -0.743273,
		0.836768, 0.513218, -0.190857,
		37.244579, 31.242733, 32.172382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.679646, 30.891518, 31.581457>,  <36.658840, 30.883480, 32.305984>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.679646, 30.891518, 31.581457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.051468, 30.955179, 31.714485>,  <37.274559, 30.993376, 31.794302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.051468, 30.955179, 31.714485>,  <36.679646, 30.891518, 31.581457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.051468, 30.955179, 31.714485> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331694, -0.754823, -0.565881,
		0.160971, 0.636328, -0.754437,
		0.929552, 0.159152, 0.332571,
		37.330334, 31.002924, 31.814257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.459545, 31.501316, 31.082102>,  <36.679646, 30.891518, 31.581457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.459545, 31.501316, 31.082102> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.089756, 31.348818, 31.081757>,  <35.867882, 31.257318, 31.081551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.089756, 31.348818, 31.081757>,  <36.459545, 31.501316, 31.082102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.089756, 31.348818, 31.081757> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304782, 0.737700, 0.602417,
		-0.229033, 0.557181, -0.798181,
		-0.924474, -0.381245, -0.000862,
		35.812412, 31.234444, 31.081497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.888577, 32.058968, 30.900932>,  <36.459545, 31.501316, 31.082102>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.888577, 32.058968, 30.900932> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.736134, 31.771605, 31.133707>,  <35.644669, 31.599186, 31.273371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.736134, 31.771605, 31.133707>,  <35.888577, 32.058968, 30.900932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.736134, 31.771605, 31.133707> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400351, 0.695599, 0.596540,
		-0.833353, -0.005634, -0.552712,
		-0.381106, -0.718408, 0.581935,
		35.621803, 31.556082, 31.308289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.168159, 32.279263, 30.968065>,  <35.888577, 32.058968, 30.900932>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.168159, 32.279263, 30.968065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.263161, 32.013344, 31.251371>,  <35.320164, 31.853792, 31.421354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.263161, 32.013344, 31.251371>,  <35.168159, 32.279263, 30.968065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.263161, 32.013344, 31.251371> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378517, 0.608156, 0.697762,
		-0.894604, -0.433812, -0.107196,
		0.237505, -0.664796, 0.708263,
		35.334412, 31.813906, 31.463850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.556568, 32.174961, 31.315769>,  <35.168159, 32.279263, 30.968065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.556568, 32.174961, 31.315769> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.855778, 32.065899, 31.557800>,  <35.035305, 32.000462, 31.703020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.855778, 32.065899, 31.557800>,  <34.556568, 32.174961, 31.315769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.855778, 32.065899, 31.557800> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417676, 0.515117, 0.748466,
		-0.515761, -0.812597, 0.271437,
		0.748022, -0.272656, 0.605079,
		35.080185, 31.984102, 31.739325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.164261, 31.968391, 31.985331>,  <34.556568, 32.174961, 31.315769>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.164261, 31.968391, 31.985331> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.553711, 32.020008, 32.060585>,  <34.787380, 32.050980, 32.105736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.553711, 32.020008, 32.060585>,  <34.164261, 31.968391, 31.985331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.553711, 32.020008, 32.060585> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227281, 0.620009, 0.750954,
		-0.019741, -0.773910, 0.632988,
		0.973629, 0.129041, 0.188135,
		34.845798, 32.058720, 32.117027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.211987, 32.153072, 32.740059>,  <34.164261, 31.968391, 31.985331>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.211987, 32.153072, 32.740059> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.570190, 32.288200, 32.624168>,  <34.785114, 32.369278, 32.554634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.570190, 32.288200, 32.624168>,  <34.211987, 32.153072, 32.740059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.570190, 32.288200, 32.624168> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064703, 0.742925, 0.666240,
		0.440315, -0.577878, 0.687154,
		0.895509, 0.337816, -0.289730,
		34.838844, 32.389545, 32.537251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.567867, 32.270210, 33.339275>,  <34.211987, 32.153072, 32.740059>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.567867, 32.270210, 33.339275> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.759396, 32.492802, 33.067669>,  <34.874313, 32.626358, 32.904705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.759396, 32.492802, 33.067669>,  <34.567867, 32.270210, 33.339275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.759396, 32.492802, 33.067669> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096866, 0.802206, 0.589136,
		0.872552, -0.216317, 0.438017,
		0.478820, 0.556482, -0.679014,
		34.903042, 32.659744, 32.863964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.081837, 32.627499, 33.716274>,  <34.567867, 32.270210, 33.339275>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.081837, 32.627499, 33.716274> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.057434, 32.816135, 33.364391>,  <35.042793, 32.929317, 33.153263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.057434, 32.816135, 33.364391>,  <35.081837, 32.627499, 33.716274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.057434, 32.816135, 33.364391> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015590, 0.880790, 0.473251,
		0.998016, 0.042584, -0.046379,
		-0.061003, 0.471589, -0.879706,
		35.039135, 32.957611, 33.100479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.663654, 33.076546, 33.661942>,  <35.081837, 32.627499, 33.716274>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.663654, 33.076546, 33.661942> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.365829, 33.201580, 33.426003>,  <35.187134, 33.276600, 33.284439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.365829, 33.201580, 33.426003>,  <35.663654, 33.076546, 33.661942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.365829, 33.201580, 33.426003> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054651, 0.852087, 0.520538,
		0.665317, 0.419807, -0.617345,
		-0.744558, 0.312584, -0.589851,
		35.142464, 33.295357, 33.249046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.825230, 33.795715, 33.728748>,  <35.663654, 33.076546, 33.661942>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.825230, 33.795715, 33.728748> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.463097, 33.764805, 33.561707>,  <35.245815, 33.746258, 33.461479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.463097, 33.764805, 33.561707>,  <35.825230, 33.795715, 33.728748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.463097, 33.764805, 33.561707> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225215, 0.921018, 0.317811,
		0.360065, 0.381778, -0.851234,
		-0.905335, -0.077278, -0.417609,
		35.191498, 33.741623, 33.436424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.626396, 34.340691, 33.401569>,  <35.825230, 33.795715, 33.728748>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.626396, 34.340691, 33.401569> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.257378, 34.200951, 33.467133>,  <35.035969, 34.117107, 33.506470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.257378, 34.200951, 33.467133>,  <35.626396, 34.340691, 33.401569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.257378, 34.200951, 33.467133> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260901, 0.877631, 0.402112,
		-0.284333, 0.328201, -0.900799,
		-0.922543, -0.349354, 0.163912,
		34.980614, 34.096146, 33.516308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.220413, 34.938080, 33.151363>,  <35.626396, 34.340691, 33.401569>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.220413, 34.938080, 33.151363> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.959213, 34.701588, 33.340694>,  <34.802494, 34.559692, 33.454292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.959213, 34.701588, 33.340694>,  <35.220413, 34.938080, 33.151363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.959213, 34.701588, 33.340694> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434771, 0.804368, 0.404927,
		-0.620137, 0.058627, -0.782300,
		-0.652997, -0.591231, 0.473329,
		34.763313, 34.524220, 33.482693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.464340, 35.242004, 33.093254>,  <35.220413, 34.938080, 33.151363>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.464340, 35.242004, 33.093254> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.456589, 35.011913, 33.420361>,  <34.451939, 34.873859, 33.616623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.456589, 35.011913, 33.420361>,  <34.464340, 35.242004, 33.093254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.456589, 35.011913, 33.420361> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556350, 0.685793, 0.469214,
		-0.830722, -0.445868, -0.333321,
		-0.019381, -0.575230, 0.817762,
		34.450775, 34.839344, 33.665688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.913589, 35.423096, 33.362598>,  <34.464340, 35.242004, 33.093254>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.913589, 35.423096, 33.362598> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.049969, 35.225185, 33.682339>,  <34.131798, 35.106441, 33.874184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.049969, 35.225185, 33.682339>,  <33.913589, 35.423096, 33.362598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.049969, 35.225185, 33.682339> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572297, 0.565336, 0.594030,
		-0.745809, -0.659997, -0.090406,
		0.340948, -0.494772, 0.799347,
		34.152252, 35.076756, 33.922142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.447868, 34.986073, 32.979729>,  <33.913589, 35.423096, 33.362598>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.447868, 34.986073, 32.979729> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.384537, 34.592041, 33.006691>,  <33.346539, 34.355621, 33.022869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.384537, 34.592041, 33.006691>,  <33.447868, 34.986073, 32.979729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.384537, 34.592041, 33.006691> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878025, 0.171692, 0.446760,
		-0.451668, 0.011553, -0.892111,
		-0.158329, -0.985083, 0.067404,
		33.337036, 34.296516, 33.026913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.312740, 35.656506, 32.685368>,  <33.447868, 34.986073, 32.979729>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.312740, 35.656506, 32.685368> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.540051, 35.961658, 32.808708>,  <33.676437, 36.144749, 32.882713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.540051, 35.961658, 32.808708>,  <33.312740, 35.656506, 32.685368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.540051, 35.961658, 32.808708> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389021, 0.081127, -0.917650,
		-0.725072, 0.641430, -0.250675,
		0.568272, 0.762880, 0.308353,
		33.710533, 36.190521, 32.901215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.266251, 36.334393, 32.254116>,  <33.312740, 35.656506, 32.685368>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.266251, 36.334393, 32.254116> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.628849, 36.310661, 32.421322>,  <33.846409, 36.296421, 32.521645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.628849, 36.310661, 32.421322>,  <33.266251, 36.334393, 32.254116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.628849, 36.310661, 32.421322> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421922, 0.163508, -0.891766,
		-0.015441, 0.984757, 0.173252,
		0.906500, -0.059329, 0.418016,
		33.900799, 36.292862, 32.546726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.610172, 36.911404, 31.961775>,  <33.266251, 36.334393, 32.254116>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.610172, 36.911404, 31.961775> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.871098, 36.635380, 32.087196>,  <34.027653, 36.469765, 32.162449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.871098, 36.635380, 32.087196>,  <33.610172, 36.911404, 31.961775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.871098, 36.635380, 32.087196> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443261, 0.011737, -0.896316,
		0.614827, 0.723661, 0.313531,
		0.652309, -0.690056, 0.313555,
		34.066792, 36.428364, 32.181263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.326015, 37.209877, 31.855101>,  <33.610172, 36.911404, 31.961775>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.326015, 37.209877, 31.855101> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.367043, 36.813519, 31.889967>,  <34.391659, 36.575703, 31.910887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.367043, 36.813519, 31.889967>,  <34.326015, 37.209877, 31.855101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.367043, 36.813519, 31.889967> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597354, -0.008712, -0.801930,
		0.795391, 0.134323, 0.591024,
		0.102569, -0.990899, 0.087167,
		34.397812, 36.516251, 31.916117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.992134, 37.086750, 31.721802>,  <34.326015, 37.209877, 31.855101>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.992134, 37.086750, 31.721802> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.829094, 36.726570, 31.661083>,  <34.731270, 36.510460, 31.624651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.829094, 36.726570, 31.661083>,  <34.992134, 37.086750, 31.721802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.829094, 36.726570, 31.661083> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586335, -0.130639, -0.799465,
		0.700050, -0.414870, 0.581217,
		-0.407604, -0.900454, -0.151799,
		34.706814, 36.456432, 31.615543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.527428, 36.776585, 31.447170>,  <34.992134, 37.086750, 31.721802>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.527428, 36.776585, 31.447170> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.225285, 36.536507, 31.341944>,  <35.043999, 36.392460, 31.278809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.225285, 36.536507, 31.341944>,  <35.527428, 36.776585, 31.447170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.225285, 36.536507, 31.341944> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480966, -0.235105, -0.844628,
		0.445091, -0.764522, 0.466261,
		-0.755358, -0.600192, -0.263066,
		34.998676, 36.356449, 31.263023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.750282, 36.119488, 31.152229>,  <35.527428, 36.776585, 31.447170>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.750282, 36.119488, 31.152229> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.380672, 36.097458, 31.000889>,  <35.158909, 36.084240, 30.910084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.380672, 36.097458, 31.000889>,  <35.750282, 36.119488, 31.152229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.380672, 36.097458, 31.000889> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375960, -0.310889, -0.872927,
		-0.069551, -0.948849, 0.307974,
		-0.924022, -0.055073, -0.378352,
		35.103466, 36.080936, 30.887383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.683098, 35.442890, 30.882532>,  <35.750282, 36.119488, 31.152229>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.683098, 35.442890, 30.882532> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.408520, 35.659359, 30.688242>,  <35.243774, 35.789238, 30.571667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.408520, 35.659359, 30.688242>,  <35.683098, 35.442890, 30.882532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.408520, 35.659359, 30.688242> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222094, -0.480019, -0.848679,
		-0.692436, -0.690448, 0.209316,
		-0.686445, 0.541168, -0.485727,
		35.202587, 35.821709, 30.542524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.261600, 34.900028, 30.455030>,  <35.683098, 35.442890, 30.882532>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.261600, 34.900028, 30.455030> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.237560, 35.270046, 30.305000>,  <35.223137, 35.492058, 30.214983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.237560, 35.270046, 30.305000>,  <35.261600, 34.900028, 30.455030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.237560, 35.270046, 30.305000> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161870, -0.361747, -0.918116,
		-0.984980, -0.115896, -0.127995,
		-0.060105, 0.925044, -0.375074,
		35.219528, 35.547558, 30.192478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.790565, 34.857883, 29.911182>,  <35.261600, 34.900028, 30.455030>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.790565, 34.857883, 29.911182> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.008327, 35.184319, 29.833595>,  <35.138985, 35.380180, 29.787043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.008327, 35.184319, 29.833595>,  <34.790565, 34.857883, 29.911182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.008327, 35.184319, 29.833595> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262135, -0.385179, -0.884829,
		-0.796808, 0.430863, -0.423620,
		0.544410, 0.816085, -0.193970,
		35.171650, 35.429146, 29.775404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.637436, 35.002232, 29.146891>,  <34.790565, 34.857883, 29.911182>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.637436, 35.002232, 29.146891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.953445, 35.231445, 29.234058>,  <35.143051, 35.368973, 29.286360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.953445, 35.231445, 29.234058>,  <34.637436, 35.002232, 29.146891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.953445, 35.231445, 29.234058> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410553, -0.230517, -0.882218,
		-0.455308, 0.786443, -0.417376,
		0.790026, 0.573036, 0.217921,
		35.190453, 35.403355, 29.299435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.796097, 35.416573, 28.522961>,  <34.637436, 35.002232, 29.146891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.796097, 35.416573, 28.522961> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.109264, 35.376415, 28.768551>,  <35.297165, 35.352322, 28.915905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.109264, 35.376415, 28.768551>,  <34.796097, 35.416573, 28.522961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.109264, 35.376415, 28.768551> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485665, -0.518153, -0.704022,
		0.388811, 0.849376, -0.356913,
		0.782915, -0.100391, 0.613975,
		35.344139, 35.346298, 28.952744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.308914, 35.708435, 28.177273>,  <34.796097, 35.416573, 28.522961>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.308914, 35.708435, 28.177273> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.491978, 35.466896, 28.438324>,  <35.601814, 35.321972, 28.594954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.491978, 35.466896, 28.438324>,  <35.308914, 35.708435, 28.177273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.491978, 35.466896, 28.438324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596919, -0.335333, -0.728861,
		0.658965, 0.723136, 0.206977,
		0.457659, -0.603843, 0.652627,
		35.629276, 35.285744, 28.634111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.027496, 35.858868, 28.141512>,  <35.308914, 35.708435, 28.177273>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.027496, 35.858868, 28.141512> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.007809, 35.492470, 28.300776>,  <35.995995, 35.272633, 28.396334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.007809, 35.492470, 28.300776>,  <36.027496, 35.858868, 28.141512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.007809, 35.492470, 28.300776> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715414, -0.310512, -0.625912,
		0.696965, 0.254039, 0.670599,
		-0.049223, -0.915995, 0.398159,
		35.993042, 35.217670, 28.420223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.806049, 35.657566, 28.243830>,  <36.027496, 35.858868, 28.141512>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.806049, 35.657566, 28.243830> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.569988, 35.334663, 28.241095>,  <36.428352, 35.140923, 28.239452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.569988, 35.334663, 28.241095>,  <36.806049, 35.657566, 28.243830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.569988, 35.334663, 28.241095> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630299, -0.455462, -0.628711,
		0.504417, -0.375349, 0.777609,
		-0.590157, -0.807259, -0.006839,
		36.392941, 35.092487, 28.239042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.238815, 35.057106, 28.263277>,  <36.806049, 35.657566, 28.243830>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.238815, 35.057106, 28.263277> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.901867, 34.899246, 28.116491>,  <36.699696, 34.804531, 28.028419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.901867, 34.899246, 28.116491>,  <37.238815, 35.057106, 28.263277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.901867, 34.899246, 28.116491> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534307, -0.522961, -0.664099,
		0.070175, -0.755491, 0.651390,
		-0.842373, -0.394645, -0.366965,
		36.649155, 34.780853, 28.006401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.449120, 34.399681, 28.187712>,  <37.238815, 35.057106, 28.263277>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.449120, 34.399681, 28.187712> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.115818, 34.421387, 27.967621>,  <36.915836, 34.434410, 27.835566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.115818, 34.421387, 27.967621>,  <37.449120, 34.399681, 28.187712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.115818, 34.421387, 27.967621> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450360, -0.510691, -0.732373,
		-0.320736, -0.858050, 0.401096,
		-0.833249, 0.054260, -0.550229,
		36.865845, 34.437664, 27.802553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.177486, 33.699272, 28.038090>,  <37.449120, 34.399681, 28.187712>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.177486, 33.699272, 28.038090> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.037163, 33.951427, 27.761091>,  <36.952969, 34.102718, 27.594893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.037163, 33.951427, 27.761091>,  <37.177486, 33.699272, 28.038090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.037163, 33.951427, 27.761091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281396, -0.634354, -0.720008,
		-0.893170, -0.447448, 0.045146,
		-0.350805, 0.630385, -0.692496,
		36.931923, 34.140545, 27.553343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.782543, 33.353668, 27.552866>,  <37.177486, 33.699272, 28.038090>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.782543, 33.353668, 27.552866> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.873714, 33.680206, 27.340590>,  <36.928417, 33.876129, 27.213224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.873714, 33.680206, 27.340590>,  <36.782543, 33.353668, 27.552866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.873714, 33.680206, 27.340590> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287164, -0.577153, -0.764482,
		-0.930369, 0.021850, -0.365972,
		0.227926, 0.816344, -0.530690,
		36.942093, 33.925110, 27.181383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.759041, 33.070297, 26.977230>,  <36.782543, 33.353668, 27.552866>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.759041, 33.070297, 26.977230> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.946701, 33.415695, 26.903170>,  <37.059296, 33.622932, 26.858734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.946701, 33.415695, 26.903170>,  <36.759041, 33.070297, 26.977230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.946701, 33.415695, 26.903170> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394215, -0.392373, -0.831046,
		-0.790251, 0.316894, -0.524483,
		0.469146, 0.863494, -0.185149,
		37.087444, 33.674744, 26.847626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.569950, 33.200993, 26.370296>,  <36.759041, 33.070297, 26.977230>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.569950, 33.200993, 26.370296> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.909206, 33.409725, 26.406849>,  <37.112759, 33.534966, 26.428782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.909206, 33.409725, 26.406849>,  <36.569950, 33.200993, 26.370296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.909206, 33.409725, 26.406849> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282317, -0.299244, -0.911455,
		-0.448277, 0.798842, -0.401123,
		0.848142, 0.521828, 0.091383,
		37.163651, 33.566273, 26.434263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.764343, 33.343281, 25.720707>,  <36.569950, 33.200993, 26.370296>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.764343, 33.343281, 25.720707> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.119492, 33.410419, 25.892063>,  <37.332581, 33.450703, 25.994877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.119492, 33.410419, 25.892063>,  <36.764343, 33.343281, 25.720707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.119492, 33.410419, 25.892063> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457427, -0.221819, -0.861137,
		-0.049511, 0.960534, -0.273722,
		0.887868, 0.167844, 0.428392,
		37.385853, 33.460773, 26.020580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.275536, 33.819683, 25.236570>,  <36.764343, 33.343281, 25.720707>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.275536, 33.819683, 25.236570> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.528996, 33.641216, 25.489368>,  <37.681072, 33.534138, 25.641047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.528996, 33.641216, 25.489368>,  <37.275536, 33.819683, 25.236570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.528996, 33.641216, 25.489368> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515531, -0.365579, -0.774970,
		0.576811, 0.816876, -0.001637,
		0.633653, -0.446168, 0.631995,
		37.719090, 33.507366, 25.678967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.828644, 33.869186, 24.817017>,  <37.275536, 33.819683, 25.236570>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.828644, 33.869186, 24.817017> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.901783, 33.620869, 25.121958>,  <37.945667, 33.471878, 25.304922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.901783, 33.620869, 25.121958>,  <37.828644, 33.869186, 24.817017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.901783, 33.620869, 25.121958> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720071, -0.443386, -0.533767,
		0.669375, 0.646548, 0.365942,
		0.182852, -0.620794, 0.762352,
		37.956638, 33.434631, 25.350664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.583733, 33.876839, 25.098043>,  <37.828644, 33.869186, 24.817017>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.583733, 33.876839, 25.098043> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.409348, 33.525570, 25.176781>,  <38.304718, 33.314808, 25.224024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.409348, 33.525570, 25.176781>,  <38.583733, 33.876839, 25.098043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.409348, 33.525570, 25.176781> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745041, -0.474865, -0.468420,
		0.504829, -0.057555, 0.861298,
		-0.435960, -0.878175, 0.196844,
		38.278561, 33.262119, 25.235834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.072861, 33.428288, 25.251335>,  <38.583733, 33.876839, 25.098043>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.072861, 33.428288, 25.251335> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.773338, 33.175262, 25.172190>,  <38.593624, 33.023445, 25.124702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.773338, 33.175262, 25.172190>,  <39.072861, 33.428288, 25.251335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773338, 33.175262, 25.172190> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619581, -0.562046, -0.547928,
		0.235391, -0.532884, 0.812789,
		-0.748806, -0.632565, -0.197864,
		38.548695, 32.985493, 25.112831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.413513, 32.769573, 25.284618>,  <39.072861, 33.428288, 25.251335>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.413513, 32.769573, 25.284618> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.079357, 32.723961, 25.069536>,  <38.878864, 32.696594, 24.940487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.079357, 32.723961, 25.069536>,  <39.413513, 32.769573, 25.284618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.079357, 32.723961, 25.069536> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535219, -0.391537, -0.748492,
		-0.125180, -0.913070, 0.388116,
		-0.835386, -0.114031, -0.537704,
		38.828743, 32.689751, 24.908224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.718231, 32.315456, 25.862635>,  <39.413513, 32.769573, 25.284618>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.718231, 32.315456, 25.862635> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.082012, 32.478031, 25.897760>,  <40.300282, 32.575577, 25.918837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.082012, 32.478031, 25.897760>,  <39.718231, 32.315456, 25.862635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.082012, 32.478031, 25.897760> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387948, 0.753355, 0.530992,
		0.149659, -0.516978, 0.842814,
		0.909450, 0.406436, 0.087815,
		40.354847, 32.599960, 25.924105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.670265, 32.641895, 26.529791>,  <39.718231, 32.315456, 25.862635>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.670265, 32.641895, 26.529791> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.981293, 32.833164, 26.366457>,  <40.167908, 32.947926, 26.268456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.981293, 32.833164, 26.366457>,  <39.670265, 32.641895, 26.529791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.981293, 32.833164, 26.366457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131470, 0.758666, 0.638076,
		0.614903, -0.442463, 0.652779,
		0.777567, 0.478176, -0.408336,
		40.214561, 32.976616, 26.243956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.950661, 32.944828, 27.063765>,  <39.670265, 32.641895, 26.529791>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.950661, 32.944828, 27.063765> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.126637, 33.156609, 26.773623>,  <40.232224, 33.283676, 26.599537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.126637, 33.156609, 26.773623>,  <39.950661, 32.944828, 27.063765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.126637, 33.156609, 26.773623> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194075, 0.844685, 0.498840,
		0.876805, -0.078688, 0.474365,
		0.439942, 0.529448, -0.725353,
		40.258617, 33.315441, 26.556017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.448414, 33.375111, 27.415916>,  <39.950661, 32.944828, 27.063765>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.448414, 33.375111, 27.415916> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.365952, 33.553379, 27.067463>,  <40.316475, 33.660339, 26.858391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.365952, 33.553379, 27.067463>,  <40.448414, 33.375111, 27.415916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.365952, 33.553379, 27.067463> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232289, 0.842520, 0.486007,
		0.950547, 0.302549, -0.070168,
		-0.206159, 0.445673, -0.871134,
		40.304104, 33.687080, 26.806124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.863842, 34.036045, 27.272259>,  <40.448414, 33.375111, 27.415916>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.863842, 34.036045, 27.272259> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.509663, 34.065712, 27.088745>,  <40.297157, 34.083511, 26.978636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.509663, 34.065712, 27.088745>,  <40.863842, 34.036045, 27.272259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.509663, 34.065712, 27.088745> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081828, 0.946882, 0.310996,
		0.457481, 0.312912, -0.832344,
		-0.885446, 0.074165, -0.458786,
		40.244030, 34.087963, 26.951109>
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
