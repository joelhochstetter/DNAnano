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
	<1.686282, 2.279037, 3.118082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.304127, 2.244102, 3.005224>,  <1.074834, 2.223141, 2.937510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.304127, 2.244102, 3.005224>,  <1.686282, 2.279037, 3.118082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.304127, 2.244102, 3.005224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089892, 0.823976, -0.559449,
		0.281341, -0.559854, -0.779366,
		-0.955388, -0.087337, -0.282144,
		1.017510, 2.217901, 2.920581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.663068, 2.430006, 2.343136>,  <1.686282, 2.279037, 3.118082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.663068, 2.430006, 2.343136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.321621, 2.514557, 2.533569>,  <1.116753, 2.565288, 2.647829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.321621, 2.514557, 2.533569>,  <1.663068, 2.430006, 2.343136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.321621, 2.514557, 2.533569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059037, 0.868816, -0.491603,
		-0.517542, -0.447748, -0.729158,
		-0.853619, 0.211378, 0.476083,
		1.065535, 2.577970, 2.676394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.328815, 2.814576, 1.843065>,  <1.663068, 2.430006, 2.343136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.328815, 2.814576, 1.843065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.190483, 2.898647, 2.208847>,  <1.107484, 2.949090, 2.428316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.190483, 2.898647, 2.208847>,  <1.328815, 2.814576, 1.843065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.190483, 2.898647, 2.208847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134035, 0.975660, -0.173556,
		-0.928675, 0.062548, -0.365582,
		-0.345829, 0.210178, 0.914455,
		1.086735, 2.961701, 2.483184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.085904, 3.485751, 1.678277>,  <1.328815, 2.814576, 1.843065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.085904, 3.485751, 1.678277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.124470, 3.464046, 2.075821>,  <1.147609, 3.451024, 2.314348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.124470, 3.464046, 2.075821>,  <1.085904, 3.485751, 1.678277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.124470, 3.464046, 2.075821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098615, 0.993079, 0.063787,
		-0.990444, -0.104160, 0.090395,
		0.096413, -0.054263, 0.993861,
		1.153394, 3.447768, 2.373979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.611985, 4.042710, 2.019950>,  <1.085904, 3.485751, 1.678277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.611985, 4.042710, 2.019950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.885056, 3.938335, 2.292967>,  <1.048898, 3.875711, 2.456777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.885056, 3.938335, 2.292967>,  <0.611985, 4.042710, 2.019950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.885056, 3.938335, 2.292967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007854, 0.931394, 0.363928,
		-0.730679, -0.253806, 0.633791,
		0.682676, -0.260937, 0.682543,
		1.089859, 3.860054, 2.497730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.359695, 4.323977, 2.616610>,  <0.611985, 4.042710, 2.019950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.359695, 4.323977, 2.616610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.749493, 4.279030, 2.694313>,  <0.983371, 4.252061, 2.740935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.749493, 4.279030, 2.694313>,  <0.359695, 4.323977, 2.616610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.749493, 4.279030, 2.694313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065625, 0.970461, 0.232161,
		-0.214607, -0.213492, 0.953082,
		0.974493, -0.112369, 0.194257,
		1.041841, 4.245319, 2.752590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.546968, 4.734503, 3.323941>,  <0.359695, 4.323977, 2.616610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.546968, 4.734503, 3.323941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.889118, 4.687561, 3.122126>,  <1.094408, 4.659396, 3.001036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.889118, 4.687561, 3.122126>,  <0.546968, 4.734503, 3.323941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.889118, 4.687561, 3.122126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118930, 0.992473, -0.029216,
		0.504170, -0.035014, 0.862894,
		0.855376, -0.117354, -0.504540,
		1.145731, 4.652355, 2.970764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.912442, 5.308388, 3.534411>,  <0.546968, 4.734503, 3.323941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.912442, 5.308388, 3.534411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.138206, 5.175781, 3.232011>,  <1.273665, 5.096218, 3.050570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.138206, 5.175781, 3.232011>,  <0.912442, 5.308388, 3.534411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.138206, 5.175781, 3.232011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163459, 0.942566, -0.291292,
		0.809149, 0.040833, 0.586183,
		0.564411, -0.331516, -0.756001,
		1.307530, 5.076326, 3.005210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.932375, 6.193396, 2.689371> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.322571, 6.183598, 2.601898>,  <1.556688, 6.177719, 2.549414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.322571, 6.183598, 2.601898>,  <0.932375, 6.193396, 2.689371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.322571, 6.183598, 2.601898> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034561, -0.998506, -0.042323,
		-0.217320, 0.048843, -0.974878,
		0.975488, -0.024495, -0.218683,
		1.615217, 6.176249, 2.536293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.013656, 5.840451, 1.970299>,  <0.932375, 6.193396, 2.689371>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.013656, 5.840451, 1.970299> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.323181, 5.781693, 2.216757>,  <1.508896, 5.746438, 2.364632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.323181, 5.781693, 2.216757>,  <1.013656, 5.840451, 1.970299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.323181, 5.781693, 2.216757> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185300, -0.982681, -0.001566,
		0.605705, -0.112960, -0.787630,
		0.773812, -0.146896, 0.616146,
		1.555325, 5.737624, 2.401601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.470314, 5.293369, 1.770535>,  <1.013656, 5.840451, 1.970299>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.470314, 5.293369, 1.770535> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.531174, 5.315929, 2.165234>,  <1.567690, 5.329466, 2.402053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.531174, 5.315929, 2.165234>,  <1.470314, 5.293369, 1.770535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.531174, 5.315929, 2.165234> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029427, -0.997669, 0.061563,
		0.987919, -0.038404, -0.150135,
		0.152150, 0.056401, 0.986747,
		1.576819, 5.332850, 2.461258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.060052, 4.956296, 2.023486>,  <1.470314, 5.293369, 1.770535>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.060052, 4.956296, 2.023486> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.802216, 4.962475, 2.329235>,  <1.647514, 4.966182, 2.512684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.802216, 4.962475, 2.329235>,  <2.060052, 4.956296, 2.023486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.802216, 4.962475, 2.329235> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024943, -0.998839, 0.041218,
		0.764121, 0.045635, 0.643456,
		-0.644590, 0.015446, 0.764372,
		1.608839, 4.967109, 2.558547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.345647, 4.491821, 2.480799>,  <2.060052, 4.956296, 2.023486>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.345647, 4.491821, 2.480799> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.973770, 4.537632, 2.620831>,  <1.750644, 4.565119, 2.704849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.973770, 4.537632, 2.620831>,  <2.345647, 4.491821, 2.480799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.973770, 4.537632, 2.620831> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144450, -0.987661, -0.060498,
		0.338831, -0.106814, 0.934765,
		-0.929692, 0.114528, 0.350079,
		1.694862, 4.571990, 2.725854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.288592, 4.047095, 3.037963>,  <2.345647, 4.491821, 2.480799>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.288592, 4.047095, 3.037963> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.907120, 4.121571, 2.943453>,  <1.678236, 4.166256, 2.886746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.907120, 4.121571, 2.943453>,  <2.288592, 4.047095, 3.037963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.907120, 4.121571, 2.943453> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170112, -0.981588, -0.086880,
		-0.248102, -0.042662, 0.967794,
		-0.953681, 0.186188, -0.236277,
		1.621016, 4.177427, 2.872570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.888695, 3.708710, 3.480667>,  <2.288592, 4.047095, 3.037963>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.888695, 3.708710, 3.480667> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.666267, 3.745163, 3.150217>,  <1.532811, 3.767035, 2.951947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.666267, 3.745163, 3.150217>,  <1.888695, 3.708710, 3.480667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.666267, 3.745163, 3.150217> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194799, -0.980575, 0.022950,
		-0.807986, 0.173690, 0.563019,
		-0.556069, 0.091132, -0.826125,
		1.499447, 3.772503, 2.902380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.329895, 3.347572, 3.656828>,  <1.888695, 3.708710, 3.480667>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.329895, 3.347572, 3.656828> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.294830, 3.379219, 3.259626>,  <1.273791, 3.398207, 3.021306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.294830, 3.379219, 3.259626>,  <1.329895, 3.347572, 3.656828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.294830, 3.379219, 3.259626> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112121, -0.991290, -0.069083,
		-0.989820, 0.105281, 0.095770,
		-0.087663, 0.079117, -0.993003,
		1.268531, 3.402954, 2.961725>
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
