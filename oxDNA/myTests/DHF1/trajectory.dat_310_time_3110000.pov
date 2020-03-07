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
	<-1.063775, 2.189329, 0.833950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-1.275478, 1.881874, 0.977661>,  <-1.402500, 1.697401, 1.063888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-1.275478, 1.881874, 0.977661>,  <-1.063775, 2.189329, 0.833950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-1.275478, 1.881874, 0.977661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837567, 0.540948, -0.076531,
		-0.135526, -0.341424, -0.930087,
		-0.529258, -0.768638, 0.359278,
		-1.434256, 1.651283, 1.085445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.847076, 1.626036, 1.389394>,  <-1.063775, 2.189329, 0.833950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.847076, 1.626036, 1.389394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.779675, 1.688980, 1.778618>,  <-0.739233, 1.726746, 2.012152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.779675, 1.688980, 1.778618>,  <-0.847076, 1.626036, 1.389394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.779675, 1.688980, 1.778618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796739, 0.559481, -0.228448,
		-0.580357, 0.813768, -0.031099,
		0.168504, 0.157359, 0.973059,
		-0.729123, 1.736188, 2.070536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.797108, 2.268431, 1.509777>,  <-0.847076, 1.626036, 1.389394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.797108, 2.268431, 1.509777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.564793, 2.086166, 1.779610>,  <-0.425404, 1.976808, 1.941509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.564793, 2.086166, 1.779610>,  <-0.797108, 2.268431, 1.509777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.564793, 2.086166, 1.779610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765533, 0.587532, -0.262231,
		-0.276849, 0.668714, 0.690055,
		0.580787, -0.455661, 0.674581,
		-0.390556, 1.949468, 1.981984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.496259, 2.700070, 2.129603>,  <-0.797108, 2.268431, 1.509777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.496259, 2.700070, 2.129603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.281002, 2.408455, 1.960415>,  <-0.151848, 2.233486, 1.858902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.281002, 2.408455, 1.960415>,  <-0.496259, 2.700070, 2.129603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.281002, 2.408455, 1.960415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668091, 0.674914, -0.313282,
		0.513863, -0.113993, 0.850264,
		0.538144, -0.729038, -0.422971,
		-0.119559, 2.189744, 1.833523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.172077, 2.700970, 2.386735>,  <-0.496259, 2.700070, 2.129603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.172077, 2.700970, 2.386735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.216442, 2.497017, 2.045509>,  <0.243061, 2.374645, 1.840774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.216442, 2.497017, 2.045509>,  <0.172077, 2.700970, 2.386735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.216442, 2.497017, 2.045509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633826, 0.697429, -0.334449,
		0.765481, -0.503600, 0.400532,
		0.110914, -0.509882, -0.853064,
		0.249716, 2.344052, 1.789590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.812364, 2.435802, 2.396717>,  <0.172077, 2.700970, 2.386735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.812364, 2.435802, 2.396717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.680542, 2.526123, 2.030022>,  <0.601449, 2.580315, 1.810005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.680542, 2.526123, 2.030022>,  <0.812364, 2.435802, 2.396717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.680542, 2.526123, 2.030022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713511, 0.695444, -0.085203,
		0.618300, -0.682181, -0.390300,
		-0.329556, 0.225802, -0.916737,
		0.581675, 2.593863, 1.755001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.377902, 2.713941, 2.140504>,  <0.812364, 2.435802, 2.396717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.377902, 2.713941, 2.140504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.099854, 2.841042, 1.882561>,  <0.933025, 2.917302, 1.727795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.099854, 2.841042, 1.882561>,  <1.377902, 2.713941, 2.140504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.099854, 2.841042, 1.882561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535256, 0.827572, -0.169192,
		0.479904, -0.462773, -0.745341,
		-0.695121, 0.317752, -0.644857,
		0.891317, 2.936367, 1.689103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.681250, 2.771300, 1.469983>,  <1.377902, 2.713941, 2.140504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.681250, 2.771300, 1.469983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.383312, 3.024879, 1.553230>,  <1.204549, 3.177027, 1.603179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.383312, 3.024879, 1.553230>,  <1.681250, 2.771300, 1.469983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.383312, 3.024879, 1.553230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629524, 0.771064, -0.095705,
		-0.221146, 0.059731, -0.973410,
		-0.744845, 0.633950, 0.208119,
		1.159859, 3.215065, 1.615666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.563249, 4.044657, 1.245526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.294462, 4.317963, 1.131256>,  <2.133190, 4.481946, 1.062694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.294462, 4.317963, 1.131256>,  <2.563249, 4.044657, 1.245526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.294462, 4.317963, 1.131256> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730248, -0.675522, 0.102012,
		-0.123278, 0.277162, 0.952882,
		-0.671967, 0.683265, -0.285674,
		2.092872, 4.522942, 1.045554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.056127, 4.273985, 1.749102>,  <2.563249, 4.044657, 1.245526>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.056127, 4.273985, 1.749102> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.909925, 4.248169, 1.377674>,  <1.822204, 4.232679, 1.154817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.909925, 4.248169, 1.377674>,  <2.056127, 4.273985, 1.749102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.909925, 4.248169, 1.377674> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807595, -0.474033, 0.350833,
		-0.462815, 0.878139, 0.121139,
		-0.365504, -0.064539, -0.928570,
		1.800274, 4.228807, 1.099103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.343405, 4.424664, 1.678161>,  <2.056127, 4.273985, 1.749102>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.343405, 4.424664, 1.678161> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.393894, 4.174789, 1.369919>,  <1.424188, 4.024864, 1.184973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.393894, 4.174789, 1.369919>,  <1.343405, 4.424664, 1.678161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.393894, 4.174789, 1.369919> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857506, -0.459271, 0.231849,
		-0.498750, 0.631535, -0.593643,
		0.126222, -0.624687, -0.770606,
		1.431761, 3.987383, 1.138737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.681696, 4.403149, 1.284518>,  <1.343405, 4.424664, 1.678161>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.681696, 4.403149, 1.284518> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.885944, 4.065918, 1.217007>,  <1.008494, 3.863579, 1.176500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.885944, 4.065918, 1.217007>,  <0.681696, 4.403149, 1.284518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.885944, 4.065918, 1.217007> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852903, -0.521492, 0.024572,
		-0.108733, 0.131404, -0.985348,
		0.510622, -0.843077, -0.168778,
		1.039131, 3.812995, 1.166373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.197918, 3.899505, 1.401583>,  <0.681696, 4.403149, 1.284518>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.197918, 3.899505, 1.401583> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.524866, 3.676590, 1.343155>,  <0.721035, 3.542841, 1.308098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.524866, 3.676590, 1.343155>,  <0.197918, 3.899505, 1.401583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.524866, 3.676590, 1.343155> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548608, -0.830319, 0.097981,
		-0.175889, 0.000049, -0.984410,
		0.817370, -0.557289, -0.146070,
		0.770077, 3.509403, 1.299334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.037281, 3.424135, 0.816558>,  <0.197918, 3.899505, 1.401583>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.037281, 3.424135, 0.816558> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.321938, 3.275513, 1.055058>,  <0.492732, 3.186339, 1.198157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.321938, 3.275513, 1.055058>,  <0.037281, 3.424135, 0.816558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.321938, 3.275513, 1.055058> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433536, -0.900088, -0.043455,
		0.552822, -0.227571, -0.801623,
		0.711642, -0.371555, 0.596248,
		0.535430, 3.164046, 1.233932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.129099, 2.780794, 0.572452>,  <0.037281, 3.424135, 0.816558>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.129099, 2.780794, 0.572452> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.254244, 2.749176, 0.951054>,  <0.329331, 2.730205, 1.178215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.254244, 2.749176, 0.951054>,  <0.129099, 2.780794, 0.572452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.254244, 2.749176, 0.951054> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360293, -0.931926, 0.041266,
		0.878810, -0.353929, -0.320043,
		0.312862, -0.079045, 0.946504,
		0.348103, 2.725463, 1.235005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.396750, 2.157328, 0.602970>,  <0.129099, 2.780794, 0.572452>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.396750, 2.157328, 0.602970> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.329062, 2.247314, 0.986794>,  <0.288448, 2.301306, 1.217088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.329062, 2.247314, 0.986794>,  <0.396750, 2.157328, 0.602970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.329062, 2.247314, 0.986794> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413408, -0.900012, 0.138099,
		0.894683, -0.373320, 0.245304,
		-0.169222, 0.224965, 0.959560,
		0.278295, 2.314804, 1.274661>
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
