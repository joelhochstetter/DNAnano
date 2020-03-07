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
	<2.919031, 0.164395, 2.701136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.979794, 0.454895, 2.969311>,  <3.016251, 0.629195, 3.130216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.979794, 0.454895, 2.969311>,  <2.919031, 0.164395, 2.701136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.979794, 0.454895, 2.969311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755073, 0.352437, -0.552859,
		-0.637801, 0.590211, -0.494834,
		0.151906, 0.726250, 0.670437,
		3.025365, 0.672770, 3.170442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.028460, 0.865323, 2.340899>,  <2.919031, 0.164395, 2.701136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.028460, 0.865323, 2.340899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.197960, 0.818645, 2.700191>,  <3.299660, 0.790639, 2.915767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.197960, 0.818645, 2.700191>,  <3.028460, 0.865323, 2.340899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.197960, 0.818645, 2.700191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887265, 0.252954, -0.385714,
		-0.182201, 0.960415, 0.210727,
		0.423750, -0.116693, 0.898231,
		3.325085, 0.783638, 2.969661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.581619, 1.279114, 2.462532>,  <3.028460, 0.865323, 2.340899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.581619, 1.279114, 2.462532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.640776, 0.969833, 2.709202>,  <3.676270, 0.784265, 2.857204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.640776, 0.969833, 2.709202>,  <3.581619, 1.279114, 2.462532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.640776, 0.969833, 2.709202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984128, 0.053216, -0.169291,
		0.098079, 0.631924, 0.768799,
		0.147891, -0.773201, 0.616675,
		3.685143, 0.737873, 2.894204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.013811, 1.471437, 3.007660>,  <3.581619, 1.279114, 2.462532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.013811, 1.471437, 3.007660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.027386, 1.077782, 2.938007>,  <4.035531, 0.841589, 2.896216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.027386, 1.077782, 2.938007>,  <4.013811, 1.471437, 3.007660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.027386, 1.077782, 2.938007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980971, 0.066128, -0.182547,
		0.191167, -0.164623, 0.967654,
		0.033937, -0.984137, -0.174132,
		4.037567, 0.782540, 2.885768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.494979, 1.239513, 3.465877>,  <4.013811, 1.471437, 3.007660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.494979, 1.239513, 3.465877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.476099, 0.977848, 3.163925>,  <4.464771, 0.820849, 2.982754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.476099, 0.977848, 3.163925>,  <4.494979, 1.239513, 3.465877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.476099, 0.977848, 3.163925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980347, 0.114581, -0.160592,
		0.191548, -0.747624, 0.635899,
		-0.047201, -0.654163, -0.754879,
		4.461939, 0.781599, 2.937461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.071227, 0.884347, 3.565468>,  <4.494979, 1.239513, 3.465877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.071227, 0.884347, 3.565468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.964239, 0.806503, 3.187984>,  <4.900046, 0.759797, 2.961494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.964239, 0.806503, 3.187984>,  <5.071227, 0.884347, 3.565468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.964239, 0.806503, 3.187984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931572, 0.198057, -0.304872,
		0.246239, -0.960678, 0.128317,
		-0.267470, -0.194608, -0.943709,
		4.883998, 0.748121, 2.904872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.610601, 0.382222, 3.250354>,  <5.071227, 0.884347, 3.565468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.610601, 0.382222, 3.250354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.429089, 0.531437, 2.926643>,  <5.320181, 0.620966, 2.732417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.429089, 0.531437, 2.926643>,  <5.610601, 0.382222, 3.250354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.429089, 0.531437, 2.926643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889545, 0.243488, -0.386554,
		0.052850, -0.895297, -0.442323,
		-0.453781, 0.373036, -0.809275,
		5.292954, 0.643348, 2.683861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.715311, -0.042365, 2.523670>,  <5.610601, 0.382222, 3.250354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.715311, -0.042365, 2.523670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.674940, 0.355438, 2.512581>,  <5.650718, 0.594120, 2.505928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.674940, 0.355438, 2.512581>,  <5.715311, -0.042365, 2.523670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.674940, 0.355438, 2.512581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954374, 0.088908, -0.285070,
		-0.281040, -0.055228, -0.958106,
		-0.100927, 0.994508, -0.027722,
		5.644662, 0.653790, 2.504264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.622782, 2.120963, 2.484807> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.429070, 2.386440, 2.712837>,  <1.312842, 2.545727, 2.849655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.429070, 2.386440, 2.712837>,  <1.622782, 2.120963, 2.484807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.429070, 2.386440, 2.712837> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372797, 0.432935, -0.820725,
		-0.791515, -0.609983, 0.037761,
		-0.484280, 0.663693, 0.570074,
		1.283785, 2.585548, 2.883860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.018140, 2.167399, 2.233101>,  <1.622782, 2.120963, 2.484807>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.018140, 2.167399, 2.233101> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.063396, 2.512562, 2.430115>,  <1.090550, 2.719659, 2.548323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.063396, 2.512562, 2.430115>,  <1.018140, 2.167399, 2.233101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.063396, 2.512562, 2.430115> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032470, 0.498665, -0.866187,
		-0.993048, 0.082009, 0.084438,
		0.113141, 0.862907, 0.492535,
		1.097339, 2.771434, 2.577875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.369460, 1.860348, 2.286149>,  <1.018140, 2.167399, 2.233101>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.369460, 1.860348, 2.286149> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.542126, 1.525890, 2.150780>,  <0.645725, 1.325216, 2.069558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.542126, 1.525890, 2.150780>,  <0.369460, 1.860348, 2.286149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.542126, 1.525890, 2.150780> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799846, -0.528255, 0.284945,
		-0.417028, 0.147686, -0.896814,
		0.431664, -0.836143, -0.338423,
		0.671625, 1.275047, 2.049253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.063562, 1.607319, 1.817029>,  <0.369460, 1.860348, 2.286149>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.063562, 1.607319, 1.817029> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.152596, 1.299278, 1.952629>,  <0.282290, 1.114454, 2.033989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.152596, 1.299278, 1.952629>,  <-0.063562, 1.607319, 1.817029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.152596, 1.299278, 1.952629> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841074, -0.482961, 0.243604,
		-0.023876, -0.416766, -0.908700,
		0.540393, -0.770101, 0.339000,
		0.314713, 1.068248, 2.054329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.443478, 1.080511, 1.693101>,  <-0.063562, 1.607319, 1.817029>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.443478, 1.080511, 1.693101> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.196472, 0.941517, 1.975357>,  <-0.048268, 0.858121, 2.144711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.196472, 0.941517, 1.975357>,  <-0.443478, 1.080511, 1.693101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.196472, 0.941517, 1.975357> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757059, -0.505962, 0.413357,
		0.213392, -0.789466, -0.575506,
		0.617516, -0.347485, 0.705641,
		-0.011217, 0.837271, 2.187049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.548234, 0.401829, 1.696912>,  <-0.443478, 1.080511, 1.693101>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.548234, 0.401829, 1.696912> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.402435, 0.492088, 2.058292>,  <-0.314956, 0.546244, 2.275121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.402435, 0.492088, 2.058292>,  <-0.548234, 0.401829, 1.696912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.402435, 0.492088, 2.058292> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733145, -0.528647, 0.427822,
		0.574144, -0.818300, -0.027256,
		0.364495, 0.225649, 0.903452,
		-0.293087, 0.559783, 2.329328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.617090, -0.218991, 2.125187>,  <-0.548234, 0.401829, 1.696912>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.617090, -0.218991, 2.125187> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.594688, 0.093628, 2.373718>,  <-0.581247, 0.281199, 2.522837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.594688, 0.093628, 2.373718>,  <-0.617090, -0.218991, 2.125187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.594688, 0.093628, 2.373718> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843395, -0.296030, 0.448388,
		0.534367, -0.549136, 0.642574,
		0.056005, 0.781548, 0.621327,
		-0.577887, 0.328092, 2.560116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.791156, -0.531435, 2.812526>,  <-0.617090, -0.218991, 2.125187>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.791156, -0.531435, 2.812526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.855831, -0.136856, 2.823681>,  <-0.894637, 0.099891, 2.830374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.855831, -0.136856, 2.823681>,  <-0.791156, -0.531435, 2.812526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.855831, -0.136856, 2.823681> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.938625, -0.162453, 0.304289,
		0.304695, 0.023025, 0.952172,
		-0.161689, 0.986448, 0.027886,
		-0.904338, 0.159078, 2.832047>
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
