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
	<5.408115, 4.434073, -0.831866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.523373, 4.751160, -0.616989>,  <5.592527, 4.941411, -0.488063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.523373, 4.751160, -0.616989>,  <5.408115, 4.434073, -0.831866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.523373, 4.751160, -0.616989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820660, -0.084652, 0.565112,
		0.493448, -0.603684, 0.626158,
		0.288143, 0.792716, 0.537191,
		5.609816, 4.988975, -0.455832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.444553, 4.174750, -0.143938>,  <5.408115, 4.434073, -0.831866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.444553, 4.174750, -0.143938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.351986, 4.560986, -0.191410>,  <5.296446, 4.792727, -0.219893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.351986, 4.560986, -0.191410>,  <5.444553, 4.174750, -0.143938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.351986, 4.560986, -0.191410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.838587, -0.136148, 0.527480,
		0.493170, 0.221591, 0.841237,
		-0.231417, 0.965589, -0.118679,
		5.282561, 4.850662, -0.227014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.441235, 4.532242, 0.521435>,  <5.444553, 4.174750, -0.143938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.441235, 4.532242, 0.521435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.203255, 4.703617, 0.249413>,  <5.060467, 4.806442, 0.086199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.203255, 4.703617, 0.249413>,  <5.441235, 4.532242, 0.521435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.203255, 4.703617, 0.249413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789124, -0.150608, 0.595484,
		0.152705, 0.890932, 0.427693,
		-0.594949, 0.428436, -0.680057,
		5.024770, 4.832148, 0.045395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.056890, 5.016212, 0.848576>,  <5.441235, 4.532242, 0.521435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.056890, 5.016212, 0.848576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.818066, 4.948483, 0.534927>,  <4.674771, 4.907845, 0.346738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.818066, 4.948483, 0.534927>,  <5.056890, 5.016212, 0.848576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.818066, 4.948483, 0.534927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787455, -0.062809, 0.613164,
		-0.153073, 0.983557, -0.095834,
		-0.597062, -0.169324, -0.784121,
		4.638947, 4.897686, 0.299691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.477324, 5.321844, 0.970349>,  <5.056890, 5.016212, 0.848576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.477324, 5.321844, 0.970349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.366226, 5.059669, 0.689419>,  <4.299567, 4.902365, 0.520861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.366226, 5.059669, 0.689419>,  <4.477324, 5.321844, 0.970349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.366226, 5.059669, 0.689419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870557, -0.137395, 0.472496,
		-0.406187, 0.742648, -0.532434,
		-0.277745, -0.655436, -0.702325,
		4.282903, 4.863039, 0.478721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.803283, 5.485253, 0.688577>,  <4.477324, 5.321844, 0.970349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.803283, 5.485253, 0.688577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.826859, 5.100739, 0.580906>,  <3.841004, 4.870030, 0.516303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.826859, 5.100739, 0.580906>,  <3.803283, 5.485253, 0.688577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.826859, 5.100739, 0.580906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.907758, -0.163799, 0.386194,
		-0.415334, 0.221586, -0.882268,
		0.058940, -0.961286, -0.269178,
		3.844540, 4.812353, 0.500153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.117858, 5.292878, 0.458089>,  <3.803283, 5.485253, 0.688577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.117858, 5.292878, 0.458089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.298210, 4.950424, 0.559078>,  <3.406421, 4.744952, 0.619672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.298210, 4.950424, 0.559078>,  <3.117858, 5.292878, 0.458089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.298210, 4.950424, 0.559078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822881, -0.289112, 0.489163,
		-0.345796, -0.428309, -0.834851,
		0.450878, -0.856134, 0.252473,
		3.433474, 4.693584, 0.634820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.650284, 4.820344, 0.234540>,  <3.117858, 5.292878, 0.458089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.650284, 4.820344, 0.234540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.887302, 4.645950, 0.505482>,  <3.029513, 4.541314, 0.668047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.887302, 4.645950, 0.505482>,  <2.650284, 4.820344, 0.234540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.887302, 4.645950, 0.505482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803782, -0.264524, 0.532880,
		-0.053151, -0.860201, -0.507178,
		0.592545, -0.435984, 0.677354,
		3.065066, 4.515155, 0.708688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.272837, 5.068092, 1.385098> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.253578, 4.669910, 1.417971>,  <2.242023, 4.431002, 1.437694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.253578, 4.669910, 1.417971>,  <2.272837, 5.068092, 1.385098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.253578, 4.669910, 1.417971> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938404, -0.073267, -0.337684,
		0.342170, 0.060860, 0.937665,
		-0.048148, -0.995454, 0.082181,
		2.239134, 4.371274, 1.442625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.797202, 4.849366, 1.934025>,  <2.272837, 5.068092, 1.385098>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.797202, 4.849366, 1.934025> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.734581, 4.550076, 1.676142>,  <2.697008, 4.370501, 1.521412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.734581, 4.550076, 1.676142>,  <2.797202, 4.849366, 1.934025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.734581, 4.550076, 1.676142> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937985, 0.091794, -0.334302,
		0.309314, -0.657062, 0.687455,
		-0.156552, -0.748227, -0.644708,
		2.687615, 4.325607, 1.482729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.376487, 4.396637, 1.991762>,  <2.797202, 4.849366, 1.934025>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.376487, 4.396637, 1.991762> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.213722, 4.319355, 1.634642>,  <3.116063, 4.272985, 1.420369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.213722, 4.319355, 1.634642>,  <3.376487, 4.396637, 1.991762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.213722, 4.319355, 1.634642> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886973, 0.150116, -0.436742,
		0.218405, -0.969606, 0.110285,
		-0.406912, -0.193206, -0.892801,
		3.091649, 4.261393, 1.366801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.773855, 3.875168, 1.617787>,  <3.376487, 4.396637, 1.991762>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.773855, 3.875168, 1.617787> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.564339, 4.055069, 1.328411>,  <3.438629, 4.163010, 1.154786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.564339, 4.055069, 1.328411>,  <3.773855, 3.875168, 1.617787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.564339, 4.055069, 1.328411> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835562, 0.106002, -0.539072,
		-0.165764, -0.886840, -0.431320,
		-0.523791, 0.449753, -0.723439,
		3.407201, 4.189995, 1.111379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.923170, 3.551687, 0.964804>,  <3.773855, 3.875168, 1.617787>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.923170, 3.551687, 0.964804> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.772377, 3.899441, 0.837021>,  <3.681901, 4.108093, 0.760351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.772377, 3.899441, 0.837021>,  <3.923170, 3.551687, 0.964804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.772377, 3.899441, 0.837021> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809871, 0.142039, -0.569152,
		-0.449438, -0.473280, -0.757636,
		-0.376982, 0.869386, -0.319458,
		3.659282, 4.160256, 0.741184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.985709, 3.509101, 0.205398>,  <3.923170, 3.551687, 0.964804>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.985709, 3.509101, 0.205398> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.928375, 3.893265, 0.300953>,  <3.893975, 4.123763, 0.358286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.928375, 3.893265, 0.300953>,  <3.985709, 3.509101, 0.205398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.928375, 3.893265, 0.300953> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701805, 0.268829, -0.659697,
		-0.697800, 0.073096, -0.712553,
		-0.143334, 0.960410, 0.238888,
		3.885375, 4.181388, 0.372619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.952126, 3.976544, -0.466083>,  <3.985709, 3.509101, 0.205398>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.952126, 3.976544, -0.466083> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.033966, 4.220268, -0.159651>,  <4.083070, 4.366503, 0.024209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.033966, 4.220268, -0.159651>,  <3.952126, 3.976544, -0.466083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.033966, 4.220268, -0.159651> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725545, 0.430948, -0.536533,
		-0.657056, 0.665601, -0.353911,
		0.204600, 0.609311, 0.766080,
		4.095346, 4.403061, 0.070173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.860424, 4.639458, -0.679777>,  <3.952126, 3.976544, -0.466083>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.860424, 4.639458, -0.679777> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.121475, 4.671001, -0.378351>,  <4.278106, 4.689928, -0.197496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.121475, 4.671001, -0.378351>,  <3.860424, 4.639458, -0.679777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.121475, 4.671001, -0.378351> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527063, 0.667249, -0.526292,
		-0.544318, 0.740648, 0.393901,
		0.652627, 0.078859, 0.753564,
		4.317264, 4.694659, -0.152282>
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
