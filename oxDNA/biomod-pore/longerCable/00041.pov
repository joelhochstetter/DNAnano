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
	<24.076811, 35.313633, 35.293221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.331518, 35.010403, 35.236866>,  <24.484343, 34.828465, 35.203053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.331518, 35.010403, 35.236866>,  <24.076811, 35.313633, 35.293221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.331518, 35.010403, 35.236866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769717, 0.635723, 0.058244,
		0.045408, -0.145527, 0.988312,
		0.636768, -0.758075, -0.140882,
		24.522549, 34.782982, 35.194603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.707880, 35.504284, 35.748081>,  <24.076811, 35.313633, 35.293221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.707880, 35.504284, 35.748081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.830524, 35.215347, 35.500141>,  <24.904112, 35.041985, 35.351376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.830524, 35.215347, 35.500141>,  <24.707880, 35.504284, 35.748081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.830524, 35.215347, 35.500141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947346, 0.294753, 0.125120,
		0.092325, -0.625579, 0.774679,
		0.306611, -0.722338, -0.619853,
		24.922508, 34.998646, 35.314186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.377779, 35.296761, 35.987030>,  <24.707880, 35.504284, 35.748081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.377779, 35.296761, 35.987030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.388887, 35.217133, 35.595192>,  <25.395552, 35.169357, 35.360088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.388887, 35.217133, 35.595192>,  <25.377779, 35.296761, 35.987030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.388887, 35.217133, 35.595192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965303, 0.259889, -0.025447,
		0.259651, -0.944896, 0.199381,
		0.027772, -0.199070, -0.979592,
		25.397219, 35.157413, 35.301315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.079639, 35.108456, 35.822220>,  <25.377779, 35.296761, 35.987030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.079639, 35.108456, 35.822220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.921465, 35.206348, 35.468105>,  <25.826561, 35.265083, 35.255634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.921465, 35.206348, 35.468105>,  <26.079639, 35.108456, 35.822220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.921465, 35.206348, 35.468105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909955, 0.235499, -0.341353,
		0.124946, -0.940557, -0.315819,
		-0.395437, 0.244730, -0.885289,
		25.802834, 35.279766, 35.202518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.470127, 34.761795, 35.272404>,  <26.079639, 35.108456, 35.822220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.470127, 34.761795, 35.272404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.300966, 35.118389, 35.207405>,  <26.199469, 35.332344, 35.168404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.300966, 35.118389, 35.207405>,  <26.470127, 34.761795, 35.272404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.300966, 35.118389, 35.207405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904840, 0.405708, -0.129093,
		-0.049158, -0.201630, -0.978227,
		-0.422904, 0.891485, -0.162500,
		26.174095, 35.385834, 35.158653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.582279, 34.995941, 34.492733>,  <26.470127, 34.761795, 35.272404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.582279, 34.995941, 34.492733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.555044, 35.273941, 34.779045>,  <26.538704, 35.440742, 34.950832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.555044, 35.273941, 34.779045>,  <26.582279, 34.995941, 34.492733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.555044, 35.273941, 34.779045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980591, 0.178836, -0.080369,
		-0.183864, 0.696415, -0.693686,
		-0.068085, 0.694999, 0.715780,
		26.534618, 35.482441, 34.993778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.847677, 35.662258, 34.316860>,  <26.582279, 34.995941, 34.492733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.847677, 35.662258, 34.316860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.864267, 35.653896, 34.716427>,  <26.874222, 35.648880, 34.956169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.864267, 35.653896, 34.716427>,  <26.847677, 35.662258, 34.316860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.864267, 35.653896, 34.716427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972382, 0.230674, -0.035545,
		-0.229682, 0.972807, 0.029892,
		0.041474, -0.020902, 0.998921,
		26.876709, 35.647625, 35.016102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.332115, 36.233238, 34.434464>,  <26.847677, 35.662258, 34.316860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.332115, 36.233238, 34.434464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.328621, 35.993721, 34.754807>,  <27.326525, 35.850010, 34.947014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.328621, 35.993721, 34.754807>,  <27.332115, 36.233238, 34.434464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.328621, 35.993721, 34.754807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998894, 0.031773, 0.034652,
		-0.046194, 0.800274, 0.597852,
		-0.008736, -0.598792, 0.800857,
		27.326000, 35.814083, 34.995064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.725437, 36.535233, 34.940975>,  <27.332115, 36.233238, 34.434464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.725437, 36.535233, 34.940975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.745089, 36.139973, 34.999146>,  <27.756880, 35.902817, 35.034046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.745089, 36.139973, 34.999146>,  <27.725437, 36.535233, 34.940975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.745089, 36.139973, 34.999146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997167, 0.056830, 0.049280,
		-0.056961, 0.142591, 0.988141,
		0.049129, -0.988149, 0.145424,
		27.759827, 35.843529, 35.042774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.326187, 36.473732, 35.242573>,  <27.725437, 36.535233, 34.940975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.326187, 36.473732, 35.242573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.261349, 36.085018, 35.174034>,  <28.222446, 35.851791, 35.132912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.261349, 36.085018, 35.174034>,  <28.326187, 36.473732, 35.242573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.261349, 36.085018, 35.174034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986774, -0.159891, -0.026681,
		-0.001468, -0.173401, 0.984850,
		-0.162095, -0.971785, -0.171343,
		28.212721, 35.793484, 35.122631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.634773, 36.074150, 35.832039>,  <28.326187, 36.473732, 35.242573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.634773, 36.074150, 35.832039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.580860, 35.838425, 35.513405>,  <28.548512, 35.696991, 35.322224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.580860, 35.838425, 35.513405>,  <28.634773, 36.074150, 35.832039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.580860, 35.838425, 35.513405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977186, -0.212220, -0.008341,
		-0.164136, -0.779535, 0.604470,
		-0.134783, -0.589311, -0.796584,
		28.540424, 35.661633, 35.274429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.168940, 35.467613, 35.816521>,  <28.634773, 36.074150, 35.832039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.168940, 35.467613, 35.816521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.060598, 35.529697, 35.436512>,  <28.995594, 35.566948, 35.208508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.060598, 35.529697, 35.436512>,  <29.168940, 35.467613, 35.816521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.060598, 35.529697, 35.436512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956980, -0.063273, -0.283172,
		-0.104061, -0.985854, -0.131392,
		-0.270852, 0.155206, -0.950026,
		28.979343, 35.576260, 35.151505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.448582, 34.911793, 35.415211>,  <29.168940, 35.467613, 35.816521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.448582, 34.911793, 35.415211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.400164, 35.248760, 35.205189>,  <29.371113, 35.450939, 35.079174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.400164, 35.248760, 35.205189>,  <29.448582, 34.911793, 35.415211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.400164, 35.248760, 35.205189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981476, 0.022436, -0.190269,
		-0.148505, -0.538361, -0.829526,
		-0.121045, 0.842416, -0.525056,
		29.363850, 35.501484, 35.047672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.681740, 34.836487, 34.805229>,  <29.448582, 34.911793, 35.415211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.681740, 34.836487, 34.805229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.706137, 35.225124, 34.896698>,  <29.720776, 35.458305, 34.951580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.706137, 35.225124, 34.896698>,  <29.681740, 34.836487, 34.805229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.706137, 35.225124, 34.896698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990323, -0.030293, -0.135437,
		-0.124662, 0.234717, -0.964037,
		0.060993, 0.971592, 0.228669,
		29.724434, 35.516602, 34.965298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.837978, 35.344048, 34.363434>,  <29.681740, 34.836487, 34.805229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.837978, 35.344048, 34.363434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.565601, 35.052151, 34.388081>,  <29.402176, 34.877014, 34.402870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.565601, 35.052151, 34.388081>,  <29.837978, 35.344048, 34.363434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.565601, 35.052151, 34.388081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709714, 0.678319, 0.190235,
		-0.180620, 0.085807, -0.979803,
		-0.680942, -0.729740, 0.061620,
		29.361319, 34.833229, 34.406567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.090271, 35.343136, 34.129971>,  <29.837978, 35.344048, 34.363434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.090271, 35.343136, 34.129971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.038418, 35.267208, 34.519260>,  <29.007307, 35.221653, 34.752834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.038418, 35.267208, 34.519260>,  <29.090271, 35.343136, 34.129971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.038418, 35.267208, 34.519260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.939419, 0.337605, -0.059283,
		-0.317313, -0.921950, -0.222081,
		-0.129631, -0.189816, 0.973224,
		28.999529, 35.210262, 34.811226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.482042, 34.908203, 34.206196>,  <29.090271, 35.343136, 34.129971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.482042, 34.908203, 34.206196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.502821, 35.112404, 34.549519>,  <28.515287, 35.234924, 34.755512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.502821, 35.112404, 34.549519>,  <28.482042, 34.908203, 34.206196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.502821, 35.112404, 34.549519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.997075, 0.074763, 0.015876,
		-0.056065, -0.856619, 0.512894,
		0.051946, 0.510504, 0.858305,
		28.518404, 35.265556, 34.807011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.917427, 34.645580, 34.564987>,  <28.482042, 34.908203, 34.206196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.917427, 34.645580, 34.564987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.020918, 34.978622, 34.760876>,  <28.083012, 35.178448, 34.878410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.020918, 34.978622, 34.760876>,  <27.917427, 34.645580, 34.564987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.020918, 34.978622, 34.760876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.943875, 0.110144, 0.311397,
		0.205331, -0.542804, 0.814373,
		0.258725, 0.832606, 0.489723,
		28.098536, 35.228405, 34.907795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.616114, 34.571781, 35.231270>,  <27.917427, 34.645580, 34.564987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.616114, 34.571781, 35.231270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.677385, 34.966358, 35.207710>,  <27.714149, 35.203106, 35.193573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.677385, 34.966358, 35.207710>,  <27.616114, 34.571781, 35.231270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.677385, 34.966358, 35.207710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919059, 0.164113, 0.358325,
		0.363133, -0.000753, 0.931737,
		0.153180, 0.986441, -0.058903,
		27.723339, 35.262291, 35.190041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.451696, 34.965431, 35.951111>,  <27.616114, 34.571781, 35.231270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.451696, 34.965431, 35.951111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.424242, 35.227051, 35.649776>,  <27.407768, 35.384022, 35.468975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.424242, 35.227051, 35.649776>,  <27.451696, 34.965431, 35.951111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.424242, 35.227051, 35.649776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871845, 0.327732, 0.363976,
		0.484949, 0.681771, 0.547734,
		-0.068638, 0.654049, -0.753332,
		27.403650, 35.423267, 35.423779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.475767, 35.787922, 36.105968>,  <27.451696, 34.965431, 35.951111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.475767, 35.787922, 36.105968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.223686, 35.762676, 35.796425>,  <27.072437, 35.747528, 35.610699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.223686, 35.762676, 35.796425>,  <27.475767, 35.787922, 36.105968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.223686, 35.762676, 35.796425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719330, 0.422616, 0.551326,
		0.292249, 0.904108, -0.311735,
		-0.630203, -0.063116, -0.773861,
		27.034626, 35.743740, 35.564266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.377905, 36.162384, 36.775703>,  <27.475767, 35.787922, 36.105968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.377905, 36.162384, 36.775703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.016283, 36.323303, 36.833458>,  <26.799311, 36.419853, 36.868111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.016283, 36.323303, 36.833458>,  <27.377905, 36.162384, 36.775703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.016283, 36.323303, 36.833458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427420, 0.850433, 0.306718,
		0.000600, 0.339003, -0.940785,
		-0.904053, 0.402294, 0.144387,
		26.745068, 36.443993, 36.876774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.204605, 36.800838, 36.273907>,  <27.377905, 36.162384, 36.775703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.204605, 36.800838, 36.273907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.045561, 36.821415, 36.640350>,  <26.950134, 36.833759, 36.860218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.045561, 36.821415, 36.640350>,  <27.204605, 36.800838, 36.273907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.045561, 36.821415, 36.640350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574578, 0.792390, 0.204886,
		-0.715378, 0.607842, -0.344619,
		-0.397611, 0.051440, 0.916111,
		26.926277, 36.836845, 36.915184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.963936, 37.411873, 36.246574>,  <27.204605, 36.800838, 36.273907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.963936, 37.411873, 36.246574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.045019, 37.308243, 36.624313>,  <27.093668, 37.246063, 36.850956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.045019, 37.308243, 36.624313>,  <26.963936, 37.411873, 36.246574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.045019, 37.308243, 36.624313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541634, 0.833081, 0.112289,
		-0.815808, 0.488728, 0.309196,
		0.202707, -0.259078, 0.944346,
		27.105831, 37.230518, 36.907616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.839174, 37.945442, 36.658161>,  <26.963936, 37.411873, 36.246574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.839174, 37.945442, 36.658161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.144955, 37.705124, 36.751671>,  <27.328423, 37.560932, 36.807777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.144955, 37.705124, 36.751671>,  <26.839174, 37.945442, 36.658161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.144955, 37.705124, 36.751671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622346, 0.782361, -0.024431,
		-0.168218, 0.164165, 0.971984,
		0.764453, -0.600800, 0.233774,
		27.374290, 37.524883, 36.821804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.162464, 38.207691, 37.358994>,  <26.839174, 37.945442, 36.658161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.162464, 38.207691, 37.358994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.437153, 38.024513, 37.133179>,  <27.601965, 37.914608, 36.997688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.437153, 38.024513, 37.133179>,  <27.162464, 38.207691, 37.358994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.437153, 38.024513, 37.133179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610109, 0.785313, 0.105122,
		0.395198, -0.416619, 0.818686,
		0.686721, -0.457944, -0.564537,
		27.643169, 37.887131, 36.963818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.778404, 38.232571, 37.696301>,  <27.162464, 38.207691, 37.358994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.778404, 38.232571, 37.696301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.934557, 38.234756, 37.328045>,  <28.028250, 38.236069, 37.107094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.934557, 38.234756, 37.328045>,  <27.778404, 38.232571, 37.696301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.934557, 38.234756, 37.328045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425846, 0.885507, 0.185827,
		0.816245, -0.464593, 0.343362,
		0.390384, 0.005460, -0.920636,
		28.051672, 38.236393, 37.051853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.481457, 38.309479, 37.758640>,  <27.778404, 38.232571, 37.696301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.481457, 38.309479, 37.758640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.388191, 38.436268, 37.390911>,  <28.332232, 38.512341, 37.170273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.388191, 38.436268, 37.390911>,  <28.481457, 38.309479, 37.758640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.388191, 38.436268, 37.390911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651912, 0.752434, 0.094092,
		0.721558, -0.577381, -0.382081,
		-0.233163, 0.316976, -0.919326,
		28.318243, 38.531361, 37.115112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.112486, 38.467873, 37.450195>,  <28.481457, 38.309479, 37.758640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.112486, 38.467873, 37.450195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.841923, 38.683323, 37.249256>,  <28.679585, 38.812592, 37.128693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.841923, 38.683323, 37.249256>,  <29.112486, 38.467873, 37.450195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.841923, 38.683323, 37.249256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591584, 0.803612, 0.065083,
		0.438751, -0.253161, -0.862210,
		-0.676406, 0.538625, -0.502352,
		28.639002, 38.844910, 37.098549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.466219, 38.750927, 36.867332>,  <29.112486, 38.467873, 37.450195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.466219, 38.750927, 36.867332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.138103, 38.962639, 36.954044>,  <28.941235, 39.089664, 37.006073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.138103, 38.962639, 36.954044>,  <29.466219, 38.750927, 36.867332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.138103, 38.962639, 36.954044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538456, 0.842432, -0.019335,
		-0.192857, 0.100867, -0.976029,
		-0.820287, 0.529277, 0.216781,
		28.892017, 39.121422, 37.019077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.369839, 39.305241, 36.436127>,  <29.466219, 38.750927, 36.867332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.369839, 39.305241, 36.436127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.185112, 39.426071, 36.769707>,  <29.074276, 39.498569, 36.969856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.185112, 39.426071, 36.769707>,  <29.369839, 39.305241, 36.436127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.185112, 39.426071, 36.769707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613242, 0.788037, 0.054150,
		-0.640828, 0.536423, -0.549172,
		-0.461815, 0.302074, 0.833953,
		29.046568, 39.516693, 37.019894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.316919, 40.071030, 36.400558>,  <29.369839, 39.305241, 36.436127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.316919, 40.071030, 36.400558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.291224, 39.976364, 36.788345>,  <29.275806, 39.919563, 37.021015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.291224, 39.976364, 36.788345>,  <29.316919, 40.071030, 36.400558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.291224, 39.976364, 36.788345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435826, 0.867276, 0.240599,
		-0.897735, 0.437975, 0.047431,
		-0.064240, -0.236666, 0.969465,
		29.271952, 39.905365, 37.079185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.051039, 40.683239, 36.746593>,  <29.316919, 40.071030, 36.400558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.051039, 40.683239, 36.746593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.235916, 40.458557, 37.021072>,  <29.346842, 40.323746, 37.185760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.235916, 40.458557, 37.021072>,  <29.051039, 40.683239, 36.746593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.235916, 40.458557, 37.021072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601876, 0.766984, 0.222444,
		-0.651248, 0.310191, 0.692574,
		0.462193, -0.561709, 0.686193,
		29.374575, 40.290043, 37.226929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.992531, 41.083069, 37.436806>,  <29.051039, 40.683239, 36.746593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.992531, 41.083069, 37.436806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.302925, 40.832401, 37.465458>,  <29.489162, 40.681999, 37.482651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.302925, 40.832401, 37.465458>,  <28.992531, 41.083069, 37.436806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.302925, 40.832401, 37.465458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569131, 0.744605, 0.348788,
		-0.271913, -0.229886, 0.934460,
		0.775985, -0.626670, 0.071632,
		29.535721, 40.644402, 37.486946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.275801, 41.087017, 38.150341>,  <28.992531, 41.083069, 37.436806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.275801, 41.087017, 38.150341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.572256, 40.957825, 37.914917>,  <29.750130, 40.880310, 37.773663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.572256, 40.957825, 37.914917>,  <29.275801, 41.087017, 38.150341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.572256, 40.957825, 37.914917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608735, 0.693003, 0.386249,
		0.283119, -0.644538, 0.710221,
		0.741138, -0.322982, -0.588556,
		29.794598, 40.860931, 37.738350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.976175, 41.506241, 38.352753>,  <29.275801, 41.087017, 38.150341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.976175, 41.506241, 38.352753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.359314, 41.472717, 38.242840>,  <30.589197, 41.452602, 38.176891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.359314, 41.472717, 38.242840>,  <29.976175, 41.506241, 38.352753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.359314, 41.472717, 38.242840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232354, -0.788497, -0.569459,
		-0.168935, 0.609301, -0.774734,
		0.957848, -0.083811, -0.274779,
		30.646667, 41.447575, 38.160408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.083723, 41.621395, 37.622414>,  <29.976175, 41.506241, 38.352753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.083723, 41.621395, 37.622414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.344946, 41.371754, 37.794003>,  <30.501678, 41.221970, 37.896957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.344946, 41.371754, 37.794003>,  <30.083723, 41.621395, 37.622414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.344946, 41.371754, 37.794003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438106, -0.773377, -0.458204,
		0.617722, 0.111298, -0.778481,
		0.653056, -0.624100, 0.428972,
		30.540863, 41.184525, 37.922695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.414234, 41.150822, 37.158520>,  <30.083723, 41.621395, 37.622414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.414234, 41.150822, 37.158520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.387995, 40.981934, 37.520168>,  <30.372252, 40.880600, 37.737156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.387995, 40.981934, 37.520168>,  <30.414234, 41.150822, 37.158520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.387995, 40.981934, 37.520168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488458, -0.776501, -0.398063,
		0.870118, -0.467735, -0.155301,
		-0.065597, -0.422220, 0.904117,
		30.368315, 40.855267, 37.791405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.592089, 40.408768, 37.077145>,  <30.414234, 41.150822, 37.158520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.592089, 40.408768, 37.077145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.366859, 40.495781, 37.396049>,  <30.231722, 40.547989, 37.587395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.366859, 40.495781, 37.396049>,  <30.592089, 40.408768, 37.077145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.366859, 40.495781, 37.396049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601854, -0.769057, -0.215230,
		0.566322, -0.601026, 0.563956,
		-0.563073, 0.217530, 0.797264,
		30.197937, 40.561039, 37.635227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.549210, 39.847797, 37.609653>,  <30.592089, 40.408768, 37.077145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.549210, 39.847797, 37.609653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.225914, 40.082485, 37.589638>,  <30.031937, 40.223297, 37.577629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.225914, 40.082485, 37.589638>,  <30.549210, 39.847797, 37.609653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.225914, 40.082485, 37.589638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585669, -0.809788, -0.035140,
		-0.061140, 0.000906, 0.998129,
		-0.808241, 0.586721, -0.050041,
		29.983442, 40.258503, 37.574627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.985600, 39.746857, 38.192574>,  <30.549210, 39.847797, 37.609653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.985600, 39.746857, 38.192574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.795071, 39.891834, 37.872135>,  <29.680754, 39.978821, 37.679871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.795071, 39.891834, 37.872135>,  <29.985600, 39.746857, 38.192574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.795071, 39.891834, 37.872135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702357, -0.704953, 0.098669,
		-0.528973, 0.609653, 0.590349,
		-0.476322, 0.362442, -0.801095,
		29.652174, 40.000568, 37.631805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.146589, 39.788082, 38.369518>,  <29.985600, 39.746857, 38.192574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.146589, 39.788082, 38.369518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.190487, 39.804459, 37.972271>,  <29.216825, 39.814285, 37.733925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.190487, 39.804459, 37.972271>,  <29.146589, 39.788082, 38.369518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.190487, 39.804459, 37.972271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731971, -0.672622, -0.108615,
		-0.672439, 0.738853, -0.043848,
		0.109744, 0.040941, -0.993116,
		29.223410, 39.816742, 37.674335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.566837, 39.394154, 38.240910>,  <29.146589, 39.788082, 38.369518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.566837, 39.394154, 38.240910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.731003, 39.449844, 37.880424>,  <28.829502, 39.483257, 37.664135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.731003, 39.449844, 37.880424>,  <28.566837, 39.394154, 38.240910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.731003, 39.449844, 37.880424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641945, -0.657799, -0.393963,
		-0.647663, 0.740215, -0.180595,
		0.410412, 0.139224, -0.901209,
		28.854126, 39.491611, 37.610062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.389675, 39.858604, 37.650269>,  <28.566837, 39.394154, 38.240910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.389675, 39.858604, 37.650269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.497593, 39.862045, 37.265118>,  <28.562344, 39.864109, 37.034027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.497593, 39.862045, 37.265118>,  <28.389675, 39.858604, 37.650269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.497593, 39.862045, 37.265118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625174, -0.758981, -0.181950,
		-0.732372, 0.651056, -0.199394,
		0.269796, 0.008599, -0.962879,
		28.578531, 39.864624, 36.976254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.787205, 39.850628, 37.112541>,  <28.389675, 39.858604, 37.650269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.787205, 39.850628, 37.112541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.117914, 39.677097, 36.969296>,  <28.316339, 39.572979, 36.883347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.117914, 39.677097, 36.969296>,  <27.787205, 39.850628, 37.112541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.117914, 39.677097, 36.969296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525673, -0.822478, -0.217251,
		-0.200293, 0.367868, -0.908050,
		0.826771, -0.433823, -0.358115,
		28.365946, 39.546951, 36.861862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.705420, 39.444073, 36.479004>,  <27.787205, 39.850628, 37.112541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.705420, 39.444073, 36.479004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.025427, 39.268597, 36.642723>,  <28.217432, 39.163311, 36.740955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.025427, 39.268597, 36.642723>,  <27.705420, 39.444073, 36.479004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.025427, 39.268597, 36.642723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398607, -0.898497, -0.183890,
		0.448421, -0.016032, -0.893679,
		0.800020, -0.438686, 0.409295,
		28.265432, 39.136990, 36.765511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.948828, 39.003857, 35.958317>,  <27.705420, 39.444073, 36.479004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.948828, 39.003857, 35.958317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.091881, 38.878948, 36.310360>,  <28.177713, 38.804001, 36.521584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.091881, 38.878948, 36.310360>,  <27.948828, 39.003857, 35.958317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.091881, 38.878948, 36.310360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284563, -0.934056, -0.215785,
		0.889451, -0.173273, -0.422911,
		0.357633, -0.312275, 0.880104,
		28.199171, 38.785267, 36.574390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.344572, 38.443752, 35.805328>,  <27.948828, 39.003857, 35.958317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.344572, 38.443752, 35.805328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.246370, 38.414909, 36.192013>,  <28.187449, 38.397602, 36.424023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.246370, 38.414909, 36.192013>,  <28.344572, 38.443752, 35.805328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.246370, 38.414909, 36.192013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253267, -0.957822, -0.135764,
		0.935726, -0.278166, 0.216888,
		-0.245505, -0.072108, 0.966710,
		28.172718, 38.393276, 36.482025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.264082, 37.747948, 35.880211>,  <28.344572, 38.443752, 35.805328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.264082, 37.747948, 35.880211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.175331, 37.894939, 36.241482>,  <28.122080, 37.983135, 36.458244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.175331, 37.894939, 36.241482>,  <28.264082, 37.747948, 35.880211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.175331, 37.894939, 36.241482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241033, -0.918191, 0.314370,
		0.944814, -0.147944, 0.292300,
		-0.221878, 0.367475, 0.903179,
		28.108768, 38.005180, 36.512436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.432426, 37.231716, 36.243885>,  <28.264082, 37.747948, 35.880211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.432426, 37.231716, 36.243885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.193844, 37.450176, 36.479160>,  <28.050695, 37.581253, 36.620323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.193844, 37.450176, 36.479160>,  <28.432426, 37.231716, 36.243885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.193844, 37.450176, 36.479160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419193, -0.836887, 0.351990,
		0.684485, -0.036618, 0.728107,
		-0.596454, 0.546149, 0.588187,
		28.014908, 37.614021, 36.655617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.467386, 36.897747, 36.816528>,  <28.432426, 37.231716, 36.243885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.467386, 36.897747, 36.816528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.124170, 37.102741, 36.803120>,  <27.918242, 37.225739, 36.795074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.124170, 37.102741, 36.803120>,  <28.467386, 36.897747, 36.816528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.124170, 37.102741, 36.803120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490554, -0.798495, 0.348944,
		0.152065, 0.315851, 0.936544,
		-0.858040, 0.512488, -0.033519,
		27.866758, 37.256489, 36.793064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.079800, 36.953922, 37.535965>,  <28.467386, 36.897747, 36.816528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.079800, 36.953922, 37.535965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.811642, 36.963783, 37.239326>,  <27.650747, 36.969700, 37.061344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.811642, 36.963783, 37.239326>,  <28.079800, 36.953922, 37.535965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.811642, 36.963783, 37.239326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548852, -0.689051, 0.473255,
		-0.499329, 0.724293, 0.475467,
		-0.670397, 0.024651, -0.741593,
		27.610523, 36.971180, 37.016850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.894089, 36.882435, 37.523956>,  <28.079800, 36.953922, 37.535965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.894089, 36.882435, 37.523956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.147539, 36.765270, 37.237537>,  <29.299610, 36.694969, 37.065685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.147539, 36.765270, 37.237537>,  <28.894089, 36.882435, 37.523956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.147539, 36.765270, 37.237537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047838, -0.938616, 0.341631,
		-0.772159, -0.182212, -0.608744,
		0.633626, -0.292915, -0.716044,
		29.337627, 36.677395, 37.022724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.958416, 36.306740, 37.931561>,  <28.894089, 36.882435, 37.523956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.958416, 36.306740, 37.931561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.788614, 36.352489, 38.290829>,  <28.686733, 36.379940, 38.506390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.788614, 36.352489, 38.290829>,  <28.958416, 36.306740, 37.931561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.788614, 36.352489, 38.290829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448692, -0.888191, -0.098960,
		0.786428, -0.445012, 0.428363,
		-0.424507, 0.114378, 0.898171,
		28.661263, 36.386803, 38.560280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.114834, 35.760155, 37.476006>,  <28.958416, 36.306740, 37.931561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.114834, 35.760155, 37.476006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.359148, 36.063347, 37.384434>,  <29.505737, 36.245262, 37.329491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.359148, 36.063347, 37.384434>,  <29.114834, 35.760155, 37.476006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.359148, 36.063347, 37.384434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791496, -0.576520, 0.202877,
		0.021795, -0.305111, -0.952067,
		0.610786, 0.757979, -0.228929,
		29.542383, 36.290741, 37.315754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.581556, 35.577541, 36.985592>,  <29.114834, 35.760155, 37.476006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.581556, 35.577541, 36.985592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.749777, 35.852890, 37.221989>,  <29.850710, 36.018101, 37.363827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.749777, 35.852890, 37.221989>,  <29.581556, 35.577541, 36.985592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.749777, 35.852890, 37.221989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746141, -0.633003, 0.206353,
		0.516150, 0.354184, -0.779835,
		0.420551, 0.688376, 0.590996,
		29.875942, 36.059402, 37.399288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.399958, 35.531109, 36.836430>,  <29.581556, 35.577541, 36.985592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.399958, 35.531109, 36.836430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.300364, 35.704769, 37.182728>,  <30.240606, 35.808964, 37.390507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.300364, 35.704769, 37.182728>,  <30.399958, 35.531109, 36.836430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.300364, 35.704769, 37.182728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780532, -0.439268, 0.444762,
		0.573389, 0.786484, -0.229497,
		-0.248988, 0.434151, 0.865747,
		30.225668, 35.835014, 37.442451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.904114, 36.105480, 37.143730>,  <30.399958, 35.531109, 36.836430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.904114, 36.105480, 37.143730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.734524, 35.915863, 37.452412>,  <30.632771, 35.802094, 37.637623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.734524, 35.915863, 37.452412>,  <30.904114, 36.105480, 37.143730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.734524, 35.915863, 37.452412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904870, -0.185815, 0.382991,
		-0.038157, 0.860674, 0.507724,
		-0.423974, -0.474039, 0.771708,
		30.607332, 35.773651, 37.683926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.133261, 36.465443, 37.691029>,  <30.904114, 36.105480, 37.143730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.133261, 36.465443, 37.691029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.080996, 36.070518, 37.727112>,  <31.049637, 35.833565, 37.748760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.080996, 36.070518, 37.727112>,  <31.133261, 36.465443, 37.691029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.080996, 36.070518, 37.727112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986791, -0.120723, 0.108023,
		-0.095762, 0.103131, 0.990047,
		-0.130662, -0.987314, 0.090208,
		31.041798, 35.774323, 37.754173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.492294, 36.185497, 38.376312>,  <31.133261, 36.465443, 37.691029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.492294, 36.185497, 38.376312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.471401, 35.921326, 38.076687>,  <31.458866, 35.762821, 37.896912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.471401, 35.921326, 38.076687>,  <31.492294, 36.185497, 38.376312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.471401, 35.921326, 38.076687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973089, -0.202234, 0.110450,
		-0.224431, -0.723141, 0.653221,
		-0.052233, -0.660431, -0.749068,
		31.455732, 35.723198, 37.851967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.638910, 35.501858, 38.528721>,  <31.492294, 36.185497, 38.376312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.638910, 35.501858, 38.528721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.759117, 35.587524, 38.156952>,  <31.831242, 35.638924, 37.933891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.759117, 35.587524, 38.156952>,  <31.638910, 35.501858, 38.528721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.759117, 35.587524, 38.156952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935607, -0.255490, 0.243647,
		-0.185276, -0.942792, -0.277158,
		0.300519, 0.214169, -0.929419,
		31.849274, 35.651775, 37.878128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.023418, 34.934135, 38.287518>,  <31.638910, 35.501858, 38.528721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.023418, 34.934135, 38.287518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.141479, 35.254406, 38.078979>,  <32.212318, 35.446568, 37.953857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.141479, 35.254406, 38.078979>,  <32.023418, 34.934135, 38.287518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.141479, 35.254406, 38.078979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954004, -0.276966, 0.114740,
		-0.052525, -0.531230, -0.845598,
		0.295155, 0.800677, -0.521344,
		32.230026, 35.494610, 37.922577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.562397, 34.665424, 37.813175>,  <32.023418, 34.934135, 38.287518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.562397, 34.665424, 37.813175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.589985, 35.062126, 37.769989>,  <32.606537, 35.300148, 37.744076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.589985, 35.062126, 37.769989>,  <32.562397, 34.665424, 37.813175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.589985, 35.062126, 37.769989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981552, -0.086810, -0.170351,
		-0.178320, -0.094224, -0.979451,
		0.068974, 0.991759, -0.107966,
		32.610676, 35.359653, 37.737598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.151981, 34.439442, 37.384178>,  <32.562397, 34.665424, 37.813175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.151981, 34.439442, 37.384178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.253124, 34.058086, 37.450043>,  <33.313812, 33.829273, 37.489559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.253124, 34.058086, 37.450043>,  <33.151981, 34.439442, 37.384178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.253124, 34.058086, 37.450043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508249, -0.013920, -0.861097,
		0.823252, 0.301425, 0.481039,
		0.252860, -0.953388, 0.164659,
		33.328983, 33.772068, 37.499439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.905190, 34.374249, 37.296516>,  <33.151981, 34.439442, 37.384178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.905190, 34.374249, 37.296516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.706509, 34.037426, 37.212399>,  <33.587299, 33.835331, 37.161926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.706509, 34.037426, 37.212399>,  <33.905190, 34.374249, 37.296516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.706509, 34.037426, 37.212399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442857, -0.037507, -0.895808,
		0.746436, -0.538077, 0.391542,
		-0.496699, -0.842061, -0.210295,
		33.557499, 33.784809, 37.149311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.348568, 33.817291, 37.163746>,  <33.905190, 34.374249, 37.296516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.348568, 33.817291, 37.163746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.040375, 33.831203, 36.909142>,  <33.855457, 33.839550, 36.756378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.040375, 33.831203, 36.909142>,  <34.348568, 33.817291, 37.163746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.040375, 33.831203, 36.909142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636100, -0.023274, -0.771256,
		-0.041638, -0.999124, -0.004190,
		-0.770483, 0.034779, -0.636512,
		33.809231, 33.841637, 36.718189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.783409, 33.657883, 36.543064>,  <34.348568, 33.817291, 37.163746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.783409, 33.657883, 36.543064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.411804, 33.768990, 36.445263>,  <34.188843, 33.835651, 36.386581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.411804, 33.768990, 36.445263>,  <34.783409, 33.657883, 36.543064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.411804, 33.768990, 36.445263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189089, -0.211633, -0.958883,
		-0.318089, -0.937048, 0.144088,
		-0.929013, 0.277765, -0.244504,
		34.133099, 33.852318, 36.371910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.435558, 33.141949, 36.065784>,  <34.783409, 33.657883, 36.543064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.435558, 33.141949, 36.065784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.225777, 33.478241, 36.011932>,  <34.099907, 33.680016, 35.979622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.225777, 33.478241, 36.011932>,  <34.435558, 33.141949, 36.065784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.225777, 33.478241, 36.011932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138080, -0.072047, -0.987797,
		-0.840169, -0.536642, -0.078302,
		-0.524452, 0.840729, -0.134632,
		34.068439, 33.730461, 35.971542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.826504, 33.114311, 35.618683>,  <34.435558, 33.141949, 36.065784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.826504, 33.114311, 35.618683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.006748, 33.471191, 35.606483>,  <34.114895, 33.685318, 35.599163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.006748, 33.471191, 35.606483>,  <33.826504, 33.114311, 35.618683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.006748, 33.471191, 35.606483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178977, -0.123763, -0.976038,
		-0.874593, 0.434358, -0.215452,
		0.450615, 0.892197, -0.030503,
		34.141933, 33.738850, 35.597332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.433800, 33.432770, 35.108822>,  <33.826504, 33.114311, 35.618683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.433800, 33.432770, 35.108822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.776886, 33.629578, 35.168465>,  <33.982738, 33.747662, 35.204250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.776886, 33.629578, 35.168465>,  <33.433800, 33.432770, 35.108822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.776886, 33.629578, 35.168465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101937, 0.121512, -0.987342,
		-0.503910, 0.862062, 0.054069,
		0.857720, 0.492020, 0.149107,
		34.034203, 33.777184, 35.213196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.367725, 34.030708, 34.650356>,  <33.433800, 33.432770, 35.108822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.367725, 34.030708, 34.650356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.759384, 34.011826, 34.729393>,  <33.994381, 34.000496, 34.776817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.759384, 34.011826, 34.729393>,  <33.367725, 34.030708, 34.650356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.759384, 34.011826, 34.729393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202538, 0.302698, -0.931318,
		-0.015848, 0.951917, 0.305946,
		0.979146, -0.047207, 0.197596,
		34.053127, 33.997665, 34.788673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.572308, 34.648014, 34.426258>,  <33.367725, 34.030708, 34.650356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.572308, 34.648014, 34.426258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.894939, 34.411858, 34.438046>,  <34.088520, 34.270164, 34.445118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.894939, 34.411858, 34.438046>,  <33.572308, 34.648014, 34.426258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.894939, 34.411858, 34.438046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250377, 0.296052, -0.921772,
		0.535480, 0.750862, 0.386610,
		0.806581, -0.590389, 0.029469,
		34.136913, 34.234741, 34.446888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.077274, 35.049858, 34.257298>,  <33.572308, 34.648014, 34.426258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.077274, 35.049858, 34.257298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.206799, 34.677460, 34.189892>,  <34.284512, 34.454021, 34.149448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.206799, 34.677460, 34.189892>,  <34.077274, 35.049858, 34.257298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.206799, 34.677460, 34.189892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288930, 0.266912, -0.919390,
		0.900925, 0.249018, 0.355421,
		0.323810, -0.930993, -0.168519,
		34.303940, 34.398163, 34.139336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.689434, 35.156536, 33.814228>,  <34.077274, 35.049858, 34.257298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.689434, 35.156536, 33.814228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.583462, 34.776669, 33.747360>,  <34.519878, 34.548748, 33.707237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.583462, 34.776669, 33.747360>,  <34.689434, 35.156536, 33.814228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.583462, 34.776669, 33.747360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106455, 0.143504, -0.983907,
		0.958373, -0.278465, 0.063077,
		-0.264932, -0.949665, -0.167174,
		34.503983, 34.491768, 33.697208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.153259, 34.868027, 33.374870>,  <34.689434, 35.156536, 33.814228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.153259, 34.868027, 33.374870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.832687, 34.631798, 33.337063>,  <34.640347, 34.490059, 33.314381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.832687, 34.631798, 33.337063>,  <35.153259, 34.868027, 33.374870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.832687, 34.631798, 33.337063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081547, 0.048652, -0.995481,
		0.592507, -0.805513, 0.009169,
		-0.801427, -0.590577, -0.094514,
		34.592258, 34.454624, 33.308708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.355057, 34.379059, 32.792049>,  <35.153259, 34.868027, 33.374870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.355057, 34.379059, 32.792049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.955307, 34.382446, 32.805771>,  <34.715458, 34.384480, 32.814003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.955307, 34.382446, 32.805771>,  <35.355057, 34.379059, 32.792049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.955307, 34.382446, 32.805771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033201, 0.107072, -0.993697,
		-0.012087, -0.994215, -0.106724,
		-0.999376, 0.008468, 0.034303,
		34.655495, 34.384987, 32.816063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.325813, 34.002449, 32.353912>,  <35.355057, 34.379059, 32.792049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.325813, 34.002449, 32.353912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.962933, 34.167797, 32.385208>,  <34.745205, 34.267006, 32.403984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.962933, 34.167797, 32.385208>,  <35.325813, 34.002449, 32.353912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.962933, 34.167797, 32.385208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001493, 0.182809, -0.983147,
		-0.420703, -0.892025, -0.165227,
		-0.907197, 0.413366, 0.078240,
		34.690773, 34.291805, 32.408680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.953701, 33.792667, 31.784311>,  <35.325813, 34.002449, 32.353912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.953701, 33.792667, 31.784311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.746975, 34.115105, 31.899628>,  <34.622940, 34.308567, 31.968817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.746975, 34.115105, 31.899628>,  <34.953701, 33.792667, 31.784311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.746975, 34.115105, 31.899628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110470, 0.271140, -0.956179,
		-0.848941, -0.526014, -0.051079,
		-0.516813, 0.806097, 0.288291,
		34.591930, 34.356934, 31.986115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.427910, 33.825726, 31.290688>,  <34.953701, 33.792667, 31.784311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.427910, 33.825726, 31.290688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.432888, 34.196510, 31.440666>,  <34.435875, 34.418983, 31.530653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.432888, 34.196510, 31.440666>,  <34.427910, 33.825726, 31.290688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.432888, 34.196510, 31.440666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053534, 0.375054, -0.925456,
		-0.998488, -0.008553, 0.054292,
		0.012447, 0.926964, 0.374945,
		34.436623, 34.474598, 31.553150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.833660, 34.125069, 31.103081>,  <34.427910, 33.825726, 31.290688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.833660, 34.125069, 31.103081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.085522, 34.427292, 31.175381>,  <34.236637, 34.608627, 31.218761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.085522, 34.427292, 31.175381>,  <33.833660, 34.125069, 31.103081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.085522, 34.427292, 31.175381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306760, 0.455558, -0.835682,
		-0.713750, 0.470741, 0.518618,
		0.629650, 0.755559, 0.180750,
		34.274418, 34.653961, 31.229607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.462177, 34.773590, 30.922812>,  <33.833660, 34.125069, 31.103081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.462177, 34.773590, 30.922812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.845722, 34.885967, 30.939098>,  <34.075848, 34.953392, 30.948870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.845722, 34.885967, 30.939098>,  <33.462177, 34.773590, 30.922812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.845722, 34.885967, 30.939098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113232, 0.510044, -0.852662,
		-0.260314, 0.812975, 0.520873,
		0.958861, 0.280939, 0.040717,
		34.133381, 34.970249, 30.951313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.426540, 35.412457, 30.722921>,  <33.462177, 34.773590, 30.922812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.426540, 35.412457, 30.722921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.798946, 35.292343, 30.639927>,  <34.022388, 35.220276, 30.590130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.798946, 35.292343, 30.639927>,  <33.426540, 35.412457, 30.722921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.798946, 35.292343, 30.639927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001317, 0.571221, -0.820795,
		0.364990, 0.763896, 0.532208,
		0.931010, -0.300283, -0.207484,
		34.078251, 35.202259, 30.577682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.787861, 35.987148, 30.361603>,  <33.426540, 35.412457, 30.722921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.787861, 35.987148, 30.361603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.985249, 35.665283, 30.229546>,  <34.103683, 35.472164, 30.150311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.985249, 35.665283, 30.229546>,  <33.787861, 35.987148, 30.361603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.985249, 35.665283, 30.229546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105051, 0.321660, -0.941010,
		0.863394, 0.499045, 0.074199,
		0.493473, -0.804667, -0.330144,
		34.133289, 35.423882, 30.130503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.362007, 36.224178, 29.860800>,  <33.787861, 35.987148, 30.361603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.362007, 36.224178, 29.860800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.325951, 35.832222, 29.789600>,  <34.304317, 35.597046, 29.746881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.325951, 35.832222, 29.789600>,  <34.362007, 36.224178, 29.860800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.325951, 35.832222, 29.789600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184570, 0.192065, -0.963870,
		0.978677, -0.054032, -0.198172,
		-0.090141, -0.979894, -0.177997,
		34.298908, 35.538254, 29.736202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.710014, 36.274879, 29.290100>,  <34.362007, 36.224178, 29.860800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.710014, 36.274879, 29.290100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.525055, 35.920330, 29.280918>,  <34.414078, 35.707600, 29.275410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.525055, 35.920330, 29.280918>,  <34.710014, 36.274879, 29.290100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.525055, 35.920330, 29.280918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228510, 0.144143, -0.962811,
		0.856720, -0.439958, -0.269197,
		-0.462400, -0.886374, -0.022955,
		34.386333, 35.654419, 29.274031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.037060, 35.758064, 28.839245>,  <34.710014, 36.274879, 29.290100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.037060, 35.758064, 28.839245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.660419, 35.624744, 28.858431>,  <34.434437, 35.544754, 28.869942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.660419, 35.624744, 28.858431>,  <35.037060, 35.758064, 28.839245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.660419, 35.624744, 28.858431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038076, -0.036136, -0.998621,
		0.334570, -0.942129, 0.021335,
		-0.941602, -0.333297, 0.047963,
		34.377937, 35.524754, 28.872820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.891296, 35.222607, 28.295988>,  <35.037060, 35.758064, 28.839245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.891296, 35.222607, 28.295988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.538830, 35.394211, 28.375488>,  <34.327351, 35.497173, 28.423189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.538830, 35.394211, 28.375488>,  <34.891296, 35.222607, 28.295988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.538830, 35.394211, 28.375488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168171, 0.108492, -0.979769,
		-0.441895, -0.896761, -0.023452,
		-0.881163, 0.429011, 0.198751,
		34.274483, 35.522915, 28.435114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.609470, 34.999630, 27.765806>,  <34.891296, 35.222607, 28.295988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.609470, 34.999630, 27.765806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.349998, 35.267281, 27.910854>,  <34.194317, 35.427872, 27.997883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.349998, 35.267281, 27.910854>,  <34.609470, 34.999630, 27.765806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.349998, 35.267281, 27.910854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366700, 0.142718, -0.919327,
		-0.666896, -0.729318, 0.152790,
		-0.648676, 0.669124, 0.362619,
		34.155396, 35.468018, 28.019640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.933762, 34.932552, 27.464886>,  <34.609470, 34.999630, 27.765806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.933762, 34.932552, 27.464886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.942524, 35.315849, 27.578934>,  <33.947781, 35.545826, 27.647362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.942524, 35.315849, 27.578934>,  <33.933762, 34.932552, 27.464886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.942524, 35.315849, 27.578934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254774, 0.281121, -0.925236,
		-0.966752, -0.052376, 0.250293,
		0.021902, 0.958242, 0.285118,
		33.949093, 35.603321, 27.664469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.262676, 35.225563, 27.061083>,  <33.933762, 34.932552, 27.464886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.262676, 35.225563, 27.061083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.463917, 35.532825, 27.219482>,  <33.584663, 35.717182, 27.314522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.463917, 35.532825, 27.219482>,  <33.262676, 35.225563, 27.061083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.463917, 35.532825, 27.219482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221538, 0.557535, -0.800047,
		-0.835349, 0.314777, 0.450675,
		0.503104, 0.768160, 0.396001,
		33.614849, 35.763275, 27.338284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.820606, 35.747555, 26.895424>,  <33.262676, 35.225563, 27.061083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.820606, 35.747555, 26.895424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.169018, 35.926147, 26.977364>,  <33.378063, 36.033302, 27.026527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.169018, 35.926147, 26.977364>,  <32.820606, 35.747555, 26.895424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.169018, 35.926147, 26.977364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080345, 0.540886, -0.837250,
		-0.484615, 0.712811, 0.507000,
		0.871030, 0.446479, 0.204850,
		33.430328, 36.060093, 27.038818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.720505, 36.439922, 26.803566>,  <32.820606, 35.747555, 26.895424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.720505, 36.439922, 26.803566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119530, 36.426311, 26.779192>,  <33.358944, 36.418144, 26.764568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119530, 36.426311, 26.779192>,  <32.720505, 36.439922, 26.803566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.119530, 36.426311, 26.779192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016350, 0.734840, -0.678044,
		0.067853, 0.677387, 0.732491,
		0.997562, -0.034031, -0.060936,
		33.418797, 36.416103, 26.760912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.842091, 37.148026, 26.950117>,  <32.720505, 36.439922, 26.803566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.842091, 37.148026, 26.950117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.138863, 36.994377, 26.730303>,  <33.316925, 36.902187, 26.598413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.138863, 36.994377, 26.730303>,  <32.842091, 37.148026, 26.950117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.138863, 36.994377, 26.730303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009388, 0.825494, -0.564333,
		0.670410, 0.413538, 0.616066,
		0.741931, -0.384118, -0.549537,
		33.361443, 36.879143, 26.565441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.398228, 37.628174, 26.813280>,  <32.842091, 37.148026, 26.950117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.398228, 37.628174, 26.813280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.446754, 37.370693, 26.511042>,  <33.475872, 37.216206, 26.329699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.446754, 37.370693, 26.511042>,  <33.398228, 37.628174, 26.813280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.446754, 37.370693, 26.511042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251854, 0.756270, -0.603843,
		0.960131, -0.117043, 0.253869,
		0.121318, -0.643706, -0.755596,
		33.483150, 37.177582, 26.284363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.039272, 37.718887, 26.626133>,  <33.398228, 37.628174, 26.813280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.039272, 37.718887, 26.626133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.849155, 37.550922, 26.316870>,  <33.735085, 37.450142, 26.131311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.849155, 37.550922, 26.316870>,  <34.039272, 37.718887, 26.626133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.849155, 37.550922, 26.316870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287322, 0.756500, -0.587498,
		0.831592, -0.501377, -0.238906,
		-0.475291, -0.419915, -0.773156,
		33.706570, 37.424950, 26.084923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.498005, 37.732098, 26.028551>,  <34.039272, 37.718887, 26.626133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.498005, 37.732098, 26.028551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.128891, 37.719818, 25.874912>,  <33.907421, 37.712452, 25.782730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.128891, 37.719818, 25.874912>,  <34.498005, 37.732098, 26.028551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.128891, 37.719818, 25.874912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171465, 0.859974, -0.480670,
		0.345066, -0.509413, -0.788307,
		-0.922783, -0.030696, -0.384095,
		33.852055, 37.710609, 25.759684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.645077, 37.945805, 25.381060>,  <34.498005, 37.732098, 26.028551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.645077, 37.945805, 25.381060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.255714, 37.994049, 25.458961>,  <34.022095, 38.022995, 25.505703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.255714, 37.994049, 25.458961>,  <34.645077, 37.945805, 25.381060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.255714, 37.994049, 25.458961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014468, 0.880839, -0.473195,
		-0.228621, -0.457794, -0.859160,
		-0.973408, 0.120613, 0.194755,
		33.963692, 38.030231, 25.517387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.404621, 38.031273, 24.675997>,  <34.645077, 37.945805, 25.381060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.404621, 38.031273, 24.675997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.156109, 38.197823, 24.941521>,  <34.007004, 38.297752, 25.100836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.156109, 38.197823, 24.941521>,  <34.404621, 38.031273, 24.675997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.156109, 38.197823, 24.941521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132253, 0.890704, -0.434921,
		-0.772349, -0.182416, -0.608442,
		-0.621278, 0.416379, 0.663809,
		33.969727, 38.322735, 25.140663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977036, 38.460533, 24.296686>,  <34.404621, 38.031273, 24.675997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.977036, 38.460533, 24.296686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.944225, 38.602859, 24.669065>,  <33.924541, 38.688255, 24.892494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.944225, 38.602859, 24.669065>,  <33.977036, 38.460533, 24.296686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.944225, 38.602859, 24.669065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224981, 0.916597, -0.330505,
		-0.970905, 0.182337, -0.155234,
		-0.082023, 0.355814, 0.930951,
		33.919617, 38.709602, 24.948351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.631428, 39.016224, 24.147898>,  <33.977036, 38.460533, 24.296686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.631428, 39.016224, 24.147898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.758980, 39.088512, 24.520060>,  <33.835510, 39.131886, 24.743357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.758980, 39.088512, 24.520060>,  <33.631428, 39.016224, 24.147898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.758980, 39.088512, 24.520060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149808, 0.959703, -0.237758,
		-0.935881, 0.215198, 0.278957,
		0.318880, 0.180723, 0.930406,
		33.854645, 39.142731, 24.799181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.189857, 39.532360, 24.433704>,  <33.631428, 39.016224, 24.147898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.189857, 39.532360, 24.433704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.542755, 39.533680, 24.622019>,  <33.754494, 39.534473, 24.735006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.542755, 39.533680, 24.622019>,  <33.189857, 39.532360, 24.433704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.542755, 39.533680, 24.622019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072948, 0.986940, -0.143623,
		-0.465111, 0.161053, 0.870479,
		0.882242, 0.003301, 0.470785,
		33.807426, 39.534672, 24.763254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.119484, 39.977978, 25.045242>,  <33.189857, 39.532360, 24.433704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.119484, 39.977978, 25.045242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.500942, 39.964031, 24.925674>,  <33.729816, 39.955662, 24.853933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.500942, 39.964031, 24.925674>,  <33.119484, 39.977978, 25.045242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.500942, 39.964031, 24.925674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036438, 0.999336, -0.000321,
		0.298731, -0.010585, 0.954279,
		0.953642, -0.034868, -0.298918,
		33.787033, 39.953571, 24.835999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.243790, 40.643276, 25.267738>,  <33.119484, 39.977978, 25.045242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.243790, 40.643276, 25.267738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.574524, 40.527504, 25.074837>,  <33.772964, 40.458038, 24.959095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.574524, 40.527504, 25.074837>,  <33.243790, 40.643276, 25.267738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.574524, 40.527504, 25.074837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142576, 0.937283, -0.318075,
		0.544071, 0.194239, 0.816247,
		0.826837, -0.289433, -0.482255,
		33.822575, 40.440674, 24.930161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.758507, 41.131493, 25.435583>,  <33.243790, 40.643276, 25.267738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.758507, 41.131493, 25.435583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835045, 40.956245, 25.084255>,  <33.880966, 40.851097, 24.873459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835045, 40.956245, 25.084255>,  <33.758507, 41.131493, 25.435583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.835045, 40.956245, 25.084255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243399, 0.888081, -0.389960,
		0.950866, -0.139167, 0.276563,
		0.191341, -0.438115, -0.878319,
		33.892448, 40.824810, 24.820759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.401215, 41.419701, 25.206871>,  <33.758507, 41.131493, 25.435583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.401215, 41.419701, 25.206871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.221741, 41.278324, 24.878538>,  <34.114056, 41.193497, 24.681540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.221741, 41.278324, 24.878538>,  <34.401215, 41.419701, 25.206871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.221741, 41.278324, 24.878538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196816, 0.856843, -0.476533,
		0.871752, -0.375362, -0.314882,
		-0.448677, -0.353445, -0.820832,
		34.087135, 41.172291, 24.632290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.793125, 41.730885, 24.619841>,  <34.401215, 41.419701, 25.206871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.793125, 41.730885, 24.619841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.466068, 41.620632, 24.417656>,  <34.269833, 41.554482, 24.296345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.466068, 41.620632, 24.417656>,  <34.793125, 41.730885, 24.619841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.466068, 41.620632, 24.417656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120071, 0.777011, -0.617929,
		0.563068, -0.565936, -0.602222,
		-0.817642, -0.275626, -0.505463,
		34.220776, 41.537945, 24.266018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.994404, 41.831890, 23.904768>,  <34.793125, 41.730885, 24.619841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.994404, 41.831890, 23.904768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.595486, 41.829662, 23.934059>,  <34.356133, 41.828327, 23.951633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.595486, 41.829662, 23.934059>,  <34.994404, 41.831890, 23.904768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.595486, 41.829662, 23.934059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042803, 0.854341, -0.517947,
		-0.059678, -0.519683, -0.852272,
		-0.997299, -0.005570, 0.073229,
		34.296295, 41.827991, 23.956028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.635338, 41.928150, 23.222969>,  <34.994404, 41.831890, 23.904768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.635338, 41.928150, 23.222969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.318909, 41.999016, 23.457170>,  <34.129051, 42.041534, 23.597691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.318909, 41.999016, 23.457170>,  <34.635338, 41.928150, 23.222969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.318909, 41.999016, 23.457170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191862, 0.836990, -0.512480,
		-0.580851, -0.517747, -0.628132,
		-0.791076, 0.177160, 0.585503,
		34.081585, 42.052162, 23.632822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.039639, 42.011211, 22.788565>,  <34.635338, 41.928150, 23.222969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.039639, 42.011211, 22.788565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.989918, 42.205559, 23.134624>,  <33.960083, 42.322166, 23.342260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.989918, 42.205559, 23.134624>,  <34.039639, 42.011211, 22.788565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.989918, 42.205559, 23.134624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140297, 0.854544, -0.500071,
		-0.982275, -0.183540, -0.038059,
		-0.124306, 0.485867, 0.865148,
		33.952625, 42.351318, 23.394169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.390560, 42.370071, 22.766914>,  <34.039639, 42.011211, 22.788565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.390560, 42.370071, 22.766914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.627575, 42.548729, 23.035067>,  <33.769783, 42.655922, 23.195957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.627575, 42.548729, 23.035067>,  <33.390560, 42.370071, 22.766914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.627575, 42.548729, 23.035067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214909, 0.889697, -0.402808,
		-0.776347, 0.094607, 0.623165,
		0.592536, 0.446643, 0.670381,
		33.805336, 42.682720, 23.236181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.064278, 42.947006, 23.094816>,  <33.390560, 42.370071, 22.766914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.064278, 42.947006, 23.094816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.448196, 43.025124, 23.175470>,  <33.678547, 43.071995, 23.223864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.448196, 43.025124, 23.175470>,  <33.064278, 42.947006, 23.094816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.448196, 43.025124, 23.175470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126227, 0.941861, -0.311392,
		-0.250725, 0.273421, 0.928643,
		0.959794, 0.195293, 0.201635,
		33.736134, 43.083710, 23.235960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.115585, 43.550388, 23.601913>,  <33.064278, 42.947006, 23.094816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.115585, 43.550388, 23.601913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.471218, 43.546188, 23.418859>,  <33.684597, 43.543671, 23.309027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.471218, 43.546188, 23.418859>,  <33.115585, 43.550388, 23.601913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.471218, 43.546188, 23.418859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191924, 0.899074, -0.393485,
		0.415576, 0.437670, 0.797334,
		0.889079, -0.010496, -0.457633,
		33.737942, 43.543041, 23.281569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.033802, 44.196606, 23.836189>,  <33.115585, 43.550388, 23.601913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.033802, 44.196606, 23.836189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.271923, 44.515034, 23.879799>,  <33.414795, 44.706089, 23.905964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.271923, 44.515034, 23.879799>,  <33.033802, 44.196606, 23.836189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.271923, 44.515034, 23.879799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342515, 0.374161, -0.861793,
		-0.726838, 0.475689, 0.495406,
		0.595307, 0.796067, 0.109024,
		33.450516, 44.753853, 23.912506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.660263, 44.807034, 23.758781>,  <33.033802, 44.196606, 23.836189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.660263, 44.807034, 23.758781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.039864, 44.888329, 23.662371>,  <33.267624, 44.937107, 23.604525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.039864, 44.888329, 23.662371>,  <32.660263, 44.807034, 23.758781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.039864, 44.888329, 23.662371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272753, 0.145801, -0.950972,
		-0.158136, 0.968212, 0.193799,
		0.948999, 0.203242, -0.241026,
		33.324562, 44.949303, 23.590063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.684681, 45.417492, 23.263887>,  <32.660263, 44.807034, 23.758781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.684681, 45.417492, 23.263887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.990131, 45.160362, 23.239700>,  <33.173401, 45.006084, 23.225189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.990131, 45.160362, 23.239700>,  <32.684681, 45.417492, 23.263887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.990131, 45.160362, 23.239700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030215, 0.129126, -0.991168,
		0.644955, 0.755051, 0.118026,
		0.763623, -0.642825, -0.060466,
		33.219219, 44.967514, 23.221561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.242985, 45.782776, 22.986881>,  <32.684681, 45.417492, 23.263887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.242985, 45.782776, 22.986881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.300026, 45.394142, 22.911314>,  <33.334251, 45.160961, 22.865974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.300026, 45.394142, 22.911314>,  <33.242985, 45.782776, 22.986881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.300026, 45.394142, 22.911314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098011, 0.203792, -0.974096,
		0.984915, 0.120393, 0.124287,
		0.142603, -0.971583, -0.188918,
		33.342808, 45.102669, 22.854639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.906582, 45.511665, 22.605312>,  <33.242985, 45.782776, 22.986881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.906582, 45.511665, 22.605312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.606007, 45.257504, 22.534195>,  <33.425663, 45.105007, 22.491524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.606007, 45.257504, 22.534195>,  <33.906582, 45.511665, 22.605312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.606007, 45.257504, 22.534195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166886, 0.077674, -0.982912,
		0.638354, -0.768265, 0.047673,
		-0.751434, -0.635401, -0.177796,
		33.380577, 45.066883, 22.480856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.385201, 44.969128, 22.893930>,  <33.906582, 45.511665, 22.605312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.385201, 44.969128, 22.893930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.008999, 45.020550, 23.019737>,  <33.783276, 45.051403, 23.095221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.008999, 45.020550, 23.019737>,  <34.385201, 44.969128, 22.893930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.008999, 45.020550, 23.019737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289514, -0.181296, 0.939848,
		0.177847, 0.974989, 0.133290,
		-0.940506, 0.128560, 0.314516,
		33.726849, 45.059116, 23.114092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.485886, 45.403790, 23.493021>,  <34.385201, 44.969128, 22.893930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.485886, 45.403790, 23.493021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.108917, 45.270180, 23.499573>,  <33.882736, 45.190014, 23.503504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.108917, 45.270180, 23.499573>,  <34.485886, 45.403790, 23.493021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.108917, 45.270180, 23.499573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008492, 0.025059, 0.999650,
		-0.334313, 0.942233, -0.020780,
		-0.942424, -0.334020, 0.016379,
		33.826191, 45.169975, 23.504486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.228176, 45.802059, 23.949121>,  <34.485886, 45.403790, 23.493021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.228176, 45.802059, 23.949121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.005547, 45.469975, 23.936638>,  <33.871971, 45.270725, 23.929148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.005547, 45.469975, 23.936638>,  <34.228176, 45.802059, 23.949121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.005547, 45.469975, 23.936638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051026, -0.071656, 0.996123,
		-0.829231, 0.552822, 0.082245,
		-0.556572, -0.830213, -0.031211,
		33.838573, 45.220909, 23.927275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.721302, 45.801102, 24.526114>,  <34.228176, 45.802059, 23.949121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.721302, 45.801102, 24.526114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.765953, 45.414452, 24.433868>,  <33.792744, 45.182461, 24.378521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.765953, 45.414452, 24.433868>,  <33.721302, 45.801102, 24.526114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.765953, 45.414452, 24.433868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171728, -0.209806, 0.962544,
		-0.978799, -0.147053, 0.142575,
		0.111632, -0.966621, -0.230611,
		33.799442, 45.124466, 24.364685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.389416, 45.518044, 25.054598>,  <33.721302, 45.801102, 24.526114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.389416, 45.518044, 25.054598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.600277, 45.213604, 24.903421>,  <33.726795, 45.030941, 24.812716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.600277, 45.213604, 24.903421>,  <33.389416, 45.518044, 25.054598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.600277, 45.213604, 24.903421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143317, -0.358754, 0.922364,
		-0.837598, -0.540391, -0.080039,
		0.527152, -0.761099, -0.377939,
		33.758423, 44.985275, 24.790039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.072468, 44.835934, 25.257877>,  <33.389416, 45.518044, 25.054598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.072468, 44.835934, 25.257877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.460915, 44.756443, 25.205048>,  <33.693981, 44.708748, 25.173349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.460915, 44.756443, 25.205048>,  <33.072468, 44.835934, 25.257877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.460915, 44.756443, 25.205048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022860, -0.473489, 0.880503,
		-0.237512, -0.858089, -0.455270,
		0.971115, -0.198723, -0.132075,
		33.752251, 44.696827, 25.165424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.154766, 44.059986, 25.410166>,  <33.072468, 44.835934, 25.257877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.154766, 44.059986, 25.410166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.525826, 44.209316, 25.413977>,  <33.748463, 44.298916, 25.416264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.525826, 44.209316, 25.413977>,  <33.154766, 44.059986, 25.410166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.525826, 44.209316, 25.413977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246820, -0.632051, 0.734569,
		0.280257, -0.679072, -0.678467,
		0.927651, 0.373327, 0.009528,
		33.804119, 44.321316, 25.416836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.547432, 43.582481, 25.369354>,  <33.154766, 44.059986, 25.410166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.547432, 43.582481, 25.369354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.807442, 43.836689, 25.536005>,  <33.963448, 43.989212, 25.635996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.807442, 43.836689, 25.536005>,  <33.547432, 43.582481, 25.369354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.807442, 43.836689, 25.536005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300943, -0.718721, 0.626796,
		0.697779, -0.282055, -0.658444,
		0.650028, 0.635520, 0.416626,
		34.002449, 44.027344, 25.660994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.213955, 43.205700, 25.487976>,  <33.547432, 43.582481, 25.369354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.213955, 43.205700, 25.487976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.245625, 43.535957, 25.711418>,  <34.264626, 43.734112, 25.845484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.245625, 43.535957, 25.711418>,  <34.213955, 43.205700, 25.487976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.245625, 43.535957, 25.711418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386856, -0.541894, 0.746119,
		0.918735, 0.157026, -0.362310,
		0.079173, 0.825648, 0.558603,
		34.269375, 43.783653, 25.879000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.837738, 43.210506, 25.788328>,  <34.213955, 43.205700, 25.487976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.837738, 43.210506, 25.788328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.662663, 43.459957, 26.047407>,  <34.557617, 43.609627, 26.202854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.662663, 43.459957, 26.047407>,  <34.837738, 43.210506, 25.788328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.662663, 43.459957, 26.047407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326523, -0.560938, 0.760744,
		0.837739, 0.544461, 0.041890,
		-0.437693, 0.623627, 0.647699,
		34.531353, 43.647045, 26.241716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.335312, 43.277500, 26.325512>,  <34.837738, 43.210506, 25.788328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.335312, 43.277500, 26.325512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.005402, 43.426094, 26.496037>,  <34.807453, 43.515251, 26.598351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.005402, 43.426094, 26.496037>,  <35.335312, 43.277500, 26.325512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.005402, 43.426094, 26.496037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262808, -0.415711, 0.870699,
		0.500670, 0.830172, 0.245242,
		-0.824779, 0.371481, 0.426310,
		34.757969, 43.537537, 26.623930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.509102, 43.658451, 26.940617>,  <35.335312, 43.277500, 26.325512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.509102, 43.658451, 26.940617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.117027, 43.597904, 26.991718>,  <34.881783, 43.561577, 27.022379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.117027, 43.597904, 26.991718>,  <35.509102, 43.658451, 26.940617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.117027, 43.597904, 26.991718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160186, -0.226419, 0.960768,
		-0.116501, 0.962197, 0.246179,
		-0.980188, -0.151365, 0.127752,
		34.822971, 43.552494, 27.030045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.204865, 44.081608, 27.564657>,  <35.509102, 43.658451, 26.940617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.204865, 44.081608, 27.564657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.999153, 43.742966, 27.509840>,  <34.875729, 43.539780, 27.476950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.999153, 43.742966, 27.509840>,  <35.204865, 44.081608, 27.564657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.999153, 43.742966, 27.509840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016397, -0.150059, 0.988541,
		-0.857468, 0.510629, 0.063290,
		-0.514275, -0.846605, -0.137044,
		34.844872, 43.488983, 27.468727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.834393, 44.061848, 28.077215>,  <35.204865, 44.081608, 27.564657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.834393, 44.061848, 28.077215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.759434, 43.684578, 27.967447>,  <34.714458, 43.458218, 27.901587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.759434, 43.684578, 27.967447>,  <34.834393, 44.061848, 28.077215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.759434, 43.684578, 27.967447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168774, -0.244300, 0.954899,
		-0.967676, 0.225260, -0.113402,
		-0.187397, -0.943173, -0.274421,
		34.703217, 43.401627, 27.885120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.262623, 43.887589, 28.498863>,  <34.834393, 44.061848, 28.077215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.262623, 43.887589, 28.498863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.400387, 43.530682, 28.382078>,  <34.483044, 43.316536, 28.312006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.400387, 43.530682, 28.382078>,  <34.262623, 43.887589, 28.498863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.400387, 43.530682, 28.382078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259681, -0.389398, 0.883705,
		-0.902191, -0.228538, -0.365817,
		0.344408, -0.892266, -0.291964,
		34.503708, 43.263000, 28.294489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.744877, 43.336990, 28.595467>,  <34.262623, 43.887589, 28.498863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.744877, 43.336990, 28.595467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.109489, 43.173386, 28.612490>,  <34.328259, 43.075222, 28.622704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.109489, 43.173386, 28.612490>,  <33.744877, 43.336990, 28.595467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.109489, 43.173386, 28.612490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221264, -0.400598, 0.889136,
		-0.346613, -0.819899, -0.455659,
		0.911538, -0.409007, 0.042562,
		34.382950, 43.050682, 28.625257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.670185, 42.569851, 28.779753>,  <33.744877, 43.336990, 28.595467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.670185, 42.569851, 28.779753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.056030, 42.621243, 28.871849>,  <34.287537, 42.652077, 28.927107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.056030, 42.621243, 28.871849>,  <33.670185, 42.569851, 28.779753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.056030, 42.621243, 28.871849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145684, -0.468114, 0.871577,
		0.219758, -0.874278, -0.432832,
		0.964615, 0.128479, 0.230240,
		34.345413, 42.659786, 28.940922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.862202, 42.000267, 29.177349>,  <33.670185, 42.569851, 28.779753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.862202, 42.000267, 29.177349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.145912, 42.266552, 29.270082>,  <34.316139, 42.426323, 29.325724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.145912, 42.266552, 29.270082>,  <33.862202, 42.000267, 29.177349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.145912, 42.266552, 29.270082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016705, -0.344658, 0.938580,
		0.704732, -0.661840, -0.255579,
		0.709277, 0.665716, 0.231836,
		34.358696, 42.466267, 29.339634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.502525, 41.554432, 29.527739>,  <33.862202, 42.000267, 29.177349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.502525, 41.554432, 29.527739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.486298, 41.943241, 29.620281>,  <34.476562, 42.176525, 29.675808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.486298, 41.943241, 29.620281>,  <34.502525, 41.554432, 29.527739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.486298, 41.943241, 29.620281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069810, -0.228225, 0.971102,
		0.996735, 0.055546, -0.058598,
		-0.040568, 0.972023, 0.231357,
		34.474129, 42.234848, 29.689688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.168892, 41.703583, 29.889484>,  <34.502525, 41.554432, 29.527739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.168892, 41.703583, 29.889484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.912395, 42.000061, 29.968914>,  <34.758499, 42.177948, 30.016573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.912395, 42.000061, 29.968914>,  <35.168892, 41.703583, 29.889484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.912395, 42.000061, 29.968914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160027, -0.123921, 0.979303,
		0.750466, 0.659748, -0.039149,
		-0.641242, 0.741199, 0.198576,
		34.720024, 42.222420, 30.028486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.365585, 42.150768, 30.513750>,  <35.168892, 41.703583, 29.889484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.365585, 42.150768, 30.513750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.971123, 42.214359, 30.494905>,  <34.734444, 42.252514, 30.483599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.971123, 42.214359, 30.494905>,  <35.365585, 42.150768, 30.513750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.971123, 42.214359, 30.494905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067469, -0.125182, 0.989837,
		0.151465, 0.979314, 0.134175,
		-0.986157, 0.158978, -0.047112,
		34.675274, 42.262054, 30.480772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.188549, 42.295189, 31.185017>,  <35.365585, 42.150768, 30.513750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.188549, 42.295189, 31.185017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.817940, 42.285622, 31.034822>,  <34.595573, 42.279881, 30.944706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.817940, 42.285622, 31.034822>,  <35.188549, 42.295189, 31.185017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.817940, 42.285622, 31.034822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355664, -0.269889, 0.894798,
		-0.122745, 0.962594, 0.241549,
		-0.926519, -0.023922, -0.375487,
		34.539986, 42.278446, 30.922176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.740356, 42.615002, 31.718134>,  <35.188549, 42.295189, 31.185017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.740356, 42.615002, 31.718134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.496243, 42.398708, 31.486563>,  <34.349773, 42.268932, 31.347620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.496243, 42.398708, 31.486563>,  <34.740356, 42.615002, 31.718134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.496243, 42.398708, 31.486563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374721, -0.446823, 0.812363,
		-0.697953, 0.712708, 0.070063,
		-0.610283, -0.540737, -0.578928,
		34.313156, 42.236488, 31.312883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.031662, 42.685982, 31.931974>,  <34.740356, 42.615002, 31.718134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.031662, 42.685982, 31.931974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.038746, 42.337105, 31.736439>,  <34.042995, 42.127777, 31.619118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.038746, 42.337105, 31.736439>,  <34.031662, 42.685982, 31.931974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.038746, 42.337105, 31.736439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227680, -0.479589, 0.847441,
		-0.973575, 0.096287, -0.207076,
		0.017714, -0.872194, -0.488839,
		34.044060, 42.075447, 31.589787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.364407, 42.318081, 32.006207>,  <34.031662, 42.685982, 31.931974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.364407, 42.318081, 32.006207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.657837, 42.051830, 31.951342>,  <33.833897, 41.892082, 31.918425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.657837, 42.051830, 31.951342>,  <33.364407, 42.318081, 32.006207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.657837, 42.051830, 31.951342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357665, -0.549731, 0.754899,
		-0.577886, -0.504711, -0.641338,
		0.733569, -0.665629, -0.137164,
		33.877911, 41.852142, 31.910194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.102707, 41.581299, 31.968109>,  <33.364407, 42.318081, 32.006207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.102707, 41.581299, 31.968109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.488575, 41.569317, 32.072811>,  <33.720097, 41.562126, 32.135632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.488575, 41.569317, 32.072811>,  <33.102707, 41.581299, 31.968109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.488575, 41.569317, 32.072811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194977, -0.749353, 0.632815,
		0.177192, -0.661493, -0.728718,
		0.964669, -0.029954, 0.261755,
		33.777977, 41.560329, 32.151337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.903862, 40.955177, 32.325130>,  <33.102707, 41.581299, 31.968109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.903862, 40.955177, 32.325130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.294163, 41.024288, 32.378872>,  <33.528343, 41.065754, 32.411118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.294163, 41.024288, 32.378872>,  <32.903862, 40.955177, 32.325130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.294163, 41.024288, 32.378872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080024, -0.852982, 0.515769,
		0.203713, -0.492513, -0.846128,
		0.975755, 0.172779, 0.134351,
		33.586887, 41.076122, 32.419178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.302139, 40.312920, 32.220722>,  <32.903862, 40.955177, 32.325130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.302139, 40.312920, 32.220722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.534664, 40.549393, 32.444359>,  <33.674179, 40.691277, 32.578541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.534664, 40.549393, 32.444359>,  <33.302139, 40.312920, 32.220722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.534664, 40.549393, 32.444359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036118, -0.705181, 0.708106,
		0.812877, -0.391439, -0.431284,
		0.581314, 0.591181, 0.559088,
		33.709057, 40.726746, 32.612083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.874252, 39.957317, 32.388401>,  <33.302139, 40.312920, 32.220722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.874252, 39.957317, 32.388401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.876743, 40.261330, 32.648342>,  <33.878239, 40.443737, 32.804306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.876743, 40.261330, 32.648342>,  <33.874252, 39.957317, 32.388401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.876743, 40.261330, 32.648342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167268, -0.641502, 0.748663,
		0.985892, 0.104041, -0.131121,
		0.006223, 0.760033, 0.649854,
		33.878609, 40.489338, 32.843300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.344406, 39.719475, 32.830475>,  <33.874252, 39.957317, 32.388401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.344406, 39.719475, 32.830475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.130585, 39.989326, 33.034092>,  <34.002293, 40.151237, 33.156261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.130585, 39.989326, 33.034092>,  <34.344406, 39.719475, 32.830475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.130585, 39.989326, 33.034092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094693, -0.550721, 0.829301,
		0.839812, 0.491510, 0.230508,
		-0.534555, 0.674629, 0.509045,
		33.970219, 40.191715, 33.186806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.782799, 39.912045, 33.348190>,  <34.344406, 39.719475, 32.830475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.782799, 39.912045, 33.348190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.412548, 40.004745, 33.467861>,  <34.190399, 40.060368, 33.539661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.412548, 40.004745, 33.467861>,  <34.782799, 39.912045, 33.348190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.412548, 40.004745, 33.467861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189569, -0.400266, 0.896577,
		0.327532, 0.886611, 0.326565,
		-0.925627, 0.231751, 0.299174,
		34.134861, 40.074272, 33.557613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.941349, 39.990379, 33.988010>,  <34.782799, 39.912045, 33.348190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.941349, 39.990379, 33.988010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.543827, 39.946083, 33.991920>,  <34.305313, 39.919506, 33.994267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.543827, 39.946083, 33.991920>,  <34.941349, 39.990379, 33.988010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.543827, 39.946083, 33.991920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066657, -0.523252, 0.849567,
		-0.088966, 0.844953, 0.527390,
		-0.993802, -0.110737, 0.009771,
		34.245686, 39.912861, 33.994850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.796680, 40.077572, 34.752319>,  <34.941349, 39.990379, 33.988010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.796680, 40.077572, 34.752319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.511150, 39.870495, 34.563660>,  <34.339832, 39.746250, 34.450466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.511150, 39.870495, 34.563660>,  <34.796680, 40.077572, 34.752319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.511150, 39.870495, 34.563660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035603, -0.699421, 0.713823,
		-0.699421, 0.492751, 0.517694,
		-0.713823, -0.517694, -0.471647,
		34.297005, 39.715187, 34.422165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.317627, 39.842091, 35.315636>,  <34.796680, 40.077572, 34.752319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.317627, 39.842091, 35.315636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.273411, 39.612309, 34.991222>,  <34.246880, 39.474438, 34.796574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.273411, 39.612309, 34.991222>,  <34.317627, 39.842091, 35.315636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.273411, 39.612309, 34.991222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102593, -0.818274, 0.565599,
		-0.988562, -0.020685, 0.149388,
		-0.110541, -0.574456, -0.811037,
		34.240250, 39.439972, 34.747910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.967358, 39.295212, 35.605755>,  <34.317627, 39.842091, 35.315636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.967358, 39.295212, 35.605755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.074707, 39.146324, 35.250355>,  <34.139118, 39.056992, 35.037117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.074707, 39.146324, 35.250355>,  <33.967358, 39.295212, 35.605755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.074707, 39.146324, 35.250355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157904, -0.892861, 0.421742,
		-0.950284, -0.253483, -0.180848,
		0.268377, -0.372218, -0.888498,
		34.155220, 39.034660, 34.983807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.545509, 38.709240, 35.437756>,  <33.967358, 39.295212, 35.605755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.545509, 38.709240, 35.437756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.876759, 38.639874, 35.224537>,  <34.075508, 38.598255, 35.096603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.876759, 38.639874, 35.224537>,  <33.545509, 38.709240, 35.437756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.876759, 38.639874, 35.224537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109090, -0.882901, 0.456712,
		-0.549831, -0.436363, -0.712231,
		0.828122, -0.173417, -0.533049,
		34.125195, 38.587849, 35.064621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.498104, 38.009510, 35.093292>,  <33.545509, 38.709240, 35.437756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.498104, 38.009510, 35.093292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.886353, 38.096596, 35.134277>,  <34.119301, 38.148849, 35.158871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.886353, 38.096596, 35.134277>,  <33.498104, 38.009510, 35.093292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.886353, 38.096596, 35.134277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163210, -0.908582, 0.384502,
		0.176811, -0.356481, -0.917420,
		0.970619, 0.217716, 0.102466,
		34.177540, 38.161911, 35.165016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.859440, 37.409348, 34.854431>,  <33.498104, 38.009510, 35.093292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.859440, 37.409348, 34.854431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.121967, 37.620499, 35.070053>,  <34.279484, 37.747189, 35.199429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.121967, 37.620499, 35.070053>,  <33.859440, 37.409348, 34.854431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.121967, 37.620499, 35.070053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374375, -0.848171, 0.374765,
		0.655044, -0.044157, -0.754299,
		0.656323, 0.527879, 0.539058,
		34.318863, 37.778862, 35.231770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.450073, 36.897949, 34.956562>,  <33.859440, 37.409348, 34.854431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.450073, 36.897949, 34.956562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.544102, 37.188557, 35.214836>,  <34.600517, 37.362923, 35.369801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.544102, 37.188557, 35.214836>,  <34.450073, 36.897949, 34.956562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.544102, 37.188557, 35.214836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246269, -0.687144, 0.683509,
		0.940262, -0.001661, -0.340447,
		0.235071, 0.726519, 0.645687,
		34.614624, 37.406513, 35.408543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.052322, 36.578724, 35.230652>,  <34.450073, 36.897949, 34.956562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.052322, 36.578724, 35.230652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.938385, 36.866825, 35.483665>,  <34.870022, 37.039684, 35.635475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.938385, 36.866825, 35.483665>,  <35.052322, 36.578724, 35.230652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.938385, 36.866825, 35.483665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174877, -0.609752, 0.773059,
		0.942486, 0.330819, 0.047730,
		-0.284846, 0.720251, 0.632536,
		34.852932, 37.082901, 35.673428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.535824, 36.509663, 35.891319>,  <35.052322, 36.578724, 35.230652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.535824, 36.509663, 35.891319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.196133, 36.688103, 36.004318>,  <34.992317, 36.795166, 36.072117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.196133, 36.688103, 36.004318>,  <35.535824, 36.509663, 35.891319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.196133, 36.688103, 36.004318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069600, -0.435775, 0.897361,
		0.523419, 0.781726, 0.339024,
		-0.849228, 0.446100, 0.282501,
		34.941364, 36.821934, 36.089069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.707508, 36.942108, 36.429939>,  <35.535824, 36.509663, 35.891319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.707508, 36.942108, 36.429939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.321728, 36.841553, 36.462532>,  <35.090260, 36.781219, 36.482086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.321728, 36.841553, 36.462532>,  <35.707508, 36.942108, 36.429939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.321728, 36.841553, 36.462532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200108, -0.493345, 0.846503,
		-0.172607, 0.832715, 0.526111,
		-0.964450, -0.251391, 0.081478,
		35.032394, 36.766136, 36.486977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.849110, 37.307514, 36.962818>,  <35.707508, 36.942108, 36.429939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.849110, 37.307514, 36.962818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.221985, 37.167854, 37.001003>,  <36.445709, 37.084061, 37.023914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.221985, 37.167854, 37.001003>,  <35.849110, 37.307514, 36.962818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.221985, 37.167854, 37.001003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338160, 0.746003, -0.573696,
		0.129092, 0.567076, 0.813486,
		0.932193, -0.349148, 0.095459,
		36.501644, 37.063110, 37.029640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.224644, 37.932350, 37.042839>,  <35.849110, 37.307514, 36.962818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.224644, 37.932350, 37.042839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.488670, 37.651737, 36.935387>,  <36.647087, 37.483368, 36.870914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.488670, 37.651737, 36.935387>,  <36.224644, 37.932350, 37.042839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.488670, 37.651737, 36.935387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328764, 0.591314, -0.736384,
		0.675444, 0.397746, 0.620946,
		0.660068, -0.701531, -0.268635,
		36.686691, 37.441277, 36.854797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.912594, 38.250061, 36.956696>,  <36.224644, 37.932350, 37.042839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.912594, 38.250061, 36.956696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.930241, 37.918621, 36.733456>,  <36.940830, 37.719757, 36.599514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.930241, 37.918621, 36.733456>,  <36.912594, 38.250061, 36.956696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.930241, 37.918621, 36.733456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426511, 0.520795, -0.739501,
		0.903406, -0.205407, 0.376386,
		0.044122, -0.828602, -0.558097,
		36.943478, 37.670040, 36.566025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.603703, 38.266335, 36.723412>,  <36.912594, 38.250061, 36.956696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.603703, 38.266335, 36.723412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.418613, 38.009335, 36.479088>,  <37.307560, 37.855137, 36.332493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.418613, 38.009335, 36.479088>,  <37.603703, 38.266335, 36.723412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.418613, 38.009335, 36.479088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391053, 0.470414, -0.791068,
		0.795590, -0.604904, 0.033578,
		-0.462725, -0.642496, -0.610806,
		37.279797, 37.816586, 36.295845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.108864, 38.109829, 36.254383>,  <37.603703, 38.266335, 36.723412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.108864, 38.109829, 36.254383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.762287, 38.026283, 36.072990>,  <37.554340, 37.976154, 35.964153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.762287, 38.026283, 36.072990>,  <38.108864, 38.109829, 36.254383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.762287, 38.026283, 36.072990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279436, 0.549834, -0.787146,
		0.413748, -0.808738, -0.418037,
		-0.866446, -0.208865, -0.453483,
		37.502354, 37.963623, 35.936947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313103, 37.912361, 35.586727>,  <38.108864, 38.109829, 36.254383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.313103, 37.912361, 35.586727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.925858, 38.003117, 35.544235>,  <37.693512, 38.057571, 35.518738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.925858, 38.003117, 35.544235>,  <38.313103, 37.912361, 35.586727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.925858, 38.003117, 35.544235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210450, 0.506446, -0.836196,
		-0.135924, -0.831886, -0.538044,
		-0.968109, 0.226890, -0.106232,
		37.635426, 38.071182, 35.512367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.234158, 37.751354, 34.928532>,  <38.313103, 37.912361, 35.586727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.234158, 37.751354, 34.928532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.942959, 38.007309, 35.026966>,  <37.768238, 38.160881, 35.086029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.942959, 38.007309, 35.026966>,  <38.234158, 37.751354, 34.928532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.942959, 38.007309, 35.026966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019715, 0.339265, -0.940484,
		-0.685295, -0.689523, -0.234370,
		-0.727999, 0.639888, 0.246090,
		37.724560, 38.199276, 35.100792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.627533, 37.634052, 34.429607>,  <38.234158, 37.751354, 34.928532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.627533, 37.634052, 34.429607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.610394, 38.006660, 34.574070>,  <37.600109, 38.230225, 34.660748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.610394, 38.006660, 34.574070>,  <37.627533, 37.634052, 34.429607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.610394, 38.006660, 34.574070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234934, 0.360751, -0.902588,
		-0.971066, 0.046174, -0.234303,
		-0.042849, 0.931518, 0.361161,
		37.597538, 38.286118, 34.682419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.216461, 37.936810, 34.013592>,  <37.627533, 37.634052, 34.429607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.216461, 37.936810, 34.013592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.359921, 38.275177, 34.171474>,  <37.445995, 38.478195, 34.266205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.359921, 38.275177, 34.171474>,  <37.216461, 37.936810, 34.013592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.359921, 38.275177, 34.171474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051182, 0.404384, -0.913156,
		-0.932069, 0.347704, 0.101735,
		0.358648, 0.845917, 0.394710,
		37.467514, 38.528954, 34.289886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.929325, 38.389622, 33.595734>,  <37.216461, 37.936810, 34.013592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.929325, 38.389622, 33.595734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.228401, 38.587643, 33.772770>,  <37.407845, 38.706455, 33.878994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.228401, 38.587643, 33.772770>,  <36.929325, 38.389622, 33.595734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.228401, 38.587643, 33.772770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034441, 0.636699, -0.770343,
		-0.663159, 0.591218, 0.459001,
		0.747686, 0.495051, 0.442595,
		37.452705, 38.736156, 33.905548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.749226, 39.174622, 33.710896>,  <36.929325, 38.389622, 33.595734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.749226, 39.174622, 33.710896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.137169, 39.087646, 33.666916>,  <37.369934, 39.035461, 33.640526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.137169, 39.087646, 33.666916>,  <36.749226, 39.174622, 33.710896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.137169, 39.087646, 33.666916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026338, 0.542161, -0.839862,
		0.242233, 0.811653, 0.531548,
		0.969861, -0.217442, -0.109952,
		37.428127, 39.022415, 33.633930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.946732, 39.805450, 33.538944>,  <36.749226, 39.174622, 33.710896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.946732, 39.805450, 33.538944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.280128, 39.603390, 33.449394>,  <37.480167, 39.482155, 33.395664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.280128, 39.603390, 33.449394>,  <36.946732, 39.805450, 33.538944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.280128, 39.603390, 33.449394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189915, 0.642400, -0.742465,
		0.518875, 0.576319, 0.631368,
		0.833488, -0.505152, -0.223874,
		37.530174, 39.451843, 33.382233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.458321, 40.276657, 33.530087>,  <36.946732, 39.805450, 33.538944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.458321, 40.276657, 33.530087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.544239, 39.965664, 33.293652>,  <37.595791, 39.779068, 33.151791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.544239, 39.965664, 33.293652>,  <37.458321, 40.276657, 33.530087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.544239, 39.965664, 33.293652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074991, 0.616557, -0.783730,
		0.973775, 0.124019, 0.190741,
		0.214800, -0.777481, -0.591087,
		37.608681, 39.732418, 33.116325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.052364, 40.389797, 33.239388>,  <37.458321, 40.276657, 33.530087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.052364, 40.389797, 33.239388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.879951, 40.139351, 32.979481>,  <37.776505, 39.989082, 32.823536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.879951, 40.139351, 32.979481>,  <38.052364, 40.389797, 33.239388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.879951, 40.139351, 32.979481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035798, 0.707657, -0.705649,
		0.901627, -0.327417, -0.282608,
		-0.431031, -0.626115, -0.649763,
		37.750641, 39.951515, 32.784554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.449936, 40.572124, 32.613125>,  <38.052364, 40.389797, 33.239388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.449936, 40.572124, 32.613125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.142361, 40.339058, 32.507870>,  <37.957817, 40.199219, 32.444717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.142361, 40.339058, 32.507870>,  <38.449936, 40.572124, 32.613125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.142361, 40.339058, 32.507870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031541, 0.445652, -0.894651,
		0.638549, -0.679629, -0.361055,
		-0.768935, -0.582666, -0.263134,
		37.911678, 40.164257, 32.428928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.651016, 40.359554, 32.009377>,  <38.449936, 40.572124, 32.613125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.651016, 40.359554, 32.009377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.253227, 40.335361, 32.043694>,  <38.014553, 40.320847, 32.064281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.253227, 40.335361, 32.043694>,  <38.651016, 40.359554, 32.009377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.253227, 40.335361, 32.043694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102811, 0.396466, -0.912274,
		0.021163, -0.916055, -0.400495,
		-0.994476, -0.060482, 0.085790,
		37.954884, 40.317215, 32.069431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.366688, 40.043762, 31.374741>,  <38.651016, 40.359554, 32.009377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.366688, 40.043762, 31.374741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.062096, 40.244007, 31.539438>,  <37.879341, 40.364155, 31.638256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.062096, 40.244007, 31.539438>,  <38.366688, 40.043762, 31.374741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.062096, 40.244007, 31.539438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211303, 0.408802, -0.887824,
		-0.612779, -0.763063, -0.205514,
		-0.761481, 0.500614, 0.411743,
		37.833652, 40.394192, 31.662962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.763866, 39.881691, 30.973753>,  <38.366688, 40.043762, 31.374741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.763866, 39.881691, 30.973753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.693817, 40.234589, 31.148554>,  <37.651787, 40.446327, 31.253435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.693817, 40.234589, 31.148554>,  <37.763866, 39.881691, 30.973753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.693817, 40.234589, 31.148554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277854, 0.381533, -0.881606,
		-0.944526, -0.275810, 0.178322,
		-0.175120, 0.882248, 0.437003,
		37.641281, 40.499264, 31.279655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.139797, 40.073051, 30.734919>,  <37.763866, 39.881691, 30.973753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.139797, 40.073051, 30.734919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.349926, 40.389267, 30.860830>,  <37.476002, 40.578999, 30.936377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.349926, 40.389267, 30.860830>,  <37.139797, 40.073051, 30.734919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.349926, 40.389267, 30.860830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313764, 0.523830, -0.791931,
		-0.790945, 0.317249, 0.523221,
		0.525318, 0.790541, 0.314779,
		37.507523, 40.626431, 30.955263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.571499, 40.527588, 30.641272>,  <37.139797, 40.073051, 30.734919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.571499, 40.527588, 30.641272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.907585, 40.739799, 30.686144>,  <37.109238, 40.867126, 30.713066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.907585, 40.739799, 30.686144>,  <36.571499, 40.527588, 30.641272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.907585, 40.739799, 30.686144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284035, 0.606808, -0.742367,
		-0.461915, 0.591884, 0.660536,
		0.840213, 0.530526, 0.112179,
		37.159649, 40.898956, 30.719797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.418766, 41.229435, 30.610565>,  <36.571499, 40.527588, 30.641272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.418766, 41.229435, 30.610565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.810413, 41.250092, 30.531910>,  <37.045403, 41.262486, 30.484716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.810413, 41.250092, 30.531910>,  <36.418766, 41.229435, 30.610565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.810413, 41.250092, 30.531910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179849, 0.671013, -0.719302,
		0.094800, 0.739645, 0.666287,
		0.979116, 0.051642, -0.196636,
		37.104149, 41.265583, 30.472919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611145, 41.947361, 30.647516>,  <36.418766, 41.229435, 30.610565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.611145, 41.947361, 30.647516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.876938, 41.766376, 30.409611>,  <37.036411, 41.657784, 30.266869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.876938, 41.766376, 30.409611>,  <36.611145, 41.947361, 30.647516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.876938, 41.766376, 30.409611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135194, 0.709960, -0.691143,
		0.734976, 0.539659, 0.410584,
		0.664480, -0.452465, -0.594762,
		37.076283, 41.630638, 30.231182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.910664, 42.526058, 30.330362>,  <36.611145, 41.947361, 30.647516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.910664, 42.526058, 30.330362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.034508, 42.212322, 30.115347>,  <37.108814, 42.024078, 29.986338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.034508, 42.212322, 30.115347>,  <36.910664, 42.526058, 30.330362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.034508, 42.212322, 30.115347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046133, 0.552260, -0.832395,
		0.949744, 0.282515, 0.134800,
		0.309608, -0.784343, -0.537539,
		37.127392, 41.977020, 29.954084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.497063, 42.786137, 29.978310>,  <36.910664, 42.526058, 30.330362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.497063, 42.786137, 29.978310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.347698, 42.473671, 29.778172>,  <37.258080, 42.286190, 29.658089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.347698, 42.473671, 29.778172>,  <37.497063, 42.786137, 29.978310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.347698, 42.473671, 29.778172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028188, 0.529555, -0.847807,
		0.927236, -0.330687, -0.175724,
		-0.373414, -0.781165, -0.500344,
		37.235676, 42.239323, 29.628069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.906742, 42.835449, 29.301977>,  <37.497063, 42.786137, 29.978310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.906742, 42.835449, 29.301977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.567074, 42.628548, 29.259361>,  <37.363274, 42.504406, 29.233791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.567074, 42.628548, 29.259361>,  <37.906742, 42.835449, 29.301977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.567074, 42.628548, 29.259361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119277, 0.384366, -0.915443,
		0.514472, -0.764660, -0.388090,
		-0.849171, -0.517260, -0.106539,
		37.312321, 42.473370, 29.227400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021908, 42.674801, 28.602831>,  <37.906742, 42.835449, 29.301977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.021908, 42.674801, 28.602831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.642544, 42.588345, 28.695616>,  <37.414925, 42.536469, 28.751286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.642544, 42.588345, 28.695616>,  <38.021908, 42.674801, 28.602831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.642544, 42.588345, 28.695616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273896, 0.190024, -0.942800,
		0.159691, -0.957694, -0.239418,
		-0.948409, -0.216132, 0.231963,
		37.358021, 42.523502, 28.765203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.906773, 42.236416, 28.160849>,  <38.021908, 42.674801, 28.602831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.906773, 42.236416, 28.160849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.540863, 42.371490, 28.249535>,  <37.321316, 42.452534, 28.302746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.540863, 42.371490, 28.249535>,  <37.906773, 42.236416, 28.160849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.540863, 42.371490, 28.249535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189631, 0.125662, -0.973781,
		-0.356690, -0.932834, -0.050917,
		-0.914774, 0.337683, 0.221716,
		37.266430, 42.472794, 28.316050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.531754, 42.000381, 27.622843>,  <37.906773, 42.236416, 28.160849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.531754, 42.000381, 27.622843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.321476, 42.299309, 27.785400>,  <37.195309, 42.478664, 27.882935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.321476, 42.299309, 27.785400>,  <37.531754, 42.000381, 27.622843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.321476, 42.299309, 27.785400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215747, 0.344983, -0.913477,
		-0.822857, -0.567891, -0.020125,
		-0.525698, 0.747319, 0.406393,
		37.163765, 42.523506, 27.907318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.900955, 42.060329, 27.220095>,  <37.531754, 42.000381, 27.622843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.900955, 42.060329, 27.220095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.922089, 42.415642, 27.402596>,  <36.934769, 42.628830, 27.512096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.922089, 42.415642, 27.402596>,  <36.900955, 42.060329, 27.220095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.922089, 42.415642, 27.402596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217030, 0.456184, -0.863015,
		-0.974734, -0.053423, 0.216885,
		0.052834, 0.888280, 0.456252,
		36.937939, 42.682125, 27.539471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.299934, 42.383846, 27.011805>,  <36.900955, 42.060329, 27.220095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.299934, 42.383846, 27.011805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.541630, 42.676167, 27.138821>,  <36.686646, 42.851559, 27.215031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.541630, 42.676167, 27.138821>,  <36.299934, 42.383846, 27.011805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.541630, 42.676167, 27.138821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175025, 0.510513, -0.841868,
		-0.777344, 0.453111, 0.436379,
		0.604237, 0.730798, 0.317539,
		36.722900, 42.895405, 27.234083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.004230, 42.981216, 26.881557>,  <36.299934, 42.383846, 27.011805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.004230, 42.981216, 26.881557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.395260, 43.065166, 26.888542>,  <36.629875, 43.115536, 26.892733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.395260, 43.065166, 26.888542>,  <36.004230, 42.981216, 26.881557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395260, 43.065166, 26.888542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090258, 0.492422, -0.865664,
		-0.190281, 0.844672, 0.500321,
		0.977572, 0.209878, 0.017460,
		36.688530, 43.128128, 26.893780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.080212, 43.590347, 26.488108>,  <36.004230, 42.981216, 26.881557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.080212, 43.590347, 26.488108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.469013, 43.513691, 26.542477>,  <36.702293, 43.467697, 26.575098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.469013, 43.513691, 26.542477>,  <36.080212, 43.590347, 26.488108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.469013, 43.513691, 26.542477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218573, 0.525401, -0.822301,
		0.086171, 0.828992, 0.552581,
		0.972008, -0.191638, 0.135921,
		36.760616, 43.456200, 26.583254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.535881, 44.251930, 26.566198>,  <36.080212, 43.590347, 26.488108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.535881, 44.251930, 26.566198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.769943, 43.960041, 26.424723>,  <36.910381, 43.784908, 26.339836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.769943, 43.960041, 26.424723>,  <36.535881, 44.251930, 26.566198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.769943, 43.960041, 26.424723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339771, 0.616655, -0.710135,
		0.736308, 0.295365, 0.608778,
		0.585155, -0.729723, -0.353691,
		36.945488, 43.741123, 26.318615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.256451, 44.509850, 26.595249>,  <36.535881, 44.251930, 26.566198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.256451, 44.509850, 26.595249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.255043, 44.203346, 26.338242>,  <37.254200, 44.019444, 26.184038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.255043, 44.203346, 26.338242>,  <37.256451, 44.509850, 26.595249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.255043, 44.203346, 26.338242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476914, 0.563457, -0.674588,
		0.878943, -0.308799, 0.363459,
		-0.003519, -0.766263, -0.642518,
		37.253986, 43.973469, 26.145487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.761345, 44.777802, 26.076447>,  <37.256451, 44.509850, 26.595249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.761345, 44.777802, 26.076447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.674019, 44.422272, 25.915283>,  <37.621624, 44.208954, 25.818584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.674019, 44.422272, 25.915283>,  <37.761345, 44.777802, 26.076447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.674019, 44.422272, 25.915283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656556, 0.171680, -0.734480,
		0.721992, -0.424883, 0.546079,
		-0.218318, -0.888820, -0.402910,
		37.608524, 44.155624, 25.794411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.423916, 44.400539, 25.911581>,  <37.761345, 44.777802, 26.076447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.423916, 44.400539, 25.911581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.122063, 44.285877, 25.675491>,  <37.940952, 44.217079, 25.533838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.122063, 44.285877, 25.675491>,  <38.423916, 44.400539, 25.911581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.122063, 44.285877, 25.675491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505889, 0.318676, -0.801575,
		0.417864, -0.903480, -0.095468,
		-0.754630, -0.286653, -0.590223,
		37.895672, 44.199883, 25.498425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789421, 44.027416, 25.342693>,  <38.423916, 44.400539, 25.911581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.789421, 44.027416, 25.342693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.423416, 44.147346, 25.234718>,  <38.203815, 44.219303, 25.169933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.423416, 44.147346, 25.234718>,  <38.789421, 44.027416, 25.342693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.423416, 44.147346, 25.234718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388912, 0.477622, -0.787797,
		-0.107274, -0.825822, -0.553633,
		-0.915008, 0.299825, -0.269936,
		38.148914, 44.237293, 25.153738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.685253, 43.896992, 24.706108>,  <38.789421, 44.027416, 25.342693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.685253, 43.896992, 24.706108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.415028, 44.185116, 24.769060>,  <38.252892, 44.357990, 24.806831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.415028, 44.185116, 24.769060>,  <38.685253, 43.896992, 24.706108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.415028, 44.185116, 24.769060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414232, 0.547381, -0.727177,
		-0.609941, -0.426060, -0.668165,
		-0.675562, 0.720310, 0.157382,
		38.212360, 44.401207, 24.816275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.256947, 43.285400, 24.375591>,  <38.685253, 43.896992, 24.706108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.256947, 43.285400, 24.375591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.478512, 43.077286, 24.115597>,  <38.611450, 42.952415, 23.959600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.478512, 43.077286, 24.115597>,  <38.256947, 43.285400, 24.375591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.478512, 43.077286, 24.115597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227824, -0.656177, 0.719394,
		-0.800796, -0.546565, -0.244933,
		0.553915, -0.520287, -0.649985,
		38.644688, 42.921200, 23.920601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.032597, 42.436760, 24.407566>,  <38.256947, 43.285400, 24.375591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.032597, 42.436760, 24.407566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.402264, 42.473152, 24.259167>,  <38.624062, 42.494987, 24.170126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.402264, 42.473152, 24.259167>,  <38.032597, 42.436760, 24.407566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.402264, 42.473152, 24.259167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337945, -0.647505, 0.683031,
		-0.178079, -0.756611, -0.629149,
		0.924165, 0.090984, -0.370999,
		38.679512, 42.500446, 24.147867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.252563, 41.865208, 24.457739>,  <38.032597, 42.436760, 24.407566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.252563, 41.865208, 24.457739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.597969, 42.060463, 24.407038>,  <38.805210, 42.177616, 24.376617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.597969, 42.060463, 24.407038>,  <38.252563, 41.865208, 24.457739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.597969, 42.060463, 24.407038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463997, -0.670464, 0.578952,
		0.197626, -0.558745, -0.805449,
		0.863511, 0.488142, -0.126754,
		38.857021, 42.206905, 24.369011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.790192, 41.382862, 24.356035>,  <38.252563, 41.865208, 24.457739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.790192, 41.382862, 24.356035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.975143, 41.717663, 24.473095>,  <39.086113, 41.918541, 24.543331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.975143, 41.717663, 24.473095>,  <38.790192, 41.382862, 24.356035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.975143, 41.717663, 24.473095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582512, -0.535573, 0.611425,
		0.668497, -0.112237, -0.735197,
		0.462376, 0.836997, 0.292650,
		39.113857, 41.968761, 24.560890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.480389, 41.238728, 24.405556>,  <38.790192, 41.382862, 24.356035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.480389, 41.238728, 24.405556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.475559, 41.557495, 24.647141>,  <39.472660, 41.748756, 24.792091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.475559, 41.557495, 24.647141>,  <39.480389, 41.238728, 24.405556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.475559, 41.557495, 24.647141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422476, -0.543379, 0.725433,
		0.906293, 0.263919, -0.330119,
		-0.012076, 0.796923, 0.603960,
		39.471935, 41.796574, 24.828329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.163654, 41.240906, 24.707422>,  <39.480389, 41.238728, 24.405556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.163654, 41.240906, 24.707422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.946793, 41.477585, 24.946072>,  <39.816673, 41.619591, 25.089262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.946793, 41.477585, 24.946072>,  <40.163654, 41.240906, 24.707422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.946793, 41.477585, 24.946072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358441, -0.479337, 0.801097,
		0.759989, 0.648176, 0.047789,
		-0.542159, 0.591696, 0.596623,
		39.784145, 41.655094, 25.125059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.614918, 41.537529, 25.236769>,  <40.163654, 41.240906, 24.707422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.614918, 41.537529, 25.236769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.246178, 41.560696, 25.390045>,  <40.024933, 41.574596, 25.482012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.246178, 41.560696, 25.390045>,  <40.614918, 41.537529, 25.236769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.246178, 41.560696, 25.390045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304017, -0.505135, 0.807720,
		0.240342, 0.861095, 0.448052,
		-0.921851, 0.057913, 0.383193,
		39.969624, 41.578068, 25.505003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.746143, 41.771111, 25.951839>,  <40.614918, 41.537529, 25.236769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.746143, 41.771111, 25.951839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.372452, 41.629211, 25.966629>,  <40.148235, 41.544071, 25.975502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.372452, 41.629211, 25.966629>,  <40.746143, 41.771111, 25.951839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.372452, 41.629211, 25.966629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137101, -0.261479, 0.955422,
		-0.329271, 0.897652, 0.292918,
		-0.934229, -0.354753, 0.036972,
		40.092182, 41.522785, 25.977720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.345448, 42.129429, 26.582602>,  <40.746143, 41.771111, 25.951839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.345448, 42.129429, 26.582602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.209106, 41.767868, 26.479239>,  <40.127300, 41.550930, 26.417221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.209106, 41.767868, 26.479239>,  <40.345448, 42.129429, 26.582602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.209106, 41.767868, 26.479239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090494, -0.305138, 0.947999,
		-0.935751, 0.299743, 0.185805,
		-0.340852, -0.903905, -0.258409,
		40.106850, 41.496696, 26.401716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.803265, 41.989613, 27.100668>,  <40.345448, 42.129429, 26.582602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.803265, 41.989613, 27.100668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.886765, 41.629959, 26.946791>,  <39.936863, 41.414169, 26.854465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.886765, 41.629959, 26.946791>,  <39.803265, 41.989613, 27.100668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.886765, 41.629959, 26.946791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057906, -0.404030, 0.912911,
		-0.976253, -0.168293, -0.136406,
		0.208749, -0.899131, -0.384691,
		39.949390, 41.360218, 26.831383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.180805, 41.565712, 27.133579>,  <39.803265, 41.989613, 27.100668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.180805, 41.565712, 27.133579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.489655, 41.313538, 27.101614>,  <39.674965, 41.162235, 27.082436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.489655, 41.313538, 27.101614>,  <39.180805, 41.565712, 27.133579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.489655, 41.313538, 27.101614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352053, -0.529046, 0.772120,
		-0.529046, -0.568036, -0.630432,
		-0.772120, 0.630432, 0.079911,
		39.721291, 41.124409, 27.077641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.903667, 41.066780, 27.466988>,  <39.180805, 41.565712, 27.133579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.903667, 41.066780, 27.466988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.276333, 40.939796, 27.396313>,  <39.499931, 40.863605, 27.353909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.276333, 40.939796, 27.396313>,  <38.903667, 41.066780, 27.466988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.276333, 40.939796, 27.396313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092525, -0.677600, 0.729587,
		-0.351337, -0.663383, -0.660670,
		0.931666, -0.317460, -0.176686,
		39.555832, 40.844559, 27.343307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.926743, 40.352924, 27.387598>,  <38.903667, 41.066780, 27.466988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.926743, 40.352924, 27.387598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.299263, 40.443184, 27.501968>,  <39.522778, 40.497341, 27.570591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.299263, 40.443184, 27.501968>,  <38.926743, 40.352924, 27.387598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.299263, 40.443184, 27.501968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086302, -0.625938, 0.775083,
		0.353868, -0.746515, -0.563465,
		0.931305, 0.225649, 0.285925,
		39.578655, 40.510880, 27.587746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.309807, 39.726051, 27.259069>,  <38.926743, 40.352924, 27.387598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.309807, 39.726051, 27.259069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.454029, 39.963730, 27.546661>,  <39.540562, 40.106339, 27.719215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.454029, 39.963730, 27.546661>,  <39.309807, 39.726051, 27.259069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.454029, 39.963730, 27.546661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021268, -0.765386, 0.643219,
		0.932496, -0.247206, -0.263325,
		0.360553, 0.594199, 0.718978,
		39.562195, 40.141991, 27.762354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.630280, 39.242256, 27.670372>,  <39.309807, 39.726051, 27.259069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.630280, 39.242256, 27.670372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.596134, 39.564583, 27.904762>,  <39.575645, 39.757980, 28.045397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.596134, 39.564583, 27.904762>,  <39.630280, 39.242256, 27.670372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.596134, 39.564583, 27.904762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073880, -0.581385, 0.810267,
		0.993607, 0.112459, -0.009905,
		-0.085363, 0.805819, 0.585977,
		39.570526, 39.806328, 28.080555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.053715, 39.107704, 28.105553>,  <39.630280, 39.242256, 27.670372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.053715, 39.107704, 28.105553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.854359, 39.397274, 28.296358>,  <39.734745, 39.571014, 28.410841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.854359, 39.397274, 28.296358>,  <40.053715, 39.107704, 28.105553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.854359, 39.397274, 28.296358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016740, -0.542079, 0.840161,
		0.866792, 0.426712, 0.258048,
		-0.498390, 0.723925, 0.477013,
		39.704842, 39.614452, 28.439463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.399162, 39.321266, 28.725737>,  <40.053715, 39.107704, 28.105553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.399162, 39.321266, 28.725737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.024208, 39.440060, 28.798532>,  <39.799236, 39.511333, 28.842211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.024208, 39.440060, 28.798532>,  <40.399162, 39.321266, 28.725737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.024208, 39.440060, 28.798532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041771, -0.422877, 0.905224,
		0.345793, 0.856141, 0.383992,
		-0.937381, 0.296980, 0.181990,
		39.742992, 39.529152, 28.853130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.401382, 39.653271, 29.379103>,  <40.399162, 39.321266, 28.725737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.401382, 39.653271, 29.379103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.014061, 39.569683, 29.324364>,  <39.781670, 39.519531, 29.291521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.014061, 39.569683, 29.324364>,  <40.401382, 39.653271, 29.379103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.014061, 39.569683, 29.324364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025681, -0.461660, 0.886685,
		-0.248468, 0.862091, 0.441659,
		-0.968300, -0.208971, -0.136847,
		39.723572, 39.506992, 29.283310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.148014, 39.787285, 29.993763>,  <40.401382, 39.653271, 29.379103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.148014, 39.787285, 29.993763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.844166, 39.575306, 29.842960>,  <39.661858, 39.448120, 29.752480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.844166, 39.575306, 29.842960>,  <40.148014, 39.787285, 29.993763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.844166, 39.575306, 29.842960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296145, -0.234248, 0.925973,
		-0.579030, 0.815035, 0.020998,
		-0.759619, -0.529948, -0.377005,
		39.616280, 39.416321, 29.729858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.486435, 39.927414, 30.305386>,  <40.148014, 39.787285, 29.993763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.486435, 39.927414, 30.305386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.441105, 39.560104, 30.153631>,  <39.413906, 39.339718, 30.062578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.441105, 39.560104, 30.153631>,  <39.486435, 39.927414, 30.305386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.441105, 39.560104, 30.153631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353355, -0.319632, 0.879190,
		-0.928599, 0.233696, -0.288253,
		-0.113329, -0.918271, -0.379388,
		39.407104, 39.284622, 30.039814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.951122, 39.713665, 30.630617>,  <39.486435, 39.927414, 30.305386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.951122, 39.713665, 30.630617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.102741, 39.366634, 30.501854>,  <39.193714, 39.158417, 30.424595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.102741, 39.366634, 30.501854>,  <38.951122, 39.713665, 30.630617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.102741, 39.366634, 30.501854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239756, -0.428064, 0.871366,
		-0.893777, -0.253112, -0.370265,
		0.379051, -0.867580, -0.321909,
		39.216457, 39.106361, 30.405281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504566, 39.289005, 30.841099>,  <38.951122, 39.713665, 30.630617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.504566, 39.289005, 30.841099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.790363, 39.027615, 30.741129>,  <38.961842, 38.870781, 30.681147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.790363, 39.027615, 30.741129>,  <38.504566, 39.289005, 30.841099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.790363, 39.027615, 30.741129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282873, -0.596542, 0.751080,
		-0.639906, -0.465945, -0.611078,
		0.714495, -0.653477, -0.249927,
		39.004711, 38.831573, 30.666151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.178528, 38.618973, 30.773413>,  <38.504566, 39.289005, 30.841099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.178528, 38.618973, 30.773413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.568348, 38.582344, 30.855249>,  <38.802242, 38.560368, 30.904352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.568348, 38.582344, 30.855249>,  <38.178528, 38.618973, 30.773413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.568348, 38.582344, 30.855249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213024, -0.662367, 0.718255,
		0.069744, -0.743562, -0.665020,
		0.974555, -0.091571, 0.204593,
		38.860714, 38.554874, 30.916628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313419, 37.948658, 30.819860>,  <38.178528, 38.618973, 30.773413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.313419, 37.948658, 30.819860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.629436, 38.102367, 31.010931>,  <38.819046, 38.194592, 31.125572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.629436, 38.102367, 31.010931>,  <38.313419, 37.948658, 30.819860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.629436, 38.102367, 31.010931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070956, -0.716617, 0.693848,
		0.608936, -0.582061, -0.538889,
		0.790039, 0.384272, 0.477675,
		38.866447, 38.217648, 31.154234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.768620, 37.369881, 30.999434>,  <38.313419, 37.948658, 30.819860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.768620, 37.369881, 30.999434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.893860, 37.674458, 31.226473>,  <38.969006, 37.857204, 31.362696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.893860, 37.674458, 31.226473>,  <38.768620, 37.369881, 30.999434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.893860, 37.674458, 31.226473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041378, -0.608017, 0.792845,
		0.948818, -0.224755, -0.221878,
		0.313101, 0.761447, 0.567597,
		38.987789, 37.902893, 31.396751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.290283, 37.087288, 31.365664>,  <38.768620, 37.369881, 30.999434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.290283, 37.087288, 31.365664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.163902, 37.404358, 31.574219>,  <39.088074, 37.594601, 31.699352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.163902, 37.404358, 31.574219>,  <39.290283, 37.087288, 31.365664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.163902, 37.404358, 31.574219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120970, -0.511395, 0.850789,
		0.941033, 0.331878, 0.065685,
		-0.315949, 0.792674, 0.521387,
		39.069118, 37.642159, 31.730635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.715225, 37.207859, 31.956675>,  <39.290283, 37.087288, 31.365664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.715225, 37.207859, 31.956675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.394562, 37.412560, 32.080261>,  <39.202164, 37.535381, 32.154415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.394562, 37.412560, 32.080261>,  <39.715225, 37.207859, 31.956675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.394562, 37.412560, 32.080261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080232, -0.420069, 0.903939,
		0.592379, 0.749436, 0.295692,
		-0.801655, 0.511750, 0.308969,
		39.154064, 37.566086, 32.172951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.859291, 37.366112, 32.702938>,  <39.715225, 37.207859, 31.956675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.859291, 37.366112, 32.702938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.467064, 37.362888, 32.624538>,  <39.231728, 37.360954, 32.577499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.467064, 37.362888, 32.624538>,  <39.859291, 37.366112, 32.702938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.467064, 37.362888, 32.624538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171747, -0.447512, 0.877631,
		-0.094785, 0.894242, 0.437433,
		-0.980571, -0.008058, -0.196000,
		39.172894, 37.360470, 32.565739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.513088, 37.696945, 33.281940>,  <39.859291, 37.366112, 32.702938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.513088, 37.696945, 33.281940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.228130, 37.489799, 33.092499>,  <39.057156, 37.365513, 32.978832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.228130, 37.489799, 33.092499>,  <39.513088, 37.696945, 33.281940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.228130, 37.489799, 33.092499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219692, -0.476368, 0.851357,
		-0.666500, 0.710553, 0.225593,
		-0.712399, -0.517869, -0.473603,
		39.014412, 37.334438, 32.950417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.838348, 37.924103, 33.645222>,  <39.513088, 37.696945, 33.281940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.838348, 37.924103, 33.645222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.808720, 37.564312, 33.472965>,  <38.790943, 37.348438, 33.369610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.808720, 37.564312, 33.472965>,  <38.838348, 37.924103, 33.645222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.808720, 37.564312, 33.472965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216395, -0.407045, 0.887405,
		-0.973492, 0.158924, -0.164491,
		-0.074075, -0.899476, -0.430645,
		38.786499, 37.294468, 33.343773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.289234, 37.581753, 33.918377>,  <38.838348, 37.924103, 33.645222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.289234, 37.581753, 33.918377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.493549, 37.273224, 33.766499>,  <38.616138, 37.088108, 33.675373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.493549, 37.273224, 33.766499>,  <38.289234, 37.581753, 33.918377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.493549, 37.273224, 33.766499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110852, -0.497056, 0.860609,
		-0.852532, -0.397495, -0.339391,
		0.510784, -0.771319, -0.379693,
		38.646786, 37.041828, 33.652592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.920918, 36.906448, 34.163364>,  <38.289234, 37.581753, 33.918377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.920918, 36.906448, 34.163364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.266636, 36.770279, 34.015251>,  <38.474068, 36.688576, 33.926384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.266636, 36.770279, 34.015251>,  <37.920918, 36.906448, 34.163364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.266636, 36.770279, 34.015251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136343, -0.550037, 0.823935,
		-0.484155, -0.762607, -0.428979,
		0.864294, -0.340424, -0.370280,
		38.525925, 36.668152, 33.904167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.853943, 36.189655, 34.209206>,  <37.920918, 36.906448, 34.163364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.853943, 36.189655, 34.209206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.248707, 36.249928, 34.186203>,  <38.485565, 36.286091, 34.172401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.248707, 36.249928, 34.186203>,  <37.853943, 36.189655, 34.209206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.248707, 36.249928, 34.186203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135359, -0.580000, 0.803292,
		0.087690, -0.800559, -0.592803,
		0.986908, 0.150682, -0.057503,
		38.544781, 36.295132, 34.168953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194553, 35.508385, 34.389767>,  <37.853943, 36.189655, 34.209206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.194553, 35.508385, 34.389767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.485104, 35.782520, 34.410515>,  <38.659435, 35.947002, 34.422966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.485104, 35.782520, 34.410515>,  <38.194553, 35.508385, 34.389767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.485104, 35.782520, 34.410515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387704, -0.470898, 0.792427,
		0.567509, -0.555487, -0.607757,
		0.726375, 0.685339, 0.051875,
		38.703014, 35.988121, 34.426079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.823589, 35.183567, 34.297615>,  <38.194553, 35.508385, 34.389767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.823589, 35.183567, 34.297615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.886505, 35.521183, 34.502693>,  <38.924255, 35.723751, 34.625740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.886505, 35.521183, 34.502693>,  <38.823589, 35.183567, 34.297615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.886505, 35.521183, 34.502693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435207, -0.525272, 0.731221,
		0.886485, 0.108120, -0.449949,
		0.157286, 0.844038, 0.512700,
		38.933689, 35.774395, 34.656502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.552895, 35.185001, 34.406322>,  <38.823589, 35.183567, 34.297615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.552895, 35.185001, 34.406322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.437172, 35.437885, 34.693825>,  <39.367741, 35.589615, 34.866325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.437172, 35.437885, 34.693825>,  <39.552895, 35.185001, 34.406322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.437172, 35.437885, 34.693825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506731, -0.535880, 0.675319,
		0.812113, 0.559588, -0.165330,
		-0.289303, 0.632213, 0.718756,
		39.350380, 35.627548, 34.909451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.166290, 35.369087, 34.820774>,  <39.552895, 35.185001, 34.406322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.166290, 35.369087, 34.820774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.835983, 35.439171, 35.035217>,  <39.637798, 35.481220, 35.163883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.835983, 35.439171, 35.035217>,  <40.166290, 35.369087, 34.820774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.835983, 35.439171, 35.035217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365075, -0.558494, 0.744852,
		0.429919, 0.810793, 0.397221,
		-0.825766, 0.175211, 0.536107,
		39.588253, 35.491734, 35.196049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.428799, 35.249912, 35.428860>,  <40.166290, 35.369087, 34.820774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.428799, 35.249912, 35.428860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.040535, 35.231377, 35.523243>,  <39.807579, 35.220257, 35.579872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.040535, 35.231377, 35.523243>,  <40.428799, 35.249912, 35.428860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.040535, 35.231377, 35.523243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228463, -0.483858, 0.844799,
		0.075025, 0.873919, 0.480247,
		-0.970657, -0.046338, 0.235960,
		39.749336, 35.217476, 35.594032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.379559, 35.357166, 36.104797>,  <40.428799, 35.249912, 35.428860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.379559, 35.357166, 36.104797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.018642, 35.194027, 36.048904>,  <39.802094, 35.096142, 36.015369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.018642, 35.194027, 36.048904>,  <40.379559, 35.357166, 36.104797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.018642, 35.194027, 36.048904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138520, -0.581182, 0.801898,
		-0.408265, 0.704191, 0.580892,
		-0.902293, -0.407852, -0.139732,
		39.747955, 35.071671, 36.006985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.102360, 35.270145, 36.775471>,  <40.379559, 35.357166, 36.104797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.102360, 35.270145, 36.775471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.907852, 35.004879, 36.547874>,  <39.791149, 34.845718, 36.411316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.907852, 35.004879, 36.547874>,  <40.102360, 35.270145, 36.775471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.907852, 35.004879, 36.547874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006884, -0.654048, 0.756421,
		-0.873781, 0.363908, 0.322610,
		-0.486271, -0.663168, -0.568990,
		39.761971, 34.805927, 36.377178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.466564, 34.971157, 37.170502>,  <40.102360, 35.270145, 36.775471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.466564, 34.971157, 37.170502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.564262, 34.710022, 36.883686>,  <39.622883, 34.553341, 36.711597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.564262, 34.710022, 36.883686>,  <39.466564, 34.971157, 37.170502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.564262, 34.710022, 36.883686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124826, -0.754453, 0.644375,
		-0.961645, -0.067881, -0.265765,
		0.244248, -0.652835, -0.717042,
		39.637535, 34.514172, 36.668575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.095974, 34.366882, 37.395420>,  <39.466564, 34.971157, 37.170502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.095974, 34.366882, 37.395420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.330410, 34.218639, 37.107212>,  <39.471073, 34.129696, 36.934288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.330410, 34.218639, 37.107212>,  <39.095974, 34.366882, 37.395420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.330410, 34.218639, 37.107212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001197, -0.888864, 0.458170,
		-0.810242, -0.269393, -0.520514,
		0.586094, -0.370605, -0.720518,
		39.506237, 34.107456, 36.891056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.851780, 33.692539, 37.178501>,  <39.095974, 34.366882, 37.395420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.851780, 33.692539, 37.178501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.243736, 33.708019, 37.100193>,  <39.478909, 33.717308, 37.053207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.243736, 33.708019, 37.100193>,  <38.851780, 33.692539, 37.178501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.243736, 33.708019, 37.100193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142581, -0.822141, 0.551140,
		-0.139617, -0.567967, -0.811123,
		0.979887, 0.038702, -0.195766,
		39.537701, 33.719631, 37.041462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.988117, 33.044930, 37.106899>,  <38.851780, 33.692539, 37.178501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.988117, 33.044930, 37.106899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.365376, 33.170517, 37.150539>,  <39.591728, 33.245869, 37.176723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.365376, 33.170517, 37.150539>,  <38.988117, 33.044930, 37.106899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.365376, 33.170517, 37.150539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211263, -0.819648, 0.532490,
		0.256611, -0.479165, -0.839376,
		0.943143, 0.313972, 0.109101,
		39.648319, 33.264709, 37.183270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.508564, 32.476395, 36.876770>,  <38.988117, 33.044930, 37.106899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.508564, 32.476395, 36.876770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.696838, 32.718834, 37.133240>,  <39.809803, 32.864296, 37.287121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.696838, 32.718834, 37.133240>,  <39.508564, 32.476395, 36.876770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.696838, 32.718834, 37.133240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127232, -0.765738, 0.630442,
		0.873078, -0.215163, -0.437538,
		0.470688, 0.606094, 0.641173,
		39.838043, 32.900661, 37.325592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.953445, 32.023216, 37.197426>,  <39.508564, 32.476395, 36.876770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.953445, 32.023216, 37.197426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.032040, 32.344257, 37.422718>,  <40.079197, 32.536880, 37.557892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.032040, 32.344257, 37.422718>,  <39.953445, 32.023216, 37.197426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.032040, 32.344257, 37.422718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096162, -0.587430, 0.803541,
		0.975781, -0.103720, -0.192599,
		0.196482, 0.802601, 0.563229,
		40.090984, 32.585037, 37.591686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.518177, 31.886230, 37.538704>,  <39.953445, 32.023216, 37.197426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.518177, 31.886230, 37.538704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.291027, 32.142586, 37.745304>,  <40.154736, 32.296398, 37.869267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.291027, 32.142586, 37.745304>,  <40.518177, 31.886230, 37.538704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.291027, 32.142586, 37.745304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054161, -0.597047, 0.800376,
		0.821328, 0.482491, 0.304339,
		-0.567879, 0.640888, 0.516503,
		40.120663, 32.334850, 37.900253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.819527, 31.872530, 38.189388>,  <40.518177, 31.886230, 37.538704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.819527, 31.872530, 38.189388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.439350, 31.994860, 38.211781>,  <40.211243, 32.068256, 38.225216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.439350, 31.994860, 38.211781>,  <40.819527, 31.872530, 38.189388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.439350, 31.994860, 38.211781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105396, -0.486318, 0.867402,
		0.292493, 0.818515, 0.494449,
		-0.950442, 0.305822, 0.055976,
		40.154217, 32.086605, 38.228573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.793518, 32.203976, 38.887184>,  <40.819527, 31.872530, 38.189388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.793518, 32.203976, 38.887184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.433498, 32.084675, 38.760094>,  <40.217484, 32.013096, 38.683842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.433498, 32.084675, 38.760094>,  <40.793518, 32.203976, 38.887184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.433498, 32.084675, 38.760094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243982, -0.259221, 0.934493,
		-0.361076, 0.918613, 0.160545,
		-0.900054, -0.298253, -0.317723,
		40.163483, 31.995199, 38.664776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.225708, 32.512936, 39.312263>,  <40.793518, 32.203976, 38.887184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.225708, 32.512936, 39.312263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.121223, 32.163044, 39.148991>,  <40.058533, 31.953108, 39.051025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.121223, 32.163044, 39.148991>,  <40.225708, 32.512936, 39.312263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.121223, 32.163044, 39.148991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162501, -0.376983, 0.911854,
		-0.951505, 0.304517, -0.043673,
		-0.261211, -0.874730, -0.408186,
		40.042862, 31.900625, 39.026535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.944592, 32.247814, 39.841763>,  <40.225708, 32.512936, 39.312263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.944592, 32.247814, 39.841763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.851288, 31.977844, 39.561745>,  <39.795303, 31.815861, 39.393734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.851288, 31.977844, 39.561745>,  <39.944592, 32.247814, 39.841763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.851288, 31.977844, 39.561745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230658, -0.660953, 0.714100,
		-0.944661, 0.328044, -0.001501,
		-0.233264, -0.674928, -0.700042,
		39.781307, 31.775366, 39.351730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.175926, 32.002842, 39.847202>,  <39.944592, 32.247814, 39.841763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.175926, 32.002842, 39.847202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.425900, 31.716619, 39.722340>,  <39.575882, 31.544886, 39.647423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.425900, 31.716619, 39.722340>,  <39.175926, 32.002842, 39.847202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.425900, 31.716619, 39.722340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334637, -0.606783, 0.720994,
		-0.705324, -0.346111, -0.618648,
		0.624929, -0.715557, -0.312157,
		39.613380, 31.501953, 39.628693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.800751, 31.405720, 40.085987>,  <39.175926, 32.002842, 39.847202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.800751, 31.405720, 40.085987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.150951, 31.255474, 39.964386>,  <39.361073, 31.165327, 39.891426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.150951, 31.255474, 39.964386>,  <38.800751, 31.405720, 40.085987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.150951, 31.255474, 39.964386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180198, -0.837512, 0.515852,
		-0.448363, -0.396848, -0.800926,
		0.875499, -0.375614, -0.303998,
		39.413601, 31.142790, 39.873188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.711117, 30.673975, 40.001163>,  <38.800751, 31.405720, 40.085987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.711117, 30.673975, 40.001163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.106850, 30.720596, 40.036118>,  <39.344288, 30.748569, 40.057091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.106850, 30.720596, 40.036118>,  <38.711117, 30.673975, 40.001163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.106850, 30.720596, 40.036118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049700, -0.833940, 0.549612,
		0.136937, -0.539406, -0.830837,
		0.989332, 0.116555, 0.087389,
		39.403648, 30.755562, 40.062336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.979244, 30.082861, 40.245422>,  <38.711117, 30.673975, 40.001163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.979244, 30.082861, 40.245422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.293976, 30.316462, 40.325264>,  <39.482815, 30.456623, 40.373169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.293976, 30.316462, 40.325264>,  <38.979244, 30.082861, 40.245422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.293976, 30.316462, 40.325264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310354, -0.653952, 0.689947,
		0.533462, -0.480922, -0.695796,
		0.786828, 0.584004, 0.199602,
		39.530025, 30.491663, 40.385143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.692795, 29.712845, 40.374878>,  <38.979244, 30.082861, 40.245422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.692795, 29.712845, 40.374878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.716022, 30.059404, 40.573265>,  <39.729961, 30.267340, 40.692299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.716022, 30.059404, 40.573265>,  <39.692795, 29.712845, 40.374878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.716022, 30.059404, 40.573265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493379, -0.456801, 0.740209,
		0.867874, 0.201715, -0.453989,
		0.058071, 0.866397, 0.495968,
		39.733444, 30.319323, 40.722057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.234413, 29.248558, 40.653160>,  <39.692795, 29.712845, 40.374878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.234413, 29.248558, 40.653160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.487797, 29.420395, 40.910587>,  <39.639828, 29.523497, 41.065044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.487797, 29.420395, 40.910587>,  <39.234413, 29.248558, 40.653160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.487797, 29.420395, 40.910587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085394, -0.787831, 0.609942,
		0.769049, -0.441330, -0.462375,
		0.633459, 0.429592, 0.643569,
		39.677834, 29.549273, 41.103657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.719799, 28.650618, 40.764534>,  <39.234413, 29.248558, 40.653160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.719799, 28.650618, 40.764534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.756020, 28.913248, 41.064056>,  <39.777752, 29.070826, 41.243771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.756020, 28.913248, 41.064056>,  <39.719799, 28.650618, 40.764534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.756020, 28.913248, 41.064056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005168, -0.751574, 0.659629,
		0.995878, -0.063602, -0.064666,
		0.090555, 0.656576, 0.748805,
		39.783188, 29.110220, 41.288696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.202293, 28.412457, 41.224422>,  <39.719799, 28.650618, 40.764534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.202293, 28.412457, 41.224422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.001419, 28.659185, 41.466858>,  <39.880894, 28.807222, 41.612320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.001419, 28.659185, 41.466858>,  <40.202293, 28.412457, 41.224422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.001419, 28.659185, 41.466858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007345, -0.703893, 0.710268,
		0.864731, 0.352232, 0.358013,
		-0.502182, 0.616820, 0.606091,
		39.850765, 28.844231, 41.648685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.513447, 28.325186, 41.782578>,  <40.202293, 28.412457, 41.224422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.513447, 28.325186, 41.782578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.155216, 28.462208, 41.896141>,  <39.940277, 28.544420, 41.964279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.155216, 28.462208, 41.896141>,  <40.513447, 28.325186, 41.782578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.155216, 28.462208, 41.896141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064520, -0.731373, 0.678919,
		0.440213, 0.589703, 0.677099,
		-0.895572, 0.342555, 0.283912,
		39.886543, 28.564974, 41.981316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.645714, 27.621002, 42.084324>,  <40.513447, 28.325186, 41.782578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.645714, 27.621002, 42.084324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.548904, 27.476244, 42.444424>,  <40.490818, 27.389389, 42.660484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.548904, 27.476244, 42.444424>,  <40.645714, 27.621002, 42.084324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.548904, 27.476244, 42.444424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591308, 0.790643, 0.158866,
		-0.769272, -0.493879, -0.405344,
		-0.242022, -0.361895, 0.900254,
		40.476299, 27.367676, 42.714500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.943523, 27.414614, 42.177219>,  <40.645714, 27.621002, 42.084324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.943523, 27.414614, 42.177219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.108791, 27.557613, 42.512238>,  <40.207951, 27.643414, 42.713249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.108791, 27.557613, 42.512238>,  <39.943523, 27.414614, 42.177219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.108791, 27.557613, 42.512238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631574, 0.775076, -0.019273,
		-0.656053, -0.521009, 0.546026,
		0.413170, 0.357500, 0.837546,
		40.232742, 27.664864, 42.763500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.408245, 27.419329, 42.715385>,  <39.943523, 27.414614, 42.177219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.408245, 27.419329, 42.715385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.670670, 27.720446, 42.736904>,  <39.828125, 27.901115, 42.749813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.670670, 27.720446, 42.736904>,  <39.408245, 27.419329, 42.715385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.670670, 27.720446, 42.736904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750710, 0.643588, 0.149095,
		0.077616, -0.138199, 0.987358,
		0.656057, 0.752792, 0.053795,
		39.867485, 27.946283, 42.753044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.106213, 28.117260, 42.680893>,  <39.408245, 27.419329, 42.715385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.106213, 28.117260, 42.680893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.150501, 28.481255, 42.840725>,  <39.177074, 28.699652, 42.936626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.150501, 28.481255, 42.840725>,  <39.106213, 28.117260, 42.680893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.150501, 28.481255, 42.840725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156555, 0.381067, -0.911196,
		-0.981444, 0.163442, -0.100272,
		0.110717, 0.909986, 0.399584,
		39.183716, 28.754250, 42.960602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.733261, 28.560783, 42.246429>,  <39.106213, 28.117260, 42.680893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.733261, 28.560783, 42.246429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.059780, 28.703739, 42.427944>,  <39.255692, 28.789513, 42.536854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.059780, 28.703739, 42.427944>,  <38.733261, 28.560783, 42.246429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.059780, 28.703739, 42.427944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341000, 0.335946, -0.877986,
		-0.466232, 0.871443, 0.152363,
		0.816301, 0.357390, 0.453790,
		39.304672, 28.810957, 42.564083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.821320, 29.323223, 42.123634>,  <38.733261, 28.560783, 42.246429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.821320, 29.323223, 42.123634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.183376, 29.169548, 42.196434>,  <39.400608, 29.077343, 42.240116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.183376, 29.169548, 42.196434>,  <38.821320, 29.323223, 42.123634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.183376, 29.169548, 42.196434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329437, 0.363300, -0.871484,
		0.268692, 0.848772, 0.455402,
		0.905139, -0.384187, 0.182001,
		39.454918, 29.054293, 42.251034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.292103, 29.878288, 42.228699>,  <38.821320, 29.323223, 42.123634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.292103, 29.878288, 42.228699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.456131, 29.544838, 42.080692>,  <39.554550, 29.344769, 41.991890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.456131, 29.544838, 42.080692>,  <39.292103, 29.878288, 42.228699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.456131, 29.544838, 42.080692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507946, 0.545697, -0.666487,
		0.757517, 0.085359, 0.647211,
		0.410072, -0.833623, -0.370017,
		39.579151, 29.294750, 41.969688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.896618, 30.084278, 42.155766>,  <39.292103, 29.878288, 42.228699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.896618, 30.084278, 42.155766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.873409, 29.770502, 41.908772>,  <39.859486, 29.582235, 41.760574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.873409, 29.770502, 41.908772>,  <39.896618, 30.084278, 42.155766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.873409, 29.770502, 41.908772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460163, 0.527885, -0.713854,
		0.885937, -0.325560, 0.330343,
		-0.058020, -0.784441, -0.617483,
		39.856003, 29.535170, 41.723526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.599411, 29.954695, 41.897038>,  <39.896618, 30.084278, 42.155766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.599411, 29.954695, 41.897038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.312759, 29.842318, 41.641693>,  <40.140766, 29.774891, 41.488487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.312759, 29.842318, 41.641693>,  <40.599411, 29.954695, 41.897038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.312759, 29.842318, 41.641693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214562, 0.782088, -0.585065,
		0.663628, -0.556245, -0.500189,
		-0.716632, -0.280945, -0.638365,
		40.097771, 29.758034, 41.450184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.866882, 29.769718, 41.215870>,  <40.599411, 29.954695, 41.897038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.866882, 29.769718, 41.215870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.501598, 29.930628, 41.189888>,  <40.282429, 30.027174, 41.174297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.501598, 29.930628, 41.189888>,  <40.866882, 29.769718, 41.215870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.501598, 29.930628, 41.189888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307769, 0.576446, -0.756960,
		-0.267061, -0.711257, -0.650225,
		-0.913213, 0.402273, -0.064956,
		40.227634, 30.051310, 41.170403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.633839, 30.320496, 40.802582>,  <40.866882, 29.769718, 41.215870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.633839, 30.320496, 40.802582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.024681, 30.235640, 40.796230>,  <41.259186, 30.184727, 40.792419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.024681, 30.235640, 40.796230>,  <40.633839, 30.320496, 40.802582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.024681, 30.235640, 40.796230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157386, -0.771101, 0.616955,
		-0.143126, -0.600334, -0.786838,
		0.977111, -0.212139, -0.015881,
		41.317814, 30.171997, 40.791466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.445580, 31.048820, 40.871536>,  <40.633839, 30.320496, 40.802582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.445580, 31.048820, 40.871536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.192181, 30.820692, 40.662380>,  <40.040142, 30.683815, 40.536888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.192181, 30.820692, 40.662380>,  <40.445580, 31.048820, 40.871536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.192181, 30.820692, 40.662380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050657, 0.643770, -0.763541,
		0.772084, -0.510189, -0.378936,
		-0.633498, -0.570322, -0.522889,
		40.002132, 30.649595, 40.505512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.642818, 31.006668, 40.204399>,  <40.445580, 31.048820, 40.871536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.642818, 31.006668, 40.204399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.257599, 30.913771, 40.149853>,  <40.026466, 30.858032, 40.117126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.257599, 30.913771, 40.149853>,  <40.642818, 31.006668, 40.204399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.257599, 30.913771, 40.149853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012411, 0.467533, -0.883888,
		0.269032, -0.852922, -0.447376,
		-0.963052, -0.232242, -0.136367,
		39.968685, 30.844097, 40.108944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.647278, 30.763992, 39.553337>,  <40.642818, 31.006668, 40.204399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.647278, 30.763992, 39.553337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.260422, 30.850866, 39.606197>,  <40.028309, 30.902990, 39.637913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.260422, 30.850866, 39.606197>,  <40.647278, 30.763992, 39.553337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.260422, 30.850866, 39.606197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004706, 0.504429, -0.863440,
		-0.254191, -0.835692, -0.486833,
		-0.967143, 0.217187, 0.132155,
		39.970280, 30.916023, 39.645844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.290760, 30.649696, 38.935482>,  <40.647278, 30.763992, 39.553337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.290760, 30.649696, 38.935482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.061611, 30.890594, 39.157879>,  <39.924122, 31.035133, 39.291317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.061611, 30.890594, 39.157879>,  <40.290760, 30.649696, 38.935482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.061611, 30.890594, 39.157879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163120, 0.580990, -0.797397,
		-0.803251, -0.547498, -0.234594,
		-0.572870, 0.602243, 0.555988,
		39.889751, 31.071268, 39.324677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.649601, 30.830694, 38.510513>,  <40.290760, 30.649696, 38.935482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.649601, 30.830694, 38.510513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.730999, 31.125479, 38.768341>,  <39.779839, 31.302349, 38.923038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.730999, 31.125479, 38.768341>,  <39.649601, 30.830694, 38.510513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.730999, 31.125479, 38.768341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075156, 0.668165, -0.740207,
		-0.976187, 0.102187, 0.191357,
		0.203498, 0.736962, 0.644574,
		39.792049, 31.346567, 38.961712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155155, 31.285885, 38.308544>,  <39.649601, 30.830694, 38.510513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.155155, 31.285885, 38.308544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.395992, 31.515171, 38.530865>,  <39.540493, 31.652742, 38.664257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.395992, 31.515171, 38.530865>,  <39.155155, 31.285885, 38.308544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.395992, 31.515171, 38.530865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020505, 0.706987, -0.706930,
		-0.798164, 0.414239, 0.437424,
		0.602091, 0.573215, 0.555798,
		39.576618, 31.687136, 38.697605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.844254, 31.887020, 38.389942>,  <39.155155, 31.285885, 38.308544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.844254, 31.887020, 38.389942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.237061, 31.936554, 38.446941>,  <39.472744, 31.966274, 38.481140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.237061, 31.936554, 38.446941>,  <38.844254, 31.887020, 38.389942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.237061, 31.936554, 38.446941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000086, 0.755098, -0.655612,
		-0.188790, 0.643810, 0.741530,
		0.982017, 0.123837, 0.142499,
		39.531666, 31.973705, 38.489693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.924831, 32.544312, 38.344585>,  <38.844254, 31.887020, 38.389942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.924831, 32.544312, 38.344585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.301395, 32.413372, 38.312092>,  <39.527332, 32.334808, 38.292595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.301395, 32.413372, 38.312092>,  <38.924831, 32.544312, 38.344585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.301395, 32.413372, 38.312092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185022, 0.702604, -0.687106,
		0.281995, 0.631816, 0.722002,
		0.941406, -0.327346, -0.081231,
		39.583817, 32.315166, 38.287724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.334415, 33.117092, 38.508648>,  <38.924831, 32.544312, 38.344585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.334415, 33.117092, 38.508648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.572590, 32.871059, 38.301907>,  <39.715496, 32.723442, 38.177864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.572590, 32.871059, 38.301907>,  <39.334415, 33.117092, 38.508648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.572590, 32.871059, 38.301907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197389, 0.735608, -0.648012,
		0.778778, 0.283829, 0.559417,
		0.595435, -0.615080, -0.516850,
		39.751221, 32.686535, 38.146851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.990208, 33.440163, 38.507179>,  <39.334415, 33.117092, 38.508648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.990208, 33.440163, 38.507179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.932724, 33.214012, 38.182289>,  <39.898235, 33.078323, 37.987354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.932724, 33.214012, 38.182289>,  <39.990208, 33.440163, 38.507179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.932724, 33.214012, 38.182289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226150, 0.780261, -0.583138,
		0.963434, -0.267485, 0.015730,
		-0.143707, -0.565372, -0.812221,
		39.889610, 33.044399, 37.938622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.475529, 33.747997, 38.048622>,  <39.990208, 33.440163, 38.507179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.475529, 33.747997, 38.048622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.279423, 33.490448, 37.813652>,  <40.161758, 33.335918, 37.672668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.279423, 33.490448, 37.813652>,  <40.475529, 33.747997, 38.048622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.279423, 33.490448, 37.813652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160846, 0.595567, -0.787037,
		0.856601, -0.480345, -0.188424,
		-0.490268, -0.643870, -0.587425,
		40.132343, 33.297287, 37.637424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.783031, 33.987610, 37.432487>,  <40.475529, 33.747997, 38.048622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.783031, 33.987610, 37.432487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.447010, 33.777306, 37.378994>,  <40.245396, 33.651123, 37.346897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.447010, 33.777306, 37.378994>,  <40.783031, 33.987610, 37.432487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.447010, 33.777306, 37.378994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207464, 0.539111, -0.816283,
		0.501267, -0.657976, -0.561959,
		-0.840053, -0.525762, -0.133732,
		40.194996, 33.619576, 37.338875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.825836, 33.682121, 36.830032>,  <40.783031, 33.987610, 37.432487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.825836, 33.682121, 36.830032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.429474, 33.697773, 36.881542>,  <40.191658, 33.707165, 36.912449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.429474, 33.697773, 36.881542>,  <40.825836, 33.682121, 36.830032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.429474, 33.697773, 36.881542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097402, 0.451801, -0.886786,
		-0.092880, -0.891260, -0.443879,
		-0.990901, 0.039130, 0.128774,
		40.132202, 33.709511, 36.920174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.500992, 33.601768, 36.176727>,  <40.825836, 33.682121, 36.830032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.500992, 33.601768, 36.176727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.212242, 33.768681, 36.397552>,  <40.038990, 33.868828, 36.530048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.212242, 33.768681, 36.397552>,  <40.500992, 33.601768, 36.176727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.212242, 33.768681, 36.397552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235184, 0.602337, -0.762810,
		-0.650831, -0.680491, -0.336676,
		-0.721878, 0.417279, 0.552060,
		39.995678, 33.893864, 36.563171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.892426, 33.703732, 35.720165>,  <40.500992, 33.601768, 36.176727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.892426, 33.703732, 35.720165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.819328, 33.953815, 36.023670>,  <39.775471, 34.103867, 36.205772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.819328, 33.953815, 36.023670>,  <39.892426, 33.703732, 35.720165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.819328, 33.953815, 36.023670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357729, 0.676574, -0.643644,
		-0.915770, -0.389054, 0.100015,
		-0.182744, 0.625208, 0.758762,
		39.764503, 34.141376, 36.251297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.446564, 33.901035, 35.328728>,  <39.892426, 33.703732, 35.720165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.446564, 33.901035, 35.328728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.299316, 34.256870, 35.220566>,  <40.210968, 34.470371, 35.155666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.299316, 34.256870, 35.220566>,  <40.446564, 33.901035, 35.328728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.299316, 34.256870, 35.220566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777694, 0.453988, 0.434841,
		0.509592, -0.050223, -0.858949,
		-0.368114, 0.889591, -0.270407,
		40.188881, 34.523746, 35.139442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.942684, 34.397987, 35.205021>,  <40.446564, 33.901035, 35.328728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.942684, 34.397987, 35.205021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.042233, 34.691566, 34.952232>,  <41.101963, 34.867714, 34.800560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.042233, 34.691566, 34.952232>,  <40.942684, 34.397987, 35.205021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.042233, 34.691566, 34.952232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359469, 0.675893, 0.643390,
		0.899357, 0.067051, 0.432043,
		0.248875, 0.733943, -0.631972,
		41.116894, 34.911751, 34.762642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.286198, 34.904877, 35.626572>,  <40.942684, 34.397987, 35.205021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.286198, 34.904877, 35.626572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.149006, 35.078079, 35.293137>,  <41.066689, 35.181999, 35.093075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.149006, 35.078079, 35.293137>,  <41.286198, 34.904877, 35.626572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.149006, 35.078079, 35.293137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223071, 0.824485, 0.520062,
		0.912471, 0.364321, -0.186192,
		-0.342982, 0.433007, -0.833587,
		41.046112, 35.207981, 35.043060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.739250, 35.508968, 35.403290>,  <41.286198, 34.904877, 35.626572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.739250, 35.508968, 35.403290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.362549, 35.561977, 35.279652>,  <41.136528, 35.593784, 35.205467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.362549, 35.561977, 35.279652>,  <41.739250, 35.508968, 35.403290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.362549, 35.561977, 35.279652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079188, 0.980624, 0.179179,
		0.326852, 0.144265, -0.934000,
		-0.941752, 0.132526, -0.309095,
		41.080025, 35.601734, 35.186924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.545120, 35.820236, 34.689285>,  <41.739250, 35.508968, 35.403290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.545120, 35.820236, 34.689285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.267208, 35.913834, 34.961323>,  <41.100460, 35.969990, 35.124546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.267208, 35.913834, 34.961323>,  <41.545120, 35.820236, 34.689285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.267208, 35.913834, 34.961323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202680, 0.970973, -0.127012,
		-0.690069, 0.049595, -0.722042,
		-0.694785, 0.233991, 0.680090,
		41.058773, 35.984032, 35.165348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.905506, 36.197445, 34.078655>,  <41.545120, 35.820236, 34.689285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.905506, 36.197445, 34.078655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.951817, 36.274460, 33.688881>,  <41.979603, 36.320667, 33.455017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.951817, 36.274460, 33.688881>,  <41.905506, 36.197445, 34.078655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.951817, 36.274460, 33.688881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895048, 0.405149, 0.186395,
		0.430680, -0.893747, -0.125426,
		0.115774, 0.192539, -0.974436,
		41.986549, 36.332222, 33.396549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.591354, 36.010483, 33.724373>,  <41.905506, 36.197445, 34.078655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.591354, 36.010483, 33.724373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.387997, 36.329472, 33.594402>,  <42.265984, 36.520866, 33.516422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.387997, 36.329472, 33.594402>,  <42.591354, 36.010483, 33.724373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.387997, 36.329472, 33.594402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717265, 0.600955, 0.352680,
		0.476517, -0.053756, -0.877520,
		-0.508392, 0.797473, -0.324923,
		42.235477, 36.568714, 33.496925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.875591, 36.271275, 33.055862>,  <42.591354, 36.010483, 33.724373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.875591, 36.271275, 33.055862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.742096, 36.522835, 32.774975>,  <42.661999, 36.673771, 32.606441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.742096, 36.522835, 32.774975>,  <42.875591, 36.271275, 33.055862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.742096, 36.522835, 32.774975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940714, 0.174271, -0.291011,
		-0.060641, -0.757704, -0.649775,
		-0.333737, 0.628899, -0.702215,
		42.641975, 36.711506, 32.564312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.012558, 36.077030, 32.392216>,  <42.875591, 36.271275, 33.055862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.012558, 36.077030, 32.392216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.982700, 36.474609, 32.424458>,  <42.964787, 36.713158, 32.443802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.982700, 36.474609, 32.424458>,  <43.012558, 36.077030, 32.392216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.982700, 36.474609, 32.424458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893119, 0.102587, -0.437966,
		-0.443585, 0.039302, -0.895370,
		-0.074640, 0.993947, 0.080607,
		42.960308, 36.772793, 32.448639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.748306, 35.737167, 32.279812>,  <43.012558, 36.077030, 32.392216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.748306, 35.737167, 32.279812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.003094, 35.624542, 31.992762>,  <44.155968, 35.556965, 31.820532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.003094, 35.624542, 31.992762>,  <43.748306, 35.737167, 32.279812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.003094, 35.624542, 31.992762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530622, -0.515142, 0.673104,
		-0.559205, -0.809536, -0.178723,
		0.636970, -0.281568, -0.717627,
		44.194183, 35.540073, 31.777473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.738903, 34.998817, 32.269012>,  <43.748306, 35.737167, 32.279812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.738903, 34.998817, 32.269012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.070557, 35.200108, 32.171600>,  <44.269547, 35.320881, 32.113155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.070557, 35.200108, 32.171600>,  <43.738903, 34.998817, 32.269012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.070557, 35.200108, 32.171600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507540, -0.494922, 0.705305,
		0.234402, -0.708390, -0.665763,
		0.829132, 0.503226, -0.243526,
		44.319298, 35.351074, 32.098541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.296730, 34.534325, 32.299232>,  <43.738903, 34.998817, 32.269012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.296730, 34.534325, 32.299232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.475491, 34.882275, 32.382744>,  <44.582748, 35.091045, 32.432850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.475491, 34.882275, 32.382744>,  <44.296730, 34.534325, 32.299232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.475491, 34.882275, 32.382744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469311, -0.426667, 0.773112,
		0.761594, -0.247524, -0.598922,
		0.446904, 0.869878, 0.208781,
		44.609562, 35.143238, 32.445377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.727463, 34.243965, 32.843307>,  <44.296730, 34.534325, 32.299232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.727463, 34.243965, 32.843307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.839039, 34.624462, 32.790649>,  <44.905987, 34.852760, 32.759056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.839039, 34.624462, 32.790649>,  <44.727463, 34.243965, 32.843307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.839039, 34.624462, 32.790649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682563, -0.099965, 0.723958,
		0.675499, -0.291798, -0.677167,
		0.278942, 0.951242, -0.131644,
		44.922722, 34.909836, 32.751156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.376881, 34.439484, 32.576359>,  <44.727463, 34.243965, 32.843307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.376881, 34.439484, 32.576359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.256306, 34.713451, 32.841698>,  <45.183960, 34.877831, 33.000900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.256306, 34.713451, 32.841698>,  <45.376881, 34.439484, 32.576359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.256306, 34.713451, 32.841698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795169, -0.203328, 0.571282,
		0.526157, 0.699677, -0.483333,
		-0.301438, 0.684916, 0.663344,
		45.165874, 34.918926, 33.040699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.912411, 34.899952, 32.771324>,  <45.376881, 34.439484, 32.576359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.912411, 34.899952, 32.771324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.678307, 34.885853, 33.095356>,  <45.537846, 34.877392, 33.289776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.678307, 34.885853, 33.095356>,  <45.912411, 34.899952, 32.771324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.678307, 34.885853, 33.095356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783434, -0.282154, 0.553733,
		0.209046, 0.958721, 0.192751,
		-0.585261, -0.035252, 0.810078,
		45.502728, 34.875278, 33.338379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.197922, 35.507145, 33.252041>,  <45.912411, 34.899952, 32.771324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.197922, 35.507145, 33.252041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.005253, 35.202576, 33.425587>,  <45.889652, 35.019836, 33.529713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.005253, 35.202576, 33.425587>,  <46.197922, 35.507145, 33.252041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.005253, 35.202576, 33.425587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802475, -0.184267, 0.567520,
		-0.352174, 0.621520, 0.699775,
		-0.481671, -0.761418, 0.433860,
		45.860752, 34.974152, 33.555744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.291523, 35.474712, 33.972347>,  <46.197922, 35.507145, 33.252041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.291523, 35.474712, 33.972347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.195374, 35.102432, 33.862064>,  <46.137684, 34.879063, 33.795895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.195374, 35.102432, 33.862064>,  <46.291523, 35.474712, 33.972347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.195374, 35.102432, 33.862064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783294, -0.353735, 0.511196,
		-0.573300, -0.093086, 0.814041,
		-0.240370, -0.930702, -0.275710,
		46.123264, 34.823223, 33.779350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.128620, 34.973576, 34.524231>,  <46.291523, 35.474712, 33.972347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.128620, 34.973576, 34.524231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.282288, 34.803482, 34.196430>,  <46.374489, 34.701427, 33.999748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.282288, 34.803482, 34.196430>,  <46.128620, 34.973576, 34.524231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.282288, 34.803482, 34.196430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816527, -0.257806, 0.516545,
		-0.430927, -0.867590, 0.248174,
		0.384169, -0.425234, -0.819506,
		46.397537, 34.675911, 33.950577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.865086, 35.204700, 34.517971>,  <46.128620, 34.973576, 34.524231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.865086, 35.204700, 34.517971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.207348, 35.024223, 34.416561>,  <47.412704, 34.915936, 34.355717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.207348, 35.024223, 34.416561>,  <46.865086, 35.204700, 34.517971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.207348, 35.024223, 34.416561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368370, 0.186865, 0.910706,
		-0.363531, -0.872642, 0.326099,
		0.855657, -0.451195, -0.253524,
		47.464046, 34.888866, 34.340504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.003071, 34.800102, 35.149006>,  <46.865086, 35.204700, 34.517971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.003071, 34.800102, 35.149006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.305992, 34.942520, 34.930019>,  <47.487743, 35.027969, 34.798626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.305992, 34.942520, 34.930019>,  <47.003071, 34.800102, 35.149006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.305992, 34.942520, 34.930019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386851, 0.430832, 0.815310,
		0.526155, -0.829226, 0.188534,
		0.757303, 0.356045, -0.547471,
		47.533184, 35.049332, 34.765778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.643040, 34.595741, 35.397995>,  <47.003071, 34.800102, 35.149006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.643040, 34.595741, 35.397995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.710716, 34.940918, 35.207539>,  <47.751324, 35.148022, 35.093266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.710716, 34.940918, 35.207539>,  <47.643040, 34.595741, 35.397995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.710716, 34.940918, 35.207539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396535, 0.382677, 0.834457,
		0.902294, -0.329989, -0.277440,
		0.169192, 0.862940, -0.476139,
		47.761475, 35.199799, 35.064697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.204391, 35.999107, 27.065145> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.848309, 36.139030, 27.181875>,  <36.634659, 36.222984, 27.251913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.848309, 36.139030, 27.181875>,  <37.204391, 35.999107, 27.065145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.848309, 36.139030, 27.181875> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080286, -0.510099, 0.856360,
		0.448420, 0.785770, 0.426011,
		-0.890210, 0.349806, 0.291825,
		36.581245, 36.243973, 27.269423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.295364, 36.304504, 27.728813>,  <37.204391, 35.999107, 27.065145>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.295364, 36.304504, 27.728813> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.911697, 36.204960, 27.675045>,  <36.681496, 36.145233, 27.642784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.911697, 36.204960, 27.675045>,  <37.295364, 36.304504, 27.728813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.911697, 36.204960, 27.675045> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015687, -0.521321, 0.853216,
		-0.282406, 0.816268, 0.503938,
		-0.959167, -0.248859, -0.134419,
		36.623947, 36.130302, 27.634720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.088196, 36.324673, 28.464970>,  <37.295364, 36.304504, 27.728813>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.088196, 36.324673, 28.464970> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.829391, 36.115246, 28.243248>,  <36.674107, 35.989590, 28.110216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.829391, 36.115246, 28.243248>,  <37.088196, 36.324673, 28.464970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.829391, 36.115246, 28.243248> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144212, -0.629824, 0.763233,
		-0.748715, 0.573760, 0.332001,
		-0.647015, -0.523566, -0.554302,
		36.635288, 35.958176, 28.076958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523254, 36.184731, 28.927059>,  <37.088196, 36.324673, 28.464970>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.523254, 36.184731, 28.927059> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.490791, 35.920845, 28.628212>,  <36.471313, 35.762512, 28.448904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.490791, 35.920845, 28.628212>,  <36.523254, 36.184731, 28.927059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.490791, 35.920845, 28.628212> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206337, -0.722234, 0.660154,
		-0.975110, 0.207733, -0.077512,
		-0.081154, -0.659716, -0.747120,
		36.466446, 35.722931, 28.404076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.011787, 35.839558, 29.129709>,  <36.523254, 36.184731, 28.927059>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.011787, 35.839558, 29.129709> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.195618, 35.601227, 28.866262>,  <36.305916, 35.458229, 28.708195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.195618, 35.601227, 28.866262>,  <36.011787, 35.839558, 29.129709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.195618, 35.601227, 28.866262> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190854, -0.790503, 0.581962,
		-0.867387, -0.141758, -0.477016,
		0.459580, -0.595827, -0.658617,
		36.333492, 35.422478, 28.668676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.599907, 35.327549, 29.102997>,  <36.011787, 35.839558, 29.129709>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.599907, 35.327549, 29.102997> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.945992, 35.182850, 28.964113>,  <36.153641, 35.096031, 28.880783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.945992, 35.182850, 28.964113>,  <35.599907, 35.327549, 29.102997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.945992, 35.182850, 28.964113> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029612, -0.654390, 0.755578,
		-0.500539, -0.664013, -0.555471,
		0.865208, -0.361748, -0.347210,
		36.205555, 35.074326, 28.859949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.520485, 34.606598, 28.932766>,  <35.599907, 35.327549, 29.102997>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.520485, 34.606598, 28.932766> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.902218, 34.696171, 29.011869>,  <36.131256, 34.749916, 29.059332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.902218, 34.696171, 29.011869>,  <35.520485, 34.606598, 28.932766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.902218, 34.696171, 29.011869> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015003, -0.697037, 0.716878,
		0.298377, -0.681172, -0.668563,
		0.954330, 0.223931, 0.197760,
		36.188519, 34.763351, 29.071198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.767559, 34.005753, 29.078592>,  <35.520485, 34.606598, 28.932766>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.767559, 34.005753, 29.078592> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.055130, 34.235271, 29.235514>,  <36.227673, 34.372982, 29.329666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.055130, 34.235271, 29.235514>,  <35.767559, 34.005753, 29.078592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.055130, 34.235271, 29.235514> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090116, -0.636577, 0.765930,
		0.689220, -0.515295, -0.509360,
		0.718927, 0.573795, 0.392305,
		36.270809, 34.407410, 29.353205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.210014, 33.501602, 29.392414>,  <35.767559, 34.005753, 29.078592>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.210014, 33.501602, 29.392414> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.322659, 33.849884, 29.553692>,  <36.390244, 34.058853, 29.650459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.322659, 33.849884, 29.553692>,  <36.210014, 33.501602, 29.392414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.322659, 33.849884, 29.553692> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078556, -0.439711, 0.894697,
		0.956309, -0.220279, -0.192224,
		0.281606, 0.870708, 0.403195,
		36.407139, 34.111095, 29.674650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.751827, 33.332886, 29.848459>,  <36.210014, 33.501602, 29.392414>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.751827, 33.332886, 29.848459> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.617290, 33.691418, 29.964024>,  <36.536568, 33.906536, 30.033363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.617290, 33.691418, 29.964024>,  <36.751827, 33.332886, 29.848459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.617290, 33.691418, 29.964024> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129710, -0.259771, 0.956919,
		0.932766, 0.359324, -0.028892,
		-0.336338, 0.896329, 0.288913,
		36.516388, 33.960316, 30.050697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.291496, 33.637932, 30.234186>,  <36.751827, 33.332886, 29.848459>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.291496, 33.637932, 30.234186> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.952820, 33.819935, 30.344513>,  <36.749615, 33.929138, 30.410709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.952820, 33.819935, 30.344513>,  <37.291496, 33.637932, 30.234186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.952820, 33.819935, 30.344513> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170654, -0.258767, 0.950745,
		0.503971, 0.852060, 0.141447,
		-0.846694, 0.455009, 0.275818,
		36.698811, 33.956436, 30.427258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382626, 34.169674, 30.808720>,  <37.291496, 33.637932, 30.234186>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.382626, 34.169674, 30.808720> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.996483, 34.067677, 30.830885>,  <36.764797, 34.006477, 30.844185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.996483, 34.067677, 30.830885>,  <37.382626, 34.169674, 30.808720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.996483, 34.067677, 30.830885> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082047, -0.095012, 0.992089,
		-0.247714, 0.962263, 0.112642,
		-0.965353, -0.254997, 0.055415,
		36.706879, 33.991177, 30.847509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.299969, 34.261204, 31.546680>,  <37.382626, 34.169674, 30.808720>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.299969, 34.261204, 31.546680> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.992321, 34.047195, 31.406849>,  <36.807732, 33.918793, 31.322950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.992321, 34.047195, 31.406849>,  <37.299969, 34.261204, 31.546680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.992321, 34.047195, 31.406849> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098829, -0.440838, 0.892129,
		-0.631412, 0.720706, 0.286184,
		-0.769124, -0.535018, -0.349577,
		36.761585, 33.886688, 31.301975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.818340, 34.337181, 32.058712>,  <37.299969, 34.261204, 31.546680>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.818340, 34.337181, 32.058712> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.716488, 33.999847, 31.869421>,  <36.655376, 33.797447, 31.755846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.716488, 33.999847, 31.869421>,  <36.818340, 34.337181, 32.058712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.716488, 33.999847, 31.869421> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009196, -0.487227, 0.873227,
		-0.966995, 0.226701, 0.116306,
		-0.254629, -0.843337, -0.473231,
		36.640099, 33.746845, 31.727451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.307323, 34.030376, 32.537956>,  <36.818340, 34.337181, 32.058712>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.307323, 34.030376, 32.537956> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.446674, 33.737831, 32.303440>,  <36.530285, 33.562305, 32.162731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.446674, 33.737831, 32.303440>,  <36.307323, 34.030376, 32.537956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.446674, 33.737831, 32.303440> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140325, -0.577737, 0.804070,
		-0.926793, -0.362389, -0.098640,
		0.348374, -0.731364, -0.586295,
		36.551186, 33.518421, 32.127552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.025040, 33.437813, 32.801338>,  <36.307323, 34.030376, 32.537956>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.025040, 33.437813, 32.801338> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.321602, 33.268688, 32.592896>,  <36.499538, 33.167213, 32.467831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.321602, 33.268688, 32.592896>,  <36.025040, 33.437813, 32.801338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.321602, 33.268688, 32.592896> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187554, -0.615035, 0.765869,
		-0.644313, -0.665555, -0.376691,
		0.741407, -0.422810, -0.521103,
		36.544025, 33.141846, 32.436565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.867821, 32.763306, 32.844997>,  <36.025040, 33.437813, 32.801338>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.867821, 32.763306, 32.844997> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.257366, 32.780861, 32.755859>,  <36.491093, 32.791393, 32.702377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.257366, 32.780861, 32.755859>,  <35.867821, 32.763306, 32.844997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.257366, 32.780861, 32.755859> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212809, -0.519115, 0.827787,
		-0.079354, -0.853577, -0.514887,
		0.973866, 0.043885, -0.222843,
		36.549526, 32.794025, 32.689007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.077988, 32.052864, 32.972935>,  <35.867821, 32.763306, 32.844997>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.077988, 32.052864, 32.972935> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.382717, 32.311977, 32.973286>,  <36.565556, 32.467445, 32.973495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.382717, 32.311977, 32.973286>,  <36.077988, 32.052864, 32.972935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.382717, 32.311977, 32.973286> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363227, -0.428286, 0.827428,
		0.536372, -0.630035, -0.561571,
		0.761821, 0.647787, 0.000875,
		36.611263, 32.506313, 32.973549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.736553, 31.603491, 33.033710>,  <36.077988, 32.052864, 32.972935>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.736553, 31.603491, 33.033710> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.836544, 31.972147, 33.152431>,  <36.896538, 32.193340, 33.223663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.836544, 31.972147, 33.152431>,  <36.736553, 31.603491, 33.033710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.836544, 31.972147, 33.152431> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469043, -0.383433, 0.795599,
		0.847060, -0.059668, -0.528138,
		0.249977, 0.921639, 0.296804,
		36.911537, 32.248638, 33.241474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308075, 31.533018, 33.414398>,  <36.736553, 31.603491, 33.033710>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.308075, 31.533018, 33.414398> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.196827, 31.900976, 33.524994>,  <37.130077, 32.121750, 33.591351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.196827, 31.900976, 33.524994>,  <37.308075, 31.533018, 33.414398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.196827, 31.900976, 33.524994> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412995, -0.145360, 0.899058,
		0.867229, 0.364231, -0.339485,
		-0.278117, 0.919895, 0.276486,
		37.113392, 32.176945, 33.607941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.931698, 31.914261, 33.558506>,  <37.308075, 31.533018, 33.414398>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.931698, 31.914261, 33.558506> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.635620, 32.083206, 33.767780>,  <37.457973, 32.184574, 33.893345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.635620, 32.083206, 33.767780>,  <37.931698, 31.914261, 33.558506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.635620, 32.083206, 33.767780> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480945, -0.211206, 0.850931,
		0.469904, 0.881476, -0.046802,
		-0.740191, 0.422365, 0.523188,
		37.413563, 32.209915, 33.924736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.290695, 32.368328, 33.954674>,  <37.931698, 31.914261, 33.558506>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.290695, 32.368328, 33.954674> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.948376, 32.305012, 34.151669>,  <37.742985, 32.267021, 34.269867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.948376, 32.305012, 34.151669>,  <38.290695, 32.368328, 33.954674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.948376, 32.305012, 34.151669> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516274, -0.201359, 0.832415,
		-0.032592, 0.966644, 0.254043,
		-0.855803, -0.158286, 0.492491,
		37.691635, 32.257526, 34.299416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023308, 32.988461, 34.171326>,  <38.290695, 32.368328, 33.954674>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.023308, 32.988461, 34.171326> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.408363, 33.049278, 34.260948>,  <38.639397, 33.085770, 34.314720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.408363, 33.049278, 34.260948>,  <38.023308, 32.988461, 34.171326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.408363, 33.049278, 34.260948> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116030, 0.516016, -0.848684,
		-0.244656, 0.842977, 0.479097,
		0.962642, 0.152046, 0.224057,
		38.697155, 33.094891, 34.328167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.233368, 33.721901, 34.011135>,  <38.023308, 32.988461, 34.171326>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.233368, 33.721901, 34.011135> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.557487, 33.487682, 34.001667>,  <38.751957, 33.347153, 33.995987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.557487, 33.487682, 34.001667>,  <38.233368, 33.721901, 34.011135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.557487, 33.487682, 34.001667> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301104, 0.450653, -0.840386,
		0.502750, 0.673834, 0.541471,
		0.810296, -0.585543, -0.023672,
		38.800575, 33.312019, 33.994564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.718491, 34.132607, 33.767780>,  <38.233368, 33.721901, 34.011135>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.718491, 34.132607, 33.767780> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.911724, 33.786324, 33.715355>,  <39.027664, 33.578552, 33.683899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.911724, 33.786324, 33.715355>,  <38.718491, 34.132607, 33.767780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.911724, 33.786324, 33.715355> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381975, 0.343067, -0.858137,
		0.787859, 0.364492, 0.496410,
		0.483087, -0.865708, -0.131062,
		39.056648, 33.526611, 33.676037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.445728, 34.311699, 33.684246>,  <38.718491, 34.132607, 33.767780>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.445728, 34.311699, 33.684246> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.370411, 33.970581, 33.489399>,  <39.325222, 33.765911, 33.372490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.370411, 33.970581, 33.489399>,  <39.445728, 34.311699, 33.684246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.370411, 33.970581, 33.489399> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429373, 0.374600, -0.821775,
		0.883280, -0.363892, 0.295632,
		-0.188294, -0.852794, -0.487122,
		39.313923, 33.714745, 33.343262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.121880, 34.152458, 33.328011>,  <39.445728, 34.311699, 33.684246>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.121880, 34.152458, 33.328011> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.845013, 33.939182, 33.133442>,  <39.678890, 33.811218, 33.016701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.845013, 33.939182, 33.133442>,  <40.121880, 34.152458, 33.328011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.845013, 33.939182, 33.133442> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398680, 0.279338, -0.873513,
		0.601625, -0.798547, 0.019223,
		-0.692172, -0.533191, -0.486421,
		39.637360, 33.779224, 32.987514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.461685, 33.791553, 32.748081>,  <40.121880, 34.152458, 33.328011>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.461685, 33.791553, 32.748081> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.077843, 33.777279, 32.636456>,  <39.847538, 33.768715, 32.569481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.077843, 33.777279, 32.636456>,  <40.461685, 33.791553, 32.748081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.077843, 33.777279, 32.636456> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266768, 0.199598, -0.942865,
		0.089348, -0.979228, -0.182016,
		-0.959610, -0.035687, -0.279060,
		39.789959, 33.766571, 32.552738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.476902, 33.384747, 32.104969>,  <40.461685, 33.791553, 32.748081>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.476902, 33.384747, 32.104969> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.144295, 33.606560, 32.091846>,  <39.944733, 33.739647, 32.083973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.144295, 33.606560, 32.091846>,  <40.476902, 33.384747, 32.104969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.144295, 33.606560, 32.091846> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192989, 0.232997, -0.953136,
		-0.520899, -0.798879, -0.300760,
		-0.831516, 0.554531, -0.032807,
		39.894840, 33.772919, 32.082005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.182320, 33.272701, 31.434687>,  <40.476902, 33.384747, 32.104969>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.182320, 33.272701, 31.434687> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.996174, 33.601418, 31.566198>,  <39.884487, 33.798649, 31.645105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.996174, 33.601418, 31.566198>,  <40.182320, 33.272701, 31.434687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.996174, 33.601418, 31.566198> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133695, 0.432449, -0.891691,
		-0.874965, -0.371003, -0.311115,
		-0.465362, 0.821793, 0.328777,
		39.856564, 33.847954, 31.664831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.617550, 33.345913, 30.990593>,  <40.182320, 33.272701, 31.434687>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.617550, 33.345913, 30.990593> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.711773, 33.710846, 31.124561>,  <39.768307, 33.929806, 31.204943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.711773, 33.710846, 31.124561>,  <39.617550, 33.345913, 30.990593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.711773, 33.710846, 31.124561> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096573, 0.320938, -0.942164,
		-0.967051, 0.254276, -0.012508,
		0.235556, 0.912328, 0.334920,
		39.782440, 33.984543, 31.225037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.270596, 33.823502, 30.459549>,  <39.617550, 33.345913, 30.990593>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.270596, 33.823502, 30.459549> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.484306, 34.064079, 30.697142>,  <39.612534, 34.208427, 30.839697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.484306, 34.064079, 30.697142>,  <39.270596, 33.823502, 30.459549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.484306, 34.064079, 30.697142> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057584, 0.726942, -0.684280,
		-0.843346, 0.331391, 0.423021,
		0.534276, 0.601444, 0.593981,
		39.644588, 34.244514, 30.875336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.851643, 34.531082, 30.578650>,  <39.270596, 33.823502, 30.459549>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.851643, 34.531082, 30.578650> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.247581, 34.577778, 30.611088>,  <39.485146, 34.605797, 30.630550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.247581, 34.577778, 30.611088>,  <38.851643, 34.531082, 30.578650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.247581, 34.577778, 30.611088> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007753, 0.614017, -0.789255,
		-0.141932, 0.780612, 0.608687,
		0.989846, 0.116739, 0.081096,
		39.544537, 34.612801, 30.635416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.035793, 35.346455, 30.544842>,  <38.851643, 34.531082, 30.578650>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.035793, 35.346455, 30.544842> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.343594, 35.105797, 30.459160>,  <39.528275, 34.961403, 30.407751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.343594, 35.105797, 30.459160>,  <39.035793, 35.346455, 30.544842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.343594, 35.105797, 30.459160> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209750, 0.554890, -0.805048,
		0.603215, 0.574559, 0.553185,
		0.769505, -0.601647, -0.214204,
		39.574444, 34.925304, 30.394899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.569935, 35.798939, 30.375853>,  <39.035793, 35.346455, 30.544842>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.569935, 35.798939, 30.375853> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.694469, 35.458118, 30.207527>,  <39.769188, 35.253628, 30.106531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.694469, 35.458118, 30.207527>,  <39.569935, 35.798939, 30.375853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.694469, 35.458118, 30.207527> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257026, 0.501817, -0.825904,
		0.914882, 0.148972, 0.375231,
		0.311333, -0.852049, -0.420814,
		39.787868, 35.202503, 30.081284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.183266, 36.009514, 29.959213>,  <39.569935, 35.798939, 30.375853>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.183266, 36.009514, 29.959213> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.088150, 35.661167, 29.787142>,  <40.031082, 35.452160, 29.683899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.088150, 35.661167, 29.787142>,  <40.183266, 36.009514, 29.959213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.088150, 35.661167, 29.787142> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059646, 0.428952, -0.901356,
		0.969485, -0.239987, -0.050055,
		-0.237784, -0.870866, -0.430176,
		40.016815, 35.399906, 29.658089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.658298, 35.927643, 29.449327>,  <40.183266, 36.009514, 29.959213>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.658298, 35.927643, 29.449327> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.358654, 35.682053, 29.349834>,  <40.178867, 35.534698, 29.290138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.358654, 35.682053, 29.349834>,  <40.658298, 35.927643, 29.449327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.358654, 35.682053, 29.349834> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002790, 0.378393, -0.925641,
		0.662443, -0.692710, -0.285169,
		-0.749107, -0.613980, -0.248731,
		40.133923, 35.497860, 29.275215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.755745, 35.811653, 28.826290>,  <40.658298, 35.927643, 29.449327>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.755745, 35.811653, 28.826290> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.375019, 35.689144, 28.832520>,  <40.146584, 35.615639, 28.836256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.375019, 35.689144, 28.832520>,  <40.755745, 35.811653, 28.826290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.375019, 35.689144, 28.832520> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138710, 0.384678, -0.912569,
		0.273502, -0.870759, -0.408626,
		-0.951817, -0.306270, 0.015573,
		40.089474, 35.597263, 28.837191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.615879, 35.593052, 28.123957>,  <40.755745, 35.811653, 28.826290>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.615879, 35.593052, 28.123957> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.244488, 35.651356, 28.260593>,  <40.021652, 35.686340, 28.342575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.244488, 35.651356, 28.260593>,  <40.615879, 35.593052, 28.123957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.244488, 35.651356, 28.260593> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253351, 0.423941, -0.869533,
		-0.271561, -0.893883, -0.356690,
		-0.928476, 0.145763, 0.341592,
		39.965946, 35.695084, 28.363071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.124275, 35.245663, 27.704096>,  <40.615879, 35.593052, 28.123957>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.124275, 35.245663, 27.704096> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.898766, 35.510246, 27.901937>,  <39.763458, 35.668995, 28.020643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.898766, 35.510246, 27.901937>,  <40.124275, 35.245663, 27.704096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.898766, 35.510246, 27.901937> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388557, 0.316028, -0.865534,
		-0.728821, -0.680150, 0.078844,
		-0.563776, 0.661455, 0.494605,
		39.729633, 35.708683, 28.050320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.487499, 35.312279, 27.270130> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.503769, 35.623550, 27.520823>,  <39.513531, 35.810314, 27.671238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.503769, 35.623550, 27.520823>,  <39.487499, 35.312279, 27.270130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.503769, 35.623550, 27.520823> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482919, 0.564433, -0.669481,
		-0.874720, -0.275426, 0.398756,
		0.040679, 0.778175, 0.626729,
		39.515972, 35.857002, 27.708841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.842545, 35.553905, 27.364281>,  <39.487499, 35.312279, 27.270130>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.842545, 35.553905, 27.364281> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.073231, 35.867352, 27.456665>,  <39.211643, 36.055420, 27.512096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.073231, 35.867352, 27.456665>,  <38.842545, 35.553905, 27.364281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.073231, 35.867352, 27.456665> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508181, 0.565470, -0.649612,
		-0.639649, 0.257271, 0.724335,
		0.576716, 0.783617, 0.230962,
		39.246246, 36.102436, 27.525953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.414852, 36.111378, 27.457697>,  <38.842545, 35.553905, 27.364281>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.414852, 36.111378, 27.457697> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.775459, 36.275711, 27.403305>,  <38.991821, 36.374310, 27.370670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.775459, 36.275711, 27.403305>,  <38.414852, 36.111378, 27.457697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.775459, 36.275711, 27.403305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406093, 0.694559, -0.593866,
		-0.149531, 0.590600, 0.792990,
		0.901515, 0.410829, -0.135981,
		39.045914, 36.398960, 27.362511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.387691, 36.936443, 27.539951>,  <38.414852, 36.111378, 27.457697>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.387691, 36.936443, 27.539951> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.714886, 36.857777, 27.323719>,  <38.911201, 36.810577, 27.193979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.714886, 36.857777, 27.323719>,  <38.387691, 36.936443, 27.539951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.714886, 36.857777, 27.323719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240193, 0.737129, -0.631624,
		0.522698, 0.646500, 0.555720,
		0.817982, -0.196668, -0.540580,
		38.960281, 36.798775, 27.161545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.734066, 37.614441, 27.436474>,  <38.387691, 36.936443, 27.539951>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.734066, 37.614441, 27.436474> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.881966, 37.358932, 27.166580>,  <38.970707, 37.205627, 27.004644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.881966, 37.358932, 27.166580>,  <38.734066, 37.614441, 27.436474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.881966, 37.358932, 27.166580> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190250, 0.658759, -0.727902,
		0.909445, 0.397509, 0.122050,
		0.369749, -0.638767, -0.674732,
		38.992889, 37.167301, 26.964161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.140160, 37.998787, 26.967451>,  <38.734066, 37.614441, 27.436474>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.140160, 37.998787, 26.967451> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.075920, 37.668758, 26.750761>,  <39.037376, 37.470741, 26.620747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.075920, 37.668758, 26.750761>,  <39.140160, 37.998787, 26.967451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.075920, 37.668758, 26.750761> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194731, 0.564546, -0.802102,
		0.967620, -0.023327, -0.251333,
		-0.160599, -0.825072, -0.541723,
		39.027740, 37.421238, 26.588243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.378700, 38.196453, 26.370230>,  <39.140160, 37.998787, 26.967451>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.378700, 38.196453, 26.370230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.162441, 37.875977, 26.267633>,  <39.032684, 37.683689, 26.206076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.162441, 37.875977, 26.267633>,  <39.378700, 38.196453, 26.370230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.162441, 37.875977, 26.267633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231200, 0.434663, -0.870411,
		0.808855, -0.411285, -0.420236,
		-0.540647, -0.801195, -0.256491,
		39.000248, 37.635616, 26.190687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.641369, 37.884686, 25.722223>,  <39.378700, 38.196453, 26.370230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.641369, 37.884686, 25.722223> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.271122, 37.733921, 25.735937>,  <39.048973, 37.643463, 25.744165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.271122, 37.733921, 25.735937>,  <39.641369, 37.884686, 25.722223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.271122, 37.733921, 25.735937> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131098, 0.234336, -0.963276,
		0.355033, -0.896118, -0.266317,
		-0.925616, -0.376908, 0.034282,
		38.993439, 37.620850, 25.746222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.572376, 37.487560, 25.219862>,  <39.641369, 37.884686, 25.722223>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.572376, 37.487560, 25.219862> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.192020, 37.588024, 25.292227>,  <38.963806, 37.648304, 25.335646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.192020, 37.588024, 25.292227>,  <39.572376, 37.487560, 25.219862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.192020, 37.588024, 25.292227> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083710, 0.354025, -0.931482,
		-0.298003, -0.900879, -0.315613,
		-0.950888, 0.251164, 0.180913,
		38.906754, 37.663372, 25.346500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.230427, 37.252750, 24.717928>,  <39.572376, 37.487560, 25.219862>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.230427, 37.252750, 24.717928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.003117, 37.547741, 24.863911>,  <38.866730, 37.724735, 24.951500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.003117, 37.547741, 24.863911>,  <39.230427, 37.252750, 24.717928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.003117, 37.547741, 24.863911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020686, 0.430586, -0.902312,
		-0.822581, -0.520309, -0.229435,
		-0.568272, 0.737478, 0.364955,
		38.832634, 37.768986, 24.973396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.732273, 37.443325, 24.211845>,  <39.230427, 37.252750, 24.717928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.732273, 37.443325, 24.211845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.682419, 37.764339, 24.445219>,  <38.652508, 37.956947, 24.585243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.682419, 37.764339, 24.445219>,  <38.732273, 37.443325, 24.211845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.682419, 37.764339, 24.445219> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241640, 0.545762, -0.802343,
		-0.962328, -0.240982, 0.125904,
		-0.124637, 0.802541, 0.583433,
		38.645027, 38.005100, 24.620249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023548, 37.811691, 24.017290>,  <38.732273, 37.443325, 24.211845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.023548, 37.811691, 24.017290> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.236012, 38.087666, 24.214010>,  <38.363487, 38.253250, 24.332043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.236012, 38.087666, 24.214010>,  <38.023548, 37.811691, 24.017290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.236012, 38.087666, 24.214010> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091449, 0.623743, -0.776261,
		-0.842325, 0.367340, 0.394398,
		0.531155, 0.689932, 0.491802,
		38.395359, 38.294643, 24.361551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.596436, 38.406944, 23.842691>,  <38.023548, 37.811691, 24.017290>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.596436, 38.406944, 23.842691> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.943588, 38.556969, 23.972984>,  <38.151882, 38.646984, 24.051159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.943588, 38.556969, 23.972984>,  <37.596436, 38.406944, 23.842691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.943588, 38.556969, 23.972984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136082, 0.810126, -0.570243,
		-0.477761, 0.450580, 0.754137,
		0.867886, 0.375064, 0.325731,
		38.203953, 38.669487, 24.070704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.403259, 39.133152, 24.005278>,  <37.596436, 38.406944, 23.842691>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.403259, 39.133152, 24.005278> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.794762, 39.086502, 23.937830>,  <38.029663, 39.058514, 23.897362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.794762, 39.086502, 23.937830>,  <37.403259, 39.133152, 24.005278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.794762, 39.086502, 23.937830> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006878, 0.840665, -0.541512,
		0.204907, 0.528849, 0.823609,
		0.978757, -0.116625, -0.168621,
		38.088390, 39.051514, 23.887243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.612316, 39.732822, 24.040190>,  <37.403259, 39.133152, 24.005278>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.612316, 39.732822, 24.040190> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.920277, 39.580017, 23.835712>,  <38.105053, 39.488335, 23.713026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.920277, 39.580017, 23.835712>,  <37.612316, 39.732822, 24.040190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.920277, 39.580017, 23.835712> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082131, 0.735063, -0.673006,
		0.632853, 0.560135, 0.534553,
		0.769904, -0.382010, -0.511191,
		38.151249, 39.465416, 23.682356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.101707, 40.324734, 23.850611>,  <37.612316, 39.732822, 24.040190>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.101707, 40.324734, 23.850611> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.157520, 40.034462, 23.581114>,  <38.191006, 39.860298, 23.419416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.157520, 40.034462, 23.581114>,  <38.101707, 40.324734, 23.850611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.157520, 40.034462, 23.581114> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064149, 0.685591, -0.725155,
		0.988138, 0.057961, 0.142211,
		0.139529, -0.725676, -0.673741,
		38.199379, 39.816761, 23.378992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.627735, 40.533169, 23.430679>,  <38.101707, 40.324734, 23.850611>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.627735, 40.533169, 23.430679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.444881, 40.261154, 23.201393>,  <38.335167, 40.097946, 23.063822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.444881, 40.261154, 23.201393>,  <38.627735, 40.533169, 23.430679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.444881, 40.261154, 23.201393> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147175, 0.693455, -0.705308,
		0.877134, -0.238061, -0.417089,
		-0.457139, -0.680035, -0.573216,
		38.307739, 40.057144, 23.029428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.920002, 40.627201, 22.786427>,  <38.627735, 40.533169, 23.430679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.920002, 40.627201, 22.786427> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.601830, 40.407490, 22.683989>,  <38.410927, 40.275661, 22.622526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.601830, 40.407490, 22.683989>,  <38.920002, 40.627201, 22.786427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.601830, 40.407490, 22.683989> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017010, 0.442632, -0.896542,
		0.605806, -0.708781, -0.361426,
		-0.795430, -0.549279, -0.256093,
		38.363201, 40.242706, 22.607161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.076057, 40.335861, 22.163237>,  <38.920002, 40.627201, 22.786427>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.076057, 40.335861, 22.163237> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.679314, 40.372150, 22.198994>,  <38.441269, 40.393925, 22.220448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.679314, 40.372150, 22.198994>,  <39.076057, 40.335861, 22.163237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.679314, 40.372150, 22.198994> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023557, 0.559099, -0.828766,
		-0.125164, -0.824123, -0.552409,
		-0.991856, 0.090719, 0.089393,
		38.381756, 40.399364, 22.225811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.775761, 40.198158, 21.490122>,  <39.076057, 40.335861, 22.163237>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.775761, 40.198158, 21.490122> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.466633, 40.367588, 21.679153>,  <38.281155, 40.469246, 21.792572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.466633, 40.367588, 21.679153>,  <38.775761, 40.198158, 21.490122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.466633, 40.367588, 21.679153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135525, 0.617334, -0.774940,
		-0.619983, -0.662938, -0.419685,
		-0.772822, 0.423571, 0.472581,
		38.234787, 40.494659, 21.820929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.264759, 40.174870, 21.051128>,  <38.775761, 40.198158, 21.490122>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.264759, 40.174870, 21.051128> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.157551, 40.468975, 21.300142>,  <38.093224, 40.645439, 21.449551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.157551, 40.468975, 21.300142>,  <38.264759, 40.174870, 21.051128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.157551, 40.468975, 21.300142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252014, 0.570171, -0.781917,
		-0.929867, -0.366460, 0.032477,
		-0.268024, 0.735263, 0.622536,
		38.077145, 40.689552, 21.486902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.667751, 40.453392, 20.846992>,  <38.264759, 40.174870, 21.051128>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.667751, 40.453392, 20.846992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.745674, 40.781509, 21.062090>,  <37.792427, 40.978378, 21.191149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.745674, 40.781509, 21.062090>,  <37.667751, 40.453392, 20.846992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.745674, 40.781509, 21.062090> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320729, 0.571381, -0.755418,
		-0.926921, -0.025306, 0.374403,
		0.194810, 0.820295, 0.537741,
		37.804115, 41.027599, 21.223412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.144604, 40.949776, 20.731371>,  <37.667751, 40.453392, 20.846992>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.144604, 40.949776, 20.731371> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.474319, 41.152611, 20.832096>,  <37.672150, 41.274311, 20.892530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.474319, 41.152611, 20.832096>,  <37.144604, 40.949776, 20.731371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.474319, 41.152611, 20.832096> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306221, 0.773408, -0.555039,
		-0.476206, 0.380404, 0.792794,
		0.824292, 0.507083, 0.251813,
		37.721607, 41.304737, 20.907640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.880993, 41.637604, 20.947565>,  <37.144604, 40.949776, 20.731371>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.880993, 41.637604, 20.947565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.245716, 41.648865, 20.783703>,  <37.464550, 41.655621, 20.685385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.245716, 41.648865, 20.783703>,  <36.880993, 41.637604, 20.947565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.245716, 41.648865, 20.783703> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315989, 0.685211, -0.656230,
		0.262224, 0.727800, 0.633676,
		0.911806, 0.028156, -0.409655,
		37.519257, 41.657310, 20.660807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.285641, 41.079979, 21.036833>,  <36.880993, 41.637604, 20.947565>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.285641, 41.079979, 21.036833> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.903786, 41.145878, 21.136053>,  <35.674675, 41.185417, 21.195585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.903786, 41.145878, 21.136053>,  <36.285641, 41.079979, 21.036833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.903786, 41.145878, 21.136053> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152962, -0.443401, 0.883175,
		0.255491, 0.881052, 0.398085,
		-0.954635, 0.164752, 0.248052,
		35.617393, 41.195305, 21.210468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.224842, 41.237370, 21.847542>,  <36.285641, 41.079979, 21.036833>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.224842, 41.237370, 21.847542> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.867210, 41.115444, 21.716263>,  <35.652630, 41.042290, 21.637495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.867210, 41.115444, 21.716263>,  <36.224842, 41.237370, 21.847542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.867210, 41.115444, 21.716263> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031042, -0.688797, 0.724290,
		-0.446834, 0.657759, 0.606376,
		-0.894078, -0.304814, -0.328196,
		35.598988, 41.023998, 21.617804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.766457, 41.180439, 22.493826>,  <36.224842, 41.237370, 21.847542>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.766457, 41.180439, 22.493826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.616146, 40.959103, 22.196478>,  <35.525959, 40.826302, 22.018068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.616146, 40.959103, 22.196478>,  <35.766457, 41.180439, 22.493826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.616146, 40.959103, 22.196478> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203000, -0.733527, 0.648636,
		-0.904202, 0.394649, 0.163315,
		-0.375779, -0.553345, -0.743370,
		35.503414, 40.793098, 21.973467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.022339, 40.899399, 22.606171>,  <35.766457, 41.180439, 22.493826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.022339, 40.899399, 22.606171> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.197777, 40.633736, 22.364006>,  <35.303040, 40.474339, 22.218706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.197777, 40.633736, 22.364006>,  <35.022339, 40.899399, 22.606171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.197777, 40.633736, 22.364006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353502, -0.746861, 0.563236,
		-0.826238, -0.033019, -0.562353,
		0.438596, -0.664160, -0.605413,
		35.329357, 40.434486, 22.182383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.597755, 40.233604, 22.473804>,  <35.022339, 40.899399, 22.606171>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.597755, 40.233604, 22.473804> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.963776, 40.101685, 22.380919>,  <35.183388, 40.022533, 22.325188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.963776, 40.101685, 22.380919>,  <34.597755, 40.233604, 22.473804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.963776, 40.101685, 22.380919> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206454, -0.877545, 0.432773,
		-0.346505, -0.348066, -0.871082,
		0.915047, -0.329796, -0.232214,
		35.238289, 40.002747, 22.311255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.512215, 39.534744, 22.517941>,  <34.597755, 40.233604, 22.473804>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.512215, 39.534744, 22.517941> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.909603, 39.571770, 22.491283>,  <35.148037, 39.593987, 22.475288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.909603, 39.571770, 22.491283>,  <34.512215, 39.534744, 22.517941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.909603, 39.571770, 22.491283> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114006, -0.788117, 0.604876,
		0.003466, -0.608526, -0.793526,
		0.993474, 0.092564, -0.066644,
		35.207645, 39.599537, 22.471291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.720734, 38.880177, 22.521029>,  <34.512215, 39.534744, 22.517941>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.720734, 38.880177, 22.521029> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.071835, 39.055492, 22.598444>,  <35.282494, 39.160683, 22.644894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.071835, 39.055492, 22.598444>,  <34.720734, 38.880177, 22.521029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.071835, 39.055492, 22.598444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200212, -0.702524, 0.682917,
		0.435281, -0.560682, -0.704391,
		0.877750, 0.438288, 0.193540,
		35.335159, 39.186977, 22.656506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.154648, 38.357796, 22.722858>,  <34.720734, 38.880177, 22.521029>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.154648, 38.357796, 22.722858> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.338490, 38.677677, 22.877386>,  <35.448795, 38.869606, 22.970102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.338490, 38.677677, 22.877386>,  <35.154648, 38.357796, 22.722858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.338490, 38.677677, 22.877386> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290486, -0.546418, 0.785522,
		0.839273, -0.248812, -0.483440,
		0.459608, 0.799700, 0.386317,
		35.476372, 38.917587, 22.993280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.793594, 38.102070, 22.980320>,  <35.154648, 38.357796, 22.722858>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.793594, 38.102070, 22.980320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.737789, 38.445293, 23.178015>,  <35.704308, 38.651226, 23.296631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.737789, 38.445293, 23.178015>,  <35.793594, 38.102070, 22.980320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.737789, 38.445293, 23.178015> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438809, -0.393862, 0.807663,
		0.887684, 0.329556, -0.321575,
		-0.139514, 0.858059, 0.494237,
		35.695934, 38.702713, 23.326286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.466526, 38.248463, 23.384514>,  <35.793594, 38.102070, 22.980320>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.466526, 38.248463, 23.384514> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.163990, 38.431122, 23.571882>,  <35.982468, 38.540718, 23.684303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.163990, 38.431122, 23.571882>,  <36.466526, 38.248463, 23.384514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.163990, 38.431122, 23.571882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266195, -0.439247, 0.858022,
		0.597568, 0.773650, 0.210663,
		-0.756342, 0.456649, 0.468422,
		35.937088, 38.568115, 23.712408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.773411, 38.622120, 23.979382>,  <36.466526, 38.248463, 23.384514>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.773411, 38.622120, 23.979382> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.391575, 38.597939, 24.096075>,  <36.162476, 38.583427, 24.166090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.391575, 38.597939, 24.096075>,  <36.773411, 38.622120, 23.979382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.391575, 38.597939, 24.096075> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295727, -0.311160, 0.903175,
		0.036173, 0.948433, 0.314907,
		-0.954587, -0.060456, 0.291733,
		36.105198, 38.579803, 24.183596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.872314, 38.848728, 24.639378>,  <36.773411, 38.622120, 23.979382>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.872314, 38.848728, 24.639378> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.514637, 38.674854, 24.596550>,  <36.300030, 38.570530, 24.570854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.514637, 38.674854, 24.596550>,  <36.872314, 38.848728, 24.639378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.514637, 38.674854, 24.596550> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038368, -0.312695, 0.949078,
		-0.446032, 0.844553, 0.296288,
		-0.894194, -0.434687, -0.107068,
		36.246380, 38.544449, 24.564430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.455833, 39.007664, 25.223692>,  <36.872314, 38.848728, 24.639378>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.455833, 39.007664, 25.223692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.232029, 38.700478, 25.098997>,  <36.097748, 38.516167, 25.024179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.232029, 38.700478, 25.098997>,  <36.455833, 39.007664, 25.223692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.232029, 38.700478, 25.098997> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077647, -0.325899, 0.942211,
		-0.825180, 0.551380, 0.122713,
		-0.559508, -0.767965, -0.311738,
		36.064178, 38.470089, 25.005476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.092369, 38.815170, 25.771841>,  <36.455833, 39.007664, 25.223692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.092369, 38.815170, 25.771841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.027660, 38.497215, 25.537922>,  <35.988834, 38.306442, 25.397570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.027660, 38.497215, 25.537922>,  <36.092369, 38.815170, 25.771841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.027660, 38.497215, 25.537922> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064606, -0.582803, 0.810041,
		-0.984711, 0.168825, 0.042929,
		-0.161774, -0.794883, -0.584799,
		35.979130, 38.258751, 25.362482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.609737, 38.405052, 26.045122>,  <36.092369, 38.815170, 25.771841>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.609737, 38.405052, 26.045122> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.830723, 38.155807, 25.823668>,  <35.963314, 38.006260, 25.690794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.830723, 38.155807, 25.823668>,  <35.609737, 38.405052, 26.045122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.830723, 38.155807, 25.823668> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017821, -0.655219, 0.755229,
		-0.833348, -0.427101, -0.350879,
		0.552462, -0.623116, -0.553636,
		35.996460, 37.968872, 25.657578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.336067, 37.861629, 26.157753>,  <35.609737, 38.405052, 26.045122>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.336067, 37.861629, 26.157753> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.699402, 37.753849, 26.029802>,  <35.917404, 37.689182, 25.953032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.699402, 37.753849, 26.029802>,  <35.336067, 37.861629, 26.157753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.699402, 37.753849, 26.029802> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039455, -0.706205, 0.706907,
		-0.416373, -0.654731, -0.630842,
		0.908338, -0.269447, -0.319877,
		35.971905, 37.673016, 25.933840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.285007, 37.135769, 26.050579>,  <35.336067, 37.861629, 26.157753>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.285007, 37.135769, 26.050579> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.673340, 37.217773, 26.100309>,  <35.906338, 37.266975, 26.130148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.673340, 37.217773, 26.100309>,  <35.285007, 37.135769, 26.050579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.673340, 37.217773, 26.100309> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071434, -0.742297, 0.666252,
		0.228878, -0.637937, -0.735290,
		0.970830, 0.205015, 0.124326,
		35.964588, 37.279278, 26.137608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.596825, 36.565437, 25.799831>,  <35.285007, 37.135769, 26.050579>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.596825, 36.565437, 25.799831> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.856628, 36.756184, 26.036724>,  <36.012508, 36.870632, 26.178860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.856628, 36.756184, 26.036724>,  <35.596825, 36.565437, 25.799831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.856628, 36.756184, 26.036724> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068084, -0.812234, 0.579345,
		0.757303, -0.335965, -0.560017,
		0.649505, 0.476868, 0.592234,
		36.051479, 36.899242, 26.214394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.989006, 36.100071, 26.027487>,  <35.596825, 36.565437, 25.799831>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.989006, 36.100071, 26.027487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.079205, 36.384548, 26.293825>,  <36.133324, 36.555237, 26.453629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.079205, 36.384548, 26.293825>,  <35.989006, 36.100071, 26.027487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.079205, 36.384548, 26.293825> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132634, -0.699497, 0.702220,
		0.965173, -0.070037, -0.252064,
		0.225499, 0.711196, 0.665846,
		36.146854, 36.597908, 26.493578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.679031, 35.927856, 26.239700>,  <35.989006, 36.100071, 26.027487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.679031, 35.927856, 26.239700> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.499474, 36.155647, 26.515146>,  <36.391739, 36.292320, 26.680414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.499474, 36.155647, 26.515146>,  <36.679031, 35.927856, 26.239700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.499474, 36.155647, 26.515146> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319368, -0.617480, 0.718834,
		0.834563, 0.542604, 0.095313,
		-0.448896, 0.569473, 0.688617,
		36.364803, 36.326488, 26.721731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.722363, 34.265713, 30.162943> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.397877, 34.488541, 30.234049>,  <40.203186, 34.622238, 30.276712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.397877, 34.488541, 30.234049>,  <40.722363, 34.265713, 30.162943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.397877, 34.488541, 30.234049> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020159, -0.330464, 0.943603,
		0.584402, 0.761881, 0.279307,
		-0.811214, 0.557074, 0.177765,
		40.154514, 34.655663, 30.287378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.798332, 34.570786, 30.864281>,  <40.722363, 34.265713, 30.162943>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.798332, 34.570786, 30.864281> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.407478, 34.599644, 30.784283>,  <40.172966, 34.616959, 30.736284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.407478, 34.599644, 30.784283>,  <40.798332, 34.570786, 30.864281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.407478, 34.599644, 30.784283> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212533, -0.305672, 0.928113,
		0.005830, 0.949399, 0.314018,
		-0.977136, 0.072150, -0.199997,
		40.114338, 34.621288, 30.724283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.518604, 35.034054, 31.338049>,  <40.798332, 34.570786, 30.864281>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.518604, 35.034054, 31.338049> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.243973, 34.776295, 31.203377>,  <40.079193, 34.621639, 31.122574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.243973, 34.776295, 31.203377>,  <40.518604, 35.034054, 31.338049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.243973, 34.776295, 31.203377> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142168, -0.335147, 0.931378,
		-0.713016, 0.687334, 0.138493,
		-0.686583, -0.644398, -0.336682,
		40.037998, 34.582973, 31.102371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.873013, 35.195194, 31.679970>,  <40.518604, 35.034054, 31.338049>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.873013, 35.195194, 31.679970> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.846741, 34.815342, 31.557400>,  <39.830978, 34.587433, 31.483858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.846741, 34.815342, 31.557400>,  <39.873013, 35.195194, 31.679970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.846741, 34.815342, 31.557400> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201582, -0.288128, 0.936134,
		-0.977267, 0.123257, -0.172503,
		-0.065682, -0.949626, -0.306424,
		39.827038, 34.530453, 31.465473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.167328, 34.880367, 31.996010>,  <39.873013, 35.195194, 31.679970>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.167328, 34.880367, 31.996010> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.374210, 34.556595, 31.884787>,  <39.498341, 34.362331, 31.818052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.374210, 34.556595, 31.884787>,  <39.167328, 34.880367, 31.996010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.374210, 34.556595, 31.884787> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464829, -0.538460, 0.702847,
		-0.718628, -0.234271, -0.654744,
		0.517211, -0.809431, -0.278057,
		39.529373, 34.313766, 31.801371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.722893, 34.350746, 31.950317>,  <39.167328, 34.880367, 31.996010>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.722893, 34.350746, 31.950317> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.077965, 34.177528, 32.012932>,  <39.291008, 34.073597, 32.050499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.077965, 34.177528, 32.012932>,  <38.722893, 34.350746, 31.950317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.077965, 34.177528, 32.012932> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400454, -0.558199, 0.726671,
		-0.227300, -0.707734, -0.668914,
		0.887678, -0.433042, 0.156536,
		39.344269, 34.047615, 32.059891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.559792, 33.717266, 32.077263>,  <38.722893, 34.350746, 31.950317>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.559792, 33.717266, 32.077263> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.929539, 33.727638, 32.229511>,  <39.151386, 33.733860, 32.320858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.929539, 33.727638, 32.229511>,  <38.559792, 33.717266, 32.077263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.929539, 33.727638, 32.229511> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322601, -0.479435, 0.816131,
		0.203642, -0.877194, -0.434811,
		0.924369, 0.025928, 0.380617,
		39.206848, 33.735416, 32.343697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.686733, 33.101582, 32.376064>,  <38.559792, 33.717266, 32.077263>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.686733, 33.101582, 32.376064> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.970852, 33.314224, 32.560616>,  <39.141323, 33.441811, 32.671349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.970852, 33.314224, 32.560616>,  <38.686733, 33.101582, 32.376064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.970852, 33.314224, 32.560616> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144340, -0.531533, 0.834649,
		0.688946, -0.659443, -0.300813,
		0.710295, 0.531608, 0.461381,
		39.183941, 33.473705, 32.699028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.065006, 32.613811, 32.779709>,  <38.686733, 33.101582, 32.376064>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.065006, 32.613811, 32.779709> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.140068, 32.969391, 32.946831>,  <39.185104, 33.182739, 33.047104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.140068, 32.969391, 32.946831>,  <39.065006, 32.613811, 32.779709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.140068, 32.969391, 32.946831> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096890, -0.406531, 0.908485,
		0.977444, -0.210966, 0.009841,
		0.187659, 0.888947, 0.417802,
		39.196365, 33.236076, 33.072170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.537140, 32.424049, 33.279877>,  <39.065006, 32.613811, 32.779709>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.537140, 32.424049, 33.279877> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.377029, 32.773621, 33.390167>,  <39.280964, 32.983364, 33.456341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.377029, 32.773621, 33.390167>,  <39.537140, 32.424049, 33.279877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.377029, 32.773621, 33.390167> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071606, -0.329784, 0.941337,
		0.913594, 0.357049, 0.194583,
		-0.400274, 0.873933, 0.275722,
		39.256947, 33.035801, 33.472885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.914635, 32.617882, 33.847668>,  <39.537140, 32.424049, 33.279877>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.914635, 32.617882, 33.847668> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.562351, 32.802197, 33.891525>,  <39.350983, 32.912785, 33.917839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.562351, 32.802197, 33.891525>,  <39.914635, 32.617882, 33.847668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.562351, 32.802197, 33.891525> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097164, -0.402323, 0.910327,
		0.463584, 0.791080, 0.399102,
		-0.880710, 0.460791, 0.109646,
		39.298138, 32.940434, 33.924419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.826618, 33.143471, 34.476032>,  <39.914635, 32.617882, 33.847668>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.826618, 33.143471, 34.476032> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.463341, 33.001640, 34.387070>,  <39.245373, 32.916542, 34.333691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.463341, 33.001640, 34.387070>,  <39.826618, 33.143471, 34.476032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.463341, 33.001640, 34.387070> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115566, -0.298286, 0.947455,
		-0.402282, 0.886174, 0.229924,
		-0.908193, -0.354573, -0.222406,
		39.190884, 32.895267, 34.320347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.481110, 33.155899, 35.066494>,  <39.826618, 33.143471, 34.476032>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.481110, 33.155899, 35.066494> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.244740, 32.923756, 34.842358>,  <39.102917, 32.784470, 34.707874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.244740, 32.923756, 34.842358>,  <39.481110, 33.155899, 35.066494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.244740, 32.923756, 34.842358> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286418, -0.498407, 0.818264,
		-0.754169, 0.644026, 0.128295,
		-0.590926, -0.580363, -0.560344,
		39.067463, 32.749645, 34.674255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.811008, 33.494820, 35.096710>,  <39.481110, 33.155899, 35.066494>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.811008, 33.494820, 35.096710> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.502563, 33.736870, 35.017506>,  <38.317497, 33.882099, 34.969982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.502563, 33.736870, 35.017506>,  <38.811008, 33.494820, 35.096710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.502563, 33.736870, 35.017506> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126949, -0.450872, -0.883515,
		-0.623914, -0.656152, 0.424494,
		-0.771113, 0.605126, -0.198007,
		38.271229, 33.918407, 34.958103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155960, 33.986404, 35.578789>,  <38.811008, 33.494820, 35.096710>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.155960, 33.986404, 35.578789> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.342480, 34.242573, 35.822895>,  <39.454391, 34.396275, 35.969357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.342480, 34.242573, 35.822895>,  <39.155960, 33.986404, 35.578789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.342480, 34.242573, 35.822895> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375071, 0.767908, -0.519268,
		-0.801177, 0.013243, 0.598281,
		0.466301, 0.640424, 0.610263,
		39.482368, 34.434700, 36.005974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.661026, 34.498680, 35.717903>,  <39.155960, 33.986404, 35.578789>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.661026, 34.498680, 35.717903> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.001858, 34.695526, 35.789219>,  <39.206356, 34.813633, 35.832008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.001858, 34.695526, 35.789219>,  <38.661026, 34.498680, 35.717903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.001858, 34.695526, 35.789219> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308420, 0.747270, -0.588612,
		-0.422896, 0.446554, 0.788510,
		0.852078, 0.492114, 0.178291,
		39.257481, 34.843159, 35.842705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.443111, 35.140518, 35.822063>,  <38.661026, 34.498680, 35.717903>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.443111, 35.140518, 35.822063> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.833015, 35.211735, 35.768173>,  <39.066956, 35.254463, 35.735840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.833015, 35.211735, 35.768173>,  <38.443111, 35.140518, 35.822063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.833015, 35.211735, 35.768173> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220793, 0.858323, -0.463177,
		0.033171, 0.481231, 0.875966,
		0.974757, 0.178043, -0.134723,
		39.125443, 35.265148, 35.727757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.665661, 35.750439, 36.025951>,  <38.443111, 35.140518, 35.822063>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.665661, 35.750439, 36.025951> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.964718, 35.671192, 35.772408>,  <39.144154, 35.623642, 35.620281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.964718, 35.671192, 35.772408>,  <38.665661, 35.750439, 36.025951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.964718, 35.671192, 35.772408> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320953, 0.727797, -0.606053,
		0.581390, 0.656551, 0.480548,
		0.747646, -0.198120, -0.633856,
		39.189011, 35.611755, 35.582253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.000874, 36.355431, 35.854061>,  <38.665661, 35.750439, 36.025951>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.000874, 36.355431, 35.854061> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.091705, 36.120300, 35.543476>,  <39.146202, 35.979221, 35.357124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.091705, 36.120300, 35.543476>,  <39.000874, 36.355431, 35.854061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.091705, 36.120300, 35.543476> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228545, 0.742862, -0.629224,
		0.946680, 0.320338, 0.034341,
		0.227075, -0.587826, -0.776465,
		39.159828, 35.943951, 35.310535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.153831, 36.876308, 35.361408>,  <39.000874, 36.355431, 35.854061>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.153831, 36.876308, 35.361408> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.102364, 36.540043, 35.150990>,  <39.071484, 36.338284, 35.024738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.102364, 36.540043, 35.150990>,  <39.153831, 36.876308, 35.361408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.102364, 36.540043, 35.150990> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127068, 0.540061, -0.831979,
		0.983513, -0.040209, -0.176313,
		-0.128673, -0.840665, -0.526047,
		39.063763, 36.287842, 34.993176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.547924, 36.975239, 34.699841>,  <39.153831, 36.876308, 35.361408>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.547924, 36.975239, 34.699841> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.332474, 36.657032, 34.588821>,  <39.203201, 36.466106, 34.522209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.332474, 36.657032, 34.588821>,  <39.547924, 36.975239, 34.699841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.332474, 36.657032, 34.588821> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215373, 0.448476, -0.867458,
		0.814551, -0.407461, -0.412895,
		-0.538628, -0.795516, -0.277551,
		39.170887, 36.418377, 34.505558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.808662, 36.617588, 34.143032>,  <39.547924, 36.975239, 34.699841>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.808662, 36.617588, 34.143032> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.420277, 36.522263, 34.134743>,  <39.187244, 36.465069, 34.129768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.420277, 36.522263, 34.134743>,  <39.808662, 36.617588, 34.143032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.420277, 36.522263, 34.134743> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054350, 0.304150, -0.951072,
		0.232955, -0.922334, -0.308272,
		-0.970967, -0.238312, -0.020724,
		39.128986, 36.450768, 34.128525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.691841, 36.309242, 33.462383>,  <39.808662, 36.617588, 34.143032>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.691841, 36.309242, 33.462383> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.333794, 36.418369, 33.603424>,  <39.118965, 36.483845, 33.688049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.333794, 36.418369, 33.603424>,  <39.691841, 36.309242, 33.462383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.333794, 36.418369, 33.603424> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230827, 0.393035, -0.890080,
		-0.381411, -0.878121, -0.288841,
		-0.895123, 0.272814, 0.352602,
		39.065258, 36.500214, 33.709206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.181442, 36.045605, 33.055264>,  <39.691841, 36.309242, 33.462383>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.181442, 36.045605, 33.055264> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.040146, 36.374077, 33.234539>,  <38.955368, 36.571159, 33.342106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.040146, 36.374077, 33.234539>,  <39.181442, 36.045605, 33.055264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.040146, 36.374077, 33.234539> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194548, 0.404125, -0.893775,
		-0.915079, -0.402915, 0.017006,
		-0.353243, 0.821184, 0.448193,
		38.934174, 36.620434, 33.368996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.623055, 36.156769, 32.632477>,  <39.181442, 36.045605, 33.055264>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.623055, 36.156769, 32.632477> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.670933, 36.483868, 32.857677>,  <38.699657, 36.680126, 32.992798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.670933, 36.483868, 32.857677>,  <38.623055, 36.156769, 32.632477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.670933, 36.483868, 32.857677> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350487, 0.565366, -0.746672,
		-0.928888, -0.107953, 0.354280,
		0.119692, 0.817745, 0.562998,
		38.706841, 36.729191, 33.026577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.054115, 36.616184, 32.557770>,  <38.623055, 36.156769, 32.632477>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.054115, 36.616184, 32.557770> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.371922, 36.837929, 32.656910>,  <38.562607, 36.970974, 32.716393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.371922, 36.837929, 32.656910>,  <38.054115, 36.616184, 32.557770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.371922, 36.837929, 32.656910> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080911, 0.501164, -0.861561,
		-0.601828, 0.664471, 0.443037,
		0.794517, 0.554358, 0.247852,
		38.610275, 37.004234, 32.731266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.874546, 37.323627, 32.525982>,  <38.054115, 36.616184, 32.557770>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.874546, 37.323627, 32.525982> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.272823, 37.340446, 32.492931>,  <38.511791, 37.350536, 32.473099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.272823, 37.340446, 32.492931>,  <37.874546, 37.323627, 32.525982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.272823, 37.340446, 32.492931> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089501, 0.668418, -0.738382,
		0.024187, 0.742597, 0.669302,
		0.995693, 0.042044, -0.082631,
		38.571529, 37.353058, 32.468143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.073238, 38.089851, 32.609028>,  <37.874546, 37.323627, 32.525982>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.073238, 38.089851, 32.609028> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.405491, 37.928490, 32.455498>,  <38.604843, 37.831673, 32.363380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.405491, 37.928490, 32.455498>,  <38.073238, 38.089851, 32.609028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.405491, 37.928490, 32.455498> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071251, 0.760636, -0.645257,
		0.552249, 0.508621, 0.660549,
		0.830629, -0.403407, -0.383821,
		38.654678, 37.807468, 32.340351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.474899, 38.444557, 33.179924>,  <38.073238, 38.089851, 32.609028>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.474899, 38.444557, 33.179924> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.227806, 38.754005, 33.236382>,  <38.079548, 38.939674, 33.270256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.227806, 38.754005, 33.236382>,  <38.474899, 38.444557, 33.179924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.227806, 38.754005, 33.236382> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114474, -0.089112, 0.989421,
		0.778010, 0.627358, -0.033511,
		-0.617735, 0.773616, 0.141146,
		38.042484, 38.986092, 33.278725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.727295, 38.817822, 33.737991>,  <38.474899, 38.444557, 33.179924>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.727295, 38.817822, 33.737991> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.337864, 38.902809, 33.704536>,  <38.104206, 38.953800, 33.684464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.337864, 38.902809, 33.704536>,  <38.727295, 38.817822, 33.737991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.337864, 38.902809, 33.704536> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097153, -0.053954, 0.993806,
		0.206640, 0.975677, 0.073171,
		-0.973582, 0.212469, -0.083641,
		38.045788, 38.966549, 33.679443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.542747, 39.341759, 34.264606>,  <38.727295, 38.817822, 33.737991>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.542747, 39.341759, 34.264606> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.215191, 39.138020, 34.158794>,  <38.018658, 39.015774, 34.095306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.215191, 39.138020, 34.158794>,  <38.542747, 39.341759, 34.264606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.215191, 39.138020, 34.158794> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210279, -0.162595, 0.964026,
		-0.534038, 0.845059, 0.026042,
		-0.818893, -0.509350, -0.264530,
		37.969524, 38.985214, 34.079437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.116211, 39.533657, 34.849087>,  <38.542747, 39.341759, 34.264606>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.116211, 39.533657, 34.849087> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.917332, 39.225922, 34.688633>,  <37.798004, 39.041279, 34.592361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.917332, 39.225922, 34.688633>,  <38.116211, 39.533657, 34.849087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.917332, 39.225922, 34.688633> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341562, -0.251442, 0.905600,
		-0.797577, 0.587276, -0.137761,
		-0.497198, -0.769340, -0.401136,
		37.768173, 38.995121, 34.568291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.480946, 39.495296, 35.169643>,  <38.116211, 39.533657, 34.849087>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.480946, 39.495296, 35.169643> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.522457, 39.127712, 35.017460>,  <37.547363, 38.907162, 34.926151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.522457, 39.127712, 35.017460>,  <37.480946, 39.495296, 35.169643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.522457, 39.127712, 35.017460> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250427, -0.394344, 0.884183,
		-0.962557, 0.003520, -0.271055,
		0.103777, -0.918956, -0.380460,
		37.553589, 38.852024, 34.903320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.907860, 39.128372, 35.416126>,  <37.480946, 39.495296, 35.169643>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.907860, 39.128372, 35.416126> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.120846, 38.809422, 35.302513>,  <37.248638, 38.618050, 35.234344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.120846, 38.809422, 35.302513>,  <36.907860, 39.128372, 35.416126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.120846, 38.809422, 35.302513> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397507, -0.531805, 0.747777,
		-0.747311, -0.285258, -0.600129,
		0.532461, -0.797378, -0.284032,
		37.280582, 38.570210, 35.217304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.429375, 38.548534, 35.437042>,  <36.907860, 39.128372, 35.416126>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.429375, 38.548534, 35.437042> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.798820, 38.395576, 35.447704>,  <37.020489, 38.303802, 35.454102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.798820, 38.395576, 35.447704>,  <36.429375, 38.548534, 35.437042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.798820, 38.395576, 35.447704> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266440, -0.590438, 0.761835,
		-0.275582, -0.710745, -0.647222,
		0.923615, -0.382394, 0.026657,
		37.075905, 38.280857, 35.455700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.300510, 37.853573, 35.476471>,  <36.429375, 38.548534, 35.437042>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.300510, 37.853573, 35.476471> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.664417, 37.919029, 35.629066>,  <36.882763, 37.958305, 35.720623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.664417, 37.919029, 35.629066>,  <36.300510, 37.853573, 35.476471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.664417, 37.919029, 35.629066> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148471, -0.729944, 0.667187,
		0.387649, -0.663628, -0.639786,
		0.909772, 0.163645, 0.381492,
		36.937347, 37.968124, 35.743515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.473259, 37.130909, 35.594391>,  <36.300510, 37.853573, 35.476471>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.473259, 37.130909, 35.594391> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.736980, 37.348057, 35.802471>,  <36.895214, 37.478348, 35.927319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.736980, 37.348057, 35.802471>,  <36.473259, 37.130909, 35.594391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.736980, 37.348057, 35.802471> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071326, -0.733906, 0.675496,
		0.748487, -0.408252, -0.522587,
		0.659303, 0.542874, 0.520200,
		36.934772, 37.510918, 35.958530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.995068, 36.608768, 35.814011>,  <36.473259, 37.130909, 35.594391>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.995068, 36.608768, 35.814011> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.998486, 36.935055, 36.045364>,  <37.000538, 37.130829, 36.184177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.998486, 36.935055, 36.045364>,  <36.995068, 36.608768, 35.814011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.998486, 36.935055, 36.045364> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075894, -0.576211, 0.813770,
		0.997079, -0.050851, 0.056983,
		0.008547, 0.815717, 0.578387,
		37.001049, 37.179771, 36.218880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.401051, 36.505280, 36.425987>,  <36.995068, 36.608768, 35.814011>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.401051, 36.505280, 36.425987> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.184002, 36.814266, 36.557957>,  <37.053772, 36.999660, 36.637138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.184002, 36.814266, 36.557957>,  <37.401051, 36.505280, 36.425987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.184002, 36.814266, 36.557957> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263996, -0.529712, 0.806046,
		0.797414, 0.350278, 0.491362,
		-0.542621, 0.772470, 0.329928,
		37.021217, 37.046009, 36.656937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.709641, 36.612091, 37.007515>,  <37.401051, 36.505280, 36.425987>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.709641, 36.612091, 37.007515> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.329918, 36.736801, 37.023575>,  <37.102085, 36.811626, 37.033211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.329918, 36.736801, 37.023575>,  <37.709641, 36.612091, 37.007515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.329918, 36.736801, 37.023575> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166685, -0.607528, 0.776612,
		0.266523, 0.730550, 0.628699,
		-0.949306, 0.311779, 0.040149,
		37.045128, 36.830334, 37.035618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.367134, 41.394680, 30.214087> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.980995, 41.365868, 30.314415>,  <37.749310, 41.348579, 30.374611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.980995, 41.365868, 30.314415>,  <38.367134, 41.394680, 30.214087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.980995, 41.365868, 30.314415> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260673, -0.311014, 0.913958,
		0.012176, 0.947672, 0.319014,
		-0.965350, -0.072030, 0.250820,
		37.691391, 41.344257, 30.389662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.214962, 41.685333, 30.924450>,  <38.367134, 41.394680, 30.214087>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.214962, 41.685333, 30.924450> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.906368, 41.441139, 30.852760>,  <37.721214, 41.294621, 30.809748>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.906368, 41.441139, 30.852760>,  <38.214962, 41.685333, 30.924450>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.906368, 41.441139, 30.852760> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024550, -0.252911, 0.967178,
		-0.635779, 0.750559, 0.180129,
		-0.771481, -0.610489, -0.179222,
		37.674923, 41.257992, 30.798994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.855541, 41.728931, 31.575390>,  <38.214962, 41.685333, 30.924450>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.855541, 41.728931, 31.575390> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.699528, 41.417744, 31.378361>,  <37.605919, 41.231030, 31.260143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.699528, 41.417744, 31.378361>,  <37.855541, 41.728931, 31.575390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.699528, 41.417744, 31.378361> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006906, -0.537398, 0.843300,
		-0.920774, 0.325516, 0.214977,
		-0.390036, -0.777973, -0.492574,
		37.582516, 41.184353, 31.230589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.315701, 41.546490, 31.910835>,  <37.855541, 41.728931, 31.575390>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.315701, 41.546490, 31.910835> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.423279, 41.211376, 31.720772>,  <37.487827, 41.010307, 31.606733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.423279, 41.211376, 31.720772>,  <37.315701, 41.546490, 31.910835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.423279, 41.211376, 31.720772> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008560, -0.491240, 0.870982,
		-0.963117, -0.238316, -0.124947,
		0.268948, -0.837788, -0.475161,
		37.503963, 40.960041, 31.578224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.833302, 41.070610, 32.108315>,  <37.315701, 41.546490, 31.910835>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.833302, 41.070610, 32.108315> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.149834, 40.859962, 31.984077>,  <37.339752, 40.733574, 31.909534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.149834, 40.859962, 31.984077>,  <36.833302, 41.070610, 32.108315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.149834, 40.859962, 31.984077> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087093, -0.599929, 0.795299,
		-0.605159, -0.602290, -0.520604,
		0.791326, -0.526624, -0.310597,
		37.387234, 40.701977, 31.890900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.665375, 40.238071, 32.063869>,  <36.833302, 41.070610, 32.108315>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.665375, 40.238071, 32.063869> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.065273, 40.246662, 32.061069>,  <37.305214, 40.251816, 32.059387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.065273, 40.246662, 32.061069>,  <36.665375, 40.238071, 32.063869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.065273, 40.246662, 32.061069> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020267, -0.716130, 0.697673,
		0.009967, -0.697637, -0.716382,
		0.999745, 0.021472, -0.007001,
		37.365196, 40.253105, 32.058968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.845753, 39.575661, 32.061951>,  <36.665375, 40.238071, 32.063869>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.845753, 39.575661, 32.061951> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.188618, 39.750267, 32.171291>,  <37.394337, 39.855030, 32.236897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.188618, 39.750267, 32.171291>,  <36.845753, 39.575661, 32.061951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.188618, 39.750267, 32.171291> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178511, -0.749632, 0.637327,
		0.483119, -0.497498, -0.720481,
		0.857164, 0.436518, 0.273353,
		37.445766, 39.881222, 32.253296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.284321, 39.023045, 31.995676>,  <36.845753, 39.575661, 32.061951>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.284321, 39.023045, 31.995676> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.422192, 39.316277, 32.230213>,  <37.504913, 39.492214, 32.370937>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.422192, 39.316277, 32.230213>,  <37.284321, 39.023045, 31.995676>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.422192, 39.316277, 32.230213> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163539, -0.661958, 0.731482,
		0.924368, -0.156231, -0.348046,
		0.344672, 0.733078, 0.586343,
		37.525593, 39.536201, 32.406116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.862545, 38.799320, 32.287449>,  <37.284321, 39.023045, 31.995676>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.862545, 38.799320, 32.287449> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.767685, 39.076626, 32.559666>,  <37.710770, 39.243011, 32.722996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.767685, 39.076626, 32.559666>,  <37.862545, 38.799320, 32.287449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.767685, 39.076626, 32.559666> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300921, -0.613653, 0.729984,
		0.923692, 0.377906, -0.063091,
		-0.237149, 0.693266, 0.680546,
		37.696541, 39.284607, 32.763828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.600197, 38.625217, 32.469891>,  <37.862545, 38.799320, 32.287449>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.600197, 38.625217, 32.469891> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.741360, 38.324905, 32.246540>,  <38.826057, 38.144718, 32.112530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.741360, 38.324905, 32.246540>,  <38.600197, 38.625217, 32.469891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.741360, 38.324905, 32.246540> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265773, 0.652626, -0.709538,
		0.897117, 0.102004, 0.429857,
		0.352912, -0.750783, -0.558372,
		38.847233, 38.099670, 32.079029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.331375, 38.777161, 32.336815>,  <38.600197, 38.625217, 32.469891>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.331375, 38.777161, 32.336815> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.219505, 38.536484, 32.037548>,  <39.152386, 38.392078, 31.857988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.219505, 38.536484, 32.037548>,  <39.331375, 38.777161, 32.336815>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.219505, 38.536484, 32.037548> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541545, 0.544602, -0.640421,
		0.792788, -0.584270, 0.173537,
		-0.279670, -0.601696, -0.748162,
		39.135605, 38.355976, 31.813099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.810688, 38.775860, 31.878248>,  <39.331375, 38.777161, 32.336815>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.810688, 38.775860, 31.878248> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516861, 38.625027, 31.652603>,  <39.340565, 38.534527, 31.517216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516861, 38.625027, 31.652603>,  <39.810688, 38.775860, 31.878248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.516861, 38.625027, 31.652603> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326423, 0.532462, -0.780982,
		0.594867, -0.757819, -0.268037,
		-0.734562, -0.377087, -0.564113,
		39.296490, 38.511902, 31.483370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.122639, 38.486443, 31.297209>,  <39.810688, 38.775860, 31.878248>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.122639, 38.486443, 31.297209> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.744492, 38.518162, 31.170719>,  <39.517605, 38.537193, 31.094826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.744492, 38.518162, 31.170719>,  <40.122639, 38.486443, 31.297209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.744492, 38.518162, 31.170719> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320510, 0.403552, -0.856983,
		0.059654, -0.911514, -0.406920,
		-0.945365, 0.079299, -0.316223,
		39.460880, 38.541950, 31.075851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.135380, 38.172649, 30.659122>,  <40.122639, 38.486443, 31.297209>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.135380, 38.172649, 30.659122> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.786846, 38.368809, 30.652245>,  <39.577728, 38.486504, 30.648117>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.786846, 38.368809, 30.652245>,  <40.135380, 38.172649, 30.659122>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.786846, 38.368809, 30.652245> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238500, 0.392621, -0.888238,
		-0.428836, -0.778050, -0.459062,
		-0.871330, 0.490395, -0.017195,
		39.525448, 38.515926, 30.647085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.761730, 37.969524, 29.982224>,  <40.135380, 38.172649, 30.659122>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.761730, 37.969524, 29.982224> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.602016, 38.316490, 30.100992>,  <39.506187, 38.524670, 30.172253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.602016, 38.316490, 30.100992>,  <39.761730, 37.969524, 29.982224>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.602016, 38.316490, 30.100992> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130267, 0.266897, -0.954880,
		-0.907527, -0.419944, 0.006429,
		-0.399280, 0.867417, 0.296922,
		39.482231, 38.576714, 30.190069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.213818, 38.120033, 29.585276>,  <39.761730, 37.969524, 29.982224>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.213818, 38.120033, 29.585276> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.285526, 38.488632, 29.723093>,  <39.328552, 38.709789, 29.805782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.285526, 38.488632, 29.723093>,  <39.213818, 38.120033, 29.585276>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.285526, 38.488632, 29.723093> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059754, 0.359768, -0.931126,
		-0.981984, 0.146334, 0.119558,
		0.179268, 0.921495, 0.344542,
		39.339306, 38.765079, 29.826456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.835922, 38.574726, 29.152822>,  <39.213818, 38.120033, 29.585276>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.835922, 38.574726, 29.152822> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.053131, 38.851906, 29.342533>,  <39.183456, 39.018215, 29.456360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.053131, 38.851906, 29.342533>,  <38.835922, 38.574726, 29.152822>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.053131, 38.851906, 29.342533> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018535, 0.554778, -0.831792,
		-0.839511, 0.460475, 0.288415,
		0.543026, 0.692953, 0.474277,
		39.216038, 39.059792, 29.484816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.477173, 39.248329, 29.125824>,  <38.835922, 38.574726, 29.152822>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.477173, 39.248329, 29.125824> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.865696, 39.337368, 29.159300>,  <39.098812, 39.390793, 29.179386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.865696, 39.337368, 29.159300>,  <38.477173, 39.248329, 29.125824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.865696, 39.337368, 29.159300> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092201, 0.676895, -0.730282,
		-0.219208, 0.701616, 0.677999,
		0.971312, 0.222596, 0.083691,
		39.157089, 39.404148, 29.184408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.524593, 39.931171, 28.939631>,  <38.477173, 39.248329, 29.125824>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.524593, 39.931171, 28.939631> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.906300, 39.812370, 28.925951>,  <39.135323, 39.741089, 28.917744>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.906300, 39.812370, 28.925951>,  <38.524593, 39.931171, 28.939631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.906300, 39.812370, 28.925951> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160720, 0.606084, -0.778994,
		0.252091, 0.737869, 0.626098,
		0.954264, -0.297004, -0.034198,
		39.192577, 39.723270, 28.915691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.949902, 40.571159, 28.984112>,  <38.524593, 39.931171, 28.939631>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.949902, 40.571159, 28.984112> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.190212, 40.293827, 28.824936>,  <39.334400, 40.127426, 28.729431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.190212, 40.293827, 28.824936>,  <38.949902, 40.571159, 28.984112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.190212, 40.293827, 28.824936> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181015, 0.602841, -0.777056,
		0.778652, 0.394805, 0.487678,
		0.600778, -0.693333, -0.397938,
		39.370445, 40.085827, 28.705555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.391727, 40.959602, 28.696791>,  <38.949902, 40.571159, 28.984112>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.391727, 40.959602, 28.696791> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.481224, 40.604786, 28.535248>,  <39.534920, 40.391895, 28.438322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.481224, 40.604786, 28.535248>,  <39.391727, 40.959602, 28.696791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.481224, 40.604786, 28.535248> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225448, 0.450226, -0.863985,
		0.948217, 0.102257, 0.300714,
		0.223738, -0.887040, -0.403858,
		39.548344, 40.338673, 28.414091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.040432, 41.063023, 28.536366>,  <39.391727, 40.959602, 28.696791>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.040432, 41.063023, 28.536366> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.911518, 40.753883, 28.317699>,  <39.834167, 40.568401, 28.186501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.911518, 40.753883, 28.317699>,  <40.040432, 41.063023, 28.536366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.911518, 40.753883, 28.317699> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429382, 0.395308, -0.812011,
		0.843659, -0.496430, 0.204443,
		-0.322289, -0.772845, -0.546664,
		39.814831, 40.522030, 28.153700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.636208, 40.902496, 28.123880>,  <40.040432, 41.063023, 28.536366>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.636208, 40.902496, 28.123880> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.317093, 40.764099, 27.926367>,  <40.125626, 40.681061, 27.807858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.317093, 40.764099, 27.926367>,  <40.636208, 40.902496, 28.123880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.317093, 40.764099, 27.926367> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363235, 0.377867, -0.851632,
		0.481247, -0.858780, -0.175779,
		-0.797786, -0.345996, -0.493786,
		40.077759, 40.660301, 27.778231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<33.238766, 36.834244, 25.019260> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.343525, 37.023167, 25.355911>,  <33.406380, 37.136520, 25.557901>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.343525, 37.023167, 25.355911>,  <33.238766, 36.834244, 25.019260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.343525, 37.023167, 25.355911> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125021, -0.881323, 0.455675,
		0.956962, -0.014121, -0.289868,
		0.261902, 0.472303, 0.841628,
		33.422096, 37.164856, 25.608400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.797668, 36.440430, 25.322575>,  <33.238766, 36.834244, 25.019260>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.797668, 36.440430, 25.322575> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.645813, 36.669182, 25.613457>,  <33.554699, 36.806435, 25.787985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.645813, 36.669182, 25.613457>,  <33.797668, 36.440430, 25.322575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.645813, 36.669182, 25.613457> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273739, -0.681414, 0.678780,
		0.883710, 0.456752, 0.102141,
		-0.379635, 0.571885, 0.727204,
		33.531921, 36.840748, 25.831617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.315144, 36.363010, 25.893057>,  <33.797668, 36.440430, 25.322575>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.315144, 36.363010, 25.893057> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.006947, 36.527149, 26.088177>,  <33.822029, 36.625633, 26.205250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.006947, 36.527149, 26.088177>,  <34.315144, 36.363010, 25.893057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.006947, 36.527149, 26.088177> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092796, -0.684888, 0.722715,
		0.630654, 0.602115, 0.489625,
		-0.770496, 0.410348, 0.487801,
		33.775799, 36.650253, 26.234518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.636833, 36.426750, 26.509714>,  <34.315144, 36.363010, 25.893057>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.636833, 36.426750, 26.509714> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.252129, 36.450897, 26.616577>,  <34.021305, 36.465385, 26.680695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.252129, 36.450897, 26.616577>,  <34.636833, 36.426750, 26.509714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.252129, 36.450897, 26.616577> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216056, -0.432282, 0.875473,
		0.168338, 0.899716, 0.402708,
		-0.961760, 0.060368, 0.267158,
		33.963600, 36.469006, 26.696724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.670040, 36.483570, 27.235922>,  <34.636833, 36.426750, 26.509714>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.670040, 36.483570, 27.235922> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.291397, 36.370392, 27.174107>,  <34.064213, 36.302486, 27.137018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.291397, 36.370392, 27.174107>,  <34.670040, 36.483570, 27.235922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.291397, 36.370392, 27.174107> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019668, -0.427771, 0.903673,
		-0.321793, 0.858462, 0.399365,
		-0.946606, -0.282941, -0.154538,
		34.007416, 36.285511, 27.127745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.231472, 36.870304, 27.692152>,  <34.670040, 36.483570, 27.235922>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.231472, 36.870304, 27.692152> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.051712, 36.524071, 27.603785>,  <33.943855, 36.316330, 27.550764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.051712, 36.524071, 27.603785>,  <34.231472, 36.870304, 27.692152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.051712, 36.524071, 27.603785> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005639, -0.250041, 0.968219,
		-0.893311, 0.433875, 0.117250,
		-0.449403, -0.865582, -0.220918,
		33.916893, 36.264397, 27.537510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.791855, 36.742626, 28.250650>,  <34.231472, 36.870304, 27.692152>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.791855, 36.742626, 28.250650> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.831123, 36.398006, 28.051414>,  <33.854687, 36.191235, 27.931873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.831123, 36.398006, 28.051414>,  <33.791855, 36.742626, 28.250650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.831123, 36.398006, 28.051414> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024522, -0.498263, 0.866679,
		-0.994867, -0.097300, -0.027791,
		0.098175, -0.861549, -0.498091,
		33.860577, 36.139542, 27.901987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.221012, 36.309456, 28.509697>,  <33.791855, 36.742626, 28.250650>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.221012, 36.309456, 28.509697> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.511265, 36.073280, 28.368368>,  <33.685417, 35.931576, 28.283571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.511265, 36.073280, 28.368368>,  <33.221012, 36.309456, 28.509697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.511265, 36.073280, 28.368368> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006969, -0.519767, 0.854280,
		-0.688045, -0.617433, -0.381275,
		0.725634, -0.590440, -0.353320,
		33.728954, 35.896149, 28.262373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.967869, 35.581501, 28.615940>,  <33.221012, 36.309456, 28.509697>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.967869, 35.581501, 28.615940> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.366280, 35.573036, 28.581350>,  <33.605328, 35.567959, 28.560596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.366280, 35.573036, 28.581350>,  <32.967869, 35.581501, 28.615940>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.366280, 35.573036, 28.581350> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072243, -0.375505, 0.924000,
		-0.052024, -0.926579, -0.372486,
		0.996030, -0.021160, -0.086474,
		33.665089, 35.566689, 28.555408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.169922, 35.027225, 28.942442>,  <32.967869, 35.581501, 28.615940>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.169922, 35.027225, 28.942442> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.537827, 35.183521, 28.927719>,  <33.758572, 35.277298, 28.918884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.537827, 35.183521, 28.927719>,  <33.169922, 35.027225, 28.942442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.537827, 35.183521, 28.927719> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208513, -0.407041, 0.889292,
		0.332503, -0.825613, -0.455857,
		0.919763, 0.390744, -0.036809,
		33.813755, 35.300743, 28.916676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.617893, 34.546329, 29.208055>,  <33.169922, 35.027225, 28.942442>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.617893, 34.546329, 29.208055> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.838650, 34.877750, 29.245811>,  <33.971104, 35.076603, 29.268465>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.838650, 34.877750, 29.245811>,  <33.617893, 34.546329, 29.208055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.838650, 34.877750, 29.245811> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225071, -0.256985, 0.939842,
		0.802967, -0.497448, -0.328312,
		0.551894, 0.828556, 0.094389,
		34.004219, 35.126316, 29.274128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.161793, 34.266186, 29.649035>,  <33.617893, 34.546329, 29.208055>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.161793, 34.266186, 29.649035> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.206455, 34.662830, 29.675104>,  <34.233253, 34.900818, 29.690746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.206455, 34.662830, 29.675104>,  <34.161793, 34.266186, 29.649035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.206455, 34.662830, 29.675104> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420133, -0.106538, 0.901187,
		0.900568, -0.073237, -0.428502,
		0.111652, 0.991608, 0.065175,
		34.239952, 34.960312, 29.694656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.855263, 34.402290, 29.806372>,  <34.161793, 34.266186, 29.649035>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.855263, 34.402290, 29.806372> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.623611, 34.702835, 29.932899>,  <34.484619, 34.883163, 30.008816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.623611, 34.702835, 29.932899>,  <34.855263, 34.402290, 29.806372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.623611, 34.702835, 29.932899> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368418, -0.104915, 0.923721,
		0.727239, 0.651493, -0.216057,
		-0.579130, 0.751365, 0.316320,
		34.449871, 34.928246, 30.027796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.232525, 34.873219, 30.247883>,  <34.855263, 34.402290, 29.806372>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.232525, 34.873219, 30.247883> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.864441, 34.964741, 30.374920>,  <34.643593, 35.019653, 30.451141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.864441, 34.964741, 30.374920>,  <35.232525, 34.873219, 30.247883>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.864441, 34.964741, 30.374920> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303776, -0.094234, 0.948072,
		0.246855, 0.968900, 0.017208,
		-0.920208, 0.228809, 0.317591,
		34.588379, 35.033382, 30.470198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.005234, 35.095379, 30.449327>,  <35.232525, 34.873219, 30.247883>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.005234, 35.095379, 30.449327> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.172604, 34.753819, 30.325544>,  <36.273026, 34.548882, 30.251274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.172604, 34.753819, 30.325544>,  <36.005234, 35.095379, 30.449327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.172604, 34.753819, 30.325544> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171262, 0.408784, -0.896418,
		0.891957, 0.322088, 0.317288,
		0.418428, -0.853905, -0.309457,
		36.298130, 34.497646, 30.232708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640171, 35.295536, 30.250324>,  <36.005234, 35.095379, 30.449327>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640171, 35.295536, 30.250324> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.568516, 34.945423, 30.070642>,  <36.525524, 34.735355, 29.962833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.568516, 34.945423, 30.070642>,  <36.640171, 35.295536, 30.250324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.568516, 34.945423, 30.070642> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208181, 0.412526, -0.886839,
		0.961546, -0.252382, 0.108319,
		-0.179138, -0.875286, -0.449203,
		36.514774, 34.682838, 29.935881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.216908, 35.118832, 29.890488>,  <36.640171, 35.295536, 30.250324>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.216908, 35.118832, 29.890488> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.928238, 34.900417, 29.720299>,  <36.755035, 34.769367, 29.618185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.928238, 34.900417, 29.720299>,  <37.216908, 35.118832, 29.890488>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.928238, 34.900417, 29.720299> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326124, 0.273962, -0.904759,
		0.610596, -0.791699, -0.019636,
		-0.721676, -0.546038, -0.425472,
		36.711735, 34.736607, 29.592657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.474133, 34.949368, 29.183475>,  <37.216908, 35.118832, 29.890488>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.474133, 34.949368, 29.183475> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.079601, 34.890617, 29.153572>,  <36.842884, 34.855366, 29.135630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.079601, 34.890617, 29.153572>,  <37.474133, 34.949368, 29.183475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.079601, 34.890617, 29.153572> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016891, 0.541317, -0.840649,
		0.163939, -0.827891, -0.536396,
		-0.986326, -0.146876, -0.074760,
		36.783703, 34.846554, 29.131144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.431210, 34.689053, 28.486906>,  <37.474133, 34.949368, 29.183475>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.431210, 34.689053, 28.486906> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.067719, 34.798725, 28.612789>,  <36.849625, 34.864529, 28.688318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.067719, 34.798725, 28.612789>,  <37.431210, 34.689053, 28.486906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.067719, 34.798725, 28.612789> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144933, 0.499791, -0.853934,
		-0.391421, -0.821604, -0.414435,
		-0.908726, 0.274182, 0.314706,
		36.795101, 34.880981, 28.707201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.033524, 34.627045, 27.911695>,  <37.431210, 34.689053, 28.486906>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.033524, 34.627045, 27.911695> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.815594, 34.854233, 28.158459>,  <36.684837, 34.990547, 28.306517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.815594, 34.854233, 28.158459>,  <37.033524, 34.627045, 27.911695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.815594, 34.854233, 28.158459> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309311, 0.547687, -0.777409,
		-0.779419, -0.614367, -0.122713,
		-0.544824, 0.567971, 0.616909,
		36.652145, 35.024624, 28.343531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.381653, 34.747482, 27.591452>,  <37.033524, 34.627045, 27.911695>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.381653, 34.747482, 27.591452> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.434254, 35.044304, 27.854380>,  <36.465813, 35.222397, 28.012136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.434254, 35.044304, 27.854380>,  <36.381653, 34.747482, 27.591452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.434254, 35.044304, 27.854380> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354801, 0.654384, -0.667756,
		-0.925648, -0.145408, 0.349331,
		0.131500, 0.742050, 0.657321,
		36.473705, 35.266918, 28.051577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.871735, 35.194752, 27.355715>,  <36.381653, 34.747482, 27.591452>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.871735, 35.194752, 27.355715> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.089165, 35.445099, 27.579433>,  <36.219624, 35.595306, 27.713665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.089165, 35.445099, 27.579433>,  <35.871735, 35.194752, 27.355715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.089165, 35.445099, 27.579433> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221065, 0.749560, -0.623931,
		-0.809729, 0.215510, 0.545798,
		0.543572, 0.625872, 0.559299,
		36.252235, 35.632862, 27.747223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.400177, 35.697773, 27.590427>,  <35.871735, 35.194752, 27.355715>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.400177, 35.697773, 27.590427> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.774296, 35.839157, 27.583815>,  <35.998768, 35.923988, 27.579847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.774296, 35.839157, 27.583815>,  <35.400177, 35.697773, 27.590427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.774296, 35.839157, 27.583815> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280002, 0.710732, -0.645337,
		-0.216356, 0.608213, 0.763719,
		0.935302, 0.353465, -0.016530,
		36.054886, 35.945198, 27.578856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.336266, 36.409050, 27.597986>,  <35.400177, 35.697773, 27.590427>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.336266, 36.409050, 27.597986> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.719894, 36.382912, 27.487783>,  <35.950073, 36.367229, 27.421661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.719894, 36.382912, 27.487783>,  <35.336266, 36.409050, 27.597986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.719894, 36.382912, 27.487783> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101406, 0.829193, -0.549688,
		0.264369, 0.555130, 0.788632,
		0.959076, -0.065348, -0.275506,
		36.007618, 36.363308, 27.405132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.662903, 37.085945, 27.559608>,  <35.336266, 36.409050, 27.597986>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.662903, 37.085945, 27.559608> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.910168, 36.872311, 27.328913>,  <36.058525, 36.744129, 27.190495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.910168, 36.872311, 27.328913>,  <35.662903, 37.085945, 27.559608>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.910168, 36.872311, 27.328913> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002143, 0.732573, -0.680686,
		0.786047, 0.422011, 0.451704,
		0.618163, -0.534083, -0.576741,
		36.095615, 36.712086, 27.155890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327488, 37.502811, 27.362541>,  <35.662903, 37.085945, 27.559608>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.327488, 37.502811, 27.362541> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.286224, 37.212864, 27.090096>,  <36.261467, 37.038895, 26.926628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.286224, 37.212864, 27.090096>,  <36.327488, 37.502811, 27.362541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.286224, 37.212864, 27.090096> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135126, 0.668207, -0.731601,
		0.985444, -0.167505, 0.029020,
		-0.103155, -0.724873, -0.681115,
		36.255280, 36.995403, 26.885761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.829292, 37.605453, 26.923956>,  <36.327488, 37.502811, 27.362541>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.829292, 37.605453, 26.923956> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.541363, 37.407295, 26.729456>,  <36.368607, 37.288399, 26.612757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.541363, 37.407295, 26.729456>,  <36.829292, 37.605453, 26.923956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.541363, 37.407295, 26.729456> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008554, 0.694106, -0.719823,
		0.694106, -0.522304, -0.495395,
		0.719823, 0.495395, 0.486250,
		36.325417, 37.258678, 26.583580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.210285, 37.399178, 26.386995>,  <36.829292, 37.605453, 26.923956>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.210285, 37.399178, 26.386995> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.817329, 37.385475, 26.313515>,  <36.581558, 37.377254, 26.269426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.817329, 37.385475, 26.313515>,  <37.210285, 37.399178, 26.386995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.817329, 37.385475, 26.313515> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121207, 0.631395, -0.765930,
		0.142224, -0.774704, -0.616121,
		-0.982385, -0.034255, -0.183699,
		36.522614, 37.375198, 26.258406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.769661, 37.214375, 25.874157>,  <37.210285, 37.399178, 26.386995>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.769661, 37.214375, 25.874157> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.141212, 37.354527, 25.826111>,  <38.364143, 37.438618, 25.797283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.141212, 37.354527, 25.826111>,  <37.769661, 37.214375, 25.874157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.141212, 37.354527, 25.826111> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302848, -0.531734, 0.790913,
		0.213247, -0.771036, -0.600025,
		0.928875, 0.350376, -0.120115,
		38.419876, 37.459641, 25.790075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.124966, 36.647736, 26.027607>,  <37.769661, 37.214375, 25.874157>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.124966, 36.647736, 26.027607> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.396397, 36.938286, 26.071276>,  <38.559254, 37.112617, 26.097477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.396397, 36.938286, 26.071276>,  <38.124966, 36.647736, 26.027607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.396397, 36.938286, 26.071276> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446146, -0.525649, 0.724325,
		0.583518, -0.442800, -0.680760,
		0.678573, 0.726375, 0.109172,
		38.599968, 37.156197, 26.104027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.695236, 36.272717, 26.076342>,  <38.124966, 36.647736, 26.027607>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.695236, 36.272717, 26.076342> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.806461, 36.630287, 26.216953>,  <38.873196, 36.844830, 26.301321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.806461, 36.630287, 26.216953>,  <38.695236, 36.272717, 26.076342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.806461, 36.630287, 26.216953> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505754, -0.447377, 0.737609,
		0.816635, -0.027315, -0.576508,
		0.278064, 0.893928, 0.351529,
		38.889881, 36.898464, 26.322412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.496140, 36.352425, 26.078329>,  <38.695236, 36.272717, 26.076342>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.496140, 36.352425, 26.078329> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.330826, 36.590462, 26.354031>,  <39.231640, 36.733284, 26.519451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.330826, 36.590462, 26.354031>,  <39.496140, 36.352425, 26.078329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.330826, 36.590462, 26.354031> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518157, -0.468744, 0.715397,
		0.748808, 0.652799, -0.114628,
		-0.413280, 0.595090, 0.689252,
		39.206841, 36.768990, 26.560806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.074150, 36.670147, 26.544340>,  <39.496140, 36.352425, 26.078329>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.074150, 36.670147, 26.544340> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.722866, 36.698433, 26.733545>,  <39.512096, 36.715405, 26.847069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.722866, 36.698433, 26.733545>,  <40.074150, 36.670147, 26.544340>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.722866, 36.698433, 26.733545> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433157, -0.301699, 0.849325,
		0.202771, 0.950777, 0.234324,
		-0.878214, 0.070720, 0.473011,
		39.459400, 36.719650, 26.875448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.161083, 37.035973, 27.193628>,  <40.074150, 36.670147, 26.544340>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.161083, 37.035973, 27.193628> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.820320, 36.830616, 27.234982>,  <39.615864, 36.707401, 27.259794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.820320, 36.830616, 27.234982>,  <40.161083, 37.035973, 27.193628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.820320, 36.830616, 27.234982> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342261, -0.396381, 0.851903,
		-0.396381, 0.761124, 0.513393,
		-0.851903, -0.513393, 0.103385,
		39.564751, 36.676598, 27.265997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.003025, 37.085445, 27.901228>,  <40.161083, 37.035973, 27.193628>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.003025, 37.085445, 27.901228> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.782341, 36.775223, 27.778505>,  <39.649929, 36.589088, 27.704872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.782341, 36.775223, 27.778505>,  <40.003025, 37.085445, 27.901228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.782341, 36.775223, 27.778505> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154143, -0.456339, 0.876353,
		-0.819666, 0.436203, 0.371315,
		-0.551713, -0.775552, -0.306808,
		39.616829, 36.542557, 27.686462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.657837, 36.871731, 28.492355>,  <40.003025, 37.085445, 27.901228>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.657837, 36.871731, 28.492355> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.594013, 36.556511, 28.254528>,  <39.555717, 36.367378, 28.111832>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.594013, 36.556511, 28.254528>,  <39.657837, 36.871731, 28.492355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.594013, 36.556511, 28.254528> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085166, -0.611030, 0.787012,
		-0.983507, 0.074940, 0.164612,
		-0.159561, -0.788052, -0.594571,
		39.546146, 36.320095, 28.076157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.969509, 36.580780, 28.686575>,  <39.657837, 36.871731, 28.492355>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.969509, 36.580780, 28.686575> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.211147, 36.324303, 28.497286>,  <39.356129, 36.170418, 28.383713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.211147, 36.324303, 28.497286>,  <38.969509, 36.580780, 28.686575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.211147, 36.324303, 28.497286> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065553, -0.631792, 0.772362,
		-0.794211, -0.435560, -0.423695,
		0.604096, -0.641192, -0.473223,
		39.392376, 36.131947, 28.355318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.822651, 35.843975, 28.907654>,  <38.969509, 36.580780, 28.686575>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.822651, 35.843975, 28.907654> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.178429, 35.797855, 28.730749>,  <39.391895, 35.770184, 28.624607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.178429, 35.797855, 28.730749>,  <38.822651, 35.843975, 28.907654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.178429, 35.797855, 28.730749> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191983, -0.783889, 0.590475,
		-0.414767, -0.610101, -0.675089,
		0.889444, -0.115304, -0.442260,
		39.445263, 35.763264, 28.598070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890068, 35.163776, 28.847363>,  <38.822651, 35.843975, 28.907654>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.890068, 35.163776, 28.847363> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.265057, 35.301937, 28.830193>,  <39.490051, 35.384834, 28.819891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.265057, 35.301937, 28.830193>,  <38.890068, 35.163776, 28.847363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.265057, 35.301937, 28.830193> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302340, -0.747002, 0.592097,
		0.172450, -0.568052, -0.804723,
		0.937471, 0.345407, -0.042924,
		39.546299, 35.405560, 28.817316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.292362, 34.586231, 28.737720>,  <38.890068, 35.163776, 28.847363>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.292362, 34.586231, 28.737720> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.541027, 34.844738, 28.914751>,  <39.690228, 34.999840, 29.020969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.541027, 34.844738, 28.914751>,  <39.292362, 34.586231, 28.737720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.541027, 34.844738, 28.914751> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056618, -0.600626, 0.797523,
		0.781234, -0.470734, -0.409978,
		0.621665, 0.646264, 0.442578,
		39.727528, 35.038616, 29.047523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.653091, 34.253490, 29.194557>,  <39.292362, 34.586231, 28.737720>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.653091, 34.253490, 29.194557> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.775501, 34.606094, 29.338388>,  <39.848946, 34.817657, 29.424686>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.775501, 34.606094, 29.338388>,  <39.653091, 34.253490, 29.194557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.775501, 34.606094, 29.338388> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093894, -0.403803, 0.910015,
		0.947382, -0.244726, -0.206342,
		0.306026, 0.881506, 0.359578,
		39.867310, 34.870544, 29.446262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.159100, 34.060093, 29.640339>,  <39.653091, 34.253490, 29.194557>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.159100, 34.060093, 29.640339> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.034702, 34.421150, 29.759352>,  <39.960064, 34.637783, 29.830759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.034702, 34.421150, 29.759352>,  <40.159100, 34.060093, 29.640339>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.034702, 34.421150, 29.759352> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077766, -0.287837, 0.954517,
		0.947226, 0.319986, 0.019321,
		-0.310993, 0.902640, 0.297530,
		39.941406, 34.691944, 29.848610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<40.809731, 40.504639, 27.476559> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.424324, 40.579060, 27.399590>,  <40.193081, 40.623714, 27.353409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.424324, 40.579060, 27.399590>,  <40.809731, 40.504639, 27.476559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.424324, 40.579060, 27.399590> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256887, 0.440859, -0.860030,
		-0.075182, -0.878081, -0.472569,
		-0.963513, 0.186056, -0.192423,
		40.135269, 40.634876, 27.341862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.702091, 40.275948, 26.799576>,  <40.809731, 40.504639, 27.476559>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.702091, 40.275948, 26.799576> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.404743, 40.531155, 26.879908>,  <40.226334, 40.684277, 26.928106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.404743, 40.531155, 26.879908>,  <40.702091, 40.275948, 26.799576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.404743, 40.531155, 26.879908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039247, 0.258129, -0.965313,
		-0.667723, -0.725471, -0.166847,
		-0.743374, 0.638013, 0.200831,
		40.181732, 40.722557, 26.940157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.223000, 40.226944, 26.245134>,  <40.702091, 40.275948, 26.799576>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.223000, 40.226944, 26.245134> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.106686, 40.562592, 26.429018>,  <40.036900, 40.763981, 26.539349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.106686, 40.562592, 26.429018>,  <40.223000, 40.226944, 26.245134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.106686, 40.562592, 26.429018> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209577, 0.412943, -0.886316,
		-0.933555, -0.354068, 0.055783,
		-0.290781, 0.839115, 0.459710,
		40.019451, 40.814327, 26.566931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.490799, 40.393703, 26.091089>,  <40.223000, 40.226944, 26.245134>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.490799, 40.393703, 26.091089> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.661415, 40.743504, 26.183447>,  <39.763786, 40.953384, 26.238861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.661415, 40.743504, 26.183447>,  <39.490799, 40.393703, 26.091089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.661415, 40.743504, 26.183447> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318645, 0.384208, -0.866516,
		-0.846478, 0.296035, 0.442537,
		0.426545, 0.874499, 0.230893,
		39.789379, 41.005852, 26.252714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.972603, 40.919624, 25.931044>,  <39.490799, 40.393703, 26.091089>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.972603, 40.919624, 25.931044> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.320988, 41.115444, 25.947857>,  <39.530018, 41.232937, 25.957945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.320988, 41.115444, 25.947857>,  <38.972603, 40.919624, 25.931044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.320988, 41.115444, 25.947857> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286956, 0.576237, -0.765250,
		-0.398847, 0.654443, 0.642360,
		0.870964, 0.489546, 0.042034,
		39.582275, 41.262306, 25.960466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.812729, 41.675747, 26.018593>,  <38.972603, 40.919624, 25.931044>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.812729, 41.675747, 26.018593> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.176731, 41.641659, 25.856298>,  <39.395134, 41.621208, 25.758921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.176731, 41.641659, 25.856298>,  <38.812729, 41.675747, 26.018593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.176731, 41.641659, 25.856298> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251163, 0.665307, -0.703053,
		0.329851, 0.741691, 0.584032,
		0.910009, -0.085216, -0.405737,
		39.449734, 41.616093, 25.734577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.962761, 42.316448, 25.920826>,  <38.812729, 41.675747, 26.018593>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.962761, 42.316448, 25.920826> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.208279, 42.112728, 25.679541>,  <39.355591, 41.990494, 25.534769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.208279, 42.112728, 25.679541>,  <38.962761, 42.316448, 25.920826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.208279, 42.112728, 25.679541> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176643, 0.656106, -0.733705,
		0.769448, 0.556899, 0.312751,
		0.613797, -0.509302, -0.603212,
		39.392418, 41.959938, 25.498577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.294548, 42.831589, 25.565243>,  <38.962761, 42.316448, 25.920826>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.294548, 42.831589, 25.565243> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.351082, 42.509628, 25.334709>,  <39.385002, 42.316452, 25.196388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.351082, 42.509628, 25.334709>,  <39.294548, 42.831589, 25.565243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.351082, 42.509628, 25.334709> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016740, 0.580153, -0.814336,
		0.989820, 0.124745, 0.068524,
		0.141339, -0.804898, -0.576335,
		39.393482, 42.268158, 25.161808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.622929, 43.115818, 24.947329>,  <39.294548, 42.831589, 25.565243>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.622929, 43.115818, 24.947329> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.479767, 42.757420, 24.842186>,  <39.393871, 42.542381, 24.779100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.479767, 42.757420, 24.842186>,  <39.622929, 43.115818, 24.947329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.479767, 42.757420, 24.842186> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117724, 0.322555, -0.939201,
		0.926307, -0.305201, -0.220925,
		-0.357906, -0.895997, -0.262856,
		39.372395, 42.488621, 24.763329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.968708, 42.875637, 24.377565>,  <39.622929, 43.115818, 24.947329>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.968708, 42.875637, 24.377565> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.622906, 42.674767, 24.369019>,  <39.415424, 42.554245, 24.363890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.622906, 42.674767, 24.369019>,  <39.968708, 42.875637, 24.377565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.622906, 42.674767, 24.369019> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106817, 0.225098, -0.968463,
		0.491148, -0.834955, -0.248239,
		-0.864502, -0.502175, -0.021370,
		39.363556, 42.524113, 24.362608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.927990, 42.534088, 23.771309>,  <39.968708, 42.875637, 24.377565>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.927990, 42.534088, 23.771309> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.541740, 42.545124, 23.874701>,  <39.309990, 42.551746, 23.936735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.541740, 42.545124, 23.874701>,  <39.927990, 42.534088, 23.771309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.541740, 42.545124, 23.874701> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251024, 0.159340, -0.954776,
		-0.067527, -0.986838, -0.146937,
		-0.965622, 0.027588, 0.258479,
		39.252052, 42.553402, 23.952244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.499725, 42.213558, 23.195183>,  <39.927990, 42.534088, 23.771309>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.499725, 42.213558, 23.195183> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.252228, 42.440281, 23.412766>,  <39.103729, 42.576313, 23.543316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.252228, 42.440281, 23.412766>,  <39.499725, 42.213558, 23.195183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.252228, 42.440281, 23.412766> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438346, 0.325507, -0.837793,
		-0.651926, -0.756821, 0.047051,
		-0.618744, 0.566804, 0.543957,
		39.066605, 42.610321, 23.575953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.741863, 42.103535, 23.125090>,  <39.499725, 42.213558, 23.195183>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.741863, 42.103535, 23.125090> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.799118, 42.490097, 23.210474>,  <38.833473, 42.722034, 23.261705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.799118, 42.490097, 23.210474>,  <38.741863, 42.103535, 23.125090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.799118, 42.490097, 23.210474> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621281, 0.255631, -0.740718,
		-0.770403, -0.026592, 0.637002,
		0.143140, 0.966408, 0.213460,
		38.842060, 42.780018, 23.274511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940937, 42.164650, 22.371908>,  <38.741863, 42.103535, 23.125090>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.940937, 42.164650, 22.371908> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.032578, 42.532341, 22.499989>,  <39.087563, 42.752956, 22.576838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.032578, 42.532341, 22.499989>,  <38.940937, 42.164650, 22.371908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.032578, 42.532341, 22.499989> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287993, 0.378233, -0.879773,
		-0.929825, 0.109338, 0.351384,
		0.229098, 0.919231, 0.320201,
		39.101307, 42.808109, 22.596048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.446632, 41.875740, 21.909754>,  <38.940937, 42.164650, 22.371908>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.446632, 41.875740, 21.909754> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.204487, 41.629124, 21.708395>,  <38.059200, 41.481152, 21.587580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.204487, 41.629124, 21.708395>,  <38.446632, 41.875740, 21.909754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.204487, 41.629124, 21.708395> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262057, -0.751572, 0.605363,
		-0.751572, 0.234546, 0.616544,
		-0.605363, -0.616544, -0.503397,
		38.022877, 41.444160, 21.557377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.928757, 41.618019, 22.410767>,  <38.446632, 41.875740, 21.909754>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.928757, 41.618019, 22.410767> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.938492, 41.351189, 22.112928>,  <37.944332, 41.191090, 21.934225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.938492, 41.351189, 22.112928>,  <37.928757, 41.618019, 22.410767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.938492, 41.351189, 22.112928> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062605, -0.742336, 0.667097,
		-0.997742, -0.062848, 0.023699,
		0.024333, -0.667074, -0.744594,
		37.945793, 41.151066, 21.889549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.280701, 41.138893, 22.381565>,  <37.928757, 41.618019, 22.410767>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.280701, 41.138893, 22.381565> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.589302, 40.945560, 22.216068>,  <37.774464, 40.829563, 22.116770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.589302, 40.945560, 22.216068>,  <37.280701, 41.138893, 22.381565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.589302, 40.945560, 22.216068> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074217, -0.714231, 0.695964,
		-0.631884, -0.506231, -0.586901,
		0.771501, -0.483326, -0.413740,
		37.820751, 40.800564, 22.091946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.106712, 40.370613, 22.349865>,  <37.280701, 41.138893, 22.381565>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.106712, 40.370613, 22.349865> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.503544, 40.371330, 22.299637>,  <37.741642, 40.371761, 22.269499>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.503544, 40.371330, 22.299637>,  <37.106712, 40.370613, 22.349865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.503544, 40.371330, 22.299637> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080183, -0.778589, 0.622391,
		-0.096655, -0.627532, -0.772568,
		0.992082, 0.001789, -0.125572,
		37.801170, 40.371868, 22.261965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.207897, 39.697308, 22.288626>,  <37.106712, 40.370613, 22.349865>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.207897, 39.697308, 22.288626> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.551388, 39.869125, 22.400400>,  <37.757481, 39.972218, 22.467464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.551388, 39.869125, 22.400400>,  <37.207897, 39.697308, 22.288626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.551388, 39.869125, 22.400400> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098803, -0.673856, 0.732227,
		0.502826, -0.601171, -0.621096,
		0.858722, 0.429549, 0.279434,
		37.809006, 39.997990, 22.484230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.840885, 39.184635, 22.225193>,  <37.207897, 39.697308, 22.288626>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.840885, 39.184635, 22.225193> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.947685, 39.465683, 22.489023>,  <38.011765, 39.634312, 22.647322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.947685, 39.465683, 22.489023>,  <37.840885, 39.184635, 22.225193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.947685, 39.465683, 22.489023> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226352, -0.710998, 0.665768,
		0.936738, -0.028462, -0.348873,
		0.266997, 0.702618, 0.659576,
		38.027786, 39.676468, 22.686895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.467594, 38.902073, 22.518085>,  <37.840885, 39.184635, 22.225193>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.467594, 38.902073, 22.518085> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.368595, 39.186604, 22.781223>,  <38.309196, 39.357323, 22.939106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.368595, 39.186604, 22.781223>,  <38.467594, 38.902073, 22.518085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.368595, 39.186604, 22.781223> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328484, -0.577155, 0.747657,
		0.911506, 0.401136, -0.090814,
		-0.247498, 0.711325, 0.657846,
		38.294346, 39.400002, 22.978577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.060543, 38.949516, 22.893410>,  <38.467594, 38.902073, 22.518085>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.060543, 38.949516, 22.893410> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.776047, 39.098564, 23.131836>,  <38.605350, 39.187992, 23.274893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.776047, 39.098564, 23.131836>,  <39.060543, 38.949516, 22.893410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.776047, 39.098564, 23.131836> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287027, -0.620103, 0.730128,
		0.641682, 0.690383, 0.334090,
		-0.711238, 0.372617, 0.596067,
		38.562675, 39.210350, 23.310656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.325294, 38.889603, 23.618988>,  <39.060543, 38.949516, 22.893410>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.325294, 38.889603, 23.618988> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.936306, 38.941078, 23.696688>,  <38.702911, 38.971962, 23.743307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.936306, 38.941078, 23.696688>,  <39.325294, 38.889603, 23.618988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.936306, 38.941078, 23.696688> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118484, -0.444736, 0.887790,
		0.200636, 0.886369, 0.417247,
		-0.972474, 0.128686, 0.194251,
		38.644562, 38.979683, 23.754963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.377720, 39.091949, 24.315935>,  <39.325294, 38.889603, 23.618988>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.377720, 39.091949, 24.315935> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.007652, 38.954880, 24.250650>,  <38.785610, 38.872639, 24.211479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.007652, 38.954880, 24.250650>,  <39.377720, 39.091949, 24.315935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.007652, 38.954880, 24.250650> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014174, -0.398516, 0.917052,
		-0.379291, 0.850741, 0.363837,
		-0.925169, -0.342673, -0.163212,
		38.730103, 38.852077, 24.201687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.004383, 39.233620, 24.977388>,  <39.377720, 39.091949, 24.315935>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.004383, 39.233620, 24.977388> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.832905, 38.934647, 24.774387>,  <38.730019, 38.755260, 24.652586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.832905, 38.934647, 24.774387>,  <39.004383, 39.233620, 24.977388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.832905, 38.934647, 24.774387> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063577, -0.535388, 0.842210,
		-0.901209, 0.393317, 0.181998,
		-0.428696, -0.747436, -0.507502,
		38.704296, 38.710415, 24.622137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.511673, 39.036293, 25.396111>,  <39.004383, 39.233620, 24.977388>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.511673, 39.036293, 25.396111> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.560505, 38.730190, 25.143291>,  <38.589806, 38.546528, 24.991600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.560505, 38.730190, 25.143291>,  <38.511673, 39.036293, 25.396111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.560505, 38.730190, 25.143291> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180966, -0.643299, 0.743921,
		-0.975883, 0.023558, -0.217021,
		0.122084, -0.765252, -0.632048,
		38.597130, 38.500614, 24.953676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.035965, 38.590977, 25.588535>,  <38.511673, 39.036293, 25.396111>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.035965, 38.590977, 25.588535> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.290287, 38.350235, 25.395237>,  <38.442879, 38.205788, 25.279259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.290287, 38.350235, 25.395237>,  <38.035965, 38.590977, 25.588535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.290287, 38.350235, 25.395237> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117882, -0.694455, 0.709814,
		-0.762799, -0.394334, -0.512483,
		0.635800, -0.601858, -0.483245,
		38.481026, 38.169678, 25.250263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.680698, 37.957886, 25.497612>,  <38.035965, 38.590977, 25.588535>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.680698, 37.957886, 25.497612> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.076843, 37.902718, 25.492395>,  <38.314529, 37.869617, 25.489265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.076843, 37.902718, 25.492395>,  <37.680698, 37.957886, 25.497612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.076843, 37.902718, 25.492395> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094793, -0.743291, 0.662217,
		-0.101026, -0.654596, -0.749198,
		0.990357, -0.137919, -0.013041,
		38.373951, 37.861343, 25.488483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.154018, 37.397785, 25.556316>,  <37.680698, 37.957886, 25.497612>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.154018, 37.397785, 25.556316> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.771046, 37.451385, 25.658581>,  <36.541260, 37.483543, 25.719940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.771046, 37.451385, 25.658581>,  <37.154018, 37.397785, 25.556316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.771046, 37.451385, 25.658581> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166306, 0.467852, -0.868019,
		-0.235924, -0.873590, -0.425654,
		-0.957435, 0.133997, 0.255661,
		36.483814, 37.491585, 25.735279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.704338, 37.113365, 25.005102>,  <37.154018, 37.397785, 25.556316>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.704338, 37.113365, 25.005102> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.481308, 37.379688, 25.203419>,  <36.347492, 37.539482, 25.322409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.481308, 37.379688, 25.203419>,  <36.704338, 37.113365, 25.005102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.481308, 37.379688, 25.203419> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186453, 0.481542, -0.856360,
		-0.808918, -0.569925, -0.144353,
		-0.557573, 0.665810, 0.495792,
		36.314037, 37.579430, 25.352156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.307384, 37.260185, 24.516119>,  <36.704338, 37.113365, 25.005102>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.307384, 37.260185, 24.516119> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.202293, 37.531933, 24.790180>,  <36.139240, 37.694981, 24.954617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.202293, 37.531933, 24.790180>,  <36.307384, 37.260185, 24.516119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.202293, 37.531933, 24.790180> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305818, 0.614854, -0.726932,
		-0.915122, -0.400517, 0.046223,
		-0.262729, 0.679368, 0.685152,
		36.123474, 37.735744, 24.995726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.557384, 37.375706, 24.548443>,  <36.307384, 37.260185, 24.516119>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.557384, 37.375706, 24.548443> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.742012, 37.712532, 24.660078>,  <35.852787, 37.914627, 24.727060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.742012, 37.712532, 24.660078>,  <35.557384, 37.375706, 24.548443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742012, 37.712532, 24.660078> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366763, 0.467598, -0.804262,
		-0.807740, 0.268859, 0.524663,
		0.461564, 0.842062, 0.279090,
		35.880482, 37.965149, 24.743805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.128788, 37.856979, 24.542610>,  <35.557384, 37.375706, 24.548443>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.128788, 37.856979, 24.542610> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.476166, 38.053619, 24.516876>,  <35.684593, 38.171604, 24.501436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.476166, 38.053619, 24.516876>,  <35.128788, 37.856979, 24.542610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.476166, 38.053619, 24.516876> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338770, 0.493631, -0.800977,
		-0.362004, 0.717396, 0.595228,
		0.868441, 0.491602, -0.064336,
		35.736698, 38.201099, 24.497576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.869923, 38.495567, 24.374043>,  <35.128788, 37.856979, 24.542610>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.869923, 38.495567, 24.374043> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.264790, 38.522499, 24.316130>,  <35.501709, 38.538658, 24.281382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.264790, 38.522499, 24.316130>,  <34.869923, 38.495567, 24.374043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.264790, 38.522499, 24.316130> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151649, 0.679116, -0.718195,
		0.049971, 0.730937, 0.680613,
		0.987170, 0.067325, -0.144782,
		35.560940, 38.542698, 24.272696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.967537, 39.265606, 24.331057>,  <34.869923, 38.495567, 24.374043>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.967537, 39.265606, 24.331057> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.263371, 39.064583, 24.151970>,  <35.440872, 38.943970, 24.044518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.263371, 39.064583, 24.151970>,  <34.967537, 39.265606, 24.331057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.263371, 39.064583, 24.151970> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085663, 0.589497, -0.803215,
		0.667591, 0.632397, 0.392931,
		0.739583, -0.502560, -0.447716,
		35.485245, 38.913815, 24.017654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.079250, 39.807144, 24.840855>,  <34.967537, 39.265606, 24.331057>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.079250, 39.807144, 24.840855> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.681862, 39.852749, 24.839777>,  <34.443428, 39.880112, 24.839130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.681862, 39.852749, 24.839777>,  <35.079250, 39.807144, 24.840855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.681862, 39.852749, 24.839777> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086348, -0.736550, 0.670849,
		0.074505, 0.666704, 0.741590,
		-0.993475, 0.114016, -0.002692,
		34.383820, 39.886955, 24.838970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.899269, 39.500164, 25.475857>,  <35.079250, 39.807144, 24.840855>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.899269, 39.500164, 25.475857> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.556854, 39.520020, 25.270048>,  <34.351406, 39.531933, 25.146563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.556854, 39.520020, 25.270048>,  <34.899269, 39.500164, 25.475857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.556854, 39.520020, 25.270048> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321238, -0.830909, 0.454309,
		-0.404970, 0.554190, 0.727236,
		-0.856040, 0.049634, -0.514520,
		34.300041, 39.534908, 25.115692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.357334, 39.439182, 25.932896>,  <34.899269, 39.500164, 25.475857>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.357334, 39.439182, 25.932896> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.180344, 39.325348, 25.592724>,  <34.074150, 39.257050, 25.388620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.180344, 39.325348, 25.592724>,  <34.357334, 39.439182, 25.932896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.180344, 39.325348, 25.592724> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359228, -0.812657, 0.458850,
		-0.821687, 0.508527, 0.257351,
		-0.442476, -0.284583, -0.850428,
		34.047600, 39.239971, 25.337595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.719612, 39.187679, 26.151461>,  <34.357334, 39.439182, 25.932896>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.719612, 39.187679, 26.151461> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.777351, 39.048100, 25.781076>,  <33.811996, 38.964352, 25.558846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.777351, 39.048100, 25.781076>,  <33.719612, 39.187679, 26.151461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.777351, 39.048100, 25.781076> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368047, -0.887557, 0.277101,
		-0.918534, 0.300797, -0.256546,
		0.144348, -0.348947, -0.925959,
		33.820656, 38.943417, 25.503288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.072186, 38.744781, 25.997540>,  <33.719612, 39.187679, 26.151461>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.072186, 38.744781, 25.997540> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.340652, 38.618870, 25.729076>,  <33.501732, 38.543324, 25.567999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.340652, 38.618870, 25.729076>,  <33.072186, 38.744781, 25.997540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.340652, 38.618870, 25.729076> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102412, -0.936059, 0.336609,
		-0.734199, -0.157186, -0.660488,
		0.671166, -0.314780, -0.671156,
		33.542004, 38.524437, 25.527729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.672112, 38.229015, 25.633978>,  <33.072186, 38.744781, 25.997540>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.672112, 38.229015, 25.633978> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.065525, 38.166061, 25.598463>,  <33.301575, 38.128288, 25.577154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.065525, 38.166061, 25.598463>,  <32.672112, 38.229015, 25.633978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.065525, 38.166061, 25.598463> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118037, -0.931602, 0.343779,
		-0.136820, -0.327639, -0.934844,
		0.983538, -0.157382, -0.088788,
		33.360588, 38.118847, 25.571827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.693497, 37.634399, 25.200859>,  <32.672112, 38.229015, 25.633978>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.693497, 37.634399, 25.200859> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.037884, 37.675350, 25.400160>,  <33.244514, 37.699921, 25.519741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.037884, 37.675350, 25.400160>,  <32.693497, 37.634399, 25.200859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.037884, 37.675350, 25.400160> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066495, -0.948476, 0.309793,
		0.504298, -0.299852, -0.809797,
		0.860965, 0.102381, 0.498253,
		33.296173, 37.706066, 25.549635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<37.203911, 45.251549, 24.974508> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.482780, 44.973083, 24.906038>,  <37.650101, 44.806004, 24.864956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.482780, 44.973083, 24.906038>,  <37.203911, 45.251549, 24.974508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482780, 44.973083, 24.906038> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428953, -0.596395, 0.678463,
		-0.574410, -0.399582, -0.714414,
		0.697174, -0.696166, -0.171174,
		37.691933, 44.764233, 24.854685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.870522, 44.604137, 24.724585>,  <37.203911, 45.251549, 24.974508>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.870522, 44.604137, 24.724585> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.235806, 44.511997, 24.859041>,  <37.454975, 44.456715, 24.939716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.235806, 44.511997, 24.859041>,  <36.870522, 44.604137, 24.724585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.235806, 44.511997, 24.859041> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395236, -0.701509, 0.593021,
		0.099206, -0.674407, -0.731665,
		0.913207, -0.230349, 0.336144,
		37.509769, 44.442894, 24.959885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.841808, 43.932999, 24.704281>,  <36.870522, 44.604137, 24.724585>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.841808, 43.932999, 24.704281> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.143772, 44.035564, 24.945728>,  <37.324951, 44.097103, 25.090597>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.143772, 44.035564, 24.945728>,  <36.841808, 43.932999, 24.704281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.143772, 44.035564, 24.945728> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200733, -0.785883, 0.584888,
		0.624349, -0.562706, -0.541802,
		0.754914, 0.256417, 0.603619,
		37.370247, 44.112488, 25.126814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.429375, 43.358871, 24.828140>,  <36.841808, 43.932999, 24.704281>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.429375, 43.358871, 24.828140> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.399853, 43.591660, 25.152082>,  <37.382141, 43.731331, 25.346449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.399853, 43.591660, 25.152082>,  <37.429375, 43.358871, 24.828140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.399853, 43.591660, 25.152082> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261235, -0.794997, 0.547481,
		0.962450, -0.171158, 0.210702,
		-0.073802, 0.581966, 0.809857,
		37.377712, 43.766251, 25.395041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.204014, 42.937691, 25.401279>,  <37.429375, 43.358871, 24.828140>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.204014, 42.937691, 25.401279> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.231133, 43.274342, 25.615593>,  <37.247402, 43.476334, 25.744181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.231133, 43.274342, 25.615593>,  <37.204014, 42.937691, 25.401279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.231133, 43.274342, 25.615593> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313942, -0.491745, 0.812174,
		0.947019, -0.223266, 0.230886,
		0.067794, 0.841629, 0.535785,
		37.251472, 43.526829, 25.776329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.628578, 42.760342, 25.954287>,  <37.204014, 42.937691, 25.401279>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.628578, 42.760342, 25.954287> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.428005, 43.087246, 26.067881>,  <37.307663, 43.283390, 26.136038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.428005, 43.087246, 26.067881>,  <37.628578, 42.760342, 25.954287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.428005, 43.087246, 26.067881> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158877, -0.409626, 0.898312,
		0.850486, 0.405322, 0.335243,
		-0.501430, 0.817264, 0.283985,
		37.277576, 43.332424, 26.153076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.946346, 42.998566, 26.566818>,  <37.628578, 42.760342, 25.954287>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.946346, 42.998566, 26.566818> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.568283, 43.128891, 26.575859>,  <37.341446, 43.207088, 26.581284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.568283, 43.128891, 26.575859>,  <37.946346, 42.998566, 26.566818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.568283, 43.128891, 26.575859> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066127, -0.258681, 0.963697,
		0.319836, 0.909355, 0.266041,
		-0.945162, 0.325818, 0.022603,
		37.284733, 43.226635, 26.582640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.944267, 43.441803, 26.988239>,  <37.946346, 42.998566, 26.566818>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.944267, 43.441803, 26.988239> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.551880, 43.368786, 26.961794>,  <37.316448, 43.324974, 26.945927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.551880, 43.368786, 26.961794>,  <37.944267, 43.441803, 26.988239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.551880, 43.368786, 26.961794> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000437, -0.342617, 0.939475,
		-0.194147, 0.921570, 0.336178,
		-0.980973, -0.182543, -0.066115,
		37.257587, 43.314022, 26.941959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.585136, 43.799553, 27.562153>,  <37.944267, 43.441803, 26.988239>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.585136, 43.799553, 27.562153> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.320625, 43.522362, 27.447260>,  <37.161919, 43.356049, 27.378325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.320625, 43.522362, 27.447260>,  <37.585136, 43.799553, 27.562153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.320625, 43.522362, 27.447260> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044840, -0.345701, 0.937273,
		-0.748802, 0.632675, 0.197531,
		-0.661275, -0.692974, -0.287231,
		37.122242, 43.314468, 27.361090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.123531, 43.838066, 28.089859>,  <37.585136, 43.799553, 27.562153>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.123531, 43.838066, 28.089859> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.089970, 43.481472, 27.911774>,  <37.069832, 43.267517, 27.804922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.089970, 43.481472, 27.911774>,  <37.123531, 43.838066, 28.089859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.089970, 43.481472, 27.911774> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149445, -0.430477, 0.890144,
		-0.985204, 0.141220, -0.097110,
		-0.083902, -0.891486, -0.445213,
		37.064800, 43.214027, 27.778210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.486160, 43.503204, 28.370867>,  <37.123531, 43.838066, 28.089859>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.486160, 43.503204, 28.370867> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.703415, 43.198250, 28.230148>,  <36.833767, 43.015278, 28.145718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.703415, 43.198250, 28.230148>,  <36.486160, 43.503204, 28.370867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.703415, 43.198250, 28.230148> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126815, -0.488665, 0.863206,
		-0.830011, -0.424228, -0.362095,
		0.543140, -0.762389, -0.351798,
		36.866356, 42.969532, 28.124609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.078949, 42.900333, 28.463470>,  <36.486160, 43.503204, 28.370867>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.078949, 42.900333, 28.463470> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.454842, 42.767315, 28.431677>,  <36.680378, 42.687504, 28.412601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.454842, 42.767315, 28.431677>,  <36.078949, 42.900333, 28.463470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.454842, 42.767315, 28.431677> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087692, -0.459103, 0.884044,
		-0.330478, -0.823794, -0.460595,
		0.939731, -0.332547, -0.079483,
		36.736759, 42.667549, 28.407831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.532261, 42.328354, 28.591257>,  <36.078949, 42.900333, 28.463470>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.532261, 42.328354, 28.591257> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.207352, 42.561546, 28.598707>,  <35.012405, 42.701462, 28.603178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.207352, 42.561546, 28.598707>,  <35.532261, 42.328354, 28.591257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.207352, 42.561546, 28.598707> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019435, 0.058968, -0.998071,
		-0.582958, -0.810340, -0.059228,
		-0.812270, 0.582985, 0.018627,
		34.963673, 42.736443, 28.604296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.172157, 42.205540, 27.929436>,  <35.532261, 42.328354, 28.591257>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.172157, 42.205540, 27.929436> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.959923, 42.524712, 28.043827>,  <34.832581, 42.716213, 28.112463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.959923, 42.524712, 28.043827>,  <35.172157, 42.205540, 27.929436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.959923, 42.524712, 28.043827> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176195, 0.226193, -0.958015,
		-0.829115, -0.558699, 0.020575,
		-0.530588, 0.797930, 0.285980,
		34.800747, 42.764091, 28.129622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.564556, 42.193497, 27.446199>,  <35.172157, 42.205540, 27.929436>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.564556, 42.193497, 27.446199> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.588001, 42.563927, 27.595306>,  <34.602066, 42.786182, 27.684771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.588001, 42.563927, 27.595306>,  <34.564556, 42.193497, 27.446199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.588001, 42.563927, 27.595306> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243163, 0.375408, -0.894394,
		-0.968213, -0.038225, 0.247188,
		0.058608, 0.926071, 0.372769,
		34.605583, 42.841747, 27.707138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.968941, 42.508633, 27.247934>,  <34.564556, 42.193497, 27.446199>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.968941, 42.508633, 27.247934> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.220345, 42.813137, 27.311764>,  <34.371185, 42.995838, 27.350061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.220345, 42.813137, 27.311764>,  <33.968941, 42.508633, 27.247934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.220345, 42.813137, 27.311764> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349108, 0.459431, -0.816729,
		-0.695055, 0.457612, 0.554517,
		0.628508, 0.761258, 0.159574,
		34.408897, 43.041515, 27.359636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.626614, 43.068336, 27.138807>,  <33.968941, 42.508633, 27.247934>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.626614, 43.068336, 27.138807> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.990929, 43.231869, 27.115742>,  <34.209518, 43.329987, 27.101902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.990929, 43.231869, 27.115742>,  <33.626614, 43.068336, 27.138807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.990929, 43.231869, 27.115742> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274085, 0.494243, -0.824985,
		-0.308780, 0.767190, 0.562205,
		0.910786, 0.408831, -0.057663,
		34.264164, 43.354519, 27.098442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.532005, 43.767284, 27.010075>,  <33.626614, 43.068336, 27.138807>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.532005, 43.767284, 27.010075> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.913143, 43.709942, 26.903093>,  <34.141827, 43.675537, 26.838903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.913143, 43.709942, 26.903093>,  <33.532005, 43.767284, 27.010075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.913143, 43.709942, 26.903093> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196323, 0.380842, -0.903558,
		0.231388, 0.913460, 0.334740,
		0.952847, -0.143355, -0.267455,
		34.198997, 43.666935, 26.822857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.737911, 44.380608, 26.933758>,  <33.532005, 43.767284, 27.010075>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.737911, 44.380608, 26.933758> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.996834, 44.159458, 26.723871>,  <34.152187, 44.026768, 26.597940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.996834, 44.159458, 26.723871>,  <33.737911, 44.380608, 26.933758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.996834, 44.159458, 26.723871> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127993, 0.599780, -0.789862,
		0.751405, 0.578444, 0.317479,
		0.647308, -0.552871, -0.524714,
		34.191025, 43.993595, 26.566458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.273098, 44.849098, 26.621983>,  <33.737911, 44.380608, 26.933758>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.273098, 44.849098, 26.621983> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.270653, 44.512440, 26.405983>,  <34.269184, 44.310444, 26.276382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.270653, 44.512440, 26.405983>,  <34.273098, 44.849098, 26.621983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.270653, 44.512440, 26.405983> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057173, 0.539420, -0.840094,
		0.998346, 0.025735, -0.051418,
		-0.006116, -0.841644, -0.539999,
		34.268818, 44.259945, 26.243984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.739765, 45.007607, 26.100115>,  <34.273098, 44.849098, 26.621983>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.739765, 45.007607, 26.100115> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.530045, 44.691540, 25.973150>,  <34.404213, 44.501900, 25.896971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.530045, 44.691540, 25.973150>,  <34.739765, 45.007607, 26.100115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.530045, 44.691540, 25.973150> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120770, 0.437986, -0.890833,
		0.842924, -0.428732, -0.325065,
		-0.524302, -0.790163, -0.317411,
		34.372753, 44.454491, 25.877928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.957218, 44.860607, 25.387569>,  <34.739765, 45.007607, 26.100115>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.957218, 44.860607, 25.387569> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.600964, 44.679436, 25.403652>,  <34.387211, 44.570732, 25.413301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.600964, 44.679436, 25.403652>,  <34.957218, 44.860607, 25.387569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.600964, 44.679436, 25.403652> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209918, 0.331122, -0.919942,
		0.403351, -0.827779, -0.389988,
		-0.890642, -0.452925, 0.040207,
		34.333771, 44.543556, 25.415714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.981117, 44.484394, 24.761990>,  <34.957218, 44.860607, 25.387569>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.981117, 44.484394, 24.761990> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.604271, 44.517776, 24.891882>,  <34.378162, 44.537807, 24.969818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.604271, 44.517776, 24.891882>,  <34.981117, 44.484394, 24.761990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.604271, 44.517776, 24.891882> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308575, 0.162992, -0.937131,
		-0.131140, -0.983091, -0.127804,
		-0.942116, 0.083458, 0.324733,
		34.321636, 44.542812, 24.989302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.549095, 44.110847, 24.283829>,  <34.981117, 44.484394, 24.761990>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.549095, 44.110847, 24.283829> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.299622, 44.373905, 24.452837>,  <34.149937, 44.531738, 24.554243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.299622, 44.373905, 24.452837>,  <34.549095, 44.110847, 24.283829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.299622, 44.373905, 24.452837> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320384, 0.277980, -0.905583,
		-0.713003, -0.700166, 0.037327,
		-0.623683, 0.657643, 0.422523,
		34.112518, 44.571198, 24.579594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.059986, 43.906593, 23.996832>,  <34.549095, 44.110847, 24.283829>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.059986, 43.906593, 23.996832> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.971493, 44.278248, 24.115328>,  <33.918396, 44.501240, 24.186426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.971493, 44.278248, 24.115328>,  <34.059986, 43.906593, 23.996832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.971493, 44.278248, 24.115328> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210371, 0.251148, -0.944812,
		-0.952259, -0.271349, 0.139900,
		-0.221238, 0.929137, 0.296242,
		33.905121, 44.556988, 24.204201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.337795, 43.212032, 24.400675>,  <34.059986, 43.906593, 23.996832>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.337795, 43.212032, 24.400675> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.157303, 43.071529, 24.072527>,  <34.049007, 42.987228, 23.875639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.157303, 43.071529, 24.072527>,  <34.337795, 43.212032, 24.400675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.157303, 43.071529, 24.072527> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133495, -0.882366, 0.451232,
		-0.882366, 0.313125, 0.351260,
		-0.451232, -0.351260, -0.820370,
		34.021935, 42.966152, 23.826416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.634712, 42.847393, 24.549671>,  <34.337795, 43.212032, 24.400675>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.634712, 42.847393, 24.549671> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.720211, 42.715061, 24.182005>,  <33.771511, 42.635662, 23.961405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.720211, 42.715061, 24.182005>,  <33.634712, 42.847393, 24.549671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.720211, 42.715061, 24.182005> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021854, -0.942295, 0.334069,
		-0.976645, -0.051319, -0.208643,
		0.213747, -0.330826, -0.919166,
		33.784336, 42.615814, 23.906256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.169098, 42.376312, 24.451607>,  <33.634712, 42.847393, 24.549671>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.169098, 42.376312, 24.451607> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.479935, 42.283543, 24.217569>,  <33.666439, 42.227882, 24.077147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.479935, 42.283543, 24.217569>,  <33.169098, 42.376312, 24.451607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.479935, 42.283543, 24.217569> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027395, -0.941214, 0.336700,
		-0.628788, -0.245619, -0.737765,
		0.777094, -0.231924, -0.585096,
		33.713062, 42.213966, 24.042040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.993126, 41.779545, 24.060364>,  <33.169098, 42.376312, 24.451607>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.993126, 41.779545, 24.060364> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.391823, 41.790768, 24.030111>,  <33.631042, 41.797501, 24.011961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.391823, 41.790768, 24.030111>,  <32.993126, 41.779545, 24.060364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.391823, 41.790768, 24.030111> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043864, -0.975362, 0.216204,
		-0.067700, -0.218817, -0.973415,
		0.996741, 0.028060, -0.075630,
		33.690845, 41.799187, 24.007421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.155846, 41.174252, 23.676601>,  <32.993126, 41.779545, 24.060364>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.155846, 41.174252, 23.676601> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.491932, 41.290237, 23.859886>,  <33.693584, 41.359829, 23.969858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.491932, 41.290237, 23.859886>,  <33.155846, 41.174252, 23.676601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.491932, 41.290237, 23.859886> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160367, -0.940091, 0.300850,
		0.517999, -0.179296, -0.836379,
		0.840214, 0.289967, 0.458213,
		33.743996, 41.377228, 23.997351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.631805, 40.679237, 23.539835>,  <33.155846, 41.174252, 23.676601>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.631805, 40.679237, 23.539835> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.758835, 40.864105, 23.871025>,  <33.835052, 40.975025, 24.069738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.758835, 40.864105, 23.871025>,  <33.631805, 40.679237, 23.539835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.758835, 40.864105, 23.871025> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159711, -0.886774, 0.433733,
		0.934686, -0.005506, -0.355432,
		0.317576, 0.462170, 0.827976,
		33.854107, 41.002758, 24.119417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.243835, 40.320454, 23.668360>,  <33.631805, 40.679237, 23.539835>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.243835, 40.320454, 23.668360> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.142151, 40.475498, 24.022793>,  <34.081142, 40.568523, 24.235453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.142151, 40.475498, 24.022793>,  <34.243835, 40.320454, 23.668360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.142151, 40.475498, 24.022793> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212292, -0.871471, 0.442121,
		0.943563, 0.300498, 0.139248,
		-0.254207, 0.387608, 0.886081,
		34.065887, 40.591782, 24.288616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.731155, 40.001133, 24.122873>,  <34.243835, 40.320454, 23.668360>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.731155, 40.001133, 24.122873> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.442886, 40.112301, 24.376925>,  <34.269924, 40.179001, 24.529354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.442886, 40.112301, 24.376925>,  <34.731155, 40.001133, 24.122873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.442886, 40.112301, 24.376925> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185406, -0.805495, 0.562852,
		0.668020, 0.523390, 0.528972,
		-0.720676, 0.277922, 0.635127,
		34.226685, 40.195679, 24.567463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.468090, 39.763817, 24.024975>,  <34.731155, 40.001133, 24.122873>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.468090, 39.763817, 24.024975> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.558014, 39.444927, 23.800867>,  <35.611969, 39.253593, 23.666403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.558014, 39.444927, 23.800867>,  <35.468090, 39.763817, 24.024975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.558014, 39.444927, 23.800867> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087000, 0.556267, -0.826437,
		0.970511, 0.234534, 0.055696,
		0.224810, -0.797221, -0.560267,
		35.625458, 39.205761, 23.632788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.985291, 39.986797, 23.544586>,  <35.468090, 39.763817, 24.024975>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.985291, 39.986797, 23.544586> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.835606, 39.664429, 23.361082>,  <35.745796, 39.471008, 23.250980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.835606, 39.664429, 23.361082>,  <35.985291, 39.986797, 23.544586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.835606, 39.664429, 23.361082> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021748, 0.486939, -0.873165,
		0.927090, -0.336722, -0.164689,
		-0.374207, -0.805921, -0.458760,
		35.723343, 39.422653, 23.223454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.517693, 39.750652, 23.016293>,  <35.985291, 39.986797, 23.544586>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.517693, 39.750652, 23.016293> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.164158, 39.601597, 22.903173>,  <35.952038, 39.512165, 22.835302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.164158, 39.601597, 22.903173>,  <36.517693, 39.750652, 23.016293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.164158, 39.601597, 22.903173> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030399, 0.557504, -0.829617,
		0.466808, -0.741843, -0.481414,
		-0.883836, -0.372637, -0.282799,
		35.899006, 39.489807, 22.818335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.486607, 39.798698, 22.323973>,  <36.517693, 39.750652, 23.016293>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.486607, 39.798698, 22.323973> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.093334, 39.737469, 22.363825>,  <35.857372, 39.700729, 22.387737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.093334, 39.737469, 22.363825>,  <36.486607, 39.798698, 22.323973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.093334, 39.737469, 22.363825> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173965, 0.618718, -0.766109,
		0.055627, -0.770555, -0.634941,
		-0.983179, -0.153074, 0.099632,
		35.798382, 39.691547, 22.393715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.249962, 39.630783, 21.703470>,  <36.486607, 39.798698, 22.323973>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.249962, 39.630783, 21.703470> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.914829, 39.737175, 21.894175>,  <35.713749, 39.801010, 22.008596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.914829, 39.737175, 21.894175>,  <36.249962, 39.630783, 21.703470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.914829, 39.737175, 21.894175> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270070, 0.557022, -0.785359,
		-0.474451, -0.786755, -0.394857,
		-0.837829, 0.265975, 0.476759,
		35.663479, 39.816967, 22.037203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.620514, 39.709667, 21.194220>,  <36.249962, 39.630783, 21.703470>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.620514, 39.709667, 21.194220> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.504292, 39.932644, 21.505304>,  <35.434559, 40.066429, 21.691956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.504292, 39.932644, 21.505304>,  <35.620514, 39.709667, 21.194220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.504292, 39.932644, 21.505304> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158661, 0.773459, -0.613667,
		-0.943613, -0.301696, -0.136287,
		-0.290554, 0.557441, 0.777713,
		35.417126, 40.099876, 21.738619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.998840, 40.060776, 21.023182>,  <35.620514, 39.709667, 21.194220>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.998840, 40.060776, 21.023182> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.159966, 40.276562, 21.318943>,  <35.256641, 40.406033, 21.496399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.159966, 40.276562, 21.318943>,  <34.998840, 40.060776, 21.023182>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.159966, 40.276562, 21.318943> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124554, 0.832634, -0.539636,
		-0.906767, 0.125278, 0.402590,
		0.402815, 0.539469, 0.739401,
		35.280811, 40.438404, 21.540764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.473083, 40.609646, 21.194674>,  <34.998840, 40.060776, 21.023182>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.473083, 40.609646, 21.194674> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.844357, 40.721912, 21.292404>,  <35.067120, 40.789272, 21.351044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.844357, 40.721912, 21.292404>,  <34.473083, 40.609646, 21.194674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.844357, 40.721912, 21.292404> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112311, 0.837269, -0.535132,
		-0.354762, 0.469262, 0.808664,
		0.928187, 0.280666, 0.244328,
		35.122814, 40.806110, 21.365702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.341522, 41.284279, 21.421856>,  <34.473083, 40.609646, 21.194674>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.341522, 41.284279, 21.421856> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.730968, 41.232964, 21.346359>,  <34.964634, 41.202175, 21.301062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.730968, 41.232964, 21.346359>,  <34.341522, 41.284279, 21.421856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.730968, 41.232964, 21.346359> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040048, 0.910256, -0.412103,
		0.224669, 0.393670, 0.891374,
		0.973612, -0.128284, -0.188741,
		35.023052, 41.194477, 21.289738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.516830, 32.132736, 34.832199> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.876003, 32.223755, 34.681503>,  <37.091507, 32.278366, 34.591087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.876003, 32.223755, 34.681503>,  <36.516830, 32.132736, 34.832199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.876003, 32.223755, 34.681503> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437687, 0.371652, -0.818721,
		-0.046283, 0.900054, 0.433315,
		0.897935, 0.227549, -0.376741,
		37.145386, 32.292019, 34.568481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.618183, 32.948578, 34.619175>,  <36.516830, 32.132736, 34.832199>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.618183, 32.948578, 34.619175> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.867821, 32.711689, 34.415298>,  <37.017601, 32.569553, 34.292973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.867821, 32.711689, 34.415298>,  <36.618183, 32.948578, 34.619175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.867821, 32.711689, 34.415298> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342574, 0.378883, -0.859704,
		0.702250, 0.711138, 0.033576,
		0.624090, -0.592225, -0.509688,
		37.055046, 32.534023, 34.262390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.800621, 33.364998, 34.079277>,  <36.618183, 32.948578, 34.619175>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.800621, 33.364998, 34.079277> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.910931, 33.004986, 33.944283>,  <36.977116, 32.788979, 33.863285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.910931, 33.004986, 33.944283>,  <36.800621, 33.364998, 34.079277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.910931, 33.004986, 33.944283> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142489, 0.308945, -0.940346,
		0.950602, 0.307414, -0.043044,
		0.275777, -0.900028, -0.337487,
		36.993664, 32.734978, 33.843037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.319820, 33.423149, 33.568859>,  <36.800621, 33.364998, 34.079277>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.319820, 33.423149, 33.568859> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.205788, 33.049000, 33.485134>,  <37.137367, 32.824512, 33.434898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.205788, 33.049000, 33.485134>,  <37.319820, 33.423149, 33.568859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.205788, 33.049000, 33.485134> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167431, 0.263612, -0.949987,
		0.943768, -0.235775, -0.231760,
		-0.285078, -0.935371, -0.209312,
		37.120266, 32.768387, 33.422340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.766262, 33.127842, 33.012646>,  <37.319820, 33.423149, 33.568859>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.766262, 33.127842, 33.012646> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.416649, 32.934486, 32.993019>,  <37.206882, 32.818474, 32.981243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.416649, 32.934486, 32.993019>,  <37.766262, 33.127842, 33.012646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.416649, 32.934486, 32.993019> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025850, 0.147100, -0.988784,
		0.485184, -0.862958, -0.141065,
		-0.874030, -0.483389, -0.049063,
		37.154438, 32.789471, 32.978302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.850731, 32.846058, 32.374416>,  <37.766262, 33.127842, 33.012646>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.850731, 32.846058, 32.374416> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.460194, 32.803635, 32.449783>,  <37.225872, 32.778183, 32.495003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.460194, 32.803635, 32.449783>,  <37.850731, 32.846058, 32.374416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.460194, 32.803635, 32.449783> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216213, 0.484306, -0.847761,
		-0.001344, -0.868447, -0.495780,
		-0.976345, -0.106055, 0.188421,
		37.167290, 32.771816, 32.506310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.517242, 32.685226, 31.708975>,  <37.850731, 32.846058, 32.374416>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.517242, 32.685226, 31.708975> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.217812, 32.819332, 31.937794>,  <37.038155, 32.899796, 32.075085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.217812, 32.819332, 31.937794>,  <37.517242, 32.685226, 31.708975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.217812, 32.819332, 31.937794> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389235, 0.476252, -0.788467,
		-0.536781, -0.812886, -0.226014,
		-0.748573, 0.335261, 0.572047,
		36.993240, 32.919910, 32.109409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.040905, 32.661121, 31.280682>,  <37.517242, 32.685226, 31.708975>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.040905, 32.661121, 31.280682> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.869282, 32.905376, 31.546925>,  <36.766308, 33.051929, 31.706671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.869282, 32.905376, 31.546925>,  <37.040905, 32.661121, 31.280682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.869282, 32.905376, 31.546925> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286811, 0.606651, -0.741427,
		-0.856535, -0.509016, -0.085149,
		-0.429054, 0.610637, 0.665609,
		36.740566, 33.088566, 31.746607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.340126, 32.700821, 31.044842>,  <37.040905, 32.661121, 31.280682>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.340126, 32.700821, 31.044842> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.435650, 33.029148, 31.252388>,  <36.492966, 33.226147, 31.376915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.435650, 33.029148, 31.252388>,  <36.340126, 32.700821, 31.044842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.435650, 33.029148, 31.252388> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288652, 0.570179, -0.769140,
		-0.927172, 0.033909, 0.373098,
		0.238813, 0.820820, 0.518866,
		36.507294, 33.275394, 31.408049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.799507, 33.119160, 30.871098>,  <36.340126, 32.700821, 31.044842>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.799507, 33.119160, 30.871098> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.108334, 33.338455, 30.999693>,  <36.293629, 33.470032, 31.076851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.108334, 33.338455, 30.999693>,  <35.799507, 33.119160, 30.871098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.108334, 33.338455, 30.999693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146142, 0.645436, -0.749703,
		-0.618517, 0.531833, 0.578437,
		0.772061, 0.548238, 0.321491,
		36.339951, 33.502926, 31.096140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.470028, 33.729916, 30.872917>,  <35.799507, 33.119160, 30.871098>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.470028, 33.729916, 30.872917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.866680, 33.773735, 30.845583>,  <36.104671, 33.800026, 30.829184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.866680, 33.773735, 30.845583>,  <35.470028, 33.729916, 30.872917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.866680, 33.773735, 30.845583> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120500, 0.595134, -0.794541,
		-0.046376, 0.796124, 0.603353,
		0.991629, 0.109551, -0.068333,
		36.164169, 33.806599, 30.825083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.521328, 34.481953, 30.772434>,  <35.470028, 33.729916, 30.872917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.521328, 34.481953, 30.772434> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.863373, 34.308071, 30.659430>,  <36.068600, 34.203743, 30.591627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.863373, 34.308071, 30.659430>,  <35.521328, 34.481953, 30.772434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.863373, 34.308071, 30.659430> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001233, 0.543220, -0.839590,
		0.518443, 0.718291, 0.463977,
		0.855111, -0.434708, -0.282514,
		36.119907, 34.177658, 30.574675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.369713, 35.288364, 31.016899>,  <35.521328, 34.481953, 30.772434>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.369713, 35.288364, 31.016899> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.985577, 35.180252, 30.989502>,  <34.755093, 35.115387, 30.973064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.985577, 35.180252, 30.989502>,  <35.369713, 35.288364, 31.016899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.985577, 35.180252, 30.989502> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002500, -0.253988, 0.967204,
		-0.278808, 0.928677, 0.244591,
		-0.960343, -0.270276, -0.068492,
		34.697475, 35.099171, 30.968954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.094875, 35.614517, 31.613701>,  <35.369713, 35.288364, 31.016899>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.094875, 35.614517, 31.613701> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.841125, 35.326275, 31.501774>,  <34.688877, 35.153328, 31.434618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.841125, 35.326275, 31.501774>,  <35.094875, 35.614517, 31.613701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.841125, 35.326275, 31.501774> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114259, -0.270592, 0.955890,
		-0.764539, 0.638360, 0.089319,
		-0.634370, -0.720609, -0.279816,
		34.650814, 35.110092, 31.417830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.569824, 35.625912, 32.100628>,  <35.094875, 35.614517, 31.613701>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.569824, 35.625912, 32.100628> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.527992, 35.266083, 31.931000>,  <34.502895, 35.050186, 31.829224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.527992, 35.266083, 31.931000>,  <34.569824, 35.625912, 32.100628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.527992, 35.266083, 31.931000> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220321, -0.394857, 0.891934,
		-0.969805, 0.186707, -0.156901,
		-0.104577, -0.899571, -0.424070,
		34.496620, 34.996212, 31.803780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.847416, 35.427872, 32.242836>,  <34.569824, 35.625912, 32.100628>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.847416, 35.427872, 32.242836> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.067192, 35.101112, 32.172646>,  <34.199059, 34.905056, 32.130531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.067192, 35.101112, 32.172646>,  <33.847416, 35.427872, 32.242836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.067192, 35.101112, 32.172646> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287640, -0.382115, 0.878209,
		-0.784460, -0.432049, -0.444922,
		0.549441, -0.816898, -0.175479,
		34.232025, 34.856045, 32.120003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.478321, 34.789368, 32.324745>,  <33.847416, 35.427872, 32.242836>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.478321, 34.789368, 32.324745> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.849190, 34.650028, 32.379883>,  <34.071712, 34.566425, 32.412964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.849190, 34.650028, 32.379883>,  <33.478321, 34.789368, 32.324745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.849190, 34.650028, 32.379883> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290907, -0.437636, 0.850792,
		-0.236043, -0.828934, -0.507101,
		0.927177, -0.348343, 0.137842,
		34.127342, 34.545525, 32.421234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.360420, 34.438225, 32.902069>,  <33.478321, 34.789368, 32.324745>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.360420, 34.438225, 32.902069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.755146, 34.405602, 32.846138>,  <33.991982, 34.386028, 32.812580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.755146, 34.405602, 32.846138>,  <33.360420, 34.438225, 32.902069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.755146, 34.405602, 32.846138> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088622, -0.450653, 0.888289,
		-0.135458, -0.888966, -0.437483,
		0.986812, -0.081555, -0.139826,
		34.051189, 34.381134, 32.804192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.554981, 33.708511, 33.168964>,  <33.360420, 34.438225, 32.902069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.554981, 33.708511, 33.168964> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.870384, 33.950569, 33.212906>,  <34.059624, 34.095802, 33.239269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.870384, 33.950569, 33.212906>,  <33.554981, 33.708511, 33.168964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.870384, 33.950569, 33.212906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020405, -0.204258, 0.978704,
		0.614692, -0.769470, -0.173406,
		0.788503, 0.605140, 0.109855,
		34.106934, 34.132111, 33.245861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.125938, 33.307934, 33.447426>,  <33.554981, 33.708511, 33.168964>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.125938, 33.307934, 33.447426> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.254513, 33.677589, 33.530029>,  <34.331657, 33.899384, 33.579590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.254513, 33.677589, 33.530029>,  <34.125938, 33.307934, 33.447426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.254513, 33.677589, 33.530029> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111301, -0.253440, 0.960927,
		0.940368, -0.285889, -0.184322,
		0.321433, 0.924140, 0.206507,
		34.350945, 33.954830, 33.591980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.809547, 33.202625, 33.839882>,  <34.125938, 33.307934, 33.447426>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.809547, 33.202625, 33.839882> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.673847, 33.565918, 33.937881>,  <34.592426, 33.783894, 33.996681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.673847, 33.565918, 33.937881>,  <34.809547, 33.202625, 33.839882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.673847, 33.565918, 33.937881> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054419, -0.241063, 0.968982,
		0.939119, 0.342064, 0.032356,
		-0.339254, 0.908229, 0.245002,
		34.572071, 33.838387, 34.011383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.193256, 33.455147, 34.430733>,  <34.809547, 33.202625, 33.839882>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.193256, 33.455147, 34.430733> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.868202, 33.688004, 34.441547>,  <34.673168, 33.827717, 34.448036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.868202, 33.688004, 34.441547>,  <35.193256, 33.455147, 34.430733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.868202, 33.688004, 34.441547> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124191, -0.218312, 0.967945,
		0.569387, 0.783228, 0.249706,
		-0.812635, 0.582146, 0.027034,
		34.624413, 33.862648, 34.449657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.274311, 33.742680, 35.035069>,  <35.193256, 33.455147, 34.430733>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.274311, 33.742680, 35.035069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.899147, 33.848572, 34.945412>,  <34.674049, 33.912106, 34.891617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.899147, 33.848572, 34.945412>,  <35.274311, 33.742680, 35.035069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.899147, 33.848572, 34.945412> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256601, -0.094735, 0.961863,
		0.233400, 0.959658, 0.156783,
		-0.937913, 0.264729, -0.224138,
		34.617775, 33.927990, 34.878170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.257126, 34.396423, 35.324593>,  <35.274311, 33.742680, 35.035069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.257126, 34.396423, 35.324593> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.891407, 34.238636, 35.287811>,  <34.671974, 34.143963, 35.265743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.891407, 34.238636, 35.287811>,  <35.257126, 34.396423, 35.324593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.891407, 34.238636, 35.287811> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194038, 0.227284, 0.954302,
		-0.355540, 0.890359, -0.284346,
		-0.914298, -0.394467, -0.091954,
		34.617119, 34.120296, 35.260223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.738796, 34.864590, 35.637455>,  <35.257126, 34.396423, 35.324593>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.738796, 34.864590, 35.637455> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.570129, 34.502125, 35.624344>,  <34.468929, 34.284645, 35.616478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.570129, 34.502125, 35.624344>,  <34.738796, 34.864590, 35.637455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.570129, 34.502125, 35.624344> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212484, 0.063600, 0.975093,
		-0.881505, 0.418126, -0.219363,
		-0.421663, -0.906160, -0.032781,
		34.443630, 34.230278, 35.614510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.207603, 35.457378, 35.662231>,  <34.738796, 34.864590, 35.637455>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.207603, 35.457378, 35.662231> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.884895, 35.450371, 35.898472>,  <33.691269, 35.446167, 36.040218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.884895, 35.450371, 35.898472>,  <34.207603, 35.457378, 35.662231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.884895, 35.450371, 35.898472> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215017, -0.939735, 0.265832,
		0.550353, 0.341455, 0.761918,
		-0.806771, -0.017523, 0.590605,
		33.642864, 35.445114, 36.075653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.480595, 35.265182, 36.353851>,  <34.207603, 35.457378, 35.662231>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.480595, 35.265182, 36.353851> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.095379, 35.168388, 36.306519>,  <33.864250, 35.110313, 36.278118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.095379, 35.168388, 36.306519>,  <34.480595, 35.265182, 36.353851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.095379, 35.168388, 36.306519> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174573, -0.895233, 0.409979,
		-0.205144, 0.374167, 0.904387,
		-0.963037, -0.241986, -0.118332,
		33.806469, 35.095791, 36.271019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.087120, 36.013775, 36.547737>,  <34.480595, 35.265182, 36.353851>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.087120, 36.013775, 36.547737> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.347965, 36.280167, 36.692635>,  <34.504475, 36.440002, 36.779572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.347965, 36.280167, 36.692635>,  <34.087120, 36.013775, 36.547737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.347965, 36.280167, 36.692635> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114230, 0.558676, -0.821482,
		-0.749464, 0.494323, 0.440396,
		0.652116, 0.665978, 0.362241,
		34.543598, 36.479961, 36.801308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.765598, 36.686356, 36.533134>,  <34.087120, 36.013775, 36.547737>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.765598, 36.686356, 36.533134> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.164082, 36.718319, 36.519390>,  <34.403172, 36.737499, 36.511143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.164082, 36.718319, 36.519390>,  <33.765598, 36.686356, 36.533134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.164082, 36.718319, 36.519390> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081935, 0.729415, -0.679147,
		-0.029210, 0.679388, 0.733198,
		0.996209, 0.079912, -0.034360,
		34.462944, 36.742294, 36.509083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.834934, 37.345665, 36.465961>,  <33.765598, 36.686356, 36.533134>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.834934, 37.345665, 36.465961> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.186954, 37.196808, 36.347961>,  <34.398167, 37.107494, 36.277161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.186954, 37.196808, 36.347961>,  <33.834934, 37.345665, 36.465961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.186954, 37.196808, 36.347961> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045395, 0.552433, -0.832320,
		0.472707, 0.745875, 0.469275,
		0.880050, -0.372141, -0.294997,
		34.450970, 37.085167, 36.259460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.331524, 37.928017, 36.501232>,  <33.834934, 37.345665, 36.465961>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.331524, 37.928017, 36.501232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.504814, 37.664410, 36.255302>,  <34.608788, 37.506245, 36.107742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.504814, 37.664410, 36.255302>,  <34.331524, 37.928017, 36.501232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.504814, 37.664410, 36.255302> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076857, 0.706693, -0.703333,
		0.898005, 0.257445, 0.356805,
		0.433222, -0.659019, -0.614827,
		34.634781, 37.466705, 36.070854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.982319, 38.210800, 36.335915>,  <34.331524, 37.928017, 36.501232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.982319, 38.210800, 36.335915> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.893974, 37.964832, 36.033104>,  <34.840965, 37.817249, 35.851418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.893974, 37.964832, 36.033104>,  <34.982319, 38.210800, 36.335915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.893974, 37.964832, 36.033104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032558, 0.780411, -0.624418,
		0.974761, -0.113264, -0.192386,
		-0.220864, -0.614922, -0.757027,
		34.827717, 37.780357, 35.805996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.229061, 38.450024, 35.817604>,  <34.982319, 38.210800, 36.335915>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.229061, 38.450024, 35.817604> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.982258, 38.202087, 35.623657>,  <34.834175, 38.053326, 35.507290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.982258, 38.202087, 35.623657>,  <35.229061, 38.450024, 35.817604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.982258, 38.202087, 35.623657> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136031, 0.690867, -0.710070,
		0.775110, -0.372162, -0.510588,
		-0.617009, -0.619838, -0.484872,
		34.797153, 38.016136, 35.478195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.444683, 38.514175, 35.085758>,  <35.229061, 38.450024, 35.817604>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.444683, 38.514175, 35.085758> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.063694, 38.393780, 35.104530>,  <34.835102, 38.321545, 35.115795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.063694, 38.393780, 35.104530>,  <35.444683, 38.514175, 35.085758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.063694, 38.393780, 35.104530> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235534, 0.629958, -0.740052,
		0.193181, -0.715934, -0.670910,
		-0.952473, -0.300986, 0.046931,
		34.777950, 38.303482, 35.118610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.208210, 38.372574, 34.378223>,  <35.444683, 38.514175, 35.085758>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.208210, 38.372574, 34.378223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.867035, 38.431946, 34.578407>,  <34.662331, 38.467571, 34.698517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.867035, 38.431946, 34.578407>,  <35.208210, 38.372574, 34.378223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.867035, 38.431946, 34.578407> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247425, 0.729225, -0.637975,
		-0.459643, -0.667981, -0.585260,
		-0.852942, 0.148433, 0.500458,
		34.611153, 38.476475, 34.728546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.663460, 38.596523, 33.822330>,  <35.208210, 38.372574, 34.378223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.663460, 38.596523, 33.822330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.527637, 38.724525, 34.176121>,  <34.446144, 38.801327, 34.388397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.527637, 38.724525, 34.176121>,  <34.663460, 38.596523, 33.822330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.527637, 38.724525, 34.176121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405464, 0.798692, -0.444624,
		-0.848707, -0.509597, -0.141448,
		-0.339553, 0.320003, 0.884479,
		34.425770, 38.820526, 34.441463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.868416, 38.593113, 33.851776>,  <34.663460, 38.596523, 33.822330>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.868416, 38.593113, 33.851776> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.986771, 38.862949, 34.122295>,  <34.057781, 39.024849, 34.284607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.986771, 38.862949, 34.122295>,  <33.868416, 38.593113, 33.851776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.986771, 38.862949, 34.122295> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494208, 0.713988, -0.495963,
		-0.817443, -0.187487, 0.544643,
		0.295883, 0.674589, 0.676301,
		34.075535, 39.065327, 34.325188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.332802, 38.967110, 33.890171>,  <33.868416, 38.593113, 33.851776>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.332802, 38.967110, 33.890171> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.627579, 39.195045, 34.035610>,  <33.804443, 39.331806, 34.122875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.627579, 39.195045, 34.035610>,  <33.332802, 38.967110, 33.890171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.627579, 39.195045, 34.035610> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293453, 0.754272, -0.587333,
		-0.608934, 0.326132, 0.723075,
		0.736943, 0.569835, 0.363597,
		33.848663, 39.365997, 34.144688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.998764, 39.590675, 33.860744>,  <33.332802, 38.967110, 33.890171>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.998764, 39.590675, 33.860744> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.385956, 39.677723, 33.910782>,  <33.618271, 39.729954, 33.940804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.385956, 39.677723, 33.910782>,  <32.998764, 39.590675, 33.860744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.385956, 39.677723, 33.910782> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092735, 0.773130, -0.627431,
		-0.233253, 0.595743, 0.768559,
		0.967984, 0.217622, 0.125089,
		33.676350, 39.743011, 33.948307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.897533, 40.317329, 33.945656>,  <32.998764, 39.590675, 33.860744>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.897533, 40.317329, 33.945656> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.277565, 40.251469, 33.839649>,  <33.505585, 40.211952, 33.776047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.277565, 40.251469, 33.839649>,  <32.897533, 40.317329, 33.945656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.277565, 40.251469, 33.839649> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012879, 0.827995, -0.560587,
		0.311730, 0.536017, 0.784544,
		0.950083, -0.164647, -0.265014,
		33.562592, 40.202076, 33.760143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.227531, 40.987747, 33.866085>,  <32.897533, 40.317329, 33.945656>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.227531, 40.987747, 33.866085> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.467503, 40.746754, 33.655525>,  <33.611485, 40.602158, 33.529190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.467503, 40.746754, 33.655525>,  <33.227531, 40.987747, 33.866085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.467503, 40.746754, 33.655525> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169130, 0.738590, -0.652594,
		0.781971, 0.302481, 0.545001,
		0.599930, -0.602486, -0.526398,
		33.647480, 40.566010, 33.497604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.856709, 41.389713, 33.733860>,  <33.227531, 40.987747, 33.866085>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.856709, 41.389713, 33.733860> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.848591, 41.094490, 33.464088>,  <33.843719, 40.917355, 33.302227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.848591, 41.094490, 33.464088>,  <33.856709, 41.389713, 33.733860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.848591, 41.094490, 33.464088> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222047, 0.654394, -0.722816,
		0.974825, -0.164425, 0.150602,
		-0.020296, -0.738060, -0.674430,
		33.842503, 40.873074, 33.261761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.348713, 41.595737, 33.261593>,  <33.856709, 41.389713, 33.733860>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.348713, 41.595737, 33.261593> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.182781, 41.295982, 33.055164>,  <34.083221, 41.116127, 32.931305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.182781, 41.295982, 33.055164>,  <34.348713, 41.595737, 33.261593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.182781, 41.295982, 33.055164> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143328, 0.506278, -0.850376,
		0.898540, -0.426728, -0.102610,
		-0.414828, -0.749390, -0.516074,
		34.058334, 41.071167, 32.900341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.814774, 41.379814, 32.741013>,  <34.348713, 41.595737, 33.261593>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.814774, 41.379814, 32.741013> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.457485, 41.272491, 32.596699>,  <34.243111, 41.208096, 32.510113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.457485, 41.272491, 32.596699>,  <34.814774, 41.379814, 32.741013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.457485, 41.272491, 32.596699> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168480, 0.544219, -0.821852,
		0.416854, -0.794881, -0.440904,
		-0.893223, -0.268308, -0.360781,
		34.189518, 41.191998, 32.488464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.963161, 41.287468, 32.057457>,  <34.814774, 41.379814, 32.741013>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.963161, 41.287468, 32.057457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.564533, 41.290066, 32.090443>,  <34.325356, 41.291626, 32.110233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.564533, 41.290066, 32.090443>,  <34.963161, 41.287468, 32.057457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.564533, 41.290066, 32.090443> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077920, 0.260828, -0.962236,
		-0.027761, -0.965364, -0.259428,
		-0.996573, 0.006498, 0.082462,
		34.265560, 41.292015, 32.115181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.702511, 40.964092, 31.424078>,  <34.963161, 41.287468, 32.057457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.702511, 40.964092, 31.424078> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.445232, 41.226326, 31.582327>,  <34.290867, 41.383667, 31.677277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.445232, 41.226326, 31.582327>,  <34.702511, 40.964092, 31.424078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.445232, 41.226326, 31.582327> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162936, 0.387659, -0.907288,
		-0.748169, -0.648021, -0.142521,
		-0.643192, 0.655583, 0.395620,
		34.252274, 41.423000, 31.701014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.209160, 41.040466, 30.810701>,  <34.702511, 40.964092, 31.424078>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.209160, 41.040466, 30.810701> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.158195, 41.338333, 31.072765>,  <34.127617, 41.517056, 31.230003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.158195, 41.338333, 31.072765>,  <34.209160, 41.040466, 30.810701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.158195, 41.338333, 31.072765> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082992, 0.650222, -0.755197,
		-0.988371, -0.150597, -0.021046,
		-0.127415, 0.744669, 0.655159,
		34.119972, 41.561733, 31.269314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.650925, 41.422482, 30.515284>,  <34.209160, 41.040466, 30.810701>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.650925, 41.422482, 30.515284> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.832737, 41.680050, 30.761459>,  <33.941826, 41.834591, 30.909164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.832737, 41.680050, 30.761459>,  <33.650925, 41.422482, 30.515284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.832737, 41.680050, 30.761459> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137451, 0.631959, -0.762716,
		-0.880062, 0.431271, 0.198737,
		0.454531, 0.643920, 0.615442,
		33.969097, 41.873226, 30.946093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.287800, 42.128326, 30.497496>,  <33.650925, 41.422482, 30.515284>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.287800, 42.128326, 30.497496> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.667526, 42.175610, 30.613995>,  <33.895363, 42.203979, 30.683893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.667526, 42.175610, 30.613995>,  <33.287800, 42.128326, 30.497496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.667526, 42.175610, 30.613995> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167821, 0.592856, -0.787628,
		-0.265768, 0.796586, 0.542971,
		0.949317, 0.118205, 0.291246,
		33.952320, 42.211071, 30.701368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.497353, 42.863632, 30.410154>,  <33.287800, 42.128326, 30.497496>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.497353, 42.863632, 30.410154> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.866768, 42.713058, 30.439482>,  <34.088417, 42.622715, 30.457079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.866768, 42.713058, 30.439482>,  <33.497353, 42.863632, 30.410154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.866768, 42.713058, 30.439482> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255911, 0.462520, -0.848873,
		0.285630, 0.802730, 0.523488,
		0.923540, -0.376430, 0.073318,
		34.143829, 42.600128, 30.461477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.004238, 43.334621, 30.245575>,  <33.497353, 42.863632, 30.410154>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.004238, 43.334621, 30.245575> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.207912, 42.995201, 30.188036>,  <34.330116, 42.791550, 30.153513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.207912, 42.995201, 30.188036>,  <34.004238, 43.334621, 30.245575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.207912, 42.995201, 30.188036> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281634, 0.322213, -0.903804,
		0.813272, 0.419692, 0.403047,
		0.509186, -0.848550, -0.143848,
		34.360668, 42.740635, 30.144882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.663429, 43.529831, 29.967001>,  <34.004238, 43.334621, 30.245575>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.663429, 43.529831, 29.967001> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.647205, 43.138737, 29.884655>,  <34.637470, 42.904079, 29.835247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.647205, 43.138737, 29.884655>,  <34.663429, 43.529831, 29.967001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.647205, 43.138737, 29.884655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304818, 0.184108, -0.934447,
		0.951547, -0.100650, 0.290565,
		-0.040557, -0.977739, -0.205867,
		34.635036, 42.845413, 29.822895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.232292, 43.398857, 29.561214>,  <34.663429, 43.529831, 29.967001>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.232292, 43.398857, 29.561214> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.978790, 43.095493, 29.500330>,  <34.826691, 42.913475, 29.463799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.978790, 43.095493, 29.500330>,  <35.232292, 43.398857, 29.561214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.978790, 43.095493, 29.500330> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396033, -0.149096, -0.906051,
		0.664465, -0.634494, 0.394847,
		-0.633754, -0.758412, -0.152211,
		34.788666, 42.867970, 29.454666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.556797, 42.881897, 29.217234>,  <35.232292, 43.398857, 29.561214>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.556797, 42.881897, 29.217234> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.173130, 42.810402, 29.129547>,  <34.942932, 42.767506, 29.076935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.173130, 42.810402, 29.129547>,  <35.556797, 42.881897, 29.217234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.173130, 42.810402, 29.129547> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228435, -0.032478, -0.973017,
		0.166794, -0.983361, 0.071982,
		-0.959165, -0.178736, -0.219216,
		34.885380, 42.756783, 29.063782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.120457, 42.423405, 29.017900>,  <35.556797, 42.881897, 29.217234>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.120457, 42.423405, 29.017900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.512016, 42.420303, 28.936226>,  <36.746952, 42.418442, 28.887222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.512016, 42.420303, 28.936226>,  <36.120457, 42.423405, 29.017900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.512016, 42.420303, 28.936226> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138884, -0.707727, 0.692700,
		-0.149876, -0.706443, -0.691719,
		0.978901, -0.007751, -0.204185,
		36.805687, 42.417976, 28.874969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.275436, 41.706417, 28.903723>,  <36.120457, 42.423405, 29.017900>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.275436, 41.706417, 28.903723> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.603348, 41.908737, 29.011158>,  <36.800095, 42.030128, 29.075619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.603348, 41.908737, 29.011158>,  <36.275436, 41.706417, 28.903723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.603348, 41.908737, 29.011158> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173352, -0.666156, 0.725386,
		0.545820, -0.548092, -0.633778,
		0.819774, 0.505797, 0.268589,
		36.849281, 42.060478, 29.091734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.766716, 41.187149, 29.054367>,  <36.275436, 41.706417, 28.903723>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.766716, 41.187149, 29.054367> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.934776, 41.502468, 29.234171>,  <37.035614, 41.691658, 29.342052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.934776, 41.502468, 29.234171>,  <36.766716, 41.187149, 29.054367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.934776, 41.502468, 29.234171> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351967, -0.598140, 0.719964,
		0.836415, -0.144283, -0.528765,
		0.420154, 0.788296, 0.449510,
		37.060822, 41.738956, 29.369024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.526249, 41.008781, 29.193241>,  <36.766716, 41.187149, 29.054367>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.526249, 41.008781, 29.193241> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.400093, 41.309940, 29.424297>,  <37.324398, 41.490635, 29.562931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.400093, 41.309940, 29.424297>,  <37.526249, 41.008781, 29.193241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.400093, 41.309940, 29.424297> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481315, -0.397684, 0.781142,
		0.817841, 0.524392, -0.236957,
		-0.315390, 0.752901, 0.577641,
		37.305477, 41.535812, 29.597589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162716, 41.356171, 29.506889>,  <37.526249, 41.008781, 29.193241>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.162716, 41.356171, 29.506889> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.847420, 41.439911, 29.738356>,  <37.658241, 41.490154, 29.877235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.847420, 41.439911, 29.738356>,  <38.162716, 41.356171, 29.506889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.847420, 41.439911, 29.738356> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536447, -0.226970, 0.812841,
		0.301511, 0.951134, 0.066599,
		-0.788236, 0.209353, 0.578666,
		37.610950, 41.502716, 29.911955>
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
