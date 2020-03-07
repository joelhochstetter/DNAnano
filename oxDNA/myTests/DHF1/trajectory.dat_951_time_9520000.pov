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
	<3.239295, 2.938861, 0.300020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.592781, 2.753149, 0.276379>,  <3.804873, 2.641722, 0.262194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.592781, 2.753149, 0.276379>,  <3.239295, 2.938861, 0.300020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.592781, 2.753149, 0.276379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116064, -0.339730, 0.933334,
		-0.453407, -0.817941, -0.354111,
		0.883714, -0.464280, -0.059103,
		3.857895, 2.613865, 0.258648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.249970, 2.217438, 0.517273>,  <3.239295, 2.938861, 0.300020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.249970, 2.217438, 0.517273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.598213, 2.400936, 0.588371>,  <3.807159, 2.511035, 0.631030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.598213, 2.400936, 0.588371>,  <3.249970, 2.217438, 0.517273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.598213, 2.400936, 0.588371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167760, -0.062817, 0.983824,
		0.462491, -0.886344, 0.022270,
		0.870608, 0.458746, 0.177745,
		3.859396, 2.538560, 0.641695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.471292, 1.789054, 1.050831>,  <3.249970, 2.217438, 0.517273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.471292, 1.789054, 1.050831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.591461, 2.170284, 1.035917>,  <3.663563, 2.399023, 1.026969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.591461, 2.170284, 1.035917>,  <3.471292, 1.789054, 1.050831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.591461, 2.170284, 1.035917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309983, 0.134531, 0.941176,
		0.902029, -0.271194, 0.335854,
		0.300424, 0.953077, -0.037285,
		3.681588, 2.456207, 1.024732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.769961, 1.565227, 0.399213>,  <3.471292, 1.789054, 1.050831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.769961, 1.565227, 0.399213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.005615, 1.390211, 0.127483>,  <4.147007, 1.285202, -0.035554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.005615, 1.390211, 0.127483>,  <3.769961, 1.565227, 0.399213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.005615, 1.390211, 0.127483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805787, 0.380783, 0.453554,
		0.060227, -0.814594, 0.576896,
		0.589135, -0.437539, -0.679323,
		4.182355, 1.258949, -0.076313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.136484, 1.001038, 0.706610>,  <3.769961, 1.565227, 0.399213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.136484, 1.001038, 0.706610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.342583, 1.164616, 0.405336>,  <4.466242, 1.262762, 0.224572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.342583, 1.164616, 0.405336>,  <4.136484, 1.001038, 0.706610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.342583, 1.164616, 0.405336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623954, 0.423477, 0.656771,
		0.587539, -0.808351, -0.036967,
		0.515247, 0.408945, -0.753183,
		4.497157, 1.287299, 0.179381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.828427, 1.006751, 0.939137>,  <4.136484, 1.001038, 0.706610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.828427, 1.006751, 0.939137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.856552, 1.249739, 0.622646>,  <4.873427, 1.395531, 0.432752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.856552, 1.249739, 0.622646>,  <4.828427, 1.006751, 0.939137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.856552, 1.249739, 0.622646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703074, 0.532500, 0.471308,
		0.707632, -0.589429, -0.389654,
		0.070312, 0.607468, -0.791226,
		4.877646, 1.431979, 0.385279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.552539, 1.223670, 0.929053>,  <4.828427, 1.006751, 0.939137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.552539, 1.223670, 0.929053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.355743, 1.502142, 0.719948>,  <5.237666, 1.669225, 0.594485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.355743, 1.502142, 0.719948>,  <5.552539, 1.223670, 0.929053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.355743, 1.502142, 0.719948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534851, 0.715483, 0.449464,
		0.686935, -0.058468, -0.724363,
		-0.491990, 0.696179, -0.522762,
		5.208147, 1.710996, 0.563119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.102804, 1.677761, 0.747197>,  <5.552539, 1.223670, 0.929053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.102804, 1.677761, 0.747197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.753967, 1.873072, 0.760099>,  <5.544665, 1.990258, 0.767841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.753967, 1.873072, 0.760099>,  <6.102804, 1.677761, 0.747197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.753967, 1.873072, 0.760099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435442, 0.744272, 0.506408,
		0.223260, 0.455680, -0.861690,
		-0.872092, 0.488277, 0.032256,
		5.492340, 2.019555, 0.769776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.803816, 3.264157, 1.711166> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.573738, 3.405602, 1.416111>,  <0.435691, 3.490469, 1.239078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.573738, 3.405602, 1.416111>,  <0.803816, 3.264157, 1.711166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.573738, 3.405602, 1.416111> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078583, -0.921455, -0.380453,
		-0.814233, -0.160868, 0.557804,
		-0.575194, 0.353612, -0.737638,
		0.401180, 3.511685, 1.194820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.511789, 2.708913, 1.591843>,  <0.803816, 3.264157, 1.711166>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.511789, 2.708913, 1.591843> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.385422, 2.931259, 1.284283>,  <0.309602, 3.064667, 1.099746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.385422, 2.931259, 1.284283>,  <0.511789, 2.708913, 1.591843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.385422, 2.931259, 1.284283> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120368, -0.827338, -0.548656,
		-0.941121, -0.080779, 0.328278,
		-0.315917, 0.555865, -0.768902,
		0.290646, 3.098019, 1.053612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.221300, 2.602219, 1.345354>,  <0.511789, 2.708913, 1.591843>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.221300, 2.602219, 1.345354> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.078087, 2.659920, 1.086437>,  <0.257719, 2.694540, 0.931087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.078087, 2.659920, 1.086437>,  <-0.221300, 2.602219, 1.345354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.078087, 2.659920, 1.086437> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318211, -0.778233, -0.541382,
		-0.581841, 0.611182, -0.536580,
		0.748467, 0.144253, -0.647293,
		0.302627, 2.703196, 0.892249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.470364, 2.783414, 0.643389>,  <-0.221300, 2.602219, 1.345354>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.470364, 2.783414, 0.643389> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.143402, 2.552990, 0.642784>,  <0.052775, 2.414735, 0.642421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.143402, 2.552990, 0.642784>,  <-0.470364, 2.783414, 0.643389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.143402, 2.552990, 0.642784> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508779, -0.720699, -0.470889,
		0.270170, 0.385677, -0.882191,
		0.817406, -0.576061, -0.001513,
		0.101820, 2.380172, 0.642330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.371004, 2.657466, -0.080770>,  <-0.470364, 2.783414, 0.643389>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.371004, 2.657466, -0.080770> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.195450, 2.354240, 0.112194>,  <-0.090117, 2.172305, 0.227972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.195450, 2.354240, 0.112194>,  <-0.371004, 2.657466, -0.080770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.195450, 2.354240, 0.112194> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334382, -0.636111, -0.695378,
		0.834007, 0.143883, -0.532664,
		0.438886, -0.758063, 0.482409,
		-0.063784, 2.126822, 0.256917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.130397, 2.211345, -0.698647>,  <-0.371004, 2.657466, -0.080770>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.130397, 2.211345, -0.698647> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.102417, 1.974148, -0.377781>,  <-0.085629, 1.831830, -0.185262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.102417, 1.974148, -0.377781>,  <-0.130397, 2.211345, -0.698647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.102417, 1.974148, -0.377781> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367415, -0.762918, -0.531941,
		0.927423, -0.257518, -0.271240,
		0.069950, -0.592992, 0.802164,
		-0.081432, 1.796250, -0.137132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.100148, 1.505589, -0.934873>,  <-0.130397, 2.211345, -0.698647>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.100148, 1.505589, -0.934873> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.085251, 1.476665, -0.581615>,  <-0.196490, 1.459311, -0.369661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.085251, 1.476665, -0.581615>,  <0.100148, 1.505589, -0.934873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.085251, 1.476665, -0.581615> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637982, -0.664438, -0.389232,
		0.614939, -0.743837, 0.261833,
		-0.463497, -0.072309, 0.883143,
		-0.224300, 1.454973, -0.316673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.068265, 0.740647, -0.897512>,  <0.100148, 1.505589, -0.934873>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.068265, 0.740647, -0.897512> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.203522, 0.917862, -0.663574>,  <-0.366594, 1.024191, -0.523212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.203522, 0.917862, -0.663574>,  <0.068265, 0.740647, -0.897512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.203522, 0.917862, -0.663574> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718228, -0.564497, -0.406807,
		0.149912, -0.696463, 0.701758,
		-0.679466, 0.443037, 0.584845,
		-0.407362, 1.050773, -0.488121>
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
