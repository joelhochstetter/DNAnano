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
	<1.769165, 4.053042, 1.111787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.050949, 3.935215, 1.370079>,  <2.220020, 3.864519, 1.525054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.050949, 3.935215, 1.370079>,  <1.769165, 4.053042, 1.111787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.050949, 3.935215, 1.370079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680875, -0.023639, 0.732018,
		-0.200366, -0.955338, -0.217218,
		0.704460, -0.294569, 0.645729,
		2.262287, 3.846845, 1.563798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.662999, 3.458180, 1.416393>,  <1.769165, 4.053042, 1.111787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.662999, 3.458180, 1.416393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.866310, 3.652267, 1.700989>,  <1.988297, 3.768720, 1.871746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.866310, 3.652267, 1.700989>,  <1.662999, 3.458180, 1.416393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.866310, 3.652267, 1.700989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708327, -0.234356, 0.665845,
		0.489823, -0.842401, 0.224576,
		0.508278, 0.485220, 0.711488,
		2.018794, 3.797833, 1.914435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.718204, 3.071579, 2.048697>,  <1.662999, 3.458180, 1.416393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.718204, 3.071579, 2.048697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.757748, 3.441814, 2.194855>,  <1.781474, 3.663956, 2.282549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.757748, 3.441814, 2.194855>,  <1.718204, 3.071579, 2.048697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.757748, 3.441814, 2.194855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739247, -0.177494, 0.649623,
		0.666139, -0.334337, 0.666692,
		0.098860, 0.925589, 0.365393,
		1.787405, 3.719491, 2.304473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.882676, 3.107148, 2.793736>,  <1.718204, 3.071579, 2.048697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.882676, 3.107148, 2.793736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.672092, 3.434563, 2.701790>,  <1.545742, 3.631012, 2.646622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.672092, 3.434563, 2.701790>,  <1.882676, 3.107148, 2.793736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.672092, 3.434563, 2.701790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762779, -0.335323, 0.552925,
		0.375511, 0.466428, 0.800897,
		-0.526459, 0.818537, -0.229864,
		1.514155, 3.680124, 2.632831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.521194, 3.399646, 3.461349>,  <1.882676, 3.107148, 2.793736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.521194, 3.399646, 3.461349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.339977, 3.560326, 3.143005>,  <1.231247, 3.656734, 2.951999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.339977, 3.560326, 3.143005>,  <1.521194, 3.399646, 3.461349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.339977, 3.560326, 3.143005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891358, -0.219431, 0.396649,
		-0.015303, 0.889094, 0.457469,
		-0.453041, 0.401699, -0.795859,
		1.204065, 3.680835, 2.904248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.977020, 3.864068, 3.696340>,  <1.521194, 3.399646, 3.461349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.977020, 3.864068, 3.696340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.866829, 3.755013, 3.327606>,  <0.800714, 3.689579, 3.106366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.866829, 3.755013, 3.327606>,  <0.977020, 3.864068, 3.696340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.866829, 3.755013, 3.327606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.952108, -0.054968, 0.300782,
		-0.132676, 0.960545, -0.244439,
		-0.275478, -0.272639, -0.921835,
		0.784185, 3.673221, 3.051056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.395106, 4.191375, 3.527122>,  <0.977020, 3.864068, 3.696340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.395106, 4.191375, 3.527122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.374878, 3.881420, 3.275093>,  <0.362741, 3.695447, 3.123876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.374878, 3.881420, 3.275093>,  <0.395106, 4.191375, 3.527122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.374878, 3.881420, 3.275093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962149, -0.131361, 0.238775,
		-0.267791, 0.618298, -0.738915,
		-0.050570, -0.774888, -0.630072,
		0.359707, 3.648954, 3.086071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.213066, 4.253506, 3.293600>,  <0.395106, 4.191375, 3.527122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.213066, 4.253506, 3.293600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.138844, 3.879890, 3.171524>,  <-0.094310, 3.655721, 3.098279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.138844, 3.879890, 3.171524>,  <-0.213066, 4.253506, 3.293600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.138844, 3.879890, 3.171524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898836, -0.286840, 0.331385,
		-0.397067, 0.212826, -0.892772,
		0.185555, -0.934038, -0.305190,
		-0.083177, 3.599679, 3.079967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.496556, 3.518081, 3.915828> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.567101, 3.125755, 3.949051>,  <3.609427, 2.890360, 3.968985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.567101, 3.125755, 3.949051>,  <3.496556, 3.518081, 3.915828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.567101, 3.125755, 3.949051> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836235, 0.104782, -0.538267,
		0.519238, 0.164386, 0.838671,
		0.176361, -0.980815, 0.083058,
		3.620009, 2.831511, 3.973969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.266021, 3.503481, 4.141712>,  <3.496556, 3.518081, 3.915828>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.266021, 3.503481, 4.141712> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.154395, 3.187469, 3.923363>,  <4.087419, 2.997863, 3.792353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.154395, 3.187469, 3.923363>,  <4.266021, 3.503481, 4.141712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.154395, 3.187469, 3.923363> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769369, 0.156215, -0.619409,
		0.574625, -0.592833, 0.564230,
		-0.279065, -0.790029, -0.545873,
		4.070675, 2.950461, 3.759601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.809694, 3.037999, 4.041308>,  <4.266021, 3.503481, 4.141712>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.809694, 3.037999, 4.041308> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.573740, 3.011269, 3.719421>,  <4.432168, 2.995230, 3.526289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.573740, 3.011269, 3.719421>,  <4.809694, 3.037999, 4.041308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.573740, 3.011269, 3.719421> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734694, 0.369093, -0.569206,
		0.335053, -0.926987, -0.168626,
		-0.589885, -0.066826, -0.804717,
		4.396774, 2.991221, 3.478006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.033351, 2.561437, 3.574265>,  <4.809694, 3.037999, 4.041308>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.033351, 2.561437, 3.574265> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.827591, 2.842636, 3.377823>,  <4.704135, 3.011356, 3.259957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.827591, 2.842636, 3.377823>,  <5.033351, 2.561437, 3.574265>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.827591, 2.842636, 3.377823> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737604, 0.070596, -0.671533,
		-0.437416, -0.707679, -0.554849,
		-0.514401, 0.702998, -0.491107,
		4.673271, 3.053535, 3.230491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.164593, 2.365774, 2.872277>,  <5.033351, 2.561437, 3.574265>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.164593, 2.365774, 2.872277> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.084540, 2.753281, 2.930847>,  <5.036509, 2.985785, 2.965989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.084540, 2.753281, 2.930847>,  <5.164593, 2.365774, 2.872277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.084540, 2.753281, 2.930847> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759007, 0.247800, -0.602083,
		-0.619561, -0.009359, -0.784893,
		-0.200131, 0.968766, 0.146424,
		5.024501, 3.043911, 2.974774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.274677, 2.675752, 2.249142>,  <5.164593, 2.365774, 2.872277>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.274677, 2.675752, 2.249142> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.319253, 2.964531, 2.522308>,  <5.345999, 3.137798, 2.686208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.319253, 2.964531, 2.522308>,  <5.274677, 2.675752, 2.249142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.319253, 2.964531, 2.522308> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853557, 0.282397, -0.437826,
		-0.508940, 0.631699, -0.584753,
		0.111441, 0.721948, 0.682915,
		5.352686, 3.181115, 2.727183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.536272, 3.255650, 1.816617>,  <5.274677, 2.675752, 2.249142>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.536272, 3.255650, 1.816617> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.593064, 3.393448, 2.187813>,  <5.627140, 3.476127, 2.410530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.593064, 3.393448, 2.187813>,  <5.536272, 3.255650, 1.816617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.593064, 3.393448, 2.187813> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959147, 0.183871, -0.215006,
		-0.244699, 0.920606, -0.304316,
		0.141981, 0.344495, 0.927989,
		5.635659, 3.496797, 2.466210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.714862, 3.940407, 1.695006>,  <5.536272, 3.255650, 1.816617>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.714862, 3.940407, 1.695006> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.843259, 3.832802, 2.058235>,  <5.920298, 3.768239, 2.276173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.843259, 3.832802, 2.058235>,  <5.714862, 3.940407, 1.695006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.843259, 3.832802, 2.058235> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938033, 0.222531, -0.265659,
		-0.130609, 0.937076, 0.323773,
		0.320992, -0.269012, 0.908073,
		5.939557, 3.752098, 2.330657>
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
