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
	<2.653340, 0.520056, 3.167261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.683411, 0.675446, 3.534616>,  <2.701453, 0.768679, 3.755029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.683411, 0.675446, 3.534616>,  <2.653340, 0.520056, 3.167261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.683411, 0.675446, 3.534616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.994692, 0.094109, 0.041615,
		-0.070262, -0.916642, 0.393486,
		0.075177, 0.388474, 0.918388,
		2.705964, 0.791988, 3.810132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.455555, 0.121282, 3.783702>,  <2.653340, 0.520056, 3.167261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.455555, 0.121282, 3.783702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.391014, 0.491577, 3.920507>,  <2.352290, 0.713754, 4.002591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.391014, 0.491577, 3.920507>,  <2.455555, 0.121282, 3.783702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.391014, 0.491577, 3.920507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.948179, -0.241533, 0.206443,
		0.273720, -0.290981, 0.916738,
		-0.161352, 0.925738, 0.342014,
		2.342609, 0.769299, 4.023112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.181062, 0.124201, 4.608426>,  <2.455555, 0.121282, 3.783702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.181062, 0.124201, 4.608426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.089249, 0.471962, 4.433403>,  <2.034161, 0.680618, 4.328389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.089249, 0.471962, 4.433403>,  <2.181062, 0.124201, 4.608426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.089249, 0.471962, 4.433403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912026, -0.035130, 0.408625,
		0.339888, 0.492857, 0.800980,
		-0.229532, 0.869402, -0.437558,
		2.020389, 0.732782, 4.302136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.835890, 0.739683, 5.044907>,  <2.181062, 0.124201, 4.608426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.835890, 0.739683, 5.044907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.707687, 0.753601, 4.666264>,  <1.630766, 0.761952, 4.439078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.707687, 0.753601, 4.666264>,  <1.835890, 0.739683, 5.044907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.707687, 0.753601, 4.666264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.937802, 0.129107, 0.322271,
		0.133427, 0.991020, -0.008749,
		-0.320507, 0.034795, -0.946607,
		1.611535, 0.764040, 4.382281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.274213, 1.237890, 5.060663>,  <1.835890, 0.739683, 5.044907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.274213, 1.237890, 5.060663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.225651, 1.045479, 4.713360>,  <1.196514, 0.930032, 4.504978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.225651, 1.045479, 4.713360>,  <1.274213, 1.237890, 5.060663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.225651, 1.045479, 4.713360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.981833, 0.186704, 0.033849,
		0.145825, 0.856594, -0.494956,
		-0.121405, -0.481028, -0.868258,
		1.189229, 0.901170, 4.452882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.790091, 1.568173, 4.830912>,  <1.274213, 1.237890, 5.060663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.790091, 1.568173, 4.830912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.746361, 1.224960, 4.630181>,  <0.720123, 1.019033, 4.509743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.746361, 1.224960, 4.630181>,  <0.790091, 1.568173, 4.830912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.746361, 1.224960, 4.630181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.989139, 0.044013, 0.140234,
		-0.098239, 0.511706, -0.853525,
		-0.109325, -0.858032, -0.501826,
		0.713563, 0.967551, 4.479634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.162184, 1.640024, 4.335594>,  <0.790091, 1.568173, 4.830912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.162184, 1.640024, 4.335594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.226749, 1.246971, 4.372213>,  <0.265489, 1.011140, 4.394184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.226749, 1.246971, 4.372213>,  <0.162184, 1.640024, 4.335594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.226749, 1.246971, 4.372213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.983684, -0.152728, 0.095082,
		-0.079449, -0.105401, -0.991251,
		0.161414, -0.982631, 0.091547,
		0.275174, 0.952182, 4.399677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.285285, 1.323208, 3.891456>,  <0.162184, 1.640024, 4.335594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.285285, 1.323208, 3.891456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.193558, 1.075333, 4.191696>,  <-0.138522, 0.926608, 4.371840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.193558, 1.075333, 4.191696>,  <-0.285285, 1.323208, 3.891456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.193558, 1.075333, 4.191696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.971170, -0.197274, 0.133836,
		0.065138, -0.759651, -0.647060,
		0.229317, -0.619688, 0.750600,
		-0.124763, 0.889426, 4.416876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<-1.291612, 1.259833, 4.710282> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-1.308144, 0.863052, 4.662412>,  <-1.318063, 0.624984, 4.633690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-1.308144, 0.863052, 4.662412>,  <-1.291612, 1.259833, 4.710282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-1.308144, 0.863052, 4.662412> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993684, -0.053314, 0.098739,
		-0.104325, -0.114838, 0.987891,
		-0.041330, -0.991952, -0.119675,
		-1.320543, 0.565467, 4.626509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-1.060261, 0.937616, 5.252261>,  <-1.291612, 1.259833, 4.710282>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-1.060261, 0.937616, 5.252261> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.981972, 0.695404, 4.943708>,  <-0.934998, 0.550077, 4.758577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.981972, 0.695404, 4.943708>,  <-1.060261, 0.937616, 5.252261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.981972, 0.695404, 4.943708> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978779, 0.071939, 0.191875,
		-0.060694, -0.792565, 0.606759,
		0.195723, -0.605529, -0.771380,
		-0.923255, 0.513745, 4.712295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.511831, 0.299709, 5.432282>,  <-1.060261, 0.937616, 5.252261>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.511831, 0.299709, 5.432282> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.503876, 0.402580, 5.045818>,  <-0.499102, 0.464303, 4.813940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.503876, 0.402580, 5.045818>,  <-0.511831, 0.299709, 5.432282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.503876, 0.402580, 5.045818> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992984, 0.107585, 0.049079,
		0.116566, -0.960356, -0.253235,
		0.019889, 0.257179, -0.966159,
		-0.497909, 0.479734, 4.755970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.051438, -0.061381, 5.157092>,  <-0.511831, 0.299709, 5.432282>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.051438, -0.061381, 5.157092> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.008163, 0.228577, 4.888070>,  <-0.043924, 0.402551, 4.726657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.008163, 0.228577, 4.888070>,  <0.051438, -0.061381, 5.157092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.008163, 0.228577, 4.888070> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988653, 0.122326, -0.087189,
		0.019068, -0.677913, -0.734895,
		-0.149004, 0.724893, -0.672553,
		-0.052865, 0.446045, 4.686304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.400926, -0.286208, 4.643872>,  <0.051438, -0.061381, 5.157092>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.400926, -0.286208, 4.643872> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.356247, 0.100700, 4.552736>,  <0.329440, 0.332845, 4.498055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.356247, 0.100700, 4.552736>,  <0.400926, -0.286208, 4.643872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.356247, 0.100700, 4.552736> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945066, 0.032518, -0.325259,
		-0.307205, -0.251653, -0.917767,
		-0.111697, 0.967271, -0.227838,
		0.322738, 0.390882, 4.484385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.685984, -0.301060, 3.947644>,  <0.400926, -0.286208, 4.643872>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.685984, -0.301060, 3.947644> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.699028, 0.062469, 4.114006>,  <0.706855, 0.280587, 4.213823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.699028, 0.062469, 4.114006>,  <0.685984, -0.301060, 3.947644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.699028, 0.062469, 4.114006> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846551, 0.196092, -0.494873,
		-0.531308, 0.368222, -0.762971,
		0.032611, 0.908824, 0.415904,
		0.708811, 0.335117, 4.238777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.950686, 0.037838, 3.482414>,  <0.685984, -0.301060, 3.947644>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.950686, 0.037838, 3.482414> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.035095, 0.289474, 3.781670>,  <1.085741, 0.440456, 3.961223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.035095, 0.289474, 3.781670>,  <0.950686, 0.037838, 3.482414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.035095, 0.289474, 3.781670> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840803, 0.273521, -0.467158,
		-0.498517, 0.727620, -0.471223,
		0.211024, 0.629091, 0.748140,
		1.098403, 0.478202, 4.006112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.166953, 0.657972, 3.168980>,  <0.950686, 0.037838, 3.482414>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.166953, 0.657972, 3.168980> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.312027, 0.688393, 3.540502>,  <1.399071, 0.706645, 3.763414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.312027, 0.688393, 3.540502>,  <1.166953, 0.657972, 3.168980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.312027, 0.688393, 3.540502> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919449, 0.133253, -0.369943,
		-0.151901, 0.988160, -0.021596,
		0.362685, 0.076051, 0.928804,
		1.420832, 0.711208, 3.819143>
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
