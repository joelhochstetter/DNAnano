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
	<24.231911, 34.763676, 34.643948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.383211, 34.597412, 34.974804>,  <24.473991, 34.497654, 35.173317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.383211, 34.597412, 34.974804>,  <24.231911, 34.763676, 34.643948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.383211, 34.597412, 34.974804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431117, -0.711610, -0.554752,
		0.819185, 0.566428, -0.089971,
		0.378251, -0.415657, 0.827137,
		24.496687, 34.472713, 35.222946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.050886, 34.555031, 34.511280>,  <24.231911, 34.763676, 34.643948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.050886, 34.555031, 34.511280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.906103, 34.286968, 34.770473>,  <24.819233, 34.126129, 34.925987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.906103, 34.286968, 34.770473>,  <25.050886, 34.555031, 34.511280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.906103, 34.286968, 34.770473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481357, -0.729636, -0.485723,
		0.798300, 0.136100, 0.586680,
		-0.361956, -0.670155, 0.647981,
		24.797516, 34.085922, 34.964867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.524860, 34.079517, 34.780182>,  <25.050886, 34.555031, 34.511280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.524860, 34.079517, 34.780182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.179804, 33.883488, 34.830273>,  <24.972771, 33.765869, 34.860329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.179804, 33.883488, 34.830273>,  <25.524860, 34.079517, 34.780182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.179804, 33.883488, 34.830273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449620, -0.856342, -0.254009,
		0.231719, -0.162814, 0.959061,
		-0.862640, -0.490072, 0.125226,
		24.921011, 33.736465, 34.867840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.618328, 33.476883, 35.291477>,  <25.524860, 34.079517, 34.780182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.618328, 33.476883, 35.291477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.368685, 33.437931, 34.981380>,  <25.218899, 33.414562, 34.795322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.368685, 33.437931, 34.981380>,  <25.618328, 33.476883, 35.291477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.368685, 33.437931, 34.981380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363202, -0.914645, -0.177507,
		-0.691789, -0.392355, 0.606206,
		-0.624109, -0.097378, -0.775245,
		25.181452, 33.408718, 34.748806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.389690, 33.286041, 35.407619>,  <25.618328, 33.476883, 35.291477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.389690, 33.286041, 35.407619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.775061, 33.280197, 35.514648>,  <27.006283, 33.276691, 35.578865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.775061, 33.280197, 35.514648>,  <26.389690, 33.286041, 35.407619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.775061, 33.280197, 35.514648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133801, -0.891367, 0.433085,
		0.232177, -0.453048, -0.860722,
		0.963427, -0.014613, 0.267573,
		27.064089, 33.275814, 35.594921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.757179, 32.605663, 35.180260>,  <26.389690, 33.286041, 35.407619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.757179, 32.605663, 35.180260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.929123, 32.763302, 35.505199>,  <27.032290, 32.857887, 35.700161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.929123, 32.763302, 35.505199>,  <26.757179, 32.605663, 35.180260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.929123, 32.763302, 35.505199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147951, -0.856806, 0.493958,
		0.890691, -0.332520, -0.309998,
		0.429859, 0.394100, 0.812346,
		27.058081, 32.881531, 35.748901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.361057, 32.110039, 35.403759>,  <26.757179, 32.605663, 35.180260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.361057, 32.110039, 35.403759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.261534, 32.322720, 35.727585>,  <27.201818, 32.450329, 35.921879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.261534, 32.322720, 35.727585>,  <27.361057, 32.110039, 35.403759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.261534, 32.322720, 35.727585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042501, -0.829049, 0.557558,
		0.967619, 0.173134, 0.183679,
		-0.248811, 0.531698, 0.809562,
		27.186890, 32.482227, 35.970455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.611773, 31.745575, 35.931427>,  <27.361057, 32.110039, 35.403759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.611773, 31.745575, 35.931427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.329988, 31.964821, 36.111782>,  <27.160917, 32.096371, 36.219997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.329988, 31.964821, 36.111782>,  <27.611773, 31.745575, 35.931427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.329988, 31.964821, 36.111782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126955, -0.722358, 0.679766,
		0.698297, 0.421625, 0.578459,
		-0.704460, 0.548117, 0.450892,
		27.118650, 32.129257, 36.247051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.729349, 31.603100, 36.564442>,  <27.611773, 31.745575, 35.931427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.729349, 31.603100, 36.564442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.359333, 31.754885, 36.571476>,  <27.137323, 31.845955, 36.575695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.359333, 31.754885, 36.571476>,  <27.729349, 31.603100, 36.564442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.359333, 31.754885, 36.571476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314001, -0.789875, 0.526784,
		0.213785, 0.481774, 0.849817,
		-0.925040, 0.379462, 0.017586,
		27.081821, 31.868723, 36.576752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.566051, 31.619354, 37.220818>,  <27.729349, 31.603100, 36.564442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.566051, 31.619354, 37.220818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.224155, 31.612118, 37.013321>,  <27.019018, 31.607777, 36.888824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.224155, 31.612118, 37.013321>,  <27.566051, 31.619354, 37.220818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.224155, 31.612118, 37.013321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314696, -0.776700, 0.545622,
		-0.412775, 0.629610, 0.658185,
		-0.854742, -0.018091, -0.518738,
		26.967733, 31.606689, 36.857700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.190372, 31.245333, 37.709000>,  <27.566051, 31.619354, 37.220818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.190372, 31.245333, 37.709000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.940981, 31.268099, 37.397095>,  <26.791346, 31.281759, 37.209949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.940981, 31.268099, 37.397095>,  <27.190372, 31.245333, 37.709000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.940981, 31.268099, 37.397095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581793, -0.700033, 0.414090,
		-0.522294, 0.711839, 0.469568,
		-0.623479, 0.056915, -0.779766,
		26.753937, 31.285173, 37.163166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.457327, 31.347630, 38.015442>,  <27.190372, 31.245333, 37.709000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.457327, 31.347630, 38.015442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.451496, 31.171473, 37.656368>,  <26.447998, 31.065779, 37.440922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.451496, 31.171473, 37.656368>,  <26.457327, 31.347630, 38.015442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.451496, 31.171473, 37.656368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431281, -0.807206, 0.403007,
		-0.902100, 0.393029, -0.178168,
		-0.014575, -0.440393, -0.897687,
		26.447124, 31.039354, 37.387062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.745440, 30.962082, 37.831524>,  <26.457327, 31.347630, 38.015442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.745440, 30.962082, 37.831524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.007360, 30.769287, 37.598656>,  <26.164513, 30.653610, 37.458935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.007360, 30.769287, 37.598656>,  <25.745440, 30.962082, 37.831524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.007360, 30.769287, 37.598656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375447, -0.875944, 0.302921,
		-0.655952, 0.020220, -0.754532,
		0.654803, -0.481988, -0.582169,
		26.203802, 30.624691, 37.424004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.361383, 30.466488, 37.404476>,  <25.745440, 30.962082, 37.831524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.361383, 30.466488, 37.404476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.725677, 30.306154, 37.364697>,  <25.944254, 30.209953, 37.340828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.725677, 30.306154, 37.364697>,  <25.361383, 30.466488, 37.404476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.725677, 30.306154, 37.364697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365694, -0.894609, 0.256792,
		-0.191901, -0.197501, -0.961336,
		0.910737, -0.400834, -0.099452,
		25.998899, 30.185904, 37.334862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.436609, 29.843201, 36.883732>,  <25.361383, 30.466488, 37.404476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.436609, 29.843201, 36.883732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.706776, 29.810431, 37.176880>,  <25.868876, 29.790768, 37.352768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.706776, 29.810431, 37.176880>,  <25.436609, 29.843201, 36.883732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.706776, 29.810431, 37.176880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272278, -0.951293, 0.144589,
		0.685333, -0.297203, -0.664823,
		0.675414, -0.081925, 0.732874,
		25.909399, 29.785852, 37.396744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.672695, 29.107718, 36.853054>,  <25.436609, 29.843201, 36.883732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.672695, 29.107718, 36.853054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.770208, 29.254719, 37.212055>,  <25.828716, 29.342918, 37.427456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.770208, 29.254719, 37.212055>,  <25.672695, 29.107718, 36.853054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.770208, 29.254719, 37.212055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182187, -0.891595, 0.414568,
		0.952564, -0.264578, -0.150401,
		0.243782, 0.367501, 0.897503,
		25.843344, 29.364969, 37.481308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.841763, 28.504995, 37.157223>,  <25.672695, 29.107718, 36.853054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.841763, 28.504995, 37.157223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.833324, 28.754581, 37.469692>,  <25.828260, 28.904333, 37.657173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.833324, 28.754581, 37.469692>,  <25.841763, 28.504995, 37.157223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.833324, 28.754581, 37.469692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093081, -0.776724, 0.622926,
		0.995435, 0.085854, -0.041693,
		-0.021097, 0.623963, 0.781169,
		25.826996, 28.941771, 37.704044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.441273, 28.348892, 37.661560>,  <25.841763, 28.504995, 37.157223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.441273, 28.348892, 37.661560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.156673, 28.528868, 37.877457>,  <25.985914, 28.636854, 38.006996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.156673, 28.528868, 37.877457>,  <26.441273, 28.348892, 37.661560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.156673, 28.528868, 37.877457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056087, -0.802027, 0.594648,
		0.700447, 0.392818, 0.595876,
		-0.711497, 0.449941, 0.539746,
		25.943224, 28.663851, 38.039379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.716438, 28.302074, 38.325985>,  <26.441273, 28.348892, 37.661560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.716438, 28.302074, 38.325985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.327015, 28.383764, 38.366932>,  <26.093361, 28.432777, 38.391499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.327015, 28.383764, 38.366932>,  <26.716438, 28.302074, 38.325985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.327015, 28.383764, 38.366932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043821, -0.606732, 0.793698,
		0.224199, 0.768225, 0.599638,
		-0.973558, 0.204223, 0.102364,
		26.034948, 28.445030, 38.397640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.515404, 28.420473, 39.085407>,  <26.716438, 28.302074, 38.325985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.515404, 28.420473, 39.085407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.175755, 28.323900, 38.897491>,  <25.971964, 28.265957, 38.784744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.175755, 28.323900, 38.897491>,  <26.515404, 28.420473, 39.085407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.175755, 28.323900, 38.897491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161120, -0.728634, 0.665682,
		-0.503019, 0.640939, 0.579801,
		-0.849124, -0.241433, -0.469785,
		25.921017, 28.251471, 38.756557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.870050, 28.466576, 39.511467>,  <26.515404, 28.420473, 39.085407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.870050, 28.466576, 39.511467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.799129, 28.196058, 39.225475>,  <25.756577, 28.033749, 39.053883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.799129, 28.196058, 39.225475>,  <25.870050, 28.466576, 39.511467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.799129, 28.196058, 39.225475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111235, -0.708060, 0.697336,
		-0.977850, 0.203170, 0.050314,
		-0.177304, -0.676293, -0.714976,
		25.745939, 27.993170, 39.010983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.583105, 27.883089, 39.862335>,  <25.870050, 28.466576, 39.511467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.583105, 27.883089, 39.862335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.632191, 27.731833, 39.495304>,  <25.661642, 27.641079, 39.275085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.632191, 27.731833, 39.495304>,  <25.583105, 27.883089, 39.862335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.632191, 27.731833, 39.495304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057865, -0.925719, 0.373758,
		-0.990754, 0.007231, -0.135479,
		0.122713, -0.378141, -0.917578,
		25.669004, 27.618389, 39.220032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.054731, 27.474602, 39.800629>,  <25.583105, 27.883089, 39.862335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.054731, 27.474602, 39.800629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.297840, 27.321529, 39.522301>,  <25.443707, 27.229687, 39.355305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.297840, 27.321529, 39.522301>,  <25.054731, 27.474602, 39.800629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.297840, 27.321529, 39.522301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089701, -0.903703, 0.418658,
		-0.789029, -0.192033, -0.583573,
		0.607773, -0.382680, -0.695822,
		25.480171, 27.206726, 39.313553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.678358, 26.958881, 39.490284>,  <25.054731, 27.474602, 39.800629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.678358, 26.958881, 39.490284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.059029, 26.856903, 39.421803>,  <25.287432, 26.795715, 39.380714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.059029, 26.856903, 39.421803>,  <24.678358, 26.958881, 39.490284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.059029, 26.856903, 39.421803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190197, -0.927022, 0.323196,
		-0.241109, -0.275016, -0.930717,
		0.951679, -0.254945, -0.171206,
		25.344532, 26.780420, 39.370441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.664019, 26.287390, 39.154305>,  <24.678358, 26.958881, 39.490284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.664019, 26.287390, 39.154305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.024765, 26.314047, 39.325043>,  <25.241213, 26.330040, 39.427486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.024765, 26.314047, 39.325043>,  <24.664019, 26.287390, 39.154305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.024765, 26.314047, 39.325043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095593, -0.932755, 0.347605,
		0.421304, -0.354297, -0.834851,
		0.901867, 0.066642, 0.426842,
		25.295326, 26.334040, 39.453094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.034590, 25.586252, 39.000164>,  <24.664019, 26.287390, 39.154305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.034590, 25.586252, 39.000164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.154270, 25.793758, 39.320503>,  <25.226078, 25.918262, 39.512707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.154270, 25.793758, 39.320503>,  <25.034590, 25.586252, 39.000164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.154270, 25.793758, 39.320503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035537, -0.844774, 0.533942,
		0.953528, -0.131296, -0.271192,
		0.299200, 0.518767, 0.800850,
		25.244030, 25.949389, 39.560757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.465275, 25.217535, 39.279530>,  <25.034590, 25.586252, 39.000164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.465275, 25.217535, 39.279530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.323519, 25.448193, 39.573982>,  <25.238464, 25.586588, 39.750652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.323519, 25.448193, 39.573982>,  <25.465275, 25.217535, 39.279530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.323519, 25.448193, 39.573982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231146, -0.816815, 0.528569,
		0.906078, 0.017167, 0.422762,
		-0.354393, 0.576645, 0.736130,
		25.217201, 25.621185, 39.794823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.687384, 24.982855, 39.815762>,  <25.465275, 25.217535, 39.279530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.687384, 24.982855, 39.815762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.402590, 25.202597, 39.990707>,  <25.231714, 25.334442, 40.095676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.402590, 25.202597, 39.990707>,  <25.687384, 24.982855, 39.815762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.402590, 25.202597, 39.990707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228712, -0.770312, 0.595240,
		0.663906, 0.323770, 0.674093,
		-0.711983, 0.549356, 0.437365,
		25.188995, 25.367403, 40.121918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.691479, 25.163235, 40.546577>,  <25.687384, 24.982855, 39.815762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.691479, 25.163235, 40.546577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.302910, 25.093704, 40.481922>,  <25.069769, 25.051987, 40.443130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.302910, 25.093704, 40.481922>,  <25.691479, 25.163235, 40.546577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.302910, 25.093704, 40.481922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020184, -0.738986, 0.673418,
		-0.236502, 0.650910, 0.721375,
		-0.971421, -0.173825, -0.161634,
		25.011484, 25.041557, 40.433434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.345837, 25.227692, 41.164089>,  <25.691479, 25.163235, 40.546577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.345837, 25.227692, 41.164089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.193058, 24.959362, 40.909809>,  <25.101391, 24.798365, 40.757240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.193058, 24.959362, 40.909809>,  <25.345837, 25.227692, 41.164089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.193058, 24.959362, 40.909809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228106, -0.734996, 0.638552,
		-0.895592, 0.098885, 0.433748,
		-0.381946, -0.670822, -0.635700,
		25.078474, 24.758116, 40.719101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.308622, 24.984444, 41.861767>,  <25.345837, 25.227692, 41.164089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.308622, 24.984444, 41.861767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.352291, 25.049471, 42.254021>,  <25.378492, 25.088488, 42.489372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.352291, 25.049471, 42.254021>,  <25.308622, 24.984444, 41.861767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.352291, 25.049471, 42.254021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177941, 0.967404, -0.180185,
		-0.977967, 0.194167, 0.076685,
		0.109171, 0.162570, 0.980639,
		25.385042, 25.098242, 42.548214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.867462, 25.448540, 42.037384>,  <25.308622, 24.984444, 41.861767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.867462, 25.448540, 42.037384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.194834, 25.491522, 42.263172>,  <25.391256, 25.517311, 42.398643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.194834, 25.491522, 42.263172>,  <24.867462, 25.448540, 42.037384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.194834, 25.491522, 42.263172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102931, 0.939053, -0.328001,
		-0.565314, 0.326547, 0.757487,
		0.818429, 0.107455, 0.564471,
		25.440363, 25.523758, 42.432514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.802998, 26.158617, 42.199696>,  <24.867462, 25.448540, 42.037384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.802998, 26.158617, 42.199696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.168604, 26.021051, 42.285767>,  <25.387968, 25.938513, 42.337410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.168604, 26.021051, 42.285767>,  <24.802998, 26.158617, 42.199696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.168604, 26.021051, 42.285767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392760, 0.882971, -0.257104,
		-0.101570, 0.319508, 0.942124,
		0.914015, -0.343915, 0.215173,
		25.442808, 25.917877, 42.350319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.248083, 26.563261, 42.730724>,  <24.802998, 26.158617, 42.199696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.248083, 26.563261, 42.730724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.483927, 26.362865, 42.477310>,  <25.625433, 26.242628, 42.325260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.483927, 26.362865, 42.477310>,  <25.248083, 26.563261, 42.730724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.483927, 26.362865, 42.477310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513711, 0.837892, -0.184494,
		0.623267, -0.216677, 0.751392,
		0.589610, -0.500987, -0.633539,
		25.660810, 26.212568, 42.287247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.884443, 26.825184, 42.808376>,  <25.248083, 26.563261, 42.730724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.884443, 26.825184, 42.808376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.855701, 26.661911, 42.444347>,  <25.838457, 26.563948, 42.225929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.855701, 26.661911, 42.444347>,  <25.884443, 26.825184, 42.808376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.855701, 26.661911, 42.444347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374767, 0.834521, -0.403887,
		0.924331, -0.370084, 0.093011,
		-0.071852, -0.408182, -0.910068,
		25.834146, 26.539455, 42.171326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.545393, 26.880955, 42.499451>,  <25.884443, 26.825184, 42.808376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.545393, 26.880955, 42.499451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.299780, 26.825480, 42.188652>,  <26.152412, 26.792194, 42.002174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.299780, 26.825480, 42.188652>,  <26.545393, 26.880955, 42.499451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.299780, 26.825480, 42.188652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571324, 0.601114, -0.558794,
		0.544563, -0.787037, -0.289869,
		-0.614035, -0.138690, -0.776997,
		26.115570, 26.783873, 41.955551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.931137, 26.783091, 41.857216>,  <26.545393, 26.880955, 42.499451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.931137, 26.783091, 41.857216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.577042, 26.921839, 41.733257>,  <26.364584, 27.005087, 41.658882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.577042, 26.921839, 41.733257>,  <26.931137, 26.783091, 41.857216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.577042, 26.921839, 41.733257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463783, 0.709092, -0.531124,
		0.035514, -0.613896, -0.788588,
		-0.885236, 0.346871, -0.309898,
		26.311470, 27.025900, 41.640289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.917433, 26.854086, 41.090393>,  <26.931137, 26.783091, 41.857216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.917433, 26.854086, 41.090393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.629026, 27.102427, 41.213474>,  <26.455982, 27.251431, 41.287323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.629026, 27.102427, 41.213474>,  <26.917433, 26.854086, 41.090393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.629026, 27.102427, 41.213474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385450, 0.728385, -0.566467,
		-0.575817, -0.289828, -0.764483,
		-0.721016, 0.620851, 0.307702,
		26.412722, 27.288681, 41.305786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.723753, 27.334377, 40.498993>,  <26.917433, 26.854086, 41.090393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.723753, 27.334377, 40.498993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.566254, 27.531738, 40.809223>,  <26.471754, 27.650154, 40.995361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.566254, 27.531738, 40.809223>,  <26.723753, 27.334377, 40.498993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.566254, 27.531738, 40.809223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378911, 0.855836, -0.352095,
		-0.837489, 0.155236, -0.523941,
		-0.393749, 0.493403, 0.775574,
		26.448130, 27.679760, 41.041897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.383768, 27.795095, 40.182030>,  <26.723753, 27.334377, 40.498993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.383768, 27.795095, 40.182030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.435287, 27.948444, 40.547859>,  <26.466198, 28.040453, 40.767357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.435287, 27.948444, 40.547859>,  <26.383768, 27.795095, 40.182030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.435287, 27.948444, 40.547859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307285, 0.861430, -0.404369,
		-0.942861, 0.333115, -0.006855,
		0.128797, 0.383371, 0.914570,
		26.473927, 28.063456, 40.822231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.032866, 28.491083, 40.265594>,  <26.383768, 27.795095, 40.182030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.032866, 28.491083, 40.265594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.288340, 28.494560, 40.573360>,  <26.441624, 28.496647, 40.758022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.288340, 28.494560, 40.573360>,  <26.032866, 28.491083, 40.265594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.288340, 28.494560, 40.573360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326368, 0.902475, -0.281111,
		-0.696825, 0.430655, 0.573560,
		0.638685, 0.008694, 0.769419,
		26.479944, 28.497168, 40.804188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.867249, 29.106836, 40.688179>,  <26.032866, 28.491083, 40.265594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.867249, 29.106836, 40.688179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.242973, 29.004454, 40.779552>,  <26.468409, 28.943024, 40.834377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.242973, 29.004454, 40.779552>,  <25.867249, 29.106836, 40.688179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.242973, 29.004454, 40.779552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286598, 0.951432, -0.112422,
		-0.188565, 0.171068, 0.967046,
		0.939311, -0.255955, 0.228435,
		26.524767, 28.927668, 40.848083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.150766, 29.653984, 41.229317>,  <25.867249, 29.106836, 40.688179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.150766, 29.653984, 41.229317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.449442, 29.462151, 41.044945>,  <26.628647, 29.347052, 40.934322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.449442, 29.462151, 41.044945>,  <26.150766, 29.653984, 41.229317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.449442, 29.462151, 41.044945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428895, 0.876787, -0.217472,
		0.508431, -0.035305, 0.860379,
		0.746691, -0.479581, -0.460928,
		26.673449, 29.318275, 40.906666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.656193, 30.062279, 41.324020>,  <26.150766, 29.653984, 41.229317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.656193, 30.062279, 41.324020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.810236, 29.836308, 41.032116>,  <26.902662, 29.700726, 40.856972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.810236, 29.836308, 41.032116>,  <26.656193, 30.062279, 41.324020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.810236, 29.836308, 41.032116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513233, 0.788291, -0.339394,
		0.766996, -0.243834, 0.593516,
		0.385108, -0.564927, -0.729760,
		26.925768, 29.666830, 40.813187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.426146, 30.097263, 41.352127>,  <26.656193, 30.062279, 41.324020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.426146, 30.097263, 41.352127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.327217, 29.994299, 40.978481>,  <27.267860, 29.932520, 40.754292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.327217, 29.994299, 40.978481>,  <27.426146, 30.097263, 41.352127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.327217, 29.994299, 40.978481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652124, 0.668815, -0.356961,
		0.716636, -0.697443, 0.002451,
		-0.247321, -0.257409, -0.934116,
		27.253021, 29.917076, 40.698246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.125935, 30.068521, 41.028988>,  <27.426146, 30.097263, 41.352127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.125935, 30.068521, 41.028988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.844450, 30.112343, 40.748192>,  <27.675560, 30.138636, 40.579716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.844450, 30.112343, 40.748192>,  <28.125935, 30.068521, 41.028988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.844450, 30.112343, 40.748192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582720, 0.654273, -0.482043,
		0.406483, -0.748282, -0.524258,
		-0.703712, 0.109553, -0.701989,
		27.633337, 30.145208, 40.537594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.474949, 30.113266, 40.404629>,  <28.125935, 30.068521, 41.028988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.474949, 30.113266, 40.404629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.115217, 30.223682, 40.268978>,  <27.899378, 30.289932, 40.187588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.115217, 30.223682, 40.268978>,  <28.474949, 30.113266, 40.404629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.115217, 30.223682, 40.268978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431317, 0.687513, -0.584201,
		0.071889, -0.671660, -0.737363,
		-0.899331, 0.276040, -0.339124,
		27.845417, 30.306494, 40.167240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.540493, 30.167034, 39.743832>,  <28.474949, 30.113266, 40.404629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.540493, 30.167034, 39.743832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.205275, 30.378038, 39.799557>,  <28.004143, 30.504641, 39.832993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.205275, 30.378038, 39.799557>,  <28.540493, 30.167034, 39.743832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.205275, 30.378038, 39.799557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330105, 0.693538, -0.640340,
		-0.434404, -0.490649, -0.755352,
		-0.838048, 0.527512, 0.139309,
		27.953859, 30.536291, 39.841351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.317938, 30.269655, 39.059116>,  <28.540493, 30.167034, 39.743832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.317938, 30.269655, 39.059116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.167410, 30.547714, 39.304115>,  <28.077093, 30.714550, 39.451115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.167410, 30.547714, 39.304115>,  <28.317938, 30.269655, 39.059116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.167410, 30.547714, 39.304115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220839, 0.709342, -0.669376,
		-0.899785, -0.116637, -0.420455,
		-0.376320, 0.695148, 0.612497,
		28.054514, 30.756258, 39.487865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.763050, 30.683868, 38.722740>,  <28.317938, 30.269655, 39.059116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.763050, 30.683868, 38.722740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.894993, 30.958141, 38.982288>,  <27.974159, 31.122705, 39.138020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.894993, 30.958141, 38.982288>,  <27.763050, 30.683868, 38.722740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.894993, 30.958141, 38.982288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036009, 0.695982, -0.717156,
		-0.943344, 0.213193, 0.254265,
		0.329857, 0.685680, 0.648874,
		27.993950, 31.163845, 39.176952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.469601, 31.244480, 38.464497>,  <27.763050, 30.683868, 38.722740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.469601, 31.244480, 38.464497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.718941, 31.404358, 38.733326>,  <27.868546, 31.500284, 38.894623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.718941, 31.404358, 38.733326>,  <27.469601, 31.244480, 38.464497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.718941, 31.404358, 38.733326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102843, 0.810116, -0.577179,
		-0.775150, 0.428903, 0.463881,
		0.623351, 0.399693, 0.672071,
		27.905947, 31.524265, 38.934948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.204519, 31.865267, 38.612900>,  <27.469601, 31.244480, 38.464497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.204519, 31.865267, 38.612900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.597246, 31.900551, 38.680130>,  <27.832882, 31.921721, 38.720467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.597246, 31.900551, 38.680130>,  <27.204519, 31.865267, 38.612900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.597246, 31.900551, 38.680130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060198, 0.695057, -0.716430,
		-0.180019, 0.713523, 0.677110,
		0.981819, 0.088210, 0.168076,
		27.891792, 31.927013, 38.730553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.381453, 32.567902, 38.564957>,  <27.204519, 31.865267, 38.612900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.381453, 32.567902, 38.564957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.726307, 32.372372, 38.511635>,  <27.933220, 32.255054, 38.479641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.726307, 32.372372, 38.511635>,  <27.381453, 32.567902, 38.564957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.726307, 32.372372, 38.511635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237598, 0.622418, -0.745750,
		0.447513, 0.611266, 0.652753,
		0.862136, -0.488826, -0.133305,
		27.984947, 32.225723, 38.471642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.943861, 33.028812, 38.539452>,  <27.381453, 32.567902, 38.564957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.943861, 33.028812, 38.539452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.174318, 32.733440, 38.399296>,  <28.312593, 32.556217, 38.315201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.174318, 32.733440, 38.399296>,  <27.943861, 33.028812, 38.539452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.174318, 32.733440, 38.399296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447809, 0.643805, -0.620469,
		0.683759, 0.200571, 0.701602,
		0.576143, -0.738435, -0.350390,
		28.347160, 32.511909, 38.294178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.727709, 33.162098, 38.534218>,  <27.943861, 33.028812, 38.539452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.727709, 33.162098, 38.534218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.726519, 32.891094, 38.240013>,  <28.725803, 32.728493, 38.063492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.726519, 32.891094, 38.240013>,  <28.727709, 33.162098, 38.534218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.726519, 32.891094, 38.240013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560784, 0.607845, -0.562180,
		0.827957, -0.414135, 0.378126,
		-0.002976, -0.677508, -0.735510,
		28.725626, 32.687843, 38.019360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.403864, 33.129749, 38.189411>,  <28.727709, 33.162098, 38.534218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.403864, 33.129749, 38.189411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.173759, 32.979294, 37.898869>,  <29.035696, 32.889019, 37.724545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.173759, 32.979294, 37.898869>,  <29.403864, 33.129749, 38.189411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.173759, 32.979294, 37.898869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504970, 0.535276, -0.677116,
		0.643489, -0.756308, -0.117987,
		-0.575263, -0.376137, -0.726356,
		29.001181, 32.866451, 37.680962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.844669, 32.848274, 37.687935>,  <29.403864, 33.129749, 38.189411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.844669, 32.848274, 37.687935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.497099, 32.897099, 37.496075>,  <29.288557, 32.926392, 37.380959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.497099, 32.897099, 37.496075>,  <29.844669, 32.848274, 37.687935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.497099, 32.897099, 37.496075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473801, 0.485333, -0.734822,
		0.143099, -0.865767, -0.479551,
		-0.868927, 0.122059, -0.479653,
		29.236422, 32.933716, 37.352180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.498217, 33.031128, 37.993904>,  <29.844669, 32.848274, 37.687935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.498217, 33.031128, 37.993904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.504107, 33.209637, 38.351814>,  <30.507641, 33.316742, 38.566559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.504107, 33.209637, 38.351814>,  <30.498217, 33.031128, 37.993904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.504107, 33.209637, 38.351814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996196, 0.070318, -0.051464,
		-0.085886, 0.892130, -0.443541,
		0.014724, 0.446273, 0.894776,
		30.508524, 33.343517, 38.620247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.641708, 33.746979, 37.853485>,  <30.498217, 33.031128, 37.993904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.641708, 33.746979, 37.853485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.732958, 33.619213, 38.221386>,  <30.787706, 33.542553, 38.442127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.732958, 33.619213, 38.221386>,  <30.641708, 33.746979, 37.853485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.732958, 33.619213, 38.221386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973465, 0.057320, -0.221539,
		0.018042, 0.945881, 0.324013,
		0.228122, -0.319412, 0.919748,
		30.801394, 33.523388, 38.497311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.280600, 34.163921, 37.720078>,  <30.641708, 33.746979, 37.853485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.280600, 34.163921, 37.720078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.625036, 34.292564, 37.562550>,  <31.831697, 34.369751, 37.468033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.625036, 34.292564, 37.562550>,  <31.280600, 34.163921, 37.720078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.625036, 34.292564, 37.562550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361554, 0.157291, 0.918988,
		0.357496, -0.933718, 0.019164,
		0.861090, 0.321606, -0.393821,
		31.883364, 34.389046, 37.444405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.827305, 33.716381, 37.960236>,  <31.280600, 34.163921, 37.720078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.827305, 33.716381, 37.960236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.967382, 34.082851, 37.882275>,  <32.051430, 34.302734, 37.835499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.967382, 34.082851, 37.882275>,  <31.827305, 33.716381, 37.960236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.967382, 34.082851, 37.882275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357064, 0.061796, 0.932034,
		0.865949, -0.395987, -0.305493,
		0.350195, 0.916174, -0.194905,
		32.072441, 34.357704, 37.823803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.655556, 33.738197, 38.134464>,  <31.827305, 33.716381, 37.960236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.655556, 33.738197, 38.134464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.418015, 34.057339, 38.175957>,  <32.275490, 34.248825, 38.200851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.418015, 34.057339, 38.175957>,  <32.655556, 33.738197, 38.134464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.418015, 34.057339, 38.175957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205812, 0.026007, 0.978246,
		0.777804, 0.602284, -0.179653,
		-0.593854, 0.797858, 0.103729,
		32.239857, 34.296696, 38.207077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.003094, 34.444019, 38.414768>,  <32.655556, 33.738197, 38.134464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.003094, 34.444019, 38.414768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.619999, 34.375828, 38.507442>,  <32.390141, 34.334911, 38.563049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.619999, 34.375828, 38.507442>,  <33.003094, 34.444019, 38.414768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.619999, 34.375828, 38.507442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242891, -0.047791, 0.968876,
		-0.154100, 0.984202, 0.087179,
		-0.957736, -0.170479, 0.231689,
		32.332680, 34.324684, 38.576950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.819073, 34.989380, 38.766544>,  <33.003094, 34.444019, 38.414768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.819073, 34.989380, 38.766544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.587231, 34.681934, 38.874840>,  <32.448124, 34.497467, 38.939816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.587231, 34.681934, 38.874840>,  <32.819073, 34.989380, 38.766544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.587231, 34.681934, 38.874840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246124, 0.151602, 0.957309,
		-0.776841, 0.621495, 0.101304,
		-0.579605, -0.768610, 0.270735,
		32.413349, 34.451351, 38.956062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.290710, 35.224419, 39.286274>,  <32.819073, 34.989380, 38.766544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.290710, 35.224419, 39.286274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.406490, 34.841545, 39.284359>,  <32.475960, 34.611820, 39.283211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.406490, 34.841545, 39.284359>,  <32.290710, 35.224419, 39.286274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.406490, 34.841545, 39.284359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135474, 0.036012, 0.990126,
		-0.947558, -0.287240, 0.140097,
		0.289449, -0.957182, -0.004790,
		32.493324, 34.554390, 39.282921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.089008, 34.920597, 39.925968>,  <32.290710, 35.224419, 39.286274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.089008, 34.920597, 39.925968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.347622, 34.643799, 39.797512>,  <32.502792, 34.477718, 39.720440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.347622, 34.643799, 39.797512>,  <32.089008, 34.920597, 39.925968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.347622, 34.643799, 39.797512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156651, -0.291561, 0.943638,
		-0.746626, -0.660404, -0.080103,
		0.646537, -0.691996, -0.321139,
		32.541584, 34.436199, 39.701172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.875265, 34.203857, 40.184185>,  <32.089008, 34.920597, 39.925968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.875265, 34.203857, 40.184185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.266983, 34.189091, 40.104565>,  <32.502014, 34.180229, 40.056793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.266983, 34.189091, 40.104565>,  <31.875265, 34.203857, 40.184185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.266983, 34.189091, 40.104565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192909, -0.128071, 0.972823,
		-0.061403, -0.991078, -0.118298,
		0.979293, -0.036914, -0.199052,
		32.560772, 34.178017, 40.044849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.158466, 33.748180, 40.613346>,  <31.875265, 34.203857, 40.184185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.158466, 33.748180, 40.613346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.496494, 33.926033, 40.494587>,  <32.699310, 34.032745, 40.423332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.496494, 33.926033, 40.494587>,  <32.158466, 33.748180, 40.613346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.496494, 33.926033, 40.494587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399023, -0.154906, 0.903761,
		0.355851, -0.882216, -0.308327,
		0.845074, 0.444634, -0.296901,
		32.750015, 34.059422, 40.405518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.629723, 33.282734, 40.834827>,  <32.158466, 33.748180, 40.613346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.629723, 33.282734, 40.834827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.791660, 33.644207, 40.779034>,  <32.888821, 33.861092, 40.745560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.791660, 33.644207, 40.779034>,  <32.629723, 33.282734, 40.834827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.791660, 33.644207, 40.779034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530112, -0.107666, 0.841064,
		0.745041, -0.414437, -0.522643,
		0.404839, 0.903687, -0.139482,
		32.913113, 33.915314, 40.737190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.366913, 33.236340, 40.833321>,  <32.629723, 33.282734, 40.834827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.366913, 33.236340, 40.833321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.292820, 33.618469, 40.925442>,  <33.248363, 33.847748, 40.980713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.292820, 33.618469, 40.925442>,  <33.366913, 33.236340, 40.833321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.292820, 33.618469, 40.925442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708412, -0.032612, 0.705045,
		0.681060, 0.293743, -0.670725,
		-0.185228, 0.955328, 0.230302,
		33.237251, 33.905067, 40.994534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.993603, 33.483551, 41.065990>,  <33.366913, 33.236340, 40.833321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.993603, 33.483551, 41.065990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.774452, 33.792641, 41.194195>,  <33.642963, 33.978096, 41.271118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.774452, 33.792641, 41.194195>,  <33.993603, 33.483551, 41.065990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.774452, 33.792641, 41.194195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547902, 0.041922, 0.835492,
		0.632171, 0.633352, -0.446347,
		-0.547872, 0.772728, 0.320512,
		33.610092, 34.024460, 41.290348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.467140, 34.050751, 41.184261>,  <33.993603, 33.483551, 41.065990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.467140, 34.050751, 41.184261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.132103, 34.060787, 41.402550>,  <33.931080, 34.066811, 41.533524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.132103, 34.060787, 41.402550>,  <34.467140, 34.050751, 41.184261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.132103, 34.060787, 41.402550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545841, -0.002265, 0.837886,
		0.022261, 0.999683, -0.011799,
		-0.837593, 0.025092, 0.545718,
		33.880825, 34.068314, 41.566265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.696957, 34.564705, 41.785599>,  <34.467140, 34.050751, 41.184261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.696957, 34.564705, 41.785599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.364063, 34.376026, 41.902145>,  <34.164330, 34.262821, 41.972073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.364063, 34.376026, 41.902145>,  <34.696957, 34.564705, 41.785599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.364063, 34.376026, 41.902145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310474, 0.038907, 0.949785,
		-0.459343, 0.880904, 0.114069,
		-0.832232, -0.471693, 0.291369,
		34.114395, 34.234520, 41.989555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.494122, 34.960205, 42.364460>,  <34.696957, 34.564705, 41.785599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.494122, 34.960205, 42.364460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.336987, 34.593029, 42.386589>,  <34.242706, 34.372723, 42.399864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.336987, 34.593029, 42.386589>,  <34.494122, 34.960205, 42.364460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.336987, 34.593029, 42.386589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351116, -0.094123, 0.931589,
		-0.849937, 0.385391, 0.359279,
		-0.392842, -0.917941, 0.055318,
		34.219135, 34.317646, 42.403183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.134609, 34.875679, 43.032223>,  <34.494122, 34.960205, 42.364460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.134609, 34.875679, 43.032223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.168407, 34.493023, 42.920719>,  <34.188686, 34.263432, 42.853817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.168407, 34.493023, 42.920719>,  <34.134609, 34.875679, 43.032223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.168407, 34.493023, 42.920719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398348, -0.224002, 0.889462,
		-0.913334, -0.186196, 0.362148,
		0.084492, -0.956637, -0.278760,
		34.193756, 34.206032, 42.837090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.875771, 34.577660, 43.627380>,  <34.134609, 34.875679, 43.032223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.875771, 34.577660, 43.627380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.128700, 34.353054, 43.413891>,  <34.280457, 34.218288, 43.285797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.128700, 34.353054, 43.413891>,  <33.875771, 34.577660, 43.627380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.128700, 34.353054, 43.413891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423015, -0.326914, 0.845095,
		-0.649017, -0.760149, 0.030814,
		0.632325, -0.561516, -0.533728,
		34.318398, 34.184601, 43.253773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.824188, 33.917053, 43.977406>,  <33.875771, 34.577660, 43.627380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.824188, 33.917053, 43.977406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.170292, 33.936127, 43.777782>,  <34.377953, 33.947571, 43.658009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.170292, 33.936127, 43.777782>,  <33.824188, 33.917053, 43.977406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.170292, 33.936127, 43.777782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477708, -0.380390, 0.791895,
		-0.152074, -0.923596, -0.351915,
		0.865256, 0.047685, -0.499057,
		34.429871, 33.950432, 43.628067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.064327, 33.232082, 43.862591>,  <33.824188, 33.917053, 43.977406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.064327, 33.232082, 43.862591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.363136, 33.496025, 43.894951>,  <34.542423, 33.654388, 43.914368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.363136, 33.496025, 43.894951>,  <34.064327, 33.232082, 43.862591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.363136, 33.496025, 43.894951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316347, -0.459863, 0.829729,
		0.584702, -0.594238, -0.552273,
		0.747026, 0.659854, 0.080897,
		34.587246, 33.693981, 43.919220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.638813, 32.780853, 43.929504>,  <34.064327, 33.232082, 43.862591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.638813, 32.780853, 43.929504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.702663, 33.142639, 44.087727>,  <34.740974, 33.359711, 44.182659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.702663, 33.142639, 44.087727>,  <34.638813, 32.780853, 43.929504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.702663, 33.142639, 44.087727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393466, -0.425783, 0.814797,
		0.905375, 0.025576, -0.423842,
		0.159626, 0.904464, 0.395556,
		34.750549, 33.413979, 44.206394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.402370, 32.730885, 44.320202>,  <34.638813, 32.780853, 43.929504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.402370, 32.730885, 44.320202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.226936, 33.058170, 44.468884>,  <35.121677, 33.254543, 44.558094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.226936, 33.058170, 44.468884>,  <35.402370, 32.730885, 44.320202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.226936, 33.058170, 44.468884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361190, -0.218249, 0.906592,
		0.822912, 0.531876, -0.199810,
		-0.438587, 0.818215, 0.371708,
		35.095360, 33.303635, 44.580395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.874203, 33.005318, 44.681591>,  <35.402370, 32.730885, 44.320202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.874203, 33.005318, 44.681591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.541817, 33.159851, 44.841709>,  <35.342384, 33.252571, 44.937778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.541817, 33.159851, 44.841709>,  <35.874203, 33.005318, 44.681591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.541817, 33.159851, 44.841709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311911, -0.272268, 0.910265,
		0.460656, 0.881257, 0.105743,
		-0.830968, 0.386337, 0.400296,
		35.292526, 33.275753, 44.961800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.157177, 33.429638, 45.137810>,  <35.874203, 33.005318, 44.681591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.157177, 33.429638, 45.137810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.776497, 33.371880, 45.246189>,  <35.548088, 33.337227, 45.311218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.776497, 33.371880, 45.246189>,  <36.157177, 33.429638, 45.137810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.776497, 33.371880, 45.246189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272536, 0.009057, 0.962103,
		-0.141374, 0.989479, 0.030732,
		-0.951703, -0.144392, 0.270949,
		35.490986, 33.328564, 45.327473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.086655, 33.790825, 45.719460>,  <36.157177, 33.429638, 45.137810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.086655, 33.790825, 45.719460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.752777, 33.571732, 45.742310>,  <35.552448, 33.440273, 45.756020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.752777, 33.571732, 45.742310>,  <36.086655, 33.790825, 45.719460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.752777, 33.571732, 45.742310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109385, -0.063235, 0.991986,
		-0.539736, 0.834257, 0.112696,
		-0.834698, -0.547738, 0.057125,
		35.502369, 33.407410, 45.759449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.583549, 34.101505, 46.161873>,  <36.086655, 33.790825, 45.719460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.583549, 34.101505, 46.161873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.550919, 33.703552, 46.138016>,  <35.531342, 33.464783, 46.123703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.550919, 33.703552, 46.138016>,  <35.583549, 34.101505, 46.161873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.550919, 33.703552, 46.138016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040030, -0.063064, 0.997206,
		-0.995863, 0.078961, 0.044969,
		-0.081576, -0.994881, -0.059642,
		35.526447, 33.405087, 46.120125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.028664, 33.981213, 46.616917>,  <35.583549, 34.101505, 46.161873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.028664, 33.981213, 46.616917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.176670, 33.613194, 46.565388>,  <35.265476, 33.392380, 46.534470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.176670, 33.613194, 46.565388>,  <35.028664, 33.981213, 46.616917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.176670, 33.613194, 46.565388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098382, -0.176688, 0.979338,
		-0.923800, -0.349700, -0.155894,
		0.370019, -0.920050, -0.128820,
		35.287674, 33.337177, 46.526741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.499866, 33.511204, 46.857510>,  <35.028664, 33.981213, 46.616917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.499866, 33.511204, 46.857510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.860447, 33.338886, 46.874527>,  <35.076794, 33.235497, 46.884735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.860447, 33.338886, 46.874527>,  <34.499866, 33.511204, 46.857510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.860447, 33.338886, 46.874527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051431, -0.009010, 0.998636,
		-0.429822, -0.902406, -0.030278,
		0.901447, -0.430793, 0.042539,
		35.130882, 33.209648, 46.887287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.469723, 32.916454, 47.240376>,  <34.499866, 33.511204, 46.857510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.469723, 32.916454, 47.240376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.857708, 33.005943, 47.278587>,  <35.090500, 33.059639, 47.301514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.857708, 33.005943, 47.278587>,  <34.469723, 32.916454, 47.240376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.857708, 33.005943, 47.278587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073805, -0.103564, 0.991881,
		0.231803, -0.969134, -0.083940,
		0.969959, 0.223725, 0.095534,
		35.148697, 33.073059, 47.307247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.644684, 32.525593, 47.791496>,  <34.469723, 32.916454, 47.240376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.644684, 32.525593, 47.791496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.947491, 32.786537, 47.776802>,  <35.129177, 32.943104, 47.767986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.947491, 32.786537, 47.776802>,  <34.644684, 32.525593, 47.791496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.947491, 32.786537, 47.776802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048505, -0.000035, 0.998823,
		0.651587, -0.757912, -0.031669,
		0.757021, 0.652356, -0.036740,
		35.174599, 32.982243, 47.765781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.287594, 32.240730, 48.099293>,  <34.644684, 32.525593, 47.791496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.287594, 32.240730, 48.099293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.347923, 32.636024, 48.109379>,  <35.384121, 32.873203, 48.115429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.347923, 32.636024, 48.109379>,  <35.287594, 32.240730, 48.099293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.347923, 32.636024, 48.109379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050087, -0.033112, 0.998196,
		0.987291, -0.149291, -0.054492,
		0.150826, 0.988239, 0.025214,
		35.393169, 32.932495, 48.116943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.744411, 32.393574, 48.688850>,  <35.287594, 32.240730, 48.099293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.744411, 32.393574, 48.688850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.582485, 32.748070, 48.598778>,  <35.485329, 32.960766, 48.544735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.582485, 32.748070, 48.598778>,  <35.744411, 32.393574, 48.688850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.582485, 32.748070, 48.598778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006426, 0.243501, 0.969880,
		0.914374, 0.394074, -0.092879,
		-0.404820, 0.886235, -0.225184,
		35.461040, 33.013939, 48.531223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.206596, 32.905991, 48.906788>,  <35.744411, 32.393574, 48.688850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.206596, 32.905991, 48.906788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.838173, 33.057339, 48.869942>,  <35.617119, 33.148148, 48.847836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.838173, 33.057339, 48.869942>,  <36.206596, 32.905991, 48.906788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.838173, 33.057339, 48.869942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031580, 0.308327, 0.950756,
		0.388141, 0.872793, -0.295936,
		-0.921059, 0.378373, -0.092111,
		35.561855, 33.170853, 48.842308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.344879, 33.569870, 49.143852>,  <36.206596, 32.905991, 48.906788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.344879, 33.569870, 49.143852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.958950, 33.465252, 49.154579>,  <35.727394, 33.402481, 49.161015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.958950, 33.465252, 49.154579>,  <36.344879, 33.569870, 49.143852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.958950, 33.465252, 49.154579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016115, 0.160636, 0.986882,
		-0.262422, 0.951730, -0.159200,
		-0.964819, -0.261545, 0.026817,
		35.669506, 33.386787, 49.162624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.015018, 34.151588, 49.493988>,  <36.344879, 33.569870, 49.143852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.015018, 34.151588, 49.493988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.755520, 33.848476, 49.521969>,  <35.599819, 33.666607, 49.538757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.755520, 33.848476, 49.521969>,  <36.015018, 34.151588, 49.493988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.755520, 33.848476, 49.521969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062097, 0.144323, 0.987580,
		-0.758467, 0.636345, -0.140685,
		-0.648746, -0.757784, 0.069949,
		35.560898, 33.621140, 49.542953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.573704, 34.392128, 49.987774>,  <36.015018, 34.151588, 49.493988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.573704, 34.392128, 49.987774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.540310, 33.994064, 49.967049>,  <35.520275, 33.755226, 49.954613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.540310, 33.994064, 49.967049>,  <35.573704, 34.392128, 49.987774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.540310, 33.994064, 49.967049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191761, -0.067067, 0.979148,
		-0.977884, 0.071809, 0.196432,
		-0.083485, -0.995161, -0.051813,
		35.515263, 33.695515, 49.951504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.176792, 34.180290, 50.567295>,  <35.573704, 34.392128, 49.987774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.176792, 34.180290, 50.567295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.308231, 33.812599, 50.480541>,  <35.387093, 33.591984, 50.428490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.308231, 33.812599, 50.480541>,  <35.176792, 34.180290, 50.567295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.308231, 33.812599, 50.480541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234375, -0.143094, 0.961558,
		-0.914928, -0.366797, 0.168424,
		0.328596, -0.919230, -0.216888,
		35.406811, 33.536831, 50.415474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.832466, 33.734463, 51.075546>,  <35.176792, 34.180290, 50.567295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.832466, 33.734463, 51.075546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.159332, 33.546421, 50.942131>,  <35.355453, 33.433598, 50.862083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.159332, 33.546421, 50.942131>,  <34.832466, 33.734463, 51.075546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.159332, 33.546421, 50.942131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278100, -0.185295, 0.942511,
		-0.504878, -0.862943, -0.020681,
		0.817165, -0.470102, -0.333536,
		35.404480, 33.405392, 50.842072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.854603, 33.076229, 51.397579>,  <34.832466, 33.734463, 51.075546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.854603, 33.076229, 51.397579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.231537, 33.170353, 51.302391>,  <35.457699, 33.226826, 51.245277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.231537, 33.170353, 51.302391>,  <34.854603, 33.076229, 51.397579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.231537, 33.170353, 51.302391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275993, -0.144227, 0.950277,
		0.189284, -0.961160, -0.200854,
		0.942338, 0.235307, -0.237973,
		35.514236, 33.240944, 51.230999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.256851, 32.702396, 51.932270>,  <34.854603, 33.076229, 51.397579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.256851, 32.702396, 51.932270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.517036, 32.940380, 51.743412>,  <35.673149, 33.083168, 51.630096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.517036, 32.940380, 51.743412>,  <35.256851, 32.702396, 51.932270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.517036, 32.940380, 51.743412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621994, -0.060492, 0.780682,
		0.435910, -0.801479, -0.409407,
		0.650466, 0.594955, -0.472146,
		35.712177, 33.118866, 51.601768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.991089, 32.316780, 51.783482>,  <35.256851, 32.702396, 51.932270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.991089, 32.316780, 51.783482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.040386, 32.713516, 51.796535>,  <36.069965, 32.951557, 51.804367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.040386, 32.713516, 51.796535>,  <35.991089, 32.316780, 51.783482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.040386, 32.713516, 51.796535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742234, -0.113961, 0.660380,
		0.658710, -0.057165, -0.750222,
		0.123247, 0.991839, 0.032637,
		36.077362, 33.011066, 51.806328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.622753, 32.460140, 51.622269>,  <35.991089, 32.316780, 51.783482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.622753, 32.460140, 51.622269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.544155, 32.800076, 51.817883>,  <36.496994, 33.004036, 51.935249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.544155, 32.800076, 51.817883>,  <36.622753, 32.460140, 51.622269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.544155, 32.800076, 51.817883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813487, -0.137138, 0.565183,
		0.547382, 0.508882, -0.664389,
		-0.196498, 0.849843, 0.489035,
		36.485207, 33.055027, 51.964592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232529, 32.702129, 51.797577>,  <36.622753, 32.460140, 51.622269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.232529, 32.702129, 51.797577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.989815, 32.920101, 52.029049>,  <36.844185, 33.050884, 52.167931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.989815, 32.920101, 52.029049>,  <37.232529, 32.702129, 51.797577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.989815, 32.920101, 52.029049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600078, -0.163381, 0.783079,
		0.521265, 0.822412, -0.227861,
		-0.606786, 0.544926, 0.578676,
		36.807777, 33.083580, 52.202652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.720181, 33.074776, 52.212322>,  <37.232529, 32.702129, 51.797577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.720181, 33.074776, 52.212322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.372856, 33.108574, 52.407829>,  <37.164463, 33.128853, 52.525135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.372856, 33.108574, 52.407829>,  <37.720181, 33.074776, 52.212322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.372856, 33.108574, 52.407829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486772, -0.044224, 0.872409,
		0.095333, 0.995442, -0.002732,
		-0.868311, 0.084499, 0.488769,
		37.112362, 33.133923, 52.554459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.823277, 33.575386, 52.602825>,  <37.720181, 33.074776, 52.212322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.823277, 33.575386, 52.602825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.519852, 33.391300, 52.787338>,  <37.337795, 33.280849, 52.898048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.519852, 33.391300, 52.787338>,  <37.823277, 33.575386, 52.602825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.519852, 33.391300, 52.787338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501389, 0.039885, 0.864302,
		-0.416162, 0.886912, 0.200491,
		-0.758563, -0.460214, 0.461287,
		37.292282, 33.253235, 52.925724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.762794, 33.952229, 53.238110>,  <37.823277, 33.575386, 52.602825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.762794, 33.952229, 53.238110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.608097, 33.585503, 53.277870>,  <37.515278, 33.365467, 53.301727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.608097, 33.585503, 53.277870>,  <37.762794, 33.952229, 53.238110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.608097, 33.585503, 53.277870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305575, -0.025702, 0.951821,
		-0.870087, 0.398489, 0.290096,
		-0.386746, -0.916813, 0.099406,
		37.492073, 33.310459, 53.307693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.215290, 33.935081, 53.793983>,  <37.762794, 33.952229, 53.238110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.215290, 33.935081, 53.793983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.382893, 33.576458, 53.736549>,  <37.483456, 33.361286, 53.702087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.382893, 33.576458, 53.736549>,  <37.215290, 33.935081, 53.793983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.382893, 33.576458, 53.736549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422040, 0.052296, 0.905068,
		-0.803936, -0.439830, 0.400296,
		0.419010, -0.896557, -0.143584,
		37.508595, 33.307491, 53.693474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.962521, 33.466312, 54.345638>,  <37.215290, 33.935081, 53.793983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.962521, 33.466312, 54.345638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.329105, 33.382927, 54.209030>,  <37.549057, 33.332893, 54.127064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.329105, 33.382927, 54.209030>,  <36.962521, 33.466312, 54.345638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.329105, 33.382927, 54.209030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347980, -0.006053, 0.937482,
		-0.197501, -0.978011, 0.066995,
		0.916462, -0.208467, -0.341524,
		37.604046, 33.320389, 54.106571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.297348, 33.299355, 54.996681>,  <36.962521, 33.466312, 54.345638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.297348, 33.299355, 54.996681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.598068, 33.400742, 54.753193>,  <37.778500, 33.461575, 54.607098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.598068, 33.400742, 54.753193>,  <37.297348, 33.299355, 54.996681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.598068, 33.400742, 54.753193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539040, 0.295448, 0.788762,
		0.379776, -0.921120, 0.085487,
		0.751802, 0.253472, -0.608725,
		37.823608, 33.476784, 54.570576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.600834, 32.650173, 55.089363>,  <37.297348, 33.299355, 54.996681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.600834, 32.650173, 55.089363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.836647, 32.492603, 54.807289>,  <37.978134, 32.398064, 54.638046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.836647, 32.492603, 54.807289>,  <37.600834, 32.650173, 55.089363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.836647, 32.492603, 54.807289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737494, -0.093606, 0.668835,
		-0.329477, -0.914365, 0.235331,
		0.589531, -0.393921, -0.705181,
		38.013508, 32.374428, 54.595734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.995716, 32.033234, 55.414623>,  <37.600834, 32.650173, 55.089363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.995716, 32.033234, 55.414623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.168396, 32.190083, 55.089691>,  <38.272003, 32.284191, 54.894733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.168396, 32.190083, 55.089691>,  <37.995716, 32.033234, 55.414623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.168396, 32.190083, 55.089691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894391, -0.069228, 0.441897,
		0.117043, -0.917304, -0.380598,
		0.431702, 0.392124, -0.812325,
		38.297905, 32.307720, 54.845993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.666794, 31.628567, 55.405918>,  <37.995716, 32.033234, 55.414623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.666794, 31.628567, 55.405918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.679241, 31.963560, 55.187687>,  <38.686710, 32.164555, 55.056747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.679241, 31.963560, 55.187687>,  <38.666794, 31.628567, 55.405918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.679241, 31.963560, 55.187687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999135, -0.011007, 0.040090,
		0.027570, -0.546351, -0.837103,
		0.031118, 0.837484, -0.545575,
		38.688576, 32.214806, 55.024014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.227436, 31.483955, 55.008980>,  <38.666794, 31.628567, 55.405918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.227436, 31.483955, 55.008980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.131397, 31.870592, 55.044884>,  <39.073772, 32.102573, 55.066425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.131397, 31.870592, 55.044884>,  <39.227436, 31.483955, 55.008980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.131397, 31.870592, 55.044884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946004, 0.212236, 0.245014,
		0.217778, 0.143738, -0.965356,
		-0.240101, 0.966590, 0.089756,
		39.059368, 32.160568, 55.071812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.937511, 31.689486, 55.394512>,  <39.227436, 31.483955, 55.008980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.937511, 31.689486, 55.394512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.885021, 31.782082, 55.780090>,  <39.853527, 31.837639, 56.011436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.885021, 31.782082, 55.780090>,  <39.937511, 31.689486, 55.394512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.885021, 31.782082, 55.780090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.982671, -0.158778, -0.095641,
		0.130913, -0.959792, 0.248316,
		-0.131222, 0.231492, 0.963946,
		39.845654, 31.851530, 56.069275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.700054, 30.981106, 55.784702>,  <39.937511, 31.689486, 55.394512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.700054, 30.981106, 55.784702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.571667, 31.202944, 56.091793>,  <39.494633, 31.336046, 56.276047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.571667, 31.202944, 56.091793>,  <39.700054, 30.981106, 55.784702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.571667, 31.202944, 56.091793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869027, -0.494729, -0.005938,
		0.376522, -0.669079, 0.640753,
		-0.320972, 0.554596, 0.767725,
		39.475376, 31.369322, 56.322109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.444275, 30.540792, 55.213959>,  <39.700054, 30.981106, 55.784702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.444275, 30.540792, 55.213959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.180653, 30.322630, 55.421101>,  <39.022480, 30.191732, 55.545387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.180653, 30.322630, 55.421101>,  <39.444275, 30.540792, 55.213959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.180653, 30.322630, 55.421101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733445, 0.313717, -0.603026,
		0.166433, -0.777248, -0.606783,
		-0.659059, -0.545405, 0.517856,
		38.982937, 30.159008, 55.576458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.268925, 30.073780, 54.577366>,  <39.444275, 30.540792, 55.213959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.268925, 30.073780, 54.577366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.901386, 30.109659, 54.731079>,  <38.680862, 30.131186, 54.823307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.901386, 30.109659, 54.731079>,  <39.268925, 30.073780, 54.577366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.901386, 30.109659, 54.731079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377408, 0.084692, -0.922166,
		-0.115263, -0.992362, -0.043966,
		-0.918846, 0.089698, 0.384287,
		38.625732, 30.136568, 54.846367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.776871, 29.726192, 54.079243>,  <39.268925, 30.073780, 54.577366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.776871, 29.726192, 54.079243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.546589, 29.976048, 54.290298>,  <38.408421, 30.125959, 54.416931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.546589, 29.976048, 54.290298>,  <38.776871, 29.726192, 54.079243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.546589, 29.976048, 54.290298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713722, -0.069031, -0.697019,
		-0.398960, -0.777859, 0.485557,
		-0.575701, 0.624636, 0.527635,
		38.373878, 30.163439, 54.448589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.123272, 29.395531, 54.127155>,  <38.776871, 29.726192, 54.079243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.123272, 29.395531, 54.127155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.145325, 29.794847, 54.119400>,  <38.158558, 30.034437, 54.114746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.145325, 29.794847, 54.119400>,  <38.123272, 29.395531, 54.127155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.145325, 29.794847, 54.119400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377174, 0.002842, -0.926138,
		-0.924500, 0.058375, 0.376686,
		0.055134, 0.998291, -0.019390,
		38.161865, 30.094336, 54.113583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.430363, 29.697454, 54.059818>,  <38.123272, 29.395531, 54.127155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.430363, 29.697454, 54.059818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.719662, 29.928307, 53.908115>,  <37.893242, 30.066818, 53.817093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.719662, 29.928307, 53.908115>,  <37.430363, 29.697454, 54.059818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.719662, 29.928307, 53.908115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442618, -0.034165, -0.896060,
		-0.530100, 0.815938, 0.230738,
		0.723245, 0.577130, -0.379259,
		37.936634, 30.101446, 53.794338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.089195, 30.252911, 53.632610>,  <37.430363, 29.697454, 54.059818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.089195, 30.252911, 53.632610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.474155, 30.250078, 53.523987>,  <37.705132, 30.248379, 53.458813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.474155, 30.250078, 53.523987>,  <37.089195, 30.252911, 53.632610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.474155, 30.250078, 53.523987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271592, -0.004897, -0.962400,
		0.005485, 0.999963, -0.006636,
		0.962397, -0.007081, -0.271555,
		37.762875, 30.247953, 53.442520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066414, 30.658806, 53.117218>,  <37.089195, 30.252911, 53.632610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.066414, 30.658806, 53.117218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.403912, 30.452482, 53.057831>,  <37.606411, 30.328688, 53.022198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.403912, 30.452482, 53.057831>,  <37.066414, 30.658806, 53.117218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.403912, 30.452482, 53.057831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230536, -0.098449, -0.968071,
		0.484721, 0.851029, -0.201978,
		0.843741, -0.515807, -0.148473,
		37.657032, 30.297741, 53.013290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.275345, 31.015345, 52.530704>,  <37.066414, 30.658806, 53.117218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.275345, 31.015345, 52.530704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.462585, 30.661875, 52.531384>,  <37.574928, 30.449793, 52.531792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.462585, 30.661875, 52.531384>,  <37.275345, 31.015345, 52.530704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.462585, 30.661875, 52.531384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057309, -0.032273, -0.997835,
		0.881815, 0.466990, -0.065750,
		0.468101, -0.883673, 0.001696,
		37.603016, 30.396772, 52.531891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.831768, 31.036531, 52.153084>,  <37.275345, 31.015345, 52.530704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.831768, 31.036531, 52.153084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.745777, 30.646385, 52.133297>,  <37.694183, 30.412298, 52.121426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.745777, 30.646385, 52.133297>,  <37.831768, 31.036531, 52.153084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.745777, 30.646385, 52.133297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148252, 0.017476, -0.988795,
		0.965301, -0.219902, 0.140843,
		-0.214977, -0.975365, -0.049470,
		37.681286, 30.353775, 52.118454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.330639, 30.761703, 51.765285>,  <37.831768, 31.036531, 52.153084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.330639, 30.761703, 51.765285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.058990, 30.468094, 51.764793>,  <37.896000, 30.291927, 51.764496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.058990, 30.468094, 51.764793>,  <38.330639, 30.761703, 51.765285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.058990, 30.468094, 51.764793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072215, -0.065139, -0.995260,
		0.730465, -0.675992, 0.097245,
		-0.679122, -0.734024, -0.001234,
		37.855255, 30.247887, 51.764423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.619297, 30.264940, 51.295921>,  <38.330639, 30.761703, 51.765285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.619297, 30.264940, 51.295921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.227531, 30.196808, 51.339264>,  <37.992474, 30.155928, 51.365269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.227531, 30.196808, 51.339264>,  <38.619297, 30.264940, 51.295921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.227531, 30.196808, 51.339264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079699, -0.166884, -0.982750,
		0.185477, -0.971152, 0.149873,
		-0.979411, -0.170333, 0.108353,
		37.933708, 30.145708, 51.371769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.551991, 29.755260, 50.850555>,  <38.619297, 30.264940, 51.295921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.551991, 29.755260, 50.850555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.188980, 29.912600, 50.909447>,  <37.971172, 30.007004, 50.944782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.188980, 29.912600, 50.909447>,  <38.551991, 29.755260, 50.850555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.188980, 29.912600, 50.909447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228591, -0.168524, -0.958825,
		-0.352342, -0.903812, 0.242855,
		-0.907525, 0.393348, 0.147225,
		37.916721, 30.030603, 50.953613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.080490, 29.285564, 50.523609>,  <38.551991, 29.755260, 50.850555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.080490, 29.285564, 50.523609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.874313, 29.628132, 50.535385>,  <37.750607, 29.833673, 50.542450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.874313, 29.628132, 50.535385>,  <38.080490, 29.285564, 50.523609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.874313, 29.628132, 50.535385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243915, -0.113691, -0.963110,
		-0.821479, -0.503606, 0.267495,
		-0.515440, 0.856420, 0.029443,
		37.719681, 29.885057, 50.544216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.529579, 29.165398, 50.165169>,  <38.080490, 29.285564, 50.523609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.529579, 29.165398, 50.165169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.508362, 29.564600, 50.178841>,  <37.495632, 29.804121, 50.187042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.508362, 29.564600, 50.178841>,  <37.529579, 29.165398, 50.165169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.508362, 29.564600, 50.178841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207985, 0.022436, -0.977874,
		-0.976692, -0.058979, 0.206381,
		-0.053044, 0.998007, 0.034180,
		37.492447, 29.864002, 50.189095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.830513, 29.476707, 49.735561>,  <37.529579, 29.165398, 50.165169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.830513, 29.476707, 49.735561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.075615, 29.790930, 49.770039>,  <37.222675, 29.979464, 49.790726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.075615, 29.790930, 49.770039>,  <36.830513, 29.476707, 49.735561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.075615, 29.790930, 49.770039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145194, 0.219117, -0.964835,
		-0.776818, 0.578697, 0.248324,
		0.612759, 0.785556, 0.086191,
		37.259441, 30.026596, 49.795895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.518894, 29.919027, 49.317818>,  <36.830513, 29.476707, 49.735561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.518894, 29.919027, 49.317818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.892960, 30.057722, 49.346802>,  <37.117397, 30.140940, 49.364193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.892960, 30.057722, 49.346802>,  <36.518894, 29.919027, 49.317818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.892960, 30.057722, 49.346802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028931, 0.278643, -0.959959,
		-0.353045, 0.895618, 0.270608,
		0.935159, 0.346737, 0.072462,
		37.173508, 30.161743, 49.368542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.512993, 30.634069, 49.120575>,  <36.518894, 29.919027, 49.317818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.512993, 30.634069, 49.120575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.886021, 30.499092, 49.069275>,  <37.109837, 30.418106, 49.038494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.886021, 30.499092, 49.069275>,  <36.512993, 30.634069, 49.120575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.886021, 30.499092, 49.069275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022389, 0.300528, -0.953510,
		0.360297, 0.892085, 0.272708,
		0.932569, -0.337441, -0.128252,
		37.165791, 30.397860, 49.030800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.843388, 31.176966, 48.831535>,  <36.512993, 30.634069, 49.120575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.843388, 31.176966, 48.831535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.073433, 30.869480, 48.719589>,  <37.211460, 30.684988, 48.652420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.073433, 30.869480, 48.719589>,  <36.843388, 31.176966, 48.831535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.073433, 30.869480, 48.719589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066815, 0.296824, -0.952592,
		0.815343, 0.566544, 0.119345,
		0.575109, -0.768716, -0.279867,
		37.245964, 30.638865, 48.635628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.205978, 31.510885, 48.294941>,  <36.843388, 31.176966, 48.831535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.205978, 31.510885, 48.294941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.248199, 31.113592, 48.275551>,  <37.273533, 30.875217, 48.263916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.248199, 31.113592, 48.275551>,  <37.205978, 31.510885, 48.294941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.248199, 31.113592, 48.275551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065287, 0.055564, -0.996318,
		0.992268, 0.102002, 0.070710,
		0.105556, -0.993231, -0.048475,
		37.279865, 30.815622, 48.261009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.766026, 31.422110, 47.858414>,  <37.205978, 31.510885, 48.294941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.766026, 31.422110, 47.858414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.559120, 31.079975, 47.870026>,  <37.434978, 30.874695, 47.876991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.559120, 31.079975, 47.870026>,  <37.766026, 31.422110, 47.858414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.559120, 31.079975, 47.870026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027453, -0.017317, -0.999473,
		0.855388, -0.517784, -0.014524,
		-0.517260, -0.855336, 0.029027,
		37.403942, 30.823374, 47.878735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.067150, 30.944164, 47.457066>,  <37.766026, 31.422110, 47.858414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.067150, 30.944164, 47.457066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.684536, 30.828705, 47.473667>,  <37.454967, 30.759428, 47.483627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.684536, 30.828705, 47.473667>,  <38.067150, 30.944164, 47.457066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.684536, 30.828705, 47.473667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009486, -0.111448, -0.993725,
		0.291465, -0.950926, 0.103866,
		-0.956535, -0.288651, 0.041504,
		37.397575, 30.742109, 47.486118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.060120, 30.713438, 46.861942>,  <38.067150, 30.944164, 47.457066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.060120, 30.713438, 46.861942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.680050, 30.668375, 46.978207>,  <37.452007, 30.641336, 47.047966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.680050, 30.668375, 46.978207>,  <38.060120, 30.713438, 46.861942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.680050, 30.668375, 46.978207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293684, 0.010887, -0.955841,
		0.104520, -0.993574, -0.043431,
		-0.950171, -0.112659, 0.290659,
		37.394997, 30.634577, 47.065403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.774399, 30.171103, 46.519630>,  <38.060120, 30.713438, 46.861942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.774399, 30.171103, 46.519630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.473152, 30.410639, 46.628593>,  <37.292404, 30.554361, 46.693970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.473152, 30.410639, 46.628593>,  <37.774399, 30.171103, 46.519630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.473152, 30.410639, 46.628593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408310, -0.100803, -0.907260,
		-0.515845, -0.794499, 0.320429,
		-0.753118, 0.598841, 0.272403,
		37.247215, 30.590290, 46.710316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.128128, 29.831009, 46.173923>,  <37.774399, 30.171103, 46.519630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.128128, 29.831009, 46.173923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.044453, 30.211153, 46.266064>,  <36.994247, 30.439240, 46.321346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.044453, 30.211153, 46.266064>,  <37.128128, 29.831009, 46.173923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.044453, 30.211153, 46.266064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484732, 0.103806, -0.868481,
		-0.849280, -0.293329, 0.438955,
		-0.209184, 0.950359, 0.230346,
		36.981697, 30.496262, 46.335167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.389843, 29.852962, 46.001152>,  <37.128128, 29.831009, 46.173923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.389843, 29.852962, 46.001152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.537418, 30.224743, 46.000515>,  <36.625965, 30.447811, 46.000134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.537418, 30.224743, 46.000515>,  <36.389843, 29.852962, 46.001152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.537418, 30.224743, 46.000515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507434, 0.199986, -0.838162,
		-0.778714, 0.310037, 0.545418,
		0.368938, 0.929453, -0.001591,
		36.648098, 30.503578, 46.000038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.849991, 30.316916, 45.927402>,  <36.389843, 29.852962, 46.001152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.849991, 30.316916, 45.927402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.175182, 30.506285, 45.791790>,  <36.370296, 30.619905, 45.710423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.175182, 30.506285, 45.791790>,  <35.849991, 30.316916, 45.927402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.175182, 30.506285, 45.791790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485689, 0.230137, -0.843293,
		-0.321212, 0.850239, 0.417032,
		0.812976, 0.473424, -0.339029,
		36.419075, 30.648312, 45.690083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.535625, 30.899454, 45.654694>,  <35.849991, 30.316916, 45.927402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.535625, 30.899454, 45.654694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.900486, 30.943773, 45.496857>,  <36.119404, 30.970364, 45.402153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.900486, 30.943773, 45.496857>,  <35.535625, 30.899454, 45.654694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.900486, 30.943773, 45.496857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409447, 0.289233, -0.865273,
		0.018260, 0.950825, 0.309190,
		0.912151, 0.110796, -0.394594,
		36.174133, 30.977013, 45.378479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.571434, 31.473063, 45.331696>,  <35.535625, 30.899454, 45.654694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.571434, 31.473063, 45.331696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.894276, 31.325932, 45.146961>,  <36.087978, 31.237654, 45.036121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.894276, 31.325932, 45.146961>,  <35.571434, 31.473063, 45.331696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.894276, 31.325932, 45.146961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332195, 0.363746, -0.870250,
		0.488092, 0.855799, 0.171389,
		0.807101, -0.367827, -0.461834,
		36.136406, 31.215584, 45.008411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.870399, 32.025208, 44.883121>,  <35.571434, 31.473063, 45.331696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.870399, 32.025208, 44.883121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.017990, 31.685596, 44.731853>,  <36.106544, 31.481831, 44.641094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.017990, 31.685596, 44.731853>,  <35.870399, 32.025208, 44.883121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.017990, 31.685596, 44.731853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288978, 0.281917, -0.914885,
		0.883375, 0.446849, -0.141330,
		0.368973, -0.849028, -0.378168,
		36.128681, 31.430887, 44.618404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.254166, 32.273067, 44.272392>,  <35.870399, 32.025208, 44.883121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.254166, 32.273067, 44.272392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.159554, 31.887197, 44.225990>,  <36.102787, 31.655676, 44.198151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.159554, 31.887197, 44.225990>,  <36.254166, 32.273067, 44.272392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.159554, 31.887197, 44.225990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224921, 0.170512, -0.959342,
		0.945232, -0.200823, -0.257306,
		-0.236532, -0.964674, -0.116004,
		36.088593, 31.597795, 44.191189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.597115, 32.061707, 43.665253>,  <36.254166, 32.273067, 44.272392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.597115, 32.061707, 43.665253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.307602, 31.795515, 43.738216>,  <36.133892, 31.635799, 43.781994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.307602, 31.795515, 43.738216>,  <36.597115, 32.061707, 43.665253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.307602, 31.795515, 43.738216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264924, 0.023906, -0.963973,
		0.637143, -0.746034, -0.193604,
		-0.723785, -0.665479, 0.182410,
		36.090466, 31.595871, 43.792938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.697922, 31.562557, 43.161160>,  <36.597115, 32.061707, 43.665253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.697922, 31.562557, 43.161160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.324020, 31.494516, 43.285931>,  <36.099678, 31.453691, 43.360794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.324020, 31.494516, 43.285931>,  <36.697922, 31.562557, 43.161160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.324020, 31.494516, 43.285931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306307, -0.059018, -0.950102,
		0.180022, -0.983658, 0.003064,
		-0.934756, -0.170101, 0.311926,
		36.043594, 31.443487, 43.379509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.499428, 31.089024, 42.768208>,  <36.697922, 31.562557, 43.161160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.499428, 31.089024, 42.768208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.160736, 31.265690, 42.886856>,  <35.957523, 31.371689, 42.958046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.160736, 31.265690, 42.886856>,  <36.499428, 31.089024, 42.768208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.160736, 31.265690, 42.886856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290114, 0.084052, -0.953294,
		-0.445969, -0.893234, 0.056965,
		-0.846726, 0.441666, 0.296624,
		35.906719, 31.398190, 42.975842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.930199, 30.811110, 42.363350>,  <36.499428, 31.089024, 42.768208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.930199, 30.811110, 42.363350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.789989, 31.163151, 42.491444>,  <35.705864, 31.374376, 42.568302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.789989, 31.163151, 42.491444>,  <35.930199, 30.811110, 42.363350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.789989, 31.163151, 42.491444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367485, 0.185262, -0.911390,
		-0.861447, -0.437142, 0.258488,
		-0.350519, 0.880105, 0.320237,
		35.684834, 31.427181, 42.587513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.204090, 30.758257, 42.279690>,  <35.930199, 30.811110, 42.363350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.204090, 30.758257, 42.279690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.275970, 31.151558, 42.291851>,  <35.319099, 31.387539, 42.299149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.275970, 31.151558, 42.291851>,  <35.204090, 30.758257, 42.279690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.275970, 31.151558, 42.291851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430567, 0.106403, -0.896265,
		-0.884488, 0.147972, 0.442476,
		0.179703, 0.983251, 0.030400,
		35.329880, 31.446533, 42.300972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.600014, 31.063833, 41.910618>,  <35.204090, 30.758257, 42.279690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.600014, 31.063833, 41.910618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.895573, 31.333323, 41.915165>,  <35.072906, 31.495016, 41.917892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.895573, 31.333323, 41.915165>,  <34.600014, 31.063833, 41.910618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.895573, 31.333323, 41.915165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247844, 0.287427, -0.925181,
		-0.626581, 0.680797, 0.379357,
		0.738898, 0.673722, 0.011365,
		35.117241, 31.535439, 41.918575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.286282, 31.738522, 41.707565>,  <34.600014, 31.063833, 41.910618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.286282, 31.738522, 41.707565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.680943, 31.748716, 41.643230>,  <34.917740, 31.754833, 41.604630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.680943, 31.748716, 41.643230>,  <34.286282, 31.738522, 41.707565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.680943, 31.748716, 41.643230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161440, 0.282562, -0.945566,
		0.021346, 0.958911, 0.282905,
		0.986652, 0.025488, -0.160838,
		34.976936, 31.756363, 41.594978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.373478, 32.235992, 41.177860>,  <34.286282, 31.738522, 41.707565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.373478, 32.235992, 41.177860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.695908, 31.999620, 41.164963>,  <34.889366, 31.857796, 41.157223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.695908, 31.999620, 41.164963>,  <34.373478, 32.235992, 41.177860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.695908, 31.999620, 41.164963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112507, 0.206509, -0.971955,
		0.581021, 0.779840, 0.232946,
		0.806075, -0.590934, -0.032248,
		34.937729, 31.822340, 41.155289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.780720, 32.613331, 40.725384>,  <34.373478, 32.235992, 41.177860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.780720, 32.613331, 40.725384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.946095, 32.249454, 40.741055>,  <35.045319, 32.031128, 40.750458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.946095, 32.249454, 40.741055>,  <34.780720, 32.613331, 40.725384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.946095, 32.249454, 40.741055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186953, 0.042696, -0.981441,
		0.891131, 0.413093, 0.187721,
		0.413441, -0.909687, 0.039181,
		35.070126, 31.976549, 40.752808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.335697, 32.605072, 40.332558>,  <34.780720, 32.613331, 40.725384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.335697, 32.605072, 40.332558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.230106, 32.219540, 40.347218>,  <35.166752, 31.988220, 40.356014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.230106, 32.219540, 40.347218>,  <35.335697, 32.605072, 40.332558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.230106, 32.219540, 40.347218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273377, -0.111208, -0.955457,
		0.924976, -0.242201, 0.292846,
		-0.263979, -0.963832, 0.036652,
		35.150913, 31.930389, 40.358212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.886871, 32.195618, 39.995071>,  <35.335697, 32.605072, 40.332558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.886871, 32.195618, 39.995071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.562794, 31.962645, 39.968670>,  <35.368347, 31.822861, 39.952831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.562794, 31.962645, 39.968670>,  <35.886871, 32.195618, 39.995071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.562794, 31.962645, 39.968670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287485, -0.296714, -0.910666,
		0.510817, -0.756793, 0.407837,
		-0.810197, -0.582431, -0.065999,
		35.319736, 31.787916, 39.948872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.148956, 31.596880, 39.650436>,  <35.886871, 32.195618, 39.995071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.148956, 31.596880, 39.650436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.753670, 31.537596, 39.635098>,  <35.516499, 31.502026, 39.625893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.753670, 31.537596, 39.635098>,  <36.148956, 31.596880, 39.650436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.753670, 31.537596, 39.635098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089196, -0.353811, -0.931054,
		0.124425, -0.923499, 0.362860,
		-0.988212, -0.148212, -0.038350,
		35.457207, 31.493132, 39.623592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.321800, 31.197475, 40.306343>,  <36.148956, 31.596880, 39.650436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.321800, 31.197475, 40.306343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.691742, 31.054256, 40.255035>,  <36.913708, 30.968325, 40.224251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.691742, 31.054256, 40.255035>,  <36.321800, 31.197475, 40.306343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.691742, 31.054256, 40.255035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124247, -0.603184, 0.787865,
		-0.359463, -0.712721, -0.602341,
		0.924851, -0.358048, -0.128269,
		36.969196, 30.946842, 40.216557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.452518, 30.412800, 40.365444>,  <36.321800, 31.197475, 40.306343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.452518, 30.412800, 40.365444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.815273, 30.566965, 40.433575>,  <37.032925, 30.659464, 40.474453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.815273, 30.566965, 40.433575>,  <36.452518, 30.412800, 40.365444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.815273, 30.566965, 40.433575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092747, -0.576877, 0.811549,
		0.411038, -0.720186, -0.558909,
		0.906888, 0.385415, 0.170323,
		37.087341, 30.682589, 40.484673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.931358, 29.822214, 40.427120>,  <36.452518, 30.412800, 40.365444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.931358, 29.822214, 40.427120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.113415, 30.142803, 40.582294>,  <37.222649, 30.335155, 40.675400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.113415, 30.142803, 40.582294>,  <36.931358, 29.822214, 40.427120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.113415, 30.142803, 40.582294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260132, -0.536351, 0.802906,
		0.851575, -0.264519, -0.452603,
		0.455138, 0.801472, 0.387934,
		37.249958, 30.383245, 40.698673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.650330, 29.593151, 40.508953>,  <36.931358, 29.822214, 40.427120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.650330, 29.593151, 40.508953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.600647, 29.908089, 40.750504>,  <37.570839, 30.097052, 40.895432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.600647, 29.908089, 40.750504>,  <37.650330, 29.593151, 40.508953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.600647, 29.908089, 40.750504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467234, -0.490486, 0.735606,
		0.875366, 0.373514, -0.306954,
		-0.124203, 0.787344, 0.603873,
		37.563385, 30.144293, 40.931667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.225098, 29.624350, 40.854141>,  <37.650330, 29.593151, 40.508953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.225098, 29.624350, 40.854141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.014259, 29.854708, 41.104107>,  <37.887756, 29.992922, 41.254086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.014259, 29.854708, 41.104107>,  <38.225098, 29.624350, 40.854141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.014259, 29.854708, 41.104107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609957, -0.255641, 0.750067,
		0.591713, 0.776526, -0.216524,
		-0.527094, 0.575894, 0.624914,
		37.856133, 30.027475, 41.291580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.623947, 30.130569, 41.321472>,  <38.225098, 29.624350, 40.854141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.623947, 30.130569, 41.321472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.286022, 30.106152, 41.534100>,  <38.083267, 30.091501, 41.661674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.286022, 30.106152, 41.534100>,  <38.623947, 30.130569, 41.321472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.286022, 30.106152, 41.534100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532820, -0.186798, 0.825354,
		0.048914, 0.980500, 0.190334,
		-0.844814, -0.061042, 0.531567,
		38.032578, 30.087839, 41.693569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.757229, 30.564768, 41.877289>,  <38.623947, 30.130569, 41.321472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.757229, 30.564768, 41.877289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.439804, 30.352039, 41.995552>,  <38.249348, 30.224401, 42.066509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.439804, 30.352039, 41.995552>,  <38.757229, 30.564768, 41.877289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.439804, 30.352039, 41.995552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435825, -0.157697, 0.886109,
		-0.424628, 0.832043, 0.356925,
		-0.793567, -0.531823, 0.295663,
		38.201733, 30.192492, 42.084251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.412521, 30.860069, 42.476810>,  <38.757229, 30.564768, 41.877289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.412521, 30.860069, 42.476810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.291885, 30.478756, 42.483727>,  <38.219505, 30.249968, 42.487877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.291885, 30.478756, 42.483727>,  <38.412521, 30.860069, 42.476810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.291885, 30.478756, 42.483727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380713, -0.103776, 0.918852,
		-0.874130, 0.283699, 0.394224,
		-0.301588, -0.953282, 0.017294,
		38.201408, 30.192772, 42.488914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.335827, 30.694908, 43.158058>,  <38.412521, 30.860069, 42.476810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.335827, 30.694908, 43.158058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.358971, 30.338943, 42.977077>,  <38.372856, 30.125364, 42.868488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.358971, 30.338943, 42.977077>,  <38.335827, 30.694908, 43.158058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.358971, 30.338943, 42.977077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596860, -0.332452, 0.730228,
		-0.800256, -0.312302, 0.511916,
		0.057864, -0.889912, -0.452447,
		38.376331, 30.071970, 42.841343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.090111, 30.085182, 43.603203>,  <38.335827, 30.694908, 43.158058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.090111, 30.085182, 43.603203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.361290, 29.919556, 43.360241>,  <38.523998, 29.820179, 43.214466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.361290, 29.919556, 43.360241>,  <38.090111, 30.085182, 43.603203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.361290, 29.919556, 43.360241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418679, -0.461672, 0.782027,
		-0.604234, -0.784478, -0.139626,
		0.677944, -0.414069, -0.607403,
		38.564674, 29.795336, 43.178020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.257301, 29.351389, 43.971245>,  <38.090111, 30.085182, 43.603203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.257301, 29.351389, 43.971245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.539837, 29.431498, 43.699665>,  <38.709358, 29.479563, 43.536716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.539837, 29.431498, 43.699665>,  <38.257301, 29.351389, 43.971245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.539837, 29.431498, 43.699665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694053, -0.384532, 0.608626,
		-0.139187, -0.901125, -0.410611,
		0.706341, 0.200272, -0.678950,
		38.751740, 29.491579, 43.495979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.736992, 28.718065, 44.052094>,  <38.257301, 29.351389, 43.971245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.736992, 28.718065, 44.052094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.938030, 29.012472, 43.870689>,  <39.058655, 29.189117, 43.761845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.938030, 29.012472, 43.870689>,  <38.736992, 28.718065, 44.052094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.938030, 29.012472, 43.870689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760937, -0.127634, 0.636149,
		0.410333, -0.664821, -0.624211,
		0.502595, 0.736018, -0.453515,
		39.088810, 29.233278, 43.734634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.356163, 28.511087, 44.165119>,  <38.736992, 28.718065, 44.052094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.356163, 28.511087, 44.165119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.409222, 28.899870, 44.087448>,  <39.441055, 29.133139, 44.040844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.409222, 28.899870, 44.087448>,  <39.356163, 28.511087, 44.165119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.409222, 28.899870, 44.087448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689375, 0.050291, 0.722657,
		0.712157, -0.229721, -0.663371,
		0.132648, 0.971956, -0.194179,
		39.449017, 29.191456, 44.029194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.160324, 28.630314, 44.225197>,  <39.356163, 28.511087, 44.165119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.160324, 28.630314, 44.225197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.957386, 28.970608, 44.280109>,  <39.835625, 29.174784, 44.313057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.957386, 28.970608, 44.280109>,  <40.160324, 28.630314, 44.225197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.957386, 28.970608, 44.280109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483517, 0.149165, 0.862532,
		0.713310, 0.503981, -0.487024,
		-0.507347, 0.850737, 0.137282,
		39.805183, 29.225828, 44.321293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.576462, 28.915836, 44.694038>,  <40.160324, 28.630314, 44.225197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.576462, 28.915836, 44.694038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.242958, 29.136320, 44.706741>,  <40.042854, 29.268610, 44.714363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.242958, 29.136320, 44.706741>,  <40.576462, 28.915836, 44.694038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.242958, 29.136320, 44.706741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250373, 0.326204, 0.911540,
		0.492088, 0.767960, -0.409985,
		-0.833764, 0.551207, 0.031755,
		39.992828, 29.301682, 44.716267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.779625, 29.682724, 44.894100>,  <40.576462, 28.915836, 44.694038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.779625, 29.682724, 44.894100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.403728, 29.592293, 44.996689>,  <40.178192, 29.538034, 45.058243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.403728, 29.592293, 44.996689>,  <40.779625, 29.682724, 44.894100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.403728, 29.592293, 44.996689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167384, 0.349867, 0.921724,
		-0.298110, 0.909111, -0.290943,
		-0.939741, -0.226076, 0.256470,
		40.121807, 29.524469, 45.073631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.547840, 30.267120, 45.164528>,  <40.779625, 29.682724, 44.894100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.547840, 30.267120, 45.164528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.295513, 29.984777, 45.293419>,  <40.144115, 29.815372, 45.370754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.295513, 29.984777, 45.293419>,  <40.547840, 30.267120, 45.164528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.295513, 29.984777, 45.293419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126106, 0.316493, 0.940175,
		-0.765612, 0.633717, -0.110638,
		-0.630821, -0.705858, 0.322227,
		40.106266, 29.773020, 45.390087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.245174, 30.653500, 45.631447>,  <40.547840, 30.267120, 45.164528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.245174, 30.653500, 45.631447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.087818, 30.295868, 45.717106>,  <39.993404, 30.081289, 45.768501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.087818, 30.295868, 45.717106>,  <40.245174, 30.653500, 45.631447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.087818, 30.295868, 45.717106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189316, 0.306717, 0.932783,
		-0.899667, 0.326410, -0.289925,
		-0.393394, -0.894081, 0.214148,
		39.969799, 30.027643, 45.781349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.534145, 30.797329, 46.007229>,  <40.245174, 30.653500, 45.631447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.534145, 30.797329, 46.007229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.687256, 30.441628, 46.107395>,  <39.779121, 30.228207, 46.167496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.687256, 30.441628, 46.107395>,  <39.534145, 30.797329, 46.007229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.687256, 30.441628, 46.107395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264431, 0.154258, 0.951988,
		-0.885187, -0.430620, -0.176099,
		0.382780, -0.889253, 0.250416,
		39.802090, 30.174852, 46.182522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.035656, 30.586695, 46.474251>,  <39.534145, 30.797329, 46.007229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.035656, 30.586695, 46.474251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.350277, 30.349367, 46.542728>,  <39.539051, 30.206970, 46.583817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.350277, 30.349367, 46.542728>,  <39.035656, 30.586695, 46.474251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.350277, 30.349367, 46.542728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079754, 0.177301, 0.980920,
		-0.612351, -0.785199, 0.092137,
		0.786553, -0.593319, 0.171194,
		39.586243, 30.171371, 46.594086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.805447, 30.079601, 47.076122>,  <39.035656, 30.586695, 46.474251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.805447, 30.079601, 47.076122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.203880, 30.110556, 47.059063>,  <39.442940, 30.129129, 47.048828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.203880, 30.110556, 47.059063>,  <38.805447, 30.079601, 47.076122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.203880, 30.110556, 47.059063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023213, 0.236489, 0.971357,
		0.085254, -0.968547, 0.233768,
		0.996089, 0.077386, -0.042644,
		39.502708, 30.133772, 47.046268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.967487, 29.743454, 47.747726>,  <38.805447, 30.079601, 47.076122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.967487, 29.743454, 47.747726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.289932, 29.942545, 47.619694>,  <39.483398, 30.061998, 47.542873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.289932, 29.942545, 47.619694>,  <38.967487, 29.743454, 47.747726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.289932, 29.942545, 47.619694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242947, 0.214845, 0.945948,
		0.539590, -0.840304, 0.052268,
		0.806114, 0.497726, -0.320077,
		39.531765, 30.091864, 47.523670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.584812, 29.494135, 48.039787>,  <38.967487, 29.743454, 47.747726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.584812, 29.494135, 48.039787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.666477, 29.872461, 47.938789>,  <39.715477, 30.099457, 47.878193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.666477, 29.872461, 47.938789>,  <39.584812, 29.494135, 48.039787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.666477, 29.872461, 47.938789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324240, 0.178031, 0.929071,
		0.923680, -0.271553, -0.270323,
		0.204167, 0.945814, -0.252492,
		39.727726, 30.156206, 47.863041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.236881, 29.575979, 48.417576>,  <39.584812, 29.494135, 48.039787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.236881, 29.575979, 48.417576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.081169, 29.934864, 48.334179>,  <39.987740, 30.150194, 48.284142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.081169, 29.934864, 48.334179>,  <40.236881, 29.575979, 48.417576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.081169, 29.934864, 48.334179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207498, 0.305947, 0.929162,
		0.897442, 0.318446, -0.305270,
		-0.389284, 0.897212, -0.208492,
		39.964382, 30.204027, 48.271629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.832867, 30.071135, 48.654022>,  <40.236881, 29.575979, 48.417576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.832867, 30.071135, 48.654022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.495399, 30.279379, 48.601585>,  <40.292919, 30.404325, 48.570126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.495399, 30.279379, 48.601585>,  <40.832867, 30.071135, 48.654022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.495399, 30.279379, 48.601585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227638, 0.568045, 0.790889,
		0.486210, 0.637409, -0.597754,
		-0.843671, 0.520610, -0.131090,
		40.242298, 30.435562, 48.562260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.009724, 30.681141, 49.025761>,  <40.832867, 30.071135, 48.654022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.009724, 30.681141, 49.025761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.615593, 30.729134, 48.977211>,  <40.379116, 30.757929, 48.948082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.615593, 30.729134, 48.977211>,  <41.009724, 30.681141, 49.025761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.615593, 30.729134, 48.977211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032111, 0.568154, 0.822296,
		0.167624, 0.814128, -0.555965,
		-0.985328, 0.119984, -0.121379,
		40.319996, 30.765129, 48.940796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.856434, 31.209133, 49.444809>,  <41.009724, 30.681141, 49.025761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.856434, 31.209133, 49.444809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.487949, 31.070379, 49.374332>,  <40.266857, 30.987127, 49.332047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.487949, 31.070379, 49.374332>,  <40.856434, 31.209133, 49.444809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.487949, 31.070379, 49.374332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330234, 0.457709, 0.825499,
		-0.205707, 0.818642, -0.536199,
		-0.921211, -0.346883, -0.176190,
		40.211586, 30.966314, 49.321476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.415665, 31.784899, 49.337193>,  <40.856434, 31.209133, 49.444809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.415665, 31.784899, 49.337193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.279102, 31.442989, 49.493549>,  <40.197163, 31.237843, 49.587364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.279102, 31.442989, 49.493549>,  <40.415665, 31.784899, 49.337193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.279102, 31.442989, 49.493549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108527, 0.377250, 0.919730,
		-0.933628, 0.356428, -0.036030,
		-0.341410, -0.854776, 0.390893,
		40.176678, 31.186556, 49.610817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.099041, 32.010410, 49.854809>,  <40.415665, 31.784899, 49.337193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.099041, 32.010410, 49.854809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.147705, 31.622393, 49.938911>,  <40.176903, 31.389582, 49.989372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.147705, 31.622393, 49.938911>,  <40.099041, 32.010410, 49.854809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.147705, 31.622393, 49.938911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194496, 0.231021, 0.953310,
		-0.973329, -0.075090, 0.216777,
		0.121664, -0.970047, 0.210255,
		40.184204, 31.331379, 50.001987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.711742, 31.848980, 50.500179>,  <40.099041, 32.010410, 49.854809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.711742, 31.848980, 50.500179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.970322, 31.544081, 50.487034>,  <40.125469, 31.361141, 50.479145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.970322, 31.544081, 50.487034>,  <39.711742, 31.848980, 50.500179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.970322, 31.544081, 50.487034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163182, 0.096055, 0.981909,
		-0.745301, -0.640118, 0.186480,
		0.646450, -0.762248, -0.032866,
		40.164257, 31.315407, 50.477173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.555984, 31.460058, 51.150860>,  <39.711742, 31.848980, 50.500179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.555984, 31.460058, 51.150860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.916924, 31.355999, 51.013397>,  <40.133488, 31.293564, 50.930920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.916924, 31.355999, 51.013397>,  <39.555984, 31.460058, 51.150860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.916924, 31.355999, 51.013397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341548, -0.054773, 0.938267,
		-0.262910, -0.964014, 0.039429,
		0.902343, -0.260147, -0.343657,
		40.187626, 31.277956, 50.910301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.677711, 30.935394, 51.556190>,  <39.555984, 31.460058, 51.150860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.677711, 30.935394, 51.556190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.034840, 31.042114, 51.411037>,  <40.249115, 31.106146, 51.323944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.034840, 31.042114, 51.411037>,  <39.677711, 30.935394, 51.556190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.034840, 31.042114, 51.411037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394446, -0.074195, 0.915919,
		0.217443, -0.960892, -0.171481,
		0.892822, 0.266800, -0.362887,
		40.302685, 31.122154, 51.302170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.161098, 30.582829, 51.992424>,  <39.677711, 30.935394, 51.556190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.161098, 30.582829, 51.992424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.381466, 30.865030, 51.814102>,  <40.513687, 31.034351, 51.707108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.381466, 30.865030, 51.814102>,  <40.161098, 30.582829, 51.992424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.381466, 30.865030, 51.814102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492250, 0.156664, 0.856240,
		0.673925, -0.691171, -0.260975,
		0.550923, 0.705506, -0.445809,
		40.546741, 31.076681, 51.680359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.779198, 30.577358, 52.279156>,  <40.161098, 30.582829, 51.992424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.779198, 30.577358, 52.279156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.826332, 30.944124, 52.126640>,  <40.854614, 31.164185, 52.035133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.826332, 30.944124, 52.126640>,  <40.779198, 30.577358, 52.279156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.826332, 30.944124, 52.126640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367812, 0.316351, 0.874435,
		0.922404, -0.243282, -0.299975,
		0.117837, 0.916916, -0.381286,
		40.861683, 31.219198, 52.012253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.485699, 30.752848, 52.434181>,  <40.779198, 30.577358, 52.279156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.485699, 30.752848, 52.434181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.261341, 31.083616, 52.418194>,  <41.126724, 31.282078, 52.408604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.261341, 31.083616, 52.418194>,  <41.485699, 30.752848, 52.434181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.261341, 31.083616, 52.418194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398995, 0.312303, 0.862131,
		0.725395, 0.467619, -0.505107,
		-0.560896, 0.826921, -0.039965,
		41.093071, 31.331692, 52.406204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.948971, 31.295097, 52.565540>,  <41.485699, 30.752848, 52.434181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.948971, 31.295097, 52.565540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.582714, 31.431726, 52.650322>,  <41.362961, 31.513704, 52.701191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.582714, 31.431726, 52.650322>,  <41.948971, 31.295097, 52.565540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.582714, 31.431726, 52.650322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340189, 0.377503, 0.861257,
		0.214166, 0.860710, -0.461857,
		-0.915644, 0.341571, 0.211956,
		41.308022, 31.534197, 52.713909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.976170, 32.001671, 52.786167>,  <41.948971, 31.295097, 52.565540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.976170, 32.001671, 52.786167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.662998, 31.818272, 52.954357>,  <41.475094, 31.708231, 53.055271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.662998, 31.818272, 52.954357>,  <41.976170, 32.001671, 52.786167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.662998, 31.818272, 52.954357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288752, 0.330842, 0.898424,
		-0.551039, 0.824815, -0.126633,
		-0.782930, -0.458501, 0.420474,
		41.428120, 31.680721, 53.080498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.793056, 32.711990, 53.031208>,  <41.976170, 32.001671, 52.786167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.793056, 32.711990, 53.031208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.750225, 33.104687, 53.094097>,  <41.724525, 33.340305, 53.131828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.750225, 33.104687, 53.094097>,  <41.793056, 32.711990, 53.031208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.750225, 33.104687, 53.094097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157827, 0.139339, -0.977586,
		-0.981644, -0.129490, 0.140026,
		-0.107076, 0.981742, 0.157219,
		41.718102, 33.399208, 53.141262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.047260, 32.998070, 52.822762>,  <41.793056, 32.711990, 53.031208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.047260, 32.998070, 52.822762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.311295, 33.298458, 52.815434>,  <41.469715, 33.478691, 52.811035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.311295, 33.298458, 52.815434>,  <41.047260, 32.998070, 52.822762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.311295, 33.298458, 52.815434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244614, 0.191818, -0.950458,
		-0.710250, 0.631863, 0.310313,
		0.660083, 0.750969, -0.018324,
		41.509319, 33.523750, 52.809937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.685223, 33.549927, 52.549080>,  <41.047260, 32.998070, 52.822762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.685223, 33.549927, 52.549080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.070683, 33.629616, 52.477871>,  <41.301960, 33.677429, 52.435146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.070683, 33.629616, 52.477871>,  <40.685223, 33.549927, 52.549080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.070683, 33.629616, 52.477871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200640, 0.099646, -0.974584,
		-0.176417, 0.974876, 0.135995,
		0.963650, 0.199220, -0.178020,
		41.359776, 33.689381, 52.424465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.638485, 34.166656, 52.186028>,  <40.685223, 33.549927, 52.549080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.638485, 34.166656, 52.186028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.003181, 34.014942, 52.122948>,  <41.222000, 33.923912, 52.085098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.003181, 34.014942, 52.122948>,  <40.638485, 34.166656, 52.186028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.003181, 34.014942, 52.122948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008664, 0.366078, -0.930544,
		0.410678, 0.849780, 0.330481,
		0.911739, -0.379290, -0.157703,
		41.276703, 33.901154, 52.075638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.929218, 34.696861, 51.624752>,  <40.638485, 34.166656, 52.186028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.929218, 34.696861, 51.624752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.182941, 34.388691, 51.599144>,  <41.335175, 34.203789, 51.583778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.182941, 34.388691, 51.599144>,  <40.929218, 34.696861, 51.624752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.182941, 34.388691, 51.599144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095535, 0.160297, -0.982435,
		0.767158, 0.617046, 0.175279,
		0.634304, -0.770428, -0.064024,
		41.373234, 34.157562, 51.579937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.288250, 34.913013, 51.074921>,  <40.929218, 34.696861, 51.624752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.288250, 34.913013, 51.074921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.368896, 34.523003, 51.112171>,  <41.417286, 34.288998, 51.134521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.368896, 34.523003, 51.112171>,  <41.288250, 34.913013, 51.074921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.368896, 34.523003, 51.112171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055114, -0.083633, -0.994971,
		0.977913, 0.205734, 0.036876,
		0.201615, -0.975028, 0.093125,
		41.429382, 34.230495, 51.140110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.865318, 34.775963, 50.561249>,  <41.288250, 34.913013, 51.074921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.865318, 34.775963, 50.561249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.686863, 34.431057, 50.657131>,  <41.579788, 34.224113, 50.714661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.686863, 34.431057, 50.657131>,  <41.865318, 34.775963, 50.561249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.686863, 34.431057, 50.657131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052399, -0.292544, -0.954815,
		0.893429, -0.413419, 0.175697,
		-0.446138, -0.862266, 0.239704,
		41.553020, 34.172379, 50.729042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.317257, 34.229282, 50.362541>,  <41.865318, 34.775963, 50.561249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.317257, 34.229282, 50.362541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.939785, 34.097786, 50.347599>,  <41.713303, 34.018887, 50.338634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.939785, 34.097786, 50.347599>,  <42.317257, 34.229282, 50.362541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.939785, 34.097786, 50.347599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144366, -0.307543, -0.940519,
		0.297704, -0.892941, 0.337682,
		-0.943680, -0.328746, -0.037354,
		41.656681, 33.999161, 50.336391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.247528, 33.720001, 49.822330>,  <42.317257, 34.229282, 50.362541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.247528, 33.720001, 49.822330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.855179, 33.706635, 49.899036>,  <41.619770, 33.698612, 49.945061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.855179, 33.706635, 49.899036>,  <42.247528, 33.720001, 49.822330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.855179, 33.706635, 49.899036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163905, -0.389619, -0.906274,
		0.105004, -0.920370, 0.376688,
		-0.980872, -0.033421, 0.191764,
		41.560917, 33.696609, 49.956566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.962051, 33.046455, 49.694893>,  <42.247528, 33.720001, 49.822330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.962051, 33.046455, 49.694893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.661976, 33.307484, 49.652237>,  <41.481930, 33.464100, 49.626644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.661976, 33.307484, 49.652237>,  <41.962051, 33.046455, 49.694893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.661976, 33.307484, 49.652237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193322, -0.370692, -0.908413,
		-0.632334, -0.660864, 0.404244,
		-0.750187, 0.652569, -0.106641,
		41.436920, 33.503254, 49.620243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.475246, 32.660561, 49.307186>,  <41.962051, 33.046455, 49.694893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.475246, 32.660561, 49.307186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.337559, 33.034840, 49.276222>,  <41.254948, 33.259407, 49.257645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.337559, 33.034840, 49.276222>,  <41.475246, 32.660561, 49.307186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.337559, 33.034840, 49.276222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368687, -0.210537, -0.905397,
		-0.863472, -0.283113, 0.417448,
		-0.344218, 0.935693, -0.077412,
		41.234295, 33.315548, 49.252998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.920746, 32.563969, 48.983578>,  <41.475246, 32.660561, 49.307186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.920746, 32.563969, 48.983578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.995781, 32.950233, 48.911674>,  <41.040802, 33.181992, 48.868530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.995781, 32.950233, 48.911674>,  <40.920746, 32.563969, 48.983578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.995781, 32.950233, 48.911674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172345, -0.147813, -0.973883,
		-0.967010, 0.213668, 0.138699,
		0.187586, 0.965659, -0.179761,
		41.052055, 33.239933, 48.857746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.439518, 32.827370, 48.635616>,  <40.920746, 32.563969, 48.983578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.439518, 32.827370, 48.635616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.727634, 33.086857, 48.537361>,  <40.900505, 33.242550, 48.478409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.727634, 33.086857, 48.537361>,  <40.439518, 32.827370, 48.635616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.727634, 33.086857, 48.537361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236847, -0.102836, -0.966089,
		-0.651984, 0.754045, 0.079576,
		0.720292, 0.648722, -0.245641,
		40.943722, 33.281475, 48.463669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.152176, 33.100018, 48.086227>,  <40.439518, 32.827370, 48.635616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.152176, 33.100018, 48.086227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.536362, 33.207592, 48.057415>,  <40.766872, 33.272137, 48.040127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.536362, 33.207592, 48.057415>,  <40.152176, 33.100018, 48.086227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.536362, 33.207592, 48.057415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072353, -0.008739, -0.997341,
		-0.268846, 0.963120, 0.011065,
		0.960462, 0.268932, -0.072034,
		40.824501, 33.288273, 48.035805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.199493, 33.733528, 47.684280>,  <40.152176, 33.100018, 48.086227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.199493, 33.733528, 47.684280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.532677, 33.515179, 47.648079>,  <40.732586, 33.384167, 47.626358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.532677, 33.515179, 47.648079>,  <40.199493, 33.733528, 47.684280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.532677, 33.515179, 47.648079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226422, -0.187016, -0.955907,
		0.504882, 0.816727, -0.279376,
		0.832963, -0.545877, -0.090504,
		40.782566, 33.351414, 47.620926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.414772, 33.983067, 47.034027>,  <40.199493, 33.733528, 47.684280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.414772, 33.983067, 47.034027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.591732, 33.634815, 47.120094>,  <40.697906, 33.425865, 47.171734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.591732, 33.634815, 47.120094>,  <40.414772, 33.983067, 47.034027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.591732, 33.634815, 47.120094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076599, -0.275725, -0.958180,
		0.893543, 0.407413, -0.188668,
		0.442395, -0.870626, 0.215164,
		40.724449, 33.373627, 47.184643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.013340, 33.903442, 46.582008>,  <40.414772, 33.983067, 47.034027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.013340, 33.903442, 46.582008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.926487, 33.532883, 46.705063>,  <40.874374, 33.310547, 46.778896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.926487, 33.532883, 46.705063>,  <41.013340, 33.903442, 46.582008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.926487, 33.532883, 46.705063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058958, -0.327027, -0.943174,
		0.974360, -0.186654, 0.125627,
		-0.217131, -0.926398, 0.307637,
		40.861347, 33.254963, 46.797356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.497177, 33.514008, 46.217041>,  <41.013340, 33.903442, 46.582008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.497177, 33.514008, 46.217041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.233730, 33.247700, 46.357307>,  <41.075661, 33.087914, 46.441467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.233730, 33.247700, 46.357307>,  <41.497177, 33.514008, 46.217041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.233730, 33.247700, 46.357307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083576, -0.398411, -0.913391,
		0.747821, -0.630884, 0.206758,
		-0.658618, -0.665773, 0.350667,
		41.036144, 33.047966, 46.462509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.713409, 32.910019, 46.118862>,  <41.497177, 33.514008, 46.217041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.713409, 32.910019, 46.118862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.320637, 32.838909, 46.144791>,  <41.084972, 32.796246, 46.160347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.320637, 32.838909, 46.144791>,  <41.713409, 32.910019, 46.118862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.320637, 32.838909, 46.144791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008940, -0.385775, -0.922550,
		0.189008, -0.905304, 0.380395,
		-0.981935, -0.177770, 0.064821,
		41.026054, 32.785580, 46.164238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.525005, 32.146339, 45.896652>,  <41.713409, 32.910019, 46.118862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.525005, 32.146339, 45.896652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.208687, 32.385643, 45.844917>,  <41.018894, 32.529224, 45.813877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.208687, 32.385643, 45.844917>,  <41.525005, 32.146339, 45.896652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.208687, 32.385643, 45.844917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132130, -0.373186, -0.918299,
		-0.597647, -0.709098, 0.374162,
		-0.790797, 0.598257, -0.129340,
		40.971447, 32.565121, 45.806114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.097004, 31.676159, 45.639866>,  <41.525005, 32.146339, 45.896652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.097004, 31.676159, 45.639866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.955940, 32.038445, 45.545792>,  <40.871304, 32.255817, 45.489346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.955940, 32.038445, 45.545792>,  <41.097004, 31.676159, 45.639866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.955940, 32.038445, 45.545792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392806, -0.371402, -0.841287,
		-0.849316, -0.204302, 0.486748,
		-0.352656, 0.905716, -0.235187,
		40.850143, 32.310158, 45.475235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.461952, 31.429600, 45.293846>,  <41.097004, 31.676159, 45.639866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.461952, 31.429600, 45.293846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.493023, 31.812603, 45.182743>,  <40.511665, 32.042404, 45.116081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.493023, 31.812603, 45.182743>,  <40.461952, 31.429600, 45.293846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.493023, 31.812603, 45.182743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202581, -0.257627, -0.944770,
		-0.976180, 0.129658, 0.173960,
		0.077680, 0.957506, -0.277756,
		40.516327, 32.099854, 45.099415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.858669, 31.512506, 44.880615>,  <40.461952, 31.429600, 45.293846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.858669, 31.512506, 44.880615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.130913, 31.788227, 44.781311>,  <40.294258, 31.953659, 44.721729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.130913, 31.788227, 44.781311>,  <39.858669, 31.512506, 44.880615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.130913, 31.788227, 44.781311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241981, -0.108337, -0.964214,
		-0.691530, 0.716328, 0.093063,
		0.680611, 0.689302, -0.248256,
		40.335094, 31.995018, 44.706833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.510006, 31.907740, 44.338364>,  <39.858669, 31.512506, 44.880615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.510006, 31.907740, 44.338364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.898209, 31.999575, 44.308937>,  <40.131130, 32.054676, 44.291283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.898209, 31.999575, 44.308937>,  <39.510006, 31.907740, 44.338364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.898209, 31.999575, 44.308937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039115, -0.151141, -0.987738,
		-0.237890, 0.961481, -0.137703,
		0.970504, 0.229587, -0.073563,
		40.189362, 32.068451, 44.286869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.558601, 32.279095, 43.746281>,  <39.510006, 31.907740, 44.338364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.558601, 32.279095, 43.746281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.920181, 32.130959, 43.831810>,  <40.137131, 32.042076, 43.883125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.920181, 32.130959, 43.831810>,  <39.558601, 32.279095, 43.746281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.920181, 32.130959, 43.831810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144645, -0.205739, -0.967858,
		0.402432, 0.905824, -0.132410,
		0.903951, -0.370344, 0.213819,
		40.191368, 32.019855, 43.895954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.080654, 32.593861, 43.385498>,  <39.558601, 32.279095, 43.746281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.080654, 32.593861, 43.385498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.234047, 32.235466, 43.475075>,  <40.326080, 32.020428, 43.528820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.234047, 32.235466, 43.475075>,  <40.080654, 32.593861, 43.385498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.234047, 32.235466, 43.475075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245530, -0.134848, -0.959964,
		0.890313, 0.423112, 0.168280,
		0.383480, -0.895987, 0.223944,
		40.349091, 31.966671, 43.542259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.626522, 32.567650, 43.047691>,  <40.080654, 32.593861, 43.385498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.626522, 32.567650, 43.047691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.604191, 32.184616, 43.160774>,  <40.590794, 31.954796, 43.228622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.604191, 32.184616, 43.160774>,  <40.626522, 32.567650, 43.047691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.604191, 32.184616, 43.160774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282531, -0.286726, -0.915404,
		0.957632, 0.028768, 0.286554,
		-0.055829, -0.957580, 0.282706,
		40.587440, 31.897343, 43.245586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.298031, 32.307793, 43.021366>,  <40.626522, 32.567650, 43.047691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.298031, 32.307793, 43.021366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.012691, 32.031971, 42.971325>,  <40.841488, 31.866478, 42.941299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.012691, 32.031971, 42.971325>,  <41.298031, 32.307793, 43.021366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.012691, 32.031971, 42.971325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232664, -0.064628, -0.970407,
		0.661065, -0.721343, 0.206537,
		-0.713345, -0.689556, -0.125107,
		40.798687, 31.825104, 42.933792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.658573, 31.738611, 42.666222>,  <41.298031, 32.307793, 43.021366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.658573, 31.738611, 42.666222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.270599, 31.669384, 42.597786>,  <41.037815, 31.627848, 42.556725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.270599, 31.669384, 42.597786>,  <41.658573, 31.738611, 42.666222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.270599, 31.669384, 42.597786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198538, -0.156189, -0.967568,
		0.140732, -0.972447, 0.185854,
		-0.969936, -0.173067, -0.171087,
		40.979618, 31.617464, 42.546459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.675339, 31.211073, 42.202961>,  <41.658573, 31.738611, 42.666222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.675339, 31.211073, 42.202961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.296314, 31.333761, 42.167076>,  <41.068901, 31.407373, 42.145546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.296314, 31.333761, 42.167076>,  <41.675339, 31.211073, 42.202961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.296314, 31.333761, 42.167076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000291, -0.279899, -0.960029,
		-0.319577, -0.909712, 0.265132,
		-0.947560, 0.306726, -0.089714,
		41.012047, 31.425777, 42.140163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.215729, 30.614071, 41.833546>,  <41.675339, 31.211073, 42.202961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.215729, 30.614071, 41.833546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.048351, 30.972687, 41.775410>,  <40.947926, 31.187857, 41.740528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.048351, 30.972687, 41.775410>,  <41.215729, 30.614071, 41.833546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.048351, 30.972687, 41.775410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007013, -0.156828, -0.987601,
		-0.908215, -0.414276, 0.059336,
		-0.418445, 0.896538, -0.145339,
		40.922817, 31.241648, 41.731808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.623634, 30.511206, 41.335552>,  <41.215729, 30.614071, 41.833546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.623634, 30.511206, 41.335552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.700832, 30.902992, 41.312229>,  <40.747150, 31.138063, 41.298237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.700832, 30.902992, 41.312229>,  <40.623634, 30.511206, 41.335552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.700832, 30.902992, 41.312229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094535, -0.040587, -0.994694,
		-0.976635, 0.197487, 0.084761,
		0.192999, 0.979465, -0.058308,
		40.758732, 31.196833, 41.294735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.389729, 30.695908, 40.706291>,  <40.623634, 30.511206, 41.335552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.389729, 30.695908, 40.706291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.575241, 31.040113, 40.790604>,  <40.686546, 31.246637, 40.841190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.575241, 31.040113, 40.790604>,  <40.389729, 30.695908, 40.706291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.575241, 31.040113, 40.790604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050672, 0.211761, -0.976007,
		-0.884501, 0.463331, 0.054606,
		0.463777, 0.860513, 0.210781,
		40.714375, 31.298267, 40.853836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.095127, 31.147215, 40.285187>,  <40.389729, 30.695908, 40.706291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.095127, 31.147215, 40.285187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.455166, 31.299820, 40.369350>,  <40.671188, 31.391382, 40.419849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.455166, 31.299820, 40.369350>,  <40.095127, 31.147215, 40.285187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.455166, 31.299820, 40.369350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050877, 0.571669, -0.818905,
		-0.432705, 0.726391, 0.533969,
		0.900099, 0.381511, 0.210407,
		40.725197, 31.414274, 40.432472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.087059, 31.905107, 40.106426>,  <40.095127, 31.147215, 40.285187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.087059, 31.905107, 40.106426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.468956, 31.789639, 40.077759>,  <40.698093, 31.720358, 40.060558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.468956, 31.789639, 40.077759>,  <40.087059, 31.905107, 40.106426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.468956, 31.789639, 40.077759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121769, 0.599196, -0.791287,
		0.271369, 0.746747, 0.607229,
		0.954741, -0.288672, -0.071672,
		40.755379, 31.703037, 40.056255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.497696, 32.542511, 39.993252>,  <40.087059, 31.905107, 40.106426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.497696, 32.542511, 39.993252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.755260, 32.255306, 39.887543>,  <40.909801, 32.082985, 39.824120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.755260, 32.255306, 39.887543>,  <40.497696, 32.542511, 39.993252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.755260, 32.255306, 39.887543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238713, 0.516703, -0.822213,
		0.726905, 0.466349, 0.504110,
		0.643914, -0.718008, -0.264270,
		40.948433, 32.039906, 39.808262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.096615, 32.802734, 39.761776>,  <40.497696, 32.542511, 39.993252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.096615, 32.802734, 39.761776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.146507, 32.436840, 39.608051>,  <41.176441, 32.217304, 39.515816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.146507, 32.436840, 39.608051>,  <41.096615, 32.802734, 39.761776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.146507, 32.436840, 39.608051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277155, 0.404041, -0.871743,
		0.952695, 0.002215, 0.303919,
		0.124727, -0.914738, -0.384314,
		41.183926, 32.162418, 39.492756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.752090, 32.822853, 39.527218>,  <41.096615, 32.802734, 39.761776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.752090, 32.822853, 39.527218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.563622, 32.522736, 39.341721>,  <41.450539, 32.342667, 39.230423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.563622, 32.522736, 39.341721>,  <41.752090, 32.822853, 39.527218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.563622, 32.522736, 39.341721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220796, 0.408695, -0.885561,
		0.853958, -0.519645, -0.026905,
		-0.471173, -0.750291, -0.463744,
		41.422268, 32.297649, 39.202599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.199341, 32.689899, 38.952625>,  <41.752090, 32.822853, 39.527218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.199341, 32.689899, 38.952625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.859066, 32.507763, 38.847561>,  <41.654900, 32.398479, 38.784523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.859066, 32.507763, 38.847561>,  <42.199341, 32.689899, 38.952625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.859066, 32.507763, 38.847561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127945, 0.305283, -0.943627,
		0.509860, -0.836339, -0.201443,
		-0.850690, -0.455344, -0.262657,
		41.603859, 32.371159, 38.768764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.310802, 32.326992, 38.350197>,  <42.199341, 32.689899, 38.952625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.310802, 32.326992, 38.350197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.914513, 32.380478, 38.359879>,  <41.676739, 32.412571, 38.365688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.914513, 32.380478, 38.359879>,  <42.310802, 32.326992, 38.350197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.914513, 32.380478, 38.359879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032060, 0.403070, -0.914607,
		-0.132054, -0.905348, -0.403618,
		-0.990724, 0.133717, 0.024201,
		41.617294, 32.420593, 38.367138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.072968, 32.090626, 37.661808>,  <42.310802, 32.326992, 38.350197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.072968, 32.090626, 37.661808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.793564, 32.329826, 37.819027>,  <41.625923, 32.473347, 37.913361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.793564, 32.329826, 37.819027>,  <42.072968, 32.090626, 37.661808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.793564, 32.329826, 37.819027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147358, 0.417287, -0.896748,
		-0.700268, -0.684303, -0.203357,
		-0.698506, 0.597997, 0.393050,
		41.584011, 32.509224, 37.936943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.502537, 32.068336, 37.184971>,  <42.072968, 32.090626, 37.661808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.502537, 32.068336, 37.184971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.432491, 32.409588, 37.381542>,  <41.390465, 32.614338, 37.499485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.432491, 32.409588, 37.381542>,  <41.502537, 32.068336, 37.184971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.432491, 32.409588, 37.381542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218301, 0.453077, -0.864330,
		-0.960042, -0.258633, 0.106901,
		-0.175110, 0.853130, 0.491433,
		41.379959, 32.665527, 37.528973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.838264, 32.295532, 37.015854>,  <41.502537, 32.068336, 37.184971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.838264, 32.295532, 37.015854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.069984, 32.608219, 37.108227>,  <41.209019, 32.795830, 37.163651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.069984, 32.608219, 37.108227>,  <40.838264, 32.295532, 37.015854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.069984, 32.608219, 37.108227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290044, 0.462462, -0.837856,
		-0.761764, 0.418390, 0.494637,
		0.579301, 0.781715, 0.230935,
		41.243774, 32.842735, 37.177505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.441624, 32.956375, 37.076927>,  <40.838264, 32.295532, 37.015854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.441624, 32.956375, 37.076927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.821865, 32.963577, 36.952972>,  <41.050011, 32.967899, 36.878601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.821865, 32.963577, 36.952972>,  <40.441624, 32.956375, 37.076927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.821865, 32.963577, 36.952972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291146, 0.397919, -0.869997,
		0.107646, 0.917244, 0.383506,
		0.950603, 0.018005, -0.309886,
		41.107044, 32.968979, 36.860008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.564423, 33.607372, 36.610939>,  <40.441624, 32.956375, 37.076927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.564423, 33.607372, 36.610939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.828091, 33.313301, 36.547684>,  <40.986294, 33.136860, 36.509731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.828091, 33.313301, 36.547684>,  <40.564423, 33.607372, 36.610939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.828091, 33.313301, 36.547684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154124, 0.073754, -0.985295,
		0.736028, 0.673852, -0.064691,
		0.659172, -0.735175, -0.158142,
		41.025841, 33.092747, 36.500240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.172039, 33.844883, 36.134640>,  <40.564423, 33.607372, 36.610939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.172039, 33.844883, 36.134640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.079243, 33.456360, 36.113720>,  <41.023567, 33.223244, 36.101170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.079243, 33.456360, 36.113720>,  <41.172039, 33.844883, 36.134640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.079243, 33.456360, 36.113720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122636, 0.082544, -0.989013,
		0.964957, -0.223026, -0.138267,
		-0.231988, -0.971312, -0.052301,
		41.009647, 33.164967, 36.098030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.468990, 34.396294, 35.653084>,  <41.172039, 33.844883, 36.134640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.468990, 34.396294, 35.653084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.818157, 34.261612, 35.794308>,  <42.027657, 34.180801, 35.879040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.818157, 34.261612, 35.794308>,  <41.468990, 34.396294, 35.653084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.818157, 34.261612, 35.794308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106003, 0.837274, 0.536410,
		-0.476218, -0.430815, 0.766560,
		0.872914, -0.336706, 0.353058,
		42.080032, 34.160599, 35.900227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.208584, 34.725399, 35.623749>,  <41.468990, 34.396294, 35.653084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.208584, 34.725399, 35.623749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.374275, 35.085590, 35.676743>,  <42.473690, 35.301704, 35.708538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.374275, 35.085590, 35.676743>,  <42.208584, 34.725399, 35.623749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.374275, 35.085590, 35.676743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236761, 0.033946, -0.970975,
		-0.878839, 0.433573, -0.199137,
		0.414229, 0.900479, 0.132486,
		42.498543, 35.355736, 35.716488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.967728, 35.246643, 35.220135>,  <42.208584, 34.725399, 35.623749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.967728, 35.246643, 35.220135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.352993, 35.338127, 35.276722>,  <42.584152, 35.393017, 35.310673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.352993, 35.338127, 35.276722>,  <41.967728, 35.246643, 35.220135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.352993, 35.338127, 35.276722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131080, 0.060064, -0.989551,
		-0.234817, 0.971640, 0.027872,
		0.963161, 0.228709, 0.141466,
		42.641941, 35.406738, 35.319160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.091949, 35.895691, 34.847023>,  <41.967728, 35.246643, 35.220135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.091949, 35.895691, 34.847023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.445766, 35.715950, 34.897079>,  <42.658058, 35.608105, 34.927113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.445766, 35.715950, 34.897079>,  <42.091949, 35.895691, 34.847023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.445766, 35.715950, 34.897079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164759, 0.049984, -0.985067,
		0.436389, 0.891954, 0.118248,
		0.884545, -0.449355, 0.125145,
		42.711128, 35.581142, 34.934624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.601711, 36.302231, 34.693272>,  <42.091949, 35.895691, 34.847023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.601711, 36.302231, 34.693272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.789444, 35.953930, 34.634583>,  <42.902084, 35.744949, 34.599369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.789444, 35.953930, 34.634583>,  <42.601711, 36.302231, 34.693272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.789444, 35.953930, 34.634583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007170, 0.162399, -0.986699,
		0.882995, 0.464137, 0.069976,
		0.469328, -0.870749, -0.146726,
		42.930241, 35.692707, 34.590565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.196938, 36.448647, 34.364227>,  <42.601711, 36.302231, 34.693272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.196938, 36.448647, 34.364227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.169708, 36.058445, 34.280544>,  <43.153370, 35.824326, 34.230335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.169708, 36.058445, 34.280544>,  <43.196938, 36.448647, 34.364227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.169708, 36.058445, 34.280544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106380, 0.201399, -0.973715,
		0.991992, -0.088542, 0.090063,
		-0.068077, -0.975499, -0.209205,
		43.149284, 35.765797, 34.217781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.727184, 36.327019, 33.904514>,  <43.196938, 36.448647, 34.364227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.727184, 36.327019, 33.904514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.497177, 36.002716, 33.860634>,  <43.359173, 35.808136, 33.834305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.497177, 36.002716, 33.860634>,  <43.727184, 36.327019, 33.904514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.497177, 36.002716, 33.860634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089350, 0.071051, -0.993463,
		0.813250, -0.581057, 0.031586,
		-0.575014, -0.810756, -0.109700,
		43.324673, 35.759491, 33.827724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.103043, 35.889553, 33.475567>,  <43.727184, 36.327019, 33.904514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.103043, 35.889553, 33.475567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.716846, 35.792221, 33.438450>,  <43.485126, 35.733822, 33.416180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.716846, 35.792221, 33.438450>,  <44.103043, 35.889553, 33.475567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.716846, 35.792221, 33.438450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062820, 0.128192, -0.989758,
		0.252732, -0.961435, -0.108483,
		-0.965495, -0.243329, -0.092795,
		43.427197, 35.719223, 33.410610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.070225, 35.213169, 33.006817>,  <44.103043, 35.889553, 33.475567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.070225, 35.213169, 33.006817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.719261, 35.404312, 32.989819>,  <43.508682, 35.518997, 32.979618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.719261, 35.404312, 32.989819>,  <44.070225, 35.213169, 33.006817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.719261, 35.404312, 32.989819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004076, -0.081160, -0.996693,
		-0.479729, -0.874679, 0.069263,
		-0.877407, 0.477860, -0.042500,
		43.456039, 35.547668, 32.977070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.715813, 34.990322, 32.347679>,  <44.070225, 35.213169, 33.006817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.715813, 34.990322, 32.347679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.485825, 35.297699, 32.460037>,  <43.347832, 35.482124, 32.527454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.485825, 35.297699, 32.460037>,  <43.715813, 34.990322, 32.347679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.485825, 35.297699, 32.460037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202116, 0.199278, -0.958873,
		-0.792819, -0.608094, 0.040737,
		-0.574967, 0.768447, 0.280898,
		43.313335, 35.528233, 32.544308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.090607, 35.018948, 31.950373>,  <43.715813, 34.990322, 32.347679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.090607, 35.018948, 31.950373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.119797, 35.390160, 32.096485>,  <43.137310, 35.612888, 32.184155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.119797, 35.390160, 32.096485>,  <43.090607, 35.018948, 31.950373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.119797, 35.390160, 32.096485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287467, 0.370285, -0.883319,
		-0.955007, -0.040550, 0.293799,
		0.072971, 0.928033, 0.365281,
		43.141689, 35.668568, 32.206070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.470196, 35.311939, 31.725212>,  <43.090607, 35.018948, 31.950373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.470196, 35.311939, 31.725212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.716270, 35.610241, 31.827503>,  <42.863914, 35.789223, 31.888878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.716270, 35.610241, 31.827503>,  <42.470196, 35.311939, 31.725212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.716270, 35.610241, 31.827503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141491, 0.423541, -0.894759,
		-0.775581, 0.514261, 0.366075,
		0.615187, 0.745754, 0.255727,
		42.900826, 35.833965, 31.904221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.107014, 35.870750, 31.547272>,  <42.470196, 35.311939, 31.725212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.107014, 35.870750, 31.547272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.482849, 36.003468, 31.580935>,  <42.708351, 36.083096, 31.601133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.482849, 36.003468, 31.580935>,  <42.107014, 35.870750, 31.547272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.482849, 36.003468, 31.580935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058147, 0.397001, -0.915975,
		-0.337323, 0.855748, 0.392311,
		0.939592, 0.331791, 0.084158,
		42.764725, 36.103004, 31.606182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.049980, 36.596199, 31.316383>,  <42.107014, 35.870750, 31.547272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.049980, 36.596199, 31.316383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.437355, 36.498810, 31.295034>,  <42.669781, 36.440376, 31.282225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.437355, 36.498810, 31.295034>,  <42.049980, 36.596199, 31.316383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.437355, 36.498810, 31.295034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026875, 0.314866, -0.948756,
		0.247804, 0.917376, 0.311472,
		0.968437, -0.243476, -0.053370,
		42.727886, 36.425766, 31.279024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.367527, 37.202705, 30.924665>,  <42.049980, 36.596199, 31.316383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.367527, 37.202705, 30.924665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.590858, 36.871624, 30.902090>,  <42.724857, 36.672977, 30.888544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.590858, 36.871624, 30.902090>,  <42.367527, 37.202705, 30.924665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.590858, 36.871624, 30.902090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195316, -0.065022, -0.978582,
		0.806303, 0.557391, -0.197966,
		0.558326, -0.827700, -0.056440,
		42.758358, 36.623314, 30.885159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.577999, 37.241974, 30.288052>,  <42.367527, 37.202705, 30.924665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.577999, 37.241974, 30.288052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.697727, 36.872643, 30.384281>,  <42.769562, 36.651043, 30.442019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.697727, 36.872643, 30.384281>,  <42.577999, 37.241974, 30.288052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.697727, 36.872643, 30.384281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029018, -0.243210, -0.969539,
		0.953712, 0.297182, -0.046004,
		0.299318, -0.923326, 0.240575,
		42.787521, 36.595646, 30.456453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.329468, 37.115585, 30.010067>,  <42.577999, 37.241974, 30.288052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.329468, 37.115585, 30.010067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.116463, 36.778271, 30.039167>,  <42.988659, 36.575882, 30.056627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.116463, 36.778271, 30.039167>,  <43.329468, 37.115585, 30.010067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.116463, 36.778271, 30.039167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006225, -0.082046, -0.996609,
		0.846399, -0.531160, 0.038441,
		-0.532513, -0.843289, 0.072750,
		42.956707, 36.525284, 30.060993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.720974, 36.600975, 29.626312>,  <43.329468, 37.115585, 30.010067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.720974, 36.600975, 29.626312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.332344, 36.509270, 29.649891>,  <43.099167, 36.454247, 29.664038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.332344, 36.509270, 29.649891>,  <43.720974, 36.600975, 29.626312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.332344, 36.509270, 29.649891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047535, -0.054991, -0.997355,
		0.231903, -0.971809, 0.042530,
		-0.971577, -0.229268, 0.058947,
		43.040871, 36.440491, 29.667576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.744148, 36.166611, 29.035477>,  <43.720974, 36.600975, 29.626312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.744148, 36.166611, 29.035477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.362545, 36.267857, 29.099718>,  <43.133583, 36.328606, 29.138264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.362545, 36.267857, 29.099718>,  <43.744148, 36.166611, 29.035477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.362545, 36.267857, 29.099718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134613, 0.116970, -0.983970,
		-0.267846, -0.960338, -0.077517,
		-0.954011, 0.253118, 0.160604,
		43.076340, 36.343792, 29.147900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.272488, 35.564289, 28.699913>,  <43.744148, 36.166611, 29.035477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.272488, 35.564289, 28.699913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.093021, 35.918835, 28.745625>,  <42.985340, 36.131561, 28.773052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.093021, 35.918835, 28.745625>,  <43.272488, 35.564289, 28.699913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.093021, 35.918835, 28.745625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278225, -0.017014, -0.960365,
		-0.849288, -0.462679, 0.254242,
		-0.448666, 0.886363, 0.114279,
		42.958420, 36.184742, 28.779909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.739643, 35.557240, 28.271889>,  <43.272488, 35.564289, 28.699913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.739643, 35.557240, 28.271889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.743359, 35.952587, 28.332617>,  <42.745586, 36.189796, 28.369053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.743359, 35.952587, 28.332617>,  <42.739643, 35.557240, 28.271889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.743359, 35.952587, 28.332617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393630, 0.143183, -0.908049,
		-0.919222, -0.051325, 0.390380,
		0.009290, 0.988365, 0.151820,
		42.746147, 36.249096, 28.378162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.096737, 35.760597, 28.004435>,  <42.739643, 35.557240, 28.271889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.096737, 35.760597, 28.004435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.304226, 36.101303, 28.033897>,  <42.428719, 36.305725, 28.051575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.304226, 36.101303, 28.033897>,  <42.096737, 35.760597, 28.004435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.304226, 36.101303, 28.033897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346288, 0.288095, -0.892797,
		-0.781674, 0.437604, 0.444397,
		0.518720, 0.851765, 0.073659,
		42.459843, 36.356834, 28.055996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.739342, 36.326977, 27.634365>,  <42.096737, 35.760597, 28.004435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.739342, 36.326977, 27.634365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.122005, 36.439320, 27.665167>,  <42.351604, 36.506725, 27.683647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.122005, 36.439320, 27.665167>,  <41.739342, 36.326977, 27.634365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.122005, 36.439320, 27.665167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050932, 0.421701, -0.905303,
		-0.286730, 0.862142, 0.417728,
		0.956657, 0.280853, 0.077004,
		42.409004, 36.523575, 27.688269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.797527, 37.002430, 27.377588>,  <41.739342, 36.326977, 27.634365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.797527, 37.002430, 27.377588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.148205, 36.810154, 27.370150>,  <42.358612, 36.694790, 27.365686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.148205, 36.810154, 27.370150>,  <41.797527, 37.002430, 27.377588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.148205, 36.810154, 27.370150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112457, 0.242382, -0.963641,
		0.467717, 0.842728, 0.266551,
		0.876695, -0.480687, -0.018596,
		42.411213, 36.665947, 27.364571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.011963, 37.685810, 27.028090>,  <41.797527, 37.002430, 27.377588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.011963, 37.685810, 27.028090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.030231, 37.793240, 26.643219>,  <42.041191, 37.857697, 26.412296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.030231, 37.793240, 26.643219>,  <42.011963, 37.685810, 27.028090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.030231, 37.793240, 26.643219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944849, -0.324306, -0.045673,
		-0.324306, -0.907026, -0.268570,
		0.045673, 0.268570, -0.962177,
		42.043934, 37.873810, 26.354567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.088047, 37.107761, 26.534025>,  <42.011963, 37.685810, 27.028090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.088047, 37.107761, 26.534025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.258888, 37.453804, 26.428820>,  <42.361393, 37.661430, 26.365696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.258888, 37.453804, 26.428820>,  <42.088047, 37.107761, 26.534025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.258888, 37.453804, 26.428820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903623, -0.418781, 0.089932,
		-0.032346, -0.276077, -0.960591,
		0.427106, 0.865103, -0.263016,
		42.387020, 37.713333, 26.349915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.483952, 37.030987, 25.939907>,  <42.088047, 37.107761, 26.534025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.483952, 37.030987, 25.939907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.614944, 37.315563, 26.188616>,  <42.693542, 37.486309, 26.337841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.614944, 37.315563, 26.188616>,  <42.483952, 37.030987, 25.939907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.614944, 37.315563, 26.188616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844595, -0.515422, 0.144908,
		0.423570, 0.477692, -0.769674,
		0.327486, 0.711442, 0.621774,
		42.713192, 37.528996, 26.375149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.112022, 37.168316, 25.725889>,  <42.483952, 37.030987, 25.939907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.112022, 37.168316, 25.725889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.092449, 37.267441, 26.112917>,  <43.080704, 37.326916, 26.345135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.092449, 37.267441, 26.112917>,  <43.112022, 37.168316, 25.725889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.092449, 37.267441, 26.112917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710342, -0.672380, 0.208135,
		0.702154, 0.697490, -0.143134,
		-0.048932, 0.247817, 0.967570,
		43.077770, 37.341785, 26.403189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.744957, 37.454128, 25.890049>,  <43.112022, 37.168316, 25.725889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.744957, 37.454128, 25.890049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.525745, 37.269600, 26.169144>,  <43.394218, 37.158882, 26.336601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.525745, 37.269600, 26.169144>,  <43.744957, 37.454128, 25.890049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.525745, 37.269600, 26.169144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726043, -0.676571, 0.122936,
		0.415356, 0.573961, 0.705725,
		-0.548033, -0.461324, 0.697739,
		43.361336, 37.131203, 26.378466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.858318, 37.434875, 26.648251>,  <43.744957, 37.454128, 25.890049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.858318, 37.434875, 26.648251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.720432, 37.098499, 26.481400>,  <43.637703, 36.896675, 26.381289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.720432, 37.098499, 26.481400>,  <43.858318, 37.434875, 26.648251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.720432, 37.098499, 26.481400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882981, -0.441303, 0.159988,
		-0.318619, -0.313165, 0.894656,
		-0.344711, -0.840940, -0.417126,
		43.617020, 36.846218, 26.356262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.169563, 36.968369, 27.055944>,  <43.858318, 37.434875, 26.648251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.169563, 36.968369, 27.055944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.080105, 36.811760, 26.698914>,  <44.026428, 36.717796, 26.484695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.080105, 36.811760, 26.698914>,  <44.169563, 36.968369, 27.055944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.080105, 36.811760, 26.698914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892814, -0.449647, -0.026476,
		-0.390979, -0.802828, 0.450115,
		-0.223649, -0.391517, -0.892578,
		44.013012, 36.694305, 26.431141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.736683, 36.680099, 26.871304>,  <44.169563, 36.968369, 27.055944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.736683, 36.680099, 26.871304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.530155, 36.582321, 26.542997>,  <44.406239, 36.523655, 26.346014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.530155, 36.582321, 26.542997>,  <44.736683, 36.680099, 26.871304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.530155, 36.582321, 26.542997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797458, -0.486629, -0.356725,
		-0.312208, -0.838711, 0.446194,
		-0.516321, -0.244448, -0.820767,
		44.375259, 36.508987, 26.296768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.931995, 37.171909, 27.286079>,  <44.736683, 36.680099, 26.871304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.931995, 37.171909, 27.286079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.825638, 37.537113, 27.409832>,  <44.761826, 37.756237, 27.484083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.825638, 37.537113, 27.409832>,  <44.931995, 37.171909, 27.286079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.825638, 37.537113, 27.409832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872736, 0.091678, 0.479507,
		0.409430, 0.397505, -0.821192,
		-0.265891, 0.913009, 0.309382,
		44.745869, 37.811016, 27.502647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.623100, 37.508957, 27.407551>,  <44.931995, 37.171909, 27.286079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.623100, 37.508957, 27.407551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.322338, 37.668964, 27.617168>,  <45.141880, 37.764969, 27.742939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.322338, 37.668964, 27.617168>,  <45.623100, 37.508957, 27.407551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.322338, 37.668964, 27.617168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587481, 0.045835, 0.807939,
		0.299172, 0.915360, -0.269467,
		-0.751906, 0.400019, 0.524044,
		45.096767, 37.788971, 27.774382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.864071, 38.169167, 27.797461>,  <45.623100, 37.508957, 27.407551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.864071, 38.169167, 27.797461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.538269, 38.006596, 27.963064>,  <45.342789, 37.909054, 28.062426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.538269, 38.006596, 27.963064>,  <45.864071, 38.169167, 27.797461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.538269, 38.006596, 27.963064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456176, -0.007744, 0.889856,
		-0.358455, 0.913651, 0.191709,
		-0.814502, -0.406426, 0.414009,
		45.293919, 37.884666, 28.087267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.822590, 38.585022, 28.399767>,  <45.864071, 38.169167, 27.797461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.822590, 38.585022, 28.399767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.613297, 38.247753, 28.449230>,  <45.487720, 38.045391, 28.478909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.613297, 38.247753, 28.449230>,  <45.822590, 38.585022, 28.399767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.613297, 38.247753, 28.449230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423132, -0.131094, 0.896534,
		-0.739718, 0.521423, 0.425365,
		-0.523237, -0.843168, 0.123658,
		45.456326, 37.994804, 28.486328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.550072, 38.571735, 29.097824>,  <45.822590, 38.585022, 28.399767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.550072, 38.571735, 29.097824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.502731, 38.185539, 29.005018>,  <45.474327, 37.953823, 28.949335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.502731, 38.185539, 29.005018>,  <45.550072, 38.571735, 29.097824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.502731, 38.185539, 29.005018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242022, -0.254655, 0.936256,
		-0.963026, 0.054650, 0.263806,
		-0.118346, -0.965486, -0.232013,
		45.467228, 37.895893, 28.935413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.950436, 38.251633, 29.564182>,  <45.550072, 38.571735, 29.097824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.950436, 38.251633, 29.564182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.176273, 37.944382, 29.443384>,  <45.311775, 37.760029, 29.370905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.176273, 37.944382, 29.443384>,  <44.950436, 38.251633, 29.564182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.176273, 37.944382, 29.443384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180338, -0.242247, 0.953308,
		-0.805424, -0.592696, 0.001751,
		0.564598, -0.768133, -0.301997,
		45.345654, 37.713943, 29.352785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.731846, 37.766842, 29.954802>,  <44.950436, 38.251633, 29.564182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.731846, 37.766842, 29.954802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.080395, 37.626888, 29.817223>,  <45.289524, 37.542915, 29.734676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.080395, 37.626888, 29.817223>,  <44.731846, 37.766842, 29.954802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.080395, 37.626888, 29.817223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151446, -0.474988, 0.866863,
		-0.466648, -0.807455, -0.360910,
		0.871380, -0.349861, -0.343938,
		45.341805, 37.521923, 29.714039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.814842, 36.977394, 30.202272>,  <44.731846, 37.766842, 29.954802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.814842, 36.977394, 30.202272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.190716, 37.068584, 30.100271>,  <45.416241, 37.123299, 30.039070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.190716, 37.068584, 30.100271>,  <44.814842, 36.977394, 30.202272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.190716, 37.068584, 30.100271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341367, -0.577865, 0.741310,
		0.021644, -0.783645, -0.620832,
		0.939681, 0.227976, -0.255003,
		45.472622, 37.136978, 30.023769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.156368, 36.332500, 30.185747>,  <44.814842, 36.977394, 30.202272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.156368, 36.332500, 30.185747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.431828, 36.615673, 30.248474>,  <45.597103, 36.785576, 30.286110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.431828, 36.615673, 30.248474>,  <45.156368, 36.332500, 30.185747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.431828, 36.615673, 30.248474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375025, -0.532844, 0.758573,
		0.620576, -0.463583, -0.632437,
		0.688652, 0.707932, 0.156815,
		45.638424, 36.828053, 30.295519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.796738, 36.008080, 30.363476>,  <45.156368, 36.332500, 30.185747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.796738, 36.008080, 30.363476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.813690, 36.370209, 30.532515>,  <45.823860, 36.587486, 30.633938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.813690, 36.370209, 30.532515>,  <45.796738, 36.008080, 30.363476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.813690, 36.370209, 30.532515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531796, -0.378524, 0.757570,
		0.845811, 0.192628, -0.497491,
		0.042383, 0.905325, 0.422599,
		45.826405, 36.641808, 30.659294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.447273, 36.113380, 30.606499>,  <45.796738, 36.008080, 30.363476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.447273, 36.113380, 30.606499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.258541, 36.386738, 30.829336>,  <46.145302, 36.550751, 30.963037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.258541, 36.386738, 30.829336>,  <46.447273, 36.113380, 30.606499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.258541, 36.386738, 30.829336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528889, -0.286166, 0.798990,
		0.705442, 0.671630, -0.226415,
		-0.471834, 0.683390, 0.557091,
		46.116989, 36.591755, 30.996464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.870434, 36.206455, 31.212109>,  <46.447273, 36.113380, 30.606499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.870434, 36.206455, 31.212109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.558029, 36.422253, 31.337944>,  <46.370586, 36.551731, 31.413445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.558029, 36.422253, 31.337944>,  <46.870434, 36.206455, 31.212109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.558029, 36.422253, 31.337944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226734, -0.224411, 0.947751,
		0.581906, 0.811531, 0.052945,
		-0.781010, 0.539497, 0.314588,
		46.323727, 36.584103, 31.432320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.119705, 36.666798, 31.772951>,  <46.870434, 36.206455, 31.212109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.119705, 36.666798, 31.772951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.726486, 36.649044, 31.844112>,  <46.490555, 36.638393, 31.886808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.726486, 36.649044, 31.844112>,  <47.119705, 36.666798, 31.772951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.726486, 36.649044, 31.844112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181848, -0.360141, 0.915002,
		0.023461, 0.931841, 0.362106,
		-0.983047, -0.044381, 0.177903,
		46.431572, 36.635731, 31.897484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.918579, 37.112629, 32.468307>,  <47.119705, 36.666798, 31.772951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.918579, 37.112629, 32.468307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.642044, 36.833942, 32.391739>,  <46.476124, 36.666729, 32.345798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.642044, 36.833942, 32.391739>,  <46.918579, 37.112629, 32.468307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.642044, 36.833942, 32.391739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049237, -0.309740, 0.949545,
		-0.720854, 0.647030, 0.248439,
		-0.691336, -0.696716, -0.191420,
		46.434643, 36.624928, 32.334312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.421143, 37.104584, 32.965412>,  <46.918579, 37.112629, 32.468307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.421143, 37.104584, 32.965412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.324459, 36.744003, 32.821766>,  <46.266449, 36.527657, 32.735577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.324459, 36.744003, 32.821766>,  <46.421143, 37.104584, 32.965412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.324459, 36.744003, 32.821766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349236, -0.264477, 0.898937,
		-0.905325, 0.342696, -0.250893,
		-0.241706, -0.901450, -0.359119,
		46.251945, 36.473568, 32.714031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.844696, 36.972778, 33.312740>,  <46.421143, 37.104584, 32.965412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.844696, 36.972778, 33.312740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.933800, 36.602417, 33.190697>,  <45.987263, 36.380199, 33.117470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.933800, 36.602417, 33.190697>,  <45.844696, 36.972778, 33.312740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.933800, 36.602417, 33.190697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310401, -0.364046, 0.878136,
		-0.924137, -0.100908, -0.368494,
		0.222759, -0.925899, -0.305106,
		46.000629, 36.324646, 33.099163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.216095, 36.500412, 33.418346>,  <45.844696, 36.972778, 33.312740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.216095, 36.500412, 33.418346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.533787, 36.259613, 33.385334>,  <45.724400, 36.115135, 33.365528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.533787, 36.259613, 33.385334>,  <45.216095, 36.500412, 33.418346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.533787, 36.259613, 33.385334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220438, -0.412038, 0.884100,
		-0.566229, -0.683980, -0.459952,
		0.794224, -0.601994, -0.082533,
		45.772053, 36.079014, 33.360573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.951927, 35.786602, 33.467262>,  <45.216095, 36.500412, 33.418346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.951927, 35.786602, 33.467262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.335705, 35.806644, 33.578220>,  <45.565971, 35.818672, 33.644794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.335705, 35.806644, 33.578220>,  <44.951927, 35.786602, 33.467262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.335705, 35.806644, 33.578220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208369, -0.536680, 0.817653,
		0.189845, -0.842296, -0.504475,
		0.959448, 0.050111, 0.277394,
		45.623539, 35.821678, 33.661438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.021164, 35.125610, 33.696072>,  <44.951927, 35.786602, 33.467262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.021164, 35.125610, 33.696072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.324596, 35.335663, 33.850368>,  <45.506657, 35.461693, 33.942947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.324596, 35.335663, 33.850368>,  <45.021164, 35.125610, 33.696072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.324596, 35.335663, 33.850368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203536, -0.371420, 0.905881,
		0.618979, -0.765693, -0.174868,
		0.758577, 0.525130, 0.385747,
		45.552170, 35.493202, 33.966091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.585217, 34.528168, 33.997139>,  <45.021164, 35.125610, 33.696072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.585217, 34.528168, 33.997139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.599632, 34.889526, 34.168056>,  <45.608280, 35.106342, 34.270607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.599632, 34.889526, 34.168056>,  <45.585217, 34.528168, 33.997139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.599632, 34.889526, 34.168056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243486, -0.406751, 0.880493,
		0.969235, -0.135769, 0.205306,
		0.036035, 0.903394, 0.427295,
		45.610443, 35.160545, 34.296246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.942146, 34.500931, 34.677238>,  <45.585217, 34.528168, 33.997139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.942146, 34.500931, 34.677238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.714390, 34.828869, 34.701393>,  <45.577736, 35.025631, 34.715885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.714390, 34.828869, 34.701393>,  <45.942146, 34.500931, 34.677238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.714390, 34.828869, 34.701393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430052, -0.359671, 0.828065,
		0.700603, 0.445527, 0.557370,
		-0.569395, 0.819843, 0.060386,
		45.543571, 35.074821, 34.719509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.024864, 34.908146, 35.392895>,  <45.942146, 34.500931, 34.677238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.024864, 34.908146, 35.392895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.670773, 34.881145, 35.208801>,  <45.458317, 34.864944, 35.098347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.670773, 34.881145, 35.208801>,  <46.024864, 34.908146, 35.392895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.670773, 34.881145, 35.208801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387592, -0.440003, 0.810043,
		-0.257179, 0.895456, 0.363342,
		-0.885230, -0.067498, -0.460231,
		45.405205, 34.860897, 35.070732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.542599, 35.084202, 35.850929>,  <46.024864, 34.908146, 35.392895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.542599, 35.084202, 35.850929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.600246, 34.731476, 35.671318>,  <46.634834, 34.519840, 35.563549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.600246, 34.731476, 35.671318>,  <46.542599, 35.084202, 35.850929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.600246, 34.731476, 35.671318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760678, 0.388954, -0.519695,
		0.632929, -0.266673, 0.726833,
		0.144116, -0.881817, -0.449032,
		46.643482, 34.466930, 35.536610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.186192, 34.873459, 35.926975>,  <46.542599, 35.084202, 35.850929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.186192, 34.873459, 35.926975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.076664, 34.677509, 35.595905>,  <47.010948, 34.559940, 35.397263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.076664, 34.677509, 35.595905>,  <47.186192, 34.873459, 35.926975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.076664, 34.677509, 35.595905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601523, 0.584257, -0.544807,
		0.750462, -0.647043, 0.134692,
		-0.273818, -0.489878, -0.827674,
		46.994518, 34.530544, 35.347603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.763859, 34.977913, 35.530155>,  <47.186192, 34.873459, 35.926975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.763859, 34.977913, 35.530155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.479755, 34.844357, 35.282272>,  <47.309292, 34.764221, 35.133541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.479755, 34.844357, 35.282272>,  <47.763859, 34.977913, 35.530155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.479755, 34.844357, 35.282272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468436, 0.432944, -0.770148,
		0.525450, -0.837301, -0.151095,
		-0.710261, -0.333896, -0.619712,
		47.266678, 34.744186, 35.096359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.195774, 35.026142, 35.026627>,  <47.763859, 34.977913, 35.530155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.195774, 35.026142, 35.026627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.827396, 34.960178, 34.885391>,  <47.606369, 34.920601, 34.800648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.827396, 34.960178, 34.885391>,  <48.195774, 35.026142, 35.026627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.827396, 34.960178, 34.885391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226005, 0.512112, -0.828652,
		0.317472, -0.842940, -0.434355,
		-0.920942, -0.164907, -0.353090,
		47.551113, 34.910706, 34.779465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.778591, 36.213383, 46.949528> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.405708, 36.084873, 47.016197>,  <37.181980, 36.007767, 47.056198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.405708, 36.084873, 47.016197>,  <37.778591, 36.213383, 46.949528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.405708, 36.084873, 47.016197> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107037, -0.195181, -0.974909,
		0.345744, -0.926654, 0.147561,
		-0.932204, -0.321275, 0.166669,
		37.126045, 35.988491, 47.066196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676765, 35.771900, 46.490395>,  <37.778591, 36.213383, 46.949528>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.676765, 35.771900, 46.490395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.285713, 35.811649, 46.564545>,  <37.051083, 35.835499, 46.609035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.285713, 35.811649, 46.564545>,  <37.676765, 35.771900, 46.490395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.285713, 35.811649, 46.564545> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191323, -0.054028, -0.980039,
		-0.087378, -0.993582, 0.071832,
		-0.977630, 0.099377, 0.185374,
		36.992424, 35.841461, 46.620155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.424515, 35.219223, 46.216534>,  <37.676765, 35.771900, 46.490395>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.424515, 35.219223, 46.216534> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.108070, 35.460690, 46.255989>,  <36.918205, 35.605572, 46.279663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.108070, 35.460690, 46.255989>,  <37.424515, 35.219223, 46.216534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.108070, 35.460690, 46.255989> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357069, -0.324833, -0.875777,
		-0.496639, -0.728055, 0.472531,
		-0.791108, 0.603671, 0.098642,
		36.870739, 35.641792, 46.285583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.947636, 34.836571, 46.047371>,  <37.424515, 35.219223, 46.216534>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.947636, 34.836571, 46.047371> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.818111, 35.208214, 45.975910>,  <36.740398, 35.431198, 45.933033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.818111, 35.208214, 45.975910>,  <36.947636, 34.836571, 46.047371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.818111, 35.208214, 45.975910> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213611, -0.255739, -0.942851,
		-0.921694, -0.267140, 0.281277,
		-0.323806, 0.929104, -0.178649,
		36.720970, 35.486946, 45.922314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325878, 34.760506, 45.771194>,  <36.947636, 34.836571, 46.047371>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.325878, 34.760506, 45.771194> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.409485, 35.137287, 45.666096>,  <36.459648, 35.363358, 45.603039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.409485, 35.137287, 45.666096>,  <36.325878, 34.760506, 45.771194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.409485, 35.137287, 45.666096> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284048, -0.198616, -0.938013,
		-0.935750, 0.270695, 0.226045,
		0.209020, 0.941953, -0.262745,
		36.472191, 35.419872, 45.587273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.704575, 35.074078, 45.544125>,  <36.325878, 34.760506, 45.771194>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.704575, 35.074078, 45.544125> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.010551, 35.280090, 45.389408>,  <36.194138, 35.403698, 45.296577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.010551, 35.280090, 45.389408>,  <35.704575, 35.074078, 45.544125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.010551, 35.280090, 45.389408> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350665, -0.170721, -0.920809,
		-0.540277, 0.840000, 0.050012,
		0.764941, 0.515029, -0.386795,
		36.240032, 35.434601, 45.273369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.417355, 35.340984, 44.931114>,  <35.704575, 35.074078, 45.544125>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.417355, 35.340984, 44.931114> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.802975, 35.421295, 44.861496>,  <36.034348, 35.469482, 44.819725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.802975, 35.421295, 44.861496>,  <35.417355, 35.340984, 44.931114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.802975, 35.421295, 44.861496> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128635, -0.220472, -0.966874,
		-0.232493, 0.954506, -0.186720,
		0.964054, 0.200772, -0.174041,
		36.092190, 35.481525, 44.809284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.329964, 35.627518, 44.323803>,  <35.417355, 35.340984, 44.931114>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.329964, 35.627518, 44.323803> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.713200, 35.512959, 44.326469>,  <35.943142, 35.444221, 44.328072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.713200, 35.512959, 44.326469>,  <35.329964, 35.627518, 44.323803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.713200, 35.512959, 44.326469> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060330, -0.224467, -0.972612,
		0.280050, 0.931446, -0.232337,
		0.958088, -0.286397, 0.006668,
		36.000626, 35.427040, 44.328468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.678883, 36.111889, 43.816021>,  <35.329964, 35.627518, 44.323803>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.678883, 36.111889, 43.816021> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.897869, 35.780827, 43.865456>,  <36.029263, 35.582191, 43.895119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.897869, 35.780827, 43.865456>,  <35.678883, 36.111889, 43.816021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.897869, 35.780827, 43.865456> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005697, -0.151371, -0.988461,
		0.836809, 0.540444, -0.087586,
		0.547466, -0.827652, 0.123590,
		36.062107, 35.532532, 43.902531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.282780, 36.166862, 43.292057>,  <35.678883, 36.111889, 43.816021>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.282780, 36.166862, 43.292057> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.290398, 35.782074, 43.401051>,  <36.294968, 35.551201, 43.466446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.290398, 35.782074, 43.401051>,  <36.282780, 36.166862, 43.292057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.290398, 35.782074, 43.401051> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077171, -0.270308, -0.959676,
		0.996836, 0.039304, 0.069088,
		0.019044, -0.961971, 0.272486,
		36.296112, 35.493484, 43.482796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.919559, 35.812702, 43.190037>,  <36.282780, 36.166862, 43.292057>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.919559, 35.812702, 43.190037> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.644039, 35.523121, 43.174866>,  <36.478725, 35.349373, 43.165764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.644039, 35.523121, 43.174866>,  <36.919559, 35.812702, 43.190037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.644039, 35.523121, 43.174866> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368089, -0.304190, -0.878623,
		0.624548, -0.619159, 0.476007,
		-0.688803, -0.723955, -0.037924,
		36.437397, 35.305935, 43.163486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.299786, 35.110130, 43.008945>,  <36.919559, 35.812702, 43.190037>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.299786, 35.110130, 43.008945> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.912006, 35.095364, 42.911945>,  <36.679340, 35.086506, 42.853745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.912006, 35.095364, 42.911945>,  <37.299786, 35.110130, 43.008945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.912006, 35.095364, 42.911945> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238902, -0.366358, -0.899282,
		-0.055647, -0.929741, 0.363984,
		-0.969448, -0.036914, -0.242504,
		36.621174, 35.084290, 42.839195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.324249, 34.492184, 42.672070>,  <37.299786, 35.110130, 43.008945>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.324249, 34.492184, 42.672070> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.957825, 34.628479, 42.587479>,  <36.737968, 34.710255, 42.536724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.957825, 34.628479, 42.587479>,  <37.324249, 34.492184, 42.672070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.957825, 34.628479, 42.587479> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009948, -0.546488, -0.837408,
		-0.400906, -0.765016, 0.504008,
		-0.916065, 0.340736, -0.211480,
		36.683006, 34.730701, 42.524033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.928768, 33.960342, 42.644413>,  <37.324249, 34.492184, 42.672070>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.928768, 33.960342, 42.644413> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.729977, 34.223145, 42.417660>,  <36.610703, 34.380825, 42.281609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.729977, 34.223145, 42.417660>,  <36.928768, 33.960342, 42.644413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.729977, 34.223145, 42.417660> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234442, -0.527318, -0.816684,
		-0.835496, -0.538772, 0.108033,
		-0.496975, 0.657009, -0.566883,
		36.580883, 34.420246, 42.247597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.377850, 33.551640, 42.221546>,  <36.928768, 33.960342, 42.644413>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.377850, 33.551640, 42.221546> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.426140, 33.905617, 42.041634>,  <36.455112, 34.118004, 41.933685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.426140, 33.905617, 42.041634>,  <36.377850, 33.551640, 42.221546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.426140, 33.905617, 42.041634> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191203, -0.465337, -0.864236,
		-0.974098, 0.018337, -0.225382,
		0.120726, 0.884944, -0.449778,
		36.462357, 34.171101, 41.906700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.987370, 33.513206, 41.588421>,  <36.377850, 33.551640, 42.221546>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.987370, 33.513206, 41.588421> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.253548, 33.802418, 41.514217>,  <36.413254, 33.975945, 41.469696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.253548, 33.802418, 41.514217>,  <35.987370, 33.513206, 41.588421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.253548, 33.802418, 41.514217> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074794, -0.311862, -0.947179,
		-0.742688, 0.616423, -0.261606,
		0.665448, 0.723025, -0.185511,
		36.453182, 34.019325, 41.458565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.797756, 33.787441, 40.966274>,  <35.987370, 33.513206, 41.588421>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.797756, 33.787441, 40.966274> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.190876, 33.858448, 40.986671>,  <36.426746, 33.901051, 40.998909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.190876, 33.858448, 40.986671>,  <35.797756, 33.787441, 40.966274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.190876, 33.858448, 40.986671> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089448, -0.215934, -0.972302,
		-0.161591, 0.960135, -0.228098,
		0.982796, 0.177518, 0.050989,
		36.485714, 33.911705, 41.001968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.886452, 33.978508, 40.321499>,  <35.797756, 33.787441, 40.966274>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.886452, 33.978508, 40.321499> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.258633, 33.916794, 40.454437>,  <36.481941, 33.879765, 40.534199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.258633, 33.916794, 40.454437>,  <35.886452, 33.978508, 40.321499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.258633, 33.916794, 40.454437> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296740, -0.214783, -0.930491,
		0.214946, 0.964398, -0.154062,
		0.930454, -0.154288, 0.332342,
		36.537769, 33.870506, 40.554138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.369514, 34.404053, 39.901039>,  <35.886452, 33.978508, 40.321499>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.369514, 34.404053, 39.901039> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.578407, 34.098354, 40.052402>,  <36.703743, 33.914936, 40.143223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.578407, 34.098354, 40.052402>,  <36.369514, 34.404053, 39.901039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.578407, 34.098354, 40.052402> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411144, -0.163123, -0.896856,
		0.747150, 0.623949, 0.229028,
		0.522233, -0.764250, 0.378411,
		36.735077, 33.869080, 40.165924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.063736, 34.536697, 39.544182>,  <36.369514, 34.404053, 39.901039>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.063736, 34.536697, 39.544182> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.021446, 34.160130, 39.672276>,  <36.996075, 33.934189, 39.749130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.021446, 34.160130, 39.672276>,  <37.063736, 34.536697, 39.544182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.021446, 34.160130, 39.672276> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423470, -0.333999, -0.842091,
		0.899720, 0.046581, 0.433975,
		-0.105722, -0.941422, 0.320231,
		36.989731, 33.877705, 39.768345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.760551, 34.218636, 39.487236>,  <37.063736, 34.536697, 39.544182>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.760551, 34.218636, 39.487236> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.538906, 33.887699, 39.524044>,  <37.405918, 33.689137, 39.546127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.538906, 33.887699, 39.524044>,  <37.760551, 34.218636, 39.487236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.538906, 33.887699, 39.524044> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528616, -0.435115, -0.728862,
		0.643054, -0.355231, 0.678448,
		-0.554118, -0.827337, 0.092021,
		37.372669, 33.639500, 39.551651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.231316, 33.590092, 39.407764>,  <37.760551, 34.218636, 39.487236>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.231316, 33.590092, 39.407764> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.860256, 33.458874, 39.336384>,  <37.637619, 33.380142, 39.293556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.860256, 33.458874, 39.336384>,  <38.231316, 33.590092, 39.407764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.860256, 33.458874, 39.336384> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338347, -0.536058, -0.773410,
		0.158055, -0.777834, 0.608270,
		-0.927653, -0.328048, -0.178451,
		37.581959, 33.360458, 39.282848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.972729, 33.788418, 39.081005>,  <38.231316, 33.590092, 39.407764>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.972729, 33.788418, 39.081005> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.334869, 33.957958, 39.070549>,  <39.552155, 34.059681, 39.064274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.334869, 33.957958, 39.070549>,  <38.972729, 33.788418, 39.081005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.334869, 33.957958, 39.070549> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106702, 0.286638, 0.952078,
		0.411030, -0.859180, 0.304735,
		0.905356, 0.423849, -0.026140,
		39.606476, 34.085114, 39.062706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.351364, 33.505665, 39.673931>,  <38.972729, 33.788418, 39.081005>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.351364, 33.505665, 39.673931> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.539513, 33.839405, 39.558964>,  <39.652401, 34.039650, 39.489983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.539513, 33.839405, 39.558964>,  <39.351364, 33.505665, 39.673931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.539513, 33.839405, 39.558964> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012202, 0.331819, 0.943264,
		0.882383, -0.440179, 0.166259,
		0.470373, 0.834349, -0.287420,
		39.680626, 34.089710, 39.472736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.865711, 33.551891, 40.203129>,  <39.351364, 33.505665, 39.673931>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.865711, 33.551891, 40.203129> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.820396, 33.908764, 40.028233>,  <39.793205, 34.122887, 39.923294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.820396, 33.908764, 40.028233>,  <39.865711, 33.551891, 40.203129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.820396, 33.908764, 40.028233> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043238, 0.435234, 0.899278,
		0.992621, 0.120785, -0.010732,
		-0.113290, 0.892178, -0.437245,
		39.786411, 34.176418, 39.897060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.544094, 33.795933, 40.168556>,  <39.865711, 33.551891, 40.203129>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.544094, 33.795933, 40.168556> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.286476, 34.101891, 40.163731>,  <40.131905, 34.285465, 40.160835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.286476, 34.101891, 40.163731>,  <40.544094, 33.795933, 40.168556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.286476, 34.101891, 40.163731> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297609, 0.265055, 0.917156,
		0.704727, 0.587095, -0.398346,
		-0.644041, 0.764896, -0.012067,
		40.093266, 34.331360, 40.160110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.965721, 34.264660, 40.534912>,  <40.544094, 33.795933, 40.168556>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.965721, 34.264660, 40.534912> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.606785, 34.440350, 40.517651>,  <40.391422, 34.545765, 40.507294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.606785, 34.440350, 40.517651>,  <40.965721, 34.264660, 40.534912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.606785, 34.440350, 40.517651> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088795, 0.275449, 0.957206,
		0.432315, 0.855107, -0.286172,
		-0.897340, 0.439225, -0.043152,
		40.337582, 34.572117, 40.504704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.062038, 34.968048, 40.825447>,  <40.965721, 34.264660, 40.534912>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.062038, 34.968048, 40.825447> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.669540, 34.891399, 40.833786>,  <40.434040, 34.845409, 40.838787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.669540, 34.891399, 40.833786>,  <41.062038, 34.968048, 40.825447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.669540, 34.891399, 40.833786> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033038, 0.273735, 0.961238,
		-0.189903, 0.942523, -0.274933,
		-0.981247, -0.191625, 0.020844,
		40.375168, 34.833912, 40.840038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.803036, 35.560390, 40.988342>,  <41.062038, 34.968048, 40.825447>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.803036, 35.560390, 40.988342> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.532211, 35.296066, 41.117908>,  <40.369717, 35.137470, 41.195648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.532211, 35.296066, 41.117908>,  <40.803036, 35.560390, 40.988342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.532211, 35.296066, 41.117908> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000691, 0.440713, 0.897648,
		-0.735927, 0.607538, -0.298846,
		-0.677061, -0.660810, 0.323913,
		40.329094, 35.097824, 41.215084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.319927, 35.994999, 41.335007>,  <40.803036, 35.560390, 40.988342>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.319927, 35.994999, 41.335007> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.266972, 35.620205, 41.464333>,  <40.235199, 35.395329, 41.541927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.266972, 35.620205, 41.464333>,  <40.319927, 35.994999, 41.335007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.266972, 35.620205, 41.464333> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217526, 0.345701, 0.912783,
		-0.967034, 0.050514, -0.249585,
		-0.132390, -0.936984, 0.323317,
		40.227253, 35.339111, 41.561329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.736744, 35.979458, 41.668526>,  <40.319927, 35.994999, 41.335007>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.736744, 35.979458, 41.668526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.895603, 35.637554, 41.802189>,  <39.990917, 35.432411, 41.882385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.895603, 35.637554, 41.802189>,  <39.736744, 35.979458, 41.668526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.895603, 35.637554, 41.802189> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187696, 0.280756, 0.941247,
		-0.898358, -0.436531, -0.048935,
		0.397145, -0.854762, 0.334154,
		40.014748, 35.381126, 41.902435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.314163, 35.678188, 42.163063>,  <39.736744, 35.979458, 41.668526>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.314163, 35.678188, 42.163063> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.672771, 35.521011, 42.244896>,  <39.887936, 35.426704, 42.293995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.672771, 35.521011, 42.244896>,  <39.314163, 35.678188, 42.163063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.672771, 35.521011, 42.244896> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241251, -0.045736, 0.969384,
		-0.371552, -0.918426, -0.135800,
		0.896519, -0.392939, 0.204578,
		39.941727, 35.403130, 42.306271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.170380, 35.235836, 42.638584>,  <39.314163, 35.678188, 42.163063>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.170380, 35.235836, 42.638584> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.560516, 35.316628, 42.674171>,  <39.794598, 35.365105, 42.695526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.560516, 35.316628, 42.674171>,  <39.170380, 35.235836, 42.638584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.560516, 35.316628, 42.674171> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032536, -0.267127, 0.963112,
		0.218298, -0.942256, -0.253968,
		0.975340, 0.201982, 0.088971,
		39.853119, 35.377220, 42.700863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.562366, 34.660378, 43.031708>,  <39.170380, 35.235836, 42.638584>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.562366, 34.660378, 43.031708> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.812145, 34.970940, 43.065807>,  <39.962013, 35.157276, 43.086269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.812145, 34.970940, 43.065807>,  <39.562366, 34.660378, 43.031708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.812145, 34.970940, 43.065807> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034968, -0.081249, 0.996080,
		0.780287, -0.624977, -0.023586,
		0.624443, 0.776404, 0.085252,
		39.999477, 35.203861, 43.091381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.043861, 34.502918, 43.593548>,  <39.562366, 34.660378, 43.031708>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.043861, 34.502918, 43.593548> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.065075, 34.899712, 43.547684>,  <40.077801, 35.137787, 43.520164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.065075, 34.899712, 43.547684>,  <40.043861, 34.502918, 43.593548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.065075, 34.899712, 43.547684> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230542, 0.123884, 0.965144,
		0.971617, -0.024747, 0.235264,
		0.053029, 0.991988, -0.114663,
		40.080982, 35.197308, 43.513287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.323570, 34.794846, 44.202309>,  <40.043861, 34.502918, 43.593548>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.323570, 34.794846, 44.202309> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.240799, 35.156883, 44.053726>,  <40.191135, 35.374107, 43.964577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.240799, 35.156883, 44.053726>,  <40.323570, 34.794846, 44.202309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.240799, 35.156883, 44.053726> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191997, 0.334726, 0.922548,
		0.959333, 0.262216, 0.104513,
		-0.206924, 0.905097, -0.371459,
		40.178722, 35.428413, 43.942287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.808643, 35.261780, 44.336262>,  <40.323570, 34.794846, 44.202309>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.808643, 35.261780, 44.336262> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.481270, 35.489449, 44.304764>,  <40.284843, 35.626049, 44.285866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.481270, 35.489449, 44.304764>,  <40.808643, 35.261780, 44.336262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.481270, 35.489449, 44.304764> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143946, 0.335768, 0.930881,
		0.556274, 0.750532, -0.356736,
		-0.818437, 0.569176, -0.078743,
		40.235741, 35.660202, 44.281139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.017879, 35.910595, 44.554398>,  <40.808643, 35.261780, 44.336262>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.017879, 35.910595, 44.554398> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.619324, 35.912853, 44.588261>,  <40.380188, 35.914207, 44.608578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.619324, 35.912853, 44.588261>,  <41.017879, 35.910595, 44.554398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.619324, 35.912853, 44.588261> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078751, 0.432842, 0.898023,
		-0.031577, 0.901452, -0.431726,
		-0.996394, 0.005642, 0.084658,
		40.320404, 35.914547, 44.613659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.892570, 36.488445, 44.917912>,  <41.017879, 35.910595, 44.554398>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.892570, 36.488445, 44.917912> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.541290, 36.299725, 44.949333>,  <40.330521, 36.186493, 44.968185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.541290, 36.299725, 44.949333>,  <40.892570, 36.488445, 44.917912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.541290, 36.299725, 44.949333> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033151, 0.223883, 0.974052,
		-0.477143, 0.852809, -0.212255,
		-0.878200, -0.471798, 0.078553,
		40.277832, 36.158184, 44.972900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.519001, 36.955795, 45.301941>,  <40.892570, 36.488445, 44.917912>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.519001, 36.955795, 45.301941> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.288528, 36.629665, 45.324753>,  <40.150246, 36.433987, 45.338440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.288528, 36.629665, 45.324753>,  <40.519001, 36.955795, 45.301941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.288528, 36.629665, 45.324753> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129472, 0.159946, 0.978598,
		-0.807001, 0.556467, -0.197721,
		-0.576183, -0.815329, 0.057030,
		40.115673, 36.385067, 45.341862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.530331, 37.092213, 45.593494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.649391, 36.714241, 45.647915>,  <39.720829, 36.487457, 45.680569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.649391, 36.714241, 45.647915>,  <39.530331, 37.092213, 45.593494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.649391, 36.714241, 45.647915> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410838, 0.001853, 0.911707,
		-0.861751, -0.327266, -0.387662,
		0.297652, -0.944931, 0.136050,
		39.738686, 36.430763, 45.688728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.978249, 36.734669, 45.993744>,  <39.530331, 37.092213, 45.593494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.978249, 36.734669, 45.993744> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.310383, 36.519608, 46.052361>,  <39.509663, 36.390572, 46.087528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.310383, 36.519608, 46.052361>,  <38.978249, 36.734669, 45.993744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.310383, 36.519608, 46.052361> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227019, -0.086210, 0.970067,
		-0.508929, -0.838746, -0.193641,
		0.830334, -0.537655, 0.146537,
		39.559483, 36.358311, 46.096321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.804329, 36.197231, 46.357277>,  <38.978249, 36.734669, 45.993744>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.804329, 36.197231, 46.357277> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.190422, 36.267578, 46.434628>,  <39.422077, 36.309784, 46.481037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.190422, 36.267578, 46.434628>,  <38.804329, 36.197231, 46.357277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.190422, 36.267578, 46.434628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165938, -0.159327, 0.973180,
		0.201959, -0.971435, -0.124605,
		0.965235, 0.175866, 0.193376,
		39.479992, 36.320339, 46.492641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.021214, 35.573681, 46.700680>,  <38.804329, 36.197231, 46.357277>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.021214, 35.573681, 46.700680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.281036, 35.868439, 46.775570>,  <39.436932, 36.045296, 46.820503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.281036, 35.868439, 46.775570>,  <39.021214, 35.573681, 46.700680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.281036, 35.868439, 46.775570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011512, -0.236692, 0.971516,
		0.760223, -0.633213, -0.145263,
		0.649560, 0.736897, 0.187229,
		39.475903, 36.089508, 46.831738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.448341, 35.310734, 47.220356>,  <39.021214, 35.573681, 46.700680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.448341, 35.310734, 47.220356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.544769, 35.698116, 47.245613>,  <39.602627, 35.930546, 47.260769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.544769, 35.698116, 47.245613>,  <39.448341, 35.310734, 47.220356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.544769, 35.698116, 47.245613> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128347, -0.032678, 0.991191,
		0.961984, -0.247047, 0.116421,
		0.241066, 0.968452, 0.063143,
		39.617088, 35.988651, 47.264557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.920444, 35.405613, 47.785004>,  <39.448341, 35.310734, 47.220356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.920444, 35.405613, 47.785004> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.772350, 35.770573, 47.715202>,  <39.683495, 35.989548, 47.673321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.772350, 35.770573, 47.715202>,  <39.920444, 35.405613, 47.785004>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.772350, 35.770573, 47.715202> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054946, 0.166011, 0.984592,
		0.927312, 0.374116, -0.011330,
		-0.370233, 0.912402, -0.174500,
		39.661282, 36.044292, 47.662853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.347733, 35.993660, 48.109474>,  <39.920444, 35.405613, 47.785004>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.347733, 35.993660, 48.109474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.993370, 36.171490, 48.056515>,  <39.780754, 36.278187, 48.024738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.993370, 36.171490, 48.056515>,  <40.347733, 35.993660, 48.109474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.993370, 36.171490, 48.056515> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011084, 0.265058, 0.964169,
		0.463736, 0.855629, -0.229888,
		-0.885904, 0.444571, -0.132401,
		39.727600, 36.304863, 48.016796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.371979, 36.504051, 48.555248>,  <40.347733, 35.993660, 48.109474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.371979, 36.504051, 48.555248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.984177, 36.448505, 48.474480>,  <39.751495, 36.415176, 48.426018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.984177, 36.448505, 48.474480>,  <40.371979, 36.504051, 48.555248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.984177, 36.448505, 48.474480> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215216, 0.088371, 0.972560,
		-0.117209, 0.986361, -0.115562,
		-0.969507, -0.138864, -0.201923,
		39.693325, 36.406845, 48.413902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.121140, 37.068020, 48.798626>,  <40.371979, 36.504051, 48.555248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.121140, 37.068020, 48.798626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.838940, 36.787487, 48.839443>,  <39.669621, 36.619167, 48.863934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.838940, 36.787487, 48.839443>,  <40.121140, 37.068020, 48.798626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.838940, 36.787487, 48.839443> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033533, 0.110794, 0.993278,
		-0.707919, 0.704176, -0.054647,
		-0.705497, -0.701328, 0.102046,
		39.627289, 36.577087, 48.870056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.591537, 37.363201, 49.150696>,  <40.121140, 37.068020, 48.798626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.591537, 37.363201, 49.150696> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.537525, 36.970146, 49.201607>,  <39.505119, 36.734314, 49.232151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.537525, 36.970146, 49.201607>,  <39.591537, 37.363201, 49.150696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.537525, 36.970146, 49.201607> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046727, 0.134624, 0.989794,
		-0.989739, 0.127702, -0.064094,
		-0.135027, -0.982633, 0.127276,
		39.497017, 36.675358, 49.239788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.168922, 37.360710, 49.758514>,  <39.591537, 37.363201, 49.150696>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.168922, 37.360710, 49.758514> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.311272, 36.989887, 49.711330>,  <39.396679, 36.767391, 49.683022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.311272, 36.989887, 49.711330>,  <39.168922, 37.360710, 49.758514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.311272, 36.989887, 49.711330> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061729, -0.102628, 0.992802,
		-0.932494, -0.360591, 0.020704,
		0.355871, -0.927061, -0.117959,
		39.418034, 36.711769, 49.675941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.796139, 37.013527, 50.221600>,  <39.168922, 37.360710, 49.758514>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.796139, 37.013527, 50.221600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.129482, 36.805565, 50.146545>,  <39.329491, 36.680786, 50.101513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.129482, 36.805565, 50.146545>,  <38.796139, 37.013527, 50.221600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.129482, 36.805565, 50.146545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177553, -0.069671, 0.981642,
		-0.523433, -0.851378, 0.034249,
		0.833363, -0.519905, -0.187633,
		39.379490, 36.649593, 50.090256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.709488, 36.414730, 50.564503>,  <38.796139, 37.013527, 50.221600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.709488, 36.414730, 50.564503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.099457, 36.485428, 50.510406>,  <39.333439, 36.527847, 50.477947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.099457, 36.485428, 50.510406>,  <38.709488, 36.414730, 50.564503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.099457, 36.485428, 50.510406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146865, -0.054376, 0.987661,
		0.167215, -0.982753, -0.078971,
		0.974920, 0.176750, -0.135240,
		39.391933, 36.538452, 50.469833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.072987, 35.909008, 50.975533>,  <38.709488, 36.414730, 50.564503>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.072987, 35.909008, 50.975533> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.398270, 36.132858, 50.911652>,  <39.593441, 36.267170, 50.873322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.398270, 36.132858, 50.911652>,  <39.072987, 35.909008, 50.975533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.398270, 36.132858, 50.911652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258583, -0.101608, 0.960630,
		0.521369, -0.822491, -0.227339,
		0.813209, 0.559629, -0.159706,
		39.642231, 36.300747, 50.863739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.667950, 35.486477, 51.143600>,  <39.072987, 35.909008, 50.975533>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.667950, 35.486477, 51.143600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.751911, 35.877106, 51.162598>,  <39.802288, 36.111481, 51.173996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.751911, 35.877106, 51.162598>,  <39.667950, 35.486477, 51.143600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.751911, 35.877106, 51.162598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304343, -0.111420, 0.946024,
		0.929149, -0.184117, -0.320599,
		0.209901, 0.976569, 0.047491,
		39.814880, 36.170074, 51.176846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.337849, 35.533039, 51.440292>,  <39.667950, 35.486477, 51.143600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.337849, 35.533039, 51.440292> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.138008, 35.870575, 51.518612>,  <40.018105, 36.073097, 51.565601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.138008, 35.870575, 51.518612>,  <40.337849, 35.533039, 51.440292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.138008, 35.870575, 51.518612> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210889, -0.100746, 0.972305,
		0.840196, 0.527052, -0.127624,
		-0.499597, 0.843840, 0.195796,
		39.988129, 36.123726, 51.577351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.799934, 35.763760, 51.941273>,  <40.337849, 35.533039, 51.440292>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.799934, 35.763760, 51.941273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.518768, 36.045860, 51.978226>,  <40.350067, 36.215118, 52.000397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.518768, 36.045860, 51.978226>,  <40.799934, 35.763760, 51.941273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.518768, 36.045860, 51.978226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375657, 0.257805, 0.890179,
		0.603981, 0.660424, -0.446147,
		-0.702915, 0.705249, 0.092384,
		40.307896, 36.257435, 52.005939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.133232, 36.397202, 52.206276>,  <40.799934, 35.763760, 51.941273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.133232, 36.397202, 52.206276> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.744690, 36.391853, 52.301178>,  <40.511566, 36.388645, 52.358120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.744690, 36.391853, 52.301178>,  <41.133232, 36.397202, 52.206276>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.744690, 36.391853, 52.301178> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220624, 0.320173, 0.921311,
		-0.088280, 0.947265, -0.308053,
		-0.971356, -0.013370, 0.237254,
		40.453281, 36.387844, 52.372353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.005310, 37.045242, 52.710690>,  <41.133232, 36.397202, 52.206276>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.005310, 37.045242, 52.710690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.717072, 36.774147, 52.769218>,  <40.544128, 36.611488, 52.804337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.717072, 36.774147, 52.769218>,  <41.005310, 37.045242, 52.710690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.717072, 36.774147, 52.769218> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148356, 0.055431, 0.987379,
		-0.677294, 0.733212, 0.060603,
		-0.720599, -0.677737, 0.146320,
		40.500893, 36.570827, 52.813114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.518131, 37.368309, 53.177711>,  <41.005310, 37.045242, 52.710690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.518131, 37.368309, 53.177711> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.445583, 36.979603, 53.238079>,  <40.402054, 36.746380, 53.274300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.445583, 36.979603, 53.238079>,  <40.518131, 37.368309, 53.177711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.445583, 36.979603, 53.238079> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259474, 0.100741, 0.960482,
		-0.948566, 0.213364, 0.233876,
		-0.181372, -0.971765, 0.150922,
		40.391171, 36.688072, 53.283356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.182514, 37.361351, 53.788792>,  <40.518131, 37.368309, 53.177711>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.182514, 37.361351, 53.788792> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.308376, 36.983643, 53.750137>,  <40.383892, 36.757015, 53.726944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.308376, 36.983643, 53.750137>,  <40.182514, 37.361351, 53.788792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.308376, 36.983643, 53.750137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194394, -0.035548, 0.980279,
		-0.929088, -0.327233, 0.172376,
		0.314652, -0.944275, -0.096639,
		40.402771, 36.700359, 53.721146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.706722, 36.930912, 54.274120>,  <40.182514, 37.361351, 53.788792>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.706722, 36.930912, 54.274120> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.045460, 36.722431, 54.231804>,  <40.248703, 36.597343, 54.206413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.045460, 36.722431, 54.231804>,  <39.706722, 36.930912, 54.274120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.045460, 36.722431, 54.231804> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147900, 0.039719, 0.988204,
		-0.510857, -0.852506, 0.110722,
		0.846848, -0.521207, -0.105795,
		40.299515, 36.566071, 54.200066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.832981, 36.730747, 54.896858>,  <39.706722, 36.930912, 54.274120>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.832981, 36.730747, 54.896858> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.174072, 36.622524, 54.718128>,  <40.378727, 36.557590, 54.610889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.174072, 36.622524, 54.718128>,  <39.832981, 36.730747, 54.896858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.174072, 36.622524, 54.718128> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496991, 0.156902, 0.853453,
		-0.160798, -0.949833, 0.268258,
		0.852727, -0.270555, -0.446829,
		40.429890, 36.541359, 54.584080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.087959, 36.647526, 54.706547>,  <39.832981, 36.730747, 54.896858>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.087959, 36.647526, 54.706547> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.891792, 36.353661, 54.894062>,  <38.774094, 36.177341, 55.006569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.891792, 36.353661, 54.894062>,  <39.087959, 36.647526, 54.706547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.891792, 36.353661, 54.894062> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398013, -0.289726, -0.870427,
		0.775293, -0.613452, -0.150321,
		-0.490414, -0.734667, 0.468785,
		38.744667, 36.133259, 55.034698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.121727, 36.113274, 54.307735>,  <39.087959, 36.647526, 54.706547>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.121727, 36.113274, 54.307735> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.807705, 35.994839, 54.525364>,  <38.619289, 35.923779, 54.655941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.807705, 35.994839, 54.525364>,  <39.121727, 36.113274, 54.307735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.807705, 35.994839, 54.525364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464103, -0.300550, -0.833233,
		0.410235, -0.906642, 0.098532,
		-0.785058, -0.296092, 0.544072,
		38.572189, 35.906010, 54.688587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.994183, 35.356544, 54.182957>,  <39.121727, 36.113274, 54.307735>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.994183, 35.356544, 54.182957> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.660954, 35.549992, 54.290363>,  <38.461014, 35.666058, 54.354809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.660954, 35.549992, 54.290363>,  <38.994183, 35.356544, 54.182957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.660954, 35.549992, 54.290363> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506375, -0.471354, -0.722087,
		-0.222644, -0.737524, 0.637564,
		-0.833075, 0.483615, 0.268520,
		38.411030, 35.695076, 54.370918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.443226, 34.878113, 54.195175>,  <38.994183, 35.356544, 54.182957>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.443226, 34.878113, 54.195175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.265537, 35.231052, 54.133038>,  <38.158924, 35.442814, 54.095753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.265537, 35.231052, 54.133038>,  <38.443226, 34.878113, 54.195175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.265537, 35.231052, 54.133038> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457644, -0.372545, -0.807324,
		-0.770212, -0.287537, 0.569293,
		-0.444223, 0.882345, -0.155349,
		38.132271, 35.495754, 54.086433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824863, 34.671268, 54.014347>,  <38.443226, 34.878113, 54.195175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.824863, 34.671268, 54.014347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.837097, 35.052860, 53.895027>,  <37.844437, 35.281815, 53.823437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.837097, 35.052860, 53.895027>,  <37.824863, 34.671268, 54.014347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.837097, 35.052860, 53.895027> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421196, -0.258349, -0.869396,
		-0.906454, 0.152233, 0.393912,
		0.030584, 0.953982, -0.298301,
		37.846272, 35.339054, 53.805538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.103382, 34.861145, 53.894413>,  <37.824863, 34.671268, 54.014347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.103382, 34.861145, 53.894413> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.369137, 35.086800, 53.698315>,  <37.528591, 35.222191, 53.580654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.369137, 35.086800, 53.698315>,  <37.103382, 34.861145, 53.894413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.369137, 35.086800, 53.698315> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494883, -0.159490, -0.854198,
		-0.560072, 0.810133, 0.173218,
		0.664388, 0.564134, -0.490246,
		37.568455, 35.256039, 53.551239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.708199, 35.364349, 53.464039>,  <37.103382, 34.861145, 53.894413>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.708199, 35.364349, 53.464039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.080963, 35.366013, 53.318974>,  <37.304623, 35.367012, 53.231934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.080963, 35.366013, 53.318974>,  <36.708199, 35.364349, 53.464039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.080963, 35.366013, 53.318974> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362137, -0.044508, -0.931062,
		-0.020015, 0.999000, -0.039971,
		0.931910, 0.004160, -0.362666,
		37.360535, 35.367260, 53.210175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.777664, 35.889912, 52.883659>,  <36.708199, 35.364349, 53.464039>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.777664, 35.889912, 52.883659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.093037, 35.653187, 52.816566>,  <37.282261, 35.511154, 52.776310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.093037, 35.653187, 52.816566>,  <36.777664, 35.889912, 52.883659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.093037, 35.653187, 52.816566> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129197, 0.107278, -0.985799,
		0.601399, 0.798908, 0.008122,
		0.788434, -0.591809, -0.167733,
		37.329567, 35.475643, 52.766247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.151028, 36.174568, 52.394447>,  <36.777664, 35.889912, 52.883659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.151028, 36.174568, 52.394447> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.271183, 35.795914, 52.347729>,  <37.343277, 35.568722, 52.319698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.271183, 35.795914, 52.347729>,  <37.151028, 36.174568, 52.394447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.271183, 35.795914, 52.347729> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118640, 0.158584, -0.980192,
		0.946411, 0.280578, 0.159946,
		0.300385, -0.946640, -0.116798,
		37.361298, 35.511921, 52.312691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.682106, 36.284073, 51.929848>,  <37.151028, 36.174568, 52.394447>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.682106, 36.284073, 51.929848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.565777, 35.902473, 51.900673>,  <37.495979, 35.673515, 51.883167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.565777, 35.902473, 51.900673>,  <37.682106, 36.284073, 51.929848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.565777, 35.902473, 51.900673> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249015, -0.001862, -0.968498,
		0.923805, -0.299820, 0.238101,
		-0.290819, -0.953994, -0.072940,
		37.478531, 35.616276, 51.878792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.290913, 35.992161, 51.576591>,  <37.682106, 36.284073, 51.929848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.290913, 35.992161, 51.576591> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.967010, 35.766399, 51.512413>,  <37.772667, 35.630943, 51.473907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.967010, 35.766399, 51.512413>,  <38.290913, 35.992161, 51.576591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.967010, 35.766399, 51.512413> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074163, 0.172796, -0.982161,
		0.582059, -0.807211, -0.098065,
		-0.809757, -0.564403, -0.160443,
		37.724083, 35.597080, 51.464279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.427937, 35.619423, 50.993114>,  <38.290913, 35.992161, 51.576591>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.427937, 35.619423, 50.993114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.031967, 35.572697, 51.025108>,  <37.794384, 35.544662, 51.044304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.031967, 35.572697, 51.025108>,  <38.427937, 35.619423, 50.993114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.031967, 35.572697, 51.025108> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076512, -0.033911, -0.996492,
		0.119120, -0.992574, 0.024631,
		-0.989927, -0.116818, 0.079983,
		37.734989, 35.537651, 51.049103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194050, 34.951061, 50.585377>,  <38.427937, 35.619423, 50.993114>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.194050, 34.951061, 50.585377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.901623, 35.223785, 50.595737>,  <37.726166, 35.387421, 50.601952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.901623, 35.223785, 50.595737>,  <38.194050, 34.951061, 50.585377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.901623, 35.223785, 50.595737> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116450, -0.087281, -0.989354,
		-0.672296, -0.726299, 0.143206,
		-0.731066, 0.681815, 0.025899,
		37.682304, 35.428329, 50.603508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.803493, 34.719860, 50.116184>,  <38.194050, 34.951061, 50.585377>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.803493, 34.719860, 50.116184> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.672333, 35.094810, 50.163177>,  <37.593636, 35.319782, 50.191376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.672333, 35.094810, 50.163177>,  <37.803493, 34.719860, 50.116184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.672333, 35.094810, 50.163177> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159407, 0.067680, -0.984890,
		-0.931166, -0.341676, 0.127232,
		-0.327903, 0.937378, 0.117487,
		37.573963, 35.376022, 50.198425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.204906, 34.733349, 49.608730>,  <37.803493, 34.719860, 50.116184>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.204906, 34.733349, 49.608730> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.243557, 35.115654, 49.719856>,  <37.266747, 35.345036, 49.786533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.243557, 35.115654, 49.719856>,  <37.204906, 34.733349, 49.608730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.243557, 35.115654, 49.719856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216188, 0.292614, -0.931472,
		-0.971558, 0.029946, 0.234899,
		0.096629, 0.955761, 0.277818,
		37.272545, 35.402382, 49.803200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.618607, 35.074650, 49.464954>,  <37.204906, 34.733349, 49.608730>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.618607, 35.074650, 49.464954> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.887737, 35.370327, 49.476948>,  <37.049217, 35.547733, 49.484146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.887737, 35.370327, 49.476948>,  <36.618607, 35.074650, 49.464954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.887737, 35.370327, 49.476948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319117, 0.326557, -0.889677,
		-0.667435, 0.589028, 0.455605,
		0.672826, 0.739193, 0.029986,
		37.089584, 35.592087, 49.485943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.275501, 35.581139, 49.218048>,  <36.618607, 35.074650, 49.464954>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.275501, 35.581139, 49.218048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.648197, 35.721924, 49.182312>,  <36.871815, 35.806396, 49.160870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.648197, 35.721924, 49.182312>,  <36.275501, 35.581139, 49.218048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.648197, 35.721924, 49.182312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251551, 0.448160, -0.857831,
		-0.261888, 0.821749, 0.506106,
		0.931738, 0.351967, -0.089344,
		36.927719, 35.827515, 49.155510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.330124, 36.179359, 48.967602>,  <36.275501, 35.581139, 49.218048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.330124, 36.179359, 48.967602> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.691132, 36.053379, 48.850117>,  <36.907738, 35.977791, 48.779625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.691132, 36.053379, 48.850117>,  <36.330124, 36.179359, 48.967602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.691132, 36.053379, 48.850117> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214138, 0.263521, -0.940586,
		0.373633, 0.911792, 0.170391,
		0.902520, -0.314947, -0.293710,
		36.961887, 35.958897, 48.762005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.520405, 36.606621, 48.431381>,  <36.330124, 36.179359, 48.967602>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.520405, 36.606621, 48.431381> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.782185, 36.307571, 48.386211>,  <36.939255, 36.128143, 48.359108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.782185, 36.307571, 48.386211>,  <36.520405, 36.606621, 48.431381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.782185, 36.307571, 48.386211> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019552, 0.166032, -0.985926,
		0.755851, 0.643033, 0.123278,
		0.654451, -0.747624, -0.112923,
		36.978519, 36.083282, 48.352333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.933990, 36.841194, 47.873009>,  <36.520405, 36.606621, 48.431381>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.933990, 36.841194, 47.873009> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.993706, 36.446430, 47.897419>,  <37.029533, 36.209572, 47.912067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.993706, 36.446430, 47.897419>,  <36.933990, 36.841194, 47.873009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.993706, 36.446430, 47.897419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022903, -0.058254, -0.998039,
		0.988528, 0.150394, 0.013906,
		0.149289, -0.986908, 0.061030,
		37.038494, 36.150356, 47.915730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.485828, 36.742195, 47.377968>,  <36.933990, 36.841194, 47.873009>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.485828, 36.742195, 47.377968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.286716, 36.399673, 47.433041>,  <37.167248, 36.194160, 47.466084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.286716, 36.399673, 47.433041>,  <37.485828, 36.742195, 47.377968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.286716, 36.399673, 47.433041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077511, -0.114189, -0.990431,
		0.863832, -0.503690, -0.009531,
		-0.497782, -0.856304, 0.137681,
		37.137383, 36.142780, 47.474346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.665028, 36.909988, 27.777027> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.274803, 36.831299, 27.737879>,  <43.040668, 36.784084, 27.714390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.274803, 36.831299, 27.737879>,  <43.665028, 36.909988, 27.777027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.274803, 36.831299, 27.737879> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081733, -0.088564, 0.992711,
		-0.203961, 0.976450, 0.070321,
		-0.975561, -0.196727, -0.097872,
		42.982136, 36.772282, 27.708517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.262329, 37.364414, 28.143425>,  <43.665028, 36.909988, 27.777027>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.262329, 37.364414, 28.143425> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.016876, 37.050945, 28.104824>,  <42.869606, 36.862865, 28.081663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.016876, 37.050945, 28.104824>,  <43.262329, 37.364414, 28.143425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.016876, 37.050945, 28.104824> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043180, -0.088731, 0.995119,
		-0.788410, 0.614805, 0.020609,
		-0.613633, -0.783672, -0.096503,
		42.832787, 36.815845, 28.075872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.794548, 37.554260, 28.658354>,  <43.262329, 37.364414, 28.143425>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.794548, 37.554260, 28.658354> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.752590, 37.168159, 28.562616>,  <42.727417, 36.936501, 28.505173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.752590, 37.168159, 28.562616>,  <42.794548, 37.554260, 28.658354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.752590, 37.168159, 28.562616> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096362, -0.249405, 0.963593,
		-0.989804, 0.078009, 0.119174,
		-0.104892, -0.965252, -0.239345,
		42.721123, 36.878582, 28.490812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.176014, 37.223625, 29.064413>,  <42.794548, 37.554260, 28.658354>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.176014, 37.223625, 29.064413> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.416901, 36.924797, 28.951824>,  <42.561432, 36.745502, 28.884272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.416901, 36.924797, 28.951824>,  <42.176014, 37.223625, 29.064413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.416901, 36.924797, 28.951824> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005367, -0.348778, 0.937190,
		-0.798315, -0.565902, -0.206030,
		0.602216, -0.747067, -0.281472,
		42.597565, 36.700676, 28.867382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.823925, 36.589573, 29.300606>,  <42.176014, 37.223625, 29.064413>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.823925, 36.589573, 29.300606> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.213528, 36.508644, 29.259880>,  <42.447289, 36.460087, 29.235445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.213528, 36.508644, 29.259880>,  <41.823925, 36.589573, 29.300606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.213528, 36.508644, 29.259880> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030874, -0.326728, 0.944614,
		-0.224382, -0.923209, -0.311990,
		0.974012, -0.202323, -0.101815,
		42.505730, 36.447945, 29.229336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.811073, 36.053982, 29.778383>,  <41.823925, 36.589573, 29.300606>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.811073, 36.053982, 29.778383> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.188282, 36.175137, 29.723293>,  <42.414608, 36.247829, 29.690239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.188282, 36.175137, 29.723293>,  <41.811073, 36.053982, 29.778383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.188282, 36.175137, 29.723293> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234009, -0.309485, 0.921661,
		0.236536, -0.901376, -0.362729,
		0.943022, 0.302888, -0.137726,
		42.471188, 36.266003, 29.681976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.254829, 35.437641, 30.034325>,  <41.811073, 36.053982, 29.778383>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.254829, 35.437641, 30.034325> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.458019, 35.781857, 30.049503>,  <42.579933, 35.988384, 30.058611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.458019, 35.781857, 30.049503>,  <42.254829, 35.437641, 30.034325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.458019, 35.781857, 30.049503> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141790, -0.126989, 0.981718,
		0.849622, -0.493308, -0.186523,
		0.507975, 0.860536, 0.037947,
		42.610413, 36.040016, 30.060888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.892948, 35.282543, 30.494226>,  <42.254829, 35.437641, 30.034325>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.892948, 35.282543, 30.494226> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.900517, 35.682335, 30.504681>,  <42.905056, 35.922211, 30.510952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.900517, 35.682335, 30.504681>,  <42.892948, 35.282543, 30.494226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.900517, 35.682335, 30.504681> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276785, -0.030353, 0.960452,
		0.960746, -0.010937, -0.277215,
		0.018918, 0.999479, 0.026134,
		42.906193, 35.982178, 30.512522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.590611, 35.605427, 30.742392>,  <42.892948, 35.282543, 30.494226>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.590611, 35.605427, 30.742392> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.326748, 35.900383, 30.800524>,  <43.168430, 36.077354, 30.835403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.326748, 35.900383, 30.800524>,  <43.590611, 35.605427, 30.742392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.326748, 35.900383, 30.800524> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339723, 0.120061, 0.932831,
		0.670408, 0.664716, -0.329706,
		-0.659652, 0.737386, 0.145329,
		43.128853, 36.121597, 30.844122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.941154, 36.038857, 31.160395>,  <43.590611, 35.605427, 30.742392>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.941154, 36.038857, 31.160395> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.564663, 36.167358, 31.202133>,  <43.338768, 36.244461, 31.227177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.564663, 36.167358, 31.202133>,  <43.941154, 36.038857, 31.160395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.564663, 36.167358, 31.202133> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136791, 0.080072, 0.987358,
		0.308838, 0.943602, -0.119310,
		-0.941227, 0.321254, 0.104347,
		43.282295, 36.263733, 31.233437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.022991, 36.453526, 31.774532>,  <43.941154, 36.038857, 31.160395>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.022991, 36.453526, 31.774532> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.637611, 36.367588, 31.710524>,  <43.406384, 36.316025, 31.672119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.637611, 36.367588, 31.710524>,  <44.022991, 36.453526, 31.774532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.637611, 36.367588, 31.710524> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123936, -0.172097, 0.977253,
		-0.237492, 0.961367, 0.139181,
		-0.963451, -0.214841, -0.160020,
		43.348576, 36.303135, 31.662518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.695107, 36.830292, 32.153820>,  <44.022991, 36.453526, 31.774532>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.695107, 36.830292, 32.153820> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.453732, 36.517662, 32.090565>,  <43.308907, 36.330086, 32.052612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.453732, 36.517662, 32.090565>,  <43.695107, 36.830292, 32.153820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.453732, 36.517662, 32.090565> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020329, -0.183175, 0.982870,
		-0.797154, 0.596312, 0.094645,
		-0.603434, -0.781575, -0.158141,
		43.272701, 36.283188, 32.043121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.173901, 36.840446, 32.696968>,  <43.695107, 36.830292, 32.153820>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.173901, 36.840446, 32.696968> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.168694, 36.470860, 32.544067>,  <43.165569, 36.249107, 32.452328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.168694, 36.470860, 32.544067>,  <43.173901, 36.840446, 32.696968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.168694, 36.470860, 32.544067> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200111, -0.372145, 0.906347,
		-0.979687, 0.088296, -0.180049,
		-0.013022, -0.923966, -0.382254,
		43.164787, 36.193668, 32.429390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.460609, 36.464989, 32.723900>,  <43.173901, 36.840446, 32.696968>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.460609, 36.464989, 32.723900> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.722778, 36.164818, 32.689754>,  <42.880081, 35.984715, 32.669266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.722778, 36.164818, 32.689754>,  <42.460609, 36.464989, 32.723900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.722778, 36.164818, 32.689754> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243855, -0.317238, 0.916457,
		-0.714812, -0.579849, -0.390920,
		0.655422, -0.750423, -0.085367,
		42.919403, 35.939690, 32.664143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.236511, 35.906796, 33.032539>,  <42.460609, 36.464989, 32.723900>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.236511, 35.906796, 33.032539> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.621887, 35.801189, 33.014301>,  <42.853111, 35.737827, 33.003361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.621887, 35.801189, 33.014301>,  <42.236511, 35.906796, 33.032539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.621887, 35.801189, 33.014301> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070899, -0.415341, 0.906899,
		-0.258369, -0.870511, -0.418875,
		0.963441, -0.264012, -0.045593,
		42.910919, 35.721985, 33.000622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.230736, 35.184429, 33.248859>,  <42.236511, 35.906796, 33.032539>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.230736, 35.184429, 33.248859> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.596779, 35.342346, 33.281620>,  <42.816406, 35.437096, 33.301277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.596779, 35.342346, 33.281620>,  <42.230736, 35.184429, 33.248859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.596779, 35.342346, 33.281620> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071344, -0.358463, 0.930814,
		0.396837, -0.845956, -0.356200,
		0.915112, 0.394794, 0.081897,
		42.871311, 35.460785, 33.306190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.569645, 34.703945, 33.663155>,  <42.230736, 35.184429, 33.248859>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.569645, 34.703945, 33.663155> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.817284, 35.016289, 33.696564>,  <42.965866, 35.203697, 33.716610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.817284, 35.016289, 33.696564>,  <42.569645, 34.703945, 33.663155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.817284, 35.016289, 33.696564> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187007, -0.249890, 0.950044,
		0.762727, -0.572545, -0.300732,
		0.619093, 0.780863, 0.083528,
		43.003010, 35.250549, 33.721622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.161133, 34.490990, 34.101337>,  <42.569645, 34.703945, 33.663155>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.161133, 34.490990, 34.101337> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.148289, 34.890617, 34.112888>,  <43.140583, 35.130394, 34.119820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.148289, 34.890617, 34.112888>,  <43.161133, 34.490990, 34.101337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.148289, 34.890617, 34.112888> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011976, -0.028502, 0.999522,
		0.999413, 0.032438, -0.011050,
		-0.032107, 0.999067, 0.028874,
		43.138657, 35.190338, 34.121552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.602180, 34.624630, 34.588799>,  <43.161133, 34.490990, 34.101337>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.602180, 34.624630, 34.588799> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.368977, 34.949318, 34.574879>,  <43.229053, 35.144131, 34.566525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.368977, 34.949318, 34.574879>,  <43.602180, 34.624630, 34.588799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.368977, 34.949318, 34.574879> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031855, 0.019964, 0.999293,
		0.811839, 0.583708, 0.014218,
		-0.583012, 0.811718, -0.034802,
		43.194073, 35.192833, 34.564438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.858982, 34.954750, 35.124798>,  <43.602180, 34.624630, 34.588799>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.858982, 34.954750, 35.124798> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.514622, 35.145161, 35.052963>,  <43.308006, 35.259407, 35.009861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.514622, 35.145161, 35.052963>,  <43.858982, 34.954750, 35.124798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.514622, 35.145161, 35.052963> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170995, 0.061729, 0.983336,
		0.479183, 0.877260, 0.028257,
		-0.860898, 0.476029, -0.179586,
		43.256351, 35.287968, 34.999088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.837166, 35.667835, 35.453274>,  <43.858982, 34.954750, 35.124798>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.837166, 35.667835, 35.453274> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.454597, 35.556656, 35.417511>,  <43.225056, 35.489948, 35.396053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.454597, 35.556656, 35.417511>,  <43.837166, 35.667835, 35.453274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.454597, 35.556656, 35.417511> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144690, 0.185219, 0.971987,
		-0.253604, 0.942569, -0.217365,
		-0.956425, -0.277951, -0.089408,
		43.167671, 35.473270, 35.390690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.425549, 35.544960, 34.913326>,  <43.837166, 35.667835, 35.453274>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.425549, 35.544960, 34.913326> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.796543, 35.441444, 35.021244>,  <45.019142, 35.379333, 35.085995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.796543, 35.441444, 35.021244>,  <44.425549, 35.544960, 34.913326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.796543, 35.441444, 35.021244> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373776, 0.627723, -0.682829,
		0.007350, 0.734161, 0.678936,
		0.927490, -0.258789, 0.269797,
		45.074791, 35.363808, 35.102184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.958656, 36.184547, 34.783657>,  <44.425549, 35.544960, 34.913326>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.958656, 36.184547, 34.783657> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.172695, 35.847382, 34.806164>,  <45.301121, 35.645084, 34.819668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.172695, 35.847382, 34.806164>,  <44.958656, 36.184547, 34.783657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.172695, 35.847382, 34.806164> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541010, 0.290770, -0.789152,
		0.648825, 0.452717, 0.611616,
		0.535102, -0.842912, 0.056265,
		45.333225, 35.594509, 34.823044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.673260, 36.410095, 34.747959>,  <44.958656, 36.184547, 34.783657>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.673260, 36.410095, 34.747959> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.665119, 36.024956, 34.640255>,  <45.660236, 35.793873, 34.575634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.665119, 36.024956, 34.640255>,  <45.673260, 36.410095, 34.747959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.665119, 36.024956, 34.640255> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454362, 0.230991, -0.860348,
		0.890584, -0.139852, 0.432783,
		-0.020353, -0.962852, -0.269260,
		45.659012, 35.736099, 34.559475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.411663, 36.156231, 34.650463>,  <45.673260, 36.410095, 34.747959>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.411663, 36.156231, 34.650463> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.175426, 35.925755, 34.424473>,  <46.033684, 35.787468, 34.288879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.175426, 35.925755, 34.424473>,  <46.411663, 36.156231, 34.650463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.175426, 35.925755, 34.424473> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488173, 0.302384, -0.818689,
		0.642563, -0.759320, 0.102696,
		-0.590594, -0.576192, -0.564980,
		45.998249, 35.752895, 34.254978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.822018, 35.784000, 34.130352>,  <46.411663, 36.156231, 34.650463>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.822018, 35.784000, 34.130352> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.450420, 35.795246, 33.982742>,  <46.227463, 35.801994, 33.894176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.450420, 35.795246, 33.982742>,  <46.822018, 35.784000, 34.130352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.450420, 35.795246, 33.982742> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365783, 0.221554, -0.903945,
		0.056342, -0.974742, -0.216108,
		-0.928993, 0.028119, -0.369027,
		46.171722, 35.803680, 33.872036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.843254, 35.399590, 33.400578>,  <46.822018, 35.784000, 34.130352>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.843254, 35.399590, 33.400578> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.500504, 35.605755, 33.396263>,  <46.294853, 35.729454, 33.393673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.500504, 35.605755, 33.396263>,  <46.843254, 35.399590, 33.400578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.500504, 35.605755, 33.396263> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180786, 0.280824, -0.942579,
		-0.482787, -0.809622, -0.333810,
		-0.856874, 0.515412, -0.010790,
		46.243443, 35.760380, 33.393024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.564430, 35.238956, 32.785103>,  <46.843254, 35.399590, 33.400578>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.564430, 35.238956, 32.785103> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.392056, 35.589077, 32.872864>,  <46.288631, 35.799149, 32.925522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.392056, 35.589077, 32.872864>,  <46.564430, 35.238956, 32.785103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.392056, 35.589077, 32.872864> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117527, 0.295508, -0.948084,
		-0.894697, -0.382777, -0.230216,
		-0.430935, 0.875304, 0.219404,
		46.262775, 35.851669, 32.938686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.977211, 35.297897, 32.317245>,  <46.564430, 35.238956, 32.785103>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.977211, 35.297897, 32.317245> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.077625, 35.665321, 32.439377>,  <46.137875, 35.885777, 32.512657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.077625, 35.665321, 32.439377>,  <45.977211, 35.297897, 32.317245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.077625, 35.665321, 32.439377> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168111, 0.352009, -0.920776,
		-0.953269, 0.179814, 0.242786,
		0.251031, 0.918562, 0.305331,
		46.152935, 35.940891, 32.530975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.452152, 35.781242, 32.094898>,  <45.977211, 35.297897, 32.317245>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.452152, 35.781242, 32.094898> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.750713, 36.039997, 32.157413>,  <45.929852, 36.195248, 32.194923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.750713, 36.039997, 32.157413>,  <45.452152, 35.781242, 32.094898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.750713, 36.039997, 32.157413> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363234, 0.592777, -0.718802,
		-0.557624, 0.479747, 0.677421,
		0.746403, 0.646883, 0.156286,
		45.974636, 36.234062, 32.204300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.179161, 36.421837, 32.037315>,  <45.452152, 35.781242, 32.094898>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.179161, 36.421837, 32.037315> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.571274, 36.477169, 31.980881>,  <45.806541, 36.510368, 31.947020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.571274, 36.477169, 31.980881>,  <45.179161, 36.421837, 32.037315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.571274, 36.477169, 31.980881> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197193, 0.730083, -0.654288,
		0.012497, 0.669211, 0.742968,
		0.980285, 0.138331, -0.141087,
		45.865360, 36.518669, 31.938555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.301899, 37.153225, 31.971437>,  <45.179161, 36.421837, 32.037315>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.301899, 37.153225, 31.971437> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.599651, 36.962635, 31.784302>,  <45.778301, 36.848282, 31.672020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.599651, 36.962635, 31.784302>,  <45.301899, 37.153225, 31.971437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.599651, 36.962635, 31.784302> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041228, 0.666482, -0.744381,
		0.666482, 0.573390, 0.476472,
		0.744381, -0.476472, -0.467838,
		45.822964, 36.819695, 31.643951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.582870, 37.705696, 31.514652>,  <45.301899, 37.153225, 31.971437>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.582870, 37.705696, 31.514652> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.769855, 37.382919, 31.370255>,  <45.882046, 37.189251, 31.283615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.769855, 37.382919, 31.370255>,  <45.582870, 37.705696, 31.514652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.769855, 37.382919, 31.370255> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014196, 0.415159, -0.909638,
		0.883899, 0.420096, 0.205526,
		0.467462, -0.806946, -0.360995,
		45.910095, 37.140835, 31.261955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.829300, 37.900295, 30.924339>,  <45.582870, 37.705696, 31.514652>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.829300, 37.900295, 30.924339> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.864647, 37.508816, 30.850222>,  <45.885857, 37.273926, 30.805752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.864647, 37.508816, 30.850222>,  <45.829300, 37.900295, 30.924339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.864647, 37.508816, 30.850222> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125745, 0.173574, -0.976760,
		0.988119, 0.109616, -0.107728,
		0.088370, -0.978701, -0.185295,
		45.891159, 37.215206, 30.794634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.457592, 37.779274, 30.457415>,  <45.829300, 37.900295, 30.924339>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.457592, 37.779274, 30.457415> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.180874, 37.495888, 30.401564>,  <46.014843, 37.325855, 30.368053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.180874, 37.495888, 30.401564>,  <46.457592, 37.779274, 30.457415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.180874, 37.495888, 30.401564> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007183, 0.186603, -0.982409,
		0.722057, -0.680630, -0.124003,
		-0.691796, -0.708464, -0.139627,
		45.973335, 37.283348, 30.359676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.709148, 37.380188, 29.831455>,  <46.457592, 37.779274, 30.457415>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.709148, 37.380188, 29.831455> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.318974, 37.306683, 29.880035>,  <46.084869, 37.262577, 29.909184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.318974, 37.306683, 29.880035>,  <46.709148, 37.380188, 29.831455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.318974, 37.306683, 29.880035> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147097, 0.133014, -0.980138,
		0.163966, -0.973928, -0.156779,
		-0.975437, -0.183771, 0.121452,
		46.026340, 37.251553, 29.916471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.468166, 37.061871, 29.239618>,  <46.709148, 37.380188, 29.831455>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.468166, 37.061871, 29.239618> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.122078, 37.190468, 29.393517>,  <45.914425, 37.267624, 29.485855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.122078, 37.190468, 29.393517>,  <46.468166, 37.061871, 29.239618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.122078, 37.190468, 29.393517> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384817, 0.066105, -0.920623,
		-0.321405, -0.944603, 0.066519,
		-0.865225, 0.321490, 0.384746,
		45.862511, 37.286915, 29.508940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.980511, 36.763493, 28.800194>,  <46.468166, 37.061871, 29.239618>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.980511, 36.763493, 28.800194> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.791706, 37.057522, 28.994871>,  <45.678425, 37.233940, 29.111677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.791706, 37.057522, 28.994871>,  <45.980511, 36.763493, 28.800194>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.791706, 37.057522, 28.994871> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557061, 0.179197, -0.810908,
		-0.683292, -0.653875, 0.324898,
		-0.472012, 0.735075, 0.486692,
		45.650101, 37.278046, 29.140879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.251156, 36.653221, 28.686247>,  <45.980511, 36.763493, 28.800194>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.251156, 36.653221, 28.686247> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.301342, 37.041954, 28.766050>,  <45.331455, 37.275192, 28.813932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.301342, 37.041954, 28.766050>,  <45.251156, 36.653221, 28.686247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.301342, 37.041954, 28.766050> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568958, 0.235226, -0.788008,
		-0.812740, -0.014645, 0.582443,
		0.125465, 0.971830, 0.199510,
		45.338982, 37.333504, 28.825903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.666084, 36.919140, 28.581799>,  <45.251156, 36.653221, 28.686247>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.666084, 36.919140, 28.581799> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.915943, 37.231213, 28.568327>,  <45.065861, 37.418457, 28.560244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.915943, 37.231213, 28.568327>,  <44.666084, 36.919140, 28.581799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.915943, 37.231213, 28.568327> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443718, 0.319111, -0.837426,
		-0.642594, 0.538043, 0.545512,
		0.624650, 0.780178, -0.033681,
		45.103336, 37.465267, 28.558222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.211960, 37.537556, 28.679541>,  <44.666084, 36.919140, 28.581799>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.211960, 37.537556, 28.679541> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.556973, 37.606846, 28.489368>,  <44.763981, 37.648422, 28.375265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.556973, 37.606846, 28.489368>,  <44.211960, 37.537556, 28.679541>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.556973, 37.606846, 28.489368> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501408, 0.166227, -0.849093,
		-0.068058, 0.970752, 0.230234,
		0.862530, 0.173229, -0.475430,
		44.815731, 37.658813, 28.346739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.070343, 38.093613, 28.403069>,  <44.211960, 37.537556, 28.679541>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.070343, 38.093613, 28.403069> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.399734, 38.000126, 28.196278>,  <44.597370, 37.944035, 28.072203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.399734, 38.000126, 28.196278>,  <44.070343, 38.093613, 28.403069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.399734, 38.000126, 28.196278> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495592, 0.147257, -0.855981,
		0.276182, 0.961090, 0.005437,
		0.823475, -0.233713, -0.516978,
		44.646778, 37.930012, 28.041183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.807331, 36.187233, 43.082382> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.563236, 35.870350, 43.084362>,  <40.416779, 35.680222, 43.085552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.563236, 35.870350, 43.084362>,  <40.807331, 36.187233, 43.082382>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.563236, 35.870350, 43.084362> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168015, -0.135527, -0.976424,
		0.774198, -0.595017, 0.215806,
		-0.610237, -0.792204, 0.004953,
		40.380165, 35.632690, 43.085850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.168121, 35.621212, 42.762024>,  <40.807331, 36.187233, 43.082382>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.168121, 35.621212, 42.762024> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.779343, 35.531082, 42.735058>,  <40.546074, 35.477005, 42.718880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.779343, 35.531082, 42.735058>,  <41.168121, 35.621212, 42.762024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.779343, 35.531082, 42.735058> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129765, -0.274695, -0.952735,
		0.196154, -0.934758, 0.296228,
		-0.971949, -0.225323, -0.067416,
		40.487759, 35.463486, 42.714832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.056396, 34.825565, 42.490154>,  <41.168121, 35.621212, 42.762024>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.056396, 34.825565, 42.490154> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.697548, 34.993111, 42.433987>,  <40.482239, 35.093639, 42.400288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.697548, 34.993111, 42.433987>,  <41.056396, 34.825565, 42.490154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.697548, 34.993111, 42.433987> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063692, -0.437160, -0.897126,
		-0.437160, -0.795891, 0.418866,
		0.897126, -0.418866, 0.140417,
		40.428410, 35.118771, 42.391861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.662582, 34.305241, 42.276058>,  <41.056396, 34.825565, 42.490154>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.662582, 34.305241, 42.276058> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.461349, 34.632263, 42.163979>,  <40.340611, 34.828476, 42.096733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.461349, 34.632263, 42.163979>,  <40.662582, 34.305241, 42.276058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.461349, 34.632263, 42.163979> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096746, -0.375446, -0.921781,
		-0.858809, -0.436621, 0.267974,
		-0.503078, 0.817559, -0.280195,
		40.310425, 34.877529, 42.079922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.036041, 34.107483, 41.890430>,  <40.662582, 34.305241, 42.276058>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.036041, 34.107483, 41.890430> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.114429, 34.485779, 41.786766>,  <40.161465, 34.712757, 41.724567>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.114429, 34.485779, 41.786766>,  <40.036041, 34.107483, 41.890430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.114429, 34.485779, 41.786766> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071416, -0.249816, -0.965656,
		-0.978005, 0.207751, 0.018584,
		0.195974, 0.945744, -0.259158,
		40.173222, 34.769501, 41.709019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.470280, 34.233681, 41.528954>,  <40.036041, 34.107483, 41.890430>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.470280, 34.233681, 41.528954> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.739204, 34.509678, 41.421696>,  <39.900558, 34.675278, 41.357342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.739204, 34.509678, 41.421696>,  <39.470280, 34.233681, 41.528954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.739204, 34.509678, 41.421696> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297461, -0.079891, -0.951386,
		-0.677875, 0.719391, 0.151535,
		0.672312, 0.689996, -0.268146,
		39.940899, 34.716675, 41.341251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091072, 34.525356, 41.008377>,  <39.470280, 34.233681, 41.528954>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.091072, 34.525356, 41.008377> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.469040, 34.646748, 40.959328>,  <39.695820, 34.719582, 40.929897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.469040, 34.646748, 40.959328>,  <39.091072, 34.525356, 41.008377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.469040, 34.646748, 40.959328> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109359, -0.060378, -0.992167,
		-0.308500, 0.950925, -0.023865,
		0.944917, 0.303474, -0.122619,
		39.752514, 34.737789, 40.922543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.126995, 35.077030, 40.492405>,  <39.091072, 34.525356, 41.008377>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.126995, 35.077030, 40.492405> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.504829, 34.946297, 40.504658>,  <39.731529, 34.867859, 40.512009>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.504829, 34.946297, 40.504658>,  <39.126995, 35.077030, 40.492405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.504829, 34.946297, 40.504658> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003617, -0.103664, -0.994606,
		0.328243, 0.939380, -0.099102,
		0.944586, -0.326831, 0.030630,
		39.788204, 34.848248, 40.513847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.466846, 35.462349, 39.989529>,  <39.126995, 35.077030, 40.492405>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.466846, 35.462349, 39.989529> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.640179, 35.104988, 40.036938>,  <39.744179, 34.890572, 40.065384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.640179, 35.104988, 40.036938>,  <39.466846, 35.462349, 39.989529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.640179, 35.104988, 40.036938> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002916, -0.130122, -0.991494,
		0.901230, 0.429992, -0.053781,
		0.433332, -0.893407, 0.118524,
		39.770180, 34.836967, 40.072495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.738758, 35.416306, 39.392918>,  <39.466846, 35.462349, 39.989529>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.738758, 35.416306, 39.392918> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.782631, 35.044590, 39.533993>,  <39.808956, 34.821560, 39.618637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.782631, 35.044590, 39.533993>,  <39.738758, 35.416306, 39.392918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.782631, 35.044590, 39.533993> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215139, -0.324217, -0.921194,
		0.970405, 0.176914, 0.164367,
		0.109682, -0.929292, 0.352683,
		39.815536, 34.765800, 39.639797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.356750, 35.125496, 39.144817>,  <39.738758, 35.416306, 39.392918>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.356750, 35.125496, 39.144817> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.139435, 34.804310, 39.242863>,  <40.009045, 34.611599, 39.301689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.139435, 34.804310, 39.242863>,  <40.356750, 35.125496, 39.144817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.139435, 34.804310, 39.242863> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235805, -0.426153, -0.873378,
		0.805750, -0.416698, 0.420868,
		-0.543289, -0.802968, 0.245113,
		39.976448, 34.563419, 39.316395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.801643, 34.585972, 38.938717>,  <40.356750, 35.125496, 39.144817>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.801643, 34.585972, 38.938717> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.422737, 34.461876, 38.970840>,  <40.195393, 34.387421, 38.990112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.422737, 34.461876, 38.970840>,  <40.801643, 34.585972, 38.938717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.422737, 34.461876, 38.970840> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104209, -0.535175, -0.838289,
		0.303046, -0.785710, 0.539280,
		-0.947261, -0.310238, 0.080305,
		40.138557, 34.368805, 38.994930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.778778, 33.854450, 38.900494>,  <40.801643, 34.585972, 38.938717>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.778778, 33.854450, 38.900494> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.414322, 33.978580, 38.792034>,  <40.195648, 34.053059, 38.726959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.414322, 33.978580, 38.792034>,  <40.778778, 33.854450, 38.900494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.414322, 33.978580, 38.792034> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176206, -0.301415, -0.937070,
		-0.372526, -0.901580, 0.219950,
		-0.911139, 0.310327, -0.271149,
		40.140980, 34.071678, 38.710690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.263657, 33.698143, 38.221687>,  <40.778778, 33.854450, 38.900494>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.263657, 33.698143, 38.221687> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.254398, 33.362888, 38.003700>,  <41.248844, 33.161736, 37.872910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.254398, 33.362888, 38.003700>,  <41.263657, 33.698143, 38.221687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.254398, 33.362888, 38.003700> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269575, -0.530151, 0.803909,
		-0.962701, -0.128300, 0.238213,
		-0.023147, -0.838140, -0.544963,
		41.247456, 33.111446, 37.840210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.628738, 33.310844, 38.305073>,  <41.263657, 33.698143, 38.221687>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.628738, 33.310844, 38.305073> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.918079, 33.057495, 38.195084>,  <41.091682, 32.905487, 38.129089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.918079, 33.057495, 38.195084>,  <40.628738, 33.310844, 38.305073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.918079, 33.057495, 38.195084> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135517, -0.520707, 0.842911,
		-0.677055, -0.572455, -0.462485,
		0.723348, -0.633371, -0.274970,
		41.135082, 32.867485, 38.112595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.341476, 32.677338, 38.379974>,  <40.628738, 33.310844, 38.305073>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.341476, 32.677338, 38.379974> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.732201, 32.591721, 38.381908>,  <40.966637, 32.540352, 38.383068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.732201, 32.591721, 38.381908>,  <40.341476, 32.677338, 38.379974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.732201, 32.591721, 38.381908> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142602, -0.633613, 0.760394,
		-0.159695, -0.743451, -0.649444,
		0.976812, -0.214044, 0.004833,
		41.025246, 32.527508, 38.383358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.457771, 31.928450, 38.358994>,  <40.341476, 32.677338, 38.379974>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.457771, 31.928450, 38.358994> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.811237, 32.067184, 38.484745>,  <41.023319, 32.150425, 38.560196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.811237, 32.067184, 38.484745>,  <40.457771, 31.928450, 38.358994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.811237, 32.067184, 38.484745> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003044, -0.667311, 0.744773,
		0.468103, -0.659089, -0.588626,
		0.883669, 0.346838, 0.314377,
		41.076340, 32.171234, 38.579060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.867451, 31.274412, 38.594433>,  <40.457771, 31.928450, 38.358994>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.867451, 31.274412, 38.594433> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.030514, 31.597826, 38.764179>,  <41.128353, 31.791874, 38.866028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.030514, 31.597826, 38.764179>,  <40.867451, 31.274412, 38.594433>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.030514, 31.597826, 38.764179> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038969, -0.479720, 0.876556,
		0.912303, -0.340798, -0.227069,
		0.407658, 0.808533, 0.424370,
		41.152813, 31.840385, 38.891491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.413471, 31.046040, 38.958191>,  <40.867451, 31.274412, 38.594433>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.413471, 31.046040, 38.958191> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.345791, 31.398291, 39.135220>,  <41.305183, 31.609642, 39.241436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.345791, 31.398291, 39.135220>,  <41.413471, 31.046040, 38.958191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.345791, 31.398291, 39.135220> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146921, -0.466563, 0.872200,
		0.974570, 0.082551, 0.208324,
		-0.169197, 0.880627, 0.442570,
		41.295033, 31.662479, 39.267990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.797310, 31.091112, 39.567604>,  <41.413471, 31.046040, 38.958191>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.797310, 31.091112, 39.567604> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.507557, 31.362484, 39.616604>,  <41.333706, 31.525307, 39.646004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.507557, 31.362484, 39.616604>,  <41.797310, 31.091112, 39.567604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.507557, 31.362484, 39.616604> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020411, -0.198718, 0.979844,
		0.689099, 0.707279, 0.157795,
		-0.724380, 0.678430, 0.122501,
		41.290241, 31.566013, 39.653355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.962135, 31.326916, 40.194843>,  <41.797310, 31.091112, 39.567604>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.962135, 31.326916, 40.194843> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.585918, 31.454428, 40.147926>,  <41.360188, 31.530935, 40.119778>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.585918, 31.454428, 40.147926>,  <41.962135, 31.326916, 40.194843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.585918, 31.454428, 40.147926> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137361, -0.041148, 0.989666,
		0.310658, 0.946936, 0.082489,
		-0.940544, 0.318778, -0.117289,
		41.303757, 31.550060, 40.112740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.952667, 31.796600, 40.703968>,  <41.962135, 31.326916, 40.194843>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.952667, 31.796600, 40.703968> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.578213, 31.679247, 40.626431>,  <41.353539, 31.608835, 40.579906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.578213, 31.679247, 40.626431>,  <41.952667, 31.796600, 40.703968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.578213, 31.679247, 40.626431> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195169, -0.025048, 0.980450,
		-0.292503, 0.955667, -0.033811,
		-0.936136, -0.293383, -0.193843,
		41.297371, 31.591232, 40.568279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.644840, 32.171211, 41.128498>,  <41.952667, 31.796600, 40.703968>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.644840, 32.171211, 41.128498> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.348679, 31.917965, 41.038200>,  <41.170982, 31.766016, 40.984020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.348679, 31.917965, 41.038200>,  <41.644840, 32.171211, 41.128498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.348679, 31.917965, 41.038200> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335859, 0.057548, 0.940153,
		-0.582235, 0.771914, -0.255247,
		-0.740406, -0.633117, -0.225748,
		41.126556, 31.728029, 40.970474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.982430, 32.445488, 41.345058>,  <41.644840, 32.171211, 41.128498>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.982430, 32.445488, 41.345058> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.929451, 32.049347, 41.328766>,  <40.897663, 31.811663, 41.318993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.929451, 32.049347, 41.328766>,  <40.982430, 32.445488, 41.345058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.929451, 32.049347, 41.328766> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424179, 0.019495, 0.905369,
		-0.895840, 0.137191, -0.422669,
		-0.132449, -0.990353, -0.040729,
		40.889717, 31.752241, 41.316547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.314877, 32.391338, 41.578556>,  <40.982430, 32.445488, 41.345058>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.314877, 32.391338, 41.578556> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.492928, 32.035370, 41.618370>,  <40.599758, 31.821789, 41.642258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.492928, 32.035370, 41.618370>,  <40.314877, 32.391338, 41.578556>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.492928, 32.035370, 41.618370> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222077, -0.002030, 0.975027,
		-0.867493, -0.456114, -0.198534,
		0.445126, -0.889919, 0.099531,
		40.626465, 31.768394, 41.648228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.843849, 31.869516, 41.883675>,  <40.314877, 32.391338, 41.578556>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.843849, 31.869516, 41.883675> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.212482, 31.739166, 41.968044>,  <40.433662, 31.660955, 42.018665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.212482, 31.739166, 41.968044>,  <39.843849, 31.869516, 41.883675>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.212482, 31.739166, 41.968044> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255763, -0.100990, 0.961450,
		-0.292012, -0.940003, -0.176418,
		0.921583, -0.325876, 0.210928,
		40.488956, 31.641403, 42.031322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.741161, 31.269068, 42.261944>,  <39.843849, 31.869516, 41.883675>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.741161, 31.269068, 42.261944> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.114986, 31.369524, 42.362759>,  <40.339283, 31.429798, 42.423248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.114986, 31.369524, 42.362759>,  <39.741161, 31.269068, 42.261944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.114986, 31.369524, 42.362759> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240493, -0.076157, 0.967659,
		0.262212, -0.964950, -0.010776,
		0.934563, 0.251140, 0.252033,
		40.395355, 31.444866, 42.438370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.989647, 30.785503, 42.771759>,  <39.741161, 31.269068, 42.261944>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.989647, 30.785503, 42.771759> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.231991, 31.097628, 42.833790>,  <40.377396, 31.284903, 42.871006>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.231991, 31.097628, 42.833790>,  <39.989647, 30.785503, 42.771759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.231991, 31.097628, 42.833790> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152061, -0.077747, 0.985309,
		0.780904, -0.620539, 0.071551,
		0.605860, 0.780312, 0.155073,
		40.413750, 31.331720, 42.880310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.861004, 30.153284, 43.203537>,  <39.989647, 30.785503, 42.771759>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.861004, 30.153284, 43.203537> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.622536, 29.878025, 43.368961>,  <39.479454, 29.712870, 43.468216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.622536, 29.878025, 43.368961>,  <39.861004, 30.153284, 43.203537>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.622536, 29.878025, 43.368961> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555666, -0.018138, -0.831208,
		0.579496, -0.725343, -0.371568,
		-0.596171, -0.688149, 0.413559,
		39.443684, 29.671581, 43.493031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.745125, 29.733570, 42.672806>,  <39.861004, 30.153284, 43.203537>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.745125, 29.733570, 42.672806> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.437424, 29.651398, 42.914814>,  <39.252804, 29.602095, 43.060020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.437424, 29.651398, 42.914814>,  <39.745125, 29.733570, 42.672806>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.437424, 29.651398, 42.914814> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626336, 0.055214, -0.777596,
		0.126341, -0.977112, -0.171145,
		-0.769248, -0.205436, 0.605024,
		39.206650, 29.589767, 43.096321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.263412, 29.196011, 42.327026>,  <39.745125, 29.733570, 42.672806>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.263412, 29.196011, 42.327026> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.034168, 29.371235, 42.604053>,  <38.896622, 29.476370, 42.770267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.034168, 29.371235, 42.604053>,  <39.263412, 29.196011, 42.327026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.034168, 29.371235, 42.604053> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783084, -0.043704, -0.620379,
		-0.241496, -0.897882, 0.368086,
		-0.573114, 0.438061, 0.692563,
		38.862232, 29.502653, 42.811821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.614990, 28.873907, 42.409554>,  <39.263412, 29.196011, 42.327026>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.614990, 28.873907, 42.409554> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.547169, 29.249569, 42.529045>,  <38.506474, 29.474966, 42.600742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.547169, 29.249569, 42.529045>,  <38.614990, 28.873907, 42.409554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.547169, 29.249569, 42.529045> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749384, 0.074001, -0.657987,
		-0.640057, -0.335432, 0.691239,
		-0.169558, 0.939153, 0.298733,
		38.496300, 29.531315, 42.618664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.803192, 29.001028, 42.319824>,  <38.614990, 28.873907, 42.409554>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.803192, 29.001028, 42.319824> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960224, 29.366741, 42.359753>,  <38.054443, 29.586168, 42.383709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960224, 29.366741, 42.359753>,  <37.803192, 29.001028, 42.319824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.960224, 29.366741, 42.359753> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662354, 0.356360, -0.659010,
		-0.638095, 0.192597, 0.745481,
		0.392583, 0.914283, 0.099824,
		38.077999, 29.641026, 42.389702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.169312, 29.358229, 42.269360>,  <37.803192, 29.001028, 42.319824>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.169312, 29.358229, 42.269360> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.491367, 29.589022, 42.214447>,  <37.684601, 29.727497, 42.181499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.491367, 29.589022, 42.214447>,  <37.169312, 29.358229, 42.269360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.491367, 29.589022, 42.214447> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479194, 0.496456, -0.723813,
		-0.349472, 0.648554, 0.676201,
		0.805136, 0.576983, -0.137286,
		37.732906, 29.762117, 42.173260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.979069, 30.045912, 42.409000>,  <37.169312, 29.358229, 42.269360>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.979069, 30.045912, 42.409000> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.288345, 30.046368, 42.155331>,  <37.473911, 30.046642, 42.003128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.288345, 30.046368, 42.155331>,  <36.979069, 30.045912, 42.409000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.288345, 30.046368, 42.155331> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502206, 0.611744, -0.611194,
		0.387254, 0.791055, 0.473568,
		0.773190, 0.001142, -0.634173,
		37.520302, 30.046711, 41.965080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.019222, 30.614298, 42.050053>,  <36.979069, 30.045912, 42.409000>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.019222, 30.614298, 42.050053> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.299294, 30.463772, 41.807358>,  <37.467339, 30.373455, 41.661739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.299294, 30.463772, 41.807358>,  <37.019222, 30.614298, 42.050053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.299294, 30.463772, 41.807358> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246637, 0.670013, -0.700180,
		0.670013, 0.639897, 0.376316,
		0.700180, -0.376316, -0.606740,
		37.509346, 30.350878, 41.625336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.459660, 31.164421, 41.702751>,  <37.019222, 30.614298, 42.050053>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.459660, 31.164421, 41.702751> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489101, 30.841959, 41.467907>,  <37.506767, 30.648481, 41.327000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489101, 30.841959, 41.467907>,  <37.459660, 31.164421, 41.702751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.489101, 30.841959, 41.467907> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179338, 0.568408, -0.802964,
		0.981030, 0.164389, -0.102739,
		0.073601, -0.806157, -0.587106,
		37.511181, 30.600111, 41.291775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.885010, 31.354046, 41.214821>,  <37.459660, 31.164421, 41.702751>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.885010, 31.354046, 41.214821> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.691593, 31.034956, 41.070698>,  <37.575542, 30.843502, 40.984226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.691593, 31.034956, 41.070698>,  <37.885010, 31.354046, 41.214821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.691593, 31.034956, 41.070698> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044237, 0.433370, -0.900130,
		0.874201, -0.419315, -0.244843,
		-0.483545, -0.797725, -0.360303,
		37.546528, 30.795639, 40.962608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.244133, 31.259985, 40.623653>,  <37.885010, 31.354046, 41.214821>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.244133, 31.259985, 40.623653> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.873966, 31.109669, 40.604134>,  <37.651867, 31.019480, 40.592422>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.873966, 31.109669, 40.604134>,  <38.244133, 31.259985, 40.623653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.873966, 31.109669, 40.604134> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092470, 0.348833, -0.932612,
		0.367505, -0.858538, -0.357565,
		-0.925413, -0.375804, -0.048809,
		37.596340, 30.996931, 40.589493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.184185, 30.986916, 40.015224>,  <38.244133, 31.259985, 40.623653>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.184185, 30.986916, 40.015224> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.825951, 31.095360, 40.156315>,  <37.611008, 31.160427, 40.240971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.825951, 31.095360, 40.156315>,  <38.184185, 30.986916, 40.015224>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.825951, 31.095360, 40.156315> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082623, 0.677707, -0.730676,
		-0.437142, -0.683529, -0.584547,
		-0.895589, 0.271112, 0.352729,
		37.557274, 31.176693, 40.262135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<40.794994, 30.155630, 47.104435> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.396172, 30.168617, 47.076683>,  <40.156876, 30.176409, 47.060032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.396172, 30.168617, 47.076683>,  <40.794994, 30.155630, 47.104435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.396172, 30.168617, 47.076683> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039019, -0.564178, -0.824731,
		-0.065922, -0.825015, 0.561253,
		-0.997061, 0.032468, -0.069383,
		40.097054, 30.178358, 47.055870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.681591, 29.508482, 46.936081>,  <40.794994, 30.155630, 47.104435>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.681591, 29.508482, 46.936081> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.359268, 29.704786, 46.803524>,  <40.165874, 29.822569, 46.723988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.359268, 29.704786, 46.803524>,  <40.681591, 29.508482, 46.936081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.359268, 29.704786, 46.803524> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087534, -0.454762, -0.886301,
		-0.585668, -0.743199, 0.323494,
		-0.805811, 0.490762, -0.331395,
		40.117523, 29.852015, 46.704105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.316189, 29.047119, 46.540859>,  <40.681591, 29.508482, 46.936081>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.316189, 29.047119, 46.540859> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.154774, 29.392241, 46.419048>,  <40.057926, 29.599314, 46.345963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.154774, 29.392241, 46.419048>,  <40.316189, 29.047119, 46.540859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.154774, 29.392241, 46.419048> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258336, -0.426724, -0.866700,
		-0.877737, -0.271073, 0.395090,
		-0.403534, 0.862801, -0.304523,
		40.033714, 29.651081, 46.327690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.668308, 28.809038, 46.164082>,  <40.316189, 29.047119, 46.540859>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.668308, 28.809038, 46.164082> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.793953, 29.172861, 46.055241>,  <39.869339, 29.391155, 45.989937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.793953, 29.172861, 46.055241>,  <39.668308, 28.809038, 46.164082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.793953, 29.172861, 46.055241> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273449, -0.187782, -0.943379,
		-0.909154, 0.370728, 0.189735,
		0.314108, 0.909560, -0.272098,
		39.888184, 29.445728, 45.973610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.166191, 28.914591, 45.602768>,  <39.668308, 28.809038, 46.164082>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.166191, 28.914591, 45.602768> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.459042, 29.184683, 45.566853>,  <39.634750, 29.346737, 45.545303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.459042, 29.184683, 45.566853>,  <39.166191, 28.914591, 45.602768>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.459042, 29.184683, 45.566853> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166163, 0.049198, -0.984870,
		-0.660595, 0.735966, 0.148217,
		0.732123, 0.675228, -0.089791,
		39.678680, 29.387251, 45.539917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.854000, 29.436821, 45.233505>,  <39.166191, 28.914591, 45.602768>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.854000, 29.436821, 45.233505> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.251064, 29.450047, 45.186989>,  <39.489304, 29.457983, 45.159077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.251064, 29.450047, 45.186989>,  <38.854000, 29.436821, 45.233505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.251064, 29.450047, 45.186989> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120540, 0.196302, -0.973106,
		-0.009347, 0.979986, 0.198847,
		0.992664, 0.033065, -0.116293,
		39.548862, 29.459967, 45.152100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.874668, 30.044483, 44.862923>,  <38.854000, 29.436821, 45.233505>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.874668, 30.044483, 44.862923> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.205425, 29.825996, 44.809410>,  <39.403877, 29.694904, 44.777302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.205425, 29.825996, 44.809410>,  <38.874668, 30.044483, 44.862923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.205425, 29.825996, 44.809410> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065524, 0.142688, -0.987596,
		0.558532, 0.825400, 0.082197,
		0.826891, -0.546219, -0.133779,
		39.453491, 29.662130, 44.769276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.160477, 30.388117, 44.338268>,  <38.874668, 30.044483, 44.862923>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.160477, 30.388117, 44.338268> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.361652, 30.042488, 44.329964>,  <39.482357, 29.835110, 44.324982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.361652, 30.042488, 44.329964>,  <39.160477, 30.388117, 44.338268>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.361652, 30.042488, 44.329964> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092016, -0.029647, -0.995316,
		0.859411, 0.502491, -0.094419,
		0.502937, -0.864074, -0.020758,
		39.512535, 29.783266, 44.323738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.571999, 30.446024, 43.776085>,  <39.160477, 30.388117, 44.338268>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.571999, 30.446024, 43.776085> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.543663, 30.054619, 43.853539>,  <39.526661, 29.819777, 43.900009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.543663, 30.054619, 43.853539>,  <39.571999, 30.446024, 43.776085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.543663, 30.054619, 43.853539> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350376, -0.157342, -0.923299,
		0.933927, -0.133248, -0.331702,
		-0.070837, -0.978513, 0.193632,
		39.522411, 29.761065, 43.911629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.346828, 30.595476, 43.481998>,  <39.571999, 30.446024, 43.776085>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.346828, 30.595476, 43.481998> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.397362, 30.981951, 43.392090>,  <40.427681, 31.213837, 43.338146>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.397362, 30.981951, 43.392090>,  <40.346828, 30.595476, 43.481998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.397362, 30.981951, 43.392090> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065860, 0.234253, 0.969942,
		0.989799, -0.107735, 0.093228,
		0.126336, 0.966188, -0.224768,
		40.435261, 31.271807, 43.324661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.938293, 30.865295, 43.937458>,  <40.346828, 30.595476, 43.481998>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.938293, 30.865295, 43.937458> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.741405, 31.188858, 43.808842>,  <40.623272, 31.382996, 43.731670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.741405, 31.188858, 43.808842>,  <40.938293, 30.865295, 43.937458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.741405, 31.188858, 43.808842> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073146, 0.406520, 0.910709,
		0.867392, 0.424751, -0.259266,
		-0.492221, 0.808906, -0.321543,
		40.593739, 31.431530, 43.712379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.310104, 31.422953, 44.170403>,  <40.938293, 30.865295, 43.937458>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.310104, 31.422953, 44.170403> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.955246, 31.583317, 44.078979>,  <40.742332, 31.679535, 44.024124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.955246, 31.583317, 44.078979>,  <41.310104, 31.422953, 44.170403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.955246, 31.583317, 44.078979> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020456, 0.528942, 0.848411,
		0.461032, 0.747991, -0.477451,
		-0.887148, 0.400912, -0.228559,
		40.689102, 31.703590, 44.010410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.475040, 32.205700, 44.180161>,  <41.310104, 31.422953, 44.170403>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.475040, 32.205700, 44.180161> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.076828, 32.198860, 44.217323>,  <40.837902, 32.194756, 44.239620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.076828, 32.198860, 44.217323>,  <41.475040, 32.205700, 44.180161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.076828, 32.198860, 44.217323> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070567, 0.519240, 0.851710,
		-0.062801, 0.854457, -0.515711,
		-0.995528, -0.017096, 0.092905,
		40.778168, 32.193733, 44.245193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.251087, 32.936756, 44.426655>,  <41.475040, 32.205700, 44.180161>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.251087, 32.936756, 44.426655> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.976807, 32.658623, 44.512756>,  <40.812241, 32.491745, 44.564419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.976807, 32.658623, 44.512756>,  <41.251087, 32.936756, 44.426655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.976807, 32.658623, 44.512756> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001635, 0.297195, 0.954815,
		-0.727884, 0.654363, -0.204923,
		-0.685698, -0.695330, 0.215254,
		40.771095, 32.450024, 44.577332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.818127, 33.386982, 44.777393>,  <41.251087, 32.936756, 44.426655>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.818127, 33.386982, 44.777393> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.727604, 33.006298, 44.860374>,  <40.673290, 32.777889, 44.910164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.727604, 33.006298, 44.860374>,  <40.818127, 33.386982, 44.777393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.727604, 33.006298, 44.860374> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051636, 0.224398, 0.973129,
		-0.972687, 0.209512, -0.099925,
		-0.226305, -0.951709, 0.207450,
		40.659714, 32.720787, 44.922611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.137989, 33.301662, 45.143074>,  <40.818127, 33.386982, 44.777393>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.137989, 33.301662, 45.143074> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.369179, 32.996658, 45.259357>,  <40.507893, 32.813656, 45.329128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.369179, 32.996658, 45.259357>,  <40.137989, 33.301662, 45.143074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.369179, 32.996658, 45.259357> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117220, 0.274973, 0.954280,
		-0.807590, -0.585629, 0.069546,
		0.577977, -0.762514, 0.290713,
		40.542572, 32.767902, 45.346573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.847290, 33.196507, 45.706024>,  <40.137989, 33.301662, 45.143074>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.847290, 33.196507, 45.706024> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.194069, 32.998997, 45.733120>,  <40.402138, 32.880489, 45.749378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.194069, 32.998997, 45.733120>,  <39.847290, 33.196507, 45.706024>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.194069, 32.998997, 45.733120> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064329, 0.245635, 0.967226,
		-0.494231, -0.834176, 0.244716,
		0.866947, -0.493775, 0.067739,
		40.454155, 32.850864, 45.753441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.770798, 32.764614, 46.295856>,  <39.847290, 33.196507, 45.706024>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.770798, 32.764614, 46.295856> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.166210, 32.765953, 46.235470>,  <40.403458, 32.766754, 46.199238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.166210, 32.765953, 46.235470>,  <39.770798, 32.764614, 46.295856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.166210, 32.765953, 46.235470> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150697, 0.041588, 0.987705,
		0.009578, -0.999129, 0.040608,
		0.988534, 0.003340, -0.150964,
		40.462769, 32.766956, 46.190182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.128551, 32.183189, 46.762287>,  <39.770798, 32.764614, 46.295856>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.128551, 32.183189, 46.762287> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.375771, 32.478271, 46.653618>,  <40.524101, 32.655323, 46.588417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.375771, 32.478271, 46.653618>,  <40.128551, 32.183189, 46.762287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.375771, 32.478271, 46.653618> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290566, 0.106746, 0.950882,
		0.730473, -0.666628, -0.148379,
		0.618046, 0.737708, -0.271675,
		40.561184, 32.699585, 46.572117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.747585, 32.012928, 47.073219>,  <40.128551, 32.183189, 46.762287>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.747585, 32.012928, 47.073219> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.778591, 32.406521, 47.009010>,  <40.797195, 32.642677, 46.970486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.778591, 32.406521, 47.009010>,  <40.747585, 32.012928, 47.073219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.778591, 32.406521, 47.009010> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308748, 0.129397, 0.942301,
		0.947980, -0.122603, -0.293773,
		0.077515, 0.983984, -0.160519,
		40.801846, 32.701717, 46.960854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.216835, 32.202759, 47.558014>,  <40.747585, 32.012928, 47.073219>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.216835, 32.202759, 47.558014> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.099022, 32.554813, 47.409088>,  <41.028336, 32.766045, 47.319733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.099022, 32.554813, 47.409088>,  <41.216835, 32.202759, 47.558014>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.099022, 32.554813, 47.409088> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333871, 0.459816, 0.822860,
		0.895422, 0.118054, -0.429281,
		-0.294532, 0.880132, -0.372315,
		41.010662, 32.818851, 47.297394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.856350, 32.634136, 47.669659>,  <41.216835, 32.202759, 47.558014>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.856350, 32.634136, 47.669659> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.535740, 32.870193, 47.631123>,  <41.343372, 33.011829, 47.608002>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.535740, 32.870193, 47.631123>,  <41.856350, 32.634136, 47.669659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.535740, 32.870193, 47.631123> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262699, 0.492262, 0.829860,
		0.537162, 0.639847, -0.549592,
		-0.801527, 0.590147, -0.096337,
		41.295280, 33.047237, 47.602222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.052013, 33.323296, 47.816956>,  <41.856350, 32.634136, 47.669659>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.052013, 33.323296, 47.816956> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.658234, 33.344532, 47.883949>,  <41.421967, 33.357273, 47.924145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.658234, 33.344532, 47.883949>,  <42.052013, 33.323296, 47.816956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.658234, 33.344532, 47.883949> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171113, 0.505966, 0.845410,
		-0.039857, 0.860918, -0.507181,
		-0.984445, 0.053090, 0.167481,
		41.362900, 33.360458, 47.934193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.450111, 33.792213, 48.681660> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.807816, 33.620693, 48.732929>,  <35.022438, 33.517780, 48.763691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.807816, 33.620693, 48.732929>,  <34.450111, 33.792213, 48.681660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.807816, 33.620693, 48.732929> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084479, -0.119524, -0.989231,
		0.439503, 0.895458, -0.070661,
		0.894260, -0.428800, 0.128178,
		35.076092, 33.492054, 48.771381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.847927, 34.208660, 48.285545>,  <34.450111, 33.792213, 48.681660>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.847927, 34.208660, 48.285545> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.059418, 33.874439, 48.345295>,  <35.186310, 33.673908, 48.381145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.059418, 33.874439, 48.345295>,  <34.847927, 34.208660, 48.285545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.059418, 33.874439, 48.345295> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137582, -0.089289, -0.986458,
		0.837570, 0.542113, 0.067747,
		0.528723, -0.835548, 0.149371,
		35.218033, 33.623775, 48.390106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.430672, 34.238686, 47.938404>,  <34.847927, 34.208660, 48.285545>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.430672, 34.238686, 47.938404> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.421219, 33.844101, 48.003326>,  <35.415546, 33.607349, 48.042278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.421219, 33.844101, 48.003326>,  <35.430672, 34.238686, 47.938404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.421219, 33.844101, 48.003326> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153476, -0.164004, -0.974447,
		0.987870, 0.001881, 0.155273,
		-0.023633, -0.986458, 0.162304,
		35.414127, 33.548164, 48.052017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.986179, 33.955635, 47.562256>,  <35.430672, 34.238686, 47.938404>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.986179, 33.955635, 47.562256> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.744106, 33.644615, 47.630569>,  <35.598862, 33.458004, 47.671558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.744106, 33.644615, 47.630569>,  <35.986179, 33.955635, 47.562256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.744106, 33.644615, 47.630569> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115471, -0.297995, -0.947558,
		0.787666, -0.553727, 0.270127,
		-0.605184, -0.777551, 0.170781,
		35.562550, 33.411350, 47.681805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.387276, 33.306873, 47.369396>,  <35.986179, 33.955635, 47.562256>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.387276, 33.306873, 47.369396> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.989349, 33.270538, 47.351135>,  <35.750591, 33.248737, 47.340179>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.989349, 33.270538, 47.351135>,  <36.387276, 33.306873, 47.369396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.989349, 33.270538, 47.351135> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066529, -0.242139, -0.967958,
		0.076877, -0.965979, 0.246928,
		-0.994818, -0.090841, -0.045651,
		35.690903, 33.243286, 47.337440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.271969, 32.587994, 46.898399>,  <36.387276, 33.306873, 47.369396>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.271969, 32.587994, 46.898399> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.908489, 32.754539, 46.910431>,  <35.690399, 32.854465, 46.917648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.908489, 32.754539, 46.910431>,  <36.271969, 32.587994, 46.898399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.908489, 32.754539, 46.910431> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124375, -0.201251, -0.971611,
		-0.398490, -0.886645, 0.234662,
		-0.908700, 0.416364, 0.030079,
		35.635880, 32.879448, 46.919456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.918365, 32.236938, 46.296375>,  <36.271969, 32.587994, 46.898399>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.918365, 32.236938, 46.296375> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.715534, 32.567127, 46.395550>,  <35.593834, 32.765240, 46.455055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.715534, 32.567127, 46.395550>,  <35.918365, 32.236938, 46.296375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.715534, 32.567127, 46.395550> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293868, 0.104847, -0.950078,
		-0.810256, -0.554624, 0.189413,
		-0.507077, 0.825469, 0.247939,
		35.563412, 32.814770, 46.469933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.321457, 32.149422, 46.013824>,  <35.918365, 32.236938, 46.296375>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.321457, 32.149422, 46.013824> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.406597, 32.538486, 46.050972>,  <35.457684, 32.771927, 46.073261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.406597, 32.538486, 46.050972>,  <35.321457, 32.149422, 46.013824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.406597, 32.538486, 46.050972> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301251, 0.155744, -0.940740,
		-0.929485, 0.172262, 0.326165,
		0.212852, 0.972661, 0.092868,
		35.470451, 32.830284, 46.078831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.683189, 32.448269, 45.822006>,  <35.321457, 32.149422, 46.013824>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.683189, 32.448269, 45.822006> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.922760, 32.768177, 45.805710>,  <35.066502, 32.960121, 45.795933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.922760, 32.768177, 45.805710>,  <34.683189, 32.448269, 45.822006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.922760, 32.768177, 45.805710> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294029, 0.172303, -0.940138,
		-0.744872, 0.575051, 0.338352,
		0.598926, 0.799767, -0.040737,
		35.102436, 33.008106, 45.793488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.241825, 33.061359, 45.619392>,  <34.683189, 32.448269, 45.822006>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.241825, 33.061359, 45.619392> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.621880, 33.175911, 45.570030>,  <34.849911, 33.244644, 45.540413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.621880, 33.175911, 45.570030>,  <34.241825, 33.061359, 45.619392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.621880, 33.175911, 45.570030> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277666, 0.596813, -0.752806,
		-0.141939, 0.749533, 0.646571,
		0.950134, 0.286384, -0.123408,
		34.906921, 33.261826, 45.533009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.142307, 33.747654, 45.355064>,  <34.241825, 33.061359, 45.619392>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.142307, 33.747654, 45.355064> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.497963, 33.600677, 45.245949>,  <34.711357, 33.512493, 45.180477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.497963, 33.600677, 45.245949>,  <34.142307, 33.747654, 45.355064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.497963, 33.600677, 45.245949> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127626, 0.373348, -0.918870,
		0.439474, 0.851822, 0.285065,
		0.889142, -0.367438, -0.272791,
		34.764706, 33.490444, 45.164112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.573944, 34.320866, 45.204414>,  <34.142307, 33.747654, 45.355064>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.573944, 34.320866, 45.204414> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.706734, 33.999779, 45.006248>,  <34.786407, 33.807129, 44.887348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.706734, 33.999779, 45.006248>,  <34.573944, 34.320866, 45.204414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.706734, 33.999779, 45.006248> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156172, 0.471183, -0.868100,
		0.930269, 0.365560, 0.031061,
		0.331978, -0.802715, -0.495417,
		34.806328, 33.758965, 44.857624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.100300, 34.563442, 44.682190>,  <34.573944, 34.320866, 45.204414>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.100300, 34.563442, 44.682190> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.003975, 34.207420, 44.527367>,  <34.946182, 33.993809, 44.434471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.003975, 34.207420, 44.527367>,  <35.100300, 34.563442, 44.682190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.003975, 34.207420, 44.527367> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040231, 0.389296, -0.920234,
		0.969738, -0.237172, -0.057939,
		-0.240809, -0.890055, -0.387057,
		34.931732, 33.940403, 44.411251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.530155, 34.591721, 44.104561>,  <35.100300, 34.563442, 44.682190>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.530155, 34.591721, 44.104561> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.233418, 34.327805, 44.056652>,  <35.055374, 34.169456, 44.027908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.233418, 34.327805, 44.056652>,  <35.530155, 34.591721, 44.104561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.233418, 34.327805, 44.056652> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013674, 0.163689, -0.986417,
		0.670432, -0.733406, -0.112410,
		-0.741845, -0.659789, -0.119771,
		35.010864, 34.129868, 44.020721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.210533, 34.277065, 43.886059>,  <35.530155, 34.591721, 44.104561>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.210533, 34.277065, 43.886059> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.223076, 34.649704, 43.741207>,  <36.230602, 34.873287, 43.654297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.223076, 34.649704, 43.741207>,  <36.210533, 34.277065, 43.886059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.223076, 34.649704, 43.741207> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274693, 0.340325, 0.899290,
		0.961020, -0.127678, -0.245230,
		0.031361, 0.931599, -0.362131,
		36.232483, 34.929184, 43.632568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.878418, 34.541824, 44.093346>,  <36.210533, 34.277065, 43.886059>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.878418, 34.541824, 44.093346> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.619698, 34.843052, 44.045124>,  <36.464466, 35.023788, 44.016190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.619698, 34.843052, 44.045124>,  <36.878418, 34.541824, 44.093346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.619698, 34.843052, 44.045124> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363030, 0.443027, 0.819717,
		0.670714, 0.486429, -0.559938,
		-0.646801, 0.753070, -0.120556,
		36.425655, 35.068974, 44.008957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.253048, 35.072006, 44.358074>,  <36.878418, 34.541824, 44.093346>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.253048, 35.072006, 44.358074> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.875614, 35.203190, 44.339752>,  <36.649155, 35.281898, 44.328758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.875614, 35.203190, 44.339752>,  <37.253048, 35.072006, 44.358074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.875614, 35.203190, 44.339752> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161005, 0.575242, 0.801982,
		0.289361, 0.749361, -0.595590,
		-0.943582, 0.327955, -0.045801,
		36.592541, 35.301575, 44.326012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.328575, 35.652599, 44.595978>,  <37.253048, 35.072006, 44.358074>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.328575, 35.652599, 44.595978> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.932915, 35.613865, 44.640163>,  <36.695518, 35.590622, 44.666676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.932915, 35.613865, 44.640163>,  <37.328575, 35.652599, 44.595978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.932915, 35.613865, 44.640163> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033113, 0.585607, 0.809919,
		-0.143119, 0.804790, -0.576047,
		-0.989151, -0.096840, 0.110460,
		36.636169, 35.584812, 44.673302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.099068, 36.348797, 44.876705>,  <37.328575, 35.652599, 44.595978>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.099068, 36.348797, 44.876705> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.828907, 36.073505, 44.982662>,  <36.666809, 35.908329, 45.046238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.828907, 36.073505, 44.982662>,  <37.099068, 36.348797, 44.876705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.828907, 36.073505, 44.982662> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140367, 0.472613, 0.870020,
		-0.723967, 0.550431, -0.415809,
		-0.675403, -0.688232, 0.264893,
		36.626286, 35.867035, 45.062130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.612114, 36.682205, 45.208607>,  <37.099068, 36.348797, 44.876705>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.612114, 36.682205, 45.208607> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.570721, 36.303543, 45.330677>,  <36.545883, 36.076344, 45.403919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.570721, 36.303543, 45.330677>,  <36.612114, 36.682205, 45.208607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.570721, 36.303543, 45.330677> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020838, 0.304690, 0.952224,
		-0.994413, 0.104897, -0.011803,
		-0.103482, -0.946658, 0.305174,
		36.539677, 36.019547, 45.422230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.207855, 36.702690, 45.784271>,  <36.612114, 36.682205, 45.208607>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.207855, 36.702690, 45.784271> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.385651, 36.346340, 45.821716>,  <36.492329, 36.132530, 45.844181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.385651, 36.346340, 45.821716>,  <36.207855, 36.702690, 45.784271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.385651, 36.346340, 45.821716> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074159, 0.140737, 0.987266,
		-0.892707, -0.431891, 0.128623,
		0.444493, -0.890878, 0.093608,
		36.518997, 36.079079, 45.849800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.906769, 36.483749, 46.340488>,  <36.207855, 36.702690, 45.784271>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.906769, 36.483749, 46.340488> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.207397, 36.221928, 46.307739>,  <36.387775, 36.064835, 46.288090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.207397, 36.221928, 46.307739>,  <35.906769, 36.483749, 46.340488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.207397, 36.221928, 46.307739> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156403, 0.056242, 0.986091,
		-0.640847, -0.753919, 0.144645,
		0.751567, -0.654556, -0.081873,
		36.432869, 36.025562, 46.283176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.849598, 36.141972, 47.054596>,  <35.906769, 36.483749, 46.340488>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.849598, 36.141972, 47.054596> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.203339, 36.030148, 46.905056>,  <36.415585, 35.963055, 46.815331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.203339, 36.030148, 46.905056>,  <35.849598, 36.141972, 47.054596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.203339, 36.030148, 46.905056> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387304, -0.007686, 0.921920,
		-0.260603, -0.960099, 0.101476,
		0.884354, -0.279557, -0.373853,
		36.468643, 35.946281, 46.792900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.012394, 35.535519, 47.431744>,  <35.849598, 36.141972, 47.054596>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.012394, 35.535519, 47.431744> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.370491, 35.658340, 47.302586>,  <36.585350, 35.732033, 47.225090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.370491, 35.658340, 47.302586>,  <36.012394, 35.535519, 47.431744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.370491, 35.658340, 47.302586> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387107, -0.177078, 0.904871,
		0.220669, -0.935072, -0.277391,
		0.895239, 0.307057, -0.322897,
		36.639065, 35.750458, 47.205715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.530842, 34.979240, 47.573109>,  <36.012394, 35.535519, 47.431744>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.530842, 34.979240, 47.573109> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.722977, 35.328514, 47.540031>,  <36.838257, 35.538078, 47.520187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.722977, 35.328514, 47.540031>,  <36.530842, 34.979240, 47.573109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.722977, 35.328514, 47.540031> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426511, -0.150155, 0.891931,
		0.766400, -0.463692, -0.444545,
		0.480332, 0.873180, -0.082691,
		36.867077, 35.590469, 47.515224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.205948, 34.872898, 47.770840>,  <36.530842, 34.979240, 47.573109>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.205948, 34.872898, 47.770840> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.138157, 35.261383, 47.837803>,  <37.097481, 35.494473, 47.877979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.138157, 35.261383, 47.837803>,  <37.205948, 34.872898, 47.770840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.138157, 35.261383, 47.837803> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435337, -0.078616, 0.896829,
		0.884171, 0.224873, -0.409480,
		-0.169481, 0.971212, 0.167405,
		37.087311, 35.552746, 47.888023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.746475, 35.063927, 48.196217>,  <37.205948, 34.872898, 47.770840>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.746475, 35.063927, 48.196217> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.490707, 35.367855, 48.243248>,  <37.337246, 35.550213, 48.271465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.490707, 35.367855, 48.243248>,  <37.746475, 35.063927, 48.196217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.490707, 35.367855, 48.243248> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403629, 0.201573, 0.892441,
		0.654392, 0.618100, -0.435574,
		-0.639417, 0.759817, 0.117576,
		37.298882, 35.595798, 48.278522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.146885, 35.591217, 48.370758>,  <37.746475, 35.063927, 48.196217>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.146885, 35.591217, 48.370758> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.780075, 35.680550, 48.502937>,  <37.559990, 35.734150, 48.582245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.780075, 35.680550, 48.502937>,  <38.146885, 35.591217, 48.370758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.780075, 35.680550, 48.502937> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374749, 0.198910, 0.905537,
		0.136510, 0.954230, -0.266100,
		-0.917021, 0.223336, 0.330444,
		37.504971, 35.747551, 48.602070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.405365, 36.299644, 48.236679>,  <38.146885, 35.591217, 48.370758>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.405365, 36.299644, 48.236679> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.798382, 36.355488, 48.285877>,  <39.034191, 36.388992, 48.315395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.798382, 36.355488, 48.285877>,  <38.405365, 36.299644, 48.236679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.798382, 36.355488, 48.285877> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135421, -0.083246, -0.987285,
		-0.127595, 0.986701, -0.100698,
		0.982538, 0.139609, 0.122998,
		39.093143, 36.397369, 48.322777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.582069, 36.820908, 47.734116>,  <38.405365, 36.299644, 48.236679>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.582069, 36.820908, 47.734116> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.923126, 36.636578, 47.832619>,  <39.127762, 36.525982, 47.891720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.923126, 36.636578, 47.832619>,  <38.582069, 36.820908, 47.734116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.923126, 36.636578, 47.832619> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270188, -0.014539, -0.962698,
		0.447211, 0.887374, 0.112112,
		0.852643, -0.460821, 0.246260,
		39.178921, 36.498333, 47.906498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.126614, 37.171577, 47.406265>,  <38.582069, 36.820908, 47.734116>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.126614, 37.171577, 47.406265> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.301403, 36.822651, 47.494003>,  <39.406277, 36.613293, 47.546646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.301403, 36.822651, 47.494003>,  <39.126614, 37.171577, 47.406265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.301403, 36.822651, 47.494003> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365627, -0.050538, -0.929388,
		0.821809, 0.486316, 0.296860,
		0.436974, -0.872320, 0.219343,
		39.432495, 36.560955, 47.559807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.870304, 37.249371, 47.250450>,  <39.126614, 37.171577, 47.406265>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.870304, 37.249371, 47.250450> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.808506, 36.854443, 47.265011>,  <39.771427, 36.617485, 47.273746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.808506, 36.854443, 47.265011>,  <39.870304, 37.249371, 47.250450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.808506, 36.854443, 47.265011> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315272, -0.084186, -0.945260,
		0.936341, -0.134560, 0.324282,
		-0.154494, -0.987323, 0.036404,
		39.762157, 36.558247, 47.275932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.465420, 36.941074, 46.908199>,  <39.870304, 37.249371, 47.250450>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.465420, 36.941074, 46.908199> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.188194, 36.652943, 46.919464>,  <40.021858, 36.480064, 46.926224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.188194, 36.652943, 46.919464>,  <40.465420, 36.941074, 46.908199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.188194, 36.652943, 46.919464> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207727, -0.236966, -0.949050,
		0.690299, -0.651903, 0.313864,
		-0.693064, -0.720326, 0.028160,
		39.980274, 36.436844, 46.927914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.770870, 36.411747, 46.646877>,  <40.465420, 36.941074, 46.908199>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.770870, 36.411747, 46.646877> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.373581, 36.379223, 46.613651>,  <40.135208, 36.359707, 46.593716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.373581, 36.379223, 46.613651>,  <40.770870, 36.411747, 46.646877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.373581, 36.379223, 46.613651> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100776, -0.246226, -0.963959,
		0.057927, -0.965796, 0.252751,
		-0.993222, -0.081310, -0.083066,
		40.075615, 36.354832, 46.588730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.623558, 35.722584, 46.290436>,  <40.770870, 36.411747, 46.646877>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.623558, 35.722584, 46.290436> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.297237, 35.944981, 46.226761>,  <40.101444, 36.078419, 46.188557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.297237, 35.944981, 46.226761>,  <40.623558, 35.722584, 46.290436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.297237, 35.944981, 46.226761> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066744, -0.363921, -0.929036,
		-0.574471, -0.747282, 0.333996,
		-0.815799, 0.555996, -0.159185,
		40.052498, 36.111778, 46.179005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.193550, 35.284721, 46.010441>,  <40.623558, 35.722584, 46.290436>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.193550, 35.284721, 46.010441> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.057526, 35.643494, 45.897388>,  <39.975910, 35.858757, 45.829559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.057526, 35.643494, 45.897388>,  <40.193550, 35.284721, 46.010441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.057526, 35.643494, 45.897388> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126539, -0.341448, -0.931344,
		-0.931851, -0.280950, 0.229610,
		-0.340061, 0.896928, -0.282627,
		39.955505, 35.912571, 45.812599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.699520, 35.155930, 45.499485>,  <40.193550, 35.284721, 46.010441>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.699520, 35.155930, 45.499485> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.765656, 35.546883, 45.446743>,  <39.805336, 35.781456, 45.415096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.765656, 35.546883, 45.446743>,  <39.699520, 35.155930, 45.499485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.765656, 35.546883, 45.446743> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084329, -0.119197, -0.989283,
		-0.982626, 0.174682, 0.062714,
		0.165335, 0.977383, -0.131857,
		39.815254, 35.840099, 45.407185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.140526, 35.539707, 45.058369>,  <39.699520, 35.155930, 45.499485>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.140526, 35.539707, 45.058369> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.487484, 35.735031, 45.020046>,  <39.695660, 35.852226, 44.997055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.487484, 35.735031, 45.020046>,  <39.140526, 35.539707, 45.058369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.487484, 35.735031, 45.020046> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164492, 0.099661, -0.981331,
		-0.469644, 0.866962, 0.166769,
		0.867397, 0.488308, -0.095803,
		39.747704, 35.881523, 44.991306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.994797, 36.001633, 44.516987>,  <39.140526, 35.539707, 45.058369>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.994797, 36.001633, 44.516987> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.387878, 35.949265, 44.569370>,  <39.623726, 35.917843, 44.600800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.387878, 35.949265, 44.569370>,  <38.994797, 36.001633, 44.516987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.387878, 35.949265, 44.569370> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107251, -0.174117, -0.978867,
		0.150959, 0.975983, -0.157064,
		0.982705, -0.130923, 0.130959,
		39.682690, 35.909988, 44.608658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.146732, 36.301720, 43.972202>,  <38.994797, 36.001633, 44.516987>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.146732, 36.301720, 43.972202> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.491489, 36.123707, 44.069427>,  <39.698345, 36.016899, 44.127762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.491489, 36.123707, 44.069427>,  <39.146732, 36.301720, 43.972202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.491489, 36.123707, 44.069427> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185760, -0.168915, -0.967968,
		0.471835, 0.879439, -0.062918,
		0.861896, -0.445034, 0.243064,
		39.750057, 35.990196, 44.142345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.588001, 36.458885, 43.508709>,  <39.146732, 36.301720, 43.972202>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.588001, 36.458885, 43.508709> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.786556, 36.138432, 43.642441>,  <39.905689, 35.946159, 43.722679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.786556, 36.138432, 43.642441>,  <39.588001, 36.458885, 43.508709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.786556, 36.138432, 43.642441> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023745, -0.372458, -0.927745,
		0.867775, 0.468462, -0.165861,
		0.496390, -0.801136, 0.334333,
		39.935474, 35.898090, 43.742741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.132019, 36.437336, 43.079582>,  <39.588001, 36.458885, 43.508709>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.132019, 36.437336, 43.079582> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.128017, 36.058483, 43.207851>,  <40.125614, 35.831169, 43.284813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.128017, 36.058483, 43.207851>,  <40.132019, 36.437336, 43.079582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.128017, 36.058483, 43.207851> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274514, -0.310972, -0.909911,
		0.961531, 0.078925, 0.263114,
		-0.010007, -0.947136, 0.320676,
		40.125015, 35.774342, 43.304054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.479731, 26.383865, 39.904713> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.108250, 26.360401, 39.758251>,  <25.885361, 26.346323, 39.670376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.108250, 26.360401, 39.758251>,  <26.479731, 26.383865, 39.904713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.108250, 26.360401, 39.758251> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120812, 0.885672, -0.448318,
		0.350589, -0.460590, -0.815441,
		-0.928704, -0.058660, -0.366152,
		25.829638, 26.342804, 39.648407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.559565, 26.480766, 39.124012>,  <26.479731, 26.383865, 39.904713>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.559565, 26.480766, 39.124012> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.177532, 26.571117, 39.200748>,  <25.948313, 26.625328, 39.246788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.177532, 26.571117, 39.200748>,  <26.559565, 26.480766, 39.124012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.177532, 26.571117, 39.200748> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093343, 0.843682, -0.528666,
		-0.281263, -0.487012, -0.826868,
		-0.955080, 0.225876, 0.191837,
		25.891008, 26.638880, 39.258301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.314692, 26.666592, 38.507374>,  <26.559565, 26.480766, 39.124012>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.314692, 26.666592, 38.507374> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.058573, 26.842085, 38.759575>,  <25.904902, 26.947380, 38.910896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.058573, 26.842085, 38.759575>,  <26.314692, 26.666592, 38.507374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.058573, 26.842085, 38.759575> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054749, 0.792675, -0.607181,
		-0.766173, -0.423296, -0.483528,
		-0.640298, 0.438733, 0.630502,
		25.866484, 26.973705, 38.948727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.887983, 27.057829, 38.106220>,  <26.314692, 26.666592, 38.507374>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.887983, 27.057829, 38.106220> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.788717, 27.232027, 38.452343>,  <25.729158, 27.336546, 38.660015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.788717, 27.232027, 38.452343>,  <25.887983, 27.057829, 38.106220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.788717, 27.232027, 38.452343> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016624, 0.895033, -0.445690,
		-0.968575, -0.096220, -0.229355,
		-0.248165, 0.435497, 0.865307,
		25.714268, 27.362677, 38.711937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.432331, 27.508890, 37.915588>,  <25.887983, 27.057829, 38.106220>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.432331, 27.508890, 37.915588> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.473188, 27.639345, 38.291504>,  <25.497702, 27.717617, 38.517052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.473188, 27.639345, 38.291504>,  <25.432331, 27.508890, 37.915588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.473188, 27.639345, 38.291504> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158890, 0.937949, -0.308229,
		-0.981998, -0.117840, 0.147624,
		0.102142, 0.326136, 0.939788,
		25.503832, 27.737186, 38.573441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.787359, 27.910969, 38.216137>,  <25.432331, 27.508890, 37.915588>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.787359, 27.910969, 38.216137> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.148712, 28.005198, 38.359470>,  <25.365524, 28.061735, 38.445473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.148712, 28.005198, 38.359470>,  <24.787359, 27.910969, 38.216137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.148712, 28.005198, 38.359470> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132348, 0.947972, -0.289541,
		-0.407900, 0.214142, 0.887559,
		0.903384, 0.235570, 0.358336,
		25.419727, 28.075869, 38.466972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.685448, 28.544233, 38.435253>,  <24.787359, 27.910969, 38.216137>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.685448, 28.544233, 38.435253> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.083313, 28.506023, 38.419659>,  <25.322033, 28.483097, 38.410301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.083313, 28.506023, 38.419659>,  <24.685448, 28.544233, 38.435253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.083313, 28.506023, 38.419659> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070210, 0.903554, -0.422684,
		0.075599, 0.417691, 0.905438,
		0.994663, -0.095525, -0.038982,
		25.381712, 28.477365, 38.407963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.060524, 29.228994, 38.755573>,  <24.685448, 28.544233, 38.435253>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.060524, 29.228994, 38.755573> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.322596, 29.048117, 38.513496>,  <25.479839, 28.939590, 38.368252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.322596, 29.048117, 38.513496>,  <25.060524, 29.228994, 38.755573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.322596, 29.048117, 38.513496> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196846, 0.875589, -0.441130,
		0.729376, 0.169891, 0.662682,
		0.655181, -0.452196, -0.605192,
		25.519150, 28.912458, 38.331940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.624266, 29.797304, 38.660965>,  <25.060524, 29.228994, 38.755573>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.624266, 29.797304, 38.660965> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.692966, 29.529947, 38.371483>,  <25.734186, 29.369534, 38.197792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.692966, 29.529947, 38.371483>,  <25.624266, 29.797304, 38.660965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.692966, 29.529947, 38.371483> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373945, 0.723875, -0.579801,
		0.911409, -0.171045, 0.374269,
		0.171751, -0.668392, -0.723708,
		25.744492, 29.329430, 38.154369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.427843, 29.786848, 38.506889>,  <25.624266, 29.797304, 38.660965>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.427843, 29.786848, 38.506889> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.232733, 29.668720, 38.178291>,  <26.115667, 29.597843, 37.981133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.232733, 29.668720, 38.178291>,  <26.427843, 29.786848, 38.506889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.232733, 29.668720, 38.178291> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435513, 0.733247, -0.522185,
		0.756573, -0.612483, -0.229046,
		-0.487776, -0.295319, -0.821499,
		26.086401, 29.580124, 37.931843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.974705, 29.761028, 38.067360>,  <26.427843, 29.786848, 38.506889>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.974705, 29.761028, 38.067360> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.642220, 29.744883, 37.845566>,  <26.442728, 29.735195, 37.712490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.642220, 29.744883, 37.845566>,  <26.974705, 29.761028, 38.067360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.642220, 29.744883, 37.845566> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349031, 0.738431, -0.576972,
		0.432742, -0.673119, -0.599703,
		-0.831211, -0.040365, -0.554490,
		26.392857, 29.732773, 37.679218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.176783, 29.712418, 37.249851>,  <26.974705, 29.761028, 38.067360>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.176783, 29.712418, 37.249851> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.805714, 29.854660, 37.295410>,  <26.583073, 29.940004, 37.322746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.805714, 29.854660, 37.295410>,  <27.176783, 29.712418, 37.249851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.805714, 29.854660, 37.295410> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231304, 0.786721, -0.572336,
		-0.293129, -0.504595, -0.812071,
		-0.927671, 0.355604, 0.113896,
		26.527412, 29.961342, 37.329578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.989252, 30.032373, 36.512756>,  <27.176783, 29.712418, 37.249851>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.989252, 30.032373, 36.512756> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.738569, 30.203918, 36.773006>,  <26.588160, 30.306847, 36.929157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.738569, 30.203918, 36.773006>,  <26.989252, 30.032373, 36.512756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.738569, 30.203918, 36.773006> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091781, 0.869745, -0.484891,
		-0.773832, -0.244169, -0.584436,
		-0.626706, 0.428864, 0.650627,
		26.550558, 30.332579, 36.968193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.538130, 30.493944, 36.184849>,  <26.989252, 30.032373, 36.512756>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.538130, 30.493944, 36.184849> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.494492, 30.647190, 36.551743>,  <26.468307, 30.739138, 36.771877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.494492, 30.647190, 36.551743>,  <26.538130, 30.493944, 36.184849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.494492, 30.647190, 36.551743> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036959, 0.923668, -0.381406,
		-0.993344, -0.007710, -0.114928,
		-0.109096, 0.383115, 0.917235,
		26.461763, 30.762125, 36.826912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.976463, 30.984749, 36.197624>,  <26.538130, 30.493944, 36.184849>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.976463, 30.984749, 36.197624> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.212467, 31.100473, 36.499138>,  <26.354069, 31.169909, 36.680046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.212467, 31.100473, 36.499138>,  <25.976463, 30.984749, 36.197624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.212467, 31.100473, 36.499138> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177401, 0.864332, -0.470595,
		-0.787667, 0.411377, 0.458639,
		0.590008, 0.289309, 0.753784,
		26.389469, 31.187265, 36.725273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.810854, 31.596617, 36.284275>,  <25.976463, 30.984749, 36.197624>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.810854, 31.596617, 36.284275> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.169386, 31.586464, 36.461338>,  <26.384504, 31.580372, 36.567577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.169386, 31.586464, 36.461338>,  <25.810854, 31.596617, 36.284275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.169386, 31.586464, 36.461338> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273163, 0.818004, -0.506214,
		-0.349248, 0.574653, 0.740135,
		0.896330, -0.025384, 0.442660,
		26.438286, 31.578848, 36.594135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.831675, 32.255756, 36.462135>,  <25.810854, 31.596617, 36.284275>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.831675, 32.255756, 36.462135> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.211672, 32.133488, 36.487671>,  <26.439671, 32.060127, 36.502995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.211672, 32.133488, 36.487671>,  <25.831675, 32.255756, 36.462135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.211672, 32.133488, 36.487671> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306338, 0.872614, -0.380397,
		0.060567, 0.380932, 0.922617,
		0.949994, -0.305672, 0.063842,
		26.496670, 32.041786, 36.506824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.132713, 32.872459, 36.763336>,  <25.831675, 32.255756, 36.462135>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.132713, 32.872459, 36.763336> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.431595, 32.661240, 36.601917>,  <26.610924, 32.534508, 36.505066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.431595, 32.661240, 36.601917>,  <26.132713, 32.872459, 36.763336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.431595, 32.661240, 36.601917> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462025, 0.849203, -0.255709,
		0.477724, 0.004616, 0.878498,
		0.747203, -0.528046, -0.403552,
		26.655756, 32.502827, 36.480850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.759430, 33.099892, 37.027580>,  <26.132713, 32.872459, 36.763336>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.759430, 33.099892, 37.027580> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.882330, 32.918934, 36.692692>,  <26.956070, 32.810360, 36.491760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.882330, 32.918934, 36.692692>,  <26.759430, 33.099892, 37.027580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.882330, 32.918934, 36.692692> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429580, 0.850970, -0.302177,
		0.849152, -0.266810, 0.455799,
		0.307248, -0.452397, -0.837219,
		26.974504, 32.783215, 36.441525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.462061, 33.434258, 36.882462>,  <26.759430, 33.099892, 37.027580>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.462061, 33.434258, 36.882462> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.344460, 33.242985, 36.551426>,  <27.273899, 33.128220, 36.352806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.344460, 33.242985, 36.551426>,  <27.462061, 33.434258, 36.882462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.344460, 33.242985, 36.551426> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333602, 0.760067, -0.557682,
		0.895696, -0.440046, -0.063940,
		-0.294004, -0.478182, -0.827588,
		27.256258, 33.099529, 36.303150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.057873, 32.987648, 36.773441>,  <27.462061, 33.434258, 36.882462>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.057873, 32.987648, 36.773441> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.425987, 32.959541, 36.927395>,  <28.646856, 32.942677, 37.019768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.425987, 32.959541, 36.927395>,  <28.057873, 32.987648, 36.773441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.425987, 32.959541, 36.927395> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304754, -0.745652, 0.592560,
		0.245349, -0.662619, -0.707630,
		0.920287, -0.070269, 0.384881,
		28.702074, 32.938461, 37.042858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.240400, 32.360764, 36.726334>,  <28.057873, 32.987648, 36.773441>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.240400, 32.360764, 36.726334> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.470863, 32.508038, 37.018219>,  <28.609142, 32.596401, 37.193352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.470863, 32.508038, 37.018219>,  <28.240400, 32.360764, 36.726334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.470863, 32.508038, 37.018219> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272511, -0.755175, 0.596195,
		0.770571, -0.542358, -0.334767,
		0.576158, 0.368183, 0.729714,
		28.643711, 32.618492, 37.237133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.528650, 31.761995, 37.135399>,  <28.240400, 32.360764, 36.726334>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.528650, 31.761995, 37.135399> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.563663, 32.051773, 37.408901>,  <28.584671, 32.225639, 37.573002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.563663, 32.051773, 37.408901>,  <28.528650, 31.761995, 37.135399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.563663, 32.051773, 37.408901> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188424, -0.661959, 0.725470,
		0.978179, -0.192338, 0.078560,
		0.087532, 0.724442, 0.683755,
		28.589924, 32.269104, 37.614029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.983589, 31.520119, 37.587364>,  <28.528650, 31.761995, 37.135399>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.983589, 31.520119, 37.587364> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.752907, 31.790825, 37.770405>,  <28.614496, 31.953249, 37.880230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.752907, 31.790825, 37.770405>,  <28.983589, 31.520119, 37.587364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.752907, 31.790825, 37.770405> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027224, -0.575743, 0.817177,
		0.816497, 0.458814, 0.350459,
		-0.576707, 0.676764, 0.457602,
		28.579895, 31.993855, 37.907684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.180416, 31.635021, 38.294189>,  <28.983589, 31.520119, 37.587364>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.180416, 31.635021, 38.294189> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.828388, 31.816290, 38.350914>,  <28.617170, 31.925051, 38.384949>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.828388, 31.816290, 38.350914>,  <29.180416, 31.635021, 38.294189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.828388, 31.816290, 38.350914> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181917, -0.597644, 0.780851,
		0.438612, 0.661406, 0.608409,
		-0.880072, 0.453170, 0.141813,
		28.564367, 31.952242, 38.393459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.158113, 31.796930, 38.996021>,  <29.180416, 31.635021, 38.294189>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.158113, 31.796930, 38.996021> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.768900, 31.850372, 38.920811>,  <28.535372, 31.882437, 38.875683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.768900, 31.850372, 38.920811>,  <29.158113, 31.796930, 38.996021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.768900, 31.850372, 38.920811> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230201, -0.511066, 0.828142,
		0.014550, 0.849095, 0.528040,
		-0.973034, 0.133605, -0.188027,
		28.476990, 31.890453, 38.864403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.945438, 31.929979, 39.691833>,  <29.158113, 31.796930, 38.996021>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.945438, 31.929979, 39.691833> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.633385, 31.821617, 39.466267>,  <28.446154, 31.756599, 39.330925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.633385, 31.821617, 39.466267>,  <28.945438, 31.929979, 39.691833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.633385, 31.821617, 39.466267> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354019, -0.552022, 0.754945,
		-0.515814, 0.788595, 0.334745,
		-0.780132, -0.270905, -0.563918,
		28.399345, 31.740345, 39.297092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.257431, 31.966936, 40.109592>,  <28.945438, 31.929979, 39.691833>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.257431, 31.966936, 40.109592> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.185194, 31.697758, 39.822670>,  <28.141851, 31.536251, 39.650517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.185194, 31.697758, 39.822670>,  <28.257431, 31.966936, 40.109592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.185194, 31.697758, 39.822670> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350274, -0.637480, 0.686241,
		-0.919072, 0.375186, -0.120589,
		-0.180595, -0.672944, -0.717308,
		28.131016, 31.495874, 39.607479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.627399, 31.790546, 40.145409>,  <28.257431, 31.966936, 40.109592>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.627399, 31.790546, 40.145409> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.765734, 31.471220, 39.948193>,  <27.848734, 31.279625, 39.829865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.765734, 31.471220, 39.948193>,  <27.627399, 31.790546, 40.145409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.765734, 31.471220, 39.948193> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540530, -0.599019, 0.590765,
		-0.766958, 0.062196, -0.638676,
		0.345836, -0.798316, -0.493041,
		27.869484, 31.231726, 39.800282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.978039, 31.317429, 40.148712>,  <27.627399, 31.790546, 40.145409>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.978039, 31.317429, 40.148712> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.267157, 31.064980, 40.036106>,  <27.440626, 30.913509, 39.968540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.267157, 31.064980, 40.036106>,  <26.978039, 31.317429, 40.148712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.267157, 31.064980, 40.036106> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535541, -0.769011, 0.349024,
		-0.436767, -0.101509, -0.893829,
		0.722793, -0.631125, -0.281517,
		27.483994, 30.875643, 39.951653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.686926, 30.726616, 39.823524>,  <26.978039, 31.317429, 40.148712>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.686926, 30.726616, 39.823524> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.050386, 30.606052, 39.939114>,  <27.268463, 30.533714, 40.008465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.050386, 30.606052, 39.939114>,  <26.686926, 30.726616, 39.823524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.050386, 30.606052, 39.939114> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393186, -0.850584, 0.349158,
		0.140553, -0.430882, -0.891396,
		0.908653, -0.301409, 0.288968,
		27.322983, 30.515629, 40.025803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.778902, 30.109518, 39.487926>,  <26.686926, 30.726616, 39.823524>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.778902, 30.109518, 39.487926> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.027628, 30.119270, 39.801041>,  <27.176863, 30.125122, 39.988911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.027628, 30.119270, 39.801041>,  <26.778902, 30.109518, 39.487926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.027628, 30.119270, 39.801041> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470380, -0.787527, 0.398176,
		0.626172, -0.615798, -0.478227,
		0.621813, 0.024379, 0.782786,
		27.214172, 30.126583, 40.035877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.107462, 29.540821, 39.476147>,  <26.778902, 30.109518, 39.487926>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.107462, 29.540821, 39.476147> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.153065, 29.662596, 39.854420>,  <27.180426, 29.735661, 40.081383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.153065, 29.662596, 39.854420>,  <27.107462, 29.540821, 39.476147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.153065, 29.662596, 39.854420> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228117, -0.918436, 0.323167,
		0.966936, -0.252570, -0.035260,
		0.114006, 0.304438, 0.945685,
		27.187267, 29.753927, 40.138126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.263685, 28.946934, 39.803516>,  <27.107462, 29.540821, 39.476147>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.263685, 28.946934, 39.803516> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.145735, 29.186327, 40.101475>,  <27.074965, 29.329964, 40.280251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.145735, 29.186327, 40.101475>,  <27.263685, 28.946934, 39.803516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.145735, 29.186327, 40.101475> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314136, -0.796941, 0.515949,
		0.902423, -0.081857, 0.423004,
		-0.294875, 0.598485, 0.744892,
		27.057272, 29.365873, 40.324944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.654028, 28.672935, 40.474049>,  <27.263685, 28.946934, 39.803516>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.654028, 28.672935, 40.474049> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.327513, 28.871782, 40.591724>,  <27.131603, 28.991091, 40.662331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.327513, 28.871782, 40.591724>,  <27.654028, 28.672935, 40.474049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.327513, 28.871782, 40.591724> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256239, -0.768065, 0.586871,
		0.517699, 0.403674, 0.754344,
		-0.816290, 0.497115, 0.294190,
		27.082626, 29.020916, 40.679981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.688702, 28.604223, 41.262993>,  <27.654028, 28.672935, 40.474049>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.688702, 28.604223, 41.262993> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.325171, 28.713835, 41.137177>,  <27.107052, 28.779602, 41.061687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.325171, 28.713835, 41.137177>,  <27.688702, 28.604223, 41.262993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.325171, 28.713835, 41.137177> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403441, -0.769185, 0.495570,
		-0.106141, 0.577288, 0.809612,
		-0.908829, 0.274031, -0.314544,
		27.052523, 28.796043, 41.042812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.227020, 28.489412, 41.861305>,  <27.688702, 28.604223, 41.262993>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.227020, 28.489412, 41.861305> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.001226, 28.515747, 41.532181>,  <26.865749, 28.531548, 41.334705>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.001226, 28.515747, 41.532181>,  <27.227020, 28.489412, 41.861305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.001226, 28.515747, 41.532181> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508111, -0.813292, 0.283513,
		-0.650523, 0.578120, 0.492543,
		-0.564485, 0.065835, -0.822814,
		26.831881, 28.535498, 41.285336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.652922, 28.453049, 42.059841>,  <27.227020, 28.489412, 41.861305>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.652922, 28.453049, 42.059841> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.621195, 28.334511, 41.679131>,  <26.602160, 28.263388, 41.450703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.621195, 28.334511, 41.679131>,  <26.652922, 28.453049, 42.059841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.621195, 28.334511, 41.679131> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477751, -0.826691, 0.297212,
		-0.874907, 0.478289, -0.076009,
		-0.079317, -0.296346, -0.951781,
		26.597399, 28.245607, 41.393597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.983040, 28.484863, 41.936836>,  <26.652922, 28.453049, 42.059841>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.983040, 28.484863, 41.936836> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.121393, 28.224621, 41.666409>,  <26.204405, 28.068476, 41.504150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.121393, 28.224621, 41.666409>,  <25.983040, 28.484863, 41.936836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.121393, 28.224621, 41.666409> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653042, -0.684310, 0.324431,
		-0.673721, 0.329288, -0.661566,
		0.345885, -0.650607, -0.676073,
		26.225159, 28.029438, 41.463585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.416428, 27.959705, 41.799488>,  <25.983040, 28.484863, 41.936836>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.416428, 27.959705, 41.799488> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.733833, 27.770741, 41.646042>,  <25.924276, 27.657362, 41.553974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.733833, 27.770741, 41.646042>,  <25.416428, 27.959705, 41.799488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.733833, 27.770741, 41.646042> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407166, -0.880639, 0.242261,
		-0.452273, -0.036043, -0.891151,
		0.793514, -0.472414, -0.383614,
		25.971888, 27.629017, 41.530956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.151699, 27.514978, 41.466648>,  <25.416428, 27.959705, 41.799488>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.151699, 27.514978, 41.466648> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.516623, 27.360540, 41.521244>,  <25.735577, 27.267878, 41.554001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.516623, 27.360540, 41.521244>,  <25.151699, 27.514978, 41.466648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.516623, 27.360540, 41.521244> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406095, -0.895916, 0.180063,
		0.052760, -0.219700, -0.974140,
		0.912307, -0.386093, 0.136487,
		25.790314, 27.244713, 41.562191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.199194, 26.907463, 41.025082>,  <25.151699, 27.514978, 41.466648>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.199194, 26.907463, 41.025082> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.448963, 26.868555, 41.335083>,  <25.598825, 26.845211, 41.521084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.448963, 26.868555, 41.335083>,  <25.199194, 26.907463, 41.025082>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.448963, 26.868555, 41.335083> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388846, -0.899236, 0.200431,
		0.677418, -0.426512, -0.599327,
		0.624423, -0.097271, 0.775006,
		25.636290, 26.839375, 41.567585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<41.927666, 34.007511, 48.108536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.618027, 33.778786, 48.217201>,  <41.432243, 33.641548, 48.282398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.618027, 33.778786, 48.217201>,  <41.927666, 34.007511, 48.108536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.618027, 33.778786, 48.217201> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026448, 0.399533, 0.916337,
		-0.632514, 0.716519, -0.294154,
		-0.774097, -0.571817, 0.271661,
		41.385799, 33.607239, 48.298698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.496593, 34.426788, 48.546360>,  <41.927666, 34.007511, 48.108536>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.496593, 34.426788, 48.546360> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.405930, 34.049091, 48.641876>,  <41.351532, 33.822472, 48.699188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.405930, 34.049091, 48.641876>,  <41.496593, 34.426788, 48.546360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.405930, 34.049091, 48.641876> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012322, 0.242374, 0.970105,
		-0.973895, 0.222830, -0.043303,
		-0.226664, -0.944247, 0.238793,
		41.337929, 33.765816, 48.713512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.881996, 34.535854, 49.020081>,  <41.496593, 34.426788, 48.546360>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.881996, 34.535854, 49.020081> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.996746, 34.161674, 49.102684>,  <41.065594, 33.937168, 49.152245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.996746, 34.161674, 49.102684>,  <40.881996, 34.535854, 49.020081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.996746, 34.161674, 49.102684> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094357, 0.186927, 0.977832,
		-0.953310, -0.299998, -0.034641,
		0.286872, -0.935446, 0.206507,
		41.082809, 33.881042, 49.164635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.455845, 34.411736, 49.544395>,  <40.881996, 34.535854, 49.020081>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.455845, 34.411736, 49.544395> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.740025, 34.130653, 49.559750>,  <40.910534, 33.962006, 49.568962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.740025, 34.130653, 49.559750>,  <40.455845, 34.411736, 49.544395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.740025, 34.130653, 49.559750> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005336, 0.059915, 0.998189,
		-0.703729, -0.708957, 0.046316,
		0.710448, -0.702702, 0.038381,
		40.953159, 33.919842, 49.571262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.447018, 34.209789, 50.217178>,  <40.455845, 34.411736, 49.544395>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.447018, 34.209789, 50.217178> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.784126, 34.020622, 50.114349>,  <40.986389, 33.907120, 50.052650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.784126, 34.020622, 50.114349>,  <40.447018, 34.209789, 50.217178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.784126, 34.020622, 50.114349> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201052, -0.166456, 0.965335,
		-0.499320, -0.865238, -0.045201,
		0.842768, -0.472923, -0.257072,
		41.036957, 33.878746, 50.037228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.464859, 33.526447, 50.460773>,  <40.447018, 34.209789, 50.217178>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.464859, 33.526447, 50.460773> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.836349, 33.671543, 50.430073>,  <41.059242, 33.758598, 50.411652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.836349, 33.671543, 50.430073>,  <40.464859, 33.526447, 50.460773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.836349, 33.671543, 50.430073> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151546, -0.182463, 0.971463,
		0.338382, -0.913854, -0.224430,
		0.928726, 0.362737, -0.076749,
		41.114967, 33.780365, 50.407047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.843098, 33.038422, 50.885273>,  <40.464859, 33.526447, 50.460773>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.843098, 33.038422, 50.885273> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.068005, 33.366215, 50.840885>,  <41.202950, 33.562889, 50.814255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.068005, 33.366215, 50.840885>,  <40.843098, 33.038422, 50.885273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.068005, 33.366215, 50.840885> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213131, -0.013949, 0.976924,
		0.799022, -0.572938, -0.182499,
		0.562263, 0.819480, -0.110965,
		41.236683, 33.612061, 50.807594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.422207, 32.865295, 51.383751>,  <40.843098, 33.038422, 50.885273>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.422207, 32.865295, 51.383751> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.418816, 33.256527, 51.300518>,  <41.416782, 33.491264, 51.250576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.418816, 33.256527, 51.300518>,  <41.422207, 32.865295, 51.383751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.418816, 33.256527, 51.300518> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275647, 0.202315, 0.939727,
		0.961222, -0.049393, -0.271318,
		-0.008476, 0.978074, -0.208084,
		41.416271, 33.549950, 51.238094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.087296, 33.097660, 51.510910>,  <41.422207, 32.865295, 51.383751>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.087296, 33.097660, 51.510910> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.885578, 33.441536, 51.543446>,  <41.764549, 33.647861, 51.562965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.885578, 33.441536, 51.543446>,  <42.087296, 33.097660, 51.510910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.885578, 33.441536, 51.543446> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338182, 0.109951, 0.934635,
		0.794557, 0.498837, -0.346181,
		-0.504293, 0.859693, 0.081335,
		41.734291, 33.699444, 51.567844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.547874, 33.620007, 51.830715>,  <42.087296, 33.097660, 51.510910>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.547874, 33.620007, 51.830715> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.169971, 33.722492, 51.912476>,  <41.943230, 33.783985, 51.961533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.169971, 33.722492, 51.912476>,  <42.547874, 33.620007, 51.830715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.169971, 33.722492, 51.912476> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249302, 0.156877, 0.955635,
		0.212782, 0.953805, -0.212086,
		-0.944760, 0.256216, 0.204405,
		41.886543, 33.799358, 51.973797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.612247, 34.109161, 52.405060>,  <42.547874, 33.620007, 51.830715>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.612247, 34.109161, 52.405060> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.227890, 33.998402, 52.406487>,  <41.997276, 33.931946, 52.407345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.227890, 33.998402, 52.406487>,  <42.612247, 34.109161, 52.405060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.227890, 33.998402, 52.406487> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026192, -0.078045, 0.996606,
		-0.275679, 0.957725, 0.082245,
		-0.960893, -0.276898, 0.003569,
		41.939621, 33.915333, 52.407558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.261414, 34.577084, 52.863338>,  <42.612247, 34.109161, 52.405060>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.261414, 34.577084, 52.863338> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.058765, 34.232830, 52.842785>,  <41.937176, 34.026276, 52.830452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.058765, 34.232830, 52.842785>,  <42.261414, 34.577084, 52.863338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.058765, 34.232830, 52.842785> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152197, -0.147937, 0.977216,
		-0.848629, 0.487257, 0.205934,
		-0.506621, -0.860636, -0.051385,
		41.906780, 33.974640, 52.827370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.864910, 34.514713, 53.475437>,  <42.261414, 34.577084, 52.863338>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.864910, 34.514713, 53.475437> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.945850, 34.144089, 53.348606>,  <41.994415, 33.921715, 53.272507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.945850, 34.144089, 53.348606>,  <41.864910, 34.514713, 53.475437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.945850, 34.144089, 53.348606> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300425, -0.249435, 0.920613,
		-0.932094, -0.281547, 0.227888,
		0.202353, -0.926560, -0.317080,
		42.006557, 33.866119, 53.253483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.500164, 35.051746, 53.953480>,  <41.864910, 34.514713, 53.475437>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.500164, 35.051746, 53.953480> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.251781, 34.987457, 53.646603>,  <41.102753, 34.948883, 53.462475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.251781, 34.987457, 53.646603>,  <41.500164, 35.051746, 53.953480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.251781, 34.987457, 53.646603> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552474, -0.604572, 0.573817,
		-0.556047, 0.780168, 0.286617,
		-0.620954, -0.160721, -0.767193,
		41.065495, 34.939240, 53.416447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.235462, 35.716862, 54.093227>,  <41.500164, 35.051746, 53.953480>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.235462, 35.716862, 54.093227> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.922531, 35.964249, 54.063652>,  <40.734772, 36.112679, 54.045906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.922531, 35.964249, 54.063652>,  <41.235462, 35.716862, 54.093227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.922531, 35.964249, 54.063652> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074333, -0.210555, -0.974752,
		-0.618416, -0.757080, 0.210695,
		-0.782328, 0.618463, -0.073935,
		40.687832, 36.149788, 54.041473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.803322, 35.499294, 53.524986>,  <41.235462, 35.716862, 54.093227>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.803322, 35.499294, 53.524986> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.668934, 35.870399, 53.589966>,  <40.588303, 36.093063, 53.628952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.668934, 35.870399, 53.589966>,  <40.803322, 35.499294, 53.524986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.668934, 35.870399, 53.589966> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399327, 0.015900, -0.916671,
		-0.853032, -0.372841, 0.365137,
		-0.335967, 0.927759, 0.162449,
		40.568142, 36.148727, 53.638702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.969955, 35.485363, 53.465782>,  <40.803322, 35.499294, 53.524986>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.969955, 35.485363, 53.465782> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.124043, 35.848537, 53.399738>,  <40.216496, 36.066441, 53.360111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.124043, 35.848537, 53.399738>,  <39.969955, 35.485363, 53.465782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.124043, 35.848537, 53.399738> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407343, 0.006753, -0.913250,
		-0.828058, 0.419054, 0.372443,
		0.385216, 0.907936, -0.165106,
		40.239609, 36.120918, 53.350208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.481361, 35.830585, 53.008953>,  <39.969955, 35.485363, 53.465782>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.481361, 35.830585, 53.008953> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.812096, 36.047729, 52.950089>,  <40.010536, 36.178017, 52.914772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.812096, 36.047729, 52.950089>,  <39.481361, 35.830585, 53.008953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.812096, 36.047729, 52.950089> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268288, 0.150705, -0.951477,
		-0.494337, 0.826194, 0.270249,
		0.826833, 0.542855, -0.147159,
		40.060146, 36.210587, 52.905941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.309254, 36.505428, 52.818630>,  <39.481361, 35.830585, 53.008953>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.309254, 36.505428, 52.818630> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.664753, 36.456043, 52.642048>,  <39.878052, 36.426414, 52.536098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.664753, 36.456043, 52.642048>,  <39.309254, 36.505428, 52.818630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.664753, 36.456043, 52.642048> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395338, 0.280997, -0.874499,
		0.232013, 0.951734, 0.200928,
		0.888751, -0.123460, -0.441451,
		39.931377, 36.419006, 52.509613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.204105, 36.908176, 52.224792>,  <39.309254, 36.505428, 52.818630>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.204105, 36.908176, 52.224792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.559284, 36.748959, 52.132607>,  <39.772392, 36.653427, 52.077293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.559284, 36.748959, 52.132607>,  <39.204105, 36.908176, 52.224792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.559284, 36.748959, 52.132607> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169501, 0.182616, -0.968463,
		0.427581, 0.899005, 0.094683,
		0.887944, -0.398048, -0.230465,
		39.825668, 36.629543, 52.063469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.542377, 37.358875, 51.753529>,  <39.204105, 36.908176, 52.224792>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.542377, 37.358875, 51.753529> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.681816, 36.986237, 51.712349>,  <39.765480, 36.762653, 51.687641>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.681816, 36.986237, 51.712349>,  <39.542377, 37.358875, 51.753529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.681816, 36.986237, 51.712349> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252460, 0.012455, -0.967527,
		0.902631, 0.363271, -0.230850,
		0.348599, -0.931600, -0.102954,
		39.786396, 36.706757, 51.681461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.026081, 37.485512, 51.278671>,  <39.542377, 37.358875, 51.753529>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.026081, 37.485512, 51.278671> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.970860, 37.089977, 51.256222>,  <39.937725, 36.852657, 51.242752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.970860, 37.089977, 51.256222>,  <40.026081, 37.485512, 51.278671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.970860, 37.089977, 51.256222> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131258, 0.074433, -0.988550,
		0.981688, -0.129107, -0.140068,
		-0.138055, -0.988833, -0.056124,
		39.929443, 36.793327, 51.239384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.566589, 37.193077, 50.726528>,  <40.026081, 37.485512, 51.278671>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.566589, 37.193077, 50.726528> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.263836, 36.934608, 50.765701>,  <40.082184, 36.779526, 50.789204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.263836, 36.934608, 50.765701>,  <40.566589, 37.193077, 50.726528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.263836, 36.934608, 50.765701> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120507, -0.009289, -0.992669,
		0.642346, -0.763134, -0.070838,
		-0.756881, -0.646174, 0.097930,
		40.036770, 36.740757, 50.795082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.618046, 36.781456, 50.228073>,  <40.566589, 37.193077, 50.726528>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.618046, 36.781456, 50.228073> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.241539, 36.680252, 50.317520>,  <40.015636, 36.619530, 50.371189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.241539, 36.680252, 50.317520>,  <40.618046, 36.781456, 50.228073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.241539, 36.680252, 50.317520> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183212, -0.173603, -0.967624,
		0.283643, -0.951759, 0.117051,
		-0.941265, -0.253015, 0.223615,
		39.959160, 36.604347, 50.384605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.499104, 36.045204, 49.928261>,  <40.618046, 36.781456, 50.228073>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.499104, 36.045204, 49.928261> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.155041, 36.243996, 49.974125>,  <39.948605, 36.363270, 50.001644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.155041, 36.243996, 49.974125>,  <40.499104, 36.045204, 49.928261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.155041, 36.243996, 49.974125> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322817, -0.356429, -0.876783,
		-0.394877, -0.791180, 0.467018,
		-0.860152, 0.496983, 0.114660,
		39.896996, 36.393089, 50.008526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.982376, 35.502895, 49.798363>,  <40.499104, 36.045204, 49.928261>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.982376, 35.502895, 49.798363> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.797974, 35.853828, 49.745056>,  <39.687332, 36.064388, 49.713074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.797974, 35.853828, 49.745056>,  <39.982376, 35.502895, 49.798363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.797974, 35.853828, 49.745056> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204484, -0.251163, -0.946099,
		-0.863515, -0.408909, 0.295188,
		-0.461008, 0.877332, -0.133268,
		39.659672, 36.117027, 49.705074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.336510, 35.390469, 49.374611>,  <39.982376, 35.502895, 49.798363>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.336510, 35.390469, 49.374611> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.396076, 35.785229, 49.349781>,  <39.431816, 36.022083, 49.334885>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.396076, 35.785229, 49.349781>,  <39.336510, 35.390469, 49.374611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.396076, 35.785229, 49.349781> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362685, -0.003887, -0.931904,
		-0.919938, 0.161283, 0.357355,
		0.148912, 0.986901, -0.062071,
		39.440750, 36.081299, 49.331161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690716, 35.663746, 49.105297>,  <39.336510, 35.390469, 49.374611>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.690716, 35.663746, 49.105297> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.996521, 35.909332, 49.026741>,  <39.180004, 36.056683, 48.979607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.996521, 35.909332, 49.026741>,  <38.690716, 35.663746, 49.105297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.996521, 35.909332, 49.026741> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302634, 0.072863, -0.950318,
		-0.569151, 0.785964, 0.241511,
		0.764513, 0.613964, -0.196389,
		39.225876, 36.093521, 48.967823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198025, 36.172077, 48.903881>,  <38.690716, 35.663746, 49.105297>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198025, 36.172077, 48.903881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.821640, 36.059265, 48.978760>,  <37.595810, 35.991577, 49.023689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.821640, 36.059265, 48.978760>,  <38.198025, 36.172077, 48.903881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.821640, 36.059265, 48.978760> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222610, -0.098950, 0.969873,
		-0.255010, 0.954289, 0.155891,
		-0.940965, -0.282030, 0.187201,
		37.539352, 35.974655, 49.034920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.082279, 36.486698, 49.495182>,  <38.198025, 36.172077, 48.903881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.082279, 36.486698, 49.495182> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.789803, 36.214218, 49.480572>,  <37.614319, 36.050732, 49.471806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.789803, 36.214218, 49.480572>,  <38.082279, 36.486698, 49.495182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.789803, 36.214218, 49.480572> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043803, -0.100317, 0.993991,
		-0.680768, 0.725195, 0.103189,
		-0.731189, -0.681197, -0.036527,
		37.570446, 36.009861, 49.469612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.581978, 36.692852, 50.061756>,  <38.082279, 36.486698, 49.495182>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.581978, 36.692852, 50.061756> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.505886, 36.309086, 49.978481>,  <37.460232, 36.078827, 49.928516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.505886, 36.309086, 49.978481>,  <37.581978, 36.692852, 50.061756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.505886, 36.309086, 49.978481> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014747, -0.209248, 0.977752,
		-0.981629, 0.189067, 0.025656,
		-0.190229, -0.959411, -0.208192,
		37.448818, 36.021263, 49.916023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.107155, 36.516613, 50.508881>,  <37.581978, 36.692852, 50.061756>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.107155, 36.516613, 50.508881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.205990, 36.147751, 50.389835>,  <37.265289, 35.926434, 50.318405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.205990, 36.147751, 50.389835>,  <37.107155, 36.516613, 50.508881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.205990, 36.147751, 50.389835> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051413, -0.319184, 0.946297,
		-0.967629, -0.218512, -0.126276,
		0.247083, -0.922157, -0.297618,
		37.280113, 35.871105, 50.300549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.595798, 36.111916, 50.782211>,  <37.107155, 36.516613, 50.508881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.595798, 36.111916, 50.782211> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.936729, 35.908169, 50.734756>,  <37.141289, 35.785919, 50.706284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.936729, 35.908169, 50.734756>,  <36.595798, 36.111916, 50.782211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.936729, 35.908169, 50.734756> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033302, -0.279235, 0.959645,
		-0.521944, -0.813983, -0.254963,
		0.852330, -0.509372, -0.118638,
		37.192429, 35.755356, 50.699165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.438686, 35.494747, 51.098145>,  <36.595798, 36.111916, 50.782211>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.438686, 35.494747, 51.098145> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.837910, 35.496841, 51.073345>,  <37.077446, 35.498096, 51.058464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.837910, 35.496841, 51.073345>,  <36.438686, 35.494747, 51.098145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.837910, 35.496841, 51.073345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061192, -0.263151, 0.962812,
		-0.011274, -0.964741, -0.262962,
		0.998063, 0.005236, -0.062001,
		37.137329, 35.498413, 51.054745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.729259, 34.785988, 51.310497>,  <36.438686, 35.494747, 51.098145>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.729259, 34.785988, 51.310497> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.023422, 35.051422, 51.365379>,  <37.199921, 35.210682, 51.398308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.023422, 35.051422, 51.365379>,  <36.729259, 34.785988, 51.310497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.023422, 35.051422, 51.365379> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202501, -0.408453, 0.890033,
		0.646656, -0.626755, -0.434758,
		0.735411, 0.663584, 0.137210,
		37.244045, 35.250496, 51.406544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.565140, 34.076893, 51.136627>,  <36.729259, 34.785988, 51.310497>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.565140, 34.076893, 51.136627> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.328278, 33.782021, 51.266808>,  <36.186161, 33.605099, 51.344917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.328278, 33.782021, 51.266808>,  <36.565140, 34.076893, 51.136627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.328278, 33.782021, 51.266808> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300799, -0.172475, -0.937962,
		0.747580, -0.653312, -0.119612,
		-0.592152, -0.737181, 0.325455,
		36.150631, 33.560867, 51.364445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.772877, 33.443157, 50.763363>,  <36.565140, 34.076893, 51.136627>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.772877, 33.443157, 50.763363> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.404202, 33.375984, 50.903244>,  <36.182995, 33.335682, 50.987171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.404202, 33.375984, 50.903244>,  <36.772877, 33.443157, 50.763363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.404202, 33.375984, 50.903244> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313226, -0.209671, -0.926244,
		0.228866, -0.963243, 0.140651,
		-0.921688, -0.167930, 0.349699,
		36.127693, 33.325607, 51.008152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.514194, 32.740189, 50.569210>,  <36.772877, 33.443157, 50.763363>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.514194, 32.740189, 50.569210> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.200718, 32.981087, 50.630024>,  <36.012630, 33.125626, 50.666512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.200718, 32.981087, 50.630024>,  <36.514194, 32.740189, 50.569210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.200718, 32.981087, 50.630024> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335842, -0.204934, -0.919354,
		-0.522524, -0.771555, 0.362867,
		-0.783696, 0.602251, 0.152038,
		35.965611, 33.161762, 50.675636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.988350, 32.462151, 50.084118>,  <36.514194, 32.740189, 50.569210>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.988350, 32.462151, 50.084118> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.832699, 32.814384, 50.192295>,  <35.739307, 33.025726, 50.257202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.832699, 32.814384, 50.192295>,  <35.988350, 32.462151, 50.084118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.832699, 32.814384, 50.192295> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398594, 0.103721, -0.911243,
		-0.830482, -0.462391, 0.310637,
		-0.389131, 0.880589, 0.270445,
		35.715961, 33.078560, 50.273430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.379742, 32.391281, 49.863930>,  <35.988350, 32.462151, 50.084118>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.379742, 32.391281, 49.863930> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.415905, 32.788746, 49.890648>,  <35.437603, 33.027225, 49.906677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.415905, 32.788746, 49.890648>,  <35.379742, 32.391281, 49.863930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.415905, 32.788746, 49.890648> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411114, 0.098320, -0.906266,
		-0.907090, 0.054472, 0.417397,
		0.090405, 0.993663, 0.066791,
		35.443027, 33.086845, 49.910686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.732964, 32.636570, 49.598934>,  <35.379742, 32.391281, 49.863930>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.732964, 32.636570, 49.598934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.996300, 32.936565, 49.573330>,  <35.154301, 33.116562, 49.557968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.996300, 32.936565, 49.573330>,  <34.732964, 32.636570, 49.598934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.996300, 32.936565, 49.573330> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307566, 0.190419, -0.932279,
		-0.687012, 0.633447, 0.356033,
		0.658344, 0.749990, -0.064007,
		35.193802, 33.161564, 49.554127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.371471, 33.273327, 49.299232>,  <34.732964, 32.636570, 49.598934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.371471, 33.273327, 49.299232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.766655, 33.314247, 49.252800>,  <35.003765, 33.338799, 49.224941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.766655, 33.314247, 49.252800>,  <34.371471, 33.273327, 49.299232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.766655, 33.314247, 49.252800> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116267, -0.004196, -0.993209,
		-0.102091, 0.994745, 0.007748,
		0.987957, 0.102299, -0.116084,
		35.063042, 33.344936, 49.217976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<40.314289, 32.352135, 53.831665> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.352261, 32.571518, 53.499355>,  <40.375042, 32.703148, 53.299969>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.352261, 32.571518, 53.499355>,  <40.314289, 32.352135, 53.831665>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.352261, 32.571518, 53.499355> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097281, -0.835658, -0.540568,
		-0.990720, -0.029503, -0.132682,
		0.094928, 0.548458, -0.830772,
		40.380737, 32.736053, 53.250122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.426090, 31.685577, 53.448647>,  <40.314289, 32.352135, 53.831665>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.426090, 31.685577, 53.448647> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.756756, 31.807947, 53.259739>,  <40.955154, 31.881369, 53.146397>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.756756, 31.807947, 53.259739>,  <40.426090, 31.685577, 53.448647>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.756756, 31.807947, 53.259739> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397357, -0.276875, -0.874899,
		-0.398412, 0.910906, -0.107321,
		0.826665, 0.305926, -0.472265,
		41.004757, 31.899725, 53.118061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.240971, 32.178341, 52.833950>,  <40.426090, 31.685577, 53.448647>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.240971, 32.178341, 52.833950> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.596447, 32.002506, 52.781815>,  <40.809734, 31.897005, 52.750534>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.596447, 32.002506, 52.781815>,  <40.240971, 32.178341, 52.833950>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.596447, 32.002506, 52.781815> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230812, -0.183287, -0.955579,
		0.396172, 0.879300, -0.264348,
		0.888692, -0.439588, -0.130340,
		40.863056, 31.870630, 52.742714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.480488, 32.454479, 52.223667>,  <40.240971, 32.178341, 52.833950>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.480488, 32.454479, 52.223667> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.676907, 32.109196, 52.270554>,  <40.794758, 31.902025, 52.298683>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.676907, 32.109196, 52.270554>,  <40.480488, 32.454479, 52.223667>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.676907, 32.109196, 52.270554> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135684, -0.208696, -0.968522,
		0.860502, 0.459685, -0.219603,
		0.491045, -0.863212, 0.117212,
		40.824219, 31.850231, 52.305717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.047256, 32.377766, 51.828976>,  <40.480488, 32.454479, 52.223667>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.047256, 32.377766, 51.828976> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.900700, 32.011909, 51.897320>,  <40.812767, 31.792397, 51.938328>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.900700, 32.011909, 51.897320>,  <41.047256, 32.377766, 51.828976>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.900700, 32.011909, 51.897320> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064781, -0.158110, -0.985294,
		0.928203, -0.372072, -0.001321,
		-0.366391, -0.914639, 0.170862,
		40.790783, 31.737518, 51.948578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.252365, 32.057011, 51.131630>,  <41.047256, 32.377766, 51.828976>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.252365, 32.057011, 51.131630> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.040169, 31.767687, 51.308449>,  <40.912853, 31.594093, 51.414539>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.040169, 31.767687, 51.308449>,  <41.252365, 32.057011, 51.131630>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.040169, 31.767687, 51.308449> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262210, -0.355887, -0.896989,
		0.806120, -0.591752, -0.000865,
		-0.530487, -0.723308, 0.442051,
		40.881023, 31.550695, 51.441063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.356533, 31.536137, 50.622360>,  <41.252365, 32.057011, 51.131630>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.356533, 31.536137, 50.622360> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.055393, 31.384893, 50.837856>,  <40.874710, 31.294147, 50.967155>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.055393, 31.384893, 50.837856>,  <41.356533, 31.536137, 50.622360>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.055393, 31.384893, 50.837856> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353052, -0.458820, -0.815376,
		0.555486, -0.804064, 0.211933,
		-0.752854, -0.378107, 0.538745,
		40.829536, 31.271461, 50.999481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.350681, 30.850414, 50.551437>,  <41.356533, 31.536137, 50.622360>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.350681, 30.850414, 50.551437> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.974537, 30.932484, 50.659969>,  <40.748848, 30.981726, 50.725086>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.974537, 30.932484, 50.659969>,  <41.350681, 30.850414, 50.551437>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.974537, 30.932484, 50.659969> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326888, -0.324344, -0.887663,
		-0.094118, -0.923421, 0.372069,
		-0.940365, 0.205170, 0.271329,
		40.692429, 30.994036, 50.741367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.937000, 30.264530, 50.427013>,  <41.350681, 30.850414, 50.551437>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.937000, 30.264530, 50.427013> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.690529, 30.579239, 50.441483>,  <40.542645, 30.768064, 50.450165>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.690529, 30.579239, 50.441483>,  <40.937000, 30.264530, 50.427013>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.690529, 30.579239, 50.441483> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381991, -0.258371, -0.887314,
		-0.688769, -0.560564, 0.459744,
		-0.616182, 0.786774, 0.036173,
		40.505676, 30.815271, 50.452335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.346798, 30.053642, 50.193314>,  <40.937000, 30.264530, 50.427013>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.346798, 30.053642, 50.193314> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.304951, 30.443857, 50.115978>,  <40.279842, 30.677986, 50.069576>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.304951, 30.443857, 50.115978>,  <40.346798, 30.053642, 50.193314>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.304951, 30.443857, 50.115978> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512831, -0.219484, -0.829958,
		-0.852091, 0.012321, 0.523248,
		-0.104618, 0.975538, -0.193339,
		40.273563, 30.736519, 50.057976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.652885, 30.059067, 50.006149>,  <40.346798, 30.053642, 50.193314>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.652885, 30.059067, 50.006149> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.825821, 30.400042, 49.888550>,  <39.929585, 30.604626, 49.817989>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.825821, 30.400042, 49.888550>,  <39.652885, 30.059067, 50.006149>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.825821, 30.400042, 49.888550> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509386, -0.038145, -0.859692,
		-0.744047, 0.521439, 0.417727,
		0.432343, 0.852436, -0.293995,
		39.955524, 30.655773, 49.800350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.108650, 30.410097, 49.683178>,  <39.652885, 30.059067, 50.006149>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.108650, 30.410097, 49.683178> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.455563, 30.544010, 49.535809>,  <39.663712, 30.624359, 49.447388>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.455563, 30.544010, 49.535809>,  <39.108650, 30.410097, 49.683178>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.455563, 30.544010, 49.535809> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280465, -0.282845, -0.917245,
		-0.411287, 0.898843, -0.151412,
		0.867285, 0.334785, -0.368424,
		39.715748, 30.644445, 49.425282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.390560, 30.480463, 49.532528>,  <39.108650, 30.410097, 49.683178>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.390560, 30.480463, 49.532528> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.007877, 30.371216, 49.492298>,  <37.778267, 30.305668, 49.468159>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.007877, 30.371216, 49.492298>,  <38.390560, 30.480463, 49.532528>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.007877, 30.371216, 49.492298> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104540, -0.000039, 0.994521,
		-0.271626, 0.961981, -0.028514,
		-0.956708, -0.273118, -0.100576,
		37.720863, 30.289280, 49.462124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.064751, 30.999203, 49.892551>,  <38.390560, 30.480463, 49.532528>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.064751, 30.999203, 49.892551> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.817608, 30.686396, 49.859787>,  <37.669323, 30.498713, 49.840130>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.817608, 30.686396, 49.859787>,  <38.064751, 30.999203, 49.892551>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.817608, 30.686396, 49.859787> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293271, 0.132539, 0.946797,
		-0.729555, 0.609002, -0.311233,
		-0.617852, -0.782016, -0.081908,
		37.632252, 30.451790, 49.835213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.600021, 31.192574, 50.257252>,  <38.064751, 30.999203, 49.892551>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.600021, 31.192574, 50.257252> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.564499, 30.794346, 50.244919>,  <37.543186, 30.555408, 50.237518>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.564499, 30.794346, 50.244919>,  <37.600021, 31.192574, 50.257252>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.564499, 30.794346, 50.244919> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184320, -0.013995, 0.982767,
		-0.978846, 0.092963, -0.182261,
		-0.088810, -0.995571, -0.030834,
		37.537857, 30.495674, 50.235668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.046825, 30.993141, 50.608959>,  <37.600021, 31.192574, 50.257252>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.046825, 30.993141, 50.608959> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.264011, 30.657246, 50.610733>,  <37.394325, 30.455708, 50.611797>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.264011, 30.657246, 50.610733>,  <37.046825, 30.993141, 50.608959>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.264011, 30.657246, 50.610733> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161621, -0.099322, 0.981842,
		-0.824053, -0.533826, -0.189649,
		0.542969, -0.839741, 0.004431,
		37.426903, 30.405323, 50.612061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.696384, 30.330656, 50.882912>,  <37.046825, 30.993141, 50.608959>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.696384, 30.330656, 50.882912> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.088364, 30.258951, 50.917709>,  <37.323551, 30.215929, 50.938587>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.088364, 30.258951, 50.917709>,  <36.696384, 30.330656, 50.882912>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.088364, 30.258951, 50.917709> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128480, -0.234747, 0.963528,
		-0.152301, -0.955385, -0.253071,
		0.979948, -0.179261, 0.086995,
		37.382347, 30.205173, 50.943810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.749886, 29.679626, 51.257267>,  <36.696384, 30.330656, 50.882912>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.749886, 29.679626, 51.257267> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.101574, 29.860027, 51.318665>,  <37.312588, 29.968267, 51.355503>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.101574, 29.860027, 51.318665>,  <36.749886, 29.679626, 51.257267>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.101574, 29.860027, 51.318665> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096744, -0.146445, 0.984477,
		0.466480, -0.880426, -0.085126,
		0.879225, 0.451003, 0.153489,
		37.365341, 29.995329, 51.364712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.945454, 29.313456, 51.767338>,  <36.749886, 29.679626, 51.257267>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.945454, 29.313456, 51.767338> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.234352, 29.589760, 51.753399>,  <37.407692, 29.755543, 51.745037>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.234352, 29.589760, 51.753399>,  <36.945454, 29.313456, 51.767338>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.234352, 29.589760, 51.753399> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139226, -0.095849, 0.985611,
		0.677480, -0.716704, -0.165398,
		0.722245, 0.690759, -0.034848,
		37.451027, 29.796988, 51.742943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.472542, 29.024530, 52.203594>,  <36.945454, 29.313456, 51.767338>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.472542, 29.024530, 52.203594> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.509941, 29.422602, 52.191742>,  <37.532379, 29.661444, 52.184631>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.509941, 29.422602, 52.191742>,  <37.472542, 29.024530, 52.203594>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.509941, 29.422602, 52.191742> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289877, 0.001259, 0.957063,
		0.952486, -0.098070, -0.288362,
		0.093496, 0.995179, -0.029627,
		37.537991, 29.721155, 52.182854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072945, 29.226734, 52.582420>,  <37.472542, 29.024530, 52.203594>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.072945, 29.226734, 52.582420> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.940239, 29.603384, 52.559536>,  <37.860615, 29.829374, 52.545803>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.940239, 29.603384, 52.559536>,  <38.072945, 29.226734, 52.582420>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.940239, 29.603384, 52.559536> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459479, 0.214262, 0.861958,
		0.823900, 0.259680, -0.503742,
		-0.331766, 0.941625, -0.057213,
		37.840710, 29.885872, 52.542374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.682770, 29.554193, 52.773121>,  <38.072945, 29.226734, 52.582420>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.682770, 29.554193, 52.773121> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.377224, 29.798805, 52.855629>,  <38.193897, 29.945572, 52.905136>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.377224, 29.798805, 52.855629>,  <38.682770, 29.554193, 52.773121>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.377224, 29.798805, 52.855629> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450101, 0.275735, 0.849341,
		0.462518, 0.741623, -0.485872,
		-0.763863, 0.611527, 0.206272,
		38.148064, 29.982264, 52.917511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.894104, 30.302235, 52.885048>,  <38.682770, 29.554193, 52.773121>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.894104, 30.302235, 52.885048> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.555222, 30.228046, 53.084183>,  <38.351891, 30.183535, 53.203663>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.555222, 30.228046, 53.084183>,  <38.894104, 30.302235, 52.885048>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.555222, 30.228046, 53.084183> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433629, 0.299964, 0.849699,
		-0.306925, 0.935747, -0.173707,
		-0.847209, -0.185469, 0.497833,
		38.301060, 30.172405, 53.233532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.851768, 30.910830, 53.302750>,  <38.894104, 30.302235, 52.885048>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.851768, 30.910830, 53.302750> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.579830, 30.660524, 53.455711>,  <38.416668, 30.510342, 53.547489>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.579830, 30.660524, 53.455711>,  <38.851768, 30.910830, 53.302750>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.579830, 30.660524, 53.455711> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155919, 0.386187, 0.909148,
		-0.716590, 0.677702, -0.164979,
		-0.679844, -0.625763, 0.382404,
		38.375877, 30.472795, 53.570431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.439819, 31.319788, 53.734734>,  <38.851768, 30.910830, 53.302750>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.439819, 31.319788, 53.734734> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.397144, 30.940781, 53.855282>,  <38.371540, 30.713375, 53.927612>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.397144, 30.940781, 53.855282>,  <38.439819, 31.319788, 53.734734>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.397144, 30.940781, 53.855282> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011752, 0.301877, 0.953274,
		-0.994223, 0.105244, -0.021071,
		-0.106687, -0.947520, 0.301370,
		38.365139, 30.656525, 53.945694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.315750, 31.995104, 53.583801>,  <38.439819, 31.319788, 53.734734>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.315750, 31.995104, 53.583801> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.670731, 31.944082, 53.406639>,  <38.883717, 31.913469, 53.300343>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.670731, 31.944082, 53.406639>,  <38.315750, 31.995104, 53.583801>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.670731, 31.944082, 53.406639> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310931, -0.543670, 0.779580,
		-0.340233, -0.829550, -0.442818,
		0.887448, -0.127553, -0.442907,
		38.936966, 31.905815, 53.273766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.630772, 32.082092, 53.807339>,  <38.315750, 31.995104, 53.583801>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.630772, 32.082092, 53.807339> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.562969, 32.468391, 53.728752>,  <37.522289, 32.700172, 53.681599>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.562969, 32.468391, 53.728752>,  <37.630772, 32.082092, 53.807339>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.562969, 32.468391, 53.728752> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633419, -0.259479, -0.729007,
		-0.755016, 0.000877, 0.655705,
		-0.169503, 0.965748, -0.196466,
		37.512119, 32.758118, 53.669811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.910923, 32.168758, 53.546162>,  <37.630772, 32.082092, 53.807339>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.910923, 32.168758, 53.546162> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.085106, 32.519421, 53.464325>,  <37.189617, 32.729816, 53.415222>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.085106, 32.519421, 53.464325>,  <36.910923, 32.168758, 53.546162>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.085106, 32.519421, 53.464325> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696475, 0.184093, -0.693565,
		-0.570351, 0.444512, 0.690731,
		0.435457, 0.876652, -0.204594,
		37.215744, 32.782417, 53.402946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.331131, 32.612381, 53.511513>,  <36.910923, 32.168758, 53.546162>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.331131, 32.612381, 53.511513> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.638229, 32.766613, 53.306808>,  <36.822487, 32.859154, 53.183987>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.638229, 32.766613, 53.306808>,  <36.331131, 32.612381, 53.511513>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.638229, 32.766613, 53.306808> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629743, 0.306592, -0.713740,
		-0.118304, 0.870246, 0.478202,
		0.767742, 0.385582, -0.511760,
		36.868553, 32.882286, 53.153282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.901375, 33.008846, 53.049072>,  <36.331131, 32.612381, 53.511513>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.901375, 33.008846, 53.049072> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.277454, 33.080307, 52.933067>,  <36.503101, 33.123184, 52.863464>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.277454, 33.080307, 52.933067>,  <35.901375, 33.008846, 53.049072>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.277454, 33.080307, 52.933067> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340275, 0.531133, -0.775958,
		0.015408, 0.828239, 0.560162,
		0.940200, 0.178653, -0.290013,
		36.559513, 33.133904, 52.846062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.110081, 33.740181, 53.052834>,  <35.901375, 33.008846, 53.049072>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.110081, 33.740181, 53.052834> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.302589, 33.526623, 52.774746>,  <36.418095, 33.398487, 52.607895>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.302589, 33.526623, 52.774746>,  <36.110081, 33.740181, 53.052834>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.302589, 33.526623, 52.774746> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417261, 0.557959, -0.717339,
		0.770889, 0.635324, 0.045756,
		0.481272, -0.533897, -0.695220,
		36.446972, 33.366455, 52.566181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.130878, 34.171841, 52.516788>,  <36.110081, 33.740181, 53.052834>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.130878, 34.171841, 52.516788> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.229237, 33.821808, 52.350052>,  <36.288250, 33.611786, 52.250008>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.229237, 33.821808, 52.350052>,  <36.130878, 34.171841, 52.516788>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.229237, 33.821808, 52.350052> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434966, 0.284699, -0.854255,
		0.866222, 0.391372, -0.310626,
		0.245896, -0.875085, -0.416846,
		36.303005, 33.559280, 52.224998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.483421, 34.311253, 51.814140>,  <36.130878, 34.171841, 52.516788>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.483421, 34.311253, 51.814140> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.349346, 33.934391, 51.813828>,  <36.268902, 33.708275, 51.813641>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.349346, 33.934391, 51.813828>,  <36.483421, 34.311253, 51.814140>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.349346, 33.934391, 51.813828> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332764, 0.119166, -0.935450,
		0.881430, -0.313287, -0.353457,
		-0.335185, -0.942152, -0.000786,
		36.248791, 33.651745, 51.813591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.223976, 34.382874, 51.621922>,  <36.483421, 34.311253, 51.814140>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.223976, 34.382874, 51.621922> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.262699, 34.769485, 51.716953>,  <37.285934, 35.001453, 51.773972>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.262699, 34.769485, 51.716953>,  <37.223976, 34.382874, 51.621922>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.262699, 34.769485, 51.716953> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194427, -0.252464, 0.947872,
		0.976128, -0.045570, -0.212360,
		0.096808, 0.966533, 0.237577,
		37.291740, 35.059444, 51.788227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695599, 34.272518, 52.137997>,  <37.223976, 34.382874, 51.621922>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.695599, 34.272518, 52.137997> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.599915, 34.657055, 52.192539>,  <37.542503, 34.887779, 52.225266>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.599915, 34.657055, 52.192539>,  <37.695599, 34.272518, 52.137997>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.599915, 34.657055, 52.192539> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253037, -0.073856, 0.964633,
		0.937417, 0.265254, -0.225588,
		-0.239212, 0.961346, 0.136353,
		37.528152, 34.945457, 52.233444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.230762, 34.640308, 52.434879>,  <37.695599, 34.272518, 52.137997>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.230762, 34.640308, 52.434879> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.938843, 34.894695, 52.535236>,  <37.763691, 35.047325, 52.595451>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.938843, 34.894695, 52.535236>,  <38.230762, 34.640308, 52.434879>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.938843, 34.894695, 52.535236> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346165, 0.027285, 0.937777,
		0.589547, 0.771237, -0.240061,
		-0.729798, 0.635964, 0.250889,
		37.719902, 35.085484, 52.610504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.556919, 35.351383, 52.693256>,  <38.230762, 34.640308, 52.434879>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.556919, 35.351383, 52.693256> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.186157, 35.347717, 52.843327>,  <37.963699, 35.345516, 52.933369>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.186157, 35.347717, 52.843327>,  <38.556919, 35.351383, 52.693256>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.186157, 35.347717, 52.843327> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341724, 0.392649, 0.853845,
		-0.155142, 0.919643, -0.360815,
		-0.926907, -0.009168, 0.375180,
		37.908085, 35.344967, 52.955879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.441113, 36.070950, 53.000683>,  <38.556919, 35.351383, 52.693256>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.441113, 36.070950, 53.000683> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.159775, 35.832420, 53.155449>,  <37.990971, 35.689304, 53.248310>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.159775, 35.832420, 53.155449>,  <38.441113, 36.070950, 53.000683>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.159775, 35.832420, 53.155449> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203278, 0.352842, 0.913335,
		-0.681162, 0.721042, -0.126950,
		-0.703346, -0.596323, 0.386914,
		37.948772, 35.653522, 53.271523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.068325, 36.526115, 53.410851>,  <38.441113, 36.070950, 53.000683>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.068325, 36.526115, 53.410851> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.984375, 36.155426, 53.535519>,  <37.934006, 35.933014, 53.610317>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.984375, 36.155426, 53.535519>,  <38.068325, 36.526115, 53.410851>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.984375, 36.155426, 53.535519> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129927, 0.289504, 0.948318,
		-0.969057, 0.239523, 0.059646,
		-0.209876, -0.926723, 0.311666,
		37.921413, 35.877411, 53.629017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.549595, 36.625053, 53.900898>,  <38.068325, 36.526115, 53.410851>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.549595, 36.625053, 53.900898> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.700954, 36.263073, 53.978745>,  <37.791771, 36.045883, 54.025452>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.700954, 36.263073, 53.978745>,  <37.549595, 36.625053, 53.900898>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.700954, 36.263073, 53.978745> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205378, 0.287093, 0.935627,
		-0.902570, -0.314072, 0.294493,
		0.378401, -0.904951, 0.194618,
		37.814476, 35.991589, 54.037128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313118, 36.370010, 54.589924>,  <37.549595, 36.625053, 53.900898>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.313118, 36.370010, 54.589924> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.656204, 36.172405, 54.532959>,  <37.862057, 36.053844, 54.498779>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.656204, 36.172405, 54.532959>,  <37.313118, 36.370010, 54.589924>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.656204, 36.172405, 54.532959> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328431, 0.313368, 0.891029,
		-0.395551, -0.811020, 0.431029,
		0.857713, -0.494011, -0.142411,
		37.913517, 36.024200, 54.490234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.430515, 35.900230, 55.265903>,  <37.313118, 36.370010, 54.589924>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.430515, 35.900230, 55.265903> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.762146, 36.000374, 55.065926>,  <37.961124, 36.060459, 54.945938>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.762146, 36.000374, 55.065926>,  <37.430515, 35.900230, 55.265903>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.762146, 36.000374, 55.065926> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457679, 0.209756, 0.864021,
		0.321180, -0.945158, 0.059322,
		0.829080, 0.250356, -0.499948,
		38.010872, 36.075481, 54.915939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.413448, 32.882526, 38.942799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.755798, 33.066177, 39.038036>,  <36.961208, 33.176369, 39.095177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.755798, 33.066177, 39.038036>,  <36.413448, 32.882526, 38.942799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.755798, 33.066177, 39.038036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395659, 0.284780, 0.873129,
		0.333068, -0.841491, 0.425391,
		0.855874, 0.459122, 0.238092,
		37.012562, 33.203915, 39.109463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.570869, 32.623863, 39.696053>,  <36.413448, 32.882526, 38.942799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.570869, 32.623863, 39.696053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.780235, 32.959583, 39.637253>,  <36.905857, 33.161015, 39.601971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.780235, 32.959583, 39.637253>,  <36.570869, 32.623863, 39.696053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.780235, 32.959583, 39.637253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341461, 0.364672, 0.866267,
		0.780665, -0.403224, 0.477464,
		0.523418, 0.839300, -0.147002,
		36.937260, 33.211372, 39.593151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.011200, 32.636406, 40.300129>,  <36.570869, 32.623863, 39.696053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.011200, 32.636406, 40.300129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.011131, 33.005978, 40.147106>,  <37.011089, 33.227722, 40.055294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.011131, 33.005978, 40.147106>,  <37.011200, 32.636406, 40.300129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.011131, 33.005978, 40.147106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164240, 0.377336, 0.911396,
		0.986420, 0.062986, 0.151683,
		-0.000170, 0.923932, -0.382557,
		37.011082, 33.283157, 40.032341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.511463, 32.966396, 40.682377>,  <37.011200, 32.636406, 40.300129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.511463, 32.966396, 40.682377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.263748, 33.245533, 40.538433>,  <37.115120, 33.413017, 40.452068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.263748, 33.245533, 40.538433>,  <37.511463, 32.966396, 40.682377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.263748, 33.245533, 40.538433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169443, 0.328743, 0.929095,
		0.766664, 0.636351, -0.085341,
		-0.619286, 0.697843, -0.359861,
		37.077961, 33.454887, 40.430473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.785721, 33.664597, 40.917068>,  <37.511463, 32.966396, 40.682377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.785721, 33.664597, 40.917068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.404572, 33.721813, 40.810062>,  <37.175880, 33.756142, 40.745857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.404572, 33.721813, 40.810062>,  <37.785721, 33.664597, 40.917068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.404572, 33.721813, 40.810062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148159, 0.550091, 0.821857,
		0.264716, 0.822764, -0.502977,
		-0.952877, 0.143038, -0.267518,
		37.118710, 33.764725, 40.729809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660732, 34.407970, 41.058308>,  <37.785721, 33.664597, 40.917068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.660732, 34.407970, 41.058308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.293873, 34.248878, 41.048130>,  <37.073757, 34.153423, 41.042023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.293873, 34.248878, 41.048130>,  <37.660732, 34.407970, 41.058308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.293873, 34.248878, 41.048130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283919, 0.607236, 0.742061,
		-0.279692, 0.687804, -0.669849,
		-0.917149, -0.397732, -0.025441,
		37.018726, 34.129559, 41.040497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.239140, 34.971462, 41.130795>,  <37.660732, 34.407970, 41.058308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.239140, 34.971462, 41.130795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.988762, 34.681877, 41.246773>,  <36.838535, 34.508125, 41.316360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.988762, 34.681877, 41.246773>,  <37.239140, 34.971462, 41.130795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.988762, 34.681877, 41.246773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375512, 0.605645, 0.701558,
		-0.683510, 0.330256, -0.650957,
		-0.625943, -0.723964, 0.289949,
		36.800980, 34.464687, 41.333759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611061, 35.277554, 41.188835>,  <37.239140, 34.971462, 41.130795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.611061, 35.277554, 41.188835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.584545, 34.944607, 41.408936>,  <36.568638, 34.744839, 41.540997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.584545, 34.944607, 41.408936>,  <36.611061, 35.277554, 41.188835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.584545, 34.944607, 41.408936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458561, 0.515187, 0.724088,
		-0.886187, -0.204324, -0.415842,
		-0.066288, -0.832367, 0.550247,
		36.564659, 34.694897, 41.574009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.000938, 35.357986, 41.573486>,  <36.611061, 35.277554, 41.188835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.000938, 35.357986, 41.573486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.176804, 35.063313, 41.779007>,  <36.282322, 34.886509, 41.902317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.176804, 35.063313, 41.779007>,  <36.000938, 35.357986, 41.573486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.176804, 35.063313, 41.779007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365075, 0.376084, 0.851634,
		-0.820618, -0.562009, -0.103594,
		0.439665, -0.736686, 0.513797,
		36.308704, 34.842308, 41.933147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.567642, 35.249107, 42.131809>,  <36.000938, 35.357986, 41.573486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.567642, 35.249107, 42.131809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.905003, 35.071373, 42.252628>,  <36.107418, 34.964733, 42.325119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.905003, 35.071373, 42.252628>,  <35.567642, 35.249107, 42.131809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.905003, 35.071373, 42.252628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238633, 0.193895, 0.951556,
		-0.481376, -0.874626, 0.057499,
		0.843405, -0.444335, 0.302051,
		36.158024, 34.938072, 42.343243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.373074, 34.852974, 42.686703>,  <35.567642, 35.249107, 42.131809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.373074, 34.852974, 42.686703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.769398, 34.888618, 42.727390>,  <36.007195, 34.910004, 42.751804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.769398, 34.888618, 42.727390>,  <35.373074, 34.852974, 42.686703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.769398, 34.888618, 42.727390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114687, 0.155168, 0.981208,
		0.071654, -0.983861, 0.163962,
		0.990814, 0.089112, 0.101718,
		36.066643, 34.915352, 42.757904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.671726, 34.303795, 43.141273>,  <35.373074, 34.852974, 42.686703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.671726, 34.303795, 43.141273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.909069, 34.625763, 43.139133>,  <36.051476, 34.818943, 43.137852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.909069, 34.625763, 43.139133>,  <35.671726, 34.303795, 43.141273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.909069, 34.625763, 43.139133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116401, 0.092375, 0.988897,
		0.796481, -0.586143, 0.148505,
		0.593353, 0.804924, -0.005347,
		36.087074, 34.867241, 43.137527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.447754, 33.626820, 42.932396>,  <35.671726, 34.303795, 43.141273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.447754, 33.626820, 42.932396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.124710, 33.733765, 43.142647>,  <34.930885, 33.797932, 43.268795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.124710, 33.733765, 43.142647>,  <35.447754, 33.626820, 42.932396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.124710, 33.733765, 43.142647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564862, -0.094688, -0.819735,
		-0.169394, -0.958933, 0.227493,
		-0.807611, 0.267360, 0.525626,
		34.882427, 33.813972, 43.300335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.017796, 33.234653, 42.558624>,  <35.447754, 33.626820, 42.932396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.017796, 33.234653, 42.558624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.786160, 33.495743, 42.754013>,  <34.647179, 33.652397, 42.871246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.786160, 33.495743, 42.754013>,  <35.017796, 33.234653, 42.558624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.786160, 33.495743, 42.754013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619796, 0.036768, -0.783901,
		-0.529631, -0.756703, 0.383264,
		-0.579089, 0.652724, 0.488474,
		34.612434, 33.691559, 42.900555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.457466, 33.047073, 42.349178>,  <35.017796, 33.234653, 42.558624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.457466, 33.047073, 42.349178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.377136, 33.406155, 42.506046>,  <34.328938, 33.621605, 42.600166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.377136, 33.406155, 42.506046>,  <34.457466, 33.047073, 42.349178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.377136, 33.406155, 42.506046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613631, 0.196781, -0.764680,
		-0.763627, -0.394217, 0.511339,
		-0.200828, 0.897703, 0.392170,
		34.316887, 33.675465, 42.623699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.648827, 33.172905, 42.332397>,  <34.457466, 33.047073, 42.349178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.648827, 33.172905, 42.332397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.809826, 33.536736, 42.373692>,  <33.906425, 33.755035, 42.398468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.809826, 33.536736, 42.373692>,  <33.648827, 33.172905, 42.332397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.809826, 33.536736, 42.373692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593107, 0.345024, -0.727450,
		-0.697292, 0.231571, 0.678350,
		0.402503, 0.909579, 0.103236,
		33.930576, 33.809608, 42.404663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.134727, 33.630577, 42.560856>,  <33.648827, 33.172905, 42.332397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.134727, 33.630577, 42.560856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.430962, 33.805904, 42.357128>,  <33.608704, 33.911102, 42.234894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.430962, 33.805904, 42.357128>,  <33.134727, 33.630577, 42.560856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.430962, 33.805904, 42.357128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667607, 0.393836, -0.631818,
		-0.076353, 0.807940, 0.584297,
		0.740588, 0.438322, -0.509316,
		33.653137, 33.937401, 42.204334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.838779, 34.210827, 42.293255>,  <33.134727, 33.630577, 42.560856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.838779, 34.210827, 42.293255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.170471, 34.193901, 42.070335>,  <33.369488, 34.183746, 41.936584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.170471, 34.193901, 42.070335>,  <32.838779, 34.210827, 42.293255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.170471, 34.193901, 42.070335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488974, 0.428022, -0.760067,
		0.270697, 0.902777, 0.334240,
		0.829233, -0.042314, -0.557299,
		33.419243, 34.181206, 41.903145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.874424, 34.836510, 41.907314>,  <32.838779, 34.210827, 42.293255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.874424, 34.836510, 41.907314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.098400, 34.569584, 41.710884>,  <33.232788, 34.409428, 41.593025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.098400, 34.569584, 41.710884>,  <32.874424, 34.836510, 41.907314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.098400, 34.569584, 41.710884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256512, 0.423964, -0.868594,
		0.787823, 0.612331, 0.066222,
		0.559942, -0.667312, -0.491079,
		33.266384, 34.369389, 41.563560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.014366, 35.183670, 41.245152>,  <32.874424, 34.836510, 41.907314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.014366, 35.183670, 41.245152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.090134, 34.798622, 41.167706>,  <33.135593, 34.567593, 41.121239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.090134, 34.798622, 41.167706>,  <33.014366, 35.183670, 41.245152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.090134, 34.798622, 41.167706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188782, 0.157808, -0.969256,
		0.963578, 0.220143, -0.151833,
		0.189415, -0.962618, -0.193620,
		33.146957, 34.509838, 41.109619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.438393, 35.116028, 40.598843>,  <33.014366, 35.183670, 41.245152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.438393, 35.116028, 40.598843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.282032, 34.749851, 40.637150>,  <33.188217, 34.530148, 40.660133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.282032, 34.749851, 40.637150>,  <33.438393, 35.116028, 40.598843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.282032, 34.749851, 40.637150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287722, 0.022701, -0.957445,
		0.874307, -0.401820, -0.272265,
		-0.390901, -0.915437, 0.095765,
		33.164761, 34.475220, 40.665878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.765755, 34.750023, 40.007553>,  <33.438393, 35.116028, 40.598843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.765755, 34.750023, 40.007553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.466881, 34.515568, 40.132870>,  <33.287556, 34.374893, 40.208061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.466881, 34.515568, 40.132870>,  <33.765755, 34.750023, 40.007553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.466881, 34.515568, 40.132870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335122, -0.074808, -0.939200,
		0.573939, -0.806749, -0.140533,
		-0.747186, -0.586139, 0.313295,
		33.242725, 34.339725, 40.226860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.780216, 34.087017, 39.624653>,  <33.765755, 34.750023, 40.007553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.780216, 34.087017, 39.624653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.412785, 34.147408, 39.770756>,  <33.192326, 34.183643, 39.858418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.412785, 34.147408, 39.770756>,  <33.780216, 34.087017, 39.624653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.412785, 34.147408, 39.770756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385497, -0.138386, -0.912273,
		-0.087176, -0.978804, 0.185317,
		-0.918581, 0.150968, 0.365262,
		33.137211, 34.192699, 39.880333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.444878, 33.608894, 39.370384>,  <33.780216, 34.087017, 39.624653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.444878, 33.608894, 39.370384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.146481, 33.863033, 39.450203>,  <32.967442, 34.015518, 39.498093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.146481, 33.863033, 39.450203>,  <33.444878, 33.608894, 39.370384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.146481, 33.863033, 39.450203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494257, -0.327408, -0.805303,
		-0.446320, -0.699379, 0.558273,
		-0.745995, 0.635353, 0.199544,
		32.922680, 34.053638, 39.510067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.801128, 33.195061, 39.402359>,  <33.444878, 33.608894, 39.370384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.801128, 33.195061, 39.402359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.688137, 33.570930, 39.325191>,  <32.620342, 33.796452, 39.278889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.688137, 33.570930, 39.325191>,  <32.801128, 33.195061, 39.402359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.688137, 33.570930, 39.325191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571222, -0.326342, -0.753132,
		-0.770656, -0.102542, 0.628947,
		-0.282479, 0.939673, -0.192923,
		32.603394, 33.852833, 39.267315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.893982, 32.512375, 39.618248>,  <32.801128, 33.195061, 39.402359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.893982, 32.512375, 39.618248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.267525, 32.376595, 39.573204>,  <33.491650, 32.295128, 39.546177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.267525, 32.376595, 39.573204>,  <32.893982, 32.512375, 39.618248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.267525, 32.376595, 39.573204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106956, -0.565527, 0.817765,
		-0.341273, -0.751634, -0.564429,
		0.933860, -0.339451, -0.112607,
		33.547684, 32.274761, 39.539421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.954571, 31.826920, 39.543015>,  <32.893982, 32.512375, 39.618248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.954571, 31.826920, 39.543015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.268932, 31.978527, 39.738441>,  <33.457550, 32.069492, 39.855698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.268932, 31.978527, 39.738441>,  <32.954571, 31.826920, 39.543015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.268932, 31.978527, 39.738441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224006, -0.561943, 0.796267,
		0.576349, -0.735232, -0.356730,
		0.785903, 0.379018, 0.488571,
		33.504704, 32.092232, 39.885014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.359509, 31.230589, 39.762539>,  <32.954571, 31.826920, 39.543015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.359509, 31.230589, 39.762539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.971832, 31.163879, 39.690041>,  <32.739227, 31.123854, 39.646542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.971832, 31.163879, 39.690041>,  <33.359509, 31.230589, 39.762539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.971832, 31.163879, 39.690041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240252, -0.802201, -0.546582,
		-0.054238, -0.573288, 0.817556,
		-0.969194, -0.166774, -0.181243,
		32.681072, 31.113848, 39.635666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.075390, 31.389221, 39.557957>,  <33.359509, 31.230589, 39.762539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.075390, 31.389221, 39.557957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.474224, 31.375479, 39.585201>,  <34.713524, 31.367233, 39.601547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.474224, 31.375479, 39.585201>,  <34.075390, 31.389221, 39.557957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.474224, 31.375479, 39.585201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060411, 0.189666, 0.979988,
		-0.046590, -0.981247, 0.187038,
		0.997086, -0.034359, 0.068114,
		34.773350, 31.365171, 39.605637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.383659, 30.869211, 40.087608>,  <34.075390, 31.389221, 39.557957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.383659, 30.869211, 40.087608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.671352, 31.144428, 40.049030>,  <34.843967, 31.309559, 40.025883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.671352, 31.144428, 40.049030>,  <34.383659, 30.869211, 40.087608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.671352, 31.144428, 40.049030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069968, 0.066375, 0.995338,
		0.691238, -0.722627, -0.000402,
		0.719232, 0.688044, -0.096442,
		34.887123, 31.350842, 40.020096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.028145, 30.634960, 40.527512>,  <34.383659, 30.869211, 40.087608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.028145, 30.634960, 40.527512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.040874, 31.028614, 40.457695>,  <35.048512, 31.264807, 40.415806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.040874, 31.028614, 40.457695>,  <35.028145, 30.634960, 40.527512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.040874, 31.028614, 40.457695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187433, 0.165659, 0.968208,
		0.981762, -0.063530, -0.179187,
		0.031827, 0.984135, -0.174545,
		35.050423, 31.323854, 40.405331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.663101, 30.750227, 40.819466>,  <35.028145, 30.634960, 40.527512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.663101, 30.750227, 40.819466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.481953, 31.106831, 40.815071>,  <35.373264, 31.320793, 40.812435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.481953, 31.106831, 40.815071>,  <35.663101, 30.750227, 40.819466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.481953, 31.106831, 40.815071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320087, 0.174069, 0.931260,
		0.832138, 0.418223, -0.364191,
		-0.452869, 0.891510, -0.010982,
		35.346092, 31.374283, 40.811775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.126740, 31.201218, 41.087334>,  <35.663101, 30.750227, 40.819466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.126740, 31.201218, 41.087334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.784973, 31.404873, 41.128796>,  <35.579914, 31.527065, 41.153675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.784973, 31.404873, 41.128796>,  <36.126740, 31.201218, 41.087334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.784973, 31.404873, 41.128796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261180, 0.248393, 0.932784,
		0.449168, 0.824063, -0.345209,
		-0.854420, 0.509138, 0.103659,
		35.528648, 31.557615, 41.159893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.231770, 31.705427, 41.519348>,  <36.126740, 31.201218, 41.087334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.231770, 31.705427, 41.519348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.833050, 31.737410, 41.519154>,  <35.593819, 31.756599, 41.519035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.833050, 31.737410, 41.519154>,  <36.231770, 31.705427, 41.519348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.833050, 31.737410, 41.519154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015860, 0.203683, 0.978908,
		0.078369, 0.975766, -0.204299,
		-0.996798, 0.079956, -0.000487,
		35.534012, 31.761396, 41.519009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.101971, 32.380035, 41.859711>,  <36.231770, 31.705427, 41.519348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.101971, 32.380035, 41.859711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.779713, 32.145863, 41.895935>,  <35.586357, 32.005360, 41.917671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.779713, 32.145863, 41.895935>,  <36.101971, 32.380035, 41.859711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.779713, 32.145863, 41.895935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005662, 0.160480, 0.987023,
		-0.592368, 0.794680, -0.132605,
		-0.805648, -0.585431, 0.090563,
		35.538017, 31.970234, 41.923103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.580833, 32.723850, 42.330482>,  <36.101971, 32.380035, 41.859711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.580833, 32.723850, 42.330482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.540783, 32.325928, 42.323174>,  <35.516750, 32.087173, 42.318790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.540783, 32.325928, 42.323174>,  <35.580833, 32.723850, 42.330482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.540783, 32.325928, 42.323174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078997, -0.010357, 0.996821,
		-0.991834, 0.101255, -0.077550,
		-0.100129, -0.994807, -0.018271,
		35.510742, 32.027485, 42.317692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.110970, 32.528191, 42.817299>,  <35.580833, 32.723850, 42.330482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.110970, 32.528191, 42.817299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.300491, 32.179970, 42.764175>,  <35.414204, 31.971037, 42.732300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.300491, 32.179970, 42.764175>,  <35.110970, 32.528191, 42.817299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.300491, 32.179970, 42.764175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030048, -0.134747, 0.990424,
		-0.880115, -0.473262, -0.037686,
		0.473809, -0.870555, -0.132813,
		35.442635, 31.918804, 42.724331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.885387, 32.021252, 43.366329>,  <35.110970, 32.528191, 42.817299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.885387, 32.021252, 43.366329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.218410, 31.843800, 43.233639>,  <35.418224, 31.737329, 43.154022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.218410, 31.843800, 43.233639>,  <34.885387, 32.021252, 43.366329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.218410, 31.843800, 43.233639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206881, -0.306503, 0.929116,
		-0.513858, -0.842170, -0.163403,
		0.832557, -0.443628, -0.331728,
		35.468178, 31.710711, 43.134121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.829731, 31.292027, 43.630772>,  <34.885387, 32.021252, 43.366329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.829731, 31.292027, 43.630772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.216942, 31.362650, 43.559498>,  <35.449268, 31.405024, 43.516735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.216942, 31.362650, 43.559498>,  <34.829731, 31.292027, 43.630772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.216942, 31.362650, 43.559498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215202, -0.219592, 0.951560,
		0.128880, -0.959482, -0.250568,
		0.968028, 0.176560, -0.178181,
		35.507351, 31.415617, 43.506042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.238564, 30.684645, 43.921349>,  <34.829731, 31.292027, 43.630772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.238564, 30.684645, 43.921349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.518356, 30.968981, 43.891880>,  <35.686234, 31.139584, 43.874199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.518356, 30.968981, 43.891880>,  <35.238564, 30.684645, 43.921349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.518356, 30.968981, 43.891880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328892, -0.228682, 0.916261,
		0.634470, -0.665138, -0.393750,
		0.699484, 0.710841, -0.073667,
		35.728203, 31.182234, 43.869781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.940880, 30.286066, 44.067547>,  <35.238564, 30.684645, 43.921349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.940880, 30.286066, 44.067547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.961014, 30.682621, 44.115910>,  <35.973095, 30.920553, 44.144928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.961014, 30.682621, 44.115910>,  <35.940880, 30.286066, 44.067547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.961014, 30.682621, 44.115910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480100, -0.130170, 0.867502,
		0.875768, 0.014383, -0.482517,
		0.050333, 0.991387, 0.120904,
		35.976112, 30.980038, 44.152180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.618111, 30.344193, 44.123318>,  <35.940880, 30.286066, 44.067547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.618111, 30.344193, 44.123318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.469746, 30.684652, 44.271893>,  <36.380726, 30.888927, 44.361038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.469746, 30.684652, 44.271893>,  <36.618111, 30.344193, 44.123318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.469746, 30.684652, 44.271893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469122, -0.173453, 0.865932,
		0.801465, 0.495437, -0.334957,
		-0.370916, 0.851150, 0.371437,
		36.358471, 30.939997, 44.383324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.138432, 30.712877, 44.379208>,  <36.618111, 30.344193, 44.123318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.138432, 30.712877, 44.379208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.817974, 30.844774, 44.578983>,  <36.625702, 30.923912, 44.698849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.817974, 30.844774, 44.578983>,  <37.138432, 30.712877, 44.379208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.817974, 30.844774, 44.578983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496451, -0.099894, 0.862298,
		0.334227, 0.938771, -0.083672,
		-0.801142, 0.329742, 0.499441,
		36.577633, 30.943697, 44.728817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.409317, 31.061428, 44.962994>,  <37.138432, 30.712877, 44.379208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.409317, 31.061428, 44.962994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.028622, 31.047022, 45.084915>,  <36.800205, 31.038378, 45.158066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.028622, 31.047022, 45.084915>,  <37.409317, 31.061428, 44.962994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.028622, 31.047022, 45.084915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301895, 0.069147, 0.950830,
		-0.055321, 0.996956, -0.054937,
		-0.951735, -0.036016, 0.304801,
		36.743103, 31.036217, 45.176357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467087, 31.428974, 45.525257>,  <37.409317, 31.061428, 44.962994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467087, 31.428974, 45.525257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.125874, 31.224577, 45.567623>,  <36.921146, 31.101938, 45.593040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.125874, 31.224577, 45.567623>,  <37.467087, 31.428974, 45.525257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.125874, 31.224577, 45.567623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219986, -0.168068, 0.960916,
		-0.473222, 0.842993, 0.255779,
		-0.853034, -0.510994, 0.105913,
		36.869965, 31.071280, 45.599396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.116577, 31.718348, 46.149265>,  <37.467087, 31.428974, 45.525257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.116577, 31.718348, 46.149265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.951519, 31.359499, 46.086143>,  <36.852486, 31.144190, 46.048271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.951519, 31.359499, 46.086143>,  <37.116577, 31.718348, 46.149265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.951519, 31.359499, 46.086143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039468, -0.155464, 0.987053,
		-0.910037, 0.413530, 0.028744,
		-0.412645, -0.897120, -0.157800,
		36.827724, 31.090363, 46.038803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.505825, 31.704191, 46.577984>,  <37.116577, 31.718348, 46.149265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.505825, 31.704191, 46.577984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.650997, 31.338112, 46.507904>,  <36.738102, 31.118465, 46.465855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.650997, 31.338112, 46.507904>,  <36.505825, 31.704191, 46.577984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.650997, 31.338112, 46.507904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122705, -0.139446, 0.982598,
		-0.923702, -0.378112, 0.061691,
		0.362929, -0.915197, -0.175203,
		36.759876, 31.063553, 46.455345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.254692, 31.262140, 47.125816>,  <36.505825, 31.704191, 46.577984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.254692, 31.262140, 47.125816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.564014, 31.059914, 46.972767>,  <36.749607, 30.938578, 46.880939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.564014, 31.059914, 46.972767>,  <36.254692, 31.262140, 47.125816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.564014, 31.059914, 46.972767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256552, -0.302357, 0.918020,
		-0.579808, -0.808074, -0.104111,
		0.773307, -0.505566, -0.382622,
		36.796005, 30.908243, 46.857979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.091232, 30.610928, 47.323009>,  <36.254692, 31.262140, 47.125816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.091232, 30.610928, 47.323009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.478458, 30.616383, 47.222878>,  <36.710793, 30.619656, 47.162796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.478458, 30.616383, 47.222878>,  <36.091232, 30.610928, 47.323009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.478458, 30.616383, 47.222878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220628, -0.520554, 0.824831,
		-0.119064, -0.853720, -0.506938,
		0.968063, 0.013637, -0.250334,
		36.768879, 30.620474, 47.147778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.350361, 29.992428, 47.477188>,  <36.091232, 30.610928, 47.323009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.350361, 29.992428, 47.477188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.662273, 30.242760, 47.483803>,  <36.849422, 30.392960, 47.487774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.662273, 30.242760, 47.483803>,  <36.350361, 29.992428, 47.477188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.662273, 30.242760, 47.483803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335304, -0.439810, 0.833150,
		0.528685, -0.644131, -0.552799,
		0.779784, 0.625830, 0.016541,
		36.896210, 30.430510, 47.488766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.869064, 29.633001, 47.862247>,  <36.350361, 29.992428, 47.477188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.869064, 29.633001, 47.862247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.023430, 30.001694, 47.846863>,  <37.116051, 30.222910, 47.837631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.023430, 30.001694, 47.846863>,  <36.869064, 29.633001, 47.862247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.023430, 30.001694, 47.846863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352786, -0.108924, 0.929342,
		0.852414, -0.372220, -0.367210,
		0.385918, 0.921731, -0.038466,
		37.139206, 30.278214, 47.835323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.492569, 29.523912, 48.159576>,  <36.869064, 29.633001, 47.862247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.492569, 29.523912, 48.159576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.455986, 29.922234, 48.160839>,  <37.434036, 30.161226, 48.161598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.455986, 29.922234, 48.160839>,  <37.492569, 29.523912, 48.159576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.455986, 29.922234, 48.160839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379665, 0.031935, 0.924573,
		0.920593, 0.085757, -0.380992,
		-0.091456, 0.995804, 0.003160,
		37.428551, 30.220974, 48.161785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.069248, 29.674047, 48.493164>,  <37.492569, 29.523912, 48.159576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.069248, 29.674047, 48.493164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.811733, 29.975760, 48.544704>,  <37.657223, 30.156786, 48.575630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.811733, 29.975760, 48.544704>,  <38.069248, 29.674047, 48.493164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.811733, 29.975760, 48.544704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299498, 0.093424, 0.949512,
		0.704159, 0.649873, -0.286050,
		-0.643786, 0.754279, 0.128850,
		37.618599, 30.202044, 48.583359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.403084, 30.186054, 48.864460>,  <38.069248, 29.674047, 48.493164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.403084, 30.186054, 48.864460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.016560, 30.274958, 48.916382>,  <37.784645, 30.328299, 48.947533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.016560, 30.274958, 48.916382>,  <38.403084, 30.186054, 48.864460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.016560, 30.274958, 48.916382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125085, -0.035230, 0.991520,
		0.224945, 0.974351, 0.006242,
		-0.966309, 0.222257, 0.129801,
		37.726665, 30.341635, 48.955322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.978271, 30.627790, 48.986092>,  <38.403084, 30.186054, 48.864460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.978271, 30.627790, 48.986092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.376595, 30.645472, 48.954071>,  <39.615589, 30.656080, 48.934860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.376595, 30.645472, 48.954071>,  <38.978271, 30.627790, 48.986092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.376595, 30.645472, 48.954071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086047, 0.156771, -0.983879,
		-0.030939, 0.986646, 0.159918,
		0.995811, 0.044201, -0.080048,
		39.675339, 30.658731, 48.930058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.159496, 31.185324, 48.560089>,  <38.978271, 30.627790, 48.986092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.159496, 31.185324, 48.560089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.480484, 30.947313, 48.542248>,  <39.673077, 30.804506, 48.531544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.480484, 30.947313, 48.542248>,  <39.159496, 31.185324, 48.560089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.480484, 30.947313, 48.542248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107752, -0.070990, -0.991640,
		0.586885, 0.800565, -0.121082,
		0.802468, -0.595025, -0.044599,
		39.721226, 30.768806, 48.528870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.441162, 31.302076, 47.888828>,  <39.159496, 31.185324, 48.560089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.441162, 31.302076, 47.888828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.650822, 30.985718, 48.015163>,  <39.776615, 30.795902, 48.090965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.650822, 30.985718, 48.015163>,  <39.441162, 31.302076, 47.888828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.650822, 30.985718, 48.015163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155849, -0.275527, -0.948576,
		0.837247, 0.546414, -0.021156,
		0.524145, -0.790896, 0.315842,
		39.808064, 30.748449, 48.109917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.125038, 31.340565, 47.601025>,  <39.441162, 31.302076, 47.888828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.125038, 31.340565, 47.601025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.979839, 30.975660, 47.676929>,  <39.892719, 30.756718, 47.722473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.979839, 30.975660, 47.676929>,  <40.125038, 31.340565, 47.601025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.979839, 30.975660, 47.676929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183407, -0.269619, -0.945340,
		0.913561, -0.308355, 0.265186,
		-0.362999, -0.912263, 0.189759,
		39.870941, 30.701981, 47.733856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.727039, 30.840179, 47.274982>,  <40.125038, 31.340565, 47.601025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.727039, 30.840179, 47.274982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.377201, 30.648806, 47.306416>,  <40.167297, 30.533981, 47.325275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.377201, 30.648806, 47.306416>,  <40.727039, 30.840179, 47.274982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.377201, 30.648806, 47.306416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185227, -0.479490, -0.857776,
		0.448068, -0.735656, 0.507981,
		-0.874600, -0.478435, 0.078580,
		40.114822, 30.505276, 47.329990>
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
