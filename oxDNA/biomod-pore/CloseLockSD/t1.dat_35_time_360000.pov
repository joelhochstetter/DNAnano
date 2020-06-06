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
	location <25.469, 94.9851, 44.8844>
	look_at <25.469, 29.3977, 32.8955>
	direction <0, -65.5874, -11.9889>
	angle 67.0682
}


# declare cpy_camera_pos = <25.469, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 28
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16351, -0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16351, 0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<4.330069, 15.126629, 15.413297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.431026, 15.024364, 15.040001>,  <4.491601, 14.963004, 14.816024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.431026, 15.024364, 15.040001>,  <4.330069, 15.126629, 15.413297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.431026, 15.024364, 15.040001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219990, 0.924046, -0.312640,
		0.942285, 0.284211, 0.176980,
		0.252394, -0.255663, -0.933238,
		4.506744, 14.947664, 14.760030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.037165, 15.343890, 15.106806>,  <4.330069, 15.126629, 15.413297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.037165, 15.343890, 15.106806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.721965, 15.331564, 14.860844>,  <4.532845, 15.324168, 14.713266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.721965, 15.331564, 14.860844>,  <5.037165, 15.343890, 15.106806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.721965, 15.331564, 14.860844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052148, 0.998498, 0.016787,
		0.613464, 0.045295, -0.788423,
		-0.787999, -0.030816, -0.614905,
		4.485566, 15.322319, 14.676373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.649948, 15.851648, 15.262268>,  <5.037165, 15.343890, 15.106806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.649948, 15.851648, 15.262268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.783560, 15.476134, 15.228545>,  <5.863727, 15.250826, 15.208311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.783560, 15.476134, 15.228545>,  <5.649948, 15.851648, 15.262268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.783560, 15.476134, 15.228545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192796, -0.019504, 0.981045,
		-0.922634, -0.343952, 0.174479,
		0.334029, -0.938784, -0.084308,
		5.883769, 15.194499, 15.203253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.976829, 16.001312, 14.741357>,  <5.649948, 15.851648, 15.262268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.976829, 16.001312, 14.741357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.323148, 16.055172, 14.934132>,  <6.530939, 16.087488, 15.049797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.323148, 16.055172, 14.934132>,  <5.976829, 16.001312, 14.741357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.323148, 16.055172, 14.934132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366919, 0.484040, -0.794403,
		-0.340242, 0.864624, 0.369676,
		0.865798, 0.134648, 0.481938,
		6.582887, 16.095566, 15.078712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.193143, 16.685280, 14.768866>,  <5.976829, 16.001312, 14.741357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.193143, 16.685280, 14.768866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.524169, 16.461338, 14.785355>,  <6.722785, 16.326973, 14.795248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.524169, 16.461338, 14.785355>,  <6.193143, 16.685280, 14.768866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.524169, 16.461338, 14.785355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323738, 0.415974, -0.849799,
		0.458615, 0.716610, 0.525492,
		0.827566, -0.559853, 0.041222,
		6.772439, 16.293383, 14.797721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.770612, 17.131531, 14.830683>,  <6.193143, 16.685280, 14.768866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.770612, 17.131531, 14.830683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.929763, 16.805719, 14.661812>,  <7.025254, 16.610231, 14.560490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.929763, 16.805719, 14.661812>,  <6.770612, 17.131531, 14.830683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.929763, 16.805719, 14.661812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276289, 0.545187, -0.791477,
		0.874847, 0.198269, 0.441964,
		0.397878, -0.814531, -0.422176,
		7.049126, 16.561359, 14.535159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.337357, 17.401814, 14.582450>,  <6.770612, 17.131531, 14.830683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.337357, 17.401814, 14.582450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.280529, 17.051844, 14.397269>,  <7.246432, 16.841862, 14.286160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.280529, 17.051844, 14.397269>,  <7.337357, 17.401814, 14.582450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.280529, 17.051844, 14.397269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456136, 0.357214, -0.815069,
		0.878497, -0.326965, 0.348335,
		-0.142069, -0.874924, -0.462952,
		7.237908, 16.789366, 14.258384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.022526, 17.263796, 14.164185>,  <7.337357, 17.401814, 14.582450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.022526, 17.263796, 14.164185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.739250, 17.021889, 14.018460>,  <7.569284, 16.876743, 13.931026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.739250, 17.021889, 14.018460>,  <8.022526, 17.263796, 14.164185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.739250, 17.021889, 14.018460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262109, 0.253918, -0.931034,
		0.655565, -0.754838, -0.021306,
		-0.708190, -0.604769, -0.364310,
		7.526793, 16.840458, 13.909167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.372907, 16.625235, 13.857465>,  <8.022526, 17.263796, 14.164185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.372907, 16.625235, 13.857465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.008147, 16.674583, 13.700891>,  <7.789292, 16.704193, 13.606946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.008147, 16.674583, 13.700891>,  <8.372907, 16.625235, 13.857465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.008147, 16.674583, 13.700891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410417, 0.273872, -0.869800,
		-0.000108, -0.953820, -0.300378,
		-0.911898, 0.123374, -0.391435,
		7.734578, 16.711596, 13.583460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.340829, 16.201981, 13.271375>,  <8.372907, 16.625235, 13.857465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.340829, 16.201981, 13.271375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.060131, 16.483372, 13.226340>,  <7.891713, 16.652206, 13.199320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.060131, 16.483372, 13.226340>,  <8.340829, 16.201981, 13.271375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.060131, 16.483372, 13.226340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304001, 0.152756, -0.940345,
		-0.644313, -0.694108, -0.321054,
		-0.701744, 0.703477, -0.112587,
		7.849608, 16.694414, 13.192564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.905593, 15.992105, 12.671556>,  <8.340829, 16.201981, 13.271375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.905593, 15.992105, 12.671556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.837885, 16.383179, 12.721323>,  <7.797261, 16.617823, 12.751184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.837885, 16.383179, 12.721323>,  <7.905593, 15.992105, 12.671556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.837885, 16.383179, 12.721323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089404, 0.140953, -0.985971,
		-0.981506, -0.155771, -0.111268,
		-0.169269, 0.977685, 0.124420,
		7.787105, 16.676485, 12.758649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.475365, 16.198471, 12.084101>,  <7.905593, 15.992105, 12.671556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.475365, 16.198471, 12.084101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.594698, 16.552408, 12.227236>,  <7.666297, 16.764771, 12.313117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.594698, 16.552408, 12.227236>,  <7.475365, 16.198471, 12.084101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.594698, 16.552408, 12.227236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131093, 0.409343, -0.902913,
		-0.945417, 0.222457, 0.238117,
		0.298331, 0.884845, 0.357837,
		7.684197, 16.817862, 12.334587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.033673, 16.790443, 11.797627>,  <7.475365, 16.198471, 12.084101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.033673, 16.790443, 11.797627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.383761, 16.936199, 11.924883>,  <7.593813, 17.023653, 12.001236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.383761, 16.936199, 11.924883>,  <7.033673, 16.790443, 11.797627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.383761, 16.936199, 11.924883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079003, 0.541171, -0.837193,
		-0.477232, 0.757861, 0.444855,
		0.875219, 0.364391, 0.318137,
		7.646327, 17.045517, 12.020324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.889424, 17.418079, 11.673114>,  <7.033673, 16.790443, 11.797627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.889424, 17.418079, 11.673114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.286156, 17.367147, 11.676278>,  <7.524195, 17.336588, 11.678177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.286156, 17.367147, 11.676278>,  <6.889424, 17.418079, 11.673114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.286156, 17.367147, 11.676278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064078, 0.443602, -0.893930,
		0.110314, 0.887133, 0.448137,
		0.991829, -0.127329, 0.007910,
		7.583704, 17.328949, 11.678651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.148752, 17.970526, 11.321188>,  <6.889424, 17.418079, 11.673114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.148752, 17.970526, 11.321188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.466215, 17.727341, 11.312333>,  <7.656692, 17.581430, 11.307020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.466215, 17.727341, 11.312333>,  <7.148752, 17.970526, 11.321188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.466215, 17.727341, 11.312333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233447, 0.337950, -0.911752,
		0.561793, 0.718450, 0.410143,
		0.793657, -0.607963, -0.022138,
		7.704312, 17.544952, 11.305692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.750024, 18.318155, 11.076980>,  <7.148752, 17.970526, 11.321188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.750024, 18.318155, 11.076980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.903132, 17.957323, 10.997244>,  <7.994998, 17.740824, 10.949403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.903132, 17.957323, 10.997244>,  <7.750024, 18.318155, 11.076980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.903132, 17.957323, 10.997244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366413, 0.346313, -0.863602,
		0.848073, 0.257521, 0.463093,
		0.382771, -0.902081, -0.199340,
		8.017963, 17.686699, 10.937442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.386382, 18.387281, 10.867788>,  <7.750024, 18.318155, 11.076980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.386382, 18.387281, 10.867788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.293056, 18.035086, 10.702719>,  <8.237062, 17.823769, 10.603677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.293056, 18.035086, 10.702719>,  <8.386382, 18.387281, 10.867788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.293056, 18.035086, 10.702719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514466, 0.248355, -0.820758,
		0.825161, -0.403801, 0.395038,
		-0.233313, -0.880491, -0.412675,
		8.223063, 17.770939, 10.578917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.024257, 18.225561, 10.468282>,  <8.386382, 18.387281, 10.867788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.024257, 18.225561, 10.468282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.747550, 17.974522, 10.325409>,  <8.581526, 17.823898, 10.239685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.747550, 17.974522, 10.325409>,  <9.024257, 18.225561, 10.468282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.747550, 17.974522, 10.325409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393193, 0.087515, -0.915282,
		0.605689, -0.773602, 0.186228,
		-0.691766, -0.627599, -0.357182,
		8.540020, 17.786242, 10.218254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.447624, 17.730278, 10.136320>,  <9.024257, 18.225561, 10.468282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.447624, 17.730278, 10.136320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.077817, 17.751131, 9.985298>,  <8.855932, 17.763643, 9.894685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.077817, 17.751131, 9.985298>,  <9.447624, 17.730278, 10.136320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.077817, 17.751131, 9.985298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380396, 0.064438, -0.922576,
		-0.023771, -0.996559, -0.079406,
		-0.924518, 0.052137, -0.377556,
		8.800462, 17.766771, 9.872031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.377752, 17.229988, 9.557495>,  <9.447624, 17.730278, 10.136320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.377752, 17.229988, 9.557495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.118130, 17.529694, 9.504843>,  <8.962357, 17.709517, 9.473251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.118130, 17.529694, 9.504843>,  <9.377752, 17.229988, 9.557495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.118130, 17.529694, 9.504843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309622, 0.102133, -0.945359,
		-0.694882, -0.654346, -0.298279,
		-0.649056, 0.749266, -0.131630,
		8.923413, 17.754473, 9.465354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.445868, 17.323156, 8.808517>,  <9.377752, 17.229988, 9.557495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.445868, 17.323156, 8.808517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.200153, 17.625734, 8.898356>,  <9.052725, 17.807281, 8.952260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.200153, 17.625734, 8.898356>,  <9.445868, 17.323156, 8.808517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.200153, 17.625734, 8.898356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256081, 0.460334, -0.850009,
		-0.746376, -0.464632, -0.476487,
		-0.614285, 0.756445, 0.224599,
		9.015868, 17.852669, 8.965736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.080379, 17.485725, 8.211769>,  <9.445868, 17.323156, 8.808517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.080379, 17.485725, 8.211769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.049816, 17.822031, 8.426162>,  <9.031478, 18.023815, 8.554798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.049816, 17.822031, 8.426162>,  <9.080379, 17.485725, 8.211769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.049816, 17.822031, 8.426162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344879, 0.526659, -0.776974,
		-0.935532, 0.125482, -0.330203,
		-0.076408, 0.840764, 0.535983,
		9.026894, 18.074261, 8.586957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.770823, 18.064766, 7.797227>,  <9.080379, 17.485725, 8.211769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.770823, 18.064766, 7.797227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.951049, 18.280632, 8.081693>,  <9.059184, 18.410152, 8.252372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.951049, 18.280632, 8.081693>,  <8.770823, 18.064766, 7.797227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.951049, 18.280632, 8.081693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230612, 0.699210, -0.676700,
		-0.862445, 0.468899, 0.190585,
		0.450563, 0.539665, 0.711164,
		9.086218, 18.442532, 8.295042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.685637, 18.729292, 7.627700>,  <8.770823, 18.064766, 7.797227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.685637, 18.729292, 7.627700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.010118, 18.722870, 7.861518>,  <9.204806, 18.719017, 8.001809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.010118, 18.722870, 7.861518>,  <8.685637, 18.729292, 7.627700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.010118, 18.722870, 7.861518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446127, 0.663243, -0.600898,
		-0.378049, 0.748232, 0.545186,
		0.811203, -0.016053, 0.584545,
		9.253478, 18.718054, 8.036881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.019667, 19.485359, 7.618822>,  <8.685637, 18.729292, 7.627700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.019667, 19.485359, 7.618822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.312522, 19.243513, 7.744307>,  <9.488235, 19.098406, 7.819597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.312522, 19.243513, 7.744307>,  <9.019667, 19.485359, 7.618822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.312522, 19.243513, 7.744307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642063, 0.458788, -0.614222,
		0.227440, 0.651118, 0.724097,
		0.732138, -0.604614, 0.313712,
		9.532164, 19.062128, 7.838420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.427714, 19.900290, 7.994057>,  <9.019667, 19.485359, 7.618822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.427714, 19.900290, 7.994057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.607785, 19.602255, 7.797207>,  <9.715828, 19.423433, 7.679097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.607785, 19.602255, 7.797207>,  <9.427714, 19.900290, 7.994057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.607785, 19.602255, 7.797207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600966, 0.660439, -0.450177,
		0.660439, -0.093091, 0.745086,
		0.450177, -0.745086, -0.492125,
		9.742838, 19.378729, 7.649570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.101174, 20.011078, 8.108272>,  <9.427714, 19.900290, 7.994057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.101174, 20.011078, 8.108272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.087846, 19.754002, 7.802111>,  <10.079848, 19.599756, 7.618414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.087846, 19.754002, 7.802111>,  <10.101174, 20.011078, 8.108272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.087846, 19.754002, 7.802111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587973, 0.606675, -0.535008,
		0.808194, -0.467863, 0.357668,
		-0.033322, -0.642689, -0.765402,
		10.077849, 19.561195, 7.572490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.849704, 19.838699, 7.875159>,  <10.101174, 20.011078, 8.108272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.849704, 19.838699, 7.875159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.552059, 19.858290, 7.608655>,  <10.373472, 19.870045, 7.448753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.552059, 19.858290, 7.608655>,  <10.849704, 19.838699, 7.875159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.552059, 19.858290, 7.608655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525474, 0.658745, -0.538453,
		0.412523, -0.750771, -0.515915,
		-0.744111, 0.048976, -0.666258,
		10.328826, 19.872982, 7.408778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.047550, 19.534966, 7.178809>,  <10.849704, 19.838699, 7.875159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.047550, 19.534966, 7.178809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.784354, 19.835808, 7.163926>,  <10.626437, 20.016314, 7.154996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.784354, 19.835808, 7.163926>,  <11.047550, 19.534966, 7.178809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.784354, 19.835808, 7.163926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675908, 0.568100, -0.469481,
		-0.331963, -0.334061, -0.882159,
		-0.657989, 0.752108, -0.037206,
		10.586958, 20.061440, 7.152764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.697953, 19.667212, 7.636416>,  <11.047550, 19.534966, 7.178809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.697953, 19.667212, 7.636416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.087197, 19.666414, 7.728549>,  <12.320744, 19.665936, 7.783828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.087197, 19.666414, 7.728549>,  <11.697953, 19.667212, 7.636416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.087197, 19.666414, 7.728549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112199, 0.869209, 0.481547,
		-0.201167, -0.494441, 0.845612,
		0.973110, -0.001995, 0.230332,
		12.379130, 19.665815, 7.797648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.725080, 19.920328, 8.270463>,  <11.697953, 19.667212, 7.636416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.725080, 19.920328, 8.270463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.089219, 19.998169, 8.124368>,  <12.307702, 20.044874, 8.036711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.089219, 19.998169, 8.124368>,  <11.725080, 19.920328, 8.270463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.089219, 19.998169, 8.124368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011944, 0.869822, 0.493220,
		0.413673, -0.453364, 0.789516,
		0.910347, 0.194602, -0.365237,
		12.362323, 20.056549, 8.014796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.277857, 19.991861, 8.747283>,  <11.725080, 19.920328, 8.270463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.277857, 19.991861, 8.747283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.408720, 20.201357, 8.432661>,  <12.487238, 20.327053, 8.243888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.408720, 20.201357, 8.432661>,  <12.277857, 19.991861, 8.747283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.408720, 20.201357, 8.432661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091949, 0.810766, 0.578104,
		0.940485, -0.261455, 0.217092,
		0.327158, 0.523737, -0.786554,
		12.506867, 20.358479, 8.196695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.585898, 19.774370, 9.399942>,  <12.277857, 19.991861, 8.747283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.585898, 19.774370, 9.399942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.691044, 20.039812, 9.680094>,  <12.754131, 20.199078, 9.848185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.691044, 20.039812, 9.680094>,  <12.585898, 19.774370, 9.399942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.691044, 20.039812, 9.680094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235954, -0.748079, 0.620244,
		0.935537, 0.002218, -0.353223,
		0.262863, 0.663606, 0.700379,
		12.769902, 20.238894, 9.890207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.239544, 19.620819, 9.801678>,  <12.585898, 19.774370, 9.399942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.239544, 19.620819, 9.801678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.995670, 19.835686, 10.034826>,  <12.849346, 19.964605, 10.174715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.995670, 19.835686, 10.034826>,  <13.239544, 19.620819, 9.801678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.995670, 19.835686, 10.034826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065130, -0.698915, 0.712234,
		0.789964, 0.472200, 0.391132,
		-0.609684, 0.537165, 0.582872,
		12.812765, 19.996836, 10.209688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.551497, 19.723118, 10.383400>,  <13.239544, 19.620819, 9.801678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.551497, 19.723118, 10.383400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.155704, 19.726517, 10.441159>,  <12.918228, 19.728556, 10.475815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.155704, 19.726517, 10.441159>,  <13.551497, 19.723118, 10.383400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.155704, 19.726517, 10.441159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095118, -0.713877, 0.693781,
		0.108977, 0.700219, 0.705561,
		-0.989483, 0.008495, 0.144399,
		12.858860, 19.729065, 10.484479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.474199, 19.340767, 10.914160>,  <13.551497, 19.723118, 10.383400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.474199, 19.340767, 10.914160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.076694, 19.345522, 10.869804>,  <12.838192, 19.348375, 10.843191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.076694, 19.345522, 10.869804>,  <13.474199, 19.340767, 10.914160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.076694, 19.345522, 10.869804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095401, -0.605553, 0.790066,
		-0.057758, 0.795716, 0.602910,
		-0.993762, 0.011886, -0.110887,
		12.778566, 19.349087, 10.836538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.236128, 19.516153, 11.666680>,  <13.474199, 19.340767, 10.914160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.236128, 19.516153, 11.666680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.929822, 19.351814, 11.468768>,  <12.746038, 19.253212, 11.350020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.929822, 19.351814, 11.468768>,  <13.236128, 19.516153, 11.666680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.929822, 19.351814, 11.468768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229312, -0.544349, 0.806908,
		-0.600849, 0.731362, 0.322631,
		-0.765765, -0.410846, -0.494782,
		12.700092, 19.228559, 11.320333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.687842, 19.561193, 12.181156>,  <13.236128, 19.516153, 11.666680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.687842, 19.561193, 12.181156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.550402, 19.297949, 11.913177>,  <12.467937, 19.140001, 11.752390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.550402, 19.297949, 11.913177>,  <12.687842, 19.561193, 12.181156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.550402, 19.297949, 11.913177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327164, -0.584806, 0.742270,
		-0.880285, 0.474228, -0.014370,
		-0.343601, -0.658111, -0.669947,
		12.447321, 19.100515, 11.712193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.862273, 19.432598, 12.309347>,  <12.687842, 19.561193, 12.181156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.862273, 19.432598, 12.309347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.040982, 19.126860, 12.123372>,  <12.148208, 18.943417, 12.011787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.040982, 19.126860, 12.123372>,  <11.862273, 19.432598, 12.309347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.040982, 19.126860, 12.123372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430913, -0.639283, 0.636891,
		-0.784033, -0.084199, -0.614982,
		0.446774, -0.764347, -0.464936,
		12.175014, 18.897556, 11.983891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.331590, 18.902901, 12.262626>,  <11.862273, 19.432598, 12.309347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.331590, 18.902901, 12.262626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.664748, 18.683098, 12.236316>,  <11.864643, 18.551216, 12.220530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.664748, 18.683098, 12.236316>,  <11.331590, 18.902901, 12.262626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.664748, 18.683098, 12.236316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416382, -0.700493, 0.579600,
		-0.364569, -0.455359, -0.812243,
		0.832896, -0.549508, -0.065774,
		11.914617, 18.518246, 12.216583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.069416, 18.268076, 12.304496>,  <11.331590, 18.902901, 12.262626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.069416, 18.268076, 12.304496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.453430, 18.207933, 12.398922>,  <11.683839, 18.171848, 12.455578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.453430, 18.207933, 12.398922>,  <11.069416, 18.268076, 12.304496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.453430, 18.207933, 12.398922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264133, -0.765659, 0.586515,
		0.092560, -0.625427, -0.774773,
		0.960034, -0.150355, 0.236065,
		11.741441, 18.162827, 12.469742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.033418, 17.630920, 12.510867>,  <11.069416, 18.268076, 12.304496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.033418, 17.630920, 12.510867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.398238, 17.717684, 12.650073>,  <11.617130, 17.769741, 12.733597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.398238, 17.717684, 12.650073>,  <11.033418, 17.630920, 12.510867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.398238, 17.717684, 12.650073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071950, -0.750850, 0.656542,
		0.403717, -0.623839, -0.669207,
		0.912050, 0.216908, 0.348016,
		11.671853, 17.782757, 12.754478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.353901, 16.997168, 12.455420>,  <11.033418, 17.630920, 12.510867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.353901, 16.997168, 12.455420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.544794, 17.208839, 12.736053>,  <11.659330, 17.335842, 12.904432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.544794, 17.208839, 12.736053>,  <11.353901, 16.997168, 12.455420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.544794, 17.208839, 12.736053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170413, -0.727479, 0.664630,
		0.862095, -0.436742, -0.256999,
		0.477234, 0.529178, 0.701583,
		11.687964, 17.367594, 12.946527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.646573, 16.538420, 12.842632>,  <11.353901, 16.997168, 12.455420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.646573, 16.538420, 12.842632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.649341, 16.852884, 13.089826>,  <11.651001, 17.041563, 13.238142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.649341, 16.852884, 13.089826>,  <11.646573, 16.538420, 12.842632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.649341, 16.852884, 13.089826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320468, -0.583660, 0.746084,
		0.947234, -0.203206, 0.247902,
		0.006918, 0.786160, 0.617984,
		11.651416, 17.088732, 13.275221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.986738, 16.330225, 13.390616>,  <11.646573, 16.538420, 12.842632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.986738, 16.330225, 13.390616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.768606, 16.638302, 13.522931>,  <11.637727, 16.823149, 13.602320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.768606, 16.638302, 13.522931>,  <11.986738, 16.330225, 13.390616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.768606, 16.638302, 13.522931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267100, -0.533725, 0.802369,
		0.794527, 0.349203, 0.496774,
		-0.545330, 0.770192, 0.330786,
		11.605007, 16.869360, 13.622167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.177811, 16.377069, 14.106284>,  <11.986738, 16.330225, 13.390616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.177811, 16.377069, 14.106284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.815145, 16.536518, 14.051062>,  <11.597546, 16.632187, 14.017928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.815145, 16.536518, 14.051062>,  <12.177811, 16.377069, 14.106284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.815145, 16.536518, 14.051062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359204, -0.557899, 0.748145,
		0.221207, 0.727907, 0.649015,
		-0.906664, 0.398623, -0.138056,
		11.543146, 16.656105, 14.009645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.780994, 16.262602, 14.795412>,  <12.177811, 16.377069, 14.106284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.780994, 16.262602, 14.795412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.501659, 16.329287, 14.516979>,  <11.334058, 16.369297, 14.349919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.501659, 16.329287, 14.516979>,  <11.780994, 16.262602, 14.795412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.501659, 16.329287, 14.516979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666528, -0.505928, 0.547519,
		-0.260890, 0.846312, 0.464427,
		-0.698338, 0.166711, -0.696083,
		11.292158, 16.379299, 14.308154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.205734, 16.604221, 15.124559>,  <11.780994, 16.262602, 14.795412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.205734, 16.604221, 15.124559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.034813, 16.442327, 14.801177>,  <10.932261, 16.345192, 14.607147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.034813, 16.442327, 14.801177>,  <11.205734, 16.604221, 15.124559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.034813, 16.442327, 14.801177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608507, -0.532608, 0.588258,
		-0.668679, 0.743316, -0.018697,
		-0.427304, -0.404733, -0.808457,
		10.906622, 16.320908, 14.558640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.475740, 16.682917, 15.155895>,  <11.205734, 16.604221, 15.124559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.475740, 16.682917, 15.155895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.486557, 16.378973, 14.896087>,  <10.493047, 16.196606, 14.740201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.486557, 16.378973, 14.896087>,  <10.475740, 16.682917, 15.155895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.486557, 16.378973, 14.896087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722517, -0.463891, 0.512615,
		-0.690824, 0.455429, -0.561557,
		0.027042, -0.759861, -0.649523,
		10.494670, 16.151014, 14.701230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.781260, 16.547993, 14.895438>,  <10.475740, 16.682917, 15.155895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.781260, 16.547993, 14.895438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.980530, 16.212576, 14.807198>,  <10.100092, 16.011326, 14.754253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.980530, 16.212576, 14.807198>,  <9.781260, 16.547993, 14.895438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.980530, 16.212576, 14.807198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745163, -0.544130, 0.385559,
		-0.443345, -0.027691, -0.895923,
		0.498175, -0.838544, -0.220603,
		10.129982, 15.961013, 14.741016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.357644, 16.190697, 14.569371>,  <9.781260, 16.547993, 14.895438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.357644, 16.190697, 14.569371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.620604, 15.929146, 14.719182>,  <9.778379, 15.772215, 14.809069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.620604, 15.929146, 14.719182>,  <9.357644, 16.190697, 14.569371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.620604, 15.929146, 14.719182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750534, -0.523806, 0.402897,
		-0.067266, -0.545960, -0.835107,
		0.657400, -0.653877, 0.374527,
		9.817823, 15.732983, 14.831540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.305746, 15.639421, 14.236028>,  <9.357644, 16.190697, 14.569371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.305746, 15.639421, 14.236028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.461386, 15.527463, 14.587086>,  <9.554770, 15.460288, 14.797721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.461386, 15.527463, 14.587086>,  <9.305746, 15.639421, 14.236028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.461386, 15.527463, 14.587086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.882130, -0.387716, 0.267437,
		0.265423, -0.878256, -0.397765,
		0.389098, -0.279896, 0.877645,
		9.578115, 15.443494, 14.850379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.959796, 14.992499, 14.393597>,  <9.305746, 15.639421, 14.236028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.959796, 14.992499, 14.393597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.128097, 15.100212, 14.740111>,  <9.229077, 15.164840, 14.948021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.128097, 15.100212, 14.740111>,  <8.959796, 14.992499, 14.393597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.128097, 15.100212, 14.740111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806463, -0.326273, 0.493116,
		0.415434, -0.906109, 0.079886,
		0.420752, 0.269282, 0.866288,
		9.254322, 15.180997, 14.999998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.828346, 14.486758, 14.850714>,  <8.959796, 14.992499, 14.393597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.828346, 14.486758, 14.850714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.906047, 14.752161, 15.139719>,  <8.952667, 14.911403, 15.313122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.906047, 14.752161, 15.139719>,  <8.828346, 14.486758, 14.850714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.906047, 14.752161, 15.139719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808278, -0.309085, 0.501152,
		0.555836, -0.681340, 0.476258,
		0.194251, 0.663507, 0.722513,
		8.964322, 14.951213, 15.356473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.814653, 14.111808, 15.515708>,  <8.828346, 14.486758, 14.850714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.814653, 14.111808, 15.515708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.763116, 14.496980, 15.610507>,  <8.732194, 14.728083, 15.667386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.763116, 14.496980, 15.610507>,  <8.814653, 14.111808, 15.515708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.763116, 14.496980, 15.610507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827254, -0.236158, 0.509783,
		0.546854, -0.130375, 0.827014,
		-0.128843, 0.962928, 0.236998,
		8.724463, 14.785858, 15.681606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.737887, 14.120324, 16.296247>,  <8.814653, 14.111808, 15.515708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.737887, 14.120324, 16.296247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.570246, 14.457595, 16.161547>,  <8.469661, 14.659958, 16.080727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.570246, 14.457595, 16.161547>,  <8.737887, 14.120324, 16.296247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.570246, 14.457595, 16.161547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787050, -0.152474, 0.597750,
		0.452663, 0.515561, 0.727525,
		-0.419105, 0.843178, -0.336753,
		8.444514, 14.710548, 16.060520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.766245, 14.526867, 16.865503>,  <8.737887, 14.120324, 16.296247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.766245, 14.526867, 16.865503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.469327, 14.550237, 16.598495>,  <8.291176, 14.564259, 16.438290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.469327, 14.550237, 16.598495>,  <8.766245, 14.526867, 16.865503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.469327, 14.550237, 16.598495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667761, -0.147195, 0.729677,
		-0.055625, 0.987380, 0.148276,
		-0.742295, 0.058425, -0.667522,
		8.246638, 14.567764, 16.398239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.271149, 14.146687, 16.952534>,  <8.766245, 14.526867, 16.865503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.271149, 14.146687, 16.952534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.539026, 14.418122, 16.831850>,  <9.699753, 14.580983, 16.759439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.539026, 14.418122, 16.831850>,  <9.271149, 14.146687, 16.952534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.539026, 14.418122, 16.831850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613247, -0.276183, 0.740034,
		0.418852, -0.680618, -0.601101,
		0.669695, 0.678589, -0.301707,
		9.739935, 14.621698, 16.741339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.763397, 14.226528, 17.561007>,  <9.271149, 14.146687, 16.952534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.763397, 14.226528, 17.561007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.935730, 14.422414, 17.257807>,  <10.039129, 14.539946, 17.075888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.935730, 14.422414, 17.257807>,  <9.763397, 14.226528, 17.561007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.935730, 14.422414, 17.257807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795673, 0.190163, 0.575102,
		0.425780, -0.850892, -0.307725,
		0.430832, 0.489715, -0.757999,
		10.064980, 14.569328, 17.030407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.276130, 14.417492, 17.890173>,  <9.763397, 14.226528, 17.561007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.276130, 14.417492, 17.890173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.358785, 14.596921, 17.542360>,  <10.408378, 14.704578, 17.333673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.358785, 14.596921, 17.542360>,  <10.276130, 14.417492, 17.890173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.358785, 14.596921, 17.542360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809134, 0.421314, 0.409630,
		0.550094, -0.788212, -0.275896,
		0.206637, 0.448572, -0.869531,
		10.420775, 14.731493, 17.281502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.081702, 14.265166, 17.768852>,  <10.276130, 14.417492, 17.890173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.081702, 14.265166, 17.768852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.954181, 14.583827, 17.563440>,  <10.877668, 14.775023, 17.440193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.954181, 14.583827, 17.563440>,  <11.081702, 14.265166, 17.768852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.954181, 14.583827, 17.563440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929231, 0.369481, -0.003688,
		0.186801, -0.478362, -0.858065,
		-0.318803, 0.796651, -0.513528,
		10.858540, 14.822823, 17.409382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.429771, 14.303779, 17.126211>,  <11.081702, 14.265166, 17.768852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.429771, 14.303779, 17.126211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.319014, 14.651779, 17.289392>,  <11.252559, 14.860579, 17.387302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.319014, 14.651779, 17.289392>,  <11.429771, 14.303779, 17.126211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.319014, 14.651779, 17.289392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960248, 0.234895, 0.150823,
		0.035389, 0.433500, -0.900458,
		-0.276895, 0.870001, 0.407955,
		11.235945, 14.912780, 17.411779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.750034, 15.010705, 17.071112>,  <11.429771, 14.303779, 17.126211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.750034, 15.010705, 17.071112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.666197, 14.835423, 17.420750>,  <11.615894, 14.730253, 17.630533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.666197, 14.835423, 17.420750>,  <11.750034, 15.010705, 17.071112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.666197, 14.835423, 17.420750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764125, 0.484354, 0.426044,
		-0.610068, 0.757216, 0.233327,
		-0.209594, -0.438207, 0.874097,
		11.603318, 14.703960, 17.682980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.724875, 15.489517, 17.606661>,  <11.750034, 15.010705, 17.071112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.724875, 15.489517, 17.606661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.886219, 15.159139, 17.764198>,  <11.983025, 14.960912, 17.858721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.886219, 15.159139, 17.764198>,  <11.724875, 15.489517, 17.606661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.886219, 15.159139, 17.764198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622267, 0.563158, 0.543725,
		-0.670885, 0.025761, 0.741114,
		0.403358, -0.825947, 0.393845,
		12.007226, 14.911354, 17.882351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.718043, 15.574277, 18.253969>,  <11.724875, 15.489517, 17.606661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.718043, 15.574277, 18.253969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.019644, 15.320931, 18.184305>,  <12.200604, 15.168924, 18.142506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.019644, 15.320931, 18.184305>,  <11.718043, 15.574277, 18.253969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.019644, 15.320931, 18.184305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632074, 0.627404, 0.454804,
		-0.178787, -0.453006, 0.873396,
		0.754001, -0.633364, -0.174162,
		12.245844, 15.130922, 18.132057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.066197, 15.495052, 18.955177>,  <11.718043, 15.574277, 18.253969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.066197, 15.495052, 18.955177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.316292, 15.360415, 18.673529>,  <12.466349, 15.279634, 18.504539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.316292, 15.360415, 18.673529>,  <12.066197, 15.495052, 18.955177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.316292, 15.360415, 18.673529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763501, 0.450735, 0.462498,
		0.161698, -0.826766, 0.538805,
		0.625237, -0.336593, -0.704119,
		12.503862, 15.259438, 18.462294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.669845, 15.269423, 19.329634>,  <12.066197, 15.495052, 18.955177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.669845, 15.269423, 19.329634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.800999, 15.363605, 18.963671>,  <12.879691, 15.420114, 18.744093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.800999, 15.363605, 18.963671>,  <12.669845, 15.269423, 19.329634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.800999, 15.363605, 18.963671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806983, 0.433724, 0.400827,
		0.491193, -0.869738, -0.047797,
		0.327884, 0.235455, -0.914906,
		12.899364, 15.434240, 18.689199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.387635, 15.264783, 19.343124>,  <12.669845, 15.269423, 19.329634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.387635, 15.264783, 19.343124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.318785, 15.441159, 18.990774>,  <13.277474, 15.546986, 18.779364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.318785, 15.441159, 18.990774>,  <13.387635, 15.264783, 19.343124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.318785, 15.441159, 18.990774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831143, 0.544990, 0.110397,
		0.528748, -0.713131, -0.460293,
		-0.172127, 0.440942, -0.880876,
		13.267146, 15.573442, 18.726511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.100253, 15.364510, 19.007231>,  <13.387635, 15.264783, 19.343124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.100253, 15.364510, 19.007231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.846010, 15.621827, 18.836504>,  <13.693464, 15.776217, 18.734068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.846010, 15.621827, 18.836504>,  <14.100253, 15.364510, 19.007231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.846010, 15.621827, 18.836504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601285, 0.759267, 0.248937,
		0.484209, -0.098413, -0.869400,
		-0.635608, 0.643295, -0.426818,
		13.655328, 15.814816, 18.708458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.493502, 15.879222, 18.619926>,  <14.100253, 15.364510, 19.007231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.493502, 15.879222, 18.619926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.134635, 16.047466, 18.673855>,  <13.919314, 16.148413, 18.706211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.134635, 16.047466, 18.673855>,  <14.493502, 15.879222, 18.619926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.134635, 16.047466, 18.673855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440836, 0.833732, 0.332497,
		0.027447, 0.357740, -0.933418,
		-0.897168, 0.420611, 0.134822,
		13.865484, 16.173649, 18.714302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.568458, 16.587891, 18.301151>,  <14.493502, 15.879222, 18.619926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.568458, 16.587891, 18.301151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.233047, 16.610174, 18.517952>,  <14.031799, 16.623545, 18.648033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.233047, 16.610174, 18.517952>,  <14.568458, 16.587891, 18.301151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.233047, 16.610174, 18.517952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275199, 0.901851, 0.333063,
		-0.470251, 0.428442, -0.771558,
		-0.838528, 0.055709, 0.542003,
		13.981488, 16.626886, 18.680553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.283820, 17.196646, 18.117613>,  <14.568458, 16.587891, 18.301151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.283820, 17.196646, 18.117613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.130024, 17.130707, 18.480928>,  <14.037746, 17.091143, 18.698917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.130024, 17.130707, 18.480928>,  <14.283820, 17.196646, 18.117613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.130024, 17.130707, 18.480928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319212, 0.899486, 0.298377,
		-0.866182, 0.404660, -0.293221,
		-0.384489, -0.164849, 0.908291,
		14.014677, 17.081253, 18.753416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.970003, 17.788580, 18.256098>,  <14.283820, 17.196646, 18.117613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.970003, 17.788580, 18.256098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.984055, 17.599501, 18.608307>,  <13.992486, 17.486053, 18.819633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.984055, 17.599501, 18.608307>,  <13.970003, 17.788580, 18.256098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.984055, 17.599501, 18.608307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243984, 0.858465, 0.451120,
		-0.969143, 0.198987, 0.145488,
		0.035129, -0.472697, 0.880525,
		13.994594, 17.457691, 18.872465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.442446, 18.025566, 18.758512>,  <13.970003, 17.788580, 18.256098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.442446, 18.025566, 18.758512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.770578, 17.879433, 18.934507>,  <13.967458, 17.791754, 19.040104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.770578, 17.879433, 18.934507>,  <13.442446, 18.025566, 18.758512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.770578, 17.879433, 18.934507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203560, 0.905501, 0.372332,
		-0.534435, -0.215871, 0.817178,
		0.820331, -0.365332, 0.439989,
		14.016678, 17.769833, 19.066504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.273827, 18.344387, 19.392166>,  <13.442446, 18.025566, 18.758512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.273827, 18.344387, 19.392166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.646702, 18.201042, 19.412575>,  <13.870427, 18.115036, 19.424820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.646702, 18.201042, 19.412575>,  <13.273827, 18.344387, 19.392166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.646702, 18.201042, 19.412575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322073, 0.885480, 0.334952,
		-0.165211, -0.295806, 0.940853,
		0.932188, -0.358361, 0.051020,
		13.926358, 18.093534, 19.427881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.462900, 18.517229, 20.016678>,  <13.273827, 18.344387, 19.392166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.462900, 18.517229, 20.016678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.806969, 18.449068, 19.824400>,  <14.013410, 18.408171, 19.709032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.806969, 18.449068, 19.824400>,  <13.462900, 18.517229, 20.016678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.806969, 18.449068, 19.824400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423520, 0.763779, 0.487106,
		0.284141, -0.622579, 0.729150,
		0.860171, -0.170403, -0.480696,
		14.065020, 18.397947, 19.680191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.917723, 18.420313, 20.484913>,  <13.462900, 18.517229, 20.016678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.917723, 18.420313, 20.484913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.132494, 18.516973, 20.161602>,  <14.261356, 18.574970, 19.967615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.132494, 18.516973, 20.161602>,  <13.917723, 18.420313, 20.484913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.132494, 18.516973, 20.161602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488632, 0.691944, 0.531463,
		0.687717, -0.680306, 0.253438,
		0.536922, 0.241658, -0.808280,
		14.293572, 18.589468, 19.919119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.614428, 18.327225, 20.705296>,  <13.917723, 18.420313, 20.484913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.614428, 18.327225, 20.705296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.596929, 18.593105, 20.406965>,  <14.586430, 18.752634, 20.227966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.596929, 18.593105, 20.406965>,  <14.614428, 18.327225, 20.705296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.596929, 18.593105, 20.406965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384990, 0.700101, 0.601366,
		0.921883, -0.260829, -0.286530,
		-0.043746, 0.664701, -0.745828,
		14.583805, 18.792515, 20.183216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.141488, 18.832186, 20.911961>,  <14.614428, 18.327225, 20.705296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.141488, 18.832186, 20.911961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.924569, 19.023949, 20.635965>,  <14.794418, 19.139006, 20.470367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.924569, 19.023949, 20.635965>,  <15.141488, 18.832186, 20.911961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.924569, 19.023949, 20.635965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126909, 0.858548, 0.496780,
		0.830547, 0.181836, -0.526428,
		-0.542296, 0.479407, -0.689988,
		14.761880, 19.167770, 20.428968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.618660, 19.449406, 20.852640>,  <15.141488, 18.832186, 20.911961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.618660, 19.449406, 20.852640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.258433, 19.509338, 20.689407>,  <15.042297, 19.545298, 20.591467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.258433, 19.509338, 20.689407>,  <15.618660, 19.449406, 20.852640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.258433, 19.509338, 20.689407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085834, 0.858959, 0.504800,
		0.426161, 0.489633, -0.760688,
		-0.900566, 0.149833, -0.408081,
		14.988263, 19.554289, 20.566982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.691161, 20.118221, 20.601967>,  <15.618660, 19.449406, 20.852640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.691161, 20.118221, 20.601967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.300524, 20.036287, 20.628216>,  <15.066141, 19.987127, 20.643965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.300524, 20.036287, 20.628216>,  <15.691161, 20.118221, 20.601967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.300524, 20.036287, 20.628216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165092, 0.909409, 0.381732,
		-0.137871, 0.361963, -0.921940,
		-0.976594, -0.204835, 0.065624,
		15.007545, 19.974836, 20.647903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.264360, 20.671928, 20.356779>,  <15.691161, 20.118221, 20.601967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.264360, 20.671928, 20.356779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.035268, 20.472521, 20.617073>,  <14.897813, 20.352877, 20.773249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.035268, 20.472521, 20.617073>,  <15.264360, 20.671928, 20.356779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.035268, 20.472521, 20.617073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098484, 0.829923, 0.549117,
		-0.813806, 0.250409, -0.524418,
		-0.572731, -0.498521, 0.650735,
		14.863449, 20.322964, 20.812294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.706814, 21.134676, 20.436619>,  <15.264360, 20.671928, 20.356779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.706814, 21.134676, 20.436619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.665683, 20.870016, 20.733709>,  <14.641004, 20.711220, 20.911964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.665683, 20.870016, 20.733709>,  <14.706814, 21.134676, 20.436619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.665683, 20.870016, 20.733709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026799, 0.748257, 0.662867,
		-0.994338, 0.048257, -0.094673,
		-0.102828, -0.661651, 0.742728,
		14.634834, 20.671520, 20.956528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.458750, 21.562563, 20.896069>,  <14.706814, 21.134676, 20.436619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.458750, 21.562563, 20.896069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.509255, 21.221228, 21.098404>,  <14.539558, 21.016426, 21.219805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.509255, 21.221228, 21.098404>,  <14.458750, 21.562563, 20.896069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.509255, 21.221228, 21.098404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038425, 0.505330, 0.862070,
		-0.991252, -0.128285, 0.031015,
		0.126263, -0.853337, 0.505839,
		14.547134, 20.965227, 21.250156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.865331, 21.465147, 21.295551>,  <14.458750, 21.562563, 20.896069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.865331, 21.465147, 21.295551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.214320, 21.337740, 21.443789>,  <14.423714, 21.261295, 21.532730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.214320, 21.337740, 21.443789>,  <13.865331, 21.465147, 21.295551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.214320, 21.337740, 21.443789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081120, 0.653452, 0.752609,
		-0.481881, -0.686694, 0.544282,
		0.872473, -0.318516, 0.370591,
		14.476062, 21.242186, 21.554966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.891195, 21.628920, 22.060869>,  <13.865331, 21.465147, 21.295551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.891195, 21.628920, 22.060869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.247402, 21.447248, 22.071468>,  <14.461126, 21.338245, 22.077827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.247402, 21.447248, 22.071468>,  <13.891195, 21.628920, 22.060869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.247402, 21.447248, 22.071468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214344, 0.470218, 0.856126,
		-0.401295, -0.756714, 0.516087,
		0.890516, -0.454180, 0.026499,
		14.514557, 21.310995, 22.079418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.919707, 21.371309, 22.759087>,  <13.891195, 21.628920, 22.060869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.919707, 21.371309, 22.759087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.278741, 21.434052, 22.594290>,  <14.494162, 21.471697, 22.495411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.278741, 21.434052, 22.594290>,  <13.919707, 21.371309, 22.759087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.278741, 21.434052, 22.594290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236834, 0.616666, 0.750754,
		0.371821, -0.771440, 0.516361,
		0.897585, 0.156854, -0.411993,
		14.548017, 21.481108, 22.470692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.372705, 21.346907, 23.315329>,  <13.919707, 21.371309, 22.759087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.372705, 21.346907, 23.315329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.580201, 21.543612, 23.035591>,  <14.704699, 21.661634, 22.867748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.580201, 21.543612, 23.035591>,  <14.372705, 21.346907, 23.315329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.580201, 21.543612, 23.035591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521052, 0.466675, 0.714646,
		0.677801, -0.735109, -0.014151,
		0.518739, 0.491762, -0.699343,
		14.735823, 21.691139, 22.825788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.041942, 21.371241, 23.557316>,  <14.372705, 21.346907, 23.315329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.041942, 21.371241, 23.557316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.019982, 21.674208, 23.297070>,  <15.006807, 21.855988, 23.140921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.019982, 21.674208, 23.297070>,  <15.041942, 21.371241, 23.557316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.019982, 21.674208, 23.297070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444409, 0.602036, 0.663366,
		0.894140, -0.252723, -0.369654,
		-0.054897, 0.757419, -0.650617,
		15.003513, 21.901434, 23.101885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.721887, 21.653120, 23.553001>,  <15.041942, 21.371241, 23.557316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.721887, 21.653120, 23.553001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.461575, 21.934242, 23.438074>,  <15.305387, 22.102915, 23.369118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.461575, 21.934242, 23.438074>,  <15.721887, 21.653120, 23.553001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.461575, 21.934242, 23.438074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495583, 0.679872, 0.540528,
		0.575224, 0.209376, -0.790746,
		-0.650780, 0.702805, -0.287316,
		15.266340, 22.145084, 23.351879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.163002, 22.176304, 23.256693>,  <15.721887, 21.653120, 23.553001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.163002, 22.176304, 23.256693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.813793, 22.346842, 23.351402>,  <15.604268, 22.449165, 23.408228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.813793, 22.346842, 23.351402>,  <16.163002, 22.176304, 23.256693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.813793, 22.346842, 23.351402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482421, 0.683890, 0.547325,
		0.071424, 0.592051, -0.802729,
		-0.873023, 0.426345, 0.236771,
		15.551887, 22.474745, 23.422434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.240923, 22.873619, 23.281048>,  <16.163002, 22.176304, 23.256693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.240923, 22.873619, 23.281048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.911273, 22.834362, 23.504185>,  <15.713484, 22.810808, 23.638067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.911273, 22.834362, 23.504185>,  <16.240923, 22.873619, 23.281048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.911273, 22.834362, 23.504185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320169, 0.731721, 0.601728,
		-0.467239, 0.674502, -0.571606,
		-0.824123, -0.098141, 0.557843,
		15.664036, 22.804920, 23.671537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.994745, 23.638205, 23.559179>,  <16.240923, 22.873619, 23.281048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.994745, 23.638205, 23.559179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.814583, 23.377270, 23.803011>,  <15.706485, 23.220709, 23.949310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.814583, 23.377270, 23.803011>,  <15.994745, 23.638205, 23.559179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.814583, 23.377270, 23.803011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394703, 0.466928, 0.791320,
		-0.800839, 0.597019, 0.047172,
		-0.450407, -0.652339, 0.609579,
		15.679461, 23.181568, 23.985886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.879608, 23.983583, 24.216074>,  <15.994745, 23.638205, 23.559179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.879608, 23.983583, 24.216074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.838875, 23.600489, 24.323677>,  <15.814435, 23.370632, 24.388239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.838875, 23.600489, 24.323677>,  <15.879608, 23.983583, 24.216074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.838875, 23.600489, 24.323677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451413, 0.196485, 0.870414,
		-0.886486, 0.210072, 0.412327,
		-0.101834, -0.957739, 0.269010,
		15.808325, 23.313168, 24.404381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.590828, 23.978218, 24.946957>,  <15.879608, 23.983583, 24.216074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.590828, 23.978218, 24.946957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.752060, 23.621210, 24.866026>,  <15.848799, 23.407005, 24.817467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.752060, 23.621210, 24.866026>,  <15.590828, 23.978218, 24.946957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.752060, 23.621210, 24.866026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575363, 0.075221, 0.814431,
		-0.711676, -0.444692, 0.543843,
		0.403080, -0.892519, -0.202327,
		15.872984, 23.353455, 24.805328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.820993, 23.911438, 25.517105>,  <15.590828, 23.978218, 24.946957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.820993, 23.911438, 25.517105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.006269, 23.636587, 25.293207>,  <16.117435, 23.471678, 25.158869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.006269, 23.636587, 25.293207>,  <15.820993, 23.911438, 25.517105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.006269, 23.636587, 25.293207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730053, -0.062259, 0.680548,
		-0.502471, -0.723866, 0.472800,
		0.463190, -0.687126, -0.559744,
		16.145226, 23.430449, 25.125284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.950866, 23.331381, 25.943504>,  <15.820993, 23.911438, 25.517105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.950866, 23.331381, 25.943504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.216597, 23.329042, 25.644537>,  <16.376036, 23.327639, 25.465157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.216597, 23.329042, 25.644537>,  <15.950866, 23.331381, 25.943504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.216597, 23.329042, 25.644537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743860, -0.092615, 0.661888,
		-0.073091, -0.995685, -0.057179,
		0.664327, -0.005844, -0.747419,
		16.415895, 23.327288, 25.420311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.485613, 23.084339, 26.190817>,  <15.950866, 23.331381, 25.943504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.485613, 23.084339, 26.190817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.676823, 23.240538, 25.876110>,  <16.791548, 23.334257, 25.687286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.676823, 23.240538, 25.876110>,  <16.485613, 23.084339, 26.190817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.676823, 23.240538, 25.876110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834018, 0.079172, 0.546028,
		0.275513, -0.917193, -0.287836,
		0.478024, 0.390498, -0.786768,
		16.820230, 23.357687, 25.640079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.042307, 22.689037, 26.223988>,  <16.485613, 23.084339, 26.190817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.042307, 22.689037, 26.223988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.154110, 23.009897, 26.012920>,  <17.221191, 23.202414, 25.886280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.154110, 23.009897, 26.012920>,  <17.042307, 22.689037, 26.223988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.154110, 23.009897, 26.012920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887709, -0.006491, 0.460359,
		0.365851, -0.597091, -0.713888,
		0.279510, 0.802148, -0.527668,
		17.237963, 23.250542, 25.854620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.731031, 22.514996, 25.852272>,  <17.042307, 22.689037, 26.223988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.731031, 22.514996, 25.852272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.660351, 22.907419, 25.884029>,  <17.617943, 23.142874, 25.903084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.660351, 22.907419, 25.884029>,  <17.731031, 22.514996, 25.852272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.660351, 22.907419, 25.884029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852150, 0.112118, 0.511145,
		0.492561, 0.157976, -0.855820,
		-0.176701, 0.981057, 0.079394,
		17.607340, 23.201736, 25.907848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.379923, 22.909157, 25.675465>,  <17.731031, 22.514996, 25.852272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.379923, 22.909157, 25.675465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.168982, 23.167265, 25.896563>,  <18.042418, 23.322130, 26.029221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.168982, 23.167265, 25.896563>,  <18.379923, 22.909157, 25.675465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.168982, 23.167265, 25.896563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806590, 0.175739, 0.564383,
		0.267040, 0.743468, -0.613143,
		-0.527354, 0.645268, 0.552745,
		18.010775, 23.360846, 26.062386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.802273, 23.400389, 25.737053>,  <18.379923, 22.909157, 25.675465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.802273, 23.400389, 25.737053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.537985, 23.481995, 26.026003>,  <18.379412, 23.530958, 26.199373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.537985, 23.481995, 26.026003>,  <18.802273, 23.400389, 25.737053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.537985, 23.481995, 26.026003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750632, 0.177347, 0.636475,
		0.001740, 0.962770, -0.270317,
		-0.660719, 0.204016, 0.722377,
		18.339769, 23.543200, 26.242716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.913891, 24.033995, 25.967537>,  <18.802273, 23.400389, 25.737053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.913891, 24.033995, 25.967537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.705917, 23.892754, 26.278662>,  <18.581133, 23.808010, 26.465336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.705917, 23.892754, 26.278662>,  <18.913891, 24.033995, 25.967537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.705917, 23.892754, 26.278662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614901, 0.477337, 0.627731,
		-0.592930, 0.804655, -0.031062,
		-0.519934, -0.353100, 0.777810,
		18.549936, 23.786823, 26.512005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.720446, 24.572176, 26.345005>,  <18.913891, 24.033995, 25.967537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.720446, 24.572176, 26.345005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.666502, 24.284910, 26.618078>,  <18.634136, 24.112551, 26.781921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.666502, 24.284910, 26.618078>,  <18.720446, 24.572176, 26.345005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.666502, 24.284910, 26.618078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607863, 0.484135, 0.629377,
		-0.782506, 0.499855, 0.371254,
		-0.134860, -0.718162, 0.682682,
		18.626043, 24.069462, 26.822884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.411127, 24.834436, 27.068743>,  <18.720446, 24.572176, 26.345005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.411127, 24.834436, 27.068743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.661722, 24.522987, 27.082930>,  <18.812078, 24.336117, 27.091442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.661722, 24.522987, 27.082930>,  <18.411127, 24.834436, 27.068743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.661722, 24.522987, 27.082930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597246, 0.508791, 0.620023,
		-0.500809, -0.367256, 0.783781,
		0.626488, -0.778624, 0.035465,
		18.849669, 24.289400, 27.093569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.576668, 24.705532, 27.861526>,  <18.411127, 24.834436, 27.068743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.576668, 24.705532, 27.861526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.838078, 24.590845, 27.581327>,  <18.994925, 24.522034, 27.413208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.838078, 24.590845, 27.581327>,  <18.576668, 24.705532, 27.861526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.838078, 24.590845, 27.581327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691430, 0.602667, 0.398393,
		0.307942, -0.744706, 0.592102,
		0.653526, -0.286715, -0.700499,
		19.034136, 24.504831, 27.371178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.235714, 24.635574, 28.267033>,  <18.576668, 24.705532, 27.861526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.235714, 24.635574, 28.267033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.248005, 24.712431, 27.874678>,  <19.255379, 24.758545, 27.639265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.248005, 24.712431, 27.874678>,  <19.235714, 24.635574, 28.267033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.248005, 24.712431, 27.874678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657770, 0.735018, 0.164584,
		0.752592, -0.650254, -0.103802,
		0.030725, 0.192142, -0.980886,
		19.257223, 24.770073, 27.580412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.914169, 24.823849, 28.220537>,  <19.235714, 24.635574, 28.267033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.914169, 24.823849, 28.220537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.731098, 24.925684, 27.879782>,  <19.621256, 24.986784, 27.675327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.731098, 24.925684, 27.879782>,  <19.914169, 24.823849, 28.220537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.731098, 24.925684, 27.879782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640945, 0.758515, -0.117665,
		0.616216, -0.599867, -0.510330,
		-0.457676, 0.254587, -0.851891,
		19.593796, 25.002060, 27.624214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.596535, 25.426319, 28.469389>,  <19.914169, 24.823849, 28.220537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.596535, 25.426319, 28.469389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.758158, 25.756554, 28.626944>,  <19.855131, 25.954695, 28.721476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.758158, 25.756554, 28.626944>,  <19.596535, 25.426319, 28.469389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.758158, 25.756554, 28.626944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868724, 0.211488, 0.447874,
		0.286458, -0.523143, 0.802660,
		0.404055, 0.825588, 0.393885,
		19.879374, 26.004230, 28.745110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.722412, 25.267366, 29.173704>,  <19.596535, 25.426319, 28.469389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.722412, 25.267366, 29.173704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.653463, 25.645962, 29.064564>,  <19.612095, 25.873119, 28.999081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.653463, 25.645962, 29.064564>,  <19.722412, 25.267366, 29.173704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.653463, 25.645962, 29.064564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.952000, -0.088939, 0.292893,
		0.252953, 0.310239, 0.916388,
		-0.172370, 0.946489, -0.272850,
		19.601753, 25.929909, 28.982708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.251726, 24.926172, 29.616411>,  <19.722412, 25.267366, 29.173704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.251726, 24.926172, 29.616411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.620207, 24.779701, 29.563797>,  <19.841295, 24.691818, 29.532228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.620207, 24.779701, 29.563797>,  <19.251726, 24.926172, 29.616411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.620207, 24.779701, 29.563797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336612, -0.919595, 0.202576,
		-0.195137, -0.142338, -0.970392,
		0.921203, -0.366176, -0.131535,
		19.896568, 24.669849, 29.524336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.290785, 24.463627, 29.109739>,  <19.251726, 24.926172, 29.616411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.290785, 24.463627, 29.109739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.558535, 24.379515, 29.394758>,  <19.719185, 24.329048, 29.565769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.558535, 24.379515, 29.394758>,  <19.290785, 24.463627, 29.109739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.558535, 24.379515, 29.394758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472352, -0.860750, 0.189716,
		0.573430, -0.463564, -0.675490,
		0.669374, -0.210280, 0.712546,
		19.759346, 24.316431, 29.608522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.837387, 23.824879, 29.000629>,  <19.290785, 24.463627, 29.109739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.837387, 23.824879, 29.000629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.687708, 23.929747, 29.356438>,  <19.597900, 23.992668, 29.569921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.687708, 23.929747, 29.356438>,  <19.837387, 23.824879, 29.000629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.687708, 23.929747, 29.356438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427531, -0.899958, 0.085397,
		0.822918, -0.348342, 0.448847,
		-0.374196, 0.262170, 0.889519,
		19.575449, 24.008398, 29.623293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.081762, 23.240999, 29.553823>,  <19.837387, 23.824879, 29.000629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.081762, 23.240999, 29.553823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.733671, 23.435419, 29.585972>,  <19.524817, 23.552071, 29.605261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.733671, 23.435419, 29.585972>,  <20.081762, 23.240999, 29.553823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.733671, 23.435419, 29.585972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492469, -0.862671, -0.115208,
		0.013336, -0.139837, 0.990085,
		-0.870228, 0.486050, 0.080370,
		19.472603, 23.581234, 29.610083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.862898, 22.856094, 30.064854>,  <20.081762, 23.240999, 29.553823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.862898, 22.856094, 30.064854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.582096, 23.046532, 29.852995>,  <19.413616, 23.160793, 29.725880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.582096, 23.046532, 29.852995>,  <19.862898, 22.856094, 30.064854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.582096, 23.046532, 29.852995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489807, -0.862646, -0.126219,
		-0.516991, 0.170820, 0.838773,
		-0.702003, 0.476092, -0.529649,
		19.371494, 23.189360, 29.694099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.258986, 22.722109, 30.316936>,  <19.862898, 22.856094, 30.064854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.258986, 22.722109, 30.316936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.169928, 22.836824, 29.944231>,  <19.116493, 22.905655, 29.720608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.169928, 22.836824, 29.944231>,  <19.258986, 22.722109, 30.316936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.169928, 22.836824, 29.944231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600555, -0.793224, -0.100647,
		-0.767961, 0.537166, 0.348839,
		-0.222644, 0.286790, -0.931762,
		19.103134, 22.922861, 29.664701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.634808, 22.757336, 30.222698>,  <19.258986, 22.722109, 30.316936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.634808, 22.757336, 30.222698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.744703, 22.702456, 29.842026>,  <18.810640, 22.669527, 29.613623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.744703, 22.702456, 29.842026>,  <18.634808, 22.757336, 30.222698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.744703, 22.702456, 29.842026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505683, -0.862448, -0.021646,
		-0.817804, 0.487195, -0.306328,
		0.274738, -0.137203, -0.951680,
		18.827126, 22.661295, 29.556522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.133898, 22.311316, 29.971651>,  <18.634808, 22.757336, 30.222698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.133898, 22.311316, 29.971651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.420414, 22.273436, 29.695114>,  <18.592323, 22.250708, 29.529192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.420414, 22.273436, 29.695114>,  <18.133898, 22.311316, 29.971651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.420414, 22.273436, 29.695114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427091, -0.842998, -0.327028,
		-0.551832, 0.529515, -0.644279,
		0.716292, -0.094701, -0.691344,
		18.635302, 22.245026, 29.487711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.863310, 21.913326, 29.505913>,  <18.133898, 22.311316, 29.971651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.863310, 21.913326, 29.505913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.237051, 21.876572, 29.368193>,  <18.461296, 21.854519, 29.285561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.237051, 21.876572, 29.368193>,  <17.863310, 21.913326, 29.505913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.237051, 21.876572, 29.368193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260805, -0.834725, -0.484990,
		-0.242833, 0.542947, -0.803891,
		0.934352, -0.091887, -0.344302,
		18.517357, 21.849005, 29.264902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.997496, 21.925070, 28.637527>,  <17.863310, 21.913326, 29.505913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.997496, 21.925070, 28.637527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.277901, 21.709261, 28.824074>,  <18.446144, 21.579775, 28.936001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.277901, 21.709261, 28.824074>,  <17.997496, 21.925070, 28.637527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.277901, 21.709261, 28.824074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117600, -0.732454, -0.670582,
		0.703387, 0.415241, -0.576907,
		0.701012, -0.539523, 0.466366,
		18.488205, 21.547403, 28.963984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.127821, 21.435734, 28.181456>,  <17.997496, 21.925070, 28.637527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.127821, 21.435734, 28.181456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.359331, 21.279661, 28.467890>,  <18.498238, 21.186018, 28.639750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.359331, 21.279661, 28.467890>,  <18.127821, 21.435734, 28.181456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.359331, 21.279661, 28.467890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062082, -0.896639, -0.438388,
		0.813121, 0.209272, -0.543175,
		0.578775, -0.390183, 0.716084,
		18.532963, 21.162605, 28.682714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.659824, 21.061392, 27.889256>,  <18.127821, 21.435734, 28.181456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.659824, 21.061392, 27.889256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.632708, 20.893764, 28.251423>,  <18.616438, 20.793188, 28.468723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.632708, 20.893764, 28.251423>,  <18.659824, 21.061392, 27.889256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.632708, 20.893764, 28.251423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124994, -0.903925, -0.409018,
		0.989839, 0.085445, 0.113658,
		-0.067790, -0.419069, 0.905420,
		18.612371, 20.768044, 28.523048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.147177, 20.492603, 27.869492>,  <18.659824, 21.061392, 27.889256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.147177, 20.492603, 27.869492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.915176, 20.400703, 28.182110>,  <18.775976, 20.345564, 28.369680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.915176, 20.400703, 28.182110>,  <19.147177, 20.492603, 27.869492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.915176, 20.400703, 28.182110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033808, -0.951789, -0.304885,
		0.813913, -0.203257, 0.544272,
		-0.580002, -0.229749, 0.781545,
		18.741177, 20.331779, 28.416573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.413437, 19.893049, 28.180439>,  <19.147177, 20.492603, 27.869492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.413437, 19.893049, 28.180439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.033886, 19.888973, 28.306631>,  <18.806156, 19.886528, 28.382347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.033886, 19.888973, 28.306631>,  <19.413437, 19.893049, 28.180439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.033886, 19.888973, 28.306631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047538, -0.983466, -0.174744,
		0.312045, -0.180808, 0.932704,
		-0.948877, -0.010189, 0.315480,
		18.749222, 19.885916, 28.401276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.339130, 19.366039, 28.625637>,  <19.413437, 19.893049, 28.180439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.339130, 19.366039, 28.625637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.963598, 19.406370, 28.493921>,  <18.738279, 19.430569, 28.414892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.963598, 19.406370, 28.493921>,  <19.339130, 19.366039, 28.625637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.963598, 19.406370, 28.493921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024309, -0.973196, -0.228688,
		-0.343520, -0.206694, 0.916117,
		-0.938831, 0.100829, -0.329288,
		18.681950, 19.436619, 28.395134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.949223, 18.753139, 28.815334>,  <19.339130, 19.366039, 28.625637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.949223, 18.753139, 28.815334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.726702, 18.891428, 28.513077>,  <18.593189, 18.974401, 28.331722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.726702, 18.891428, 28.513077>,  <18.949223, 18.753139, 28.815334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.726702, 18.891428, 28.513077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033823, -0.899171, -0.436289,
		-0.830289, -0.268268, 0.488520,
		-0.556305, 0.345723, -0.755646,
		18.559811, 18.995146, 28.286383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.556622, 18.158335, 28.592804>,  <18.949223, 18.753139, 28.815334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.556622, 18.158335, 28.592804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.511339, 18.409470, 28.284777>,  <18.484169, 18.560150, 28.099960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.511339, 18.409470, 28.284777>,  <18.556622, 18.158335, 28.592804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.511339, 18.409470, 28.284777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033530, -0.777025, -0.628577,
		-0.993006, -0.045339, 0.109016,
		-0.113207, 0.627835, -0.770069,
		18.477377, 18.597820, 28.053757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.099483, 17.773064, 28.206627>,  <18.556622, 18.158335, 28.592804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.099483, 17.773064, 28.206627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.246153, 18.032793, 27.940115>,  <18.334154, 18.188631, 27.780209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.246153, 18.032793, 27.940115>,  <18.099483, 17.773064, 28.206627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.246153, 18.032793, 27.940115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008426, -0.713812, -0.700287,
		-0.930311, 0.262391, -0.256265,
		0.366674, 0.649325, -0.666278,
		18.356155, 18.227591, 27.740231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.878979, 17.503090, 27.625296>,  <18.099483, 17.773064, 28.206627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.878979, 17.503090, 27.625296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.174164, 17.748936, 27.513821>,  <18.351274, 17.896442, 27.446936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.174164, 17.748936, 27.513821>,  <17.878979, 17.503090, 27.625296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.174164, 17.748936, 27.513821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195440, -0.589909, -0.783460,
		-0.645924, 0.523696, -0.555449,
		0.737960, 0.614613, -0.278686,
		18.395552, 17.933319, 27.430216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.802874, 18.030972, 27.016584>,  <17.878979, 17.503090, 27.625296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.802874, 18.030972, 27.016584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.142084, 17.823727, 27.061150>,  <18.345610, 17.699379, 27.087889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.142084, 17.823727, 27.061150>,  <17.802874, 18.030972, 27.016584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.142084, 17.823727, 27.061150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155351, -0.444027, -0.882443,
		0.506675, 0.731026, -0.457036,
		0.848025, -0.518113, 0.111412,
		18.396492, 17.668293, 27.094574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.132511, 18.172747, 26.388384>,  <17.802874, 18.030972, 27.016584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.132511, 18.172747, 26.388384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.258377, 17.829422, 26.550512>,  <18.333897, 17.623426, 26.647789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.258377, 17.829422, 26.550512>,  <18.132511, 18.172747, 26.388384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.258377, 17.829422, 26.550512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234320, -0.484039, -0.843090,
		0.919825, 0.170318, -0.353431,
		0.314667, -0.858312, 0.405322,
		18.352777, 17.571928, 26.672110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.480402, 17.943224, 25.852922>,  <18.132511, 18.172747, 26.388384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.480402, 17.943224, 25.852922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.398226, 17.623102, 26.078241>,  <18.348919, 17.431028, 26.213432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.398226, 17.623102, 26.078241>,  <18.480402, 17.943224, 25.852922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.398226, 17.623102, 26.078241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184665, -0.533535, -0.825372,
		0.961089, -0.273588, -0.038178,
		-0.205443, -0.800306, 0.563297,
		18.336594, 17.383011, 26.247231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.393717, 17.419949, 25.416599>,  <18.480402, 17.943224, 25.852922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.393717, 17.419949, 25.416599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.265928, 17.227142, 25.742937>,  <18.189255, 17.111460, 25.938740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.265928, 17.227142, 25.742937>,  <18.393717, 17.419949, 25.416599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.265928, 17.227142, 25.742937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497032, -0.647784, -0.577352,
		0.806782, -0.589947, -0.032629,
		-0.319471, -0.482015, 0.815843,
		18.170088, 17.082539, 25.987690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.591650, 16.645761, 25.421814>,  <18.393717, 17.419949, 25.416599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.591650, 16.645761, 25.421814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.261082, 16.727207, 25.631794>,  <18.062740, 16.776073, 25.757782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.261082, 16.727207, 25.631794>,  <18.591650, 16.645761, 25.421814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.261082, 16.727207, 25.631794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526223, -0.610970, -0.591443,
		0.200305, -0.765022, 0.612062,
		-0.826419, 0.203612, 0.524952,
		18.013157, 16.788290, 25.789280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.339443, 15.942456, 25.718193>,  <18.591650, 16.645761, 25.421814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.339443, 15.942456, 25.718193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.026224, 16.186762, 25.765184>,  <17.838293, 16.333345, 25.793379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.026224, 16.186762, 25.765184>,  <18.339443, 15.942456, 25.718193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.026224, 16.186762, 25.765184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507224, -0.517789, -0.688926,
		-0.359942, -0.599051, 0.715248,
		-0.783049, 0.610764, 0.117479,
		17.791309, 16.369991, 25.800428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.826288, 15.519495, 25.955770>,  <18.339443, 15.942456, 25.718193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.826288, 15.519495, 25.955770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.614355, 15.829105, 25.817114>,  <17.487196, 16.014872, 25.733919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.614355, 15.829105, 25.817114>,  <17.826288, 15.519495, 25.955770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.614355, 15.829105, 25.817114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408789, -0.591190, -0.695259,
		-0.743082, -0.226666, 0.629645,
		-0.529831, 0.774026, -0.346644,
		17.455406, 16.061314, 25.713121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.143671, 15.341441, 25.972647>,  <17.826288, 15.519495, 25.955770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.143671, 15.341441, 25.972647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.131760, 15.640268, 25.707014>,  <17.124613, 15.819565, 25.547634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.131760, 15.640268, 25.707014>,  <17.143671, 15.341441, 25.972647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.131760, 15.640268, 25.707014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385250, -0.621625, -0.682030,
		-0.922332, 0.235526, 0.306320,
		-0.029780, 0.747067, -0.664081,
		17.122826, 15.864388, 25.507790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.388969, 15.377315, 25.713434>,  <17.143671, 15.341441, 25.972647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.388969, 15.377315, 25.713434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.613268, 15.578669, 25.450476>,  <16.747847, 15.699481, 25.292700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.613268, 15.578669, 25.450476>,  <16.388969, 15.377315, 25.713434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.613268, 15.578669, 25.450476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582378, -0.324592, -0.745303,
		-0.588559, 0.800777, 0.111147,
		0.560744, 0.503385, -0.657396,
		16.781490, 15.729684, 25.253256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.026506, 15.789028, 25.396523>,  <16.388969, 15.377315, 25.713434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.026506, 15.789028, 25.396523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.334063, 15.760936, 25.142317>,  <16.518597, 15.744081, 24.989794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.334063, 15.760936, 25.142317>,  <16.026506, 15.789028, 25.396523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.334063, 15.760936, 25.142317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637943, -0.150888, -0.755157,
		-0.042855, 0.986053, -0.160820,
		0.768890, -0.070231, -0.635512,
		16.564730, 15.739866, 24.951664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.725151, 15.971586, 24.850332>,  <16.026506, 15.789028, 25.396523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.725151, 15.971586, 24.850332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.061737, 15.801256, 24.717300>,  <16.263689, 15.699058, 24.637482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.061737, 15.801256, 24.717300>,  <15.725151, 15.971586, 24.850332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.061737, 15.801256, 24.717300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454783, -0.225843, -0.861491,
		0.291735, 0.876166, -0.383697,
		0.841465, -0.425826, -0.332580,
		16.314177, 15.673509, 24.617527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.768964, 16.268843, 24.168705>,  <15.725151, 15.971586, 24.850332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.768964, 16.268843, 24.168705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.963710, 15.921581, 24.207224>,  <16.080557, 15.713224, 24.230335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.963710, 15.921581, 24.207224>,  <15.768964, 16.268843, 24.168705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.963710, 15.921581, 24.207224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229056, -0.233283, -0.945046,
		0.842909, 0.438052, -0.312433,
		0.486865, -0.868153, 0.096298,
		16.109770, 15.661136, 24.236113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.170609, 16.256470, 23.668308>,  <15.768964, 16.268843, 24.168705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.170609, 16.256470, 23.668308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.112272, 15.875832, 23.776527>,  <16.077271, 15.647449, 23.841459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.112272, 15.875832, 23.776527>,  <16.170609, 16.256470, 23.668308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.112272, 15.875832, 23.776527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199197, -0.239627, -0.950210,
		0.969047, -0.192470, -0.154608,
		-0.145838, -0.951595, 0.270550,
		16.068521, 15.590353, 23.857693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.458851, 15.872385, 23.058647>,  <16.170609, 16.256470, 23.668308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.458851, 15.872385, 23.058647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.232105, 15.617912, 23.268003>,  <16.096058, 15.465229, 23.393618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.232105, 15.617912, 23.268003>,  <16.458851, 15.872385, 23.058647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.232105, 15.617912, 23.268003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367448, -0.373373, -0.851807,
		0.737323, -0.675179, -0.022111,
		-0.566866, -0.636181, 0.523390,
		16.062046, 15.427058, 23.425020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.662537, 15.212088, 22.772226>,  <16.458851, 15.872385, 23.058647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.662537, 15.212088, 22.772226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.296215, 15.178447, 22.929314>,  <16.076422, 15.158262, 23.023565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.296215, 15.178447, 22.929314>,  <16.662537, 15.212088, 22.772226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.296215, 15.178447, 22.929314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371456, -0.194442, -0.907862,
		0.152714, -0.977302, 0.146831,
		-0.915805, -0.084102, 0.392718,
		16.021473, 15.153216, 23.047129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.433355, 14.551623, 22.494501>,  <16.662537, 15.212088, 22.772226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.433355, 14.551623, 22.494501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.113609, 14.748801, 22.631916>,  <15.921762, 14.867108, 22.714365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.113609, 14.748801, 22.631916>,  <16.433355, 14.551623, 22.494501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.113609, 14.748801, 22.631916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506249, -0.244617, -0.826967,
		-0.323615, -0.834965, 0.445092,
		-0.799365, 0.492947, 0.343538,
		15.873799, 14.896685, 22.734978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.830285, 14.091743, 22.415533>,  <16.433355, 14.551623, 22.494501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.830285, 14.091743, 22.415533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.690970, 14.466304, 22.432709>,  <15.607382, 14.691041, 22.443014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.690970, 14.466304, 22.432709>,  <15.830285, 14.091743, 22.415533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.690970, 14.466304, 22.432709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464509, -0.132619, -0.875582,
		-0.814204, -0.324899, 0.481158,
		-0.348286, 0.936404, 0.042940,
		15.586485, 14.747225, 22.445591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.191073, 13.817002, 22.439112>,  <15.830285, 14.091743, 22.415533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.191073, 13.817002, 22.439112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.179955, 14.206075, 22.346920>,  <15.173285, 14.439518, 22.291605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.179955, 14.206075, 22.346920>,  <15.191073, 13.817002, 22.439112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.179955, 14.206075, 22.346920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393424, -0.222603, -0.892001,
		-0.918937, 0.065883, 0.388863,
		-0.027795, 0.972680, -0.230478,
		15.171617, 14.497879, 22.277777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.497026, 13.961000, 22.324629>,  <15.191073, 13.817002, 22.439112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.497026, 13.961000, 22.324629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.730293, 14.217204, 22.124763>,  <14.870254, 14.370926, 22.004845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.730293, 14.217204, 22.124763>,  <14.497026, 13.961000, 22.324629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.730293, 14.217204, 22.124763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507101, -0.193496, -0.839886,
		-0.634637, 0.743174, 0.211961,
		0.583168, 0.640508, -0.499664,
		14.905244, 14.409357, 21.974865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.086321, 14.247404, 21.849232>,  <14.497026, 13.961000, 22.324629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.086321, 14.247404, 21.849232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.457025, 14.320024, 21.717684>,  <14.679447, 14.363597, 21.638756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.457025, 14.320024, 21.717684>,  <14.086321, 14.247404, 21.849232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.457025, 14.320024, 21.717684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306110, -0.142472, -0.941275,
		-0.217743, 0.973007, -0.076463,
		0.926760, 0.181550, -0.328870,
		14.735053, 14.374490, 21.619022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.952791, 14.670549, 21.230606>,  <14.086321, 14.247404, 21.849232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.952791, 14.670549, 21.230606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.312263, 14.495232, 21.224026>,  <14.527946, 14.390041, 21.220078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.312263, 14.495232, 21.224026>,  <13.952791, 14.670549, 21.230606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.312263, 14.495232, 21.224026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151580, -0.275167, -0.949372,
		0.411578, 0.855676, -0.313724,
		0.898681, -0.438294, -0.016451,
		14.581868, 14.363744, 21.219091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.021780, 14.626369, 20.537409>,  <13.952791, 14.670549, 21.230606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.021780, 14.626369, 20.537409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.323770, 14.388559, 20.648085>,  <14.504963, 14.245873, 20.714489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.323770, 14.388559, 20.648085>,  <14.021780, 14.626369, 20.537409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.323770, 14.388559, 20.648085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006918, -0.429136, -0.903213,
		0.655719, 0.679988, -0.328099,
		0.754974, -0.594524, 0.276688,
		14.550261, 14.210202, 20.731091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.579527, 14.655117, 19.971107>,  <14.021780, 14.626369, 20.537409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.579527, 14.655117, 19.971107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.652095, 14.312735, 20.164778>,  <14.695636, 14.107305, 20.280979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.652095, 14.312735, 20.164778>,  <14.579527, 14.655117, 19.971107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.652095, 14.312735, 20.164778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140898, -0.464641, -0.874218,
		0.973260, 0.226820, 0.036308,
		0.181420, -0.855956, 0.484175,
		14.706521, 14.055947, 20.310030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.090217, 14.322235, 19.587635>,  <14.579527, 14.655117, 19.971107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.090217, 14.322235, 19.587635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.940453, 14.035727, 19.823185>,  <14.850594, 13.863821, 19.964514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.940453, 14.035727, 19.823185>,  <15.090217, 14.322235, 19.587635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.940453, 14.035727, 19.823185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027021, -0.643224, -0.765202,
		0.926869, -0.270588, 0.260185,
		-0.374411, -0.716272, 0.588872,
		14.828129, 13.820845, 19.999847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.544418, 13.775683, 19.494047>,  <15.090217, 14.322235, 19.587635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.544418, 13.775683, 19.494047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.198843, 13.622505, 19.624868>,  <14.991498, 13.530599, 19.703362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.198843, 13.622505, 19.624868>,  <15.544418, 13.775683, 19.494047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.198843, 13.622505, 19.624868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011592, -0.634141, -0.773131,
		0.503466, -0.671728, 0.543419,
		-0.863938, -0.382946, 0.327055,
		14.939662, 13.507622, 19.722984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.667065, 13.060133, 19.383690>,  <15.544418, 13.775683, 19.494047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.667065, 13.060133, 19.383690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.272485, 13.115570, 19.418810>,  <15.035737, 13.148832, 19.439882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.272485, 13.115570, 19.418810>,  <15.667065, 13.060133, 19.383690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.272485, 13.115570, 19.418810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151345, -0.562130, -0.813083,
		-0.063333, -0.815354, 0.575489,
		-0.986450, 0.138592, 0.087798,
		14.976550, 13.157147, 19.445148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.756346, 12.805743, 20.084047>,  <15.667065, 13.060133, 19.383690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.756346, 12.805743, 20.084047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.976502, 12.575685, 19.841965>,  <16.108597, 12.437650, 19.696714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.976502, 12.575685, 19.841965>,  <15.756346, 12.805743, 20.084047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.976502, 12.575685, 19.841965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831432, 0.311516, 0.460085,
		-0.076084, -0.756416, 0.649650,
		0.550392, -0.575146, -0.605208,
		16.141621, 12.403141, 19.660402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.384686, 12.416616, 20.460566>,  <15.756346, 12.805743, 20.084047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.384686, 12.416616, 20.460566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.465164, 12.466598, 20.071947>,  <16.513453, 12.496586, 19.838776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.465164, 12.466598, 20.071947>,  <16.384686, 12.416616, 20.460566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.465164, 12.466598, 20.071947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870630, 0.431729, 0.235825,
		0.448912, -0.893307, -0.021923,
		0.201199, 0.124951, -0.971549,
		16.525524, 12.504083, 19.780483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.078480, 12.188297, 20.374334>,  <16.384686, 12.416616, 20.460566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.078480, 12.188297, 20.374334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.987997, 12.428948, 20.067904>,  <16.933708, 12.573339, 19.884045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.987997, 12.428948, 20.067904>,  <17.078480, 12.188297, 20.374334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.987997, 12.428948, 20.067904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768496, 0.593479, 0.239159,
		0.598535, -0.534627, -0.596598,
		-0.226207, 0.601628, -0.766077,
		16.920135, 12.609437, 19.838079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.756546, 12.399509, 20.091837>,  <17.078480, 12.188297, 20.374334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.756546, 12.399509, 20.091837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.493872, 12.670861, 19.960041>,  <17.336267, 12.833673, 19.880964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.493872, 12.670861, 19.960041>,  <17.756546, 12.399509, 20.091837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.493872, 12.670861, 19.960041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636764, 0.732843, 0.239735,
		0.404095, -0.052376, -0.913216,
		-0.656687, 0.678379, -0.329489,
		17.296865, 12.874375, 19.861195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.222538, 12.980964, 19.753275>,  <17.756546, 12.399509, 20.091837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.222538, 12.980964, 19.753275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.881758, 13.190095, 19.764818>,  <17.677290, 13.315574, 19.771744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.881758, 13.190095, 19.764818>,  <18.222538, 12.980964, 19.753275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.881758, 13.190095, 19.764818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470846, 0.740804, 0.479075,
		0.229097, 0.421735, -0.877299,
		-0.851950, 0.522827, 0.028856,
		17.626173, 13.346943, 19.773476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.414274, 13.584594, 19.517138>,  <18.222538, 12.980964, 19.753275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.414274, 13.584594, 19.517138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.081659, 13.658766, 19.726580>,  <17.882092, 13.703269, 19.852245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.081659, 13.658766, 19.726580>,  <18.414274, 13.584594, 19.517138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.081659, 13.658766, 19.726580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423129, 0.822160, 0.380808,
		-0.359874, 0.538209, -0.762117,
		-0.831536, 0.185431, 0.523606,
		17.832199, 13.714396, 19.883661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.265976, 14.235432, 19.472839>,  <18.414274, 13.584594, 19.517138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.265976, 14.235432, 19.472839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.069197, 14.141213, 19.808102>,  <17.951128, 14.084682, 20.009258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.069197, 14.141213, 19.808102>,  <18.265976, 14.235432, 19.472839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.069197, 14.141213, 19.808102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581329, 0.627784, 0.517633,
		-0.648107, 0.741893, -0.171908,
		-0.491950, -0.235547, 0.838155,
		17.921612, 14.070549, 20.059547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.029173, 14.865265, 19.710691>,  <18.265976, 14.235432, 19.472839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.029173, 14.865265, 19.710691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.034439, 14.618093, 20.025141>,  <18.037598, 14.469790, 20.213810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.034439, 14.618093, 20.025141>,  <18.029173, 14.865265, 19.710691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.034439, 14.618093, 20.025141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581550, 0.644278, 0.496694,
		-0.813404, 0.450632, 0.367838,
		0.013164, -0.617930, 0.786123,
		18.038387, 14.432714, 20.260977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.764843, 15.234750, 20.165846>,  <18.029173, 14.865265, 19.710691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.764843, 15.234750, 20.165846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.961697, 14.944830, 20.358707>,  <18.079809, 14.770878, 20.474424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.961697, 14.944830, 20.358707>,  <17.764843, 15.234750, 20.165846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.961697, 14.944830, 20.358707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331130, 0.668095, 0.666335,
		-0.805083, -0.168270, 0.568794,
		0.492133, -0.724800, 0.482152,
		18.109337, 14.727390, 20.503353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.849720, 15.490279, 20.779366>,  <17.764843, 15.234750, 20.165846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.849720, 15.490279, 20.779366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.096495, 15.177072, 20.811035>,  <18.244560, 14.989147, 20.830036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.096495, 15.177072, 20.811035>,  <17.849720, 15.490279, 20.779366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.096495, 15.177072, 20.811035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391307, 0.392471, 0.832373,
		-0.682838, -0.482541, 0.548531,
		0.616937, -0.783020, 0.079173,
		18.281576, 14.942165, 20.834787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.708330, 15.268713, 21.391180>,  <17.849720, 15.490279, 20.779366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.708330, 15.268713, 21.391180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.076384, 15.174801, 21.265814>,  <18.297216, 15.118454, 21.190594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.076384, 15.174801, 21.265814>,  <17.708330, 15.268713, 21.391180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.076384, 15.174801, 21.265814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368524, 0.248455, 0.895801,
		-0.132447, -0.939760, 0.315134,
		0.920135, -0.234780, -0.313417,
		18.352425, 15.104367, 21.171789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.050241, 15.070001, 21.964207>,  <17.708330, 15.268713, 21.391180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.050241, 15.070001, 21.964207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.362467, 15.152097, 21.728037>,  <18.549801, 15.201355, 21.586336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.362467, 15.152097, 21.728037>,  <18.050241, 15.070001, 21.964207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.362467, 15.152097, 21.728037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536886, 0.263602, 0.801416,
		0.320122, -0.942544, 0.095565,
		0.780561, 0.205243, -0.590423,
		18.596636, 15.213669, 21.550909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.635860, 14.816957, 22.321621>,  <18.050241, 15.070001, 21.964207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.635860, 14.816957, 22.321621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.804686, 15.076043, 22.067904>,  <18.905981, 15.231494, 21.915672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.804686, 15.076043, 22.067904>,  <18.635860, 14.816957, 22.321621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.804686, 15.076043, 22.067904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629307, 0.294304, 0.719276,
		0.652560, -0.702747, -0.283395,
		0.422065, 0.647713, -0.634294,
		18.931305, 15.270357, 21.877615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.456882, 14.776085, 22.369783>,  <18.635860, 14.816957, 22.321621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.456882, 14.776085, 22.369783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.341288, 15.137534, 22.243322>,  <19.271931, 15.354403, 22.167446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.341288, 15.137534, 22.243322>,  <19.456882, 14.776085, 22.369783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.341288, 15.137534, 22.243322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618050, 0.428299, 0.659223,
		0.731096, -0.004891, -0.682257,
		-0.288985, 0.903624, -0.316151,
		19.254593, 15.408622, 22.148478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.043592, 15.219757, 22.590105>,  <19.456882, 14.776085, 22.369783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.043592, 15.219757, 22.590105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.732731, 15.468273, 22.550041>,  <19.546215, 15.617383, 22.526003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.732731, 15.468273, 22.550041>,  <20.043592, 15.219757, 22.590105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.732731, 15.468273, 22.550041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285418, 0.489821, 0.823779,
		0.560866, 0.611615, -0.557993,
		-0.777152, 0.621291, -0.100158,
		19.499584, 15.654660, 22.519993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.354784, 15.822486, 22.806879>,  <20.043592, 15.219757, 22.590105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.354784, 15.822486, 22.806879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.968184, 15.923389, 22.825823>,  <19.736223, 15.983932, 22.837189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.968184, 15.923389, 22.825823>,  <20.354784, 15.822486, 22.806879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.968184, 15.923389, 22.825823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203336, 0.639931, 0.741042,
		0.156628, 0.725847, -0.669787,
		-0.966500, 0.252259, 0.047359,
		19.678234, 15.999067, 22.840031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.379164, 16.536278, 22.880405>,  <20.354784, 15.822486, 22.806879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.379164, 16.536278, 22.880405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.013464, 16.416218, 22.989260>,  <19.794044, 16.344181, 23.054573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.013464, 16.416218, 22.989260>,  <20.379164, 16.536278, 22.880405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.013464, 16.416218, 22.989260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049451, 0.749338, 0.660339,
		-0.402124, 0.590257, -0.699924,
		-0.914249, -0.300150, 0.272138,
		19.739189, 16.326174, 23.070902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.883482, 17.167608, 22.836414>,  <20.379164, 16.536278, 22.880405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.883482, 17.167608, 22.836414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.736483, 16.897715, 23.092438>,  <19.648283, 16.735779, 23.246052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.736483, 16.897715, 23.092438>,  <19.883482, 17.167608, 22.836414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.736483, 16.897715, 23.092438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125439, 0.717890, 0.684762,
		-0.921525, 0.171362, -0.348463,
		-0.367500, -0.674736, 0.640058,
		19.626232, 16.695293, 23.284454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.168819, 17.435871, 23.145906>,  <19.883482, 17.167608, 22.836414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.168819, 17.435871, 23.145906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.333302, 17.154579, 23.377897>,  <19.431992, 16.985804, 23.517092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.333302, 17.154579, 23.377897>,  <19.168819, 17.435871, 23.145906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.333302, 17.154579, 23.377897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117962, 0.589858, 0.798844,
		-0.903878, -0.396904, 0.159598,
		0.411205, -0.703232, 0.579979,
		19.456663, 16.943609, 23.551891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.899944, 17.639217, 23.713661>,  <19.168819, 17.435871, 23.145906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.899944, 17.639217, 23.713661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.197493, 17.389585, 23.809309>,  <19.376022, 17.239805, 23.866697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.197493, 17.389585, 23.809309>,  <18.899944, 17.639217, 23.713661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.197493, 17.389585, 23.809309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280715, 0.616465, 0.735643,
		-0.606511, -0.480098, 0.633759,
		0.743870, -0.624081, 0.239122,
		19.420654, 17.202360, 23.881046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.812826, 17.626276, 24.437847>,  <18.899944, 17.639217, 23.713661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.812826, 17.626276, 24.437847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.183376, 17.494429, 24.364985>,  <19.405706, 17.415319, 24.321266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.183376, 17.494429, 24.364985>,  <18.812826, 17.626276, 24.437847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.183376, 17.494429, 24.364985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366563, 0.678248, 0.636876,
		-0.086380, -0.656758, 0.749138,
		0.926374, -0.329620, -0.182157,
		19.461288, 17.395542, 24.310337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.104111, 17.335453, 25.078846>,  <18.812826, 17.626276, 24.437847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.104111, 17.335453, 25.078846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.423323, 17.421631, 24.853729>,  <19.614849, 17.473337, 24.718660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.423323, 17.421631, 24.853729>,  <19.104111, 17.335453, 25.078846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.423323, 17.421631, 24.853729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388873, 0.529325, 0.754051,
		0.460354, -0.820609, 0.338637,
		0.798030, 0.215444, -0.562789,
		19.662731, 17.486265, 24.684893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.648369, 17.375324, 25.607792>,  <19.104111, 17.335453, 25.078846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.648369, 17.375324, 25.607792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.798281, 17.533094, 25.272181>,  <19.888227, 17.627756, 25.070814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.798281, 17.533094, 25.272181>,  <19.648369, 17.375324, 25.607792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.798281, 17.533094, 25.272181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439789, 0.721056, 0.535411,
		0.816166, -0.569656, 0.096773,
		0.374778, 0.394425, -0.839030,
		19.910713, 17.651423, 25.020472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.308619, 17.512825, 25.771439>,  <19.648369, 17.375324, 25.607792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.308619, 17.512825, 25.771439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.231329, 17.767225, 25.472597>,  <20.184956, 17.919865, 25.293291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.231329, 17.767225, 25.472597>,  <20.308619, 17.512825, 25.771439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.231329, 17.767225, 25.472597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467167, 0.729238, 0.499966,
		0.862797, -0.252417, -0.438027,
		-0.193226, 0.636001, -0.747105,
		20.173361, 17.958025, 25.248465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.875509, 17.820522, 25.750072>,  <20.308619, 17.512825, 25.771439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.875509, 17.820522, 25.750072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.631571, 18.090799, 25.584410>,  <20.485209, 18.252966, 25.485012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.631571, 18.090799, 25.584410>,  <20.875509, 17.820522, 25.750072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.631571, 18.090799, 25.584410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321186, 0.688462, 0.650276,
		0.724519, 0.263547, -0.636879,
		-0.609846, 0.675694, -0.414156,
		20.448618, 18.293509, 25.460163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.226448, 18.423172, 25.594931>,  <20.875509, 17.820522, 25.750072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.226448, 18.423172, 25.594931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.850111, 18.555099, 25.626001>,  <20.624310, 18.634256, 25.644644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.850111, 18.555099, 25.626001>,  <21.226448, 18.423172, 25.594931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.850111, 18.555099, 25.626001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325723, 0.817149, 0.475576,
		0.093380, 0.472743, -0.876238,
		-0.940842, 0.329820, 0.077679,
		20.567858, 18.654045, 25.649305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.218077, 19.031912, 25.322401>,  <21.226448, 18.423172, 25.594931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.218077, 19.031912, 25.322401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.930695, 19.003063, 25.599131>,  <20.758265, 18.985754, 25.765169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.930695, 19.003063, 25.599131>,  <21.218077, 19.031912, 25.322401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.930695, 19.003063, 25.599131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426744, 0.739725, 0.520285,
		-0.549282, 0.669033, -0.500683,
		-0.718456, -0.072120, 0.691824,
		20.715158, 18.981428, 25.806677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.953199, 19.641592, 25.335953>,  <21.218077, 19.031912, 25.322401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.953199, 19.641592, 25.335953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.776663, 19.533998, 25.678383>,  <20.670742, 19.469442, 25.883841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.776663, 19.533998, 25.678383>,  <20.953199, 19.641592, 25.335953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.776663, 19.533998, 25.678383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276655, 0.866755, 0.414968,
		-0.853628, 0.419980, -0.308118,
		-0.441341, -0.268986, 0.856075,
		20.644260, 19.453302, 25.935205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.553846, 20.244446, 25.552797>,  <20.953199, 19.641592, 25.335953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.553846, 20.244446, 25.552797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.591311, 20.028114, 25.887157>,  <20.613789, 19.898315, 26.087774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.591311, 20.028114, 25.887157>,  <20.553846, 20.244446, 25.552797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.591311, 20.028114, 25.887157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112193, 0.839977, 0.530897,
		-0.989263, 0.044060, 0.139349,
		0.093659, -0.540831, 0.835901,
		20.619408, 19.865866, 26.137928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.101768, 20.590618, 26.019934>,  <20.553846, 20.244446, 25.552797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.101768, 20.590618, 26.019934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.370045, 20.390162, 26.238668>,  <20.531010, 20.269888, 26.369909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.370045, 20.390162, 26.238668>,  <20.101768, 20.590618, 26.019934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.370045, 20.390162, 26.238668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193239, 0.829834, 0.523482,
		-0.716124, -0.245424, 0.653401,
		0.670690, -0.501141, 0.546839,
		20.571251, 20.239819, 26.402719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.993748, 20.795412, 26.716463>,  <20.101768, 20.590618, 26.019934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.993748, 20.795412, 26.716463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.361473, 20.639513, 26.694704>,  <20.582108, 20.545973, 26.681648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.361473, 20.639513, 26.694704>,  <19.993748, 20.795412, 26.716463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.361473, 20.639513, 26.694704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383227, 0.855242, 0.348852,
		-0.089441, -0.341551, 0.935598,
		0.919314, -0.389747, -0.054398,
		20.637268, 20.522589, 26.678385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.333530, 20.956736, 27.351913>,  <19.993748, 20.795412, 26.716463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.333530, 20.956736, 27.351913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.629725, 20.892687, 27.090826>,  <20.807442, 20.854258, 26.934174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.629725, 20.892687, 27.090826>,  <20.333530, 20.956736, 27.351913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.629725, 20.892687, 27.090826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426554, 0.862490, 0.272329,
		0.519360, -0.480076, 0.706960,
		0.740484, -0.160120, -0.652721,
		20.851870, 20.844650, 26.895010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.950541, 21.216324, 27.609957>,  <20.333530, 20.956736, 27.351913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.950541, 21.216324, 27.609957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.980133, 21.239870, 27.211748>,  <20.997889, 21.253998, 26.972822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.980133, 21.239870, 27.211748>,  <20.950541, 21.216324, 27.609957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.980133, 21.239870, 27.211748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498270, 0.862542, 0.088030,
		0.863860, -0.502550, 0.034478,
		0.073978, 0.058866, -0.995521,
		21.002327, 21.257530, 26.913092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.591722, 21.232723, 27.294144>,  <20.950541, 21.216324, 27.609957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.591722, 21.232723, 27.294144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.382137, 21.447508, 27.029680>,  <21.256386, 21.576378, 26.871002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.382137, 21.447508, 27.029680>,  <21.591722, 21.232723, 27.294144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.382137, 21.447508, 27.029680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589857, 0.788734, 0.173113,
		0.614435, -0.299284, -0.729999,
		-0.523965, 0.536962, -0.661160,
		21.224947, 21.608597, 26.831331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.094917, 21.472099, 26.854687>,  <21.591722, 21.232723, 27.294144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.094917, 21.472099, 26.854687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.769732, 21.704853, 26.845778>,  <21.574619, 21.844505, 26.840431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.769732, 21.704853, 26.845778>,  <22.094917, 21.472099, 26.854687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.769732, 21.704853, 26.845778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578036, 0.811035, 0.089985,
		0.070426, 0.060279, -0.995694,
		-0.812967, 0.581884, -0.022275,
		21.525841, 21.879417, 26.839096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.240162, 21.945539, 26.361052>,  <22.094917, 21.472099, 26.854687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.240162, 21.945539, 26.361052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.971945, 22.101587, 26.613459>,  <21.811014, 22.195215, 26.764902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.971945, 22.101587, 26.613459>,  <22.240162, 21.945539, 26.361052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.971945, 22.101587, 26.613459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535192, 0.843406, 0.047290,
		-0.513756, 0.369426, -0.774325,
		-0.670541, 0.390117, 0.631018,
		21.770782, 22.218622, 26.802765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.222403, 22.763876, 26.189730>,  <22.240162, 21.945539, 26.361052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.222403, 22.763876, 26.189730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.178598, 22.617167, 26.559267>,  <22.152317, 22.529140, 26.780989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.178598, 22.617167, 26.559267>,  <22.222403, 22.763876, 26.189730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.178598, 22.617167, 26.559267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708464, 0.623120, 0.331362,
		-0.697199, 0.690797, 0.191608,
		-0.109509, -0.366772, 0.923843,
		22.145746, 22.507135, 26.836420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.213987, 23.367201, 26.838543>,  <22.222403, 22.763876, 26.189730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.213987, 23.367201, 26.838543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.345243, 23.002459, 26.937208>,  <22.423998, 22.783613, 26.996408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.345243, 23.002459, 26.937208>,  <22.213987, 23.367201, 26.838543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.345243, 23.002459, 26.937208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899104, 0.381577, 0.214502,
		-0.289716, 0.151391, 0.945064,
		0.328141, -0.911855, 0.246665,
		22.443686, 22.728903, 27.011208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.366791, 24.015713, 26.422544>,  <22.213987, 23.367201, 26.838543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.366791, 24.015713, 26.422544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.442520, 24.248236, 26.106003>,  <22.487957, 24.387749, 25.916079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.442520, 24.248236, 26.106003>,  <22.366791, 24.015713, 26.422544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.442520, 24.248236, 26.106003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720955, -0.464848, -0.513946,
		-0.666619, 0.667832, 0.331088,
		0.189324, 0.581306, -0.791353,
		22.499317, 24.422628, 25.868597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.733978, 24.206758, 26.143156>,  <22.366791, 24.015713, 26.422544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.733978, 24.206758, 26.143156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.969013, 24.295675, 25.831945>,  <22.110035, 24.349026, 25.645220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.969013, 24.295675, 25.831945>,  <21.733978, 24.206758, 26.143156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.969013, 24.295675, 25.831945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683273, -0.378759, -0.624244,
		-0.433448, 0.898404, -0.070669,
		0.587589, 0.222291, -0.778027,
		22.145290, 24.362362, 25.598537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.341513, 24.630905, 25.577185>,  <21.733978, 24.206758, 26.143156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.341513, 24.630905, 25.577185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.659630, 24.464891, 25.400434>,  <21.850500, 24.365282, 25.294384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.659630, 24.464891, 25.400434>,  <21.341513, 24.630905, 25.577185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.659630, 24.464891, 25.400434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595728, -0.400006, -0.696494,
		0.112317, 0.817154, -0.565371,
		0.795294, -0.415035, -0.441874,
		21.898218, 24.340382, 25.267872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.124971, 24.621012, 24.884136>,  <21.341513, 24.630905, 25.577185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.124971, 24.621012, 24.884136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.439432, 24.374039, 24.873215>,  <21.628109, 24.225855, 24.866663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.439432, 24.374039, 24.873215>,  <21.124971, 24.621012, 24.884136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.439432, 24.374039, 24.873215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462499, -0.558430, -0.688658,
		0.409953, 0.554016, -0.724572,
		0.786150, -0.617432, -0.027302,
		21.675278, 24.188808, 24.865025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.318396, 24.449377, 24.127792>,  <21.124971, 24.621012, 24.884136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.318396, 24.449377, 24.127792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.468414, 24.155401, 24.353785>,  <21.558426, 23.979015, 24.489380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.468414, 24.155401, 24.353785>,  <21.318396, 24.449377, 24.127792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.468414, 24.155401, 24.353785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191154, -0.657685, -0.728636,
		0.907084, 0.165273, -0.387148,
		0.375045, -0.734939, 0.564983,
		21.580929, 23.934919, 24.523279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.823738, 24.074951, 23.738907>,  <21.318396, 24.449377, 24.127792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.823738, 24.074951, 23.738907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.692207, 23.818426, 24.016207>,  <21.613289, 23.664511, 24.182587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.692207, 23.818426, 24.016207>,  <21.823738, 24.074951, 23.738907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.692207, 23.818426, 24.016207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133267, -0.695214, -0.706341,
		0.934940, -0.324652, 0.143139,
		-0.328827, -0.641311, 0.693248,
		21.593559, 23.626034, 24.224182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.161671, 23.512791, 23.600193>,  <21.823738, 24.074951, 23.738907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.161671, 23.512791, 23.600193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.881809, 23.354244, 23.837976>,  <21.713892, 23.259117, 23.980646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.881809, 23.354244, 23.837976>,  <22.161671, 23.512791, 23.600193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.881809, 23.354244, 23.837976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002647, -0.833445, -0.552596,
		0.714478, -0.385052, 0.584171,
		-0.699653, -0.396364, 0.594459,
		21.671913, 23.235334, 24.016314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.362274, 22.740294, 23.698376>,  <22.161671, 23.512791, 23.600193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.362274, 22.740294, 23.698376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.979517, 22.772791, 23.809916>,  <21.749863, 22.792290, 23.876841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.979517, 22.772791, 23.809916>,  <22.362274, 22.740294, 23.698376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.979517, 22.772791, 23.809916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216972, -0.838208, -0.500330,
		0.193086, -0.539264, 0.819702,
		-0.956892, 0.081245, 0.278852,
		21.692450, 22.797165, 23.893572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.165560, 22.094482, 24.008593>,  <22.362274, 22.740294, 23.698376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.165560, 22.094482, 24.008593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.829231, 22.270832, 23.882959>,  <21.627434, 22.376642, 23.807579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.829231, 22.270832, 23.882959>,  <22.165560, 22.094482, 24.008593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.829231, 22.270832, 23.882959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325137, -0.875230, -0.358132,
		-0.432787, -0.199005, 0.879257,
		-0.840822, 0.440874, -0.314084,
		21.576984, 22.403093, 23.788734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.808123, 21.481611, 23.967691>,  <22.165560, 22.094482, 24.008593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.808123, 21.481611, 23.967691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.591352, 21.756178, 23.773724>,  <21.461290, 21.920918, 23.657343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.591352, 21.756178, 23.773724>,  <21.808123, 21.481611, 23.967691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.591352, 21.756178, 23.773724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388221, -0.716202, -0.579948,
		-0.745387, -0.126033, 0.654610,
		-0.541925, 0.686419, -0.484919,
		21.428776, 21.962103, 23.628248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.056406, 21.194092, 23.879736>,  <21.808123, 21.481611, 23.967691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.056406, 21.194092, 23.879736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.110535, 21.475853, 23.601023>,  <21.143011, 21.644909, 23.433796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.110535, 21.475853, 23.601023>,  <21.056406, 21.194092, 23.879736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.110535, 21.475853, 23.601023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075142, -0.693929, -0.716112,
		-0.987948, 0.149264, -0.040974,
		0.135322, 0.704403, -0.696781,
		21.151131, 21.687174, 23.391989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.466730, 21.203407, 23.411966>,  <21.056406, 21.194092, 23.879736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.466730, 21.203407, 23.411966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.767797, 21.356562, 23.197718>,  <20.948437, 21.448454, 23.069168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.767797, 21.356562, 23.197718>,  <20.466730, 21.203407, 23.411966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.767797, 21.356562, 23.197718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157185, -0.685502, -0.710901,
		-0.639364, 0.619263, -0.455771,
		0.752666, 0.382884, -0.535624,
		20.993597, 21.471426, 23.037031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.234486, 21.221741, 22.694464>,  <20.466730, 21.203407, 23.411966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.234486, 21.221741, 22.694464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.634085, 21.238779, 22.688953>,  <20.873844, 21.249002, 22.685648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.634085, 21.238779, 22.688953>,  <20.234486, 21.221741, 22.694464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.634085, 21.238779, 22.688953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027206, -0.822043, -0.568774,
		-0.035551, 0.567829, -0.822378,
		0.998998, 0.042594, -0.013776,
		20.933784, 21.251556, 22.684820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.390608, 21.272602, 21.988554>,  <20.234486, 21.221741, 22.694464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.390608, 21.272602, 21.988554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.709187, 21.134300, 22.186996>,  <20.900333, 21.051319, 22.306063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.709187, 21.134300, 22.186996>,  <20.390608, 21.272602, 21.988554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.709187, 21.134300, 22.186996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053670, -0.776755, -0.627511,
		0.602320, 0.526407, -0.600089,
		0.796448, -0.345756, 0.496108,
		20.948120, 21.030573, 22.335829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.833414, 21.222210, 21.489553>,  <20.390608, 21.272602, 21.988554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.833414, 21.222210, 21.489553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.961246, 20.979446, 21.780628>,  <21.037945, 20.833788, 21.955273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.961246, 20.979446, 21.780628>,  <20.833414, 21.222210, 21.489553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.961246, 20.979446, 21.780628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031806, -0.774397, -0.631900,
		0.947026, 0.178797, -0.266784,
		0.319579, -0.606911, 0.727687,
		21.057119, 20.797373, 21.998934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.267588, 20.717226, 21.142992>,  <20.833414, 21.222210, 21.489553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.267588, 20.717226, 21.142992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.136446, 20.565489, 21.489080>,  <21.057762, 20.474447, 21.696733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.136446, 20.565489, 21.489080>,  <21.267588, 20.717226, 21.142992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.136446, 20.565489, 21.489080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069079, -0.903765, -0.422417,
		0.942200, -0.198260, 0.270098,
		-0.327853, -0.379343, 0.865223,
		21.038090, 20.451685, 21.748648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.723284, 20.210993, 21.170153>,  <21.267588, 20.717226, 21.142992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.723284, 20.210993, 21.170153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.426109, 20.127623, 21.424585>,  <21.247805, 20.077600, 21.577246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.426109, 20.127623, 21.424585>,  <21.723284, 20.210993, 21.170153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.426109, 20.127623, 21.424585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079981, -0.915834, -0.393512,
		0.664565, -0.343230, 0.663737,
		-0.742938, -0.208428, 0.636083,
		21.203228, 20.065094, 21.615410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.956614, 19.605680, 21.523851>,  <21.723284, 20.210993, 21.170153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.956614, 19.605680, 21.523851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.562872, 19.624987, 21.591633>,  <21.326626, 19.636570, 21.632301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.562872, 19.624987, 21.591633>,  <21.956614, 19.605680, 21.523851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.562872, 19.624987, 21.591633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091433, -0.962041, -0.257134,
		0.150610, -0.268605, 0.951403,
		-0.984356, 0.048263, 0.169452,
		21.267565, 19.639465, 21.642467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.744587, 18.983072, 21.890837>,  <21.956614, 19.605680, 21.523851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.744587, 18.983072, 21.890837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.411909, 19.119366, 21.715481>,  <21.212303, 19.201141, 21.610268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.411909, 19.119366, 21.715481>,  <21.744587, 18.983072, 21.890837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.411909, 19.119366, 21.715481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173749, -0.909620, -0.377363,
		-0.527346, -0.237681, 0.815729,
		-0.831695, 0.340733, -0.438388,
		21.162401, 19.221586, 21.583963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.229694, 18.458517, 21.936956>,  <21.744587, 18.983072, 21.890837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.229694, 18.458517, 21.936956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.035986, 18.671297, 21.659105>,  <20.919762, 18.798965, 21.492393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.035986, 18.671297, 21.659105>,  <21.229694, 18.458517, 21.936956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.035986, 18.671297, 21.659105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307085, -0.846770, -0.434372,
		-0.819257, 0.002957, 0.573419,
		-0.484270, 0.531950, -0.694630,
		20.890705, 18.830883, 21.450716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.677057, 18.020267, 21.894840>,  <21.229694, 18.458517, 21.936956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.677057, 18.020267, 21.894840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.689468, 18.251192, 21.568466>,  <20.696915, 18.389748, 21.372643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.689468, 18.251192, 21.568466>,  <20.677057, 18.020267, 21.894840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.689468, 18.251192, 21.568466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328534, -0.765079, -0.553822,
		-0.943983, 0.285247, 0.165926,
		0.031029, 0.577311, -0.815935,
		20.698776, 18.424385, 21.323687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.986919, 17.938028, 21.605227>,  <20.677057, 18.020267, 21.894840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.986919, 17.938028, 21.605227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.255033, 18.053240, 21.331656>,  <20.415901, 18.122368, 21.167513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.255033, 18.053240, 21.331656>,  <19.986919, 17.938028, 21.605227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.255033, 18.053240, 21.331656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223720, -0.800302, -0.556297,
		-0.707580, 0.525886, -0.471991,
		0.670284, 0.288031, -0.683929,
		20.456118, 18.139648, 21.126476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.577040, 18.100819, 21.098110>,  <19.986919, 17.938028, 21.605227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.577040, 18.100819, 21.098110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.942606, 18.018105, 20.958399>,  <20.161945, 17.968475, 20.874571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.942606, 18.018105, 20.958399>,  <19.577040, 18.100819, 21.098110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.942606, 18.018105, 20.958399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397922, -0.626235, -0.670438,
		-0.080095, 0.751711, -0.654611,
		0.913916, -0.206785, -0.349281,
		20.216782, 17.956068, 20.853615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.427368, 17.988497, 20.338053>,  <19.577040, 18.100819, 21.098110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.427368, 17.988497, 20.338053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.789812, 17.832018, 20.402466>,  <20.007278, 17.738131, 20.441114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.789812, 17.832018, 20.402466>,  <19.427368, 17.988497, 20.338053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.789812, 17.832018, 20.402466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193448, -0.721672, -0.664656,
		0.376225, 0.571099, -0.729590,
		0.906109, -0.391198, 0.161033,
		20.061646, 17.714659, 20.450775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.647747, 17.866554, 19.741665>,  <19.427368, 17.988497, 20.338053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.647747, 17.866554, 19.741665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.879112, 17.627102, 19.963324>,  <20.017931, 17.483431, 20.096319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.879112, 17.627102, 19.963324>,  <19.647747, 17.866554, 19.741665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.879112, 17.627102, 19.963324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085641, -0.631000, -0.771041,
		0.811235, 0.493439, -0.313713,
		0.578414, -0.598629, 0.554148,
		20.052637, 17.447514, 20.129568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.179552, 17.657993, 19.349451>,  <19.647747, 17.866554, 19.741665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.179552, 17.657993, 19.349451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.155741, 17.382820, 19.638783>,  <20.141455, 17.217716, 19.812382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.155741, 17.382820, 19.638783>,  <20.179552, 17.657993, 19.349451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.155741, 17.382820, 19.638783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331707, -0.697069, -0.635661,
		0.941502, 0.202093, 0.269688,
		-0.059528, -0.687934, 0.723328,
		20.137882, 17.176439, 19.855782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.636238, 17.207661, 19.118277>,  <20.179552, 17.657993, 19.349451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.636238, 17.207661, 19.118277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.415522, 17.003988, 19.382477>,  <20.283092, 16.881784, 19.540997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.415522, 17.003988, 19.382477>,  <20.636238, 17.207661, 19.118277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.415522, 17.003988, 19.382477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109397, -0.829331, -0.547944,
		0.826776, -0.230094, 0.513321,
		-0.551791, -0.509183, 0.660499,
		20.249985, 16.851233, 19.580627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.051197, 16.666985, 19.179810>,  <20.636238, 17.207661, 19.118277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.051197, 16.666985, 19.179810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.684706, 16.558638, 19.297899>,  <20.464811, 16.493629, 19.368753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.684706, 16.558638, 19.297899>,  <21.051197, 16.666985, 19.179810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.684706, 16.558638, 19.297899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073737, -0.838265, -0.540254,
		0.393812, -0.473227, 0.788015,
		-0.916229, -0.270865, 0.295224,
		20.409838, 16.477379, 19.386467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.169916, 15.905840, 19.269060>,  <21.051197, 16.666985, 19.179810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.169916, 15.905840, 19.269060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.786087, 16.014900, 19.241123>,  <20.555790, 16.080336, 19.224361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.786087, 16.014900, 19.241123>,  <21.169916, 15.905840, 19.269060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.786087, 16.014900, 19.241123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155925, -0.721564, -0.674562,
		-0.234316, -0.636402, 0.734907,
		-0.959575, 0.272650, -0.069843,
		20.498215, 16.096695, 19.220171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.795481, 15.383633, 19.442657>,  <21.169916, 15.905840, 19.269060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.795481, 15.383633, 19.442657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.536106, 15.602337, 19.230778>,  <20.380482, 15.733560, 19.103649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.536106, 15.602337, 19.230778>,  <20.795481, 15.383633, 19.442657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.536106, 15.602337, 19.230778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134250, -0.767038, -0.627399,
		-0.749336, -0.335718, 0.570779,
		-0.648439, 0.546760, -0.529699,
		20.341576, 15.766365, 19.071867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.241623, 14.911361, 19.263891>,  <20.795481, 15.383633, 19.442657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.241623, 14.911361, 19.263891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.129356, 15.208658, 19.020969>,  <20.061996, 15.387036, 18.875217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.129356, 15.208658, 19.020969>,  <20.241623, 14.911361, 19.263891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.129356, 15.208658, 19.020969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447276, -0.661113, -0.602390,
		-0.849218, 0.102561, 0.517987,
		-0.280666, 0.743243, -0.607302,
		20.045156, 15.431631, 18.838779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.514778, 14.836121, 19.181704>,  <20.241623, 14.911361, 19.263891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.514778, 14.836121, 19.181704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.693913, 15.032262, 18.882639>,  <19.801394, 15.149946, 18.703199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.693913, 15.032262, 18.882639>,  <19.514778, 14.836121, 19.181704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.693913, 15.032262, 18.882639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343093, -0.677945, -0.650137,
		-0.825669, 0.547673, -0.135372,
		0.447837, 0.490352, -0.747661,
		19.828264, 15.179368, 18.658340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.060413, 14.848258, 18.655657>,  <19.514778, 14.836121, 19.181704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.060413, 14.848258, 18.655657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.413286, 14.923268, 18.482874>,  <19.625010, 14.968274, 18.379204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.413286, 14.923268, 18.482874>,  <19.060413, 14.848258, 18.655657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.413286, 14.923268, 18.482874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236020, -0.617684, -0.750174,
		-0.407491, 0.763741, -0.500650,
		0.882182, 0.187526, -0.431959,
		19.677940, 14.979527, 18.353287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.809458, 14.932295, 17.992399>,  <19.060413, 14.848258, 18.655657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.809458, 14.932295, 17.992399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.200516, 14.848633, 17.983744>,  <19.435150, 14.798435, 17.978550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.200516, 14.848633, 17.983744>,  <18.809458, 14.932295, 17.992399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.200516, 14.848633, 17.983744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165365, -0.701211, -0.693511,
		0.129879, 0.681585, -0.720121,
		0.977643, -0.209155, -0.021637,
		19.493809, 14.785887, 17.977253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.926756, 14.623121, 17.360229>,  <18.809458, 14.932295, 17.992399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.926756, 14.623121, 17.360229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.258078, 14.535245, 17.566395>,  <19.456871, 14.482519, 17.690094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.258078, 14.535245, 17.566395>,  <18.926756, 14.623121, 17.360229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.258078, 14.535245, 17.566395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055622, -0.883132, -0.465815,
		0.557514, 0.414504, -0.719280,
		0.828302, -0.219691, 0.515414,
		19.506569, 14.469337, 17.721020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.522346, 14.467584, 16.824608>,  <18.926756, 14.623121, 17.360229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.522346, 14.467584, 16.824608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.584885, 14.266085, 17.164442>,  <19.622408, 14.145185, 17.368343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.584885, 14.266085, 17.164442>,  <19.522346, 14.467584, 16.824608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.584885, 14.266085, 17.164442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025313, -0.857837, -0.513298,
		0.987378, 0.101757, -0.121367,
		0.156344, -0.503747, 0.849585,
		19.631788, 14.114961, 17.419317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.034693, 14.103292, 16.583809>,  <19.522346, 14.467584, 16.824608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.034693, 14.103292, 16.583809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.904604, 13.923447, 16.916574>,  <19.826550, 13.815540, 17.116234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.904604, 13.923447, 16.916574>,  <20.034693, 14.103292, 16.583809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.904604, 13.923447, 16.916574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101414, -0.891248, -0.442033,
		0.940184, -0.059391, 0.335451,
		-0.325223, -0.449611, 0.831913,
		19.807037, 13.788563, 17.166149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.500662, 13.602226, 16.790552>,  <20.034693, 14.103292, 16.583809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.500662, 13.602226, 16.790552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.138880, 13.512457, 16.935656>,  <19.921810, 13.458595, 17.022718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.138880, 13.512457, 16.935656>,  <20.500662, 13.602226, 16.790552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.138880, 13.512457, 16.935656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065677, -0.913537, -0.401419,
		0.421482, -0.339241, 0.840992,
		-0.904455, -0.224425, 0.362759,
		19.867542, 13.445129, 17.044483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.631777, 12.939240, 17.009645>,  <20.500662, 13.602226, 16.790552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.631777, 12.939240, 17.009645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.232767, 12.967333, 17.010885>,  <19.993361, 12.984188, 17.011629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.232767, 12.967333, 17.010885>,  <20.631777, 12.939240, 17.009645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.232767, 12.967333, 17.010885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069320, -0.975346, -0.209510,
		-0.011693, -0.209206, 0.977802,
		-0.997526, 0.070231, 0.003098,
		19.933510, 12.988402, 17.011814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.314558, 12.330894, 17.369532>,  <20.631777, 12.939240, 17.009645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.314558, 12.330894, 17.369532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.009075, 12.456234, 17.143766>,  <19.825787, 12.531439, 17.008307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.009075, 12.456234, 17.143766>,  <20.314558, 12.330894, 17.369532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.009075, 12.456234, 17.143766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157604, -0.938341, -0.307696,
		-0.626030, -0.146035, 0.766003,
		-0.763706, 0.313352, -0.564414,
		19.779963, 12.550240, 16.974442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.610010, 12.083347, 17.534256>,  <20.314558, 12.330894, 17.369532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.610010, 12.083347, 17.534256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.702631, 12.147973, 17.150532>,  <19.758204, 12.186749, 16.920298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.702631, 12.147973, 17.150532>,  <19.610010, 12.083347, 17.534256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.702631, 12.147973, 17.150532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084330, -0.985734, -0.145658,
		-0.969160, -0.047171, -0.241874,
		0.231553, 0.161563, -0.959313,
		19.772097, 12.196442, 16.862738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.152679, 11.715591, 16.965189>,  <19.610010, 12.083347, 17.534256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.152679, 11.715591, 16.965189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.512289, 11.794984, 16.809053>,  <19.728054, 11.842619, 16.715372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.512289, 11.794984, 16.809053>,  <19.152679, 11.715591, 16.965189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.512289, 11.794984, 16.809053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153779, -0.977708, -0.142967,
		-0.410012, 0.068505, -0.909504,
		0.899023, 0.198481, -0.390338,
		19.781996, 11.854528, 16.691952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.182833, 11.504860, 16.144619>,  <19.152679, 11.715591, 16.965189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.182833, 11.504860, 16.144619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.489864, 11.496391, 16.400860>,  <19.674084, 11.491310, 16.554605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.489864, 11.496391, 16.400860>,  <19.182833, 11.504860, 16.144619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.489864, 11.496391, 16.400860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154761, -0.963761, -0.217289,
		0.621989, 0.265927, -0.736487,
		0.767580, -0.021171, 0.640604,
		19.720139, 11.490040, 16.593040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.493933, 11.358084, 16.030727>,  <19.182833, 11.504860, 16.144619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.493933, 11.358084, 16.030727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.395370, 11.624225, 15.748850>,  <18.336233, 11.783909, 15.579724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.395370, 11.624225, 15.748850>,  <18.493933, 11.358084, 16.030727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.395370, 11.624225, 15.748850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892092, -0.128448, -0.433212,
		-0.378755, -0.735396, -0.561905,
		-0.246407, 0.665352, -0.704692,
		18.321449, 11.823831, 15.537442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.300245, 11.011415, 15.390939>,  <18.493933, 11.358084, 16.030727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.300245, 11.011415, 15.390939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.472200, 11.371953, 15.369885>,  <18.575375, 11.588276, 15.357253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.472200, 11.371953, 15.369885>,  <18.300245, 11.011415, 15.390939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.472200, 11.371953, 15.369885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771334, -0.396931, -0.497483,
		-0.469296, 0.173264, -0.865876,
		0.429889, 0.901346, -0.052634,
		18.601168, 11.642357, 15.354095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.685692, 11.130232, 14.690202>,  <18.300245, 11.011415, 15.390939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.685692, 11.130232, 14.690202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.837269, 11.422563, 14.917286>,  <18.928215, 11.597961, 15.053536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.837269, 11.422563, 14.917286>,  <18.685692, 11.130232, 14.690202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.837269, 11.422563, 14.917286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856302, -0.044280, -0.514573,
		-0.350926, 0.681125, -0.642589,
		0.378942, 0.730827, 0.567710,
		18.950951, 11.641810, 15.087599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.952244, 11.650549, 14.254494>,  <18.685692, 11.130232, 14.690202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.952244, 11.650549, 14.254494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.132612, 11.612493, 14.609485>,  <19.240833, 11.589659, 14.822479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.132612, 11.612493, 14.609485>,  <18.952244, 11.650549, 14.254494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.132612, 11.612493, 14.609485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834912, -0.306594, -0.457081,
		0.315582, 0.947074, -0.058816,
		0.450922, -0.095140, 0.887478,
		19.267889, 11.583951, 14.875729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.592522, 11.629625, 13.982954>,  <18.952244, 11.650549, 14.254494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.592522, 11.629625, 13.982954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.621647, 12.016779, 14.079204>,  <19.639122, 12.249071, 14.136953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.621647, 12.016779, 14.079204>,  <19.592522, 11.629625, 13.982954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.621647, 12.016779, 14.079204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850765, -0.186183, 0.491462,
		0.520478, 0.168930, -0.836998,
		0.072812, 0.967884, 0.240624,
		19.643490, 12.307144, 14.151391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.175091, 11.467752, 14.399952>,  <19.592522, 11.629625, 13.982954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.175091, 11.467752, 14.399952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.359810, 11.116641, 14.348966>,  <20.470640, 10.905973, 14.318374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.359810, 11.116641, 14.348966>,  <20.175091, 11.467752, 14.399952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.359810, 11.116641, 14.348966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112253, 0.200388, -0.973265,
		0.879854, 0.435141, 0.191072,
		0.461796, -0.877780, -0.127466,
		20.498348, 10.853307, 14.310726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.911478, 11.526729, 14.043530>,  <20.175091, 11.467752, 14.399952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.911478, 11.526729, 14.043530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.792780, 11.149656, 13.982478>,  <20.721561, 10.923413, 13.945848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.792780, 11.149656, 13.982478>,  <20.911478, 11.526729, 14.043530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.792780, 11.149656, 13.982478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448705, 0.003445, -0.893673,
		0.842974, -0.333678, 0.421963,
		-0.296745, -0.942681, -0.152627,
		20.703756, 10.866852, 13.936690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.529806, 11.214403, 13.811134>,  <20.911478, 11.526729, 14.043530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.529806, 11.214403, 13.811134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.205416, 10.998944, 13.719763>,  <21.010782, 10.869669, 13.664940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.205416, 10.998944, 13.719763>,  <21.529806, 11.214403, 13.811134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.205416, 10.998944, 13.719763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302497, -0.051820, -0.951740,
		0.500815, -0.840936, 0.204964,
		-0.810975, -0.538647, -0.228429,
		20.962124, 10.837350, 13.651234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.731981, 10.806862, 13.296897>,  <21.529806, 11.214403, 13.811134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.731981, 10.806862, 13.296897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.334393, 10.835693, 13.263861>,  <21.095839, 10.852992, 13.244039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.334393, 10.835693, 13.263861>,  <21.731981, 10.806862, 13.296897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.334393, 10.835693, 13.263861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087249, 0.064065, -0.994124,
		-0.066365, -0.995339, -0.069968,
		-0.993974, 0.072079, -0.082590,
		21.036200, 10.857317, 13.239083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.559784, 10.319694, 12.822966>,  <21.731981, 10.806862, 13.296897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.559784, 10.319694, 12.822966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.249914, 10.572272, 12.809404>,  <21.063992, 10.723820, 12.801268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.249914, 10.572272, 12.809404>,  <21.559784, 10.319694, 12.822966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.249914, 10.572272, 12.809404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210616, 0.207094, -0.955381,
		-0.596253, -0.747252, -0.293424,
		-0.774677, 0.631448, -0.033903,
		21.017511, 10.761706, 12.799233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.320038, 10.233675, 12.190219>,  <21.559784, 10.319694, 12.822966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.320038, 10.233675, 12.190219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.168900, 10.584077, 12.310119>,  <21.078217, 10.794318, 12.382058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.168900, 10.584077, 12.310119>,  <21.320038, 10.233675, 12.190219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.168900, 10.584077, 12.310119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027639, 0.312933, -0.949373,
		-0.925456, -0.367002, -0.094029,
		-0.377846, 0.876004, 0.299749,
		21.055546, 10.846878, 12.400043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.659016, 10.289621, 11.923919>,  <21.320038, 10.233675, 12.190219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.659016, 10.289621, 11.923919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.831894, 10.645576, 11.982310>,  <20.935621, 10.859148, 12.017345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.831894, 10.645576, 11.982310>,  <20.659016, 10.289621, 11.923919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.831894, 10.645576, 11.982310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186729, 0.246684, -0.950936,
		-0.882234, 0.383734, 0.272783,
		0.432198, 0.889885, 0.145979,
		20.961554, 10.912541, 12.026104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.386024, 10.691796, 11.467797>,  <20.659016, 10.289621, 11.923919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.386024, 10.691796, 11.467797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.677868, 10.937922, 11.587169>,  <20.852974, 11.085598, 11.658792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.677868, 10.937922, 11.587169>,  <20.386024, 10.691796, 11.467797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.677868, 10.937922, 11.587169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008306, 0.428380, -0.903560,
		-0.683815, 0.661724, 0.307439,
		0.729608, 0.615315, 0.298429,
		20.896749, 11.122517, 11.676698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.180677, 11.395630, 11.305315>,  <20.386024, 10.691796, 11.467797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.180677, 11.395630, 11.305315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.579453, 11.372309, 11.326162>,  <20.818718, 11.358316, 11.338671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.579453, 11.372309, 11.326162>,  <20.180677, 11.395630, 11.305315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.579453, 11.372309, 11.326162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070527, 0.382354, -0.921321,
		0.033788, 0.922175, 0.385295,
		0.996938, -0.058303, 0.052119,
		20.878534, 11.354818, 11.341798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.443134, 12.175344, 11.133204>,  <20.180677, 11.395630, 11.305315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.443134, 12.175344, 11.133204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.715212, 11.893640, 11.051867>,  <20.878458, 11.724617, 11.003064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.715212, 11.893640, 11.051867>,  <20.443134, 12.175344, 11.133204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.715212, 11.893640, 11.051867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095838, 0.360460, -0.927838,
		0.726738, 0.611624, 0.312679,
		0.680196, -0.704262, -0.203343,
		20.919271, 11.682361, 10.990864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.963942, 12.543897, 10.717556>,  <20.443134, 12.175344, 11.133204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.963942, 12.543897, 10.717556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.058729, 12.159810, 10.658454>,  <21.115601, 11.929358, 10.622993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.058729, 12.159810, 10.658454>,  <20.963942, 12.543897, 10.717556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.058729, 12.159810, 10.658454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369105, 0.229667, -0.900563,
		0.898670, 0.158867, 0.408844,
		0.236968, -0.960216, -0.147756,
		21.129820, 11.871745, 10.614127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.453730, 12.554579, 10.231244>,  <20.963942, 12.543897, 10.717556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.453730, 12.554579, 10.231244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.353224, 12.167920, 10.211397>,  <21.292921, 11.935925, 10.199489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.353224, 12.167920, 10.211397>,  <21.453730, 12.554579, 10.231244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.353224, 12.167920, 10.211397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299695, -0.028952, -0.953595,
		0.920353, -0.254473, 0.296974,
		-0.251262, -0.966646, -0.049618,
		21.277845, 11.877926, 10.196511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.035198, 12.230853, 10.051875>,  <21.453730, 12.554579, 10.231244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.035198, 12.230853, 10.051875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.733053, 11.987936, 9.953390>,  <21.551765, 11.842186, 9.894299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.733053, 11.987936, 9.953390>,  <22.035198, 12.230853, 10.051875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.733053, 11.987936, 9.953390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393562, -0.120001, -0.911432,
		0.523959, -0.785364, 0.329652,
		-0.755364, -0.607292, -0.246214,
		21.506443, 11.805748, 9.879526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.310089, 11.720303, 9.739275>,  <22.035198, 12.230853, 10.051875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.310089, 11.720303, 9.739275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.932341, 11.700669, 9.609196>,  <21.705692, 11.688890, 9.531148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.932341, 11.700669, 9.609196>,  <22.310089, 11.720303, 9.739275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.932341, 11.700669, 9.609196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326931, -0.247616, -0.912032,
		-0.035758, -0.967614, 0.249888,
		-0.944371, -0.049084, -0.325197,
		21.649029, 11.685945, 9.511637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.206892, 11.090844, 9.246203>,  <22.310089, 11.720303, 9.739275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.206892, 11.090844, 9.246203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.941902, 11.386761, 9.199156>,  <21.782907, 11.564311, 9.170927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.941902, 11.386761, 9.199156>,  <22.206892, 11.090844, 9.246203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.941902, 11.386761, 9.199156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374564, 0.191169, -0.907279,
		-0.648713, -0.645106, -0.403744,
		-0.662475, 0.739793, -0.117620,
		21.743160, 11.608699, 9.163870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.863245, 10.998322, 8.657062>,  <22.206892, 11.090844, 9.246203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.863245, 10.998322, 8.657062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.807705, 11.391112, 8.708357>,  <21.774382, 11.626786, 8.739134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.807705, 11.391112, 8.708357>,  <21.863245, 10.998322, 8.657062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.807705, 11.391112, 8.708357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341478, 0.169024, -0.924567,
		-0.929577, -0.084584, -0.358792,
		-0.138848, 0.981976, 0.128237,
		21.766050, 11.685705, 8.746828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.016281, 11.264870, 7.932778>,  <21.863245, 10.998322, 8.657062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.016281, 11.264870, 7.932778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.000240, 11.602909, 8.146019>,  <21.990616, 11.805733, 8.273964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.000240, 11.602909, 8.146019>,  <22.016281, 11.264870, 7.932778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.000240, 11.602909, 8.146019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562702, 0.459986, -0.686862,
		-0.825686, 0.272433, -0.493986,
		-0.040102, 0.845099, 0.533103,
		21.988209, 11.856439, 8.305950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.888430, 11.774288, 7.500167>,  <22.016281, 11.264870, 7.932778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.888430, 11.774288, 7.500167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.060921, 11.952662, 7.813902>,  <22.164415, 12.059686, 8.002144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.060921, 11.952662, 7.813902>,  <21.888430, 11.774288, 7.500167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.060921, 11.952662, 7.813902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511792, 0.595030, -0.619684,
		-0.743043, 0.668642, 0.028367,
		0.431226, 0.445934, 0.784338,
		22.190289, 12.086442, 8.049204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.731680, 12.443672, 7.443011>,  <21.888430, 11.774288, 7.500167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.731680, 12.443672, 7.443011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.054995, 12.417601, 7.677079>,  <22.248983, 12.401958, 7.817519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.054995, 12.417601, 7.677079>,  <21.731680, 12.443672, 7.443011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.054995, 12.417601, 7.677079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455611, 0.698762, -0.551499,
		-0.372948, 0.712379, 0.594497,
		0.808288, -0.065179, 0.585169,
		22.297482, 12.398046, 7.852630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.958340, 13.041644, 7.400231>,  <21.731680, 12.443672, 7.443011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.958340, 13.041644, 7.400231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.264301, 12.844440, 7.566059>,  <22.447878, 12.726118, 7.665555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.264301, 12.844440, 7.566059>,  <21.958340, 13.041644, 7.400231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.264301, 12.844440, 7.566059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643800, 0.606207, -0.466941,
		-0.021109, 0.624064, 0.781088,
		0.764902, -0.493008, 0.414569,
		22.493773, 12.696538, 7.690429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.379721, 13.498331, 7.819565>,  <21.958340, 13.041644, 7.400231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.379721, 13.498331, 7.819565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.599331, 13.191163, 7.687583>,  <22.731096, 13.006863, 7.608394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.599331, 13.191163, 7.687583>,  <22.379721, 13.498331, 7.819565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.599331, 13.191163, 7.687583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649302, 0.640453, -0.410155,
		0.526286, 0.010946, 0.850237,
		0.549026, -0.767919, -0.329955,
		22.764038, 12.960787, 7.588596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.936056, 14.075949, 8.048924>,  <22.379721, 13.498331, 7.819565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.936056, 14.075949, 8.048924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.680067, 14.249335, 7.795140>,  <21.526474, 14.353368, 7.642869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.680067, 14.249335, 7.795140>,  <21.936056, 14.075949, 8.048924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.680067, 14.249335, 7.795140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106170, 0.767891, 0.631720,
		0.761028, 0.471645, -0.445408,
		-0.639973, 0.433467, -0.634461,
		21.488075, 14.379375, 7.604802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.255713, 14.799274, 7.851367>,  <21.936056, 14.075949, 8.048924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.255713, 14.799274, 7.851367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.857315, 14.776057, 7.824144>,  <21.618277, 14.762127, 7.807811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.857315, 14.776057, 7.824144>,  <22.255713, 14.799274, 7.851367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.857315, 14.776057, 7.824144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089438, 0.656088, 0.749367,
		0.001155, 0.752450, -0.658649,
		-0.995992, -0.058043, -0.068055,
		21.558517, 14.758644, 7.803728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.857761, 15.514175, 7.675324>,  <22.255713, 14.799274, 7.851367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.857761, 15.514175, 7.675324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.690584, 15.252213, 7.927171>,  <21.590277, 15.095035, 8.078279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.690584, 15.252213, 7.927171>,  <21.857761, 15.514175, 7.675324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.690584, 15.252213, 7.927171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052951, 0.709433, 0.702781,
		-0.906928, 0.260384, -0.331181,
		-0.417944, -0.654908, 0.629617,
		21.565201, 15.055740, 8.116056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.283213, 15.922988, 8.030375>,  <21.857761, 15.514175, 7.675324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.283213, 15.922988, 8.030375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.399612, 15.613027, 8.254818>,  <21.469452, 15.427050, 8.389484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.399612, 15.613027, 8.254818>,  <21.283213, 15.922988, 8.030375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.399612, 15.613027, 8.254818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259029, 0.500772, 0.825912,
		-0.920990, -0.385685, -0.054997,
		0.291001, -0.774903, 0.561110,
		21.486914, 15.380556, 8.423151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.656290, 15.842978, 8.453921>,  <21.283213, 15.922988, 8.030375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.656290, 15.842978, 8.453921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.030481, 15.773059, 8.576770>,  <21.254997, 15.731107, 8.650479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.030481, 15.773059, 8.576770>,  <20.656290, 15.842978, 8.453921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.030481, 15.773059, 8.576770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180213, 0.511611, 0.840105,
		-0.303977, -0.841248, 0.447100,
		0.935479, -0.174799, 0.307122,
		21.311125, 15.720619, 8.668906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.829756, 15.452887, 9.161594>,  <20.656290, 15.842978, 8.453921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.829756, 15.452887, 9.161594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.104574, 15.720860, 9.049053>,  <21.269464, 15.881643, 8.981528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.104574, 15.720860, 9.049053>,  <20.829756, 15.452887, 9.161594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.104574, 15.720860, 9.049053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174931, 0.528322, 0.830828,
		0.705244, -0.521598, 0.480173,
		0.687044, 0.669934, -0.281352,
		21.310688, 15.921840, 8.964647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.126778, 15.549675, 9.705907>,  <20.829756, 15.452887, 9.161594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.126778, 15.549675, 9.705907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.275801, 15.867469, 9.514075>,  <21.365215, 16.058146, 9.398976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.275801, 15.867469, 9.514075>,  <21.126778, 15.549675, 9.705907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.275801, 15.867469, 9.514075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012920, 0.512292, 0.858714,
		0.927918, -0.326118, 0.180595,
		0.372559, 0.794484, -0.479578,
		21.387569, 16.105814, 9.370202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.675825, 15.769423, 10.035982>,  <21.126778, 15.549675, 9.705907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.675825, 15.769423, 10.035982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.483738, 16.060356, 9.839868>,  <21.368486, 16.234915, 9.722198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.483738, 16.060356, 9.839868>,  <21.675825, 15.769423, 10.035982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.483738, 16.060356, 9.839868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301201, 0.388232, 0.870950,
		0.823813, 0.565921, 0.032637,
		-0.480218, 0.727330, -0.490287,
		21.339672, 16.278555, 9.692781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.536179, 15.211349, 10.555373>,  <21.675825, 15.769423, 10.035982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.536179, 15.211349, 10.555373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.851397, 15.452462, 10.605400>,  <22.040527, 15.597130, 10.635416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.851397, 15.452462, 10.605400>,  <21.536179, 15.211349, 10.555373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.851397, 15.452462, 10.605400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169711, -0.407999, 0.897070,
		0.591766, -0.685705, -0.423819,
		0.788043, 0.602782, 0.125068,
		22.087809, 15.633297, 10.642920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.975126, 14.714636, 10.921244>,  <21.536179, 15.211349, 10.555373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.975126, 14.714636, 10.921244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.028967, 15.100996, 11.009714>,  <22.061272, 15.332812, 11.062797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.028967, 15.100996, 11.009714>,  <21.975126, 14.714636, 10.921244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.028967, 15.100996, 11.009714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035417, -0.218375, 0.975222,
		0.990267, -0.139099, 0.004815,
		0.134601, 0.965901, 0.221176,
		22.069347, 15.390766, 11.076067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.537601, 14.769666, 11.362139>,  <21.975126, 14.714636, 10.921244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.537601, 14.769666, 11.362139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.363224, 15.117682, 11.454211>,  <22.258598, 15.326492, 11.509455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.363224, 15.117682, 11.454211>,  <22.537601, 14.769666, 11.362139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.363224, 15.117682, 11.454211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205543, -0.152752, 0.966653,
		0.876188, 0.468717, -0.112240,
		-0.435942, 0.870041, 0.230181,
		22.232441, 15.378695, 11.523266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.977152, 14.992933, 11.872134>,  <22.537601, 14.769666, 11.362139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.977152, 14.992933, 11.872134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.619331, 15.168974, 11.903341>,  <22.404638, 15.274598, 11.922066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.619331, 15.168974, 11.903341>,  <22.977152, 14.992933, 11.872134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.619331, 15.168974, 11.903341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022056, -0.217806, 0.975743,
		0.446419, 0.871132, 0.204546,
		-0.894552, 0.440102, 0.078019,
		22.350965, 15.301004, 11.926747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.084942, 15.461002, 12.344660>,  <22.977152, 14.992933, 11.872134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.084942, 15.461002, 12.344660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.688623, 15.407032, 12.340385>,  <22.450832, 15.374650, 12.337821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.688623, 15.407032, 12.340385>,  <23.084942, 15.461002, 12.344660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.688623, 15.407032, 12.340385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055518, -0.477143, 0.877070,
		-0.123439, 0.868406, 0.480244,
		-0.990798, -0.134926, -0.010686,
		22.391384, 15.366554, 12.337179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.774851, 15.718434, 13.080023>,  <23.084942, 15.461002, 12.344660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.774851, 15.718434, 13.080023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.488293, 15.476389, 12.941105>,  <22.316359, 15.331161, 12.857754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.488293, 15.476389, 12.941105>,  <22.774851, 15.718434, 13.080023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.488293, 15.476389, 12.941105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119920, -0.383573, 0.915692,
		-0.687311, 0.697645, 0.202225,
		-0.716395, -0.605115, -0.347295,
		22.273375, 15.294854, 12.836916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.360365, 15.603852, 13.619009>,  <22.774851, 15.718434, 13.080023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.360365, 15.603852, 13.619009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.256914, 15.303562, 13.375855>,  <22.194843, 15.123388, 13.229963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.256914, 15.303562, 13.375855>,  <22.360365, 15.603852, 13.619009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.256914, 15.303562, 13.375855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310702, -0.531203, 0.788217,
		-0.914645, 0.392725, -0.095869,
		-0.258627, -0.750726, -0.607883,
		22.179327, 15.078344, 13.193490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.786085, 15.475336, 13.905730>,  <22.360365, 15.603852, 13.619009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.786085, 15.475336, 13.905730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.928995, 15.168141, 13.693109>,  <22.014742, 14.983825, 13.565536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.928995, 15.168141, 13.693109>,  <21.786085, 15.475336, 13.905730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.928995, 15.168141, 13.693109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232858, -0.624386, 0.745600,
		-0.904506, -0.142609, -0.401910,
		0.357276, -0.767988, -0.531554,
		22.036179, 14.937745, 13.533643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.351269, 14.959675, 14.023609>,  <21.786085, 15.475336, 13.905730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.351269, 14.959675, 14.023609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.646292, 14.751994, 13.850895>,  <21.823305, 14.627386, 13.747266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.646292, 14.751994, 13.850895>,  <21.351269, 14.959675, 14.023609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.646292, 14.751994, 13.850895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260640, -0.808742, 0.527260,
		-0.622958, -0.276343, -0.731818,
		0.737557, -0.519202, -0.431786,
		21.867559, 14.596233, 13.721359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.022827, 14.362817, 13.790545>,  <21.351269, 14.959675, 14.023609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.022827, 14.362817, 13.790545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.414476, 14.297187, 13.838534>,  <21.649466, 14.257809, 13.867328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.414476, 14.297187, 13.838534>,  <21.022827, 14.362817, 13.790545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.414476, 14.297187, 13.838534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201742, -0.856471, 0.475139,
		0.024795, -0.489424, -0.871693,
		0.979125, -0.164076, 0.119974,
		21.708214, 14.247964, 13.874526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.065857, 13.651760, 13.666372>,  <21.022827, 14.362817, 13.790545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.065857, 13.651760, 13.666372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.402681, 13.749195, 13.858871>,  <21.604776, 13.807656, 13.974371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.402681, 13.749195, 13.858871>,  <21.065857, 13.651760, 13.666372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.402681, 13.749195, 13.858871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048748, -0.854200, 0.517655,
		0.537176, -0.459356, -0.707413,
		0.842060, 0.243587, 0.481249,
		21.655300, 13.822271, 14.003246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.387848, 13.002338, 13.598815>,  <21.065857, 13.651760, 13.666372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.387848, 13.002338, 13.598815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.600208, 13.224118, 13.855168>,  <21.727625, 13.357186, 14.008981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.600208, 13.224118, 13.855168>,  <21.387848, 13.002338, 13.598815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.600208, 13.224118, 13.855168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032298, -0.768952, 0.638490,
		0.846819, -0.318275, -0.426145,
		0.530900, 0.554449, 0.640883,
		21.759478, 13.390453, 14.047433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.806227, 12.487298, 13.851684>,  <21.387848, 13.002338, 13.598815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.806227, 12.487298, 13.851684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.817030, 12.794789, 14.107285>,  <21.823511, 12.979284, 14.260647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.817030, 12.794789, 14.107285>,  <21.806227, 12.487298, 13.851684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.817030, 12.794789, 14.107285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189023, -0.631634, 0.751870,
		0.981601, 0.100481, -0.162366,
		0.027007, 0.768728, 0.639006,
		21.825132, 13.025408, 14.298987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.418245, 12.396990, 14.324158>,  <21.806227, 12.487298, 13.851684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.418245, 12.396990, 14.324158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.135073, 12.618962, 14.498918>,  <21.965168, 12.752146, 14.603774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.135073, 12.618962, 14.498918>,  <22.418245, 12.396990, 14.324158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.135073, 12.618962, 14.498918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043643, -0.583041, 0.811270,
		0.704931, 0.593392, 0.388535,
		-0.707932, 0.554932, 0.436901,
		21.922693, 12.785442, 14.629988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.640858, 12.475245, 14.990548>,  <22.418245, 12.396990, 14.324158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.640858, 12.475245, 14.990548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.248247, 12.551045, 14.980012>,  <22.012680, 12.596526, 14.973690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.248247, 12.551045, 14.980012>,  <22.640858, 12.475245, 14.990548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.248247, 12.551045, 14.980012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109277, -0.442265, 0.890202,
		0.157047, 0.876636, 0.454803,
		-0.981527, 0.189503, -0.026340,
		21.953789, 12.607897, 14.972110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.410095, 12.487749, 15.180673>,  <22.640858, 12.475245, 14.990548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.410095, 12.487749, 15.180673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.772684, 12.630073, 15.089718>,  <23.990238, 12.715466, 15.035145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.772684, 12.630073, 15.089718>,  <23.410095, 12.487749, 15.180673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.772684, 12.630073, 15.089718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263540, 0.055969, -0.963023,
		-0.329925, 0.932881, 0.144504,
		0.906474, 0.355808, -0.227387,
		24.044626, 12.736815, 15.021502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.496170, 13.270366, 15.032204>,  <23.410095, 12.487749, 15.180673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.496170, 13.270366, 15.032204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.706091, 13.012181, 14.810226>,  <23.832045, 12.857271, 14.677040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.706091, 13.012181, 14.810226>,  <23.496170, 13.270366, 15.032204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.706091, 13.012181, 14.810226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574299, 0.212720, -0.790526,
		0.628300, 0.733575, -0.259051,
		0.524804, -0.645460, -0.554943,
		23.863533, 12.818543, 14.643744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.681900, 13.625012, 14.401517>,  <23.496170, 13.270366, 15.032204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.681900, 13.625012, 14.401517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.718317, 13.233482, 14.328183>,  <23.740168, 12.998564, 14.284183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.718317, 13.233482, 14.328183>,  <23.681900, 13.625012, 14.401517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.718317, 13.233482, 14.328183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322833, 0.145148, -0.935260,
		0.942067, 0.144335, -0.302783,
		0.091043, -0.978826, -0.183335,
		23.745630, 12.939835, 14.273183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.331869, 13.351388, 14.720485>,  <23.681900, 13.625012, 14.401517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.331869, 13.351388, 14.720485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.598654, 13.283296, 15.010638>,  <24.758724, 13.242440, 15.184731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.598654, 13.283296, 15.010638>,  <24.331869, 13.351388, 14.720485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.598654, 13.283296, 15.010638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740185, 0.039839, -0.671222,
		0.085364, 0.984599, 0.152573,
		0.666963, -0.170231, 0.725384,
		24.798742, 13.232226, 15.228253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.885765, 13.701396, 14.853501>,  <24.331869, 13.351388, 14.720485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.885765, 13.701396, 14.853501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.104631, 13.688498, 15.188063>,  <25.235950, 13.680758, 15.388800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.104631, 13.688498, 15.188063>,  <24.885765, 13.701396, 14.853501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.104631, 13.688498, 15.188063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677528, 0.603818, -0.419953,
		-0.491493, 0.796470, 0.352236,
		0.547166, -0.032246, 0.836403,
		25.268782, 13.678823, 15.438984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.955362, 14.337392, 15.151936>,  <24.885765, 13.701396, 14.853501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.955362, 14.337392, 15.151936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.293978, 14.144654, 15.242444>,  <25.497147, 14.029012, 15.296749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.293978, 14.144654, 15.242444>,  <24.955362, 14.337392, 15.151936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.293978, 14.144654, 15.242444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532276, 0.760350, -0.372223,
		0.007308, 0.435541, 0.900139,
		0.846539, -0.481843, 0.226271,
		25.547939, 14.000101, 15.310326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.487116, 14.676891, 15.622475>,  <24.955362, 14.337392, 15.151936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.487116, 14.676891, 15.622475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.604067, 14.435103, 15.326061>,  <25.674236, 14.290030, 15.148213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.604067, 14.435103, 15.326061>,  <25.487116, 14.676891, 15.622475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.604067, 14.435103, 15.326061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711450, 0.655294, -0.253827,
		0.639027, -0.452996, 0.621643,
		0.292376, -0.604470, -0.741034,
		25.691780, 14.253762, 15.103751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.193916, 14.456513, 15.783870>,  <25.487116, 14.676891, 15.622475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.193916, 14.456513, 15.783870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.092430, 14.488462, 15.398280>,  <26.031538, 14.507631, 15.166926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.092430, 14.488462, 15.398280>,  <26.193916, 14.456513, 15.783870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.092430, 14.488462, 15.398280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834476, 0.522054, -0.176378,
		0.489159, -0.849165, -0.199106,
		-0.253718, 0.079872, -0.963975,
		26.016315, 14.512424, 15.109088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.798479, 14.414611, 15.463955>,  <26.193916, 14.456513, 15.783870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.798479, 14.414611, 15.463955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.548904, 14.606097, 15.216881>,  <26.399160, 14.720989, 15.068636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.548904, 14.606097, 15.216881>,  <26.798479, 14.414611, 15.463955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.548904, 14.606097, 15.216881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702763, 0.689421, -0.175564,
		0.341800, -0.543627, -0.766579,
		-0.623937, 0.478715, -0.617685,
		26.361723, 14.749712, 15.031575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.281506, 14.156977, 14.850834>,  <26.798479, 14.414611, 15.463955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.281506, 14.156977, 14.850834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.355438, 14.406070, 15.154950>,  <27.399797, 14.555526, 15.337420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.355438, 14.406070, 15.154950>,  <27.281506, 14.156977, 14.850834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.355438, 14.406070, 15.154950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378078, 0.759137, -0.529875,
		-0.907135, -0.189512, 0.375753,
		0.184830, 0.622733, 0.760291,
		27.410887, 14.592890, 15.383038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.796816, 14.656096, 14.655931>,  <27.281506, 14.156977, 14.850834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.796816, 14.656096, 14.655931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.044010, 14.817121, 14.926054>,  <27.192327, 14.913734, 15.088127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.044010, 14.817121, 14.926054>,  <26.796816, 14.656096, 14.655931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.044010, 14.817121, 14.926054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262334, 0.915319, -0.305567,
		-0.741129, 0.011681, 0.671261,
		0.617988, 0.402559, 0.675306,
		27.229406, 14.937888, 15.128646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<18.340448, 22.621181, 19.631506> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.002052, 22.600063, 19.843737>,  <17.799015, 22.587393, 19.971075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.002052, 22.600063, 19.843737>,  <18.340448, 22.621181, 19.631506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.002052, 22.600063, 19.843737> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317202, -0.750010, -0.580404,
		0.428582, -0.659317, 0.617754,
		-0.845991, -0.052797, 0.530577,
		17.748255, 22.584225, 20.002911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.218323, 21.857250, 19.803198>,  <18.340448, 22.621181, 19.631506>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.218323, 21.857250, 19.803198> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.872335, 22.052120, 19.851339>,  <17.664743, 22.169043, 19.880224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.872335, 22.052120, 19.851339>,  <18.218323, 21.857250, 19.803198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.872335, 22.052120, 19.851339> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496745, -0.797192, -0.343117,
		-0.071213, -0.356571, 0.931550,
		-0.864970, 0.487177, 0.120354,
		17.612844, 22.198273, 19.887445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.723654, 21.331760, 20.153433>,  <18.218323, 21.857250, 19.803198>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.723654, 21.331760, 20.153433> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.504421, 21.629929, 20.001665>,  <17.372883, 21.808830, 19.910604>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.504421, 21.629929, 20.001665>,  <17.723654, 21.331760, 20.153433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.504421, 21.629929, 20.001665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658307, -0.664264, -0.354098,
		-0.515985, 0.055699, 0.854785,
		-0.548080, 0.745420, -0.379418,
		17.339998, 21.853554, 19.887840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.970850, 21.138519, 20.341049>,  <17.723654, 21.331760, 20.153433>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.970850, 21.138519, 20.341049> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.962555, 21.376940, 20.019978>,  <16.957579, 21.519993, 19.827335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.962555, 21.376940, 20.019978>,  <16.970850, 21.138519, 20.341049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.962555, 21.376940, 20.019978> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614981, -0.640603, -0.459812,
		-0.788269, 0.484097, 0.379845,
		-0.020736, 0.596053, -0.802678,
		16.956333, 21.555756, 19.779175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.275833, 21.152037, 20.183521>,  <16.970850, 21.138519, 20.341049>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.275833, 21.152037, 20.183521> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.450001, 21.295061, 19.853052>,  <16.554501, 21.380877, 19.654770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.450001, 21.295061, 19.853052>,  <16.275833, 21.152037, 20.183521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.450001, 21.295061, 19.853052> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511098, -0.657300, -0.553838,
		-0.741074, 0.663406, -0.103450,
		0.435417, 0.357561, -0.826173,
		16.580626, 21.402330, 19.605200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.725686, 21.281260, 19.744871>,  <16.275833, 21.152037, 20.183521>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.725686, 21.281260, 19.744871> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.054546, 21.262020, 19.517979>,  <16.251863, 21.250477, 19.381844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.054546, 21.262020, 19.517979>,  <15.725686, 21.281260, 19.744871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.054546, 21.262020, 19.517979> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398174, -0.760718, -0.512607,
		-0.406848, 0.647298, -0.644578,
		0.822151, -0.048101, -0.567233,
		16.301191, 21.247589, 19.347809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.538944, 21.293695, 19.025570>,  <15.725686, 21.281260, 19.744871>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.538944, 21.293695, 19.025570> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.915065, 21.164129, 18.983782>,  <16.140738, 21.086390, 18.958710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.915065, 21.164129, 18.983782>,  <15.538944, 21.293695, 19.025570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.915065, 21.164129, 18.983782> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316976, -0.721680, -0.615390,
		0.123940, 0.611766, -0.781269,
		0.940301, -0.323915, -0.104470,
		16.197155, 21.066956, 18.952440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.726003, 21.237852, 18.293304>,  <15.538944, 21.293695, 19.025570>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.726003, 21.237852, 18.293304> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.932149, 20.971972, 18.509665>,  <16.055836, 20.812443, 18.639481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.932149, 20.971972, 18.509665>,  <15.726003, 21.237852, 18.293304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.932149, 20.971972, 18.509665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228001, -0.714779, -0.661141,
		0.826084, 0.217404, -0.519925,
		0.515365, -0.664701, 0.540899,
		16.086758, 20.772562, 18.671934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.016380, 20.806597, 17.855259>,  <15.726003, 21.237852, 18.293304>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.016380, 20.806597, 17.855259> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.092520, 20.576820, 18.173702>,  <16.138203, 20.438955, 18.364769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.092520, 20.576820, 18.173702>,  <16.016380, 20.806597, 17.855259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.092520, 20.576820, 18.173702> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075337, -0.817091, -0.571566,
		0.978822, 0.048820, -0.198808,
		0.190348, -0.574439, 0.796108,
		16.149624, 20.404490, 18.412535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.605190, 20.274557, 17.737598>,  <16.016380, 20.806597, 17.855259>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.605190, 20.274557, 17.737598> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.375963, 20.137650, 18.035442>,  <16.238428, 20.055504, 18.214149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.375963, 20.137650, 18.035442>,  <16.605190, 20.274557, 17.737598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.375963, 20.137650, 18.035442> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305302, -0.932366, -0.193608,
		0.760517, 0.116381, 0.638803,
		-0.573067, -0.342270, 0.744611,
		16.204042, 20.034969, 18.258825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.018204, 19.806576, 18.230194>,  <16.605190, 20.274557, 17.737598>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.018204, 19.806576, 18.230194> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.628050, 19.719227, 18.242426>,  <16.393957, 19.666817, 18.249765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.628050, 19.719227, 18.242426>,  <17.018204, 19.806576, 18.230194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.628050, 19.719227, 18.242426> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208253, -0.957877, -0.197746,
		0.072476, -0.186510, 0.979776,
		-0.975386, -0.218373, 0.030582,
		16.335434, 19.653715, 18.251600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.007490, 19.172068, 18.570910>,  <17.018204, 19.806576, 18.230194>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.007490, 19.172068, 18.570910> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.626797, 19.177443, 18.448257>,  <16.398380, 19.180668, 18.374666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.626797, 19.177443, 18.448257>,  <17.007490, 19.172068, 18.570910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.626797, 19.177443, 18.448257> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085312, -0.948089, -0.306350,
		-0.294829, -0.317723, 0.901182,
		-0.951734, 0.013439, -0.306629,
		16.341276, 19.181475, 18.356268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.661978, 18.589293, 18.817188>,  <17.007490, 19.172068, 18.570910>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.661978, 18.589293, 18.817188> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.428093, 18.669727, 18.502819>,  <16.287762, 18.717989, 18.314198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.428093, 18.669727, 18.502819>,  <16.661978, 18.589293, 18.817188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.428093, 18.669727, 18.502819> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166461, -0.918437, -0.358836,
		-0.793978, -0.340642, 0.503550,
		-0.584714, 0.201086, -0.785923,
		16.252680, 18.730053, 18.267042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.040670, 18.071821, 18.811375>,  <16.661978, 18.589293, 18.817188>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.040670, 18.071821, 18.811375> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.067940, 18.219307, 18.440559>,  <16.084301, 18.307798, 18.218069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.067940, 18.219307, 18.440559>,  <16.040670, 18.071821, 18.811375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.067940, 18.219307, 18.440559> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077215, -0.928364, -0.363563,
		-0.994681, -0.046795, -0.091762,
		0.068176, 0.368714, -0.927039,
		16.088392, 18.329922, 18.162447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.492155, 17.815533, 18.495396>,  <16.040670, 18.071821, 18.811375>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.492155, 17.815533, 18.495396> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.763789, 17.893351, 18.212273>,  <15.926770, 17.940041, 18.042398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.763789, 17.893351, 18.212273>,  <15.492155, 17.815533, 18.495396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.763789, 17.893351, 18.212273> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095638, -0.932574, -0.348079,
		-0.727802, 0.304069, -0.614692,
		0.679086, 0.194545, -0.707810,
		15.967515, 17.951714, 17.999929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.278390, 17.356625, 17.944305>,  <15.492155, 17.815533, 18.495396>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.278390, 17.356625, 17.944305> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.643414, 17.466843, 17.823435>,  <15.862428, 17.532974, 17.750912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.643414, 17.466843, 17.823435>,  <15.278390, 17.356625, 17.944305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.643414, 17.466843, 17.823435> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136741, -0.901984, -0.409545,
		-0.385408, 0.332414, -0.860791,
		0.912558, 0.275547, -0.302177,
		15.917181, 17.549507, 17.732782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.218151, 17.153379, 17.302732>,  <15.278390, 17.356625, 17.944305>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.218151, 17.153379, 17.302732> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.616390, 17.184074, 17.324261>,  <15.855333, 17.202492, 17.337177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.616390, 17.184074, 17.324261>,  <15.218151, 17.153379, 17.302732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.616390, 17.184074, 17.324261> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093463, -0.856109, -0.508273,
		0.007071, 0.511065, -0.859513,
		0.995598, 0.076739, 0.053819,
		15.915070, 17.207096, 17.340406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.377675, 17.022615, 16.638151>,  <15.218151, 17.153379, 17.302732>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.377675, 17.022615, 16.638151> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.704588, 16.956661, 16.859009>,  <15.900736, 16.917089, 16.991524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.704588, 16.956661, 16.859009>,  <15.377675, 17.022615, 16.638151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.704588, 16.956661, 16.859009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225768, -0.789958, -0.570084,
		0.530169, 0.590576, -0.608392,
		0.817282, -0.164885, 0.552144,
		15.949773, 16.907196, 17.024652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.988504, 16.959560, 16.192860>,  <15.377675, 17.022615, 16.638151>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.988504, 16.959560, 16.192860> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.107058, 16.760574, 16.518972>,  <16.178190, 16.641182, 16.714640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.107058, 16.760574, 16.518972>,  <15.988504, 16.959560, 16.192860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.107058, 16.760574, 16.518972> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243237, -0.786173, -0.568127,
		0.923576, 0.366690, -0.112006,
		0.296382, -0.497465, 0.815283,
		16.195972, 16.611336, 16.763557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.489838, 16.398222, 15.941730>,  <15.988504, 16.959560, 16.192860>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.489838, 16.398222, 15.941730> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.449312, 16.302675, 16.328032>,  <16.424997, 16.245346, 16.559813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.449312, 16.302675, 16.328032>,  <16.489838, 16.398222, 15.941730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.449312, 16.302675, 16.328032> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259804, -0.943414, -0.206088,
		0.960332, 0.230026, 0.157639,
		-0.101313, -0.238868, 0.965752,
		16.418919, 16.231014, 16.617758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.167553, 15.992164, 16.108210>,  <16.489838, 16.398222, 15.941730>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.167553, 15.992164, 16.108210> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.894382, 15.894831, 16.383717>,  <16.730480, 15.836431, 16.549021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.894382, 15.894831, 16.383717>,  <17.167553, 15.992164, 16.108210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.894382, 15.894831, 16.383717> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260137, -0.962087, -0.081962,
		0.682598, 0.123200, 0.720334,
		-0.682926, -0.243332, 0.688768,
		16.689505, 15.821831, 16.590347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.444376, 15.554203, 16.670807>,  <17.167553, 15.992164, 16.108210>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.444376, 15.554203, 16.670807> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.054720, 15.467596, 16.696634>,  <16.820927, 15.415632, 16.712130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.054720, 15.467596, 16.696634>,  <17.444376, 15.554203, 16.670807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.054720, 15.467596, 16.696634> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224868, -0.956892, 0.183828,
		0.021982, 0.193593, 0.980836,
		-0.974141, -0.216518, 0.064567,
		16.762478, 15.402640, 16.716003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.078754, 15.270765, 16.251169>,  <17.444376, 15.554203, 16.670807>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.078754, 15.270765, 16.251169> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.446531, 15.150541, 16.149748>,  <18.667198, 15.078406, 16.088896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.446531, 15.150541, 16.149748>,  <18.078754, 15.270765, 16.251169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.446531, 15.150541, 16.149748> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376244, 0.859866, 0.345066,
		0.114308, -0.412665, 0.903682,
		0.919442, -0.300561, -0.253552,
		18.722364, 15.060373, 16.073683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.547579, 15.309272, 16.843891>,  <18.078754, 15.270765, 16.251169>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.547579, 15.309272, 16.843891> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.774904, 15.339997, 16.516205>,  <18.911301, 15.358433, 16.319593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.774904, 15.339997, 16.516205>,  <18.547579, 15.309272, 16.843891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.774904, 15.339997, 16.516205> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390804, 0.850964, 0.350903,
		0.724078, -0.519577, 0.453597,
		0.568316, 0.076814, -0.819217,
		18.945398, 15.363042, 16.270439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.303871, 15.236071, 17.044813>,  <18.547579, 15.309272, 16.843891>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.303871, 15.236071, 17.044813> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.330751, 15.415004, 16.688078>,  <19.346880, 15.522364, 16.474037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.330751, 15.415004, 16.688078>,  <19.303871, 15.236071, 17.044813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.330751, 15.415004, 16.688078> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513720, 0.750758, 0.415277,
		0.855322, -0.486062, -0.179353,
		0.067199, 0.447333, -0.891839,
		19.350912, 15.549204, 16.420527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.071749, 15.360433, 16.884899>,  <19.303871, 15.236071, 17.044813>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.071749, 15.360433, 16.884899> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.820227, 15.616543, 16.708422>,  <19.669313, 15.770208, 16.602535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.820227, 15.616543, 16.708422>,  <20.071749, 15.360433, 16.884899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.820227, 15.616543, 16.708422> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457666, 0.763471, 0.455690,
		0.628607, 0.084620, -0.773106,
		-0.628805, 0.640274, -0.441196,
		19.631586, 15.808625, 16.576063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.502659, 15.933739, 16.845827>,  <20.071749, 15.360433, 16.884899>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.502659, 15.933739, 16.845827> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.143690, 16.079868, 16.746895>,  <19.928308, 16.167545, 16.687536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.143690, 16.079868, 16.746895>,  <20.502659, 15.933739, 16.845827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.143690, 16.079868, 16.746895> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224321, 0.860594, 0.457228,
		0.379886, 0.354845, -0.854266,
		-0.897422, 0.365325, -0.247329,
		19.874464, 16.189466, 16.672697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.683111, 16.481718, 16.568855>,  <20.502659, 15.933739, 16.845827>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.683111, 16.481718, 16.568855> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.299974, 16.554953, 16.657417>,  <20.070093, 16.598892, 16.710554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.299974, 16.554953, 16.657417>,  <20.683111, 16.481718, 16.568855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.299974, 16.554953, 16.657417> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252860, 0.903078, 0.347147,
		-0.136390, 0.388497, -0.911300,
		-0.957841, 0.183084, 0.221406,
		20.012623, 16.609879, 16.723839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.684444, 17.199245, 16.492910>,  <20.683111, 16.481718, 16.568855>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.684444, 17.199245, 16.492910> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.338179, 17.131998, 16.681530>,  <20.130419, 17.091650, 16.794701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.338179, 17.131998, 16.681530>,  <20.684444, 17.199245, 16.492910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.338179, 17.131998, 16.681530> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005277, 0.944938, 0.327207,
		-0.500593, 0.280764, -0.818888,
		-0.865667, -0.168119, 0.471548,
		20.078478, 17.081562, 16.822994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.290451, 17.858532, 16.375996>,  <20.684444, 17.199245, 16.492910>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.290451, 17.858532, 16.375996> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.098307, 17.668343, 16.670797>,  <19.983019, 17.554228, 16.847679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.098307, 17.668343, 16.670797>,  <20.290451, 17.858532, 16.375996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.098307, 17.668343, 16.670797> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105741, 0.865569, 0.489499,
		-0.870672, 0.157206, -0.466064,
		-0.480363, -0.475475, 0.737004,
		19.954197, 17.525700, 16.891899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.575953, 18.265509, 16.518347>,  <20.290451, 17.858532, 16.375996>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.575953, 18.265509, 16.518347> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.727160, 18.067707, 16.831413>,  <19.817884, 17.949026, 17.019253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.727160, 18.067707, 16.831413>,  <19.575953, 18.265509, 16.518347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.727160, 18.067707, 16.831413> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075264, 0.826184, 0.558350,
		-0.922733, -0.269974, 0.275095,
		0.378019, -0.494503, 0.782667,
		19.840565, 17.919355, 17.066214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.260086, 18.469139, 17.132261>,  <19.575953, 18.265509, 16.518347>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.260086, 18.469139, 17.132261> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.571360, 18.315765, 17.331221>,  <19.758123, 18.223742, 17.450596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.571360, 18.315765, 17.331221>,  <19.260086, 18.469139, 17.132261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.571360, 18.315765, 17.331221> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059178, 0.833238, 0.549738,
		-0.625241, -0.398363, 0.671104,
		0.778185, -0.383434, 0.497401,
		19.804815, 18.200735, 17.480440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.178083, 18.784966, 17.835142>,  <19.260086, 18.469139, 17.132261>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.178083, 18.784966, 17.835142> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.555695, 18.655659, 17.808876>,  <19.782261, 18.578075, 17.793118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.555695, 18.655659, 17.808876>,  <19.178083, 18.784966, 17.835142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.555695, 18.655659, 17.808876> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314178, 0.820475, 0.477611,
		-0.100520, -0.471508, 0.876114,
		0.944027, -0.323266, -0.065663,
		19.838903, 18.558680, 17.789177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.496834, 18.752144, 18.533556>,  <19.178083, 18.784966, 17.835142>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.496834, 18.752144, 18.533556> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.803894, 18.789953, 18.280012>,  <19.988131, 18.812639, 18.127886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.803894, 18.789953, 18.280012>,  <19.496834, 18.752144, 18.533556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.803894, 18.789953, 18.280012> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269655, 0.849606, 0.453272,
		0.581374, -0.518878, 0.626714,
		0.767652, 0.094524, -0.633857,
		20.034189, 18.818310, 18.089855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.103903, 19.027912, 18.965864>,  <19.496834, 18.752144, 18.533556>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.103903, 19.027912, 18.965864> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.184031, 19.090261, 18.578964>,  <20.232107, 19.127670, 18.346825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.184031, 19.090261, 18.578964>,  <20.103903, 19.027912, 18.965864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.184031, 19.090261, 18.578964> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556658, 0.794319, 0.243289,
		0.806229, -0.587164, 0.072349,
		0.200319, 0.155873, -0.967252,
		20.244127, 19.137024, 18.288788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.607132, 19.348646, 19.055132>,  <20.103903, 19.027912, 18.965864>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.607132, 19.348646, 19.055132> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.542658, 19.462248, 18.677061>,  <20.503973, 19.530409, 18.450218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.542658, 19.462248, 18.677061>,  <20.607132, 19.348646, 19.055132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.542658, 19.462248, 18.677061> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479149, 0.859778, 0.176631,
		0.862807, -0.424411, -0.274663,
		-0.161186, 0.284003, -0.945178,
		20.494303, 19.547449, 18.393507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.294447, 19.557961, 18.664431>,  <20.607132, 19.348646, 19.055132>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.294447, 19.557961, 18.664431> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.990061, 19.740692, 18.480154>,  <20.807428, 19.850332, 18.369589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.990061, 19.740692, 18.480154>,  <21.294447, 19.557961, 18.664431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.990061, 19.740692, 18.480154> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389992, 0.889553, 0.237911,
		0.518494, 0.001376, -0.855080,
		-0.760966, 0.456830, -0.460692,
		20.761770, 19.877741, 18.341946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.619265, 20.045748, 18.283520>,  <21.294447, 19.557961, 18.664431>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.619265, 20.045748, 18.283520> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.243454, 20.169859, 18.341511>,  <21.017967, 20.244326, 18.376305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.243454, 20.169859, 18.341511>,  <21.619265, 20.045748, 18.283520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.243454, 20.169859, 18.341511> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328607, 0.935976, 0.126362,
		-0.096488, 0.166361, -0.981333,
		-0.939525, 0.310280, 0.144978,
		20.961596, 20.262943, 18.385004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.528738, 20.845093, 17.975248>,  <21.619265, 20.045748, 18.283520>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.528738, 20.845093, 17.975248> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.211462, 20.781332, 18.210344>,  <21.021097, 20.743074, 18.351402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.211462, 20.781332, 18.210344>,  <21.528738, 20.845093, 17.975248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.211462, 20.781332, 18.210344> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020290, 0.957680, 0.287118,
		-0.608636, 0.239664, -0.756388,
		-0.793190, -0.159403, 0.587742,
		20.973505, 20.733511, 18.386667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.084970, 21.395508, 17.824646>,  <21.528738, 20.845093, 17.975248>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.084970, 21.395508, 17.824646> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.982779, 21.254316, 18.184677>,  <20.921463, 21.169601, 18.400696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.982779, 21.254316, 18.184677>,  <21.084970, 21.395508, 17.824646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.982779, 21.254316, 18.184677> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114331, 0.935469, 0.334405,
		-0.960031, -0.017473, -0.279349,
		-0.255479, -0.352977, 0.900077,
		20.906136, 21.148424, 18.454700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<20.408195, 21.668903, 18.041410> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.536694, 21.531658, 18.394472>,  <20.613792, 21.449310, 18.606308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.536694, 21.531658, 18.394472>,  <20.408195, 21.668903, 18.041410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.536694, 21.531658, 18.394472> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237748, 0.872982, 0.425885,
		-0.916667, -0.346662, 0.198865,
		0.321244, -0.343115, 0.882652,
		20.633066, 21.428724, 18.659267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.828884, 21.669462, 18.500584>,  <20.408195, 21.668903, 18.041410>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.828884, 21.669462, 18.500584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.163456, 21.684109, 18.719322>,  <20.364199, 21.692896, 18.850565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.163456, 21.684109, 18.719322>,  <19.828884, 21.669462, 18.500584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.163456, 21.684109, 18.719322> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336197, 0.822272, 0.459174,
		-0.432844, -0.567915, 0.700084,
		0.836432, 0.036616, 0.546847,
		20.414385, 21.695093, 18.883377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.522081, 21.899794, 19.157234>,  <19.828884, 21.669462, 18.500584>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.522081, 21.899794, 19.157234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.915474, 21.935331, 19.220320>,  <20.151508, 21.956654, 19.258171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.915474, 21.935331, 19.220320>,  <19.522081, 21.899794, 19.157234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.915474, 21.935331, 19.220320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179114, 0.603646, 0.776872,
		-0.026181, -0.792287, 0.609587,
		0.983480, 0.088846, 0.157714,
		20.210518, 21.961985, 19.267633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.765471, 21.863379, 19.912575>,  <19.522081, 21.899794, 19.157234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.765471, 21.863379, 19.912575> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.051077, 22.075726, 19.729988>,  <20.222441, 22.203135, 19.620436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.051077, 22.075726, 19.729988>,  <19.765471, 21.863379, 19.912575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.051077, 22.075726, 19.729988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106538, 0.726765, 0.678574,
		0.691974, -0.435883, 0.575481,
		0.714018, 0.530865, -0.456464,
		20.265282, 22.234985, 19.593048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.184748, 22.152794, 20.475954>,  <19.765471, 21.863379, 19.912575>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.184748, 22.152794, 20.475954> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.209730, 22.383875, 20.150412>,  <20.224720, 22.522524, 19.955086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.209730, 22.383875, 20.150412>,  <20.184748, 22.152794, 20.475954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.209730, 22.383875, 20.150412> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203075, 0.791034, 0.577085,
		0.977169, -0.201315, -0.067913,
		0.062455, 0.577701, -0.813856,
		20.228466, 22.557184, 19.906256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.914278, 22.402826, 20.616228>,  <20.184748, 22.152794, 20.475954>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.914278, 22.402826, 20.616228> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.712837, 22.632435, 20.357964>,  <20.591972, 22.770201, 20.203005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.712837, 22.632435, 20.357964>,  <20.914278, 22.402826, 20.616228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.712837, 22.632435, 20.357964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312262, 0.817769, 0.483474,
		0.805528, 0.041863, -0.591077,
		-0.503603, 0.574023, -0.645664,
		20.561756, 22.804642, 20.164265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.326052, 22.988024, 20.481663>,  <20.914278, 22.402826, 20.616228>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.326052, 22.988024, 20.481663> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.974260, 23.133924, 20.359367>,  <20.763186, 23.221464, 20.285990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.974260, 23.133924, 20.359367>,  <21.326052, 22.988024, 20.481663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.974260, 23.133924, 20.359367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080997, 0.747724, 0.659051,
		0.469000, 0.554856, -0.687149,
		-0.879477, 0.364752, -0.305740,
		20.710417, 23.243351, 20.267645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.443996, 23.733490, 20.376625>,  <21.326052, 22.988024, 20.481663>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.443996, 23.733490, 20.376625> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.047901, 23.707115, 20.425751>,  <20.810244, 23.691290, 20.455227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.047901, 23.707115, 20.425751>,  <21.443996, 23.733490, 20.376625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.047901, 23.707115, 20.425751> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001689, 0.875307, 0.483565,
		-0.139388, 0.479051, -0.866649,
		-0.990236, -0.065939, 0.122816,
		20.750830, 23.687334, 20.462595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.213398, 24.368645, 20.257999>,  <21.443996, 23.733490, 20.376625>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.213398, 24.368645, 20.257999> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.933746, 24.182713, 20.475309>,  <20.765955, 24.071154, 20.605696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.933746, 24.182713, 20.475309>,  <21.213398, 24.368645, 20.257999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.933746, 24.182713, 20.475309> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019941, 0.772213, 0.635050,
		-0.714717, 0.433149, -0.549146,
		-0.699129, -0.464831, 0.543277,
		20.724007, 24.043262, 20.638292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.700958, 24.863409, 20.434744>,  <21.213398, 24.368645, 20.257999>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.700958, 24.863409, 20.434744> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.617662, 24.575377, 20.699507>,  <20.567684, 24.402557, 20.858364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.617662, 24.575377, 20.699507>,  <20.700958, 24.863409, 20.434744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.617662, 24.575377, 20.699507> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192661, 0.693683, 0.694036,
		-0.958915, 0.017003, -0.283184,
		-0.208241, -0.720080, 0.661907,
		20.555191, 24.359352, 20.898079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.987463, 25.061996, 20.715322>,  <20.700958, 24.863409, 20.434744>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.987463, 25.061996, 20.715322> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.197773, 24.834852, 20.968651>,  <20.323959, 24.698566, 21.120647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.197773, 24.834852, 20.968651>,  <19.987463, 25.061996, 20.715322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.197773, 24.834852, 20.968651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164747, 0.662459, 0.730757,
		-0.834517, -0.488552, 0.254752,
		0.525776, -0.567860, 0.633320,
		20.355505, 24.664494, 21.158648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.687302, 25.256523, 21.345177>,  <19.987463, 25.061996, 20.715322>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.687302, 25.256523, 21.345177> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.007109, 25.046604, 21.462040>,  <20.198994, 24.920652, 21.532158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.007109, 25.046604, 21.462040>,  <19.687302, 25.256523, 21.345177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.007109, 25.046604, 21.462040> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011292, 0.473190, 0.880888,
		-0.600534, -0.707586, 0.372398,
		0.799520, -0.524798, 0.292156,
		20.246965, 24.889164, 21.549686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.606831, 24.913422, 21.980938>,  <19.687302, 25.256523, 21.345177>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.606831, 24.913422, 21.980938> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.004683, 24.949247, 22.001684>,  <20.243393, 24.970743, 22.014132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.004683, 24.949247, 22.001684>,  <19.606831, 24.913422, 21.980938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.004683, 24.949247, 22.001684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068057, 0.188449, 0.979722,
		0.077970, -0.977991, 0.193533,
		0.994630, 0.089560, 0.051866,
		20.303072, 24.976116, 22.017244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.805822, 24.683569, 22.673883>,  <19.606831, 24.913422, 21.980938>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.805822, 24.683569, 22.673883> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.104364, 24.912107, 22.537346>,  <20.283489, 25.049231, 22.455423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.104364, 24.912107, 22.537346>,  <19.805822, 24.683569, 22.673883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.104364, 24.912107, 22.537346> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128122, 0.379944, 0.916093,
		0.653101, -0.727464, 0.210370,
		0.746354, 0.571348, -0.341346,
		20.328270, 25.083511, 22.434942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.404762, 24.607813, 23.117071>,  <19.805822, 24.683569, 22.673883>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.404762, 24.607813, 23.117071> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.478233, 24.953024, 22.928841>,  <20.522316, 25.160151, 22.815903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.478233, 24.953024, 22.928841>,  <20.404762, 24.607813, 23.117071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.478233, 24.953024, 22.928841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234508, 0.426429, 0.873593,
		0.954604, -0.270813, -0.124062,
		0.183676, 0.863029, -0.470578,
		20.533337, 25.211933, 22.787666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.137280, 24.912207, 23.377743>,  <20.404762, 24.607813, 23.117071>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.137280, 24.912207, 23.377743> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.949085, 25.224346, 23.212967>,  <20.836168, 25.411631, 23.114101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.949085, 25.224346, 23.212967>,  <21.137280, 24.912207, 23.377743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.949085, 25.224346, 23.212967> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129653, 0.522905, 0.842473,
		0.872830, 0.342963, -0.347195,
		-0.470487, 0.780350, -0.411941,
		20.807940, 25.458450, 23.089384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.516102, 25.463224, 23.573978>,  <21.137280, 24.912207, 23.377743>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.516102, 25.463224, 23.573978> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.162617, 25.632343, 23.493689>,  <20.950525, 25.733814, 23.445515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.162617, 25.632343, 23.493689>,  <21.516102, 25.463224, 23.573978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.162617, 25.632343, 23.493689> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137850, 0.644981, 0.751662,
		0.447265, 0.636585, -0.628262,
		-0.883714, 0.422799, -0.200725,
		20.897503, 25.759182, 23.433472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.637854, 26.182724, 23.679602>,  <21.516102, 25.463224, 23.573978>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.637854, 26.182724, 23.679602> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.241970, 26.135435, 23.711838>,  <21.004440, 26.107061, 23.731180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.241970, 26.135435, 23.711838>,  <21.637854, 26.182724, 23.679602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.241970, 26.135435, 23.711838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039442, 0.766871, 0.640588,
		-0.137536, 0.630819, -0.763644,
		-0.989711, -0.118224, 0.080592,
		20.945057, 26.099968, 23.736015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.349014, 26.921162, 23.629385>,  <21.637854, 26.182724, 23.679602>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.349014, 26.921162, 23.629385> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.075430, 26.682682, 23.797548>,  <20.911280, 26.539595, 23.898447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.075430, 26.682682, 23.797548>,  <21.349014, 26.921162, 23.629385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.075430, 26.682682, 23.797548> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165851, 0.688271, 0.706241,
		-0.710415, 0.413316, -0.569631,
		-0.683961, -0.596198, 0.420409,
		20.870241, 26.503822, 23.923672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.795773, 27.377573, 23.845924>,  <21.349014, 26.921162, 23.629385>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.795773, 27.377573, 23.845924> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.706596, 27.049477, 24.056639>,  <20.653090, 26.852619, 24.183067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.706596, 27.049477, 24.056639>,  <20.795773, 27.377573, 23.845924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.706596, 27.049477, 24.056639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306211, 0.571957, 0.760986,
		-0.925490, 0.008349, -0.378680,
		-0.222942, -0.820241, 0.526784,
		20.639713, 26.803404, 24.214674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.190317, 27.468086, 24.055592>,  <20.795773, 27.377573, 23.845924>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.190317, 27.468086, 24.055592> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.326019, 27.200043, 24.319672>,  <20.407440, 27.039217, 24.478119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.326019, 27.200043, 24.319672>,  <20.190317, 27.468086, 24.055592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.326019, 27.200043, 24.319672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224769, 0.623749, 0.748610,
		-0.913447, -0.402361, 0.060990,
		0.339254, -0.670107, 0.660200,
		20.427795, 26.999010, 24.517731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.775797, 27.560133, 24.643461>,  <20.190317, 27.468086, 24.055592>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.775797, 27.560133, 24.643461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.079784, 27.336016, 24.775229>,  <20.262177, 27.201546, 24.854288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.079784, 27.336016, 24.775229>,  <19.775797, 27.560133, 24.643461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.079784, 27.336016, 24.775229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103622, 0.395899, 0.912429,
		-0.641644, -0.727554, 0.242813,
		0.759971, -0.560294, 0.329417,
		20.307775, 27.167927, 24.874054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.531506, 27.202410, 25.191053>,  <19.775797, 27.560133, 24.643461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.531506, 27.202410, 25.191053> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.930347, 27.213707, 25.219288>,  <20.169653, 27.220486, 25.236229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.930347, 27.213707, 25.219288>,  <19.531506, 27.202410, 25.191053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.930347, 27.213707, 25.219288> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075899, 0.315740, 0.945805,
		0.004425, -0.948425, 0.316970,
		0.997106, 0.028243, 0.070587,
		20.229479, 27.222179, 25.240463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.034607, 27.708759, 25.324524>,  <19.531506, 27.202410, 25.191053>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.034607, 27.708759, 25.324524> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.042675, 27.785818, 25.716948>,  <20.047516, 27.832054, 25.952402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.042675, 27.785818, 25.716948>,  <20.034607, 27.708759, 25.324524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.042675, 27.785818, 25.716948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738913, 0.663884, -0.115172,
		-0.673498, -0.722596, 0.155741,
		0.020171, 0.192647, 0.981061,
		20.048727, 27.843613, 26.011267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.533670, 27.437443, 25.898817>,  <20.034607, 27.708759, 25.324524>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.533670, 27.437443, 25.898817> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.147604, 27.515085, 25.968987>,  <18.915964, 27.561670, 26.011087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.147604, 27.515085, 25.968987>,  <19.533670, 27.437443, 25.898817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.147604, 27.515085, 25.968987> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253602, -0.858913, -0.444921,
		0.064311, -0.473911, 0.878221,
		-0.965168, 0.194106, 0.175423,
		18.858053, 27.573317, 26.021614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.145042, 26.802071, 26.106037>,  <19.533670, 27.437443, 25.898817>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.145042, 26.802071, 26.106037> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.830139, 27.021185, 25.992790>,  <18.641197, 27.152653, 25.924843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.830139, 27.021185, 25.992790>,  <19.145042, 26.802071, 26.106037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.830139, 27.021185, 25.992790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397534, -0.801869, -0.446063,
		-0.471369, -0.238619, 0.849042,
		-0.787260, 0.547783, -0.283116,
		18.593962, 27.185520, 25.907856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.529530, 26.439728, 26.361219>,  <19.145042, 26.802071, 26.106037>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.529530, 26.439728, 26.361219> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.473511, 26.685247, 26.050442>,  <18.439899, 26.832560, 25.863976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.473511, 26.685247, 26.050442>,  <18.529530, 26.439728, 26.361219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.473511, 26.685247, 26.050442> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249411, -0.781242, -0.572237,
		-0.958218, 0.113638, 0.262497,
		-0.140045, 0.613797, -0.776943,
		18.431498, 26.869387, 25.817358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.875137, 26.149242, 26.069242>,  <18.529530, 26.439728, 26.361219>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.875137, 26.149242, 26.069242> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.046461, 26.368166, 25.781631>,  <18.149256, 26.499521, 25.609064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.046461, 26.368166, 25.781631>,  <17.875137, 26.149242, 26.069242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.046461, 26.368166, 25.781631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339262, -0.640104, -0.689324,
		-0.837528, 0.539183, -0.088481,
		0.428309, 0.547310, -0.719029,
		18.174953, 26.532358, 25.565922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.470871, 25.993792, 25.582239>,  <17.875137, 26.149242, 26.069242>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.470871, 25.993792, 25.582239> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.780516, 26.153831, 25.386007>,  <17.966303, 26.249855, 25.268269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.780516, 26.153831, 25.386007>,  <17.470871, 25.993792, 25.582239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.780516, 26.153831, 25.386007> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254416, -0.512982, -0.819831,
		-0.579673, 0.759453, -0.295314,
		0.774114, 0.400101, -0.490579,
		18.012751, 26.273861, 25.238834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.233746, 26.120863, 24.781235>,  <17.470871, 25.993792, 25.582239>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.233746, 26.120863, 24.781235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.632729, 26.102163, 24.802744>,  <17.872118, 26.090942, 24.815649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.632729, 26.102163, 24.802744>,  <17.233746, 26.120863, 24.781235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.632729, 26.102163, 24.802744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017217, -0.574164, -0.818559,
		0.069142, 0.817404, -0.571900,
		0.997458, -0.046750, 0.053772,
		17.931967, 26.088139, 24.818876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.382463, 26.060316, 24.045738>,  <17.233746, 26.120863, 24.781235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.382463, 26.060316, 24.045738> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.735918, 25.961096, 24.204561>,  <17.947990, 25.901564, 24.299856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.735918, 25.961096, 24.204561>,  <17.382463, 26.060316, 24.045738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.735918, 25.961096, 24.204561> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194812, -0.576380, -0.793621,
		0.425716, 0.778625, -0.460988,
		0.883637, -0.248051, 0.397059,
		18.001009, 25.886681, 24.323679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.882082, 26.111113, 23.496075>,  <17.382463, 26.060316, 24.045738>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.882082, 26.111113, 23.496075> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.058012, 25.867792, 23.760355>,  <18.163570, 25.721800, 23.918922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.058012, 25.867792, 23.760355>,  <17.882082, 26.111113, 23.496075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.058012, 25.867792, 23.760355> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179518, -0.661280, -0.728342,
		0.879959, 0.438950, -0.181645,
		0.439824, -0.608302, 0.660699,
		18.189959, 25.685301, 23.958565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.560720, 25.927191, 23.293177>,  <17.882082, 26.111113, 23.496075>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.560720, 25.927191, 23.293177> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.454201, 25.632181, 23.541414>,  <18.390289, 25.455175, 23.690357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.454201, 25.632181, 23.541414>,  <18.560720, 25.927191, 23.293177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.454201, 25.632181, 23.541414> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322035, -0.674925, -0.663905,
		0.908503, 0.023055, 0.417242,
		-0.266301, -0.737526, 0.620595,
		18.374310, 25.410923, 23.727592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.103712, 25.449528, 23.248760>,  <18.560720, 25.927191, 23.293177>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.103712, 25.449528, 23.248760> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.788900, 25.261940, 23.409084>,  <18.600014, 25.149387, 23.505280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.788900, 25.261940, 23.409084>,  <19.103712, 25.449528, 23.248760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.788900, 25.261940, 23.409084> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022892, -0.627056, -0.778638,
		0.616488, -0.621988, 0.482777,
		-0.787031, -0.468969, 0.400811,
		18.552792, 25.121250, 23.529327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.269917, 24.749525, 23.257381>,  <19.103712, 25.449528, 23.248760>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.269917, 24.749525, 23.257381> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.873098, 24.733650, 23.305170>,  <18.635008, 24.724125, 23.333843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.873098, 24.733650, 23.305170>,  <19.269917, 24.749525, 23.257381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.873098, 24.733650, 23.305170> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060149, -0.684254, -0.726759,
		0.110593, -0.728163, 0.676423,
		-0.992044, -0.039689, 0.119472,
		18.575485, 24.721745, 23.341011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.101578, 24.079224, 23.233652>,  <19.269917, 24.749525, 23.257381>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.101578, 24.079224, 23.233652> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.773785, 24.283485, 23.129587>,  <18.577108, 24.406042, 23.067148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.773785, 24.283485, 23.129587>,  <19.101578, 24.079224, 23.233652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.773785, 24.283485, 23.129587> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162501, -0.642361, -0.748976,
		-0.549585, -0.571495, 0.609384,
		-0.819481, 0.510652, -0.260163,
		18.527941, 24.436682, 23.051538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.694830, 23.496120, 23.066519>,  <19.101578, 24.079224, 23.233652>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.694830, 23.496120, 23.066519> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.553913, 23.833752, 22.904818>,  <18.469362, 24.036331, 22.807796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.553913, 23.833752, 22.904818>,  <18.694830, 23.496120, 23.066519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.553913, 23.833752, 22.904818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350892, -0.519562, -0.779058,
		-0.867620, -0.132607, 0.479218,
		-0.352292, 0.844080, -0.404251,
		18.448225, 24.086975, 22.783543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.062462, 23.275965, 22.858177>,  <18.694830, 23.496120, 23.066519>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.062462, 23.275965, 22.858177> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.157469, 23.608305, 22.656870>,  <18.214472, 23.807709, 22.536085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.157469, 23.608305, 22.656870>,  <18.062462, 23.275965, 22.858177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.157469, 23.608305, 22.656870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244764, -0.450186, -0.858733,
		-0.940041, 0.327144, 0.096435,
		0.237516, 0.830848, -0.503266,
		18.228724, 23.857559, 22.505890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.522783, 23.275972, 22.381708>,  <18.062462, 23.275965, 22.858177>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.522783, 23.275972, 22.381708> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.791410, 23.537516, 22.242298>,  <17.952587, 23.694441, 22.158653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.791410, 23.537516, 22.242298>,  <17.522783, 23.275972, 22.381708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.791410, 23.537516, 22.242298> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097558, -0.388252, -0.916375,
		-0.734494, 0.649408, -0.196948,
		0.671566, 0.653858, -0.348524,
		17.992880, 23.733673, 22.137741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.227661, 23.644268, 21.871386>,  <17.522783, 23.275972, 22.381708>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.227661, 23.644268, 21.871386> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.619625, 23.659466, 21.793074>,  <17.854803, 23.668585, 21.746086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.619625, 23.659466, 21.793074>,  <17.227661, 23.644268, 21.871386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.619625, 23.659466, 21.793074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165204, -0.395256, -0.903593,
		-0.111716, 0.917785, -0.381039,
		0.979912, 0.037997, -0.195778,
		17.913599, 23.670864, 21.734341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.332233, 24.083281, 21.229445>,  <17.227661, 23.644268, 21.871386>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.332233, 24.083281, 21.229445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.621428, 23.809855, 21.269501>,  <17.794945, 23.645798, 21.293535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.621428, 23.809855, 21.269501>,  <17.332233, 24.083281, 21.229445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.621428, 23.809855, 21.269501> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106688, -0.253683, -0.961386,
		0.682575, 0.684384, -0.256338,
		0.722986, -0.683566, 0.100143,
		17.838324, 23.604784, 21.299543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.585712, 24.127735, 20.602217>,  <17.332233, 24.083281, 21.229445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.585712, 24.127735, 20.602217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.736582, 23.790575, 20.755714>,  <17.827103, 23.588280, 20.847813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.736582, 23.790575, 20.755714>,  <17.585712, 24.127735, 20.602217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.736582, 23.790575, 20.755714> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160861, -0.467670, -0.869142,
		0.912066, 0.266089, -0.311983,
		0.377174, -0.842901, 0.383742,
		17.849733, 23.537704, 20.870836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.662483, 23.825186, 20.025028>,  <17.585712, 24.127735, 20.602217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.662483, 23.825186, 20.025028> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.753185, 23.530375, 20.279703>,  <17.807606, 23.353487, 20.432508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.753185, 23.530375, 20.279703>,  <17.662483, 23.825186, 20.025028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.753185, 23.530375, 20.279703> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265828, -0.675731, -0.687549,
		0.936973, -0.013345, -0.349147,
		0.226754, -0.737027, 0.636689,
		17.821211, 23.309267, 20.470711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.046906, 23.315306, 19.646208>,  <17.662483, 23.825186, 20.025028>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.046906, 23.315306, 19.646208> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.892994, 23.114681, 19.956144>,  <17.800646, 22.994307, 20.142107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.892994, 23.114681, 19.956144>,  <18.046906, 23.315306, 19.646208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.892994, 23.114681, 19.956144> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225226, -0.763079, -0.605792,
		0.895108, -0.407611, 0.180652,
		-0.384780, -0.501562, 0.774842,
		17.777559, 22.964212, 20.188597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<22.048719, 16.149225, 6.434968> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.114521, 16.074783, 6.047503>,  <22.154001, 16.030119, 5.815024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.114521, 16.074783, 6.047503>,  <22.048719, 16.149225, 6.434968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.114521, 16.074783, 6.047503> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978966, 0.150959, 0.137249,
		0.120686, -0.970864, 0.207022,
		0.164502, -0.186104, -0.968661,
		22.163872, 16.018951, 5.756905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.361418, 15.530472, 6.401958>,  <22.048719, 16.149225, 6.434968>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.361418, 15.530472, 6.401958> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.481268, 15.785032, 6.117643>,  <22.553177, 15.937769, 5.947054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.481268, 15.785032, 6.117643>,  <22.361418, 15.530472, 6.401958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.481268, 15.785032, 6.117643> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952762, -0.160794, 0.257660,
		0.049686, -0.754412, -0.654518,
		0.299625, 0.636402, -0.710787,
		22.571156, 15.975953, 5.904408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.368876, 14.761628, 6.308380>,  <22.361418, 15.530472, 6.401958>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.368876, 14.761628, 6.308380> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.053699, 14.900050, 6.104656>,  <21.864594, 14.983104, 5.982422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.053699, 14.900050, 6.104656>,  <22.368876, 14.761628, 6.308380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.053699, 14.900050, 6.104656> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513690, -0.825499, 0.233824,
		-0.339518, 0.445866, 0.828210,
		-0.787940, 0.346055, -0.509309,
		21.817318, 15.003867, 5.951864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.548555, 14.473223, 7.080490>,  <22.368876, 14.761628, 6.308380>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.548555, 14.473223, 7.080490> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.702526, 14.373266, 6.725101>,  <22.794909, 14.313292, 6.511867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.702526, 14.373266, 6.725101>,  <22.548555, 14.473223, 7.080490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.702526, 14.373266, 6.725101> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368460, -0.841002, 0.396172,
		-0.846212, -0.479862, -0.231640,
		0.384918, -0.249896, -0.888476,
		22.818003, 14.298299, 6.458558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.389368, 13.784259, 6.898175>,  <22.548555, 14.473223, 7.080490>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.389368, 13.784259, 6.898175> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.741890, 13.913381, 6.760134>,  <22.953403, 13.990854, 6.677310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.741890, 13.913381, 6.760134>,  <22.389368, 13.784259, 6.898175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.741890, 13.913381, 6.760134> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416472, -0.875658, 0.244487,
		-0.223269, -0.359193, -0.906163,
		0.881307, 0.322806, -0.345101,
		23.006283, 14.010222, 6.656604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.545630, 13.310546, 6.434757>,  <22.389368, 13.784259, 6.898175>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.545630, 13.310546, 6.434757> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.868929, 13.493863, 6.582649>,  <23.062908, 13.603853, 6.671384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.868929, 13.493863, 6.582649>,  <22.545630, 13.310546, 6.434757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.868929, 13.493863, 6.582649> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415211, -0.888794, 0.194021,
		0.417533, -0.003302, -0.908656,
		0.808249, 0.458294, 0.369730,
		23.111404, 13.631351, 6.693568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.090384, 13.056812, 6.086899>,  <22.545630, 13.310546, 6.434757>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.090384, 13.056812, 6.086899> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.252619, 13.187209, 6.428478>,  <23.349960, 13.265448, 6.633425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.252619, 13.187209, 6.428478>,  <23.090384, 13.056812, 6.086899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.252619, 13.187209, 6.428478> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382739, -0.908965, 0.165210,
		0.830065, 0.259832, -0.493437,
		0.405590, 0.325992, 0.853947,
		23.374296, 13.285007, 6.684662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.729826, 12.825737, 6.209625>,  <23.090384, 13.056812, 6.086899>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.729826, 12.825737, 6.209625> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.611448, 12.894292, 6.585506>,  <23.540422, 12.935425, 6.811036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.611448, 12.894292, 6.585506>,  <23.729826, 12.825737, 6.209625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.611448, 12.894292, 6.585506> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480486, -0.823540, 0.301521,
		0.825561, 0.540748, 0.161372,
		-0.295943, 0.171387, 0.939704,
		23.522665, 12.945708, 6.867418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.438494, 12.291379, 6.719315>,  <23.729826, 12.825737, 6.209625>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.438494, 12.291379, 6.719315> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.380016, 12.571242, 6.999060>,  <23.344931, 12.739161, 7.166906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.380016, 12.571242, 6.999060>,  <23.438494, 12.291379, 6.719315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.380016, 12.571242, 6.999060> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429374, -0.681772, 0.592305,
		0.891216, -0.213697, 0.400086,
		-0.146194, 0.699658, 0.699362,
		23.336159, 12.781139, 7.208868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.498697, 12.012939, 7.492868>,  <23.438494, 12.291379, 6.719315>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.498697, 12.012939, 7.492868> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.324793, 12.364306, 7.572228>,  <23.220449, 12.575127, 7.619843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.324793, 12.364306, 7.572228>,  <23.498697, 12.012939, 7.492868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.324793, 12.364306, 7.572228> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547605, -0.432774, 0.716125,
		0.714920, 0.202701, 0.669181,
		-0.434763, 0.878419, 0.198399,
		23.194365, 12.627832, 7.631748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.601282, 12.169764, 8.272135>,  <23.498697, 12.012939, 7.492868>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.601282, 12.169764, 8.272135> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.279398, 12.337365, 8.103909>,  <23.086267, 12.437926, 8.002975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.279398, 12.337365, 8.103909>,  <23.601282, 12.169764, 8.272135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.279398, 12.337365, 8.103909> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592561, -0.523740, 0.612020,
		0.036173, 0.741709, 0.669746,
		-0.804713, 0.419004, -0.420563,
		23.037985, 12.463066, 7.977741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.209713, 12.368937, 8.773080>,  <23.601282, 12.169764, 8.272135>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.209713, 12.368937, 8.773080> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.948441, 12.364326, 8.470234>,  <22.791677, 12.361558, 8.288527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.948441, 12.364326, 8.470234>,  <23.209713, 12.368937, 8.773080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.948441, 12.364326, 8.470234> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703319, -0.361208, 0.612268,
		-0.280536, 0.932414, 0.227824,
		-0.653179, -0.011531, -0.757116,
		22.752487, 12.360867, 8.243099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.643480, 12.593423, 9.144652>,  <23.209713, 12.368937, 8.773080>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.643480, 12.593423, 9.144652> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.502674, 12.469254, 8.791445>,  <22.418190, 12.394753, 8.579520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.502674, 12.469254, 8.791445>,  <22.643480, 12.593423, 9.144652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.502674, 12.469254, 8.791445> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810033, -0.371647, 0.453569,
		-0.468970, 0.874937, -0.120628,
		-0.352013, -0.310423, -0.883020,
		22.397070, 12.376126, 8.526539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.043077, 12.988065, 9.025300>,  <22.643480, 12.593423, 9.144652>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.043077, 12.988065, 9.025300> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.031212, 12.637202, 8.833586>,  <22.024094, 12.426684, 8.718557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.031212, 12.637202, 8.833586>,  <22.043077, 12.988065, 9.025300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.031212, 12.637202, 8.833586> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654278, -0.345464, 0.672736,
		-0.755672, 0.333542, -0.563658,
		-0.029662, -0.877157, -0.479287,
		22.022314, 12.374055, 8.689799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.354319, 12.918984, 8.857839>,  <22.043077, 12.988065, 9.025300>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.354319, 12.918984, 8.857839> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.490385, 12.543296, 8.839285>,  <21.572025, 12.317883, 8.828153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.490385, 12.543296, 8.839285>,  <21.354319, 12.918984, 8.857839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.490385, 12.543296, 8.839285> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738737, -0.297425, 0.604819,
		-0.581854, -0.171474, -0.795011,
		0.340167, -0.939220, -0.046384,
		21.592436, 12.261530, 8.825370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.779654, 12.406528, 8.952406>,  <21.354319, 12.918984, 8.857839>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.779654, 12.406528, 8.952406> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.105873, 12.188881, 9.031211>,  <21.301605, 12.058292, 9.078494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.105873, 12.188881, 9.031211>,  <20.779654, 12.406528, 8.952406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.105873, 12.188881, 9.031211> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502495, -0.497010, 0.707446,
		-0.287018, -0.675955, -0.678753,
		0.815549, -0.544120, 0.197013,
		21.350538, 12.025645, 9.090315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.440273, 11.745481, 9.274712>,  <20.779654, 12.406528, 8.952406>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.440273, 11.745481, 9.274712> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.833660, 11.688028, 9.318830>,  <21.069693, 11.653557, 9.345302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.833660, 11.688028, 9.318830>,  <20.440273, 11.745481, 9.274712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.833660, 11.688028, 9.318830> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153207, -0.335161, 0.929621,
		-0.096556, -0.931148, -0.351625,
		0.983466, -0.143632, 0.110297,
		21.128700, 11.644938, 9.351919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.518076, 11.031284, 9.419067>,  <20.440273, 11.745481, 9.274712>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.518076, 11.031284, 9.419067> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.827219, 11.235645, 9.569623>,  <21.012705, 11.358262, 9.659956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.827219, 11.235645, 9.569623>,  <20.518076, 11.031284, 9.419067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.827219, 11.235645, 9.569623> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267483, -0.275587, 0.923312,
		0.575450, -0.814267, -0.076332,
		0.772858, 0.510902, 0.376389,
		21.059076, 11.388916, 9.682540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.841084, 10.672875, 9.978978>,  <20.518076, 11.031284, 9.419067>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.841084, 10.672875, 9.978978> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.972576, 11.047302, 10.029123>,  <21.051472, 11.271958, 10.059211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.972576, 11.047302, 10.029123>,  <20.841084, 10.672875, 9.978978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.972576, 11.047302, 10.029123> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081749, -0.160445, 0.983654,
		0.940879, -0.313108, -0.129266,
		0.328730, 0.936067, 0.125363,
		21.071196, 11.328122, 10.066732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.465002, 10.636606, 10.427711>,  <20.841084, 10.672875, 9.978978>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.465002, 10.636606, 10.427711> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.356705, 11.016452, 10.490870>,  <21.291727, 11.244359, 10.528765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.356705, 11.016452, 10.490870>,  <21.465002, 10.636606, 10.427711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.356705, 11.016452, 10.490870> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124587, -0.128076, 0.983908,
		0.954556, 0.286058, -0.083633,
		-0.270743, 0.949614, 0.157895,
		21.275482, 11.301336, 10.538238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.945177, 10.888280, 10.911490>,  <21.465002, 10.636606, 10.427711>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.945177, 10.888280, 10.911490> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.626421, 11.128449, 10.938201>,  <21.435167, 11.272551, 10.954227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.626421, 11.128449, 10.938201>,  <21.945177, 10.888280, 10.911490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.626421, 11.128449, 10.938201> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000453, -0.111128, 0.993806,
		0.604125, 0.791924, 0.088828,
		-0.796890, 0.600423, 0.066776,
		21.387354, 11.308577, 10.958234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.125483, 11.370052, 11.481883>,  <21.945177, 10.888280, 10.911490>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.125483, 11.370052, 11.481883> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.730209, 11.409485, 11.434933>,  <21.493046, 11.433145, 11.406763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.730209, 11.409485, 11.434933>,  <22.125483, 11.370052, 11.481883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.730209, 11.409485, 11.434933> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124298, -0.067275, 0.989962,
		0.089696, 0.992852, 0.078733,
		-0.988183, 0.098582, -0.117375,
		21.433754, 11.439059, 11.399720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.820721, 11.958870, 12.036927>,  <22.125483, 11.370052, 11.481883>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.820721, 11.958870, 12.036927> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.541519, 11.692174, 11.932426>,  <21.373999, 11.532156, 11.869726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.541519, 11.692174, 11.932426>,  <21.820721, 11.958870, 12.036927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.541519, 11.692174, 11.932426> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218064, -0.149596, 0.964401,
		-0.682086, 0.730123, -0.040974,
		-0.698002, -0.666740, -0.261252,
		21.332119, 11.492152, 11.854051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.176405, 12.161746, 12.395634>,  <21.820721, 11.958870, 12.036927>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.176405, 12.161746, 12.395634> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.108543, 11.792281, 12.258190>,  <21.067827, 11.570602, 12.175724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.108543, 11.792281, 12.258190>,  <21.176405, 12.161746, 12.395634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.108543, 11.792281, 12.258190> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368408, -0.263943, 0.891409,
		-0.914053, 0.277819, -0.295505,
		-0.169654, -0.923661, -0.343609,
		21.057648, 11.515182, 12.155107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.581957, 11.969522, 12.807976>,  <21.176405, 12.161746, 12.395634>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.581957, 11.969522, 12.807976> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.703798, 11.623085, 12.649433>,  <20.776903, 11.415223, 12.554307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.703798, 11.623085, 12.649433>,  <20.581957, 11.969522, 12.807976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.703798, 11.623085, 12.649433> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136906, -0.451623, 0.881643,
		-0.942589, -0.214288, -0.256140,
		0.304604, -0.866093, -0.396357,
		20.795179, 11.363257, 12.530526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.916004, 11.489236, 12.804142>,  <20.581957, 11.969522, 12.807976>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.916004, 11.489236, 12.804142> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.260513, 11.285990, 12.806135>,  <20.467218, 11.164042, 12.807331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.260513, 11.285990, 12.806135>,  <19.916004, 11.489236, 12.804142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.260513, 11.285990, 12.806135> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199439, -0.329008, 0.923027,
		-0.467364, -0.795973, -0.384704,
		0.861275, -0.508115, 0.004982,
		20.518896, 11.133555, 12.807630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.748600, 10.932978, 13.138609>,  <19.916004, 11.489236, 12.804142>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.748600, 10.932978, 13.138609> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.147993, 10.919762, 13.156242>,  <20.387629, 10.911832, 13.166822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.147993, 10.919762, 13.156242>,  <19.748600, 10.932978, 13.138609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.147993, 10.919762, 13.156242> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052586, -0.333033, 0.941448,
		-0.016425, -0.942336, -0.334264,
		0.998481, -0.033041, 0.044084,
		20.447538, 10.909849, 13.169467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.886892, 10.174258, 13.261985>,  <19.748600, 10.932978, 13.138609>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.886892, 10.174258, 13.261985> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.218168, 10.370793, 13.369830>,  <20.416933, 10.488714, 13.434538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.218168, 10.370793, 13.369830>,  <19.886892, 10.174258, 13.261985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.218168, 10.370793, 13.369830> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012376, -0.464918, 0.885267,
		0.560314, -0.736505, -0.378959,
		0.828188, 0.491338, 0.269615,
		20.466625, 10.518194, 13.450714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.312672, 9.658207, 13.656649>,  <19.886892, 10.174258, 13.261985>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.312672, 9.658207, 13.656649> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.437838, 10.024967, 13.755749>,  <20.512938, 10.245023, 13.815208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.437838, 10.024967, 13.755749>,  <20.312672, 9.658207, 13.656649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.437838, 10.024967, 13.755749> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031758, -0.250602, 0.967569,
		0.949250, -0.310634, -0.049298,
		0.312914, 0.916900, 0.247749,
		20.531712, 10.300037, 13.830073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.774704, 9.580646, 14.279421>,  <20.312672, 9.658207, 13.656649>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.774704, 9.580646, 14.279421> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.695190, 9.972404, 14.293644>,  <20.647482, 10.207460, 14.302177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.695190, 9.972404, 14.293644>,  <20.774704, 9.580646, 14.279421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.695190, 9.972404, 14.293644> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250399, 0.015678, 0.968016,
		0.947515, 0.201329, -0.248357,
		-0.198783, 0.979398, 0.035558,
		20.635555, 10.266224, 14.304312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.260349, 9.863741, 14.801688>,  <20.774704, 9.580646, 14.279421>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.260349, 9.863741, 14.801688> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.925793, 10.079592, 14.763206>,  <20.725060, 10.209103, 14.740116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.925793, 10.079592, 14.763206>,  <21.260349, 9.863741, 14.801688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.925793, 10.079592, 14.763206> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059777, 0.264267, 0.962595,
		0.544867, 0.799353, -0.253288,
		-0.836389, 0.539627, -0.096208,
		20.674875, 10.241480, 14.734344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.332045, 10.614446, 15.053139>,  <21.260349, 9.863741, 14.801688>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.332045, 10.614446, 15.053139> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.944084, 10.517258, 15.059512>,  <20.711308, 10.458945, 15.063336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.944084, 10.517258, 15.059512>,  <21.332045, 10.614446, 15.053139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.944084, 10.517258, 15.059512> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058393, 0.295624, 0.953518,
		-0.236386, 0.923890, -0.300914,
		-0.969903, -0.242970, 0.015933,
		20.653112, 10.444366, 15.064292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.002594, 10.822613, 15.170280>,  <21.332045, 10.614446, 15.053139>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.002594, 10.822613, 15.170280> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.737280, 11.038050, 14.962445>,  <21.578093, 11.167312, 14.837744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.737280, 11.038050, 14.962445>,  <22.002594, 10.822613, 15.170280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.737280, 11.038050, 14.962445> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494832, 0.205220, 0.844409,
		0.561423, 0.817192, 0.130394,
		-0.663284, 0.538593, -0.519588,
		21.538294, 11.199628, 14.806569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.810396, 11.296823, 15.589922>,  <22.002594, 10.822613, 15.170280>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.810396, 11.296823, 15.589922> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.518192, 11.337834, 15.319858>,  <21.342869, 11.362441, 15.157819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.518192, 11.337834, 15.319858>,  <21.810396, 11.296823, 15.589922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.518192, 11.337834, 15.319858> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639883, 0.242581, 0.729180,
		0.238544, 0.964698, -0.111601,
		-0.730511, 0.102529, -0.675160,
		21.299040, 11.368593, 15.117310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.457800, 12.020328, 15.609220>,  <21.810396, 11.296823, 15.589922>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.457800, 12.020328, 15.609220> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.229940, 11.708283, 15.505737>,  <21.093224, 11.521057, 15.443648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.229940, 11.708283, 15.505737>,  <21.457800, 12.020328, 15.609220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.229940, 11.708283, 15.505737> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571823, 0.150087, 0.806531,
		-0.590355, 0.607374, -0.531581,
		-0.569650, -0.780110, -0.258705,
		21.059046, 11.474251, 15.428125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.775055, 12.312753, 15.900018>,  <21.457800, 12.020328, 15.609220>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.775055, 12.312753, 15.900018> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.761530, 11.917206, 15.842053>,  <20.753414, 11.679878, 15.807275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.761530, 11.917206, 15.842053>,  <20.775055, 12.312753, 15.900018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.761530, 11.917206, 15.842053> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800150, -0.060093, 0.596782,
		-0.598846, 0.136129, -0.789210,
		-0.033814, -0.988867, -0.144910,
		20.751387, 11.620545, 15.798580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.217632, 11.953667, 15.397497>,  <20.775055, 12.312753, 15.900018>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.217632, 11.953667, 15.397497> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.324781, 11.786202, 15.744592>,  <20.389071, 11.685723, 15.952848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.324781, 11.786202, 15.744592>,  <20.217632, 11.953667, 15.397497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.324781, 11.786202, 15.744592> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855362, 0.311153, 0.414174,
		-0.443398, -0.853174, -0.274758,
		0.267871, -0.418662, 0.867737,
		20.405144, 11.660604, 16.004913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.846977, 12.143593, 14.891831>,  <20.217632, 11.953667, 15.397497>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.846977, 12.143593, 14.891831> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.139317, 12.310555, 15.107843>,  <21.314720, 12.410733, 15.237451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.139317, 12.310555, 15.107843>,  <20.846977, 12.143593, 14.891831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.139317, 12.310555, 15.107843> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060394, 0.748556, -0.660316,
		-0.679863, 0.515205, 0.521871,
		0.730848, 0.417406, 0.540031,
		21.358570, 12.435778, 15.269853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.679327, 12.888916, 15.099274>,  <20.846977, 12.143593, 14.891831>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.679327, 12.888916, 15.099274> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.073536, 12.824224, 15.078921>,  <21.310061, 12.785410, 15.066710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.073536, 12.824224, 15.078921>,  <20.679327, 12.888916, 15.099274>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.073536, 12.824224, 15.078921> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114623, 0.856703, -0.502913,
		0.124926, 0.489800, 0.862838,
		0.985523, -0.161728, -0.050882,
		21.369192, 12.775706, 15.063657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.003098, 13.505532, 15.122458>,  <20.679327, 12.888916, 15.099274>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.003098, 13.505532, 15.122458> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.298443, 13.277874, 14.977740>,  <21.475649, 13.141279, 14.890909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.298443, 13.277874, 14.977740>,  <21.003098, 13.505532, 15.122458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.298443, 13.277874, 14.977740> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243623, 0.725336, -0.643845,
		0.628865, 0.387248, 0.674217,
		0.738361, -0.569146, -0.361796,
		21.519951, 13.107130, 14.869202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.568886, 13.905266, 15.207846>,  <21.003098, 13.505532, 15.122458>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.568886, 13.905266, 15.207846> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.685581, 13.630458, 14.941646>,  <21.755598, 13.465573, 14.781925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.685581, 13.630458, 14.941646>,  <21.568886, 13.905266, 15.207846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.685581, 13.630458, 14.941646> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253800, 0.726430, -0.638659,
		0.922211, 0.017418, 0.386294,
		0.291740, -0.687020, -0.665501,
		21.773104, 13.424352, 14.741995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.304745, 14.065880, 15.074932>,  <21.568886, 13.905266, 15.207846>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.304745, 14.065880, 15.074932> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.141972, 13.867879, 14.767847>,  <22.044308, 13.749079, 14.583596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.141972, 13.867879, 14.767847>,  <22.304745, 14.065880, 15.074932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.141972, 13.867879, 14.767847> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289258, 0.727365, -0.622310,
		0.866451, -0.475304, -0.152804,
		-0.406931, -0.495001, -0.767711,
		22.019892, 13.719378, 14.537534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.769342, 14.233062, 14.563366>,  <22.304745, 14.065880, 15.074932>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.769342, 14.233062, 14.563366> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.446205, 14.070333, 14.392773>,  <22.252323, 13.972696, 14.290417>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.446205, 14.070333, 14.392773>,  <22.769342, 14.233062, 14.563366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.446205, 14.070333, 14.392773> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105764, 0.611788, -0.783919,
		0.579829, -0.678391, -0.451203,
		-0.807844, -0.406818, -0.426482,
		22.203852, 13.948287, 14.264828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.971087, 14.078795, 13.906380>,  <22.769342, 14.233062, 14.563366>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.971087, 14.078795, 13.906380> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.572252, 14.103283, 13.888154>,  <22.332952, 14.117975, 13.877218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.572252, 14.103283, 13.888154>,  <22.971087, 14.078795, 13.906380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.572252, 14.103283, 13.888154> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066878, 0.413384, -0.908098,
		-0.036757, -0.908497, -0.416272,
		-0.997084, 0.061219, -0.045564,
		22.273127, 14.121649, 13.874485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.852182, 13.925615, 13.271720>,  <22.971087, 14.078795, 13.906380>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.852182, 13.925615, 13.271720> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.529993, 14.117649, 13.410706>,  <22.336679, 14.232870, 13.494097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.529993, 14.117649, 13.410706>,  <22.852182, 13.925615, 13.271720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.529993, 14.117649, 13.410706> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072560, 0.502004, -0.861816,
		-0.588174, -0.719382, -0.369516,
		-0.805473, 0.480086, 0.347464,
		22.288351, 14.261675, 13.514945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.447037, 13.910739, 12.759658>,  <22.852182, 13.925615, 13.271720>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.447037, 13.910739, 12.759658> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.300295, 14.203104, 12.989853>,  <22.212250, 14.378523, 13.127970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.300295, 14.203104, 12.989853>,  <22.447037, 13.910739, 12.759658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.300295, 14.203104, 12.989853> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116930, 0.577482, -0.807986,
		-0.922901, -0.363704, -0.126385,
		-0.366853, 0.730913, 0.575487,
		22.190239, 14.422378, 13.162498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.867256, 14.097609, 12.391392>,  <22.447037, 13.910739, 12.759658>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.867256, 14.097609, 12.391392> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.964521, 14.404469, 12.628829>,  <22.022881, 14.588585, 12.771292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.964521, 14.404469, 12.628829>,  <21.867256, 14.097609, 12.391392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.964521, 14.404469, 12.628829> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238333, 0.640454, -0.730079,
		-0.940250, 0.036054, 0.338571,
		0.243162, 0.767150, 0.593594,
		22.037470, 14.634613, 12.806907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.370466, 14.550996, 12.368928>,  <21.867256, 14.097609, 12.391392>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.370466, 14.550996, 12.368928> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.648628, 14.797668, 12.516504>,  <21.815525, 14.945672, 12.605050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.648628, 14.797668, 12.516504>,  <21.370466, 14.550996, 12.368928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.648628, 14.797668, 12.516504> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187671, 0.651432, -0.735129,
		-0.693679, 0.441973, 0.568743,
		0.695405, 0.616681, 0.368940,
		21.857250, 14.982673, 12.627186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.115936, 15.273011, 12.388375>,  <21.370466, 14.550996, 12.368928>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.115936, 15.273011, 12.388375> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.513725, 15.313626, 12.377709>,  <21.752399, 15.337996, 12.371309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.513725, 15.313626, 12.377709>,  <21.115936, 15.273011, 12.388375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.513725, 15.313626, 12.377709> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082641, 0.600549, -0.795306,
		-0.064739, 0.793115, 0.605621,
		0.994474, 0.101537, -0.026665,
		21.812067, 15.344088, 12.369710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.255196, 15.961211, 12.147823>,  <21.115936, 15.273011, 12.388375>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.255196, 15.961211, 12.147823> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.589165, 15.752357, 12.078218>,  <21.789547, 15.627046, 12.036454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.589165, 15.752357, 12.078218>,  <21.255196, 15.961211, 12.147823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.589165, 15.752357, 12.078218> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029216, 0.357779, -0.933349,
		0.549592, 0.774190, 0.313973,
		0.834922, -0.522134, -0.174013,
		21.839642, 15.595717, 12.026013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.786283, 16.471069, 11.968499>,  <21.255196, 15.961211, 12.147823>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.786283, 16.471069, 11.968499> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.908007, 16.130079, 11.798470>,  <21.981041, 15.925486, 11.696453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.908007, 16.130079, 11.798470>,  <21.786283, 16.471069, 11.968499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.908007, 16.130079, 11.798470> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053035, 0.430380, -0.901089,
		0.951096, 0.296752, 0.085757,
		0.304308, -0.852474, -0.425071,
		21.999300, 15.874337, 11.670949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.131113, 16.634285, 11.406537>,  <21.786283, 16.471069, 11.968499>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.131113, 16.634285, 11.406537> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.089756, 16.248571, 11.308998>,  <22.064941, 16.017143, 11.250475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.089756, 16.248571, 11.308998>,  <22.131113, 16.634285, 11.406537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.089756, 16.248571, 11.308998> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026136, 0.247711, -0.968481,
		0.994297, -0.093762, -0.050814,
		-0.103394, -0.964286, -0.243848,
		22.058739, 15.959286, 11.235844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<21.049103, 18.911070, 17.269312> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.738211, 18.870266, 17.517670>,  <20.551676, 18.845783, 17.666683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.738211, 18.870266, 17.517670>,  <21.049103, 18.911070, 17.269312>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.738211, 18.870266, 17.517670> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069235, -0.966913, -0.245530,
		0.625396, -0.233820, 0.744451,
		-0.777229, -0.102011, 0.620893,
		20.505041, 18.839663, 17.703938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.099318, 18.230629, 17.632265>,  <21.049103, 18.911070, 17.269312>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.099318, 18.230629, 17.632265> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.714085, 18.320663, 17.691336>,  <20.482944, 18.374685, 17.726778>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.714085, 18.320663, 17.691336>,  <21.099318, 18.230629, 17.632265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.714085, 18.320663, 17.691336> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255811, -0.936066, -0.241538,
		0.083868, -0.270399, 0.959089,
		-0.963082, 0.225088, 0.147676,
		20.425159, 18.388189, 17.735640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.836079, 17.637243, 17.916077>,  <21.099318, 18.230629, 17.632265>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.836079, 17.637243, 17.916077> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.497152, 17.815060, 17.799843>,  <20.293797, 17.921749, 17.730103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.497152, 17.815060, 17.799843>,  <20.836079, 17.637243, 17.916077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.497152, 17.815060, 17.799843> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316756, -0.862185, -0.395352,
		-0.426287, -0.242944, 0.871354,
		-0.847316, 0.444540, -0.290584,
		20.242958, 17.948421, 17.712667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.205887, 17.251245, 18.092400>,  <20.836079, 17.637243, 17.916077>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.205887, 17.251245, 18.092400> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.110668, 17.453314, 17.760584>,  <20.053537, 17.574554, 17.561495>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.110668, 17.453314, 17.760584>,  <20.205887, 17.251245, 18.092400>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.110668, 17.453314, 17.760584> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343403, -0.842702, -0.414642,
		-0.908520, 0.186163, 0.374078,
		-0.238045, 0.505170, -0.829540,
		20.039255, 17.604864, 17.511723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.463610, 17.215092, 17.976728>,  <20.205887, 17.251245, 18.092400>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.463610, 17.215092, 17.976728> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.636465, 17.291224, 17.624130>,  <19.740177, 17.336903, 17.412571>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.636465, 17.291224, 17.624130>,  <19.463610, 17.215092, 17.976728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.636465, 17.291224, 17.624130> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163350, -0.944785, -0.284074,
		-0.886891, 0.266750, -0.377186,
		0.432136, 0.190330, -0.881495,
		19.766106, 17.348322, 17.359682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.979580, 16.965021, 17.395624>,  <19.463610, 17.215092, 17.976728>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.979580, 16.965021, 17.395624> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.329391, 16.984428, 17.202610>,  <19.539278, 16.996073, 17.086802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.329391, 16.984428, 17.202610>,  <18.979580, 16.965021, 17.395624>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.329391, 16.984428, 17.202610> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232181, -0.831656, -0.504421,
		-0.425779, 0.553168, -0.716043,
		0.874531, 0.048520, -0.482537,
		19.591751, 16.998985, 17.057848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.708422, 16.879368, 16.806385>,  <18.979580, 16.965021, 17.395624>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.708422, 16.879368, 16.806385> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.100712, 16.803488, 16.787672>,  <19.336086, 16.757959, 16.776445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.100712, 16.803488, 16.787672>,  <18.708422, 16.879368, 16.806385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.100712, 16.803488, 16.787672> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179518, -0.780359, -0.599010,
		0.077127, 0.595863, -0.799374,
		0.980727, -0.189702, -0.046782,
		19.394930, 16.746578, 16.773638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.843718, 16.722416, 16.195749>,  <18.708422, 16.879368, 16.806385>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.843718, 16.722416, 16.195749> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.169931, 16.564585, 16.365084>,  <19.365660, 16.469885, 16.466684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.169931, 16.564585, 16.365084>,  <18.843718, 16.722416, 16.195749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.169931, 16.564585, 16.365084> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097089, -0.814434, -0.572076,
		0.570509, 0.425445, -0.702507,
		0.815533, -0.394580, 0.423336,
		19.414591, 16.446211, 16.492085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.244474, 16.627562, 15.605464>,  <18.843718, 16.722416, 16.195749>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.244474, 16.627562, 15.605464> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.321291, 16.376535, 15.907267>,  <19.367380, 16.225920, 16.088348>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.321291, 16.376535, 15.907267>,  <19.244474, 16.627562, 15.605464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.321291, 16.376535, 15.907267> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139474, -0.778466, -0.611995,
		0.971426, 0.012293, -0.237026,
		0.192040, -0.627566, 0.754507,
		19.378902, 16.188265, 16.133619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.577946, 16.138355, 15.344555>,  <19.244474, 16.627562, 15.605464>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.577946, 16.138355, 15.344555> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.492966, 15.970744, 15.697662>,  <19.441978, 15.870177, 15.909527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.492966, 15.970744, 15.697662>,  <19.577946, 16.138355, 15.344555>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.492966, 15.970744, 15.697662> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124638, -0.884392, -0.449796,
		0.969191, -0.205585, 0.135662,
		-0.212449, -0.419029, 0.882768,
		19.429232, 15.845036, 15.962493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.789038, 15.444048, 15.337450>,  <19.577946, 16.138355, 15.344555>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.789038, 15.444048, 15.337450> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.509394, 15.415104, 15.621986>,  <19.341606, 15.397738, 15.792708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.509394, 15.415104, 15.621986>,  <19.789038, 15.444048, 15.337450>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.509394, 15.415104, 15.621986> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062554, -0.984862, -0.161661,
		0.712271, -0.157516, 0.684002,
		-0.699112, -0.072360, 0.711342,
		19.299660, 15.393396, 15.835389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.876984, 14.788621, 15.550086>,  <19.789038, 15.444048, 15.337450>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.876984, 14.788621, 15.550086> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.507595, 14.852364, 15.689691>,  <19.285963, 14.890610, 15.773453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.507595, 14.852364, 15.689691>,  <19.876984, 14.788621, 15.550086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.507595, 14.852364, 15.689691> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290650, -0.884373, -0.365249,
		0.250451, -0.438736, 0.863009,
		-0.923470, 0.159357, 0.349011,
		19.230555, 14.900170, 15.794394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.511166, 14.203347, 15.955066>,  <19.876984, 14.788621, 15.550086>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.511166, 14.203347, 15.955066> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.233620, 14.426729, 15.773218>,  <19.067093, 14.560759, 15.664110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.233620, 14.426729, 15.773218>,  <19.511166, 14.203347, 15.955066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.233620, 14.426729, 15.773218> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407395, -0.825007, -0.391653,
		-0.593784, -0.086546, 0.799957,
		-0.693866, 0.558456, -0.454617,
		19.025459, 14.594266, 15.636832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.907722, 13.849876, 15.981956>,  <19.511166, 14.203347, 15.955066>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.907722, 13.849876, 15.981956> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.775728, 14.085147, 15.686617>,  <18.696531, 14.226309, 15.509413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.775728, 14.085147, 15.686617>,  <18.907722, 13.849876, 15.981956>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.775728, 14.085147, 15.686617> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205687, -0.808168, -0.551867,
		-0.921305, -0.030239, 0.387663,
		-0.329984, 0.588176, -0.738350,
		18.676733, 14.261600, 15.465112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.911469, 13.122526, 16.270067>,  <18.907722, 13.849876, 15.981956>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.911469, 13.122526, 16.270067> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.159130, 12.925377, 16.514599>,  <19.307728, 12.807087, 16.661318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.159130, 12.925377, 16.514599>,  <18.911469, 13.122526, 16.270067>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.159130, 12.925377, 16.514599> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098598, 0.821130, 0.562160,
		-0.779055, -0.287788, 0.557002,
		0.619154, -0.492873, 0.611330,
		19.344877, 12.777515, 16.697998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.606707, 13.076938, 17.036497>,  <18.911469, 13.122526, 16.270067>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.606707, 13.076938, 17.036497> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.005558, 13.047612, 17.044079>,  <19.244869, 13.030017, 17.048628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.005558, 13.047612, 17.044079>,  <18.606707, 13.076938, 17.036497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.005558, 13.047612, 17.044079> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038602, 0.707478, 0.705680,
		-0.065147, -0.702922, 0.708277,
		0.997129, -0.073314, 0.018956,
		19.304697, 13.025618, 17.049765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.794310, 13.098337, 17.738667>,  <18.606707, 13.076938, 17.036497>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.794310, 13.098337, 17.738667> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.134352, 13.191690, 17.549835>,  <19.338377, 13.247703, 17.436537>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.134352, 13.191690, 17.549835>,  <18.794310, 13.098337, 17.738667>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.134352, 13.191690, 17.549835> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157052, 0.743286, 0.650277,
		0.502651, -0.626944, 0.595217,
		0.850104, 0.233383, -0.472076,
		19.389383, 13.261705, 17.408213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.319933, 13.243742, 18.188868>,  <18.794310, 13.098337, 17.738667>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.319933, 13.243742, 18.188868> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.486462, 13.431686, 17.877508>,  <19.586380, 13.544453, 17.690693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.486462, 13.431686, 17.877508>,  <19.319933, 13.243742, 18.188868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.486462, 13.431686, 17.877508> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157655, 0.805848, 0.570749,
		0.895444, -0.360334, 0.261418,
		0.416324, 0.469860, -0.778400,
		19.611359, 13.572644, 17.643988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.905365, 13.566530, 18.537819>,  <19.319933, 13.243742, 18.188868>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.905365, 13.566530, 18.537819> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.819889, 13.727178, 18.181608>,  <19.768604, 13.823566, 17.967882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.819889, 13.727178, 18.181608>,  <19.905365, 13.566530, 18.537819>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.819889, 13.727178, 18.181608> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306918, 0.893026, 0.329099,
		0.927436, -0.202994, -0.314094,
		-0.213690, 0.401619, -0.890527,
		19.755783, 13.847663, 17.914450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.449522, 14.031431, 18.499037>,  <19.905365, 13.566530, 18.537819>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.449522, 14.031431, 18.499037> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.180964, 14.184283, 18.245045>,  <20.019829, 14.275994, 18.092649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.180964, 14.184283, 18.245045>,  <20.449522, 14.031431, 18.499037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.180964, 14.184283, 18.245045> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203641, 0.918958, 0.337707,
		0.712571, 0.097427, -0.694803,
		-0.671397, 0.382131, -0.634982,
		19.979544, 14.298923, 18.054550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.759262, 14.509282, 17.985779>,  <20.449522, 14.031431, 18.499037>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.759262, 14.509282, 17.985779> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.372393, 14.610916, 17.987347>,  <20.140270, 14.671896, 17.988287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.372393, 14.610916, 17.987347>,  <20.759262, 14.509282, 17.985779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.372393, 14.610916, 17.987347> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250974, 0.952691, 0.171439,
		0.039826, 0.166795, -0.985187,
		-0.967174, 0.254084, 0.003919,
		20.082241, 14.687141, 17.988522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.840328, 15.221945, 17.806696>,  <20.759262, 14.509282, 17.985779>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.840328, 15.221945, 17.806696> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.482990, 15.147193, 17.970165>,  <20.268587, 15.102342, 18.068247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.482990, 15.147193, 17.970165>,  <20.840328, 15.221945, 17.806696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.482990, 15.147193, 17.970165> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020674, 0.925556, 0.378045,
		-0.448899, 0.329275, -0.830703,
		-0.893343, -0.186879, 0.408674,
		20.214987, 15.091129, 18.092768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.479532, 15.850949, 17.663193>,  <20.840328, 15.221945, 17.806696>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.479532, 15.850949, 17.663193> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.313208, 15.650393, 17.966694>,  <20.213413, 15.530060, 18.148794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.313208, 15.650393, 17.966694>,  <20.479532, 15.850949, 17.663193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.313208, 15.650393, 17.966694> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284022, 0.864164, 0.415394,
		-0.863962, -0.042777, -0.501736,
		-0.415813, -0.501389, 0.758755,
		20.188463, 15.499977, 18.194321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.125528, 16.415865, 18.011894>,  <20.479532, 15.850949, 17.663193>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.125528, 16.415865, 18.011894> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.079519, 16.110888, 18.266594>,  <20.051914, 15.927901, 18.419415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.079519, 16.110888, 18.266594>,  <20.125528, 16.415865, 18.011894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.079519, 16.110888, 18.266594> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005588, 0.641491, 0.767110,
		-0.993347, 0.084678, -0.078047,
		-0.115024, -0.762443, 0.636750,
		20.045012, 15.882154, 18.457619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.503735, 16.434988, 18.418377>,  <20.125528, 16.415865, 18.011894>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.503735, 16.434988, 18.418377> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.777330, 16.230755, 18.626785>,  <19.941488, 16.108215, 18.751831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.777330, 16.230755, 18.626785>,  <19.503735, 16.434988, 18.418377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.777330, 16.230755, 18.626785> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069871, 0.665089, 0.743488,
		-0.726137, -0.544943, 0.419240,
		0.683991, -0.510581, 0.521021,
		19.982529, 16.077581, 18.783092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.259850, 16.527891, 19.057133>,  <19.503735, 16.434988, 18.418377>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.259850, 16.527891, 19.057133> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.626017, 16.378046, 19.116024>,  <19.845716, 16.288139, 19.151360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.626017, 16.378046, 19.116024>,  <19.259850, 16.527891, 19.057133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.626017, 16.378046, 19.116024> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083626, 0.534808, 0.840825,
		-0.393723, -0.757394, 0.520900,
		0.915417, -0.374613, 0.147228,
		19.900642, 16.265663, 19.160192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.234800, 16.187723, 19.808353>,  <19.259850, 16.527891, 19.057133>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.234800, 16.187723, 19.808353> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.599491, 16.280949, 19.673040>,  <19.818306, 16.336884, 19.591852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.599491, 16.280949, 19.673040>,  <19.234800, 16.187723, 19.808353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.599491, 16.280949, 19.673040> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126461, 0.624249, 0.770922,
		0.390845, -0.745651, 0.539671,
		0.911728, 0.233063, -0.338280,
		19.873009, 16.350868, 19.571556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.613396, 16.107786, 20.381039>,  <19.234800, 16.187723, 19.808353>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.613396, 16.107786, 20.381039> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.808336, 16.350309, 20.129681>,  <19.925301, 16.495823, 19.978865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.808336, 16.350309, 20.129681>,  <19.613396, 16.107786, 20.381039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.808336, 16.350309, 20.129681> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062790, 0.693447, 0.717767,
		0.870947, -0.389260, 0.299881,
		0.487349, 0.606307, -0.628397,
		19.954542, 16.532202, 19.941162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.591364, 15.499708, 20.795403>,  <19.613396, 16.107786, 20.381039>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.591364, 15.499708, 20.795403> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.280493, 15.410137, 21.030638>,  <19.093969, 15.356395, 21.171780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.280493, 15.410137, 21.030638>,  <19.591364, 15.499708, 20.795403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.280493, 15.410137, 21.030638> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212193, -0.786555, -0.579919,
		0.592424, -0.575490, 0.563778,
		-0.777180, -0.223928, 0.588088,
		19.047338, 15.342958, 21.207064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.551535, 14.706069, 20.808554>,  <19.591364, 15.499708, 20.795403>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.551535, 14.706069, 20.808554> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.191748, 14.839298, 20.921707>,  <18.975876, 14.919236, 20.989599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.191748, 14.839298, 20.921707>,  <19.551535, 14.706069, 20.808554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.191748, 14.839298, 20.921707> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436951, -0.676872, -0.592384,
		-0.005832, -0.656435, 0.754360,
		-0.899466, 0.333074, 0.282882,
		18.921907, 14.939220, 21.006571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.244755, 14.122267, 20.965532>,  <19.551535, 14.706069, 20.808554>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.244755, 14.122267, 20.965532> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.934366, 14.369848, 20.916933>,  <18.748133, 14.518397, 20.887774>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.934366, 14.369848, 20.916933>,  <19.244755, 14.122267, 20.965532>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.934366, 14.369848, 20.916933> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534795, -0.747722, -0.393581,
		-0.334455, -0.240432, 0.911226,
		-0.775973, 0.618954, -0.121497,
		18.701574, 14.555534, 20.880484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.600309, 13.758263, 21.221884>,  <19.244755, 14.122267, 20.965532>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.600309, 13.758263, 21.221884> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.476313, 14.050404, 20.978413>,  <18.401915, 14.225688, 20.832329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.476313, 14.050404, 20.978413>,  <18.600309, 13.758263, 21.221884>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.476313, 14.050404, 20.978413> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630366, -0.637153, -0.443480,
		-0.711719, 0.246216, 0.657901,
		-0.309992, 0.730351, -0.608680,
		18.383314, 14.269509, 20.795809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.942905, 13.634527, 21.244101>,  <18.600309, 13.758263, 21.221884>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.942905, 13.634527, 21.244101> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.973696, 13.895793, 20.942783>,  <17.992170, 14.052552, 20.761993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.973696, 13.895793, 20.942783>,  <17.942905, 13.634527, 21.244101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.973696, 13.895793, 20.942783> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617616, -0.561884, -0.550307,
		-0.782704, 0.507606, 0.360154,
		0.076974, 0.653164, -0.753294,
		17.996788, 14.091743, 20.716795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.256378, 13.836239, 21.151768>,  <17.942905, 13.634527, 21.244101>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.256378, 13.836239, 21.151768> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.478220, 13.875910, 20.821295>,  <17.611324, 13.899713, 20.623011>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.478220, 13.875910, 20.821295>,  <17.256378, 13.836239, 21.151768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.478220, 13.875910, 20.821295> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663520, -0.546454, -0.511008,
		-0.502151, 0.831596, -0.237261,
		0.554604, 0.099176, -0.826183,
		17.644602, 13.905663, 20.573441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.799553, 13.842402, 20.610395>,  <17.256378, 13.836239, 21.151768>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.799553, 13.842402, 20.610395> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.123791, 13.807126, 20.378824>,  <17.318333, 13.785960, 20.239882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.123791, 13.807126, 20.378824>,  <16.799553, 13.842402, 20.610395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.123791, 13.807126, 20.378824> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516528, -0.573476, -0.635864,
		-0.275925, 0.814462, -0.510410,
		0.810595, -0.088190, -0.578929,
		17.366970, 13.780669, 20.205145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.508747, 13.969790, 19.938326>,  <16.799553, 13.842402, 20.610395>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.508747, 13.969790, 19.938326> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.844990, 13.754863, 19.910986>,  <17.046736, 13.625907, 19.894583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.844990, 13.754863, 19.910986>,  <16.508747, 13.969790, 19.938326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.844990, 13.754863, 19.910986> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479765, -0.680051, -0.554398,
		0.251407, 0.498822, -0.829440,
		0.840607, -0.537316, -0.068348,
		17.097172, 13.593668, 19.890482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.544949, 13.753764, 19.276070>,  <16.508747, 13.969790, 19.938326>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.544949, 13.753764, 19.276070> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.772736, 13.489578, 19.471823>,  <16.909407, 13.331067, 19.589275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.772736, 13.489578, 19.471823>,  <16.544949, 13.753764, 19.276070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.772736, 13.489578, 19.471823> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478800, -0.750436, -0.455628,
		0.668176, 0.025148, -0.743578,
		0.569466, -0.660465, 0.489382,
		16.943575, 13.291439, 19.618637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.785118, 13.324994, 18.775284>,  <16.544949, 13.753764, 19.276070>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.785118, 13.324994, 18.775284> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.805004, 13.105442, 19.109053>,  <16.816936, 12.973711, 19.309315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.805004, 13.105442, 19.109053>,  <16.785118, 13.324994, 18.775284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.805004, 13.105442, 19.109053> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493789, -0.739714, -0.457160,
		0.868159, -0.389299, -0.307807,
		0.049717, -0.548880, 0.834422,
		16.819920, 12.940778, 19.359379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.958979, 12.635178, 18.612665>,  <16.785118, 13.324994, 18.775284>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.958979, 12.635178, 18.612665> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.778793, 12.601397, 18.968182>,  <16.670683, 12.581128, 19.181492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.778793, 12.601397, 18.968182>,  <16.958979, 12.635178, 18.612665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.778793, 12.601397, 18.968182> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645347, -0.657117, -0.389519,
		0.616936, -0.749043, 0.241505,
		-0.450464, -0.084454, 0.888791,
		16.643654, 12.576060, 19.234819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.883066, 11.836475, 18.874640>,  <16.958979, 12.635178, 18.612665>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.883066, 11.836475, 18.874640> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.623419, 12.051918, 19.089506>,  <16.467630, 12.181184, 19.218426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.623419, 12.051918, 19.089506>,  <16.883066, 11.836475, 18.874640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.623419, 12.051918, 19.089506> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701858, -0.696366, -0.149899,
		0.293328, -0.474317, 0.830050,
		-0.649118, 0.538607, 0.537167,
		16.428684, 12.213500, 19.250656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<19.362558, 19.106005, 25.669094> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.738764, 18.970106, 25.670176>,  <19.964487, 18.888567, 25.670824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.738764, 18.970106, 25.670176>,  <19.362558, 19.106005, 25.669094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.738764, 18.970106, 25.670176> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291069, -0.809817, -0.509387,
		0.175252, 0.478298, -0.860534,
		0.940514, -0.339745, 0.002704,
		20.020918, 18.868183, 25.670986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.407438, 18.947147, 24.916388>,  <19.362558, 19.106005, 25.669094>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.407438, 18.947147, 24.916388> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.692369, 18.750380, 25.116631>,  <19.863327, 18.632318, 25.236776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.692369, 18.750380, 25.116631>,  <19.407438, 18.947147, 24.916388>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.692369, 18.750380, 25.116631> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146436, -0.801738, -0.579458,
		0.686402, 0.339457, -0.643134,
		0.712327, -0.491920, 0.500606,
		19.906067, 18.602804, 25.266811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.745132, 18.737503, 24.345055>,  <19.407438, 18.947147, 24.916388>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.745132, 18.737503, 24.345055> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.908789, 18.509607, 24.630152>,  <20.006983, 18.372869, 24.801210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.908789, 18.509607, 24.630152>,  <19.745132, 18.737503, 24.345055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.908789, 18.509607, 24.630152> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074932, -0.757494, -0.648528,
		0.909389, 0.318747, -0.267230,
		0.409141, -0.569740, 0.712741,
		20.031530, 18.338686, 24.843975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.278133, 18.440937, 24.002974>,  <19.745132, 18.737503, 24.345055>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.278133, 18.440937, 24.002974> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.188351, 18.196383, 24.306505>,  <20.134481, 18.049650, 24.488625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.188351, 18.196383, 24.306505>,  <20.278133, 18.440937, 24.002974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.188351, 18.196383, 24.306505> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043162, -0.771699, -0.634522,
		0.973527, -0.175176, 0.146826,
		-0.224458, -0.611387, 0.758831,
		20.121014, 18.012966, 24.534155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.698313, 17.781631, 23.968758>,  <20.278133, 18.440937, 24.002974>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.698313, 17.781631, 23.968758> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.362679, 17.708864, 24.173830>,  <20.161299, 17.665203, 24.296873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.362679, 17.708864, 24.173830>,  <20.698313, 17.781631, 23.968758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.362679, 17.708864, 24.173830> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109861, -0.866343, -0.487217,
		0.532791, -0.465140, 0.706950,
		-0.839085, -0.181918, 0.512681,
		20.110952, 17.654289, 24.327635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.671495, 17.033302, 24.135729>,  <20.698313, 17.781631, 23.968758>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.671495, 17.033302, 24.135729> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.289831, 17.144503, 24.180088>,  <20.060833, 17.211222, 24.206703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.289831, 17.144503, 24.180088>,  <20.671495, 17.033302, 24.135729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.289831, 17.144503, 24.180088> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296890, -0.832163, -0.468360,
		-0.037918, -0.479814, 0.876551,
		-0.954159, 0.277999, 0.110898,
		20.003584, 17.227901, 24.213358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.367300, 16.461798, 24.353649>,  <20.671495, 17.033302, 24.135729>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.367300, 16.461798, 24.353649> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.070339, 16.688318, 24.210459>,  <19.892162, 16.824230, 24.124544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.070339, 16.688318, 24.210459>,  <20.367300, 16.461798, 24.353649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.070339, 16.688318, 24.210459> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395149, -0.801619, -0.448626,
		-0.541015, -0.191607, 0.818895,
		-0.742401, 0.566299, -0.357974,
		19.847618, 16.858208, 24.103065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.867390, 15.964020, 24.266817>,  <20.367300, 16.461798, 24.353649>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.867390, 15.964020, 24.266817> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.733086, 16.264395, 24.039360>,  <19.652502, 16.444620, 23.902885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.733086, 16.264395, 24.039360>,  <19.867390, 15.964020, 24.266817>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.733086, 16.264395, 24.039360> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419668, -0.659721, -0.623416,
		-0.843293, 0.029322, 0.536654,
		-0.335762, 0.750939, -0.568643,
		19.632357, 16.489676, 23.868767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.011877, 15.892413, 24.118994>,  <19.867390, 15.964020, 24.266817>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.011877, 15.892413, 24.118994> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.221695, 16.110466, 23.857405>,  <19.347586, 16.241299, 23.700451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.221695, 16.110466, 23.857405>,  <19.011877, 15.892413, 24.118994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.221695, 16.110466, 23.857405> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401543, -0.518927, -0.754637,
		-0.750742, 0.658441, -0.053307,
		0.524547, 0.545133, -0.653973,
		19.379059, 16.274006, 23.661213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.563494, 15.908643, 23.555260>,  <19.011877, 15.892413, 24.118994>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.563494, 15.908643, 23.555260> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.917044, 16.032074, 23.414663>,  <19.129173, 16.106133, 23.330305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.917044, 16.032074, 23.414663>,  <18.563494, 15.908643, 23.555260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.917044, 16.032074, 23.414663> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233821, -0.359337, -0.903440,
		-0.405086, 0.880714, -0.245457,
		0.883874, 0.308578, -0.351492,
		19.182205, 16.124647, 23.309216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.452723, 16.378393, 22.993650>,  <18.563494, 15.908643, 23.555260>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.452723, 16.378393, 22.993650> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.820910, 16.233248, 22.935593>,  <19.041822, 16.146160, 22.900759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.820910, 16.233248, 22.935593>,  <18.452723, 16.378393, 22.993650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.820910, 16.233248, 22.935593> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237000, -0.222964, -0.945578,
		0.310752, 0.904775, -0.291230,
		0.920470, -0.362862, -0.145145,
		19.097050, 16.124390, 22.892050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.587309, 16.577522, 22.367802>,  <18.452723, 16.378393, 22.993650>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.587309, 16.577522, 22.367802> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.871450, 16.303785, 22.433613>,  <19.041935, 16.139544, 22.473099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.871450, 16.303785, 22.433613>,  <18.587309, 16.577522, 22.367802>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.871450, 16.303785, 22.433613> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060674, -0.292423, -0.954362,
		0.701223, 0.667953, -0.249246,
		0.710355, -0.684344, 0.164527,
		19.084557, 16.098482, 22.482971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.909147, 16.549633, 21.651386>,  <18.587309, 16.577522, 22.367802>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.909147, 16.549633, 21.651386> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.017834, 16.204796, 21.822485>,  <19.083046, 15.997894, 21.925144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.017834, 16.204796, 21.822485>,  <18.909147, 16.549633, 21.651386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.017834, 16.204796, 21.822485> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415393, -0.505995, -0.755922,
		0.868112, 0.027712, -0.495594,
		0.271716, -0.862091, 0.427749,
		19.099348, 15.946169, 21.950809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.434614, 16.183819, 21.093925>,  <18.909147, 16.549633, 21.651386>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.434614, 16.183819, 21.093925> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.276758, 15.898949, 21.326155>,  <19.182045, 15.728026, 21.465492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.276758, 15.898949, 21.326155>,  <19.434614, 16.183819, 21.093925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.276758, 15.898949, 21.326155> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203100, -0.548618, -0.811029,
		0.896109, -0.437978, 0.071863,
		-0.394639, -0.712175, 0.580575,
		19.158367, 15.685296, 21.500328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.073254, 16.384016, 20.846596>,  <19.434614, 16.183819, 21.093925>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.073254, 16.384016, 20.846596> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.089394, 16.612385, 20.518591>,  <20.099077, 16.749407, 20.321789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.089394, 16.612385, 20.518591>,  <20.073254, 16.384016, 20.846596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.089394, 16.612385, 20.518591> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308809, 0.773376, 0.553649,
		0.950268, -0.275568, -0.145098,
		0.040352, 0.570922, -0.820012,
		20.101500, 16.783661, 20.272587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.797853, 16.655165, 20.795681>,  <20.073254, 16.384016, 20.846596>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.797853, 16.655165, 20.795681> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.536402, 16.887951, 20.602152>,  <20.379530, 17.027622, 20.486034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.536402, 16.887951, 20.602152>,  <20.797853, 16.655165, 20.795681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.536402, 16.887951, 20.602152> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427210, 0.811418, 0.398863,
		0.624706, 0.054016, -0.778989,
		-0.653631, 0.581964, -0.483822,
		20.340313, 17.062540, 20.457005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.186302, 17.193712, 20.448912>,  <20.797853, 16.655165, 20.795681>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.186302, 17.193712, 20.448912> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.827318, 17.370150, 20.449526>,  <20.611927, 17.476011, 20.449894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.827318, 17.370150, 20.449526>,  <21.186302, 17.193712, 20.448912>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.827318, 17.370150, 20.449526> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413500, 0.840097, 0.351076,
		0.153566, 0.315713, -0.936346,
		-0.897461, 0.441092, 0.001537,
		20.558081, 17.502478, 20.449987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.351276, 17.817081, 20.261913>,  <21.186302, 17.193712, 20.448912>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.351276, 17.817081, 20.261913> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.997637, 17.863607, 20.442951>,  <20.785454, 17.891523, 20.551573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.997637, 17.863607, 20.442951>,  <21.351276, 17.817081, 20.261913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.997637, 17.863607, 20.442951> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353594, 0.799726, 0.485191,
		-0.305516, 0.588991, -0.748164,
		-0.884099, 0.116312, 0.452593,
		20.732407, 17.898500, 20.578730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.207037, 18.500467, 20.100492>,  <21.351276, 17.817081, 20.261913>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.207037, 18.500467, 20.100492> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.950800, 18.390938, 20.387453>,  <20.797058, 18.325220, 20.559629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.950800, 18.390938, 20.387453>,  <21.207037, 18.500467, 20.100492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.950800, 18.390938, 20.387453> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074841, 0.907548, 0.413227,
		-0.764226, 0.318400, -0.560874,
		-0.640592, -0.273822, 0.717401,
		20.758623, 18.308792, 20.602673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.661865, 19.006496, 20.165148>,  <21.207037, 18.500467, 20.100492>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.661865, 19.006496, 20.165148> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.651964, 18.841955, 20.529604>,  <20.646025, 18.743231, 20.748278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.651964, 18.841955, 20.529604>,  <20.661865, 19.006496, 20.165148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.651964, 18.841955, 20.529604> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238560, 0.882658, 0.404973,
		-0.970812, 0.227385, 0.076285,
		-0.024751, -0.411351, 0.911141,
		20.644539, 18.718550, 20.802946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.516552, 19.585144, 20.568493>,  <20.661865, 19.006496, 20.165148>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.516552, 19.585144, 20.568493> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.580694, 19.333857, 20.873026>,  <20.619181, 19.183084, 21.055746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.580694, 19.333857, 20.873026>,  <20.516552, 19.585144, 20.568493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.580694, 19.333857, 20.873026> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210348, 0.775346, 0.595477,
		-0.964386, 0.064656, 0.256477,
		0.160357, -0.628218, 0.761333,
		20.628801, 19.145391, 21.101425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.045795, 19.656527, 21.037233>,  <20.516552, 19.585144, 20.568493>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.045795, 19.656527, 21.037233> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.380781, 19.529116, 21.214861>,  <20.581772, 19.452669, 21.321438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.380781, 19.529116, 21.214861>,  <20.045795, 19.656527, 21.037233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.380781, 19.529116, 21.214861> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117652, 0.898606, 0.422687,
		-0.533679, -0.301740, 0.790025,
		0.837463, -0.318527, 0.444067,
		20.632021, 19.433558, 21.348082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.997902, 19.717684, 21.795177>,  <20.045795, 19.656527, 21.037233>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.997902, 19.717684, 21.795177> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.389395, 19.693008, 21.716919>,  <20.624290, 19.678204, 21.669964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.389395, 19.693008, 21.716919>,  <19.997902, 19.717684, 21.795177>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.389395, 19.693008, 21.716919> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174418, 0.752265, 0.635355,
		0.107984, -0.655967, 0.747026,
		0.978733, -0.061686, -0.195645,
		20.683014, 19.674503, 21.658226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.235231, 19.772896, 22.453325>,  <19.997902, 19.717684, 21.795177>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.235231, 19.772896, 22.453325> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.537701, 19.850540, 22.203358>,  <20.719181, 19.897127, 22.053377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.537701, 19.850540, 22.203358>,  <20.235231, 19.772896, 22.453325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.537701, 19.850540, 22.203358> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274551, 0.772758, 0.572248,
		0.593990, -0.604290, 0.531045,
		0.756173, 0.194111, -0.624919,
		20.764553, 19.908773, 22.015882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.816372, 19.844719, 22.839449>,  <20.235231, 19.772896, 22.453325>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.816372, 19.844719, 22.839449> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.892906, 20.044395, 22.501408>,  <20.938828, 20.164202, 22.298584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.892906, 20.044395, 22.501408>,  <20.816372, 19.844719, 22.839449>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.892906, 20.044395, 22.501408> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364562, 0.763272, 0.533395,
		0.911310, -0.410150, -0.035944,
		0.191336, 0.499192, -0.845102,
		20.950308, 20.194153, 22.247877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.536205, 20.043797, 22.896843>,  <20.816372, 19.844719, 22.839449>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.536205, 20.043797, 22.896843> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.398092, 20.272346, 22.599035>,  <21.315226, 20.409477, 22.420351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.398092, 20.272346, 22.599035>,  <21.536205, 20.043797, 22.896843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.398092, 20.272346, 22.599035> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375735, 0.811117, 0.448232,
		0.860002, -0.124976, -0.494750,
		-0.345282, 0.571375, -0.744520,
		21.294508, 20.443760, 22.375679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.009691, 20.600286, 22.903528>,  <21.536205, 20.043797, 22.896843>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.009691, 20.600286, 22.903528> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.682644, 20.738258, 22.719128>,  <21.486416, 20.821041, 22.608488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.682644, 20.738258, 22.719128>,  <22.009691, 20.600286, 22.903528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.682644, 20.738258, 22.719128> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207485, 0.923402, 0.322921,
		0.537075, 0.168375, -0.826559,
		-0.817619, 0.344932, -0.461001,
		21.437359, 20.841738, 22.580828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.224154, 21.275740, 22.559303>,  <22.009691, 20.600286, 22.903528>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.224154, 21.275740, 22.559303> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.829184, 21.275572, 22.622543>,  <21.592201, 21.275471, 22.660486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.829184, 21.275572, 22.622543>,  <22.224154, 21.275740, 22.559303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.829184, 21.275572, 22.622543> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050083, 0.947669, 0.315303,
		-0.149957, 0.319255, -0.935729,
		-0.987423, -0.000417, 0.158099,
		21.532957, 21.275446, 22.669973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<14.428566, 23.089230, 23.562464> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.775825, 22.893661, 23.528332>,  <14.984179, 22.776321, 23.507853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.775825, 22.893661, 23.528332>,  <14.428566, 23.089230, 23.562464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.775825, 22.893661, 23.528332> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371848, -0.526882, -0.764280,
		0.328712, 0.695236, -0.639214,
		0.868146, -0.488918, -0.085330,
		15.036268, 22.746986, 23.502733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.499082, 23.080313, 22.869835>,  <14.428566, 23.089230, 23.562464>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.499082, 23.080313, 22.869835> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.741278, 22.797136, 23.015272>,  <14.886596, 22.627230, 23.102535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.741278, 22.797136, 23.015272>,  <14.499082, 23.080313, 22.869835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.741278, 22.797136, 23.015272> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170431, -0.561605, -0.809662,
		0.777389, 0.428276, -0.460702,
		0.605491, -0.707940, 0.363595,
		14.922925, 22.584755, 23.124350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.892233, 22.905409, 22.291237>,  <14.499082, 23.080313, 22.869835>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.892233, 22.905409, 22.291237> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.901475, 22.590385, 22.537560>,  <14.907020, 22.401371, 22.685352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.901475, 22.590385, 22.537560>,  <14.892233, 22.905409, 22.291237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.901475, 22.590385, 22.537560> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040044, -0.616205, -0.786567,
		0.998931, -0.006487, -0.045774,
		0.023104, -0.787559, 0.615805,
		14.908406, 22.354118, 22.722301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.244864, 22.460556, 21.954430>,  <14.892233, 22.905409, 22.291237>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.244864, 22.460556, 21.954430> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.091865, 22.224178, 22.238535>,  <15.000065, 22.082352, 22.408998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.091865, 22.224178, 22.238535>,  <15.244864, 22.460556, 21.954430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.091865, 22.224178, 22.238535> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018038, -0.773352, -0.633721,
		0.923779, -0.229586, 0.306467,
		-0.382500, -0.590946, 0.710265,
		14.977115, 22.046894, 22.451614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.705664, 21.923399, 22.048782>,  <15.244864, 22.460556, 21.954430>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.705664, 21.923399, 22.048782> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.344756, 21.787161, 22.154543>,  <15.128212, 21.705418, 22.217999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.344756, 21.787161, 22.154543>,  <15.705664, 21.923399, 22.048782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.344756, 21.787161, 22.154543> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091302, -0.750219, -0.654855,
		0.421399, -0.566715, 0.707995,
		-0.902268, -0.340596, 0.264399,
		15.074076, 21.684982, 22.233862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.825317, 21.213461, 22.108166>,  <15.705664, 21.923399, 22.048782>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.825317, 21.213461, 22.108166> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.439623, 21.295593, 22.041130>,  <15.208206, 21.344873, 22.000910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.439623, 21.295593, 22.041130>,  <15.825317, 21.213461, 22.108166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.439623, 21.295593, 22.041130> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097247, -0.862296, -0.496979,
		-0.246556, -0.462908, 0.851426,
		-0.964237, 0.205332, -0.167588,
		15.150352, 21.357193, 21.990854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.638858, 20.588902, 21.919432>,  <15.825317, 21.213461, 22.108166>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.638858, 20.588902, 21.919432> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.307509, 20.791645, 21.824020>,  <15.108701, 20.913292, 21.766773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.307509, 20.791645, 21.824020>,  <15.638858, 20.588902, 21.919432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.307509, 20.791645, 21.824020> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311018, -0.770291, -0.556704,
		-0.465907, -0.386970, 0.795729,
		-0.828371, 0.506858, -0.238529,
		15.058998, 20.943703, 21.752462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.069489, 20.181311, 22.073467>,  <15.638858, 20.588902, 21.919432>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.069489, 20.181311, 22.073467> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.919127, 20.435043, 21.803263>,  <14.828911, 20.587284, 21.641140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.919127, 20.435043, 21.803263>,  <15.069489, 20.181311, 22.073467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.919127, 20.435043, 21.803263> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304239, -0.773050, -0.556625,
		-0.875291, -0.003720, 0.483582,
		-0.375904, 0.634334, -0.675513,
		14.806356, 20.625343, 21.600609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.609593, 19.816240, 21.971977>,  <15.069489, 20.181311, 22.073467>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.609593, 19.816240, 21.971977> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.639138, 20.066496, 21.661335>,  <14.656865, 20.216650, 21.474949>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.639138, 20.066496, 21.661335>,  <14.609593, 19.816240, 21.971977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.639138, 20.066496, 21.661335> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089921, -0.771384, -0.629985,
		-0.993206, 0.116366, -0.000719,
		0.073863, 0.625640, -0.776607,
		14.661297, 20.254189, 21.428352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.121714, 19.678543, 21.552618>,  <14.609593, 19.816240, 21.971977>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.121714, 19.678543, 21.552618> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.383813, 19.873789, 21.322004>,  <14.541073, 19.990936, 21.183636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.383813, 19.873789, 21.322004>,  <14.121714, 19.678543, 21.552618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.383813, 19.873789, 21.322004> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040715, -0.739277, -0.672169,
		-0.754315, 0.463912, -0.464537,
		0.655249, 0.488114, -0.576536,
		14.580387, 20.020224, 21.149044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.689356, 19.771488, 20.897020>,  <14.121714, 19.678543, 21.552618>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.689356, 19.771488, 20.897020> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.079365, 19.829103, 20.829391>,  <14.313370, 19.863672, 20.788815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.079365, 19.829103, 20.829391>,  <13.689356, 19.771488, 20.897020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.079365, 19.829103, 20.829391> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041626, -0.629225, -0.776107,
		-0.218172, 0.763760, -0.607513,
		0.975022, 0.144036, -0.169071,
		14.371872, 19.872314, 20.778669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.806900, 19.854979, 20.140409>,  <13.689356, 19.771488, 20.897020>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.806900, 19.854979, 20.140409> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.169273, 19.760441, 20.280937>,  <14.386698, 19.703718, 20.365253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.169273, 19.760441, 20.280937>,  <13.806900, 19.854979, 20.140409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.169273, 19.760441, 20.280937> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142174, -0.611758, -0.778163,
		0.398836, 0.754913, -0.520611,
		0.905934, -0.236343, 0.351321,
		14.441053, 19.689539, 20.386333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.272245, 19.859478, 19.501268>,  <13.806900, 19.854979, 20.140409>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.272245, 19.859478, 19.501268> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.439710, 19.643806, 19.793571>,  <14.540188, 19.514404, 19.968954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.439710, 19.643806, 19.793571>,  <14.272245, 19.859478, 19.501268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.439710, 19.643806, 19.793571> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168987, -0.744368, -0.646034,
		0.892282, 0.393958, -0.220524,
		0.418661, -0.539179, 0.730759,
		14.565308, 19.482052, 20.012798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.804824, 19.517632, 19.183937>,  <14.272245, 19.859478, 19.501268>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.804824, 19.517632, 19.183937> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.735999, 19.304871, 19.515593>,  <14.694704, 19.177214, 19.714586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.735999, 19.304871, 19.515593>,  <14.804824, 19.517632, 19.183937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.735999, 19.304871, 19.515593> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015642, -0.843062, -0.537589,
		0.984962, -0.079529, 0.153379,
		-0.172062, -0.531904, 0.829140,
		14.684381, 19.145300, 19.764334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.600214, 19.532927, 19.288336>,  <14.804824, 19.517632, 19.183937>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.600214, 19.532927, 19.288336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.792542, 19.671467, 18.966129>,  <15.907939, 19.754591, 18.772806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.792542, 19.671467, 18.966129>,  <15.600214, 19.532927, 19.288336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.792542, 19.671467, 18.966129> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105942, 0.888999, 0.445486,
		0.870395, -0.299536, 0.390756,
		0.480821, 0.346351, -0.805514,
		15.936789, 19.775372, 18.724476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.272720, 19.681883, 19.465584>,  <15.600214, 19.532927, 19.288336>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.272720, 19.681883, 19.465584> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.239153, 19.882118, 19.120941>,  <16.219013, 20.002260, 18.914156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.239153, 19.882118, 19.120941>,  <16.272720, 19.681883, 19.465584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.239153, 19.882118, 19.120941> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429694, 0.798315, 0.421967,
		0.899066, -0.334817, -0.282094,
		-0.083918, 0.500591, -0.861607,
		16.213978, 20.032295, 18.862459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.935825, 19.965439, 19.303801>,  <16.272720, 19.681883, 19.465584>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.935825, 19.965439, 19.303801> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.656509, 20.184950, 19.119961>,  <16.488920, 20.316656, 19.009657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.656509, 20.184950, 19.119961>,  <16.935825, 19.965439, 19.303801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.656509, 20.184950, 19.119961> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387560, 0.829665, 0.401813,
		0.601820, 0.102460, -0.792032,
		-0.698291, 0.548779, -0.459600,
		16.447021, 20.349583, 18.982080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.332394, 20.486765, 18.946629>,  <16.935825, 19.965439, 19.303801>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.332394, 20.486765, 18.946629> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.974352, 20.664865, 18.955879>,  <16.759527, 20.771727, 18.961430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.974352, 20.664865, 18.955879>,  <17.332394, 20.486765, 18.946629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.974352, 20.664865, 18.955879> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415617, 0.814500, 0.404786,
		0.161394, 0.371939, -0.914119,
		-0.895106, 0.445253, 0.023129,
		16.705820, 20.798441, 18.962818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.333393, 21.138706, 18.644260>,  <17.332394, 20.486765, 18.946629>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.333393, 21.138706, 18.644260> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.003742, 21.173372, 18.868155>,  <16.805952, 21.194172, 19.002491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.003742, 21.173372, 18.868155>,  <17.333393, 21.138706, 18.644260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.003742, 21.173372, 18.868155> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304202, 0.901327, 0.308336,
		-0.477781, 0.424380, -0.769173,
		-0.824128, 0.086667, 0.559734,
		16.756504, 21.199371, 19.036076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.234175, 21.901257, 18.618221>,  <17.333393, 21.138706, 18.644260>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.234175, 21.901257, 18.618221> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.035139, 21.732948, 18.921631>,  <16.915718, 21.631964, 19.103676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.035139, 21.732948, 18.921631>,  <17.234175, 21.901257, 18.618221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.035139, 21.732948, 18.921631> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301779, 0.735862, 0.606166,
		-0.813224, 0.530529, -0.239178,
		-0.497590, -0.420770, 0.758523,
		16.885862, 21.606718, 19.149187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.926380, 22.522789, 18.900650>,  <17.234175, 21.901257, 18.618221>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.926380, 22.522789, 18.900650> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.916916, 22.213827, 19.154526>,  <16.911238, 22.028450, 19.306850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.916916, 22.213827, 19.154526>,  <16.926380, 22.522789, 18.900650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.916916, 22.213827, 19.154526> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258937, 0.608465, 0.750148,
		-0.965604, 0.182094, 0.185608,
		-0.023661, -0.772407, 0.634687,
		16.909817, 21.982105, 19.344933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.482727, 22.744183, 19.362623>,  <16.926380, 22.522789, 18.900650>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.482727, 22.744183, 19.362623> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.746675, 22.482513, 19.510475>,  <16.905045, 22.325512, 19.599186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.746675, 22.482513, 19.510475>,  <16.482727, 22.744183, 19.362623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.746675, 22.482513, 19.510475> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258058, 0.659324, 0.706186,
		-0.705673, -0.370607, 0.603885,
		0.659872, -0.654173, 0.369629,
		16.944637, 22.286261, 19.621365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.511681, 22.837053, 20.159273>,  <16.482727, 22.744183, 19.362623>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.511681, 22.837053, 20.159273> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.830044, 22.618711, 20.054525>,  <17.021061, 22.487705, 19.991676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.830044, 22.618711, 20.054525>,  <16.511681, 22.837053, 20.159273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.830044, 22.618711, 20.054525> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457107, 0.258193, 0.851111,
		-0.396972, -0.797105, 0.455012,
		0.795906, -0.545857, -0.261867,
		17.068815, 22.454954, 19.975965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.721779, 22.660204, 20.800825>,  <16.511681, 22.837053, 20.159273>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.721779, 22.660204, 20.800825> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.028095, 22.617821, 20.547104>,  <17.211885, 22.592392, 20.394871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.028095, 22.617821, 20.547104>,  <16.721779, 22.660204, 20.800825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.028095, 22.617821, 20.547104> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617371, 0.397278, 0.678987,
		0.180051, -0.911561, 0.369646,
		0.765790, -0.105957, -0.634302,
		17.257832, 22.586035, 20.356813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.185284, 22.378170, 21.141802>,  <16.721779, 22.660204, 20.800825>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.185284, 22.378170, 21.141802> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.398434, 22.544794, 20.847178>,  <17.526323, 22.644768, 20.670403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.398434, 22.544794, 20.847178>,  <17.185284, 22.378170, 21.141802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.398434, 22.544794, 20.847178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564747, 0.473144, 0.676162,
		0.630162, -0.776281, 0.016876,
		0.532876, 0.416561, -0.736560,
		17.558296, 22.669762, 20.626209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.893538, 22.366005, 21.381584>,  <17.185284, 22.378170, 21.141802>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.893538, 22.366005, 21.381584> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.886864, 22.652767, 21.102797>,  <17.882860, 22.824825, 20.935524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.886864, 22.652767, 21.102797>,  <17.893538, 22.366005, 21.381584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.886864, 22.652767, 21.102797> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583089, 0.573237, 0.575679,
		0.812237, -0.396791, -0.427585,
		-0.016683, 0.716907, -0.696969,
		17.881859, 22.867840, 20.893705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.599833, 22.597143, 21.347118>,  <17.893538, 22.366005, 21.381584>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.599833, 22.597143, 21.347118> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.330845, 22.861023, 21.212904>,  <18.169453, 23.019350, 21.132376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.330845, 22.861023, 21.212904>,  <18.599833, 22.597143, 21.347118>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.330845, 22.861023, 21.212904> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412163, 0.710340, 0.570560,
		0.614743, 0.245387, -0.749584,
		-0.672468, 0.659698, -0.335537,
		18.129105, 23.058933, 21.112244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.025635, 23.146887, 21.159573>,  <18.599833, 22.597143, 21.347118>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.025635, 23.146887, 21.159573> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.657396, 23.285320, 21.231939>,  <18.436453, 23.368382, 21.275360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.657396, 23.285320, 21.231939>,  <19.025635, 23.146887, 21.159573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.657396, 23.285320, 21.231939> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372338, 0.638147, 0.673894,
		0.117772, 0.687745, -0.716335,
		-0.920594, 0.346085, 0.180918,
		18.381218, 23.389145, 21.286215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.531225, 23.293068, 20.670252>,  <19.025635, 23.146887, 21.159573>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.531225, 23.293068, 20.670252> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.891424, 23.442293, 20.580872>,  <20.107544, 23.531828, 20.527243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.891424, 23.442293, 20.580872>,  <19.531225, 23.293068, 20.670252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.891424, 23.442293, 20.580872> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025202, -0.557744, -0.829630,
		-0.434133, 0.741447, -0.511648,
		0.900496, 0.373064, -0.223450,
		20.161573, 23.554213, 20.513836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.515133, 23.553923, 19.915089>,  <19.531225, 23.293068, 20.670252>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.515133, 23.553923, 19.915089> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.891582, 23.476765, 20.026140>,  <20.117453, 23.430470, 20.092772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.891582, 23.476765, 20.026140>,  <19.515133, 23.553923, 19.915089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.891582, 23.476765, 20.026140> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103422, -0.617576, -0.779682,
		0.321853, 0.762490, -0.561266,
		0.941124, -0.192896, 0.277627,
		20.173920, 23.418896, 20.109428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.957699, 23.560398, 19.245766>,  <19.515133, 23.553923, 19.915089>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.957699, 23.560398, 19.245766> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.140484, 23.340254, 19.525278>,  <20.250154, 23.208168, 19.692986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.140484, 23.340254, 19.525278>,  <19.957699, 23.560398, 19.245766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.140484, 23.340254, 19.525278> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097641, -0.749814, -0.654405,
		0.884111, 0.367267, -0.288898,
		0.456961, -0.550358, 0.698779,
		20.277573, 23.175146, 19.734911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.517567, 23.233660, 18.885822>,  <19.957699, 23.560398, 19.245766>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.517567, 23.233660, 18.885822> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.457579, 23.021814, 19.219772>,  <20.421585, 22.894707, 19.420143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.457579, 23.021814, 19.219772>,  <20.517567, 23.233660, 18.885822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.457579, 23.021814, 19.219772> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192156, -0.843939, -0.500843,
		0.969837, 0.085315, 0.228334,
		-0.149971, -0.529612, 0.834877,
		20.412588, 22.862930, 19.470236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.131290, 22.919594, 18.974068>,  <20.517567, 23.233660, 18.885822>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.131290, 22.919594, 18.974068> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.878361, 22.701101, 19.193811>,  <20.726603, 22.570005, 19.325657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.878361, 22.701101, 19.193811>,  <21.131290, 22.919594, 18.974068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.878361, 22.701101, 19.193811> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366565, -0.835675, -0.408996,
		0.682493, -0.057242, 0.728647,
		-0.632324, -0.546233, 0.549359,
		20.688663, 22.537231, 19.358620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.434553, 22.251842, 19.384706>,  <21.131290, 22.919594, 18.974068>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.434553, 22.251842, 19.384706> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.048193, 22.148920, 19.373188>,  <20.816378, 22.087166, 19.366278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.048193, 22.148920, 19.373188>,  <21.434553, 22.251842, 19.384706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.048193, 22.148920, 19.373188> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250718, -0.901762, -0.352088,
		0.064629, -0.347301, 0.935524,
		-0.965900, -0.257308, -0.028795,
		20.758423, 22.071728, 19.364550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.371426, 21.541079, 19.730129>,  <21.434553, 22.251842, 19.384706>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.371426, 21.541079, 19.730129> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.082039, 21.607075, 19.461987>,  <20.908407, 21.646673, 19.301102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.082039, 21.607075, 19.461987>,  <21.371426, 21.541079, 19.730129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.082039, 21.607075, 19.461987> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082811, -0.943270, -0.321534,
		-0.685375, -0.288131, 0.668761,
		-0.723466, 0.164991, -0.670354,
		20.865000, 21.656572, 19.260880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.949152, 20.914631, 19.780272>,  <21.371426, 21.541079, 19.730129>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.949152, 20.914631, 19.780272> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.847424, 21.084686, 19.432806>,  <20.786386, 21.186720, 19.224327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.847424, 21.084686, 19.432806>,  <20.949152, 20.914631, 19.780272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.847424, 21.084686, 19.432806> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046494, -0.891785, -0.450063,
		-0.966002, -0.154847, 0.207032,
		-0.254319, 0.425136, -0.868666,
		20.771128, 21.212227, 19.172207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.419609, 20.494122, 19.421446>,  <20.949152, 20.914631, 19.780272>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.419609, 20.494122, 19.421446> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.569483, 20.720974, 19.128059>,  <20.659407, 20.857086, 18.952028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.569483, 20.720974, 19.128059>,  <20.419609, 20.494122, 19.421446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.569483, 20.720974, 19.128059> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003763, -0.792020, -0.610483,
		-0.927144, 0.225980, -0.298893,
		0.374687, 0.567130, -0.733466,
		20.681889, 20.891113, 18.908020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.862862, 20.503782, 19.003967>,  <20.419609, 20.494122, 19.421446>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.862862, 20.503782, 19.003967> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.223063, 20.558998, 18.839024>,  <20.439182, 20.592127, 18.740057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.223063, 20.558998, 18.839024>,  <19.862862, 20.503782, 19.003967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.223063, 20.558998, 18.839024> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087119, -0.871784, -0.482082,
		-0.426036, 0.470040, -0.773017,
		0.900502, 0.138040, -0.412361,
		20.493214, 20.600410, 18.715315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.745579, 20.588261, 18.261467>,  <19.862862, 20.503782, 19.003967>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.745579, 20.588261, 18.261467> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.134300, 20.494158, 18.267847>,  <20.367533, 20.437696, 18.271675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.134300, 20.494158, 18.267847>,  <19.745579, 20.588261, 18.261467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.134300, 20.494158, 18.267847> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205777, -0.879164, -0.429798,
		0.115138, 0.414396, -0.902784,
		0.971802, -0.235258, 0.015951,
		20.425840, 20.423580, 18.272633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.896809, 20.517374, 17.585602>,  <19.745579, 20.588261, 18.261467>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.896809, 20.517374, 17.585602> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.151770, 20.316177, 17.819084>,  <20.304747, 20.195459, 17.959173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.151770, 20.316177, 17.819084>,  <19.896809, 20.517374, 17.585602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.151770, 20.316177, 17.819084> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208741, -0.841934, -0.497569,
		0.741716, 0.195310, -0.641648,
		0.637405, -0.502993, 0.583707,
		20.342991, 20.165279, 17.994196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.081879, 19.923349, 17.189981>,  <19.896809, 20.517374, 17.585602>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.081879, 19.923349, 17.189981> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.208384, 19.800661, 17.549068>,  <20.284286, 19.727047, 17.764521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.208384, 19.800661, 17.549068>,  <20.081879, 19.923349, 17.189981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.208384, 19.800661, 17.549068> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024059, -0.948579, -0.315624,
		0.948367, 0.078221, -0.307379,
		0.316262, -0.306723, 0.897719,
		20.303263, 19.708645, 17.818384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.556831, 19.423397, 17.086552>,  <20.081879, 19.923349, 17.189981>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.556831, 19.423397, 17.086552> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.418447, 19.341885, 17.452892>,  <20.335417, 19.292976, 17.672697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.418447, 19.341885, 17.452892>,  <20.556831, 19.423397, 17.086552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.418447, 19.341885, 17.452892> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055631, -0.969956, -0.236836,
		0.936598, -0.132885, 0.324231,
		-0.345961, -0.203783, 0.915851,
		20.314659, 19.280750, 17.727648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<14.555795, 17.207613, 6.680785> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.303660, 17.272017, 6.984562>,  <14.152380, 17.310659, 7.166828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.303660, 17.272017, 6.984562>,  <14.555795, 17.207613, 6.680785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.303660, 17.272017, 6.984562> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696805, 0.313940, -0.644907,
		-0.342256, -0.935691, -0.085694,
		-0.630336, 0.161012, 0.759441,
		14.114559, 17.320320, 7.212394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.854080, 16.894453, 6.464955>,  <14.555795, 17.207613, 6.680785>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.854080, 16.894453, 6.464955> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.857258, 17.200762, 6.722180>,  <13.859164, 17.384548, 6.876514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.857258, 17.200762, 6.722180>,  <13.854080, 16.894453, 6.464955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.857258, 17.200762, 6.722180> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750969, 0.429201, -0.501828,
		-0.660290, -0.478933, 0.578482,
		0.007943, 0.765774, 0.643061,
		13.859641, 17.430494, 6.915098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.064284, 16.143307, 6.581963>,  <13.854080, 16.894453, 6.464955>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.064284, 16.143307, 6.581963> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.844812, 16.348644, 6.845910>,  <13.713129, 16.471848, 7.004279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.844812, 16.348644, 6.845910>,  <14.064284, 16.143307, 6.581963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.844812, 16.348644, 6.845910> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678516, 0.187696, -0.710202,
		-0.488434, -0.837404, 0.245329,
		-0.548679, 0.513346, 0.659869,
		13.680208, 16.502647, 7.043871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.404578, 15.852991, 6.695843>,  <14.064284, 16.143307, 6.581963>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.404578, 15.852991, 6.695843> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.374053, 16.243326, 6.777736>,  <13.355738, 16.477528, 6.826872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<13.374053, 16.243326, 6.777736>,  <13.404578, 15.852991, 6.695843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.374053, 16.243326, 6.777736> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753529, 0.078024, -0.652768,
		-0.652970, -0.204087, 0.729369,
		-0.076313, 0.975839, 0.204733,
		13.351159, 16.536077, 6.839156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.734473, 16.011234, 7.127107>,  <13.404578, 15.852991, 6.695843>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.734473, 16.011234, 7.127107> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.859258, 16.276325, 6.854791>,  <12.934128, 16.435379, 6.691401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.859258, 16.276325, 6.854791>,  <12.734473, 16.011234, 7.127107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.859258, 16.276325, 6.854791> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913011, 0.010869, -0.407791,
		-0.262854, 0.748783, 0.608466,
		0.311961, 0.662726, -0.680790,
		12.952846, 16.475143, 6.650554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.409917, 16.636152, 7.253978>,  <12.734473, 16.011234, 7.127107>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.409917, 16.636152, 7.253978> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.498850, 16.557167, 6.872072>,  <12.552210, 16.509775, 6.642928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.498850, 16.557167, 6.872072>,  <12.409917, 16.636152, 7.253978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.498850, 16.557167, 6.872072> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960649, -0.211601, -0.179939,
		-0.166498, 0.957201, -0.236739,
		0.222332, -0.197464, -0.954765,
		12.565550, 16.497929, 6.585642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.917285, 17.026829, 6.967716>,  <12.409917, 16.636152, 7.253978>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.917285, 17.026829, 6.967716> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.077213, 16.718821, 6.768834>,  <12.173170, 16.534016, 6.649505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.077213, 16.718821, 6.768834>,  <11.917285, 17.026829, 6.967716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.077213, 16.718821, 6.768834> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912107, -0.280630, -0.298846,
		0.090587, 0.572988, -0.814542,
		0.399821, -0.770021, -0.497205,
		12.197160, 16.487814, 6.619673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.212368, 17.181286, 7.305139>,  <11.917285, 17.026829, 6.967716>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.212368, 17.181286, 7.305139> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.995918, 16.860313, 7.204507>,  <10.866049, 16.667730, 7.144128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.995918, 16.860313, 7.204507>,  <11.212368, 17.181286, 7.305139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.995918, 16.860313, 7.204507> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214773, -0.157370, 0.963902,
		-0.813054, 0.575623, -0.087183,
		-0.541124, -0.802429, -0.251579,
		10.833581, 16.619585, 7.129033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.025940, 17.847548, 7.694198>,  <11.212368, 17.181286, 7.305139>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.025940, 17.847548, 7.694198> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.423627, 17.878031, 7.663933>,  <11.662239, 17.896320, 7.645775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.423627, 17.878031, 7.663933>,  <11.025940, 17.847548, 7.694198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.423627, 17.878031, 7.663933> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095145, 0.951824, -0.291512,
		0.049799, 0.297024, 0.953570,
		0.994217, 0.076210, -0.075661,
		11.721892, 17.900894, 7.641235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.425634, 18.301031, 7.628919>,  <11.025940, 17.847548, 7.694198>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.425634, 18.301031, 7.628919> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.302418, 18.667528, 7.731373>,  <10.228488, 18.887426, 7.792846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.302418, 18.667528, 7.731373>,  <10.425634, 18.301031, 7.628919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.302418, 18.667528, 7.731373> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692235, -0.400546, 0.600311,
		0.652627, 0.007613, 0.757641,
		-0.308041, 0.916245, 0.256137,
		10.210006, 18.942402, 7.808214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.392274, 18.348293, 8.403763>,  <10.425634, 18.301031, 7.628919>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.392274, 18.348293, 8.403763> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.153570, 18.614697, 8.224739>,  <10.010347, 18.774538, 8.117325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.153570, 18.614697, 8.224739>,  <10.392274, 18.348293, 8.403763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.153570, 18.614697, 8.224739> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682052, -0.127187, 0.720159,
		0.422709, 0.735020, 0.530153,
		-0.596760, 0.666010, -0.447559,
		9.974543, 18.814499, 8.090471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.180858, 18.788853, 8.909647>,  <10.392274, 18.348293, 8.403763>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.180858, 18.788853, 8.909647> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.883602, 18.783728, 8.642041>,  <9.705249, 18.780653, 8.481478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.883602, 18.783728, 8.642041>,  <10.180858, 18.788853, 8.909647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.883602, 18.783728, 8.642041> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639749, -0.279449, 0.715981,
		-0.196129, 0.960075, 0.199472,
		-0.743138, -0.012813, -0.669016,
		9.660661, 18.779884, 8.441337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.646407, 19.179090, 9.217430>,  <10.180858, 18.788853, 8.909647>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.646407, 19.179090, 9.217430> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.499386, 18.910597, 8.959950>,  <9.411173, 18.749500, 8.805463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.499386, 18.910597, 8.959950>,  <9.646407, 19.179090, 9.217430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.499386, 18.910597, 8.959950> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615353, -0.343439, 0.709500,
		-0.697312, 0.656882, -0.286814,
		-0.367554, -0.671235, -0.643698,
		9.389119, 18.709227, 8.766841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.970051, 19.094261, 9.430309>,  <9.646407, 19.179090, 9.217430>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.970051, 19.094261, 9.430309> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.015862, 18.790752, 9.173825>,  <9.043349, 18.608648, 9.019935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.015862, 18.790752, 9.173825>,  <8.970051, 19.094261, 9.430309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.015862, 18.790752, 9.173825> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603092, -0.566010, 0.562061,
		-0.789407, 0.322337, -0.522432,
		0.114529, -0.758769, -0.641211,
		9.050221, 18.563122, 8.981462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.321498, 18.875767, 9.332057>,  <8.970051, 19.094261, 9.430309>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.321498, 18.875767, 9.332057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.540888, 18.556263, 9.233134>,  <8.672522, 18.364561, 9.173780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.540888, 18.556263, 9.233134>,  <8.321498, 18.875767, 9.332057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.540888, 18.556263, 9.233134> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575410, -0.575144, 0.581474,
		-0.606696, -0.176619, -0.775065,
		0.548473, -0.798758, -0.247309,
		8.705430, 18.316635, 9.158942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.831520, 18.360401, 9.258089>,  <8.321498, 18.875767, 9.332057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.831520, 18.360401, 9.258089> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.172317, 18.158394, 9.313321>,  <8.376795, 18.037189, 9.346460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.172317, 18.158394, 9.313321>,  <7.831520, 18.360401, 9.258089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.172317, 18.158394, 9.313321> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481550, -0.652389, 0.585234,
		-0.205471, -0.565108, -0.799021,
		0.851993, -0.505017, 0.138080,
		8.427915, 18.006889, 9.354745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.644882, 17.653225, 9.254738>,  <7.831520, 18.360401, 9.258089>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.644882, 17.653225, 9.254738> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.986514, 17.694086, 9.458742>,  <8.191493, 17.718603, 9.581144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.986514, 17.694086, 9.458742>,  <7.644882, 17.653225, 9.254738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.986514, 17.694086, 9.458742> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402859, -0.490318, 0.772847,
		0.329016, -0.865536, -0.377619,
		0.854081, 0.102152, 0.510011,
		8.242739, 17.724731, 9.611746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.704065, 17.007160, 9.704260>,  <7.644882, 17.653225, 9.254738>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.704065, 17.007160, 9.704260> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.967492, 17.252851, 9.878163>,  <8.125548, 17.400267, 9.982505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.967492, 17.252851, 9.878163>,  <7.704065, 17.007160, 9.704260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.967492, 17.252851, 9.878163> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343741, -0.268399, 0.899891,
		0.669425, -0.742083, 0.034376,
		0.658568, 0.614227, 0.434758,
		8.165063, 17.437119, 10.008591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.148469, 16.603699, 10.195724>,  <7.704065, 17.007160, 9.704260>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.148469, 16.603699, 10.195724> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.172808, 16.980080, 10.328933>,  <8.187410, 17.205908, 10.408858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.172808, 16.980080, 10.328933>,  <8.148469, 16.603699, 10.195724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.172808, 16.980080, 10.328933> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081591, -0.327837, 0.941204,
		0.994807, -0.084440, 0.056826,
		0.060846, 0.940953, 0.333024,
		8.191061, 17.262365, 10.428840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.394426, 16.488567, 10.856833>,  <8.148469, 16.603699, 10.195724>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.394426, 16.488567, 10.856833> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.270933, 16.868830, 10.844575>,  <8.196837, 17.096987, 10.837220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.270933, 16.868830, 10.844575>,  <8.394426, 16.488567, 10.856833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.270933, 16.868830, 10.844575> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288846, -0.063010, 0.955299,
		0.906229, 0.303785, 0.294046,
		-0.308733, 0.950655, -0.030645,
		8.178313, 17.154026, 10.835382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.828438, 16.810600, 11.303860>,  <8.394426, 16.488567, 10.856833>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.828438, 16.810600, 11.303860> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.482418, 17.010769, 11.289619>,  <8.274806, 17.130871, 11.281075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.482418, 17.010769, 11.289619>,  <8.828438, 16.810600, 11.303860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.482418, 17.010769, 11.289619> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079218, -0.066179, 0.994658,
		0.495394, 0.863248, 0.096890,
		-0.865049, 0.500423, -0.035600,
		8.222903, 17.160896, 11.278939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.897559, 17.065998, 12.009378>,  <8.828438, 16.810600, 11.303860>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.897559, 17.065998, 12.009378> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.526021, 17.150999, 11.887993>,  <8.303098, 17.202000, 11.815162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.526021, 17.150999, 11.887993>,  <8.897559, 17.065998, 12.009378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.526021, 17.150999, 11.887993> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301363, 0.043014, 0.952539,
		0.215469, 0.976213, 0.024086,
		-0.928845, 0.212501, -0.303463,
		8.247368, 17.214750, 11.796954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.760421, 17.704489, 12.332404>,  <8.897559, 17.065998, 12.009378>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.760421, 17.704489, 12.332404> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.436606, 17.480627, 12.261477>,  <8.242318, 17.346310, 12.218922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.436606, 17.480627, 12.261477>,  <8.760421, 17.704489, 12.332404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.436606, 17.480627, 12.261477> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231570, 0.026862, 0.972447,
		-0.539470, 0.828292, -0.151344,
		-0.809536, -0.559653, -0.177316,
		8.193746, 17.312731, 12.208282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.314308, 17.849550, 12.858815>,  <8.760421, 17.704489, 12.332404>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.314308, 17.849550, 12.858815> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.106231, 17.553976, 12.687528>,  <7.981384, 17.376631, 12.584755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.106231, 17.553976, 12.687528>,  <8.314308, 17.849550, 12.858815>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.106231, 17.553976, 12.687528> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393023, -0.238030, 0.888186,
		-0.758243, 0.630328, -0.166598,
		-0.520193, -0.738937, -0.428219,
		7.950173, 17.332294, 12.559062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.633276, 17.910435, 13.079455>,  <8.314308, 17.849550, 12.858815>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.633276, 17.910435, 13.079455> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.666538, 17.532156, 12.953764>,  <7.686495, 17.305189, 12.878349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.666538, 17.532156, 12.953764>,  <7.633276, 17.910435, 13.079455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.666538, 17.532156, 12.953764> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521711, -0.309969, 0.794819,
		-0.849060, 0.097843, -0.519157,
		0.083155, -0.945699, -0.314228,
		7.691484, 17.248446, 12.859496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.846560, 17.561172, 13.099587>,  <7.633276, 17.910435, 13.079455>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.846560, 17.561172, 13.099587> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.152988, 17.305006, 13.121506>,  <7.336845, 17.151306, 13.134657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.152988, 17.305006, 13.121506>,  <6.846560, 17.561172, 13.099587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.152988, 17.305006, 13.121506> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454998, -0.480099, 0.749988,
		-0.453996, -0.599477, -0.659178,
		0.766071, -0.640416, 0.054798,
		7.382809, 17.112881, 13.137945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.502778, 16.946890, 13.169793>,  <6.846560, 17.561172, 13.099587>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.502778, 16.946890, 13.169793> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.879013, 16.863573, 13.277057>,  <7.104754, 16.813583, 13.341414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.879013, 16.863573, 13.277057>,  <6.502778, 16.946890, 13.169793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.879013, 16.863573, 13.277057> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333875, -0.423565, 0.842093,
		-0.061818, -0.881594, -0.467944,
		0.940588, -0.208292, 0.268158,
		7.161190, 16.801086, 13.357504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.566542, 16.198988, 13.353894>,  <6.502778, 16.946890, 13.169793>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.566542, 16.198988, 13.353894> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.870900, 16.387112, 13.532711>,  <7.053515, 16.499987, 13.640001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.870900, 16.387112, 13.532711>,  <6.566542, 16.198988, 13.353894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.870900, 16.387112, 13.532711> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125488, -0.569286, 0.812506,
		0.636625, -0.674330, -0.374149,
		0.760895, 0.470310, 0.447042,
		7.099169, 16.528204, 13.666823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.042639, 15.643265, 13.664865>,  <6.566542, 16.198988, 13.353894>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.042639, 15.643265, 13.664865> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.105930, 15.996630, 13.841294>,  <7.143905, 16.208649, 13.947152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.105930, 15.996630, 13.841294>,  <7.042639, 15.643265, 13.664865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.105930, 15.996630, 13.841294> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098208, -0.458565, 0.883217,
		0.982506, -0.096434, -0.159317,
		0.158229, 0.883413, 0.441072,
		7.153399, 16.261654, 13.973616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.646437, 15.473988, 14.121298>,  <7.042639, 15.643265, 13.664865>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.646437, 15.473988, 14.121298> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.470640, 15.814076, 14.237206>,  <7.365161, 16.018129, 14.306750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.470640, 15.814076, 14.237206>,  <7.646437, 15.473988, 14.121298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.470640, 15.814076, 14.237206> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121626, -0.375953, 0.918622,
		0.889973, 0.368484, 0.268638,
		-0.439493, 0.850223, 0.289770,
		7.338792, 16.069143, 14.324137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.876501, 15.628293, 14.813976>,  <7.646437, 15.473988, 14.121298>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.876501, 15.628293, 14.813976> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.525126, 15.819369, 14.808970>,  <7.314300, 15.934015, 14.805967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.525126, 15.819369, 14.808970>,  <7.876501, 15.628293, 14.813976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.525126, 15.819369, 14.808970> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279487, -0.492362, 0.824298,
		0.387598, 0.727593, 0.566018,
		-0.878439, 0.477691, -0.012515,
		7.261594, 15.962677, 14.805216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.960247, 15.857827, 15.520689>,  <7.876501, 15.628293, 14.813976>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.960247, 15.857827, 15.520689> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.110895, 15.523243, 15.679932>,  <8.201284, 15.322493, 15.775477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.110895, 15.523243, 15.679932>,  <7.960247, 15.857827, 15.520689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.110895, 15.523243, 15.679932> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909114, 0.251180, -0.332295,
		0.177955, 0.487073, 0.855039,
		0.376620, -0.836462, 0.398107,
		8.223882, 15.272305, 15.799364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.491597, 16.000580, 15.971538>,  <7.960247, 15.857827, 15.520689>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.491597, 16.000580, 15.971538> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.582659, 15.621049, 15.883993>,  <8.637296, 15.393331, 15.831467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.582659, 15.621049, 15.883993>,  <8.491597, 16.000580, 15.971538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.582659, 15.621049, 15.883993> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886813, 0.294855, -0.355842,
		0.402165, -0.113081, 0.908557,
		0.227654, -0.948827, -0.218862,
		8.650955, 15.336401, 15.818335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.200200, 15.916956, 16.131243>,  <8.491597, 16.000580, 15.971538>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.200200, 15.916956, 16.131243> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.141142, 15.630883, 15.857976>,  <9.105707, 15.459240, 15.694016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.141142, 15.630883, 15.857976>,  <9.200200, 15.916956, 16.131243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.141142, 15.630883, 15.857976> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924372, 0.145884, -0.352495,
		0.351761, -0.683545, 0.639555,
		-0.147646, -0.715182, -0.683166,
		9.096848, 15.416328, 15.653026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.821733, 15.499426, 16.121769>,  <9.200200, 15.916956, 16.131243>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.821733, 15.499426, 16.121769> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.652010, 15.381054, 15.779449>,  <9.550176, 15.310031, 15.574059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.652010, 15.381054, 15.779449>,  <9.821733, 15.499426, 16.121769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.652010, 15.381054, 15.779449> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887407, 0.052179, -0.458025,
		0.180198, -0.953784, 0.240469,
		-0.424309, -0.295929, -0.855797,
		9.524717, 15.292275, 15.522711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.216294, 14.940175, 15.860751>,  <9.821733, 15.499426, 16.121769>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.216294, 14.940175, 15.860751> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.022667, 15.089634, 15.544254>,  <9.906490, 15.179309, 15.354356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.022667, 15.089634, 15.544254>,  <10.216294, 14.940175, 15.860751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.022667, 15.089634, 15.544254> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873574, 0.154225, -0.461609,
		-0.050449, -0.914660, -0.401064,
		-0.484069, 0.373647, -0.791243,
		9.877446, 15.201728, 15.306882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.660541, 14.893713, 15.286174>,  <10.216294, 14.940175, 15.860751>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.660541, 14.893713, 15.286174> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.373913, 15.139816, 15.154727>,  <10.201937, 15.287478, 15.075859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.373913, 15.139816, 15.154727>,  <10.660541, 14.893713, 15.286174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.373913, 15.139816, 15.154727> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645540, 0.406507, -0.646552,
		-0.264211, -0.675434, -0.688464,
		-0.716568, 0.615257, -0.328616,
		10.158942, 15.324393, 15.056142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.779911, 14.888195, 14.483459>,  <10.660541, 14.893713, 15.286174>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.779911, 14.888195, 14.483459> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.571949, 15.221274, 14.559683>,  <10.447172, 15.421122, 14.605417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.571949, 15.221274, 14.559683>,  <10.779911, 14.888195, 14.483459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.571949, 15.221274, 14.559683> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511222, 0.482024, -0.711551,
		-0.684362, -0.272520, -0.676300,
		-0.519905, 0.832698, 0.190561,
		10.415977, 15.471084, 14.616851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.692785, 15.206005, 13.862770>,  <10.779911, 14.888195, 14.483459>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.692785, 15.206005, 13.862770> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.617767, 15.512851, 14.108164>,  <10.572757, 15.696959, 14.255400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.617767, 15.512851, 14.108164>,  <10.692785, 15.206005, 13.862770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.617767, 15.512851, 14.108164> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657961, 0.561851, -0.501410,
		-0.729325, 0.309612, -0.610102,
		-0.187544, 0.767114, 0.613485,
		10.561504, 15.742985, 14.292210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.389633, 15.877254, 13.472245>,  <10.692785, 15.206005, 13.862770>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.389633, 15.877254, 13.472245> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.583388, 15.982482, 13.805991>,  <10.699641, 16.045618, 14.006239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.583388, 15.982482, 13.805991>,  <10.389633, 15.877254, 13.472245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.583388, 15.982482, 13.805991> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530868, 0.669678, -0.519337,
		-0.695376, 0.694497, 0.184729,
		0.484388, 0.263068, 0.834364,
		10.728704, 16.061403, 14.056300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.245860, 16.583294, 13.649151>,  <10.389633, 15.877254, 13.472245>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.245860, 16.583294, 13.649151> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.598482, 16.494530, 13.815819>,  <10.810056, 16.441271, 13.915820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.598482, 16.494530, 13.815819>,  <10.245860, 16.583294, 13.649151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.598482, 16.494530, 13.815819> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418145, 0.776734, -0.470999,
		-0.219122, 0.589441, 0.777525,
		0.881556, -0.221912, 0.416671,
		10.862949, 16.427956, 13.940820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.442713, 17.264778, 13.940250>,  <10.245860, 16.583294, 13.649151>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.442713, 17.264778, 13.940250> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.784388, 17.056793, 13.939888>,  <10.989392, 16.932001, 13.939671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<10.784388, 17.056793, 13.939888>,  <10.442713, 17.264778, 13.940250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.784388, 17.056793, 13.939888> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471175, 0.774775, -0.421565,
		0.219901, 0.359668, 0.906798,
		0.854188, -0.519963, -0.000907,
		11.040644, 16.900805, 13.939616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.899158, 17.871363, 14.060539>,  <10.442713, 17.264778, 13.940250>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.899158, 17.871363, 14.060539> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.128921, 17.565197, 13.944474>,  <11.266779, 17.381496, 13.874835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.128921, 17.565197, 13.944474>,  <10.899158, 17.871363, 14.060539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.128921, 17.565197, 13.944474> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539261, 0.620523, -0.569340,
		0.615835, 0.170560, 0.769192,
		0.574409, -0.765415, -0.290163,
		11.301243, 17.335573, 13.857425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.625299, 18.158264, 14.034569>,  <10.899158, 17.871363, 14.060539>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.625299, 18.158264, 14.034569> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.633559, 17.824171, 13.814764>,  <11.638515, 17.623716, 13.682881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.633559, 17.824171, 13.814764>,  <11.625299, 18.158264, 14.034569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.633559, 17.824171, 13.814764> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685302, 0.412022, -0.600499,
		0.727966, -0.364180, 0.580894,
		0.020652, -0.835231, -0.549511,
		11.639754, 17.573603, 13.649911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.301645, 17.993572, 13.902492>,  <11.625299, 18.158264, 14.034569>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.301645, 17.993572, 13.902492> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.107656, 17.814617, 13.601920>,  <11.991263, 17.707243, 13.421577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.107656, 17.814617, 13.601920>,  <12.301645, 17.993572, 13.902492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.107656, 17.814617, 13.601920> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624101, 0.424850, -0.655744,
		0.612618, -0.786984, 0.073177,
		-0.484971, -0.447391, -0.751428,
		11.962165, 17.680401, 13.376492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.762538, 18.208464, 13.290628>,  <12.301645, 17.993572, 13.902492>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.762538, 18.208464, 13.290628> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.434367, 18.052744, 13.123131>,  <12.237465, 17.959312, 13.022632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.434367, 18.052744, 13.123131>,  <12.762538, 18.208464, 13.290628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.434367, 18.052744, 13.123131> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280798, 0.363631, -0.888214,
		0.498051, -0.846296, -0.189018,
		-0.820425, -0.389300, -0.418745,
		12.188239, 17.935955, 12.997507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.969481, 17.938385, 12.704912>,  <12.762538, 18.208464, 13.290628>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.969481, 17.938385, 12.704912> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.587086, 18.013935, 12.615097>,  <12.357649, 18.059265, 12.561208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.587086, 18.013935, 12.615097>,  <12.969481, 17.938385, 12.704912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.587086, 18.013935, 12.615097> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284911, 0.414678, -0.864215,
		-0.070120, -0.890151, -0.450239,
		-0.955986, 0.188876, -0.224537,
		12.300290, 18.070599, 12.547736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.928671, 17.748730, 11.992684>,  <12.969481, 17.938385, 12.704912>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.928671, 17.748730, 11.992684> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.596126, 17.961803, 12.056036>,  <12.396598, 18.089647, 12.094047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.596126, 17.961803, 12.056036>,  <12.928671, 17.748730, 11.992684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.596126, 17.961803, 12.056036> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168612, 0.513338, -0.841460,
		-0.529532, -0.672854, -0.516587,
		-0.831364, 0.532683, 0.158378,
		12.346717, 18.121609, 12.103549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.611822, 17.837179, 11.337445>,  <12.928671, 17.748730, 11.992684>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.611822, 17.837179, 11.337445> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.492868, 18.162695, 11.537169>,  <12.421496, 18.358004, 11.657004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.492868, 18.162695, 11.537169>,  <12.611822, 17.837179, 11.337445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.492868, 18.162695, 11.537169> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096947, 0.546006, -0.832153,
		-0.949823, -0.199063, -0.241268,
		-0.297384, 0.813789, 0.499311,
		12.403653, 18.406832, 11.686962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.129944, 18.174961, 10.865002>,  <12.611822, 17.837179, 11.337445>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.129944, 18.174961, 10.865002> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.218467, 18.460548, 11.130715>,  <12.271581, 18.631901, 11.290144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<12.218467, 18.460548, 11.130715>,  <12.129944, 18.174961, 10.865002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.218467, 18.460548, 11.130715> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011890, 0.683099, -0.730229,
		-0.975132, 0.153706, 0.159664,
		0.221307, 0.713968, 0.664284,
		12.284859, 18.674738, 11.330001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.621101, 18.788708, 10.762140>,  <12.129944, 18.174961, 10.865002>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.621101, 18.788708, 10.762140> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.939625, 18.935104, 10.954782>,  <12.130739, 19.022942, 11.070368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.939625, 18.935104, 10.954782>,  <11.621101, 18.788708, 10.762140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.939625, 18.935104, 10.954782> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027091, 0.773807, -0.632841,
		-0.604284, 0.516984, 0.606274,
		0.796309, 0.365991, 0.481605,
		12.178517, 19.044901, 11.099264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.457914, 19.462248, 10.876495>,  <11.621101, 18.788708, 10.762140>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.457914, 19.462248, 10.876495> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.854420, 19.415140, 10.852733>,  <12.092322, 19.386875, 10.838475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<11.854420, 19.415140, 10.852733>,  <11.457914, 19.462248, 10.876495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.854420, 19.415140, 10.852733> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050337, 0.754038, -0.654899,
		0.121921, 0.646187, 0.753378,
		0.991263, -0.117769, -0.059406,
		12.151798, 19.379810, 10.834910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<22.033310, 21.934246, 22.396595> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.727518, 21.782461, 22.605049>,  <21.544043, 21.691391, 22.730122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.727518, 21.782461, 22.605049>,  <22.033310, 21.934246, 22.396595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.727518, 21.782461, 22.605049> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141578, 0.887493, 0.438534,
		-0.628911, 0.261468, -0.732192,
		-0.764478, -0.379461, 0.521136,
		21.498175, 21.668623, 22.761391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.587662, 22.539045, 22.497047>,  <22.033310, 21.934246, 22.396595>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.587662, 22.539045, 22.497047> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.435770, 22.292435, 22.772932>,  <21.344635, 22.144468, 22.938463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.435770, 22.292435, 22.772932>,  <21.587662, 22.539045, 22.497047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.435770, 22.292435, 22.772932> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084627, 0.719279, 0.689548,
		-0.921219, 0.320209, -0.220956,
		-0.379728, -0.616526, 0.689712,
		21.321852, 22.107477, 22.979845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.935675, 22.938190, 22.861977>,  <21.587662, 22.539045, 22.497047>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.935675, 22.938190, 22.861977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.072632, 22.638704, 23.089025>,  <21.154806, 22.459013, 23.225254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.072632, 22.638704, 23.089025>,  <20.935675, 22.938190, 22.861977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.072632, 22.638704, 23.089025> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038115, 0.614708, 0.787833,
		-0.938783, -0.248115, 0.239010,
		0.342395, -0.748714, 0.567620,
		21.175350, 22.414089, 23.259312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.459196, 22.955267, 23.437012>,  <20.935675, 22.938190, 22.861977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.459196, 22.955267, 23.437012> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.800474, 22.773575, 23.539566>,  <21.005241, 22.664558, 23.601099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.800474, 22.773575, 23.539566>,  <20.459196, 22.955267, 23.437012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.800474, 22.773575, 23.539566> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157975, 0.693489, 0.702935,
		-0.497095, -0.559238, 0.663438,
		0.853195, -0.454232, 0.256384,
		21.056433, 22.637306, 23.616482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.463358, 23.050854, 24.195713>,  <20.459196, 22.955267, 23.437012>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.463358, 23.050854, 24.195713> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.839607, 22.957193, 24.097404>,  <21.065357, 22.900997, 24.038420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.839607, 22.957193, 24.097404>,  <20.463358, 23.050854, 24.195713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.839607, 22.957193, 24.097404> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338845, 0.604235, 0.721169,
		-0.020359, -0.761626, 0.647698,
		0.940622, -0.234151, -0.245771,
		21.121794, 22.886948, 24.023674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.768316, 22.735703, 24.803076>,  <20.463358, 23.050854, 24.195713>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.768316, 22.735703, 24.803076> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.033728, 22.915394, 24.563770>,  <21.192974, 23.023209, 24.420187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.033728, 22.915394, 24.563770>,  <20.768316, 22.735703, 24.803076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.033728, 22.915394, 24.563770> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282480, 0.590039, 0.756346,
		0.692775, -0.670855, 0.264608,
		0.663528, 0.449231, -0.598267,
		21.232786, 23.050163, 24.384291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.308504, 22.803564, 25.152365>,  <20.768316, 22.735703, 24.803076>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.308504, 22.803564, 25.152365> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.396753, 23.056313, 24.855162>,  <21.449703, 23.207962, 24.676840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.396753, 23.056313, 24.855162>,  <21.308504, 22.803564, 25.152365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.396753, 23.056313, 24.855162> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469442, 0.598952, 0.648754,
		0.854956, -0.491930, -0.164485,
		0.220622, 0.631872, -0.743010,
		21.462940, 23.245874, 24.632259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.874987, 23.011017, 25.414431>,  <21.308504, 22.803564, 25.152365>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.874987, 23.011017, 25.414431> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.805613, 23.284321, 25.130718>,  <21.763988, 23.448303, 24.960491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.805613, 23.284321, 25.130718>,  <21.874987, 23.011017, 25.414431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.805613, 23.284321, 25.130718> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629933, 0.630565, 0.453400,
		0.757036, -0.368163, -0.539770,
		-0.173435, 0.683260, -0.709279,
		21.753582, 23.489298, 24.917934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.520916, 23.244135, 25.094482>,  <21.874987, 23.011017, 25.414431>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.520916, 23.244135, 25.094482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.249853, 23.531395, 25.031183>,  <22.087215, 23.703751, 24.993204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.249853, 23.531395, 25.031183>,  <22.520916, 23.244135, 25.094482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.249853, 23.531395, 25.031183> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628664, 0.677392, 0.381996,
		0.381527, 0.159376, -0.910514,
		-0.677656, 0.718150, -0.158250,
		22.046556, 23.746840, 24.983707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.837849, 23.722622, 24.614609>,  <22.520916, 23.244135, 25.094482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.837849, 23.722622, 24.614609> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.549250, 23.902122, 24.825535>,  <22.376091, 24.009823, 24.952091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.549250, 23.902122, 24.825535>,  <22.837849, 23.722622, 24.614609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.549250, 23.902122, 24.825535> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640250, 0.722369, 0.261272,
		-0.263670, 0.526122, -0.808501,
		-0.721497, 0.448753, 0.527317,
		22.332800, 24.036749, 24.983730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.977762, 24.458508, 24.609377>,  <22.837849, 23.722622, 24.614609>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.977762, 24.458508, 24.609377> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.715033, 24.409815, 24.907038>,  <22.557396, 24.380598, 25.085634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.715033, 24.409815, 24.907038>,  <22.977762, 24.458508, 24.609377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.715033, 24.409815, 24.907038> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394934, 0.785158, 0.477027,
		-0.642349, 0.607213, -0.467633,
		-0.656822, -0.121733, 0.744154,
		22.517986, 24.373295, 25.130283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.732258, 25.110252, 24.763655>,  <22.977762, 24.458508, 24.609377>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.732258, 25.110252, 24.763655> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.688738, 24.882889, 25.089863>,  <22.662626, 24.746469, 25.285587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.688738, 24.882889, 25.089863>,  <22.732258, 25.110252, 24.763655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.688738, 24.882889, 25.089863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419623, 0.717451, 0.556040,
		-0.901154, 0.402707, 0.160461,
		-0.108798, -0.568411, 0.815520,
		22.656099, 24.712366, 25.334518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.467632, 25.527174, 25.240192>,  <22.732258, 25.110252, 24.763655>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.467632, 25.527174, 25.240192> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.645035, 25.236776, 25.450426>,  <22.751476, 25.062538, 25.576567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.645035, 25.236776, 25.450426>,  <22.467632, 25.527174, 25.240192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.645035, 25.236776, 25.450426> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418199, 0.686285, 0.595082,
		-0.792725, -0.044123, 0.607980,
		0.443505, -0.725993, 0.525584,
		22.778086, 25.018978, 25.608101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.925764, 26.085632, 25.311737>,  <22.467632, 25.527174, 25.240192>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.925764, 26.085632, 25.311737> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.980135, 26.446243, 25.476063>,  <22.012758, 26.662611, 25.574657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.980135, 26.446243, 25.476063>,  <21.925764, 26.085632, 25.311737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.980135, 26.446243, 25.476063> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.947138, 0.239883, -0.213039,
		-0.290608, -0.360141, 0.886479,
		0.135927, 0.901529, 0.410815,
		22.020912, 26.716702, 25.599308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.258133, 26.457289, 25.255451>,  <21.925764, 26.085632, 25.311737>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.258133, 26.457289, 25.255451> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.928267, 26.660160, 25.155293>,  <20.730347, 26.781883, 25.095198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.928267, 26.660160, 25.155293>,  <21.258133, 26.457289, 25.255451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.928267, 26.660160, 25.155293> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134975, -0.606358, -0.783653,
		-0.549281, -0.612454, 0.568499,
		-0.824665, 0.507178, -0.250395,
		20.680868, 26.812313, 25.080173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.775919, 25.967615, 25.259796>,  <21.258133, 26.457289, 25.255451>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.775919, 25.967615, 25.259796> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.675703, 26.283297, 25.035515>,  <20.615574, 26.472706, 24.900946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.675703, 26.283297, 25.035515>,  <20.775919, 25.967615, 25.259796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.675703, 26.283297, 25.035515> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130299, -0.601394, -0.788256,
		-0.959297, -0.124432, 0.253506,
		-0.250542, 0.789204, -0.560702,
		20.600540, 26.520058, 24.867304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.300299, 25.731583, 24.887054>,  <20.775919, 25.967615, 25.259796>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.300299, 25.731583, 24.887054> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.434767, 26.054379, 24.692835>,  <20.515448, 26.248056, 24.576303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.434767, 26.054379, 24.692835>,  <20.300299, 25.731583, 24.887054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.434767, 26.054379, 24.692835> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103403, -0.544062, -0.832649,
		-0.936108, 0.229704, -0.266343,
		0.336170, 0.806990, -0.485549,
		20.535618, 26.296474, 24.547171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.038765, 25.598125, 24.288433>,  <20.300299, 25.731583, 24.887054>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.038765, 25.598125, 24.288433> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.286366, 25.889669, 24.171400>,  <20.434925, 26.064596, 24.101179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.286366, 25.889669, 24.171400>,  <20.038765, 25.598125, 24.288433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.286366, 25.889669, 24.171400> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064718, -0.323930, -0.943865,
		-0.782720, 0.603187, -0.153343,
		0.619000, 0.728858, -0.292584,
		20.472065, 26.108326, 24.083626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.698835, 25.945688, 23.801130>,  <20.038765, 25.598125, 24.288433>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.698835, 25.945688, 23.801130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.086729, 26.025978, 23.745525>,  <20.319466, 26.074152, 23.712162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.086729, 26.025978, 23.745525>,  <19.698835, 25.945688, 23.801130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.086729, 26.025978, 23.745525> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056629, -0.368921, -0.927734,
		-0.237504, 0.907528, -0.346389,
		0.969735, 0.200725, -0.139013,
		20.377649, 26.086195, 23.703821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.806856, 26.399435, 23.201815>,  <19.698835, 25.945688, 23.801130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.806856, 26.399435, 23.201815> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.155394, 26.210550, 23.255146>,  <20.364515, 26.097219, 23.287146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.155394, 26.210550, 23.255146>,  <19.806856, 26.399435, 23.201815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.155394, 26.210550, 23.255146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091806, -0.423822, -0.901081,
		0.482009, 0.772910, -0.412646,
		0.871343, -0.472213, 0.133328,
		20.416796, 26.068886, 23.295145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.139795, 26.404863, 22.562929>,  <19.806856, 26.399435, 23.201815>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.139795, 26.404863, 22.562929> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.323757, 26.104647, 22.752739>,  <20.434135, 25.924517, 22.866625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.323757, 26.104647, 22.752739>,  <20.139795, 26.404863, 22.562929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.323757, 26.104647, 22.752739> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091939, -0.491271, -0.866141,
		0.883195, 0.441971, -0.156935,
		0.459907, -0.750542, 0.474523,
		20.461729, 25.879484, 22.895096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.735201, 26.351992, 22.189905>,  <20.139795, 26.404863, 22.562929>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.735201, 26.351992, 22.189905> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.655874, 26.006433, 22.375099>,  <20.608278, 25.799099, 22.486216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.655874, 26.006433, 22.375099>,  <20.735201, 26.351992, 22.189905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.655874, 26.006433, 22.375099> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056171, -0.481610, -0.874584,
		0.978527, -0.147438, 0.144037,
		-0.198317, -0.863895, 0.462987,
		20.596378, 25.747265, 22.513994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.205545, 25.898527, 21.884899>,  <20.735201, 26.351992, 22.189905>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.205545, 25.898527, 21.884899> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.940331, 25.652805, 22.056021>,  <20.781202, 25.505373, 22.158693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.940331, 25.652805, 22.056021>,  <21.205545, 25.898527, 21.884899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.940331, 25.652805, 22.056021> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098344, -0.638008, -0.763724,
		0.742100, -0.464304, 0.483434,
		-0.663035, -0.614303, 0.427804,
		20.741421, 25.468515, 22.184362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.545527, 25.245813, 21.883167>,  <21.205545, 25.898527, 21.884899>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.545527, 25.245813, 21.883167> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.148746, 25.203148, 21.910458>,  <20.910679, 25.177549, 21.926832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.148746, 25.203148, 21.910458>,  <21.545527, 25.245813, 21.883167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.148746, 25.203148, 21.910458> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014468, -0.630799, -0.775812,
		0.125789, -0.768581, 0.627265,
		-0.991952, -0.106664, 0.068228,
		20.851162, 25.171148, 21.930925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.392485, 24.489500, 21.793980>,  <21.545527, 25.245813, 21.883167>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.392485, 24.489500, 21.793980> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.008184, 24.589655, 21.746199>,  <20.777605, 24.649748, 21.717531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.008184, 24.589655, 21.746199>,  <21.392485, 24.489500, 21.793980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.008184, 24.589655, 21.746199> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126080, -0.777629, -0.615952,
		-0.247113, -0.576715, 0.778675,
		-0.960749, 0.250386, -0.119450,
		20.719959, 24.664770, 21.710363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.042912, 23.890532, 21.939541>,  <21.392485, 24.489500, 21.793980>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.042912, 23.890532, 21.939541> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.803598, 24.116474, 21.712212>,  <20.660009, 24.252041, 21.575813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.803598, 24.116474, 21.712212>,  <21.042912, 23.890532, 21.939541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.803598, 24.116474, 21.712212> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081693, -0.748568, -0.658005,
		-0.797107, -0.347247, 0.494003,
		-0.598285, 0.564858, -0.568322,
		20.624113, 24.285933, 21.541716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.363155, 23.529743, 21.826347>,  <21.042912, 23.890532, 21.939541>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.363155, 23.529743, 21.826347> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.397440, 23.792580, 21.526777>,  <20.418011, 23.950281, 21.347036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.397440, 23.792580, 21.526777>,  <20.363155, 23.529743, 21.826347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.397440, 23.792580, 21.526777> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204675, -0.724045, -0.658685,
		-0.975070, 0.209745, 0.072429,
		0.085714, 0.657089, -0.748924,
		20.423155, 23.989706, 21.302099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.824911, 23.429852, 21.358568>,  <20.363155, 23.529743, 21.826347>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.824911, 23.429852, 21.358568> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.099470, 23.609900, 21.130096>,  <20.264206, 23.717928, 20.993013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.099470, 23.609900, 21.130096>,  <19.824911, 23.429852, 21.358568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.099470, 23.609900, 21.130096> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241361, -0.599899, -0.762801,
		-0.686004, 0.661447, -0.303128,
		0.686399, 0.450122, -0.571181,
		20.305389, 23.744936, 20.958742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.215714, 23.684338, 21.587206>,  <19.824911, 23.429852, 21.358568>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.215714, 23.684338, 21.587206> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.817137, 23.701265, 21.616352>,  <18.577990, 23.711422, 21.633841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.817137, 23.701265, 21.616352>,  <19.215714, 23.684338, 21.587206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.817137, 23.701265, 21.616352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084014, 0.432286, 0.897814,
		0.006493, 0.900743, -0.434304,
		-0.996443, 0.042317, 0.072868,
		18.518204, 23.713961, 21.638212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.010160, 24.406784, 21.618408>,  <19.215714, 23.684338, 21.587206>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.010160, 24.406784, 21.618408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.698240, 24.219784, 21.784952>,  <18.511087, 24.107584, 21.884878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.698240, 24.219784, 21.784952>,  <19.010160, 24.406784, 21.618408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.698240, 24.219784, 21.784952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011182, 0.654574, 0.755915,
		-0.625926, 0.594120, -0.505210,
		-0.779802, -0.467498, 0.416358,
		18.464300, 24.079535, 21.909859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.427118, 24.844780, 21.746994>,  <19.010160, 24.406784, 21.618408>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.427118, 24.844780, 21.746994> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.399584, 24.530218, 21.992538>,  <18.383062, 24.341480, 22.139866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.399584, 24.530218, 21.992538>,  <18.427118, 24.844780, 21.746994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.399584, 24.530218, 21.992538> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006572, 0.615666, 0.787980,
		-0.997606, 0.050209, -0.047550,
		-0.068839, -0.786406, 0.613862,
		18.378933, 24.294296, 22.176697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.854332, 25.083635, 22.251116>,  <18.427118, 24.844780, 21.746994>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.854332, 25.083635, 22.251116> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.073526, 24.791716, 22.414629>,  <18.205042, 24.616564, 22.512737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.073526, 24.791716, 22.414629>,  <17.854332, 25.083635, 22.251116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.073526, 24.791716, 22.414629> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152021, 0.393666, 0.906596,
		-0.822558, -0.558945, 0.104778,
		0.547985, -0.729799, 0.408785,
		18.237923, 24.572775, 22.537264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.445980, 25.030157, 22.795731>,  <17.854332, 25.083635, 22.251116>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.445980, 25.030157, 22.795731> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.784632, 24.837641, 22.886574>,  <17.987823, 24.722132, 22.941080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.784632, 24.837641, 22.886574>,  <17.445980, 25.030157, 22.795731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.784632, 24.837641, 22.886574> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032975, 0.378487, 0.925019,
		-0.531161, -0.790637, 0.304567,
		0.846629, -0.481291, 0.227109,
		18.038620, 24.693254, 22.954706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.266888, 24.716015, 23.431335>,  <17.445980, 25.030157, 22.795731>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.266888, 24.716015, 23.431335> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.665035, 24.719530, 23.393036>,  <17.903923, 24.721640, 23.370056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.665035, 24.719530, 23.393036>,  <17.266888, 24.716015, 23.431335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.665035, 24.719530, 23.393036> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085120, 0.382599, 0.919985,
		0.044719, -0.923873, 0.380078,
		0.995367, 0.008788, -0.095750,
		17.963646, 24.722166, 23.364311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.576622, 24.437122, 24.101770>,  <17.266888, 24.716015, 23.431335>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.576622, 24.437122, 24.101770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.863541, 24.649256, 23.921003>,  <18.035692, 24.776535, 23.812544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.863541, 24.649256, 23.921003>,  <17.576622, 24.437122, 24.101770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.863541, 24.649256, 23.921003> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155331, 0.510558, 0.845697,
		0.679232, -0.676814, 0.283845,
		0.717298, 0.530334, -0.451917,
		18.078730, 24.808355, 23.785429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.421259, 23.803160, 24.595541>,  <17.576622, 24.437122, 24.101770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.421259, 23.803160, 24.595541> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.250105, 23.666349, 24.930189>,  <17.147411, 23.584263, 25.130978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.250105, 23.666349, 24.930189>,  <17.421259, 23.803160, 24.595541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.250105, 23.666349, 24.930189> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729450, -0.415874, -0.543094,
		0.533681, -0.842654, -0.071544,
		-0.427887, -0.342027, 0.836618,
		17.121738, 23.563742, 25.181175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.221127, 23.226482, 24.420147>,  <17.421259, 23.803160, 24.595541>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.221127, 23.226482, 24.420147> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.975965, 23.291613, 24.729427>,  <16.828869, 23.330690, 24.914995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.975965, 23.291613, 24.729427>,  <17.221127, 23.226482, 24.420147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.975965, 23.291613, 24.729427> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775934, -0.308858, -0.550030,
		0.149249, -0.937067, 0.315642,
		-0.612904, 0.162826, 0.773199,
		16.792095, 23.340460, 24.961388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.885477, 22.545940, 24.650433>,  <17.221127, 23.226482, 24.420147>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.885477, 22.545940, 24.650433> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.634260, 22.834221, 24.767839>,  <16.483530, 23.007191, 24.838284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.634260, 22.834221, 24.767839>,  <16.885477, 22.545940, 24.650433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.634260, 22.834221, 24.767839> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764317, -0.500411, -0.406705,
		-0.146235, -0.479766, 0.865124,
		-0.628041, 0.720703, 0.293516,
		16.445848, 23.050432, 24.855894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.348005, 22.153091, 24.843513>,  <16.885477, 22.545940, 24.650433>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.348005, 22.153091, 24.843513> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.200466, 22.524662, 24.830601>,  <16.111942, 22.747604, 24.822853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.200466, 22.524662, 24.830601>,  <16.348005, 22.153091, 24.843513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.200466, 22.524662, 24.830601> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839122, -0.347724, -0.418284,
		-0.399782, -0.127193, 0.907742,
		-0.368847, 0.928929, -0.032284,
		16.089811, 22.803341, 24.820917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.698488, 22.059893, 24.786831>,  <16.348005, 22.153091, 24.843513>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.698488, 22.059893, 24.786831> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.720794, 22.443886, 24.677048>,  <15.734177, 22.674282, 24.611177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.720794, 22.443886, 24.677048>,  <15.698488, 22.059893, 24.786831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.720794, 22.443886, 24.677048> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723048, -0.150739, -0.674151,
		-0.688544, 0.236039, 0.685706,
		0.055763, 0.959981, -0.274458,
		15.737522, 22.731880, 24.594711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.010659, 22.295237, 24.715599>,  <15.698488, 22.059893, 24.786831>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.010659, 22.295237, 24.715599> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.223668, 22.540035, 24.481718>,  <15.351474, 22.686914, 24.341389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.223668, 22.540035, 24.481718>,  <15.010659, 22.295237, 24.715599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.223668, 22.540035, 24.481718> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613891, -0.196319, -0.764589,
		-0.582716, 0.766105, 0.271156,
		0.532523, 0.611999, -0.584703,
		15.383425, 22.723635, 24.306307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.508813, 22.651001, 24.287485>,  <15.010659, 22.295237, 24.715599>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.508813, 22.651001, 24.287485> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.862310, 22.691071, 24.104635>,  <15.074409, 22.715113, 23.994926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.862310, 22.691071, 24.104635>,  <14.508813, 22.651001, 24.287485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.862310, 22.691071, 24.104635> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406319, -0.320360, -0.855730,
		-0.232166, 0.941984, -0.242414,
		0.883744, 0.100174, -0.457123,
		15.127434, 22.721123, 23.967499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<25.028589, 21.839193, 25.864748> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.700033, 21.765644, 26.080715>,  <24.502899, 21.721516, 26.210295>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.700033, 21.765644, 26.080715>,  <25.028589, 21.839193, 25.864748>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.700033, 21.765644, 26.080715> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569471, 0.317431, -0.758248,
		-0.031967, -0.930284, -0.365444,
		-0.821390, -0.183871, 0.539917,
		24.453617, 21.710482, 26.242691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.695391, 21.311768, 25.527534>,  <25.028589, 21.839193, 25.864748>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.695391, 21.311768, 25.527534> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.389494, 21.471550, 25.729763>,  <24.205956, 21.567419, 25.851099>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.389494, 21.471550, 25.729763>,  <24.695391, 21.311768, 25.527534>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.389494, 21.471550, 25.729763> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574414, -0.067177, -0.815804,
		-0.291916, -0.914287, 0.280827,
		-0.764744, 0.399457, 0.505570,
		24.160070, 21.591387, 25.881433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.224129, 20.681564, 25.768385>,  <24.695391, 21.311768, 25.527534>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.224129, 20.681564, 25.768385> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<23.907053, 20.716129, 26.009773>,  <23.716808, 20.736868, 26.154606>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<23.907053, 20.716129, 26.009773>,  <24.224129, 20.681564, 25.768385>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<23.907053, 20.716129, 26.009773> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555362, 0.305913, -0.773299,
		-0.251433, -0.948130, -0.194503,
		-0.792688, 0.086413, 0.603471,
		23.669247, 20.742054, 26.190815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.706656, 20.456413, 25.341106>,  <24.224129, 20.681564, 25.768385>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.706656, 20.456413, 25.341106> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<23.568493, 20.708620, 25.619141>,  <23.485596, 20.859943, 25.785961>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<23.568493, 20.708620, 25.619141>,  <23.706656, 20.456413, 25.341106>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<23.568493, 20.708620, 25.619141> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576112, 0.442213, -0.687417,
		-0.740804, -0.637884, 0.210505,
		-0.345404, 0.630517, 0.695086,
		23.464872, 20.897776, 25.827667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.813154, 20.514519, 25.565725>,  <23.706656, 20.456413, 25.341106>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.813154, 20.514519, 25.565725> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<23.013138, 20.860519, 25.582758>,  <23.133129, 21.068119, 25.592978>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<23.013138, 20.860519, 25.582758>,  <22.813154, 20.514519, 25.565725>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<23.013138, 20.860519, 25.582758> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458788, 0.306236, -0.834106,
		-0.734543, 0.397483, 0.549958,
		0.499960, 0.865001, 0.042583,
		23.163126, 21.120020, 25.595533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.417553, 20.099451, 25.956104>,  <22.813154, 20.514519, 25.565725>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.417553, 20.099451, 25.956104> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.612122, 20.233458, 26.278881>,  <22.728863, 20.313862, 26.472548>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<22.612122, 20.233458, 26.278881>,  <22.417553, 20.099451, 25.956104>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<22.612122, 20.233458, 26.278881> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527559, 0.848822, -0.034391,
		-0.696473, -0.408982, 0.589626,
		0.486422, 0.335016, 0.806944,
		22.758049, 20.333961, 26.520964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.744728, 20.408812, 26.200089>,  <22.417553, 20.099451, 25.956104>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.744728, 20.408812, 26.200089> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.492542, 20.530716, 26.485643>,  <21.341230, 20.603859, 26.656977>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.492542, 20.530716, 26.485643>,  <21.744728, 20.408812, 26.200089>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.492542, 20.530716, 26.485643> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429278, -0.903149, 0.006441,
		0.646709, -0.302395, 0.700231,
		-0.630466, 0.304760, 0.713887,
		21.303402, 20.622145, 26.699810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.789963, 19.977934, 26.825041>,  <21.744728, 20.408812, 26.200089>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.789963, 19.977934, 26.825041> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.435032, 20.154778, 26.772596>,  <21.222073, 20.260883, 26.741131>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.435032, 20.154778, 26.772596>,  <21.789963, 19.977934, 26.825041>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.435032, 20.154778, 26.772596> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422338, -0.893283, -0.153873,
		-0.185146, -0.081164, 0.979354,
		-0.887329, 0.442107, -0.131109,
		21.168833, 20.287409, 26.733263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.368881, 19.619179, 27.233458>,  <21.789963, 19.977934, 26.825041>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.368881, 19.619179, 27.233458> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.139225, 19.801859, 26.961637>,  <21.001431, 19.911467, 26.798546>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<21.139225, 19.801859, 26.961637>,  <21.368881, 19.619179, 27.233458>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<21.139225, 19.801859, 26.961637> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296321, -0.889619, -0.347522,
		-0.763252, 0.001837, 0.646098,
		-0.574143, 0.456699, -0.679548,
		20.966982, 19.938869, 26.757772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.864359, 19.176752, 27.213860>,  <21.368881, 19.619179, 27.233458>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.864359, 19.176752, 27.213860> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.809694, 19.396059, 26.883835>,  <20.776896, 19.527643, 26.685820>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.809694, 19.396059, 26.883835>,  <20.864359, 19.176752, 27.213860>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.809694, 19.396059, 26.883835> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479489, -0.765420, -0.429212,
		-0.866842, 0.336952, 0.367490,
		-0.136660, 0.548266, -0.825063,
		20.768696, 19.560539, 26.636316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.239782, 19.002575, 27.088039>,  <20.864359, 19.176752, 27.213860>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.239782, 19.002575, 27.088039> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.406652, 19.111940, 26.741350>,  <20.506775, 19.177559, 26.533337>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.406652, 19.111940, 26.741350>,  <20.239782, 19.002575, 27.088039>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.406652, 19.111940, 26.741350> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388020, -0.808802, -0.441905,
		-0.821831, 0.520657, -0.231322,
		0.417175, 0.273414, -0.866724,
		20.531805, 19.193964, 26.481333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.705158, 18.975855, 26.670334>,  <20.239782, 19.002575, 27.088039>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.705158, 18.975855, 26.670334> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.023779, 18.952394, 26.429646>,  <20.214951, 18.938318, 26.285233>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<20.023779, 18.952394, 26.429646>,  <19.705158, 18.975855, 26.670334>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<20.023779, 18.952394, 26.429646> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416221, -0.775059, -0.475441,
		-0.438482, 0.629161, -0.641787,
		0.796551, -0.058653, -0.601719,
		20.262745, 18.934799, 26.249130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.445883, 18.551109, 27.247280>,  <19.705158, 18.975855, 26.670334>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.445883, 18.551109, 27.247280> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.064400, 18.435781, 27.213079>,  <18.835510, 18.366585, 27.192558>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.064400, 18.435781, 27.213079>,  <19.445883, 18.551109, 27.247280>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.064400, 18.435781, 27.213079> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289726, 0.804681, 0.518215,
		-0.080609, 0.518999, -0.850966,
		-0.953709, -0.288320, -0.085503,
		18.778288, 18.349285, 27.187429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.927807, 19.022036, 26.903637>,  <19.445883, 18.551109, 27.247280>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.927807, 19.022036, 26.903637> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.738214, 18.784805, 27.163977>,  <18.624460, 18.642467, 27.320181>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.738214, 18.784805, 27.163977>,  <18.927807, 19.022036, 26.903637>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.738214, 18.784805, 27.163977> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252313, 0.799636, 0.544904,
		-0.843612, 0.094054, -0.528651,
		-0.473979, -0.593074, 0.650851,
		18.596022, 18.606884, 27.359232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.265028, 19.230371, 27.003223>,  <18.927807, 19.022036, 26.903637>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.265028, 19.230371, 27.003223> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.357244, 19.048531, 27.347359>,  <18.412575, 18.939426, 27.553841>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.357244, 19.048531, 27.347359>,  <18.265028, 19.230371, 27.003223>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.357244, 19.048531, 27.347359> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238891, 0.830655, 0.502934,
		-0.943282, -0.321475, 0.082900,
		0.230542, -0.454604, 0.860340,
		18.426407, 18.912149, 27.605461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.809240, 19.556263, 27.385349>,  <18.265028, 19.230371, 27.003223>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.809240, 19.556263, 27.385349> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.052736, 19.385521, 27.652849>,  <18.198833, 19.283075, 27.813349>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.052736, 19.385521, 27.652849>,  <17.809240, 19.556263, 27.385349>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.052736, 19.385521, 27.652849> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093679, 0.798356, 0.594854,
		-0.787819, -0.424760, 0.446004,
		0.608741, -0.426856, 0.668751,
		18.235359, 19.257463, 27.853474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.476341, 19.689863, 28.103825>,  <17.809240, 19.556263, 27.385349>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.476341, 19.689863, 28.103825> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.863071, 19.614719, 28.173058>,  <18.095110, 19.569633, 28.214598>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.863071, 19.614719, 28.173058>,  <17.476341, 19.689863, 28.103825>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.863071, 19.614719, 28.173058> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070848, 0.848219, 0.524886,
		-0.245418, -0.495210, 0.833389,
		0.966825, -0.187860, 0.173083,
		18.153118, 19.558361, 28.224983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.565014, 19.990616, 28.849693>,  <17.476341, 19.689863, 28.103825>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.565014, 19.990616, 28.849693> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.936438, 19.938747, 28.710573>,  <18.159292, 19.907625, 28.627102>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.936438, 19.938747, 28.710573>,  <17.565014, 19.990616, 28.849693>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.936438, 19.938747, 28.710573> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274133, 0.871313, 0.407020,
		0.250263, -0.473285, 0.844612,
		0.928558, -0.129673, -0.347801,
		18.215006, 19.899845, 28.606234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.925831, 20.229218, 29.407379>,  <17.565014, 19.990616, 28.849693>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.925831, 20.229218, 29.407379> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.159098, 20.250574, 29.083141>,  <18.299059, 20.263388, 28.888599>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.159098, 20.250574, 29.083141>,  <17.925831, 20.229218, 29.407379>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.159098, 20.250574, 29.083141> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219326, 0.950433, 0.220393,
		0.782183, -0.306311, 0.542553,
		0.583169, 0.053392, -0.810594,
		18.334049, 20.266592, 28.839964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.633200, 20.349236, 29.715546>,  <17.925831, 20.229218, 29.407379>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.633200, 20.349236, 29.715546> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.592548, 20.478968, 29.339357>,  <18.568157, 20.556807, 29.113646>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.592548, 20.478968, 29.339357>,  <18.633200, 20.349236, 29.715546>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.592548, 20.478968, 29.339357> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426996, 0.868075, 0.253222,
		0.898525, -0.375842, -0.226707,
		-0.101627, 0.324329, -0.940469,
		18.562059, 20.576267, 29.057217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.174229, 20.763479, 29.741587>,  <18.633200, 20.349236, 29.715546>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.174229, 20.763479, 29.741587> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.010319, 20.866152, 29.391455>,  <18.911972, 20.927755, 29.181376>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.010319, 20.866152, 29.391455>,  <19.174229, 20.763479, 29.741587>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.010319, 20.866152, 29.391455> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286283, 0.947298, 0.143763,
		0.866098, -0.191681, -0.461664,
		-0.409776, 0.256679, -0.875328,
		18.887386, 20.943155, 29.128857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.561361, 21.301071, 29.671873>,  <19.174229, 20.763479, 29.741587>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.561361, 21.301071, 29.671873> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.265858, 21.352467, 29.407230>,  <19.088556, 21.383303, 29.248444>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.265858, 21.352467, 29.407230>,  <19.561361, 21.301071, 29.671873>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.265858, 21.352467, 29.407230> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099907, 0.991692, 0.081034,
		0.666523, -0.006235, -0.745458,
		-0.738759, 0.128487, -0.661609,
		19.044230, 21.391012, 29.208748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.788893, 21.785326, 29.121435>,  <19.561361, 21.301071, 29.671873>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.788893, 21.785326, 29.121435> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.389217, 21.790592, 29.106194>,  <19.149412, 21.793753, 29.097048>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.389217, 21.790592, 29.106194>,  <19.788893, 21.785326, 29.121435>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.389217, 21.790592, 29.106194> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015392, 0.998158, -0.058678,
		0.037263, -0.059216, -0.997549,
		-0.999187, 0.013168, -0.038105,
		19.089460, 21.794542, 29.094763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.572905, 22.114147, 28.480879>,  <19.788893, 21.785326, 29.121435>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.572905, 22.114147, 28.480879> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.302927, 22.143955, 28.774517>,  <19.140940, 22.161840, 28.950701>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.302927, 22.143955, 28.774517>,  <19.572905, 22.114147, 28.480879>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.302927, 22.143955, 28.774517> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114432, 0.993422, 0.004365,
		-0.728942, 0.086950, -0.679031,
		-0.674944, 0.074521, 0.734096,
		19.100443, 22.166311, 28.994745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.325195, 22.743156, 28.406826>,  <19.572905, 22.114147, 28.480879>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.325195, 22.743156, 28.406826> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.160341, 22.695181, 28.768105>,  <19.061430, 22.666395, 28.984871>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.160341, 22.695181, 28.768105>,  <19.325195, 22.743156, 28.406826>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.160341, 22.695181, 28.768105> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138492, 0.971533, 0.192210,
		-0.900536, 0.204301, -0.383791,
		-0.412134, -0.119940, 0.903194,
		19.036701, 22.659199, 29.039062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.884394, 23.200230, 28.424532>,  <19.325195, 22.743156, 28.406826>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.884394, 23.200230, 28.424532> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.974226, 23.115286, 28.804947>,  <19.028126, 23.064320, 29.033195>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.974226, 23.115286, 28.804947>,  <18.884394, 23.200230, 28.424532>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.974226, 23.115286, 28.804947> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162296, 0.970485, 0.178377,
		-0.960846, 0.114290, 0.252415,
		0.224578, -0.212359, 0.951035,
		19.041599, 23.051579, 29.090258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.143620, 23.457148, 27.817915>,  <18.884394, 23.200230, 28.424532>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.143620, 23.457148, 27.817915> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.919411, 23.742498, 27.649673>,  <18.784885, 23.913710, 27.548729>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.919411, 23.742498, 27.649673>,  <19.143620, 23.457148, 27.817915>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.919411, 23.742498, 27.649673> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400405, -0.678033, -0.616399,
		-0.724909, -0.177092, 0.665692,
		-0.560520, 0.713379, -0.420603,
		18.751253, 23.956512, 27.523493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.414116, 23.115488, 27.706564>,  <19.143620, 23.457148, 27.817915>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.414116, 23.115488, 27.706564> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.477848, 23.412457, 27.446280>,  <18.516087, 23.590637, 27.290110>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.477848, 23.412457, 27.446280>,  <18.414116, 23.115488, 27.706564>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.477848, 23.412457, 27.446280> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573502, -0.466898, -0.673129,
		-0.803561, 0.480433, 0.351389,
		0.159330, 0.742422, -0.650710,
		18.525646, 23.635183, 27.251066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.824833, 23.203115, 27.415440>,  <18.414116, 23.115488, 27.706564>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.824833, 23.203115, 27.415440> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.034977, 23.401743, 27.139057>,  <18.161064, 23.520920, 26.973228>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.034977, 23.401743, 27.139057>,  <17.824833, 23.203115, 27.415440>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.034977, 23.401743, 27.139057> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707730, -0.195777, -0.678815,
		-0.472350, 0.845632, 0.248581,
		0.525361, 0.496567, -0.690954,
		18.192585, 23.550713, 26.931770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.471548, 23.830549, 27.198858>,  <17.824833, 23.203115, 27.415440>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.471548, 23.830549, 27.198858> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.727642, 23.753147, 26.901495>,  <17.881298, 23.706707, 26.723076>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.727642, 23.753147, 26.901495>,  <17.471548, 23.830549, 27.198858>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.727642, 23.753147, 26.901495> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754527, 0.023241, -0.655857,
		0.144188, 0.980824, -0.131124,
		0.640233, -0.193503, -0.743410,
		17.919712, 23.695097, 26.678473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.367895, 24.323627, 26.692520>,  <17.471548, 23.830549, 27.198858>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.367895, 24.323627, 26.692520> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.546242, 24.014585, 26.511728>,  <17.653250, 23.829161, 26.403254>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.546242, 24.014585, 26.511728>,  <17.367895, 24.323627, 26.692520>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.546242, 24.014585, 26.511728> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705442, 0.007505, -0.708728,
		0.550959, 0.634842, -0.541682,
		0.445865, -0.772605, -0.451979,
		17.680002, 23.782804, 26.376135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.287537, 24.470032, 26.027927>,  <17.367895, 24.323627, 26.692520>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.287537, 24.470032, 26.027927> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.397121, 24.088110, 25.981813>,  <17.462873, 23.858957, 25.954145>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.397121, 24.088110, 25.981813>,  <17.287537, 24.470032, 26.027927>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.397121, 24.088110, 25.981813> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582210, -0.069245, -0.810084,
		0.765490, 0.289053, -0.574868,
		0.273964, -0.954806, -0.115283,
		17.479311, 23.801668, 25.947229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.595156, 24.318047, 25.257299>,  <17.287537, 24.470032, 26.027927>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.595156, 24.318047, 25.257299> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.459171, 23.980505, 25.423353>,  <17.377581, 23.777981, 25.522985>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.459171, 23.980505, 25.423353>,  <17.595156, 24.318047, 25.257299>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.459171, 23.980505, 25.423353> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618070, -0.132223, -0.774924,
		0.708812, -0.520028, -0.476610,
		-0.339963, -0.843853, 0.415135,
		17.357182, 23.727348, 25.547894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.131290, 24.504902, 24.680414>,  <17.595156, 24.318047, 25.257299>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.131290, 24.504902, 24.680414> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.186184, 24.778666, 24.393988>,  <18.219120, 24.942924, 24.222132>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.186184, 24.778666, 24.393988>,  <18.131290, 24.504902, 24.680414>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.186184, 24.778666, 24.393988> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342935, 0.645370, 0.682564,
		0.929280, -0.339236, -0.146141,
		0.137235, 0.684410, -0.716065,
		18.227354, 24.983988, 24.179169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.690516, 24.891964, 24.857542>,  <18.131290, 24.504902, 24.680414>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.690516, 24.891964, 24.857542> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.535576, 25.139557, 24.584244>,  <18.442612, 25.288113, 24.420265>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.535576, 25.139557, 24.584244>,  <18.690516, 24.891964, 24.857542>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.535576, 25.139557, 24.584244> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309656, 0.785396, 0.535972,
		0.868375, -0.003963, -0.495893,
		-0.387348, 0.618981, -0.683245,
		18.419371, 25.325251, 24.379271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.109785, 25.491493, 24.908022>,  <18.690516, 24.891964, 24.857542>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.109785, 25.491493, 24.908022> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.772833, 25.610495, 24.728296>,  <18.570662, 25.681896, 24.620461>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.772833, 25.610495, 24.728296>,  <19.109785, 25.491493, 24.908022>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.772833, 25.610495, 24.728296> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034705, 0.802110, 0.596166,
		0.537761, 0.517794, -0.665359,
		-0.842382, 0.297504, -0.449314,
		18.520119, 25.699745, 24.593502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.209518, 26.174490, 24.751070>,  <19.109785, 25.491493, 24.908022>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.209518, 26.174490, 24.751070> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.813450, 26.127937, 24.782097>,  <18.575809, 26.100006, 24.800713>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.813450, 26.127937, 24.782097>,  <19.209518, 26.174490, 24.751070>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.813450, 26.127937, 24.782097> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042556, 0.779004, 0.625574,
		-0.133228, 0.616124, -0.776300,
		-0.990171, -0.116380, 0.077565,
		18.516399, 26.093023, 24.805367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.987539, 26.791765, 24.583191>,  <19.209518, 26.174490, 24.751070>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.987539, 26.791765, 24.583191> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.687056, 26.634192, 24.795038>,  <18.506765, 26.539646, 24.922146>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.687056, 26.634192, 24.795038>,  <18.987539, 26.791765, 24.583191>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.687056, 26.634192, 24.795038> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044912, 0.770012, 0.636447,
		-0.658532, 0.501893, -0.560749,
		-0.751212, -0.393936, 0.529619,
		18.461693, 26.516010, 24.953924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.597153, 27.335182, 24.607212>,  <18.987539, 26.791765, 24.583191>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.597153, 27.335182, 24.607212> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.471146, 27.085096, 24.892834>,  <18.395542, 26.935045, 25.064207>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.471146, 27.085096, 24.892834>,  <18.597153, 27.335182, 24.607212>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.471146, 27.085096, 24.892834> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126102, 0.773262, 0.621421,
		-0.940671, 0.105715, -0.322432,
		-0.315017, -0.625213, 0.714054,
		18.376640, 26.897533, 25.107050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.922380, 27.630665, 24.850649>,  <18.597153, 27.335182, 24.607212>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.922380, 27.630665, 24.850649> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.098238, 27.414530, 25.137632>,  <18.203753, 27.284849, 25.309822>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.098238, 27.414530, 25.137632>,  <17.922380, 27.630665, 24.850649>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.098238, 27.414530, 25.137632> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105513, 0.762198, 0.638687,
		-0.891954, -0.356495, 0.278081,
		0.439642, -0.540339, 0.717461,
		18.230131, 27.252428, 25.352871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.593657, 27.841381, 25.526382>,  <17.922380, 27.630665, 24.850649>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.593657, 27.841381, 25.526382> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.926313, 27.645842, 25.631756>,  <18.125908, 27.528519, 25.694981>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.926313, 27.645842, 25.631756>,  <17.593657, 27.841381, 25.526382>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.926313, 27.645842, 25.631756> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138542, 0.642041, 0.754049,
		-0.537750, -0.590603, 0.601675,
		0.831644, -0.488847, 0.263434,
		18.175806, 27.499187, 25.710787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.592762, 27.831961, 26.286816>,  <17.593657, 27.841381, 25.526382>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.592762, 27.831961, 26.286816> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.972706, 27.776335, 26.174799>,  <18.200672, 27.742958, 26.107588>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.972706, 27.776335, 26.174799>,  <17.592762, 27.831961, 26.286816>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.972706, 27.776335, 26.174799> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295716, 0.690499, 0.660123,
		0.101569, -0.709839, 0.697003,
		0.949861, -0.139067, -0.280043,
		18.257664, 27.734615, 26.090786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<15.510715, 15.133404, 16.742929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.900958, 15.219246, 16.761429>,  <16.135103, 15.270751, 16.772530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.900958, 15.219246, 16.761429>,  <15.510715, 15.133404, 16.742929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.900958, 15.219246, 16.761429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217727, 0.918905, 0.328952,
		0.028095, -0.330997, 0.943214,
		0.975606, 0.214605, 0.046251,
		16.193640, 15.283628, 16.775305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.652406, 15.490728, 17.390450>,  <15.510715, 15.133404, 16.742929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.652406, 15.490728, 17.390450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.958994, 15.594971, 17.155636>,  <16.142946, 15.657516, 17.014748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.958994, 15.594971, 17.155636>,  <15.652406, 15.490728, 17.390450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.958994, 15.594971, 17.155636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082236, 0.946280, 0.312715,
		0.636993, -0.191412, 0.746728,
		0.766471, 0.260605, -0.587033,
		16.188934, 15.673152, 16.979527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.979892, 15.904978, 17.814106>,  <15.652406, 15.490728, 17.390450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.979892, 15.904978, 17.814106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.132351, 15.981429, 17.452290>,  <16.223825, 16.027300, 17.235199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.132351, 15.981429, 17.452290>,  <15.979892, 15.904978, 17.814106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.132351, 15.981429, 17.452290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020046, 0.976459, 0.214771,
		0.924297, -0.099992, 0.368343,
		0.381147, 0.191128, -0.904542,
		16.246695, 16.038767, 17.180927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.653561, 16.168257, 17.885445>,  <15.979892, 15.904978, 17.814106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.653561, 16.168257, 17.885445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.489935, 16.297003, 17.543901>,  <16.391760, 16.374250, 17.338976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.489935, 16.297003, 17.543901>,  <16.653561, 16.168257, 17.885445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.489935, 16.297003, 17.543901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027554, 0.930943, 0.364123,
		0.912089, 0.172477, -0.371947,
		-0.409064, 0.321864, -0.853856,
		16.367216, 16.393562, 17.287745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.033405, 16.699034, 17.758760>,  <16.653561, 16.168257, 17.885445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.033405, 16.699034, 17.758760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.715359, 16.769358, 17.526596>,  <16.524530, 16.811552, 17.387297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.715359, 16.769358, 17.526596>,  <17.033405, 16.699034, 17.758760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.715359, 16.769358, 17.526596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007812, 0.954009, 0.299675,
		0.606405, 0.242811, -0.757176,
		-0.795118, 0.175809, -0.580413,
		16.476824, 16.822100, 17.352472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.186384, 17.265276, 17.588717>,  <17.033405, 16.699034, 17.758760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.186384, 17.265276, 17.588717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.794268, 17.255501, 17.510302>,  <16.558998, 17.249636, 17.463253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.794268, 17.255501, 17.510302>,  <17.186384, 17.265276, 17.588717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.794268, 17.255501, 17.510302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064626, 0.977391, 0.201322,
		0.186683, 0.210023, -0.959708,
		-0.980292, -0.024438, -0.196036,
		16.500179, 17.248169, 17.451490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.031572, 17.865625, 17.147865>,  <17.186384, 17.265276, 17.588717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.031572, 17.865625, 17.147865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.689814, 17.775553, 17.335182>,  <16.484758, 17.721510, 17.447573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.689814, 17.775553, 17.335182>,  <17.031572, 17.865625, 17.147865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.689814, 17.775553, 17.335182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048481, 0.931837, 0.359624,
		-0.517354, 0.284558, -0.807076,
		-0.854397, -0.225180, 0.468294,
		16.433495, 17.707998, 17.475670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.583319, 18.374542, 16.988392>,  <17.031572, 17.865625, 17.147865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.583319, 18.374542, 16.988392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.438267, 18.225256, 17.329967>,  <16.351234, 18.135685, 17.534912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.438267, 18.225256, 17.329967>,  <16.583319, 18.374542, 16.988392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.438267, 18.225256, 17.329967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339492, 0.906248, 0.251911,
		-0.867896, -0.198554, -0.455338,
		-0.362631, -0.373216, 0.853937,
		16.329477, 18.113291, 17.586149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.015127, 18.794708, 16.952929>,  <16.583319, 18.374542, 16.988392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.015127, 18.794708, 16.952929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.040598, 18.647802, 17.324102>,  <16.055880, 18.559660, 17.546806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.040598, 18.647802, 17.324102>,  <16.015127, 18.794708, 16.952929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.040598, 18.647802, 17.324102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338647, 0.866699, 0.366265,
		-0.938756, -0.337565, -0.069185,
		0.063676, -0.367263, 0.927935,
		16.059700, 18.537624, 17.602484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.373571, 19.056631, 17.313801>,  <16.015127, 18.794708, 16.952929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.373571, 19.056631, 17.313801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.623782, 18.958323, 17.609993>,  <15.773909, 18.899338, 17.787708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.623782, 18.958323, 17.609993>,  <15.373571, 19.056631, 17.313801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.623782, 18.958323, 17.609993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225394, 0.851696, 0.473087,
		-0.746935, -0.462829, 0.477364,
		0.625528, -0.245770, 0.740481,
		15.811440, 18.884592, 17.832138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.048750, 19.106567, 17.941389>,  <15.373571, 19.056631, 17.313801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.048750, 19.106567, 17.941389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.432487, 19.127993, 18.052235>,  <15.662730, 19.140848, 18.118742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.432487, 19.127993, 18.052235>,  <15.048750, 19.106567, 17.941389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.432487, 19.127993, 18.052235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204924, 0.807327, 0.553380,
		-0.194078, -0.587669, 0.785480,
		0.959344, 0.053565, 0.277112,
		15.720290, 19.144062, 18.135368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.108418, 19.420971, 18.497797>,  <15.048750, 19.106567, 17.941389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.108418, 19.420971, 18.497797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.489261, 19.487925, 18.395443>,  <15.717766, 19.528097, 18.334030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.489261, 19.487925, 18.395443>,  <15.108418, 19.420971, 18.497797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.489261, 19.487925, 18.395443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008153, 0.850460, 0.525976,
		0.305659, -0.498699, 0.811093,
		0.952106, 0.167382, -0.255884,
		15.774893, 19.538139, 18.318678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.112226, 18.878450, 18.977140>,  <15.108418, 19.420971, 18.497797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.112226, 18.878450, 18.977140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.856855, 18.774057, 19.266775>,  <14.703633, 18.711422, 19.440556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.856855, 18.774057, 19.266775>,  <15.112226, 18.878450, 18.977140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.856855, 18.774057, 19.266775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250350, -0.819192, -0.515994,
		0.727831, -0.510699, 0.457656,
		-0.638425, -0.260982, 0.724087,
		14.665328, 18.695763, 19.484001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.182207, 18.220821, 19.074308>,  <15.112226, 18.878450, 18.977140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.182207, 18.220821, 19.074308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.835283, 18.262985, 19.268900>,  <14.627129, 18.288284, 19.385654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.835283, 18.262985, 19.268900>,  <15.182207, 18.220821, 19.074308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.835283, 18.262985, 19.268900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145753, -0.988264, -0.045714,
		0.475950, -0.110554, 0.872496,
		-0.867311, 0.105412, 0.486478,
		14.575090, 18.294609, 19.414843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.157005, 17.728439, 19.646313>,  <15.182207, 18.220821, 19.074308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.157005, 17.728439, 19.646313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.781219, 17.817532, 19.542162>,  <14.555748, 17.870987, 19.479671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.781219, 17.817532, 19.542162>,  <15.157005, 17.728439, 19.646313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.781219, 17.817532, 19.542162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205864, -0.974366, -0.090719,
		-0.273910, -0.031625, 0.961235,
		-0.939464, 0.222732, -0.260378,
		14.499380, 17.884352, 19.464048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.877682, 17.182617, 19.815365>,  <15.157005, 17.728439, 19.646313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.877682, 17.182617, 19.815365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.592620, 17.360077, 19.597998>,  <14.421583, 17.466553, 19.467577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.592620, 17.360077, 19.597998>,  <14.877682, 17.182617, 19.815365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.592620, 17.360077, 19.597998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535272, -0.844588, 0.012446,
		-0.453441, 0.299745, 0.839372,
		-0.712653, 0.443649, -0.543416,
		14.378824, 17.493172, 19.434973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.344817, 16.819294, 19.989309>,  <14.877682, 17.182617, 19.815365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.344817, 16.819294, 19.989309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.236561, 17.018604, 19.659832>,  <14.171607, 17.138191, 19.462145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.236561, 17.018604, 19.659832>,  <14.344817, 16.819294, 19.989309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.236561, 17.018604, 19.659832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692129, -0.695418, -0.193266,
		-0.669112, 0.517797, 0.533081,
		-0.270642, 0.498277, -0.823695,
		14.155369, 17.168087, 19.412724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.575233, 16.933981, 19.968973>,  <14.344817, 16.819294, 19.989309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.575233, 16.933981, 19.968973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.703717, 16.954512, 19.590727>,  <13.780808, 16.966831, 19.363779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.703717, 16.954512, 19.590727>,  <13.575233, 16.933981, 19.968973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.703717, 16.954512, 19.590727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674300, -0.688717, -0.266435,
		-0.664937, 0.723211, -0.186614,
		0.321213, 0.051328, -0.945615,
		13.800081, 16.969910, 19.307043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.984421, 16.704193, 19.661272>,  <13.575233, 16.933981, 19.968973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.984421, 16.704193, 19.661272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.279660, 16.673410, 19.393156>,  <13.456803, 16.654942, 19.232286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.279660, 16.673410, 19.393156>,  <12.984421, 16.704193, 19.661272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.279660, 16.673410, 19.393156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489514, -0.744774, -0.453528,
		-0.464314, 0.662865, -0.587387,
		0.738098, -0.076955, -0.670291,
		13.501090, 16.650324, 19.192068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.716846, 16.763365, 18.958223>,  <12.984421, 16.704193, 19.661272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.716846, 16.763365, 18.958223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.069800, 16.596048, 18.872032>,  <13.281572, 16.495659, 18.820318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.069800, 16.596048, 18.872032>,  <12.716846, 16.763365, 18.958223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.069800, 16.596048, 18.872032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468877, -0.743319, -0.477107,
		0.039402, 0.522024, -0.852020,
		0.882384, -0.418292, -0.215477,
		13.334516, 16.470560, 18.807388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.748646, 16.594995, 18.249725>,  <12.716846, 16.763365, 18.958223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.748646, 16.594995, 18.249725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.026774, 16.357410, 18.411581>,  <13.193652, 16.214859, 18.508694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.026774, 16.357410, 18.411581>,  <12.748646, 16.594995, 18.249725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.026774, 16.357410, 18.411581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435796, -0.796149, -0.419795,
		0.571497, 0.115552, -0.812428,
		0.695322, -0.593965, 0.404640,
		13.235371, 16.179220, 18.532972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.072366, 16.164431, 17.653084>,  <12.748646, 16.594995, 18.249725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.072366, 16.164431, 17.653084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.123591, 15.979667, 18.004137>,  <13.154326, 15.868808, 18.214769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.123591, 15.979667, 18.004137>,  <13.072366, 16.164431, 17.653084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.123591, 15.979667, 18.004137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376653, -0.841269, -0.387812,
		0.917460, -0.280898, -0.281716,
		0.128063, -0.461911, 0.877632,
		13.162010, 15.841093, 18.267427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.311762, 15.461130, 17.428495>,  <13.072366, 16.164431, 17.653084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.311762, 15.461130, 17.428495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.190081, 15.455009, 17.809488>,  <13.117072, 15.451335, 18.038084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.190081, 15.455009, 17.809488>,  <13.311762, 15.461130, 17.428495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.190081, 15.455009, 17.809488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592081, -0.780246, -0.201635,
		0.746258, -0.625285, 0.228291,
		-0.304202, -0.015305, 0.952484,
		13.098820, 15.450418, 18.095234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.311700, 14.785212, 17.562752>,  <13.311762, 15.461130, 17.428495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.311700, 14.785212, 17.562752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.056707, 14.939547, 17.829510>,  <12.903711, 15.032147, 17.989565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.056707, 14.939547, 17.829510>,  <13.311700, 14.785212, 17.562752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.056707, 14.939547, 17.829510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591177, -0.800036, -0.102236,
		0.494092, -0.459425, 0.738107,
		-0.637482, 0.385838, 0.666893,
		12.865463, 15.055298, 18.029577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.138007, 14.189117, 17.826975>,  <13.311700, 14.785212, 17.562752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.138007, 14.189117, 17.826975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.859949, 14.454030, 17.938801>,  <12.693114, 14.612978, 18.005896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.859949, 14.454030, 17.938801>,  <13.138007, 14.189117, 17.826975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.859949, 14.454030, 17.938801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718144, -0.657236, -0.228712,
		0.032267, -0.359754, 0.932489,
		-0.695146, 0.662282, 0.279563,
		12.651405, 14.652715, 18.022669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.632033, 13.811897, 18.279469>,  <13.138007, 14.189117, 17.826975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.632033, 13.811897, 18.279469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.453183, 14.137197, 18.130497>,  <12.345873, 14.332377, 18.041115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.453183, 14.137197, 18.130497>,  <12.632033, 13.811897, 18.279469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.453183, 14.137197, 18.130497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865490, -0.498482, -0.049426,
		-0.225844, 0.300232, 0.926744,
		-0.447126, 0.813250, -0.372427,
		12.319045, 14.381172, 18.018768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.130675, 13.587561, 18.781504>,  <12.632033, 13.811897, 18.279469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.130675, 13.587561, 18.781504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.210645, 13.950932, 18.634649>,  <13.258626, 14.168954, 18.546535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.210645, 13.950932, 18.634649>,  <13.130675, 13.587561, 18.781504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.210645, 13.950932, 18.634649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768432, -0.377844, -0.516474,
		-0.607900, -0.178865, -0.773605,
		0.199923, 0.908428, -0.367137,
		13.270621, 14.223460, 18.524508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.913061, 13.613501, 18.790279>,  <13.130675, 13.587561, 18.781504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.913061, 13.613501, 18.790279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.167225, 13.346932, 18.946299>,  <14.319723, 13.186992, 19.039909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.167225, 13.346932, 18.946299>,  <13.913061, 13.613501, 18.790279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.167225, 13.346932, 18.946299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131642, 0.404245, 0.905128,
		-0.760871, -0.626473, 0.169132,
		0.635409, -0.666421, 0.390049,
		14.357848, 13.147006, 19.063313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.725863, 13.320351, 19.555401>,  <13.913061, 13.613501, 18.790279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.725863, 13.320351, 19.555401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.116658, 13.244603, 19.516134>,  <14.351135, 13.199155, 19.492575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.116658, 13.244603, 19.516134>,  <13.725863, 13.320351, 19.555401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.116658, 13.244603, 19.516134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161076, 0.353291, 0.921542,
		-0.139831, -0.916146, 0.375664,
		0.976987, -0.189370, -0.098168,
		14.409754, 13.187792, 19.486685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.933819, 12.869099, 20.163643>,  <13.725863, 13.320351, 19.555401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.933819, 12.869099, 20.163643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.227475, 13.090341, 20.006105>,  <14.403669, 13.223085, 19.911583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.227475, 13.090341, 20.006105>,  <13.933819, 12.869099, 20.163643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.227475, 13.090341, 20.006105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102558, 0.483053, 0.869564,
		0.671207, -0.678774, 0.297904,
		0.734141, 0.553105, -0.393843,
		14.447718, 13.256272, 19.887953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.321081, 12.829872, 20.697037>,  <13.933819, 12.869099, 20.163643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.321081, 12.829872, 20.697037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.468625, 13.134596, 20.484024>,  <14.557151, 13.317430, 20.356216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.468625, 13.134596, 20.484024>,  <14.321081, 12.829872, 20.697037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.468625, 13.134596, 20.484024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149883, 0.516683, 0.842955,
		0.917321, -0.390749, 0.076401,
		0.368859, 0.761810, -0.532531,
		14.579283, 13.363139, 20.324265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.975933, 12.935145, 20.928223>,  <14.321081, 12.829872, 20.697037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.975933, 12.935145, 20.928223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.888513, 13.290903, 20.767618>,  <14.836061, 13.504357, 20.671255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.888513, 13.290903, 20.767618>,  <14.975933, 12.935145, 20.928223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.888513, 13.290903, 20.767618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306198, 0.453183, 0.837179,
		0.926541, 0.060024, -0.371374,
		-0.218551, 0.889395, -0.401513,
		14.822948, 13.557721, 20.647163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.416177, 13.333499, 21.136284>,  <14.975933, 12.935145, 20.928223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.416177, 13.333499, 21.136284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.165394, 13.612092, 20.996664>,  <15.014924, 13.779248, 20.912893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.165394, 13.612092, 20.996664>,  <15.416177, 13.333499, 21.136284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.165394, 13.612092, 20.996664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295769, 0.627295, 0.720432,
		0.720725, 0.348443, -0.599285,
		-0.626958, 0.696483, -0.349048,
		14.977306, 13.821037, 20.891949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.809144, 13.882144, 21.079790>,  <15.416177, 13.333499, 21.136284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.809144, 13.882144, 21.079790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.433565, 14.010402, 21.129696>,  <15.208218, 14.087357, 21.159639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.433565, 14.010402, 21.129696>,  <15.809144, 13.882144, 21.079790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.433565, 14.010402, 21.129696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296216, 0.568870, 0.767231,
		0.175033, 0.757346, -0.629118,
		-0.938946, 0.320646, 0.124767,
		15.151881, 14.106595, 21.167126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.964965, 14.513500, 21.199785>,  <15.809144, 13.882144, 21.079790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.964965, 14.513500, 21.199785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.587379, 14.470871, 21.324734>,  <15.360828, 14.445293, 21.399704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.587379, 14.470871, 21.324734>,  <15.964965, 14.513500, 21.199785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.587379, 14.470871, 21.324734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181542, 0.622748, 0.761070,
		-0.275639, 0.775130, -0.568503,
		-0.943963, -0.106574, 0.312372,
		15.304191, 14.438899, 21.418446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.746859, 15.197945, 21.441296>,  <15.964965, 14.513500, 21.199785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.746859, 15.197945, 21.441296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.475933, 14.950768, 21.600990>,  <15.313377, 14.802462, 21.696808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.475933, 14.950768, 21.600990>,  <15.746859, 15.197945, 21.441296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.475933, 14.950768, 21.600990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105690, 0.455310, 0.884037,
		-0.728062, 0.640967, -0.243078,
		-0.677315, -0.617943, 0.399238,
		15.272738, 14.765385, 21.720762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.361695, 15.692451, 21.820597>,  <15.746859, 15.197945, 21.441296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.361695, 15.692451, 21.820597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.295927, 15.328009, 21.971781>,  <15.256466, 15.109344, 22.062490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.295927, 15.328009, 21.971781>,  <15.361695, 15.692451, 21.820597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.295927, 15.328009, 21.971781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055854, 0.391159, 0.918626,
		-0.984808, 0.129930, -0.115203,
		-0.164420, -0.911105, 0.377960,
		15.246601, 15.054677, 22.085169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.919323, 15.855828, 22.390421>,  <15.361695, 15.692451, 21.820597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.919323, 15.855828, 22.390421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.104905, 15.504432, 22.436024>,  <15.216254, 15.293593, 22.463385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.104905, 15.504432, 22.436024>,  <14.919323, 15.855828, 22.390421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.104905, 15.504432, 22.436024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200226, 0.229359, 0.952525,
		-0.862934, -0.419101, 0.282309,
		0.463955, -0.878492, 0.114007,
		15.244092, 15.240884, 22.470226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.884417, 15.633018, 23.096172>,  <14.919323, 15.855828, 22.390421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.884417, 15.633018, 23.096172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.165662, 15.365781, 22.998779>,  <15.334409, 15.205439, 22.940344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.165662, 15.365781, 22.998779>,  <14.884417, 15.633018, 23.096172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.165662, 15.365781, 22.998779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348145, 0.024871, 0.937111,
		-0.620022, -0.743662, 0.250081,
		0.703113, -0.668093, -0.243481,
		15.376595, 15.165353, 22.925735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.883984, 15.091211, 23.575754>,  <14.884417, 15.633018, 23.096172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.883984, 15.091211, 23.575754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.248478, 15.094119, 23.411026>,  <15.467175, 15.095863, 23.312189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.248478, 15.094119, 23.411026>,  <14.883984, 15.091211, 23.575754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.248478, 15.094119, 23.411026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411500, -0.059381, 0.909473,
		-0.017840, -0.998209, -0.057103,
		0.911235, 0.007273, -0.411822,
		15.521849, 15.096300, 23.287479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.374241, 14.510335, 23.911114>,  <14.883984, 15.091211, 23.575754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.374241, 14.510335, 23.911114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.602723, 14.800422, 23.757343>,  <15.739813, 14.974474, 23.665081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.602723, 14.800422, 23.757343>,  <15.374241, 14.510335, 23.911114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.602723, 14.800422, 23.757343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487209, 0.077355, 0.869853,
		0.660568, -0.684162, -0.309146,
		0.571206, 0.725216, -0.384428,
		15.774085, 15.017986, 23.642015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.978068, 14.381140, 24.196238>,  <15.374241, 14.510335, 23.911114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.978068, 14.381140, 24.196238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.024113, 14.765013, 24.093664>,  <16.051739, 14.995337, 24.032120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.024113, 14.765013, 24.093664>,  <15.978068, 14.381140, 24.196238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.024113, 14.765013, 24.093664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590658, 0.141428, 0.794431,
		0.798669, -0.242911, -0.550565,
		0.115110, 0.959683, -0.256432,
		16.058645, 15.052917, 24.016735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.704397, 14.509717, 24.382267>,  <15.978068, 14.381140, 24.196238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.704397, 14.509717, 24.382267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.538841, 14.867558, 24.314877>,  <16.439508, 15.082262, 24.274443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.538841, 14.867558, 24.314877>,  <16.704397, 14.509717, 24.382267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.538841, 14.867558, 24.314877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555410, 0.394792, 0.731887,
		0.721260, 0.209347, -0.660271,
		-0.413888, 0.894602, -0.168475,
		16.414675, 15.135938, 24.264334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.309898, 14.899815, 24.207865>,  <16.704397, 14.509717, 24.382267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.309898, 14.899815, 24.207865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.016710, 15.146132, 24.323484>,  <16.840797, 15.293923, 24.392857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.016710, 15.146132, 24.323484>,  <17.309898, 14.899815, 24.207865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.016710, 15.146132, 24.323484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632480, 0.460474, 0.622843,
		0.250444, 0.639344, -0.726992,
		-0.732972, 0.615795, 0.289049,
		16.796820, 15.330871, 24.410198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.490990, 15.580019, 24.073574>,  <17.309898, 14.899815, 24.207865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.490990, 15.580019, 24.073574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.210848, 15.613216, 24.357155>,  <17.042763, 15.633135, 24.527304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.210848, 15.613216, 24.357155>,  <17.490990, 15.580019, 24.073574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.210848, 15.613216, 24.357155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643885, 0.502142, 0.577292,
		-0.308084, 0.860794, -0.405115,
		-0.700355, 0.082993, 0.708954,
		17.000742, 15.638114, 24.569841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.507442, 16.288071, 24.320368>,  <17.490990, 15.580019, 24.073574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.507442, 16.288071, 24.320368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.300993, 16.111799, 24.614149>,  <17.177124, 16.006037, 24.790417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.300993, 16.111799, 24.614149>,  <17.507442, 16.288071, 24.320368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.300993, 16.111799, 24.614149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261517, 0.735463, 0.625063,
		-0.815613, 0.514681, -0.264345,
		-0.516124, -0.440679, 0.734451,
		17.146156, 15.979595, 24.834484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.201645, 16.892225, 24.732004>,  <17.507442, 16.288071, 24.320368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.201645, 16.892225, 24.732004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.161028, 16.558588, 24.948883>,  <17.136658, 16.358406, 25.079010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.161028, 16.558588, 24.948883>,  <17.201645, 16.892225, 24.732004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.161028, 16.558588, 24.948883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223728, 0.511906, 0.829396,
		-0.969347, 0.205525, 0.134629,
		-0.101544, -0.834094, 0.542196,
		17.130564, 16.308359, 25.111542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.888927, 17.161734, 25.339346>,  <17.201645, 16.892225, 24.732004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.888927, 17.161734, 25.339346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.045067, 16.812639, 25.456621>,  <17.138750, 16.603182, 25.526985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.045067, 16.812639, 25.456621>,  <16.888927, 17.161734, 25.339346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.045067, 16.812639, 25.456621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334069, 0.431012, 0.838228,
		-0.857919, -0.229258, 0.459800,
		0.390350, -0.872737, 0.293186,
		17.162172, 16.550817, 25.544577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.661825, 16.995384, 26.028526>,  <16.888927, 17.161734, 25.339346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.661825, 16.995384, 26.028526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.015150, 16.831947, 25.936602>,  <17.227144, 16.733885, 25.881447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.015150, 16.831947, 25.936602>,  <16.661825, 16.995384, 26.028526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.015150, 16.831947, 25.936602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428965, 0.506767, 0.747781,
		-0.189078, -0.759104, 0.622905,
		0.883311, -0.408593, -0.229810,
		17.280144, 16.709370, 25.867659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.038427, 17.065958, 26.675217>,  <16.661825, 16.995384, 26.028526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.038427, 17.065958, 26.675217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.319744, 16.952246, 26.414583>,  <17.488535, 16.884018, 26.258204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.319744, 16.952246, 26.414583>,  <17.038427, 17.065958, 26.675217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.319744, 16.952246, 26.414583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709326, 0.341592, 0.616580,
		0.047295, -0.895823, 0.441887,
		0.703292, -0.284281, -0.651586,
		17.530731, 16.866961, 26.219107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.500969, 16.683382, 27.040100>,  <17.038427, 17.065958, 26.675217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.500969, 16.683382, 27.040100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.715782, 16.810789, 26.727654>,  <17.844669, 16.887234, 26.540186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.715782, 16.810789, 26.727654>,  <17.500969, 16.683382, 27.040100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.715782, 16.810789, 26.727654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771658, 0.188600, 0.607433,
		0.340796, -0.928966, -0.144501,
		0.537032, 0.318516, -0.781117,
		17.876892, 16.906343, 26.493319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.153114, 16.477577, 27.102184>,  <17.500969, 16.683382, 27.040100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.153114, 16.477577, 27.102184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.210777, 16.744034, 26.809481>,  <18.245375, 16.903908, 26.633858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.210777, 16.744034, 26.809481>,  <18.153114, 16.477577, 27.102184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.210777, 16.744034, 26.809481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705480, 0.449371, 0.548055,
		0.693914, -0.595247, -0.405172,
		0.144156, 0.666143, -0.731759,
		18.254025, 16.943876, 26.589952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.821650, 16.385120, 27.025642>,  <18.153114, 16.477577, 27.102184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.821650, 16.385120, 27.025642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.689850, 16.747795, 26.920309>,  <18.610769, 16.965401, 26.857109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.689850, 16.747795, 26.920309>,  <18.821650, 16.385120, 27.025642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.689850, 16.747795, 26.920309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673476, 0.421182, 0.607483,
		0.661710, 0.022815, -0.749412,
		-0.329499, 0.906689, -0.263335,
		18.591000, 17.019802, 26.841309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.404131, 16.847250, 27.078140>,  <18.821650, 16.385120, 27.025642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.404131, 16.847250, 27.078140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.096420, 17.102531, 27.066063>,  <18.911795, 17.255701, 27.058817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.096420, 17.102531, 27.066063>,  <19.404131, 16.847250, 27.078140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.096420, 17.102531, 27.066063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505810, 0.637202, 0.581490,
		0.390349, 0.432053, -0.812993,
		-0.769275, 0.638204, -0.030194,
		18.865639, 17.293993, 27.057005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
